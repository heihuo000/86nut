function checkExecutableSkill_HolySmash(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_HOLY_SMASH);
	if (isUse)
	{
		obj.sq_AddSetStatePacket(STATE_HOLY_SMASH , STATE_PRIORITY_USER, false);
		return true;
	}
	return false;
}

function checkCommandEnable_HolySmash(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	if (state == STATE_STAND)
		return true;
		return true;
}

function onSetState_HolySmash(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	obj.sq_StopMove();
	obj.sq_SetCurrentAnimation(CUSTOM_ANI_HOLY_SMASH_BODY);
	obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_HOLY_SMASH);
	local BonusRate =  obj.sq_GetPowerWithPassive(SKILL_HOLY_SMASH, STATE_HOLY_SMASH, 1, -1,1.0);
	obj.sq_SetCurrentAttackPower(BonusRate);
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onKeyFrameFlag_HolySmash(obj,flagIndex)
{
	if(!obj)
		return false;
	if (flagIndex == 4)
	{
		obj.sq_PlaySound("R_PW_HOLYSMASH");
	}
	return true;
}

function onEndCurrentAni_HolySmash(obj)
{
	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}
