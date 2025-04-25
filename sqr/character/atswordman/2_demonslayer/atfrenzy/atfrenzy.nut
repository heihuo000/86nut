
function checkExecutableSkill_Atfrenzy(CQByjO7hoERAwP1U)
{
	if (!CQByjO7hoERAwP1U) return false
local CQvnHBKMB2AonmMYoZ = CQByjO7hoERAwP1U.sq_IsUseSkill(150)
if (CQvnHBKMB2AonmMYoZ)
	{
		CreateBuffCutin(CQByjO7hoERAwP1U,"etc/ultimateskillani/atsword_demonslayer_neo_buff.ani")
CQByjO7hoERAwP1U.sq_IntVectClear()
CQByjO7hoERAwP1U.sq_IntVectPush(0)
CQByjO7hoERAwP1U.sq_AddSetStatePacket(150, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Atfrenzy(CQDjUgoiwUzQxBfqslMV)
{
	if (!CQDjUgoiwUzQxBfqslMV) return false
return true
}


function onSetState_Atfrenzy(CQR5MmvbHoKejwdbA, CQiXns8ffMmvcR9e16q, CQ1AMCLSIvMhkO9m, CQUuudqt3St5fj8t96)
{
	if(!CQR5MmvbHoKejwdbA) return
local CQHUdngcyB7VTS7wgwpy = CQR5MmvbHoKejwdbA.sq_GetVectorData(CQ1AMCLSIvMhkO9m, 0)
CQR5MmvbHoKejwdbA.setSkillSubState(CQHUdngcyB7VTS7wgwpy)
switch(CQHUdngcyB7VTS7wgwpy)
	{
	case 0:
		CQR5MmvbHoKejwdbA.sq_StopMove()
CQR5MmvbHoKejwdbA.sq_PlaySound("FRENZY_CAST")
local CQjkAENCZcsFRq7iq  = sq_GetCastTime(CQR5MmvbHoKejwdbA, 150, sq_GetSkillLevel(CQR5MmvbHoKejwdbA, 150))
local CQE6cLPOjOjE7N6Wrl6 = sq_GetCurrentAnimation(CQR5MmvbHoKejwdbA)
local CQ4CC8weSCFrge6E = sq_GetDelaySum(CQE6cLPOjOjE7N6Wrl6)
local CQQSrYj67zYv8g5ua6 = CQ4CC8weSCFrge6E.tofloat() / CQjkAENCZcsFRq7iq.tofloat()
sq_StartDrawCastGauge(CQR5MmvbHoKejwdbA, CQjkAENCZcsFRq7iq, true)
CQR5MmvbHoKejwdbA.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, CQQSrYj67zYv8g5ua6, CQQSrYj67zYv8g5ua6)
BodyCalldaimus(CQR5MmvbHoKejwdbA, "frenzycast")
CQR5MmvbHoKejwdbA.sq_SetCurrentAnimation(413)
break
case 1:
		sq_EndDrawCastGauge(CQR5MmvbHoKejwdbA)
BodyCalldaimus(CQR5MmvbHoKejwdbA, "frenzy")
CQR5MmvbHoKejwdbA.sq_SetCurrentAnimation(412)
local CQLoXiGLqsXh3P4IXelY = sq_GetLevelData(CQR5MmvbHoKejwdbA,150, 2, sq_GetSkillLevel(CQR5MmvbHoKejwdbA, 150))
local CQlqeJywN4w69k4pN = "character/atswordman/2_demonslayer/atfrenzy/ap_atfrenzy.nut"
local CQIl65xTxT3V4Bhy3zA = CNSquirrelAppendage.sq_AppendAppendage(CQR5MmvbHoKejwdbA, CQR5MmvbHoKejwdbA, -1, false, CQlqeJywN4w69k4pN, false)
CQIl65xTxT3V4Bhy3zA.sq_SetValidTime(CQLoXiGLqsXh3P4IXelY)
CQIl65xTxT3V4Bhy3zA.setEnableIsBuff(true)
CQIl65xTxT3V4Bhy3zA.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(CQR5MmvbHoKejwdbA), 150, sq_GetSkillLevel(CQR5MmvbHoKejwdbA, 150))
CNSquirrelAppendage.sq_Append(CQIl65xTxT3V4Bhy3zA, CQR5MmvbHoKejwdbA, CQR5MmvbHoKejwdbA, true)
CQIl65xTxT3V4Bhy3zA.setBuffIconImage(146)
//CQR5MmvbHoKejwdbA.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
}
	
}

function onEndCurrentAni_Atfrenzy(CQ78sx53aEiFNwgs)
{
	if(!CQ78sx53aEiFNwgs) return
local CQcBTyHER2da51govl = CQ78sx53aEiFNwgs.getSkillSubState()
switch(CQcBTyHER2da51govl)
	{
	case 0:
		CQ78sx53aEiFNwgs.sq_IntVectClear()
CQ78sx53aEiFNwgs.sq_IntVectPush(1)
CQ78sx53aEiFNwgs.sq_AddSetStatePacket(150, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQ78sx53aEiFNwgs.sq_IntVectClear()
CQ78sx53aEiFNwgs.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Atfrenzy(CQANJFumWUPr1IRPm, CQdGm3fg4olvChfae6a, CQyE2TCGnMJnJAfD, CQNwmrsiPvnTVqdIGZ)
{
	if(!CQANJFumWUPr1IRPm)	return false
local CQbx2SmvkSN8KN9GLlJE = CQANJFumWUPr1IRPm.getSkillSubState()
Calldaimus_onAttack(CQANJFumWUPr1IRPm,CQdGm3fg4olvChfae6a, CQyE2TCGnMJnJAfD, CQNwmrsiPvnTVqdIGZ)
switch(CQbx2SmvkSN8KN9GLlJE)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Atfrenzy(CQFdiMRNiBWNDe9AB, CQgMRjVSVc6JL28K26z)
{
	if(!CQFdiMRNiBWNDe9AB) return
local CQoHDwIWQOEIFP7F = CQFdiMRNiBWNDe9AB.getSkillSubState()
switch(CQoHDwIWQOEIFP7F)
	{
	case 3:

		break
case 4:

		break
}
}

function onEndState_Atfrenzy(CQ2avOT9G7gtOj7XcZ, CQmeVB2CczDUGS6JnzwT)
{
	if(!CQ2avOT9G7gtOj7XcZ) return
local CQJYWgDWsscTPQkBQ = CQ2avOT9G7gtOj7XcZ.getSkillSubState()
switch(CQJYWgDWsscTPQkBQ)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onProc_Atfrenzy(CQkRVmtz24Z8EMkZPlV)
{
	if(!CQkRVmtz24Z8EMkZPlV) return
local CQa2Wsz6tqqMArjH = CQkRVmtz24Z8EMkZPlV.getSkillSubState()
}

function onKeyFrameFlag_Atfrenzy(CQ5K8X4IZE2JahjVK6, CQwIIdpQj2uIuAhLCwB5)
{
	if (!CQ5K8X4IZE2JahjVK6) return false
switch(CQwIIdpQj2uIuAhLCwB5)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Atfrenzy(CQijUpeqNc5U6v59Mhq)
{
	if(!CQijUpeqNc5U6v59Mhq) return
local CQdHPgpJNlmLjh3WOi = CQijUpeqNc5U6v59Mhq.getSkillSubState()
switch(CQdHPgpJNlmLjh3WOi)
	{
	case 0:

		break
}
}