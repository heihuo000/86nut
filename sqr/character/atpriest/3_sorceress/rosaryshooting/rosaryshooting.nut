function checkCommandEnable_RosaryShooting(obj) {
	return true;
}

function checkExecutableSkill_RosaryShooting(obj) {//addjumpthrow
	if (!obj)
		return false;
	local rosaryBead = obj.sq_GetSkillLoad(SKILL_ROSARYSHOOTING);
	if (rosaryBead.getRemainLoadNumber() < 1)
		return false;
	local UncleBangValue1 = obj.sq_IsUseSkill(SKILL_ROSARYSHOOTING);
	if (UncleBangValue1) {
		local z = obj.getZPos();
		if(z > 30)
		{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(2);
			obj.sq_AddSetStatePacket(STATE_ROSARYSHOOTING, STATE_PRIORITY_IGNORE_FORCE, true);
		}
		else
		{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(0);
			obj.sq_AddSetStatePacket(STATE_ROSARYSHOOTING, STATE_PRIORITY_IGNORE_FORCE, true);
		}

		return true;
	}
	return false;

}

function onSetState_RosaryShooting(obj, state, datas, isResetTimer) {
	if (!obj) return;
	local UncleBangValue1 = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(UncleBangValue1);
	local z = obj.getZPos();
	switch (UncleBangValue1) {
	case 0:
		if(z == 0)
			obj.sq_StopMove();
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ROSARYSHOOTING1);
		obj.sq_AddStateLayerAnimation(0, obj.sq_CreateCNRDAnimation("effect/animation/atrosaryshooting/rosaryshootingstand02_03_01.ani"), 0, 0);
		break;
	case 1:
		if(z == 0)
			obj.sq_StopMove();
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ROSARYSHOOTING2);
		obj.sq_AddStateLayerAnimation(0, obj.sq_CreateCNRDAnimation("effect/animation/atrosaryshooting/rosaryshootingstand02_02_01.ani"), 0, 0);
		break;
	case 2:
		//obj.sq_StopMove();
		obj.sq_ZStop();
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ROSARYSHOOTING_JUMP);
		obj.sq_AddStateLayerAnimation(0, obj.sq_CreateCNRDAnimation("effect/animation/atrosaryshooting/rosaryshootingjump02_03_01.ani"), 0, 0);
		break;
	case 3:
		//obj.sq_StopMove();
		obj.sq_ZStop();
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ROSARYSHOOTING_JUMP2);
		obj.sq_AddStateLayerAnimation(0, obj.sq_CreateCNRDAnimation("effect/animation/atrosaryshooting/rosaryshootingjump02_02_01.ani"), 0, 0);
		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onKeyFrameFlag_RosaryShooting(obj, flagIndex) {
	if (!obj) return false;
	local UncleBangValue1 = obj.getSkillSubState();
	local UncleBangValue2 = obj.sq_GetSkillLoad(SKILL_ROSARYSHOOTING);
	switch (UncleBangValue1) {
	case 0:
	case 1:
		switch (flagIndex) {
		case 10001:
			if (obj.isMyControlObject() && UncleBangValue2.getRemainLoadNumber() > 0) {
				obj.sq_StartWrite();
				obj.sq_WriteDword(3);
				obj.sq_WriteDword(1);
				obj.sq_WriteDword(0);
				obj.sq_SendCreatePassiveObjectPacket(24338, 0, -50 + sq_getRandom(-30, 30), 0, 70 + sq_getRandom(-30, 15));
				RosaryBeadDecrease(obj);
			}
			break;
		}
		break;
	case 2:
	case 3:
		switch (flagIndex) {
		case 10001:
			if (obj.isMyControlObject() && UncleBangValue2.getRemainLoadNumber() > 0) {
				obj.sq_StartWrite();
				obj.sq_WriteDword(200);
				obj.sq_SendCreatePassiveObjectPacket(24240, 0, -50 + sq_getRandom(-30, 30), 0, 70 + sq_getRandom(-30, 15));
				
/*				obj.sq_StartWrite();
				obj.sq_WriteDword(3);
				obj.sq_WriteDword(1);
				obj.sq_WriteDword(0);
				obj.sq_SendCreatePassiveObjectPacket(24338, 0, -50 + sq_getRandom(-30, 30), 0, 70 + sq_getRandom(-30, 15));*/
				sq_SetZVelocity(obj,30,30);
				if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_RIGHT
			 		|| sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_LEFT)
				{
					obj.sq_StopMove();
				}
				else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_LEFT
			 		|| sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_RIGHT)
			 	{
					obj.sq_SetStaticMoveInfo(0, -300, -300, false);
					obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
			 	}
				else
				{
					obj.sq_SetStaticMoveInfo(0, -150, -150, false);
					obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
				}
				RosaryBeadDecrease(obj);
			}
			break;
		}
		break;
	}
	return true;

}

function onProc_RosaryShooting(obj) {
	if (!obj) return;

	local z = obj.getZPos();
	if (z == 0) {
		obj.sq_StopMove();
	}
}

function onProcCon_RosaryShooting(obj) {
	if (!obj) return;
	local UncleBangValue1 = obj.getSkillSubState();
	local UncleBangValue2 = obj.sq_GetSkillLoad(SKILL_ROSARYSHOOTING);
	switch (UncleBangValue1) {
	case 0:
		RosaryShooting_setCommandEnable(obj, 169, 6);
		RosaryShooting_setState(obj, 169, [1, 1, obj.sq_GetIntData(169, 0)], 6);
		local UncleBangValue3 = obj.getCurrentAnimation();
		local UncleBangValue4 = sq_GetAnimationFrameIndex(UncleBangValue3);
		local UncleBangValue5 = sq_GetCurrentTime(UncleBangValue3);
		if (UncleBangValue4 >= 2 && UncleBangValue2.getRemainLoadNumber() > 0) {
			obj.setSkillCommandEnable(SKILL_ROSARYSHOOTING, true);
			if (obj.sq_IsEnterSkill(SKILL_ROSARYSHOOTING) != -1) {
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(1);
				obj.sq_AddSetStatePacket(STATE_ROSARYSHOOTING, STATE_PRIORITY_IGNORE_FORCE, true);
			}
		}
		if (UncleBangValue5 >= 500) {
			obj.sq_IntVectClear();
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_IGNORE_FORCE, true);
		}
		break;
	case 1:
		RosaryShooting_setCommandEnable(obj, 169, 6);
		RosaryShooting_setState(obj, 169, [1, 1, obj.sq_GetIntData(169, 0)], 6);
		local UncleBangValue3 = obj.getCurrentAnimation();
		local UncleBangValue4 = sq_GetAnimationFrameIndex(UncleBangValue3);
		local UncleBangValue5 = sq_GetCurrentTime(UncleBangValue3);
		if (UncleBangValue4 >= 1 && UncleBangValue2.getRemainLoadNumber() > 0) {
			obj.setSkillCommandEnable(SKILL_ROSARYSHOOTING, true);
			if (obj.sq_IsEnterSkill(SKILL_ROSARYSHOOTING) != -1) {
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(1);
				obj.sq_AddSetStatePacket(STATE_ROSARYSHOOTING, STATE_PRIORITY_IGNORE_FORCE, true);
			}
		}
		if (UncleBangValue5 >= 200) {
			obj.sq_IntVectClear();
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_IGNORE_FORCE, true);
		}
		break;
	case 2:
	case 3:
		local ani = obj.getCurrentAnimation();
		local frameIndex = sq_GetAnimationFrameIndex(ani);
		local currentTime = sq_GetCurrentTime(ani);
		if (frameIndex >= 1 && UncleBangValue2.getRemainLoadNumber() > 0) {
			obj.setSkillCommandEnable(SKILL_ROSARYSHOOTING, true);
			if (obj.sq_IsEnterSkill(SKILL_ROSARYSHOOTING) != -1) {
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(3);
				obj.sq_AddSetStatePacket(STATE_ROSARYSHOOTING, STATE_PRIORITY_IGNORE_FORCE, true);
			}
		}
		if (currentTime >= 200) {
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 1);
			sq_IntVectorPush(pIntVec, 0);
			sq_IntVectorPush(pIntVec, 1);
			obj.addSetStatePacket(STATE_JUMP, pIntVec, STATE_PRIORITY_FORCE, false, "");
			obj.flushSetStatePacket();
		}
		break;
	}

}

function RosaryShooting_setCommandEnable(obj, skillIndex, skillState) {
	if (obj.sq_GetState() == skillState) return false;
	local currentMp = obj.getMp();
	local skill = sq_GetSkill(obj, skillIndex);
	local consumeMp = skill.getSpendMp(obj, -1);
	if (!skill.isInCoolTime() && currentMp > consumeMp) {
		obj.setSkillCommandEnable(skillIndex, true);
		return true;
	}
}

function RosaryShooting_setState(obj, skillIndex, Arr, skillState) {
	if (obj.sq_GetState() == skillState) return false;
	local currentMp = obj.getMp();
	local skill = sq_GetSkill(obj, skillIndex);
	local consumeMp = skill.getSpendMp(obj, -1);
	if (obj.sq_IsEnterSkill(skillIndex) != -1) {
		obj.sendSetMpPacket(currentMp - consumeMp);
		obj.startSkillCoolTime(skillIndex, 1, -1);
		obj.sq_IntVectClear();
		if (Arr.len() < 1) {
			obj.sq_AddSetStatePacket(skillState, STATE_PRIORITY_IGNORE_FORCE, true);
			return true;
		}
		else {
			foreach(skillSubState in Arr)
			obj.sq_IntVectPush(skillSubState);
			obj.sq_AddSetStatePacket(skillState, STATE_PRIORITY_IGNORE_FORCE, true);
			return true;
		}
	}
}  