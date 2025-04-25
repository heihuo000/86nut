
function checkExecutableSkill_HolyCirclet(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_HOLY_CIRCLET);
	if (isUse)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_HOLY_CIRCLET, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_HolyCirclet(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	if (state == STATE_STAND)
		return true;
		return true;
}

function onSetState_HolyCirclet(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
		SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	if(substate == 0)
	{
		local distance = sq_GetIntData(obj, SKILL_HOLY_CIRCLET, SKL_INT_LV_8);
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_HOLY_CIRCLET_A_BODY);
		obj.sq_StartWrite();
		obj.sq_WriteDword(19);
		obj.sq_SendCreatePassiveObjectPacket(24240, 0, distance, -30, 0);
	}
	if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_HOLY_CIRCLET_B_BODY);

	}
}


function onKeyFrameFlag_HolyCirclet(obj,flagIndex)
{
	if(!obj)
		return false;
	if (flagIndex == 0)
	{
		sq_SetShake(obj,2,40);
	}
	if (flagIndex == 1)
	{

	}
	if (flagIndex == 2)
	{
		sq_SetShake(obj,2,80);
	}
	return true;
}

function onEndCurrentAni_HolyCirclet(obj)
{
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_HOLY_CIRCLET, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(substate == 1)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}
