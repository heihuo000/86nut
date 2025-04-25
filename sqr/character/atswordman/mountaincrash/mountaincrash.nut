
function checkExecutableSkill_Mountaincrash(CQLyPJolXovUSDTyINTO)
{
	if (!CQLyPJolXovUSDTyINTO) return false
local CQlux6vLmMCTswksV = CQLyPJolXovUSDTyINTO.sq_IsUseSkill(87)
if (CQlux6vLmMCTswksV)
	{
		CheckUseAddloadDrawsword(CQLyPJolXovUSDTyINTO,87, {[0] = true,[108] = true,[14] = true},0)
local CQIUXx8aDve9D1ko2DP = 0
if(sq_GetSkillLevel(CQLyPJolXovUSDTyINTO, 13) > 0 && CQLyPJolXovUSDTyINTO.getWeaponSubType() == 2 && CQLyPJolXovUSDTyINTO.sq_GetState() !=6)
			CQIUXx8aDve9D1ko2DP = 2
CQLyPJolXovUSDTyINTO.sq_StopMove()
CQLyPJolXovUSDTyINTO.sq_IntVectClear()
CQLyPJolXovUSDTyINTO.sq_IntVectPush(CQIUXx8aDve9D1ko2DP)
CQLyPJolXovUSDTyINTO.sq_AddSetStatePacket(87, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Mountaincrash(CQ7kwyLq7y4MIrjP)
{
	if (!CQ7kwyLq7y4MIrjP) return false
if(CQ7kwyLq7y4MIrjP.sq_GetState() ==6)
	{
		if(sq_isPVPMode())
			if(sq_GetZPos(CQ7kwyLq7y4MIrjP) > sq_GetIntData(CQ7kwyLq7y4MIrjP,87, 2))
				return true
else
				return false
return true
}
	else
	{
		if(sq_GetSkillLevel(CQ7kwyLq7y4MIrjP, 13) > 0 && CQ7kwyLq7y4MIrjP.getWeaponSubType() == 2)
			return CheckForceDrawsword(CQ7kwyLq7y4MIrjP,143,{[0] = true,[108] = true,[14] = true})
}
	return false
}

function onSetState_Mountaincrash(CQc65Gp3pBoJohhadu, CQACa3bHNcfOOAhin, CQdS5lBmxOAypTgOQbQ, CQyiaWOgJXzUtNRE)
{
	if(!CQc65Gp3pBoJohhadu) return
local CQNmjSwMRzKQQeRSov = CQc65Gp3pBoJohhadu.sq_GetVectorData(CQdS5lBmxOAypTgOQbQ, 0)
CQc65Gp3pBoJohhadu.setSkillSubState(CQNmjSwMRzKQQeRSov)
CQc65Gp3pBoJohhadu.sq_PlaySound("SW_NEAR_BLOW")
switch(CQNmjSwMRzKQQeRSov)
	{
	case 0:
		CQc65Gp3pBoJohhadu.sq_ZStop()
CQc65Gp3pBoJohhadu.getVar("Mountaincrash").clear_vector()
CQc65Gp3pBoJohhadu.getVar("Mountaincrash").push_vector(sq_GetZPos(CQc65Gp3pBoJohhadu))
BodyMagicSword(CQc65Gp3pBoJohhadu, "MountainCrash")
if(MagicSword_IsAppebd(CQc65Gp3pBoJohhadu))
			CQc65Gp3pBoJohhadu.sq_SetCurrentAnimation(219)
else
		{
			if(sq_GetSkillLevel(CQc65Gp3pBoJohhadu, 148) > 0)
			{
				BodyCalldaimus(CQc65Gp3pBoJohhadu, "MountainCrash")
CQc65Gp3pBoJohhadu.sq_SetCurrentAnimation(393)
}
			else
				CQc65Gp3pBoJohhadu.sq_SetCurrentAnimation(12)
}
			
		CQc65Gp3pBoJohhadu.sq_SetCurrentAttackInfo(11)
local CQbTH1jiWsUxy2YIKSE1 = CQc65Gp3pBoJohhadu.sq_GetBonusRateWithPassive(87, -1, 0, getATSwordmanBonus(CQc65Gp3pBoJohhadu,1.0,87))
CQc65Gp3pBoJohhadu.sq_SetCurrentAttackBonusRate(CQbTH1jiWsUxy2YIKSE1)
local CQF7UjMb44NfwPcGC = sq_GetCurrentAnimation(CQc65Gp3pBoJohhadu)
local CQgV1wAdnkt3nkcAMy7 = sq_GetIntData(CQc65Gp3pBoJohhadu,87, 1)+1 
local CQoDiPxSCE7ZeSxJ = sq_GetDelaySum(CQF7UjMb44NfwPcGC)/CQgV1wAdnkt3nkcAMy7
CQc65Gp3pBoJohhadu.setTimeEvent(0,CQoDiPxSCE7ZeSxJ,CQgV1wAdnkt3nkcAMy7,true)
break
case 1:
		BodyMagicSword(CQc65Gp3pBoJohhadu, "MountainCrashHold")
if(MagicSword_IsAppebd(CQc65Gp3pBoJohhadu))
			CQc65Gp3pBoJohhadu.sq_SetCurrentAnimation(221)
else
		{
			if(sq_GetSkillLevel(CQc65Gp3pBoJohhadu, 148) > 0)
			{
				BodyCalldaimus(CQc65Gp3pBoJohhadu, "MountainCrashHold")
CQc65Gp3pBoJohhadu.sq_SetCurrentAnimation(395)
}
			else
				CQc65Gp3pBoJohhadu.sq_SetCurrentAnimation(13)
}
			CQc65Gp3pBoJohhadu.sq_SetCurrentAnimation(13)
CQc65Gp3pBoJohhadu.sq_SetCurrentAttackInfo(11)
local CQbTH1jiWsUxy2YIKSE1 = CQc65Gp3pBoJohhadu.sq_GetBonusRateWithPassive(87, -1, 0, getATSwordmanBonus(CQc65Gp3pBoJohhadu,1.0,87))
CQc65Gp3pBoJohhadu.sq_SetCurrentAttackBonusRate(CQbTH1jiWsUxy2YIKSE1)
break
case 2:
		BodyMagicSword(CQc65Gp3pBoJohhadu, "MountainCrashBlunt")
if(MagicSword_IsAppebd(CQc65Gp3pBoJohhadu))
			CQc65Gp3pBoJohhadu.sq_SetCurrentAnimation(220)
else
		{
			if(sq_GetSkillLevel(CQc65Gp3pBoJohhadu, 148) > 0)
			{
				BodyCalldaimus(CQc65Gp3pBoJohhadu, "MountainCrashBlunt")
CQc65Gp3pBoJohhadu.sq_SetCurrentAnimation(394)
}
			else
				CQc65Gp3pBoJohhadu.sq_SetCurrentAnimation(14)
}
			
		CQc65Gp3pBoJohhadu.sq_SetCurrentAttackInfo(11)
local CQbTH1jiWsUxy2YIKSE1 = CQc65Gp3pBoJohhadu.sq_GetBonusRateWithPassive(87, -1, 0, getATSwordmanBonus(CQc65Gp3pBoJohhadu,1.0,87))
CQc65Gp3pBoJohhadu.sq_SetCurrentAttackBonusRate(CQbTH1jiWsUxy2YIKSE1)
break
}
	//CQc65Gp3pBoJohhadu.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onTimeEvent_Mountaincrash(CQt1QeO8YWOcJpdMTeF, CQ7iojEIYeZFfQ8bf4, CQaNYC6wGvXRTATL)
{
	if(!CQt1QeO8YWOcJpdMTeF) return
switch(CQ7iojEIYeZFfQ8bf4)
	{
	case 0:
		CQt1QeO8YWOcJpdMTeF.resetHitObjectList()
break
}
}

function onEndCurrentAni_Mountaincrash(CQ5GCfs6cyQ3vTkMHy)
{
	if(!CQ5GCfs6cyQ3vTkMHy) return
local CQwHrnmLsB3ZlFjCZBVm = CQ5GCfs6cyQ3vTkMHy.getSkillSubState()
switch(CQwHrnmLsB3ZlFjCZBVm)
	{
	case 0:
		CQ5GCfs6cyQ3vTkMHy.sq_IntVectClear()
CQ5GCfs6cyQ3vTkMHy.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQ5GCfs6cyQ3vTkMHy.sq_IntVectClear()
CQ5GCfs6cyQ3vTkMHy.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQ5GCfs6cyQ3vTkMHy.sq_IntVectClear()
CQ5GCfs6cyQ3vTkMHy.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}


function onEnterFrame_Mountaincrash(CQZa7ERa2ciShwjKB, CQzerLVktOdo91hNhSn)
{
	if(!CQZa7ERa2ciShwjKB) return
local CQOc68I3ZXOQjWnX = CQZa7ERa2ciShwjKB.getSkillSubState()
switch(CQOc68I3ZXOQjWnX)
	{
	case 0:
		if(CQzerLVktOdo91hNhSn == 3)
		{
			CQZa7ERa2ciShwjKB.sq_StartWrite()
CQZa7ERa2ciShwjKB.sq_WriteDword(87)
CQZa7ERa2ciShwjKB.sq_WriteDword(0)
CQZa7ERa2ciShwjKB.sq_WriteDword(CQZa7ERa2ciShwjKB.sq_GetBonusRateWithPassive(87, -1, 1, getATSwordmanBonus(CQZa7ERa2ciShwjKB,1.0,87)))
CQZa7ERa2ciShwjKB.sq_WriteDword(sq_GetLevelData(CQZa7ERa2ciShwjKB,87, 2, sq_GetSkillLevel(CQZa7ERa2ciShwjKB, 87)))
CQZa7ERa2ciShwjKB.sq_SendCreatePassiveObjectPacket(24383, 0, 120, 0, 0)
}
		break
case 2:
		if(CQzerLVktOdo91hNhSn == 3)
		{
			local CQ8fsvqEUzTedjb2Yy = sq_GetLevelData(CQZa7ERa2ciShwjKB,13, 0, sq_GetSkillLevel(CQZa7ERa2ciShwjKB, 13))/100.0
CQZa7ERa2ciShwjKB.sq_StartWrite()
CQZa7ERa2ciShwjKB.sq_WriteDword(87)
CQZa7ERa2ciShwjKB.sq_WriteDword(0)
CQZa7ERa2ciShwjKB.sq_WriteDword(CQZa7ERa2ciShwjKB.sq_GetBonusRateWithPassive(87, -1, 1, getATSwordmanBonus(CQZa7ERa2ciShwjKB,1.0 + CQ8fsvqEUzTedjb2Yy,87)))
CQZa7ERa2ciShwjKB.sq_WriteDword(sq_GetLevelData(CQZa7ERa2ciShwjKB,87, 2, sq_GetSkillLevel(CQZa7ERa2ciShwjKB, 87)))
CQZa7ERa2ciShwjKB.sq_SendCreatePassiveObjectPacket(24383, 0, 120, 0, 0)
}
		break
}
}
function onAttack_Mountaincrash(CQY1Ti2USsJv5SvBU, CQSJKJDg74nhflv5avx, CQfsq6WGokB56MY1, CQuW2xzuBErV1rc8Gf)
{
	if(!CQY1Ti2USsJv5SvBU) return false
local CQMvoy4vz26F73c4LSeP = CQY1Ti2USsJv5SvBU.getSkillSubState()
MagicswordupOccur(CQY1Ti2USsJv5SvBU, CQSJKJDg74nhflv5avx, CQfsq6WGokB56MY1, CQuW2xzuBErV1rc8Gf)
}
function onProc_Mountaincrash(CQbg2FGNHnEE2Pxf)
{
	if(!CQbg2FGNHnEE2Pxf) return
local CQF3o3bAfigrVkz7Ry = CQbg2FGNHnEE2Pxf.getSkillSubState()
switch(CQF3o3bAfigrVkz7Ry)
	{
	case 0:
		local CQgLgl9WIMSv3DzgkBI7 = sq_GetCurrentAnimation(CQbg2FGNHnEE2Pxf)
local CQoODrZ93vxhBzl9x = sq_GetDelaySum(CQgLgl9WIMSv3DzgkBI7)/3
local CQ2tvSECbAZ6L1T5uSd = CQbg2FGNHnEE2Pxf.sq_GetStateTimer()
local CQmbB1nIXVqVNWqR = CQbg2FGNHnEE2Pxf.getVar("Mountaincrash").get_vector(0)
local CQJhtjdzkc1FZ4m8Ou = sq_GetAccel(CQbg2FGNHnEE2Pxf.getZPos(), 0, CQ2tvSECbAZ6L1T5uSd, CQoODrZ93vxhBzl9x, false)
sq_setCurrentAxisPos(CQbg2FGNHnEE2Pxf, 2, CQJhtjdzkc1FZ4m8Ou)
break
}
}

