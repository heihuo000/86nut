
function checkExecutableSkill_StarFall(CQOpfv5zJcWID8HHTF6g)
{
	if (!CQOpfv5zJcWID8HHTF6g) return false
local CQ8QSoH5Rt6yIEMVr = CQOpfv5zJcWID8HHTF6g.sq_IsUseSkill(73)
if (CQ8QSoH5Rt6yIEMVr)
	{
		CQOpfv5zJcWID8HHTF6g.sq_IntVectClear()
CQOpfv5zJcWID8HHTF6g.sq_IntVectPush(0)
CQOpfv5zJcWID8HHTF6g.sq_AddSetStatePacket(73, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	
	return false
}

function checkCommandEnable_StarFall(CQWxcJnsOCaUofNLiDt)
{
	if (!CQWxcJnsOCaUofNLiDt) return false
return true
}

function onSetState_StarFall(CQVdC6dQ4zhTOINM, CQYfrcXjbsDxpnBCPu, CQu17yaJXZcftCV3N, CQMJsGUpkTX2wmVN3bQ)
{	
	if(!CQVdC6dQ4zhTOINM) return
local CQns64fnDEQZu9C6 = CQVdC6dQ4zhTOINM.sq_GetVectorData(CQu17yaJXZcftCV3N, 0)
CQVdC6dQ4zhTOINM.setSkillSubState(CQns64fnDEQZu9C6)
switch(CQns64fnDEQZu9C6)
	{
	case 0:
		CQVdC6dQ4zhTOINM.sq_StopMove()
CQVdC6dQ4zhTOINM.sq_SetCurrentAnimation(471)
break
}
	//CQVdC6dQ4zhTOINM.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_StarFall(CQGrslS1822AeaX2fR)
{
	if(!CQGrslS1822AeaX2fR) return
local CQhYTWrFQjuiURXBmuEe = CQGrslS1822AeaX2fR.getSkillSubState()
switch(CQhYTWrFQjuiURXBmuEe)
	{
	case 0:
		CQGrslS1822AeaX2fR.sq_IntVectClear()
CQGrslS1822AeaX2fR.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onKeyFrameFlag_StarFall(CQpRKSTnMo9qrZZ5e, CQ32m12fcMOxmUZ1yb7)
{
	if (!CQpRKSTnMo9qrZZ5e) return false
switch(CQ32m12fcMOxmUZ1yb7)
	{
	case 1:
		local CQqK2mDBsvTfYVL8 = sq_GetIntData(CQpRKSTnMo9qrZZ5e, 73, 0)
ObjFindTarget(CQpRKSTnMo9qrZZ5e,CQqK2mDBsvTfYVL8)
local CQKIoaWyguH2qE34Lv = GetObjFindTargets(CQpRKSTnMo9qrZZ5e,CQpRKSTnMo9qrZZ5e.sq_GetLevelData(73, 0, sq_GetSkillLevel(CQpRKSTnMo9qrZZ5e, 73)))
CQpRKSTnMo9qrZZ5e.sq_StartWrite()
CQpRKSTnMo9qrZZ5e.sq_WriteDword(73)
CQpRKSTnMo9qrZZ5e.sq_WriteDword(0)
CQpRKSTnMo9qrZZ5e.sq_WriteDword(CQqK2mDBsvTfYVL8)
CQpRKSTnMo9qrZZ5e.sq_WriteDword(CQpRKSTnMo9qrZZ5e.sq_GetLevelData(73, 0, sq_GetSkillLevel(CQpRKSTnMo9qrZZ5e, 73))-1)
CQpRKSTnMo9qrZZ5e.sq_WriteDword(CQpRKSTnMo9qrZZ5e.sq_GetBonusRateWithPassive(73, -1, 1, getATSwordmanBonus(CQpRKSTnMo9qrZZ5e,1.0,73)))
CQpRKSTnMo9qrZZ5e.sq_WriteDword(CQpRKSTnMo9qrZZ5e.getXPos())
if(CQKIoaWyguH2qE34Lv)
		{
			CQpRKSTnMo9qrZZ5e.sq_WriteDword(sq_GetObjectId(CQKIoaWyguH2qE34Lv))
sq_SendCreatePassiveObjectPacketPos(CQpRKSTnMo9qrZZ5e, 24381, 0, CQKIoaWyguH2qE34Lv.getXPos(), CQKIoaWyguH2qE34Lv.getYPos(), 0)
}
		else
		{
			CQpRKSTnMo9qrZZ5e.sq_WriteDword(-1)
CQpRKSTnMo9qrZZ5e.sq_SendCreatePassiveObjectPacket(24381, 0, 200, -2, 0)
}
		
		break
}
	return true
}
