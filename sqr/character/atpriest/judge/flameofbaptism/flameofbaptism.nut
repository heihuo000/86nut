
function checkExecutableSkill_flameofbaptism(obj)
{
	if(!obj)
		return false;

	local isUse = obj.sq_IsUseSkill(SKILL_FLAMEOFBAPTISM);
	if (isUse)
	{
		obj.sq_AddSetStatePacket(STATE_FLAMEOFBAPTISM, STATE_PRIORITY_USER, false);
		return true;
	}
	return false;
}


function checkCommandEnable_flameofbaptism(obj)
{
	if (!obj)
		return false;
	return true;

}


function onSetState_FlameOfBaptism(obj, state, datas, isResetTimer)
{
	if(!obj)
		return false;
	
	local substate = obj.getVar().get_vector(0);
	
	obj.setSkillSubState(substate);
	obj.sq_StopMove();
	
	obj.sq_SetCurrentAnimation(ANI_FlameOfBaptism_Body);
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	
	obj.sq_StartWrite();
	obj.sq_WriteDword(116);
	obj.sq_SendCreatePassiveObjectPacket(24240, 0, 0, 0, 0);
}


function onProc_FlameOfBaptism(obj)
{
	local substate = obj.getSkillSubState();

	if(substate == 0)
	{

	}
}


function onKeyFrameFlag_FlameOfBaptism(obj,flagIndex)
{
	if(!obj)
		return false;

	if (flagIndex == 3)
	{
		obj.sq_SetShake(obj,1,400);
	}
	return true;
}


function onEndCurrentAni_FlameOfBaptism(obj)
{
	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}
