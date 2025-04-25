
function checkExecutableSkill_CutInDash(obj) {
	if (!obj) return false;

	local isUse = obj.sq_IsUseSkill(SKILL_CUT_IN_DASH);

	if (isUse) {
		if (Seducer(obj)) {
			obj.getVar("CutInDash_skill").push_vector(1);
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 4);
			obj.addSetStatePacket(STATE_CUT_IN_DASH, pIntVec, STATE_PRIORITY_FORCE, false, "");
		} else {
			obj.getVar("CutInDash_skill").push_vector(1);
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 0);
			obj.addSetStatePacket(STATE_CUT_IN_DASH, pIntVec, STATE_PRIORITY_FORCE, false, "");
		}
	}
}

function checkCommandEnable_CutInDash(obj) {
	if (!obj)
		return false;

	return true;
}


function onSetState_CutInDash(obj, state, datas, isResetTimer) {
	if (!obj) return;
	obj.sq_StopMove();
	local state = obj.sq_GetVectorData(datas, 0);
	local id = sq_GetObjectId(obj);
	obj.setSkillSubState(state);

	switch (state) {
		case 0:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_AT_CUTIN_DASH_FRONT_DASH_BODY); //
			local len = 240;

			obj.getVar("len").clear_vector();
			obj.getVar("len").push_vector(len); //0
			obj.getVar("len").push_vector(obj.sq_GetCurrentAni().getDelaySum(false)); //1
			obj.getVar("len").push_vector(obj.getXPos()); //2
			break;
		case 1:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_AT_CUTIN_DASH_FRONT_REDASH_BODY); //
			local len = 240;

			obj.getVar("len").clear_vector();
			obj.getVar("len").push_vector(len); //0
			obj.getVar("len").push_vector(obj.sq_GetCurrentAni().getDelaySum(false)); //1
			obj.getVar("len").push_vector(obj.getXPos()); //2
			local currSize = obj.getVar("CutInDash_skill").get_vector(0);
			obj.getVar("CutInDash_skill").set_vector(0, currSize + 1);
			break;
		case 2:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_AT_CUTIN_DASH_BACK_DASH_BODY); //
			local len = -240;

			obj.getVar("len").clear_vector();
			obj.getVar("len").push_vector(len); //0
			obj.getVar("len").push_vector(obj.sq_GetCurrentAni().getDelaySum(false)); //1
			obj.getVar("len").push_vector(obj.getXPos()); //2
			local currSize = obj.getVar("CutInDash_skill").get_vector(0);
			obj.getVar("CutInDash_skill").set_vector(0, currSize + 1);
			break;
		case 3:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_AT_CUTIN_DASH_ATT_BODY); //
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_CUT_IN_DASH_ATTACK);
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_CUT_IN_DASH, -1, 2, 1.0);
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate); //

			break;
		case 4:
			local ani = obj.getVar().GetAnimationMap("Seducer228", "Character/Priest/Seducer/ATAnimation/atcutindash_front_dash_demonization.ani");
			obj.setCurrentAnimation(ani);
			
			local len = 240;
			obj.getVar("len").clear_vector();
			obj.getVar("len").push_vector(len); //0
			obj.getVar("len").push_vector(obj.sq_GetCurrentAni().getDelaySum(false)); //1
			obj.getVar("len").push_vector(obj.getXPos()); //2

			break;
		case 5:
			local ani = obj.getVar().GetAnimationMap("Seducer229", "Character/Priest/Seducer/ATAnimation/atcutindash_back_dash_demonization.ani");
			obj.setCurrentAnimation(ani);
			
			local len = -240;
			obj.getVar("len").clear_vector();
			obj.getVar("len").push_vector(len); //0
			obj.getVar("len").push_vector(obj.sq_GetCurrentAni().getDelaySum(false)); //1
			obj.getVar("len").push_vector(obj.getXPos()); //2
			local currSize = obj.getVar("CutInDash_skill").get_vector(0);
			obj.getVar("CutInDash_skill").set_vector(0, currSize + 1);
			break;
		case 6:
			local ani = obj.getVar().GetAnimationMap("cutindashdmf", "character/priest/seducer/atanimation/atcutindash_att_demonization_front.ani");
			obj.setCurrentAnimation(ani);
			//obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATCUTINDASH_ATT_DEMONIZATION_FRONT); //
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_CUT_IN_DASH_ATTACK);
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_CUT_IN_DASH, -1, 2, 1.0);
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate); //

			break;
		case 7:
			local ani = obj.getVar().GetAnimationMap("cutindashdmb", "character/priest/seducer/atanimation/atcutindash_att_demonization_back.ani");
			obj.setCurrentAnimation(ani);
			//obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATCUTINDASH_ATT_DEMONIZATION_BACK); //
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_CUT_IN_DASH_ATTACK);
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_CUT_IN_DASH, -1, 2, 1.0);
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate); //

			break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onEndState_CutInDash(obj, new_state) {
	if (new_state != STATE_CUT_IN_DASH) {
		obj.getVar("CutInDash_skill").clear_vector();
	}
}

function onProc_CutInDash(obj) {
	if (!obj) return;
	local id = sq_GetObjectId(obj);
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local state = obj.getSkillSubState();
	switch (state) {
		case 0:
			local posX = obj.getVar("len").get_vector(2);
			local delayT = obj.getVar("len").get_vector(1);
			local len = obj.getVar("len").get_vector(0);


			local v = sq_GetAccel(0, len, currentT, delayT, true);
			local srcX = posX;

			local dstX = sq_GetDistancePos(srcX, obj.getDirection(), v);

			if (obj.isMovablePos(dstX, obj.getYPos())) {
				sq_setCurrentAxisPos(obj, 0, dstX);
			}
			if (frmIndex >= 3) {
				CutInDashATTACK(obj);
			}
			CutInDash_skill(obj);
			break;
		case 1:
		case 2:
			local posX = obj.getVar("len").get_vector(2);
			local delayT = obj.getVar("len").get_vector(1);
			local len = obj.getVar("len").get_vector(0);


			local v = sq_GetAccel(0, len, currentT, delayT, true);
			local srcX = posX;

			local dstX = sq_GetDistancePos(srcX, obj.getDirection(), v);

			if (obj.isMovablePos(dstX, obj.getYPos())) {
				sq_setCurrentAxisPos(obj, 0, dstX);
			}
			CutInDashATTACK(obj);
			CutInDash_skill(obj);

			break;
			break;
		case 4:
			local posX = obj.getVar("len").get_vector(2);
			local delayT = obj.getVar("len").get_vector(1);
			local len = obj.getVar("len").get_vector(0);


			local v = sq_GetAccel(0, len, currentT, delayT, true);
			local srcX = posX;

			local dstX = sq_GetDistancePos(srcX, obj.getDirection(), v);

			if (obj.isMovablePos(dstX, obj.getYPos())) {
				sq_setCurrentAxisPos(obj, 0, dstX);
			}

			if (sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL) || sq_IsKeyDown(OPTION_HOTKEY_SKILL, ENUM_SUBKEY_TYPE_ALL)) //
			{
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 6);

				obj.addSetStatePacket(STATE_CUT_IN_DASH, pIntVec, STATE_PRIORITY_FORCE, false, "");
			}
			CutInDash_Seducerskill(obj);
			break;
		case 5:
			local posX = obj.getVar("len").get_vector(2);
			local delayT = obj.getVar("len").get_vector(1);
			local len = obj.getVar("len").get_vector(0);


			local v = sq_GetAccel(0, len, currentT, delayT, true);
			local srcX = posX;

			local dstX = sq_GetDistancePos(srcX, obj.getDirection(), v);

			if (obj.isMovablePos(dstX, obj.getYPos())) {
				sq_setCurrentAxisPos(obj, 0, dstX);
			}
			if (sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL) || sq_IsKeyDown(OPTION_HOTKEY_SKILL, ENUM_SUBKEY_TYPE_ALL)) //
			{
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 7);

				obj.addSetStatePacket(STATE_CUT_IN_DASH, pIntVec, STATE_PRIORITY_FORCE, false, "");
			}
			CutInDash_Seducerskill(obj);
			break;
	}
}

function CutInDashATTACK(obj) {
	if (!obj) return;
	if (sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL)) //
	{
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 3);

		obj.addSetStatePacket(STATE_CUT_IN_DASH, pIntVec, STATE_PRIORITY_FORCE, false, "");
	}
	if (sq_IsKeyDown(OPTION_HOTKEY_SKILL, ENUM_SUBKEY_TYPE_ALL)) {
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 3);

		obj.addSetStatePacket(STATE_CUT_IN_DASH, pIntVec, STATE_PRIORITY_FORCE, false, "");
	}
}

function CutInDash_Seducerskill(obj) {
	if (!obj) return;
	local maxCutInDash = sq_GetLevelData(obj, SKILL_CUT_IN_DASH, 0, sq_GetSkillLevel(obj, SKILL_CUT_IN_DASH));
	if (Seducer(obj)) maxCutInDash = sq_GetLevelData(obj, SKILL_CUT_IN_DASH, 1, sq_GetSkillLevel(obj, SKILL_CUT_IN_DASH));
	if (obj.getVar("CutInDash_skill").get_vector(0) < maxCutInDash) {
		obj.setSkillCommandEnable(SKILL_CUT_IN_DASH, true);
		local CutInDash = obj.sq_IsEnterSkill(SKILL_CUT_IN_DASH);

		if (CutInDash != -1) //
		{
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 4);

			obj.addSetStatePacket(STATE_CUT_IN_DASH, pIntVec, STATE_PRIORITY_FORCE, false, "");
			local currSize = obj.getVar("CutInDash_skill").get_vector(0);
			obj.getVar("CutInDash_skill").set_vector(0, currSize + 1);
		}
		if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_RIGHT ||
			sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_LEFT) //
		{
			if (CutInDash != -1) {
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 5);

				obj.addSetStatePacket(STATE_CUT_IN_DASH, pIntVec, STATE_PRIORITY_FORCE, false, "");
			}
		}
	}
}

function CutInDash_skill(obj) {
	if (!obj) return;
	local maxCutInDash = sq_GetLevelData(obj, SKILL_CUT_IN_DASH, 0, sq_GetSkillLevel(obj, SKILL_CUT_IN_DASH));
	if (bodypressedsin(obj)) maxCutInDash = sq_GetLevelData(obj, SKILL_CUT_IN_DASH, 1, sq_GetSkillLevel(obj, SKILL_CUT_IN_DASH));
	if (obj.getVar("CutInDash_skill").get_vector(0) < maxCutInDash) {
		obj.setSkillCommandEnable(SKILL_CUT_IN_DASH, true);
		local CutInDash = obj.sq_IsEnterSkill(SKILL_CUT_IN_DASH);

		if (CutInDash != -1) //
		{
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 1);

			obj.addSetStatePacket(STATE_CUT_IN_DASH, pIntVec, STATE_PRIORITY_FORCE, false, "");
		}
		if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_RIGHT ||
			sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_LEFT) //
		{
			if (CutInDash != -1) {
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 2);

				obj.addSetStatePacket(STATE_CUT_IN_DASH, pIntVec, STATE_PRIORITY_FORCE, false, "");
			}
		}
	}
}

function onEndCurrentAni_CutInDash(obj) {
	if (!obj) return;
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local state = obj.getSkillSubState();
	switch (state) {
		case 0:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);

			break;
		case 1:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);

			break;
		case 2:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
			break;
		case 3:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);

			break;
		case 4:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);

			break;
		case 5:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
			break;
		case 6:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);

			break;
		case 7:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
			break;
	}
}

function onKeyFrameFlag_CutInDash(obj, flagIndex) //
{
	if (!obj) return;
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local state = obj.getSkillSubState();
	switch (state) {
		case 3:
			if (flagIndex == 1)
				sq_SetMyShake(obj, 2, 180);
			break;
		case 6:
			if (flagIndex == 1) {
				obj.sq_PlaySound("PW_CUTINDASH_DM_02");
				sq_SetMyShake(obj, 10, 120);
			}
			break;
		case 7:
			if (flagIndex == 1) {
				obj.sq_PlaySound("PW_CUTINDASH_DM_02");
				sq_SetMyShake(obj, 10, 120);
			}
	}
	return true;
}
   