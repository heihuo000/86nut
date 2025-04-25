function checkExecutableSkill_BurstBomb(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_BURSTBOMB);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_BURSTBOMB, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_BurstBomb(obj) {
	local state = obj.sq_GetState();
	switch (state) {
	case STATE_STAND:
	case STATE_ATTACK:
	case STATE_DASH:
		return true;
	}
	return false;
}

function onSetState_BurstBomb(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	switch (subState) {
	case 0:
		if (isAtSOWalkerOnBody(obj)) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(2);
			obj.sq_AddSetStatePacket(STATE_BURSTBOMB, STATE_PRIORITY_USER, true);
			obj.flushSetStatePacket();
			return;
		}
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_BURSTBOMBCAST);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_BURSTBOMBKNOCKBACK);
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttacknBackForce(attackInfo, obj.sq_GetIntData(SKILL_BURSTBOMB, 3)); 
		obj.sq_PlaySound("R_GN_BURST_BOMB");
		obj.sq_PlaySound("BUSTBOMB_SHOT");
		break;
	case 1:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_BURSTBOMBSTART);
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_BURSTBOMB, STATE_BURSTBOMB, 0, 1.0));
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_BURSTBOMB); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_BinaryWriteDword(obj.sq_GetIntData(SKILL_BURSTBOMB, 1)); 
		sq_BinaryWriteBool(false); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 100, 0, 110, obj.getDirection());
		break;
	case 2:
		obj.sq_PlaySound("R_GN_BURST_BOMB");
		obj.sq_PlaySound("BUSTBOMB_SHOT");
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSOWALKERASKILLBODY);
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_BURSTBOMB, STATE_BURSTBOMB, 0, 1.0));
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_BURSTBOMB); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_BinaryWriteDword(obj.sq_GetIntData(SKILL_BURSTBOMB, 1)); 
		sq_BinaryWriteBool(true); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 100, 0, 140, obj.getDirection());
		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
}

function onKeyFrameFlag_BurstBomb(obj, flagIndex) {
	if (!obj) return false;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 1:
	case 2:
		if (obj.getVar("ArcDischarge").getInt(0) >= 100) {
			obj.getVar("BurstBombIsArcDischarge").setBool(0, true);
		}
		break;
	}
	return true;
}

function onProcCon_BurstBomb(obj) {
	if (!obj) return;
	if (obj.getVar("BurstBombIsArcDischarge").getBool(0)) {
		startArcDischarge(obj, "BurstBombIsArcDischarge");
	}
}

function onEndCurrentAni_BurstBomb(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_BURSTBOMB, STATE_PRIORITY_USER, true);
		break;
	case 1:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	case 2:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}