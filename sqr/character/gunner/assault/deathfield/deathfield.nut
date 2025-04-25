function checkExecutableSkill_DeathField(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_DEATHFIELD);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_DEATHFIELD, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_DeathField(obj) {
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

function onSetState_DeathField(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	switch (subState) {
	case 0:
		if (sq_GetSkillLevel(obj, SKILL_DEATHFIELD) >= 3) {
			sq_SetCustomDamageType(obj, true, 2);
		}
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DEATHFIELDST1);
		obj.sq_PlaySound("DEATHFIELD_1_START");
		obj.sq_PlaySound("R_GN_DEATH_FIELD_01");
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		break;
	case 1:
		obj.sq_SetXScrollStart(400, 0);
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DEATHFIELDST2);
		obj.sq_PlaySound("DEATHFIELD_2_DASHSHOT");
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/deathfield/st2/deathfieldst2back_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/deathfield/st2/deathfieldst2under_00.ani", ENUM_DRAWLAYER_CLOSEBACK, true);
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/deathfield/st2/deathfieldst2cover_00.ani", ENUM_DRAWLAYER_CLOSEBACK, true);

		local skill_level = sq_GetSkillLevel(obj, SKILL_DEATHFIELD);
		local attackDamageRate = sq_GetLevelData(obj, SKILL_DEATHFIELD, 5, skill_level); 

		local grenadeAttackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_DEATHFIELD, STATE_DEATHFIELD, 0, 1.0); 
		local handGrenadeAttackCount = obj.sq_GetIntData(SKILL_DEATHFIELD, 2); 
		local handGrenadeAttackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_DEATHFIELD, STATE_DEATHFIELD, 1, 1.0); 

		local shotgunAttackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_DEATHFIELD, STATE_DEATHFIELD, 2, 1.0)); 

		attackDamageRate = attackDamageRate.tofloat() / 1000.0;

		grenadeAttackBonusRate = grenadeAttackBonusRate.tofloat() + (grenadeAttackBonusRate.tofloat() * attackDamageRate);
		handGrenadeAttackBonusRate = handGrenadeAttackBonusRate.tofloat() + (handGrenadeAttackBonusRate.tofloat() * attackDamageRate);
		shotgunAttackBonusRate = shotgunAttackBonusRate.tofloat() + (shotgunAttackBonusRate.tofloat() * attackDamageRate);

		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_DEATHFIELD); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(grenadeAttackBonusRate.tointeger()); 
		sq_BinaryWriteDword(handGrenadeAttackCount); 
		sq_BinaryWriteDword(handGrenadeAttackBonusRate.tointeger()); 
		sq_BinaryWriteDword(shotgunAttackBonusRate.tointeger()); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
		break;
	case 2:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DEATHFIELDST3);
		obj.sq_PlaySound("R_GN_DEATH_FIELD_02");
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/deathfield/st3/deathfieldst3back_00.ani", ENUM_DRAWLAYER_CLOSEBACK, true);
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/deathfield/st3/deathfieldst3bottom_00.ani", ENUM_DRAWLAYER_CLOSEBACK, true);

		local skill_level = sq_GetSkillLevel(obj, SKILL_DEATHFIELD);
		local sizeRate = sq_GetLevelData(obj, SKILL_DEATHFIELD, 4, skill_level); 
		local attackDamageRate = sq_GetLevelData(obj, SKILL_DEATHFIELD, 5, skill_level); 
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_DEATHFIELD, STATE_DEATHFIELD, 3, 1.0));
		attackBonusRate = attackBonusRate.tofloat() + (attackBonusRate.tofloat() * (attackDamageRate / 1000));

		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_DEATHFIELD); 
		sq_BinaryWriteDword(2); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_BinaryWriteDword(sizeRate); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());

		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		break;
	}

}

function onEnterFrame_DeathField(obj, frameIndex) {
	if (!obj) return;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 1:
		switch (frameIndex) {
		case 13:
			obj.sq_PlaySound("DEATHFIELD_4_DASHSHOT");
			break;
		}
		break;
	case 2:
		switch (frameIndex) {
		case 3:
			obj.sq_PlaySound("DEATHFIELD_5_BUTTON");
			break;
		}
		break;
	}
}

function onKeyFrameFlag_DeathField(obj, flagIndex) {
	if (!obj) return false;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 2:
		if (obj.getVar("ArcDischarge").getInt(0) >= 100) {
			obj.getVar("DeathFieldIsArcDischarge").setBool(0, true);
		}
		break;
	}
	return true;
}

function onProcCon_DeathField(obj) {
	if (!obj) return;
	if (obj.getVar("DeathFieldIsArcDischarge").getBool(0)) {
		startArcDischarge(obj, "DeathFieldIsArcDischarge");
	}
}

function onEndCurrentAni_DeathField(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_DEATHFIELD, STATE_PRIORITY_USER, true);
		break;
	case 1:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(2);
		obj.sq_AddSetStatePacket(STATE_DEATHFIELD, STATE_PRIORITY_USER, true);
		break;
	case 2:
		obj.sq_SetXScrollStop(400);
		if (sq_GetSkillLevel(obj, SKILL_DEATHFIELD) >= 3) {
			sq_SetCustomDamageType(obj, true, 0);
		}
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}

function onEndState_DeathField(obj, newState)
{
	if(!obj) return;
	if(newState == STATE_DEATHFIELD) return;
	sq_SetCustomDamageType(obj, false, 1);
}