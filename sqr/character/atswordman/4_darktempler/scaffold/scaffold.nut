
function checkExecutableSkill_Scaffold(CQxEixfwqEeNvm2AT)
{
	if (!CQxEixfwqEeNvm2AT) return false
local CQPwRyC5F24HlB1KcDf = CQxEixfwqEeNvm2AT.sq_IsUseSkill(67)
if (CQPwRyC5F24HlB1KcDf)
	{
		CQxEixfwqEeNvm2AT.sq_IntVectClear()
CQxEixfwqEeNvm2AT.sq_IntVectPush(0)
CQxEixfwqEeNvm2AT.sq_AddSetStatePacket(67, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	
	return false
}

function checkCommandEnable_Scaffold(CQ9xiGeK9noIba1F)
{
	if (!CQ9xiGeK9noIba1F) return false
return true
}

function onSetState_Scaffold(CQtcf3kEaoRPxfMPau, CQBfSl2j1MAujINJPMvn, CQv1YrD2WvzmdnNDF, CQDJVSWGKAKzkCBL3FG)
{	
	if(!CQtcf3kEaoRPxfMPau) return
local CQRsW1lngBmdfqVG = CQtcf3kEaoRPxfMPau.sq_GetVectorData(CQv1YrD2WvzmdnNDF, 0)
CQtcf3kEaoRPxfMPau.setSkillSubState(CQRsW1lngBmdfqVG)
switch(CQRsW1lngBmdfqVG)
	{
	case 0:
		CQtcf3kEaoRPxfMPau.sq_StopMove()
CQtcf3kEaoRPxfMPau.sq_SetCurrentAnimation(497)
break
}
	CQtcf3kEaoRPxfMPau.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Scaffold(CQir7jKRPcM16dVCRi)
{
	if(!CQir7jKRPcM16dVCRi) return
local CQ1YIwoN5OtLRsCKkM1g = CQir7jKRPcM16dVCRi.getSkillSubState()
switch(CQ1YIwoN5OtLRsCKkM1g)
	{
	case 0:
		CQir7jKRPcM16dVCRi.sq_StartWrite()
CQir7jKRPcM16dVCRi.sq_WriteDword(67)
CQir7jKRPcM16dVCRi.sq_WriteDword(0)
CQir7jKRPcM16dVCRi.sq_WriteDword(CQir7jKRPcM16dVCRi.sq_GetBonusRateWithPassive(67, -1, 1, getATSwordmanBonus(CQir7jKRPcM16dVCRi,1.0,67)))
CQir7jKRPcM16dVCRi.sq_WriteDword(CQir7jKRPcM16dVCRi.sq_GetBonusRateWithPassive(67, -1, 2, getATSwordmanBonus(CQir7jKRPcM16dVCRi,1.0,67)))
CQir7jKRPcM16dVCRi.sq_WriteDword(CQir7jKRPcM16dVCRi.sq_GetLevelData(67, 0, sq_GetSkillLevel(CQir7jKRPcM16dVCRi, 67)))
CQir7jKRPcM16dVCRi.sq_SendCreatePassiveObjectPacket(24381, 0, 30, 0, 67)
CQir7jKRPcM16dVCRi.sq_IntVectClear()
CQir7jKRPcM16dVCRi.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

