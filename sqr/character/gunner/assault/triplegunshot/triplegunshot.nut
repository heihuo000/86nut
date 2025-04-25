function checkExecutableSkill_TripleGunshot(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_TRIPLEGUNSHOT);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_TRIPLEGUNSHOT, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_TripleGunshot(obj) {
	local state = obj.sq_GetState();
	switch (state) {
	case STATE_STAND:
	case STATE_ATTACK:
	case STATE_DASH:
		return true;
	}
	return false;
}

function onSetState_TripleGunshot(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	local sizeRate = obj.sq_GetIntData(SKILL_TRIPLEGUNSHOT, 0);
	switch (subState) {
	case 0:
		if (isAtSOWalkerOnBody(obj)) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(4);
			obj.sq_AddSetStatePacket(STATE_TRIPLEGUNSHOT, STATE_PRIORITY_USER, true);
			obj.flushSetStatePacket();
			return;
		}
		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_TRIPLEGUNSHOTCAST);
		obj.sq_PlaySound("R_GN_TRIPLE_GUNSHOT");
		obj.sq_PlaySound("TRIPLEGUNSHOT_READY");
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/triplegunshot/cast/castsmoke_00.ani", ENUM_DRAWLAYER_NORMAL, true);
		local attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_TRIPLEGUNSHOTPUSH);
		sq_SetCurrentAttackInfo(obj, attackInfo); 
		break;
	case 1:
		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_TRIPLEGUNSHOTATTACK1);
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_TRIPLEGUNSHOT, STATE_TRIPLEGUNSHOT, 0, 1.0));

		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_TRIPLEGUNSHOT); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_BinaryWriteBool(false); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
		break;
	case 2:
		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_TRIPLEGUNSHOTATTACK2);
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_TRIPLEGUNSHOT, STATE_TRIPLEGUNSHOT, 1, 1.0));

		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_TRIPLEGUNSHOT); 
		sq_BinaryWriteDword(1); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_BinaryWriteBool(false); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
		break;
	case 3:
		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_TRIPLEGUNSHOTATTACK3);
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_TRIPLEGUNSHOT, CUSTOM_ANI_PROJECTNOVELPARTSTRIPLEGUNSHOTBODY, 2, 1.0));

		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/triplegunshot/attacknovelparts/projectnovelpartstriplegunshoteffect_00.ani", ENUM_DRAWLAYER_NORMAL, true);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_TRIPLEGUNSHOT); 
		sq_BinaryWriteDword(2); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_BinaryWriteBool(false); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
		break;
	case 4:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSOWALKERATRIPLEGUNSHOTBODY);
		obj.sq_PlaySound("R_GN_TRIPLE_GUNSHOT");
		break;
	}
}

function onKeyFrameFlag_TripleGunshot(obj, flagIndex) {
	if (!obj) return false;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 1:
	case 4:
		if (obj.getVar("ArcDischarge").getInt(0) >= 100) {
			obj.getVar("TripleGunshotIsArcDischarge").setBool(0, true);
		}
		break;
	}
	return true;
}

function onProcCon_TripleGunshot(obj) {
	if (!obj) return;
	if (obj.getVar("TripleGunshotIsArcDischarge").getBool(0)) {
		startArcDischarge(obj, "TripleGunshotIsArcDischarge");
	}
}

function onEnterFrame_TripleGunshot(obj, frameIndex) {
	if (!obj) return;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 4:
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_TRIPLEGUNSHOT, STATE_TRIPLEGUNSHOT, 0, 1.0));

		switch (frameIndex) {
		case 0:
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(SKILL_TRIPLEGUNSHOT); 
			sq_BinaryWriteDword(0); 
			sq_BinaryWriteDword(attackBonusRate.tointeger()); 
			sq_BinaryWriteBool(true); 
			sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
			break;
		case 4:
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(SKILL_TRIPLEGUNSHOT); 
			sq_BinaryWriteDword(1); 
			sq_BinaryWriteDword(attackBonusRate.tointeger()); 
			sq_BinaryWriteBool(true); 
			sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
			break;
		case 8:
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(SKILL_TRIPLEGUNSHOT); 
			sq_BinaryWriteDword(2); 
			sq_BinaryWriteDword(attackBonusRate.tointeger()); 
			sq_BinaryWriteBool(true); 
			sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
			break;
		}
		break;
	}
	return;
}

function onEndCurrentAni_TripleGunshot(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_TRIPLEGUNSHOT, STATE_PRIORITY_USER, true);
		break;
	case 1:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(2);
		obj.sq_AddSetStatePacket(STATE_TRIPLEGUNSHOT, STATE_PRIORITY_USER, true);
		break;
	case 2:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(3);
		obj.sq_AddSetStatePacket(STATE_TRIPLEGUNSHOT, STATE_PRIORITY_USER, true);
		break;
	case 3:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	case 4:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}