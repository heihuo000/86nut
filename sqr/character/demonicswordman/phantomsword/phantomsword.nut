
function checkExecutableSkill_PhantomSword(obj)  
{
	if (!obj) return false;
	
	local isUse = obj.sq_IsUseSkill(SKILL_PHANTOMSWORD);
	
	if (isUse)
	{
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(0);
		obj.sq_AddSetStatePacket(STATE_PHANTOMSWORD, STATE_PRIORITY_USER, false);
		return true;
	}
	return false;
}

function checkCommandEnable_PhantomSword(obj)
{
	return true;
}

function onSetState_PhantomSword(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	
	local state = obj.getVar("state").get_vector(0);
	
	obj.sq_StopMove();
	
	if(state == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_PSREADYACTION_BODY);
	}
}

function onEndCurrentAni_PhantomSword(obj)
{
	local state = obj.getVar("state").get_vector(0);
	
	if (state == 0)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function onKeyFrameFlag_PhantomSword(obj,flagIndex)
{
	local state = obj.getVar("state").get_vector(0);
	
	local id = sq_GetObjectId(obj);
	
	if (state == 0)
	{
		if (flagIndex == 0)
		{
			obj.sq_StartWrite();
			obj.sq_WriteDword(12);
			obj.sq_WriteDword(id);
			obj.sq_SendCreatePassiveObjectPacket(24338, 0, 220, 0, 0);
		}
		
		if (flagIndex == 1)
		{
			obj.sq_StartWrite();
			obj.sq_WriteDword(13);
			obj.sq_WriteDword(id);
			obj.sq_SendCreatePassiveObjectPacket(24338, 0, 220, 0, 0);
		}
		return true;
	}
}
