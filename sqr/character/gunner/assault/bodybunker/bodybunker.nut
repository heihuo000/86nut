function checkExecutableSkill_BodyBunker(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_BODYBUNKER);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_BODYBUNKER, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_BodyBunker(obj) {
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

function onSetState_BodyBunker(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	switch (subState) {
	case 0:
		obj.getVar().setBool(0, true);
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_BODYBUNKERCAST);
		obj.sq_PlaySound("R_GN_BODY_BUNKER");
		break;
	case 1:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_BODYBUNKERSTART);
		obj.sq_PlaySound("BODYBUNKER_SHIELD");
		local duration = obj.sq_GetIntData(SKILL_BODYBUNKER, 0);
		local damageReduction = obj.sq_GetIntData(SKILL_BODYBUNKER, 5);
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_BODYBUNKER, STATE_BODYBUNKER, 0, 1.0));
		local sizeRate = obj.sq_GetIntData(SKILL_BODYBUNKER, 6);
		if (sq_GetSkillLevel(obj, SKILL_RECONSTRUCTIONBODY) > 0) {
			local addSizeRate = obj.sq_GetIntData(SKILL_RECONSTRUCTIONBODY, 1); 
			local addDuration = obj.sq_GetIntData(SKILL_RECONSTRUCTIONBODY, 2); 
			local addDamageReduction = obj.sq_GetIntData(SKILL_RECONSTRUCTIONBODY, 3); 
			sizeRate += addSizeRate;
			duration += addDuration;
			damageReduction += addDamageReduction;
		}
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_BODYBUNKER); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(duration); 
		sq_BinaryWriteDword(damageReduction); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_BinaryWriteDword(sizeRate); 
		sq_SendCreatePassiveObjectPacket(obj, 24380, 0, 100, 0, 0, obj.getDirection());
		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
}

function onKeyFrameFlag_BodyBunker(obj, flagIndex) {
	if (!obj) return false;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 1:
		if (obj.getVar("ArcDischarge").getInt(0) >= 100) {
			obj.getVar("BodyBunkerIsArcDischarge").setBool(0, true);
		}
		break;
	}
	return true;
}

function onProcCon_BodyBunker(obj) {
	if (!obj) return;
	if (obj.getVar("BodyBunkerIsArcDischarge").getBool(0)) {
		startArcDischarge(obj, "BodyBunkerIsArcDischarge");
	}
}

function onEndCurrentAni_BodyBunker(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_BODYBUNKER, STATE_PRIORITY_USER, true);
		break;
	case 1:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}