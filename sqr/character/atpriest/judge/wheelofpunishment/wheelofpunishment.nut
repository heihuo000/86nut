
function checkExecutableSkill_wheelofpunishment(obj)
{
	if(!obj)
		return false;

	local isUse = obj.sq_IsUseSkill(SKILL_WHEELOFPUNISHMENT);
	if (isUse)
	{
		obj.sq_AddSetStatePacket(STATE_WHEELOFPUNISHMENT, STATE_PRIORITY_USER, false);
		return true;
	}
	return false;
}

function checkCommandEnable_wheelofpunishment(obj)
{
	if (!obj)
		return false;
	return true;
}

function onSetState_WheelOfPunishment(obj, state, datas, isResetTimer)
{
	if(!obj)
		return false;

	local substate = obj.getVar().get_vector(0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();

	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(ANI_WheelOfPunishment_Ready);
	}
	else if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(ANI_WheelOfPunishment_Start);
		if(isHolyFlame(obj))
		{
			obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/wheelofpunishment_start_body.ani"), 0, 0);
		}
		obj.sq_SetCurrentAttackInfo(ATK_WheelOfPunishment);
		obj.sq_PlaySound("PW_WHEEL_PUNISHMENT");
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_WHEELOFPUNISHMENT , -1, 0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onProc_WheelOfPunishment(obj)
{
	local substate = obj.getSkillSubState();

	if(substate == 0)
	{

	}
	else if(substate == 1)
	{

	}
}

function onKeyFrameFlag_WheelOfPunishment(obj,flagIndex)
{
	if(!obj)
		return false;

	if (flagIndex == 1)
	{
		sq_flashScreen(obj, 180, 240, 160, 255, sq_RGB(0,0,0), ENUM_DRAWLAYER_CONTACT, ENUM_DRAWLAYER_NORMAL);
	}
	else if (flagIndex == 2)
	{

	}
	else if (flagIndex == 3)
	{
		obj.sq_StartWrite();
		obj.sq_WriteDword(117);
		obj.sq_SendCreatePassiveObjectPacket(24240, 0, 0, 1, 0);
		obj.sq_PlaySound("WHEEL_PUNISHMENT_EXP");
		obj.sq_PlaySound("WHEEL_PUNISHMENT_ROLLING");
		obj.sq_PlaySound("WHEEL_PUNISHMENT_ROLL_LOOP");
		obj.sq_SetShake(obj,3,300);
	}
	else if (flagIndex == 4)
	{
		//obj.sq_SendCreatePassiveObjectPacket(250232, 0, 0, 1, 0);
		//obj.sq_SetShake(obj,2,100);
	}
	else if (flagIndex == 5)
	{

	}
	return true;
}


function onEndCurrentAni_WheelOfPunishment(obj)
{
	local substate = obj.getSkillSubState();

	if(substate == 0)
	{
		obj.getVar().clear_vector();
		obj.getVar().push_vector(1);
		obj.sq_AddSetStatePacket(STATE_WHEELOFPUNISHMENT ,STATE_PRIORITY_USER, true);
	}
	else if(substate == 1)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}
