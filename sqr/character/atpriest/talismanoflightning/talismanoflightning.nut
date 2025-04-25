function checkExecutableSkill_TalismanOfLightning(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_TALISMAN_OF_LIGHTNING);
	if (isUse)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_TALISMAN_OF_LIGHTNING, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_TalismanOfLightning(obj)
{
	if (!obj) return false;
	return true;
}

function onSetState_TalismanOfLightning(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();
	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_TALISMAN_OF_LIGHTNING_CAST_BODY);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	}
	if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_TALISMAN_OF_LIGHTNING_SHOT_BODY);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		local distance = sq_GetIntData(obj, SKILL_TALISMAN_OF_LIGHTNING, 1);
		obj.sq_StartWrite();
		obj.sq_WriteDword(5);
		obj.sq_SendCreatePassiveObjectPacket(24240, 0, distance, 0, 0);
	}
	
}

function onEndCurrentAni_TalismanOfLightning(obj)
{
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_TALISMAN_OF_LIGHTNING, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(substate == 1)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

