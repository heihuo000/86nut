
function checkExecutableSkill_DarkWaveFall(obj)
{
	if (!obj) return false;
	
	local isUse = obj.sq_IsUseSkill(SKILL_DARKWAVEFALL);

	if (isUse)
	{
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(0);
		obj.sq_AddSetStatePacket(STATE_DARKWAVEFALL, STATE_PRIORITY_USER, false);
		return true;
	}
	return false;
}

function checkCommandEnable_DarkWaveFall(obj)
{
	return true;
}

function onSetState_DarkWaveFall(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	
	local state = obj.getVar("state").get_vector(0);
	
	obj.sq_StopMove();
	
	if(state == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DARKWAVEFALL_CASTING_BODY);
	}
	if(state == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DARKWAAVEFALL_ATT_BODY);
	}	
}

function onEndCurrentAni_DarkWaveFall(obj)
{
	local state = obj.getVar("state").get_vector(0);
	
	if(state == 0)
	{
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(1);
		obj.sq_AddSetStatePacket(STATE_DARKWAVEFALL, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(state == 1)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function onKeyFrameFlag_DarkWaveFall(obj,flagIndex)
{
	local state = obj.getVar("state").get_vector(0);
	
	local id = sq_GetObjectId(obj);
	
	if(state == 1)
	{
		if (flagIndex == 0)
		{
			obj.sq_StartWrite();
			obj.sq_WriteDword(0);
			obj.sq_WriteDword(id);
			obj.sq_SendCreatePassiveObjectPacket(24338, 0, 0, 0, 0);
		}
	}
	return true;
}
