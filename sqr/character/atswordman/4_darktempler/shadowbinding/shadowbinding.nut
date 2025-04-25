
function checkExecutableSkill_ShadowBinding(CQgoOFsDrsHeof6lbu)
{
	if (!CQgoOFsDrsHeof6lbu) return false
local CQiqz3myK4bYPs6hqMsX = onGetMyPassiveObject_ATSwordman(CQgoOFsDrsHeof6lbu,24381,61,11)
if(CQiqz3myK4bYPs6hqMsX)
	{
		CQiqz3myK4bYPs6hqMsX.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
return false
}
	
	local CQ1lZlRfRmBgEg5d = CQgoOFsDrsHeof6lbu.sq_IsUseSkill(61)
if(CQ1lZlRfRmBgEg5d)
	{
		CQgoOFsDrsHeof6lbu.sq_IntVectClear()
CQgoOFsDrsHeof6lbu.sq_IntVectPush(0)
CQgoOFsDrsHeof6lbu.sq_AddSetStatePacket(61, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}

	return false
}

function checkCommandEnable_ShadowBinding(CQU8wrVVOpr5yX4TuF)
{
	if (!CQU8wrVVOpr5yX4TuF) return false

return true
}

function onSetState_ShadowBinding(CQQp4j27CDRpew3k, CQLQEwFZTMSsUR2v3u, CQZi1fa9NT5FDvv9s2p, CQ8rPSUQ1dIFELlyQy)
{
	if(!CQQp4j27CDRpew3k) return
local CQnq7dVskgebVH8Ri = CQQp4j27CDRpew3k.sq_GetVectorData(CQZi1fa9NT5FDvv9s2p, 0)
CQQp4j27CDRpew3k.setSkillSubState(CQnq7dVskgebVH8Ri)
switch(CQnq7dVskgebVH8Ri)
	{
	case 0:
		local CQaY9LxK8HTEp2xJ2 = "character/atswordman/4_darktempler/shadowbinding/ap_shadowbinding.nut"
local CQhXIyiEurl3XzEco = CNSquirrelAppendage.sq_AppendAppendage(CQQp4j27CDRpew3k, CQQp4j27CDRpew3k, -1, false, CQaY9LxK8HTEp2xJ2, true)
CQQp4j27CDRpew3k.sq_StopMove()
CQQp4j27CDRpew3k.sq_PlaySound("SW_SHADOW_BINDING")
CQQp4j27CDRpew3k.sq_SetCurrentAnimation(502)
CQQp4j27CDRpew3k.sq_StartWrite()
CQQp4j27CDRpew3k.sq_WriteDword(61)
CQQp4j27CDRpew3k.sq_WriteDword(0)
CQQp4j27CDRpew3k.sq_WriteDword(CQQp4j27CDRpew3k.sq_GetBonusRateWithPassive(61, -1, 0, getATSwordmanBonus(CQQp4j27CDRpew3k,1.0,61)))
CQQp4j27CDRpew3k.sq_WriteDword(CQQp4j27CDRpew3k.sq_GetLevelData(61, 2, sq_GetSkillLevel(CQQp4j27CDRpew3k, 61)))
CQQp4j27CDRpew3k.sq_WriteDword(CQQp4j27CDRpew3k.sq_GetIntData(61, 3))
CQQp4j27CDRpew3k.sq_WriteDword(CQQp4j27CDRpew3k.sq_GetBonusRateWithPassive(61, -1, 1, getATSwordmanBonus(CQQp4j27CDRpew3k,1.0,61)))
CQQp4j27CDRpew3k.sq_WriteDword(CQQp4j27CDRpew3k.getXPos())
CQQp4j27CDRpew3k.sq_WriteDword(CQQp4j27CDRpew3k.getYPos())
CQQp4j27CDRpew3k.sq_SendCreatePassiveObjectPacket(24381, 0, 0, -2, 0)
break
}
	//CQQp4j27CDRpew3k.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_ShadowBinding(CQpAlFYj7ZJZHHEqsbE)
{
	if(!CQpAlFYj7ZJZHHEqsbE) return
local CQ3uK372qlnAAYpb = CQpAlFYj7ZJZHHEqsbE.getSkillSubState()
switch(CQ3uK372qlnAAYpb)
	{
	case 0:
		CQpAlFYj7ZJZHHEqsbE.sq_IntVectClear()
CQpAlFYj7ZJZHHEqsbE.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onProcCon_ShadowBinding(CQqmqlspFwBoJ4pe1R)
{
	if(!CQqmqlspFwBoJ4pe1R) return
local CQKT3rmUxKWQSuom5uan = CQqmqlspFwBoJ4pe1R.getSkillSubState()
switch(CQKT3rmUxKWQSuom5uan)
	{
	case 0:

		break
}
}


