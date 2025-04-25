function checkExecutableSkill_McPice(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_MCPICE);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_MCPICE, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_McPice(obj) {
	local state = obj.sq_GetState();
	switch (state) {
	case STATE_STAND:
	case STATE_ATTACK:
	case STATE_DASH:
		return true;
	}
	return false;
}

function onSetState_McPice(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	switch (subState) {
	case 0:
		if (isAtSOWalkerOnBody(obj)) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(2);
			obj.sq_AddSetStatePacket(STATE_MCPICE, STATE_PRIORITY_USER, true);
			obj.flushSetStatePacket();
			return;
		}
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_MCPICE_START);
		obj.sq_PlaySound("R_GN_MCPICE");
		break;
	case 1:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_MCPICE_ATTACK);

		local shockWaveAttackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_MCPICE, STATE_MCPICE, 0, 1.0));
		local AttackCount = obj.sq_GetIntData(SKILL_MCPICE, 0);
		local explodeAttackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_MCPICE, STATE_MCPICE, 1, 1.0));
		local sizeRate = obj.sq_GetIntData(SKILL_MCPICE, 2);

		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_MCPICE); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(shockWaveAttackBonusRate.tointeger()); 
		sq_BinaryWriteDword(AttackCount); 
		sq_BinaryWriteDword(explodeAttackBonusRate.tointeger()); 
		sq_BinaryWriteDword(sizeRate); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 300, 0, 0, obj.getDirection());
		break;
	case 2:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSOWALKERASKILLBODY);
		CreateAniRate_pooled(obj, "passiveobject/secondary_awakening_obj/gunner/animation/at_sowalker/mcpice/mcpice_attack_02.ani", -70, 0, 160, ENUM_DRAWLAYER_NORMAL, false, false);
		local shockWaveAttackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_MCPICE, STATE_MCPICE, 0, 1.0));
		local AttackCount = obj.sq_GetIntData(SKILL_MCPICE, 0);
		local explodeAttackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_MCPICE, STATE_MCPICE, 1, 1.0));
		local sizeRate = obj.sq_GetIntData(SKILL_MCPICE, 2);

		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_MCPICE); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(shockWaveAttackBonusRate.tointeger()); 
		sq_BinaryWriteDword(AttackCount); 
		sq_BinaryWriteDword(explodeAttackBonusRate.tointeger()); 
		sq_BinaryWriteDword(sizeRate); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 300, 0, 0, obj.getDirection());
		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
}

function onEnterFrame_McPice(obj, frameIndex) {
	if (!obj) return;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		switch (frameIndex) {
		case 9:
			obj.sq_PlaySound("RG_GN_MCPICE_02");
			obj.sq_PlaySound("MCPICE_KICK");
			break;
		}
		break;
	}
}

function onKeyFrameFlag_McPice(obj, flagIndex) {
	if (!obj) return false;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 1:
	case 2:
		if (obj.getVar("ArcDischarge").getInt(0) >= 100) {
			obj.getVar("McPiceIsArcDischarge").setBool(0, true);
		}
		break;
	}
	return true;
}

function onProcCon_McPice(obj) {
	if (!obj) return;
	if (obj.getVar("McPiceIsArcDischarge").getBool(0)) {
		startArcDischarge(obj, "McPiceIsArcDischarge");
	}
}

function onEndCurrentAni_McPice(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_MCPICE, STATE_PRIORITY_USER, true);
		break;
	case 1:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	case 2:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}