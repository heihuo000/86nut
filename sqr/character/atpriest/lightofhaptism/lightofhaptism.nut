function checkExecutableSkill_LightOfHaptism(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_LIGHT_OF_HAPTISM);
	if (isUse)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_LIGHT_OF_HAPTISM, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_LightOfHaptism(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	if (state == STATE_STAND)
		return true;
		return true;
}

function onSetState_LightOfHaptism(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
		SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);

	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATLIGHT_OF_HAPTISM_CASTING_BOD);
	}
	if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATLIGHT_OF_HAPTISM_SHOOT_BODY);
	}
}

function onKeyFrameFlag_LightOfHaptism(obj,flagIndex)
{
	if(!obj)
		return false;
	if (flagIndex == 1)
	{
		local distance = sq_GetIntData(obj, SKILL_LIGHT_OF_HAPTISM, SKL_INT_LV_3);
		obj.sq_StartWrite();
		obj.sq_WriteDword(8);
		obj.sq_SendCreatePassiveObjectPacket(24240, 0, distance, 0, 0);
	}
	if (flagIndex == 2)
	{
		sq_SetShake(obj,2,100);
	}
	return true;
}

function onEndCurrentAni_LightOfHaptism(obj)
{
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_LIGHT_OF_HAPTISM, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(substate == 1)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}
