function checkExecutableSkill_ShineCross(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_SHINE_CROSS);
	if (isUse)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_SHINE_CROSS, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_ShineCross(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	if (state == STATE_STAND)
		return true;
		return true;
}

function onSetState_ShineCross(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_CAST_SPEED,
		SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_SC_BODY_A);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_SHINECROSSATK1);
		local BonusRate =  obj.sq_GetPowerWithPassive(SKILL_SHINE_CROSS, STATE_SHINE_CROSS, 0, -1,1.0);
		obj.sq_SetCurrentAttackPower(BonusRate);
	}
	if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_SC_BODY_B);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_SHINECROSSATK2);
		local BonusRate =  obj.sq_GetPowerWithPassive(SKILL_SHINE_CROSS, STATE_SHINE_CROSS, 1, -1,1.0);
		obj.sq_SetCurrentAttackPower(BonusRate);
	}
	if(substate == 2)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_SC_BODY_C);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_SHINECROSSATK3);
		local BonusRate =  obj.sq_GetPowerWithPassive(SKILL_SHINE_CROSS, STATE_SHINE_CROSS, 2, -1,1.0);
		obj.sq_SetCurrentAttackPower(BonusRate);
	}
}

function onEndCurrentAni_ShineCross(obj)
{
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_SHINE_CROSS, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(substate == 1)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(2);
		obj.sq_AddSetStatePacket(STATE_SHINE_CROSS, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(substate == 2)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}
