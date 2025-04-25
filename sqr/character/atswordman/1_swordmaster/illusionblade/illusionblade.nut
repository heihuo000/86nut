
function checkExecutableSkill_Illusionblade(CQSluzb1ieWlPqBVOeJc)
{
	if (!CQSluzb1ieWlPqBVOeJc) return false
local CQf8Mt9oVZ69HdB4B = CQSluzb1ieWlPqBVOeJc.sq_IsUseSkill(131)
if (CQf8Mt9oVZ69HdB4B)
	{
		CheckUseAddloadDrawsword(CQSluzb1ieWlPqBVOeJc,131,{[0] = true,[108] = true,[14] = true},0)
CQSluzb1ieWlPqBVOeJc.sq_IntVectClear()
CQSluzb1ieWlPqBVOeJc.sq_IntVectPush(0)
CQSluzb1ieWlPqBVOeJc.sq_AddSetStatePacket(131, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Illusionblade(CQuBuFZnl6EMAsVM2zz)
{
	if (!CQuBuFZnl6EMAsVM2zz) return false
if(CQuBuFZnl6EMAsVM2zz.getZPos() > 10)
		return false
return CheckForceDrawsword(CQuBuFZnl6EMAsVM2zz,131,{[0] = true,[108] = true,[14] = true})
}

function onSetState_Illusionblade(CQMGd2EfGQhKagC6, CQbHATnD9JDOSXC2d7, CQFacrNyajcysUX9nre, CQgeCAPc1m5miVZ5)
{
	if(!CQMGd2EfGQhKagC6) return
local CQocrMeVYGElIQZRtx = CQMGd2EfGQhKagC6.sq_GetVectorData(CQFacrNyajcysUX9nre, 0)
CQMGd2EfGQhKagC6.setSkillSubState(CQocrMeVYGElIQZRtx)
local CQ2f6hkPLRg9of48oOsr = CQMGd2EfGQhKagC6.sq_GetBonusRateWithPassive(131, -1, 0, getATSwordmanBonus(CQMGd2EfGQhKagC6,1.0,131))
switch(CQocrMeVYGElIQZRtx)
	{
	case 0:
		CQMGd2EfGQhKagC6.sq_StopMove()
BodyMagicSword(CQMGd2EfGQhKagC6, "IllusionBlade")
if(MagicSword_IsAppebd(CQMGd2EfGQhKagC6))
			CQMGd2EfGQhKagC6.sq_SetCurrentAnimation(285)
else
			CQMGd2EfGQhKagC6.sq_SetCurrentAnimation(82)
local CQm1eQ1rhuS1WI3jK = sq_GetLevelData(CQMGd2EfGQhKagC6,13, 2, sq_GetSkillLevel(CQMGd2EfGQhKagC6, 13))
local CQJJ6OS7yDx3qh3fCI9 = sq_GetLevelData(CQMGd2EfGQhKagC6,13, 5, sq_GetSkillLevel(CQMGd2EfGQhKagC6, 13))/100.0
CQMGd2EfGQhKagC6.sq_StartWrite()
CQMGd2EfGQhKagC6.sq_WriteDword(131)
CQMGd2EfGQhKagC6.sq_WriteDword(0)
CQMGd2EfGQhKagC6.sq_WriteDword(CQMGd2EfGQhKagC6.getWeaponSubType())
CQMGd2EfGQhKagC6.sq_WriteDword(CQ2f6hkPLRg9of48oOsr)
CQMGd2EfGQhKagC6.sq_WriteDword(sq_GetLevelData(CQMGd2EfGQhKagC6,131, 1, sq_GetSkillLevel(CQMGd2EfGQhKagC6, 131)))
CQMGd2EfGQhKagC6.sq_WriteDword(CQMGd2EfGQhKagC6.sq_GetBonusRateWithPassive(131, -1, 2, getATSwordmanBonus(CQMGd2EfGQhKagC6,1.0+CQJJ6OS7yDx3qh3fCI9,131)))
CQMGd2EfGQhKagC6.sq_WriteDword(sq_GetIntData(CQMGd2EfGQhKagC6,131, 1)+CQm1eQ1rhuS1WI3jK)
CQMGd2EfGQhKagC6.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 0)
break
case 1:
		BodyMagicSword(CQMGd2EfGQhKagC6, "IllusionBlade2")
if(MagicSword_IsAppebd(CQMGd2EfGQhKagC6))
			CQMGd2EfGQhKagC6.sq_SetCurrentAnimation(286)
else
			CQMGd2EfGQhKagC6.sq_SetCurrentAnimation(83)
break
}
	CQMGd2EfGQhKagC6.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}
function onEndCurrentAni_Illusionblade(CQkssVcZ6dZZtC2l)
{
	if(!CQkssVcZ6dZZtC2l) return
local CQarkR6smWqSQq2h5e = CQkssVcZ6dZZtC2l.getSkillSubState()
switch(CQarkR6smWqSQq2h5e)
	{
	case 0:
		CQkssVcZ6dZZtC2l.sq_IntVectClear()
CQkssVcZ6dZZtC2l.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQkssVcZ6dZZtC2l.sq_IntVectClear()
CQkssVcZ6dZZtC2l.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onProc_Illusionblade(CQ5YJmJTDA1onB1dxXc9)
{
	if(!CQ5YJmJTDA1onB1dxXc9) return
local CQwRmai4z8yQeaMTb = CQ5YJmJTDA1onB1dxXc9.getSkillSubState()
}
