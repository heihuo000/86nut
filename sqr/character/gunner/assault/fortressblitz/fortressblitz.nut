function checkExecutableSkill_FortressBlitz(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_FORTRESSBLITZ);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_FORTRESSBLITZ, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_FortressBlitz(obj) {
	if (isAtSOWalkerOnBody(obj)) {
		return false;
	} else {
		local state = obj.sq_GetState();
		switch (state) {
		case STATE_STAND:
		case STATE_ATTACK:
		case STATE_DASH:
			return true;
		}
	}
	return false;
}

function onSetState_FortressBlitz(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	switch (subState) {
	case 0:
		sq_flashScreen(obj, 0, 300, 240, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FORTRESSBLITZ_START);
		obj.sq_PlaySound("R_GN_FORTRESS_BLITZ");
		obj.sq_PlaySound("FORTRESSBLITZ_LOAD");
		break;
	case 1:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FORTRESSBLITZ_FIRE);
		obj.sq_PlaySound("FORTRESSBLITZ_UP");
		local offsetX = obj.sq_GetIntData(SKILL_FORTRESSBLITZ, 1);

		local damageReduction = obj.sq_GetIntData(SKILL_FORTRESSBLITZ, 7);
		local attackCount = obj.sq_GetIntData(SKILL_FORTRESSBLITZ, 2);
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_FORTRESSBLITZ, STATE_BODYBUNKER, 0, 1.0));

		local hp = obj.sq_GetIntData(SKILL_FORTRESSBLITZ, 4);
		local defensive = obj.sq_GetIntData(SKILL_FORTRESSBLITZ, 5);
		local sizeRate = obj.sq_GetIntData(SKILL_FORTRESSBLITZ, 8);
		local duration = obj.sq_GetIntData(SKILL_FORTRESSBLITZ, 14);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_FORTRESSBLITZ); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(damageReduction); 
		sq_BinaryWriteDword(attackCount); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_BinaryWriteDword(hp); 
		sq_BinaryWriteDword(defensive); 
		sq_BinaryWriteDword(sizeRate); 
		sq_BinaryWriteDword(duration); 
		sq_SendCreatePassiveObjectPacket(obj, 24380, 0, offsetX, 0, 0, obj.getDirection());

		sizeRate = sizeRate.tofloat() / 1000.0; 
		CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/start/startfire_front_00.ani", 0, 0, 0, ENUM_DRAWLAYER_NORMAL, sizeRate, false);
		CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/shield/shieldstart_bottom_00.ani", offsetX, 0, 0, ENUM_DRAWLAYER_BOTTOM, sizeRate, false);
		CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/shield/shieldstart_back_00.ani", offsetX, 0, 0, ENUM_DRAWLAYER_BOTTOM, sizeRate, false);
		CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/shield/shieldstart_bottomoncewave_00.ani", offsetX, 0, 0, ENUM_DRAWLAYER_BOTTOM, sizeRate, false);
		CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/shield/shieldstart_front_00.ani", offsetX, 0, 0, ENUM_DRAWLAYER_BOTTOM, sizeRate, false);
		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
}

function onEndCurrentAni_FortressBlitz(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_FORTRESSBLITZ, STATE_PRIORITY_USER, true);
		break;
	case 1:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}