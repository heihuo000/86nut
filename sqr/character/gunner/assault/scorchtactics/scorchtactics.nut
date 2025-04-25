function checkExecutableSkill_ScorchTactics(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_SCORCHTACTICS);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_LEFT || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_RIGHT)
		obj.sq_IntVectPush(1);
		else
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_SCORCHTACTICS, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_ScorchTactics(obj) {
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

function onSetState_ScorchTactics(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	switch (subState) {
	case 0:
		obj.sq_PlaySound("R_GN_SCORCH_TACTICS_01");
		obj.sq_PlaySound("SCORCHTACTICS_SHOT");
		if (obj.sq_GetVectorData(datas, 1)>0) {
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_SCORCHTACTICS_START_MOVE);
			sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/scorchtactics/start/start_move_front_00.ani", ENUM_DRAWLAYER_NORMAL, true);
			obj.getVar("ScorchTactics").clear_vector(); 
			obj.getVar("ScorchTactics").push_vector(obj.getXPos()); 
			obj.getVar("ScorchTactics").push_vector(obj.getZPos()); 
			obj.getVar("ScorchTactics").push_vector(obj.sq_GetIntData(SKILL_SCORCHTACTICS, 9)); 
			obj.getVar("ScorchTactics").push_vector(obj.sq_GetIntData(SKILL_SCORCHTACTICS, 9)); 
		} else {
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_SCORCHTACTICS_START);
			sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/scorchtactics/start/start_front_00.ani", ENUM_DRAWLAYER_NORMAL, true);
			obj.getVar("ScorchTactics").clear_vector(); 
			obj.getVar("ScorchTactics").push_vector(obj.getXPos()); 
			obj.getVar("ScorchTactics").push_vector(obj.getZPos()); 
			obj.getVar("ScorchTactics").push_vector(0); 
			obj.getVar("ScorchTactics").push_vector(obj.sq_GetIntData(SKILL_SCORCHTACTICS, 9)); 
		}
		break;
	case 1:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_SCORCHTACTICS_ATTACK1);
		obj.sq_ZStop();

		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/scorchtactics/attack1/attack1_back_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/scorchtactics/attack1/attack1_front_00.ani", ENUM_DRAWLAYER_NORMAL, true);

		local AttackCount = obj.sq_GetIntData(SKILL_SCORCHTACTICS, 0);
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_SCORCHTACTICS, STATE_SCORCHTACTICS, 0, 1.0));

		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_SCORCHTACTICS); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(AttackCount); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, -obj.sq_GetIntData(SKILL_SCORCHTACTICS, 9), obj.getDirection());
		break;
	case 2:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_SCORCHTACTICS_ATTACK2);
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/scorchtactics/attack2/attack2_back_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/scorchtactics/attack2/attack2_front_00.ani", ENUM_DRAWLAYER_NORMAL, true);


		break;
	case 3:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_SCORCHTACTICS_END);
		sq_SimpleMoveToNearMovablePos(obj,200);
		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
}

function onEnterFrame_ScorchTactics(obj, frameIndex) {
	if (!obj) return;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 1:
		switch (frameIndex) {
		case 2:
			obj.sq_PlaySound("RG_GN_BREACHING_DOWN_02");
			break;
		case 6:
			obj.sq_PlaySound("SCORCHTACTICS_JUMP_GRENADE");
			break;
		case 10:
			obj.sq_PlaySound("SCORCHTACTICS_JUMP_GRENADE");
			break;
		case 13:
			obj.sq_PlaySound("SCORCHTACTICS_JUMP_GRENADE");
			break;
		}
		break;
	case 2:
		switch (frameIndex) {
		case 2:
			obj.sq_PlaySound("GN_SCORCH_TACTICS_02_C");
			break;
		}
		break;
	}
}

function onProc_ScorchTactics(obj) {
	if (!obj) return;

	local subState = obj.getSkillSubState(); 
	switch (subState) {
	case 0:
		if (obj.getVar("ScorchTactics").size_vector() > 0) {
			local pAni = obj.getCurrentAnimation(); 
			local currentT = sq_GetCurrentTime(pAni); 
			local fireT = sq_GetDelaySum(pAni); 

			local dstX = sq_GetDistancePos(obj.getVar("ScorchTactics").get_vector(0), obj.getDirection(), sq_GetUniformVelocity(0, obj.getVar("ScorchTactics").get_vector(2), currentT, fireT));
			local dstZ = obj.getVar("ScorchTactics").get_vector(1) + sq_GetUniformVelocity(0, obj.getVar("ScorchTactics").get_vector(3), currentT, fireT);
			if (obj.isMovablePos(dstX, obj.getYPos())) {
				sq_setCurrentAxisPos(obj, 0, dstX);
				sq_setCurrentAxisPos(obj, 2, dstZ);
			} else {
				obj.getVar("ScorchTactics").clear_vector(); 
			}
		}
		break;
	case 2:
		if (obj.getVar("ScorchTactics").size_vector() > 0) {
			local pAni = obj.getCurrentAnimation(); 
			local currentT = sq_GetCurrentTime(pAni); 
			local fireT = sq_GetDelaySum(pAni); 
			
			sq_setCurrentAxisPos(obj, 2, sq_GetUniformVelocity(obj.getVar("ScorchTactics").get_vector(1)+obj.getVar("ScorchTactics").get_vector(3),0,  currentT, fireT));
		}
		break;
	}
}

function onKeyFrameFlag_ScorchTactics(obj, flagIndex) {
	if (!obj) return false;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 1:
		if (obj.getVar("ArcDischarge").getInt(0) >= 100) {
			obj.getVar("ScorchTacticsIsArcDischarge").setBool(0, true);
		}
		break;
	}
	return true;
}

function onProcCon_ScorchTactics(obj) {
	if (!obj) return;
	if (obj.getVar("ScorchTacticsIsArcDischarge").getBool(0)) {
		startArcDischarge(obj, "ScorchTacticsIsArcDischarge");
	}
}

function onEndCurrentAni_ScorchTactics(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_SCORCHTACTICS, STATE_PRIORITY_USER, true);
		break;
	case 1:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(2);
		obj.sq_AddSetStatePacket(STATE_SCORCHTACTICS, STATE_PRIORITY_USER, true);
		break;
	case 2:
		local AttackCount = obj.sq_GetIntData(SKILL_SCORCHTACTICS, 2);
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_SCORCHTACTICS, STATE_SCORCHTACTICS, 0, 1.0));

		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_SCORCHTACTICS); 
		sq_BinaryWriteDword(1); 
		sq_BinaryWriteDword(AttackCount); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(3);
		obj.sq_AddSetStatePacket(STATE_SCORCHTACTICS, STATE_PRIORITY_USER, true);
		break;
	case 3:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}