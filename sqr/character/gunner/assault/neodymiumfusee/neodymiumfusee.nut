function checkExecutableSkill_NeodymiumFusee(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_NEODYMIUMFUSEE);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_NEODYMIUMFUSEE, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_NeodymiumFusee(obj) {
	local state = obj.sq_GetState();
	switch (state) {
	case STATE_STAND:
	case STATE_ATTACK:
	case STATE_DASH:
		return true;
	}
	return true;
}

function onSetState_NeodymiumFusee(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	switch (subState) {
	case 0:
		if (isAtSOWalkerOnBody(obj)) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(2);
			obj.sq_AddSetStatePacket(STATE_NEODYMIUMFUSEE, STATE_PRIORITY_USER, true);
			obj.flushSetStatePacket();
			return;
		}
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_NEODYMIUMFUSEECASTING);
		obj.sq_PlaySound("GN_NEODYMIUM_FUSEE_01_1");
		obj.sq_PlaySound("NEODYMIUM_CAST");
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/neodymiumfusee/neodymiumfuseecastingbottom_04.ani", ENUM_DRAWLAYER_NORMAL, true);
		break;
	case 1:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_NEODYMIUMFUSEESTART);
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/neodymiumfusee/neodymiumfuseestartsmoke_00.ani", ENUM_DRAWLAYER_NORMAL, true);
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/neodymiumfusee/neodymiumdot_16.ani", ENUM_DRAWLAYER_NORMAL, true);

		local AttackCount = obj.sq_GetIntData(SKILL_NEODYMIUMFUSEE, 5);
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_NEODYMIUMFUSEE, STATE_NEODYMIUMFUSEE, 0, 1.0));
		local sizeRate = obj.sq_GetIntData(SKILL_NEODYMIUMFUSEE, 3);
		local adsorption = obj.sq_GetIntData(SKILL_NEODYMIUMFUSEE, 2);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_NEODYMIUMFUSEE); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(AttackCount); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_BinaryWriteDword(sizeRate); 
		sq_BinaryWriteDword(adsorption); 
		sq_BinaryWriteDword(0); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
		break;
	case 2:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSOWALKERANEODYMIUMFUSEEBODY);
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/neodymiumfusee/neodymiumdot_16.ani", ENUM_DRAWLAYER_NORMAL, true);
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/at_sowalker/atsowalkeraneodymiumfuseebottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/at_sowalker/atsowalkeraneodymiumfuseefront_00.ani", ENUM_DRAWLAYER_NORMAL, true);
		obj.sq_PlaySound("GN_NEODYMIUM_FUSEE_01_1");
		obj.sq_PlaySound("NEODYMIUM_CAST");
		local AttackCount = obj.sq_GetIntData(SKILL_NEODYMIUMFUSEE, 5);
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_NEODYMIUMFUSEE, STATE_NEODYMIUMFUSEE, 0, 1.0));
		local sizeRate = obj.sq_GetIntData(SKILL_NEODYMIUMFUSEE, 3);
		local adsorption = obj.sq_GetIntData(SKILL_NEODYMIUMFUSEE, 2);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_NEODYMIUMFUSEE); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(AttackCount); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_BinaryWriteDword(sizeRate); 
		sq_BinaryWriteDword(adsorption); 
		sq_BinaryWriteDword(0); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
}

/*function onEnterFrame_NeodymiumFusee(obj, frameIndex) {
	if (!obj) return;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		switch (frameIndex) {
		case 16:
			obj.sq_PlaySound("R_GN_NEODYMIUM_FUSEE_02");
			break;
		}
		break;
	case 2:
		switch (frameIndex) {
		case 3:
			obj.sq_PlaySound("R_GN_NEODYMIUM_FUSEE_02");
			break;
		}
		break;
	}
}*/

function onEndCurrentAni_NeodymiumFusee(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_NEODYMIUMFUSEE, STATE_PRIORITY_USER, true);
		break;
	case 1:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	case 2:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}