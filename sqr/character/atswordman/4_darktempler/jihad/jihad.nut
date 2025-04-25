
function checkExecutableSkill_Jihad(CQ3oWzWfy9hl7LFKhFY)
{
	if (!CQ3oWzWfy9hl7LFKhFY) return false
local CQqq8tlBXcD92nFF = CQ3oWzWfy9hl7LFKhFY.sq_IsUseSkill(82)
if (CQqq8tlBXcD92nFF)
	{
		AIMPOINT_ATSWORDMAN = 82
CQ3oWzWfy9hl7LFKhFY.sq_IntVectClear()
CQ3oWzWfy9hl7LFKhFY.sq_IntVectPush(0)
CQ3oWzWfy9hl7LFKhFY.sq_AddSetStatePacket(82, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}

	return false
}

function checkCommandEnable_Jihad(CQKlID3AmOc18XDZYo)
{
	if (!CQKlID3AmOc18XDZYo) return false
return true
}

function onSetState_Jihad(CQT872FcD6ZK3oSHURWe, CQsBITt88zqOB9SVs, CQXFle8XEs2u4aALAMM, CQxpLAZeM4umNvPMGn)
{
	if(!CQT872FcD6ZK3oSHURWe) return
local CQPQqNElxm9lZZPCLFqf = CQT872FcD6ZK3oSHURWe.sq_GetVectorData(CQXFle8XEs2u4aALAMM, 0)
CQT872FcD6ZK3oSHURWe.setSkillSubState(CQPQqNElxm9lZZPCLFqf)
switch(CQPQqNElxm9lZZPCLFqf)
	{
	case 0:
		CQT872FcD6ZK3oSHURWe.getVar("JihadPos").clear_vector()
CQT872FcD6ZK3oSHURWe.getVar("JihadPos").push_vector(CQT872FcD6ZK3oSHURWe.getXPos())
CQT872FcD6ZK3oSHURWe.getVar("JihadPos").push_vector(CQT872FcD6ZK3oSHURWe.getYPos())
CQT872FcD6ZK3oSHURWe.getVar("JihadPos").push_vector(0)
CQT872FcD6ZK3oSHURWe.sq_StopMove()
CQT872FcD6ZK3oSHURWe.sq_SetCurrentAnimation(461)
CQT872FcD6ZK3oSHURWe.sq_PlaySound("SW_JIHAD")
local CQ9z3hn5JEIdMUZ38 = sq_GetCastTime(CQT872FcD6ZK3oSHURWe, 75, sq_GetSkillLevel(CQT872FcD6ZK3oSHURWe, 75))
sq_StartDrawCastGauge(CQT872FcD6ZK3oSHURWe, CQ9z3hn5JEIdMUZ38, true)
//CQT872FcD6ZK3oSHURWe.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
case 1:
		CQT872FcD6ZK3oSHURWe.sq_SetCurrentAnimation(462)
sq_SetFrameDelayTime(sq_GetCurrentAnimation(CQT872FcD6ZK3oSHURWe), 0, 900)
local CQt9pQdaR2T1X8LNRiX = 100
CQt9pQdaR2T1X8LNRiX = CQT872FcD6ZK3oSHURWe.sq_GetDistancePos(CQT872FcD6ZK3oSHURWe.getXPos(), CQT872FcD6ZK3oSHURWe.sq_GetDirection(), CQt9pQdaR2T1X8LNRiX)
local CQBNhIXqWnHKHpL6 = 500
local CQvHoVwj4DbPCdK2cn = 250
CQT872FcD6ZK3oSHURWe.sq_AddAimPointMark(CQt9pQdaR2T1X8LNRiX, CQT872FcD6ZK3oSHURWe.getYPos(), CQBNhIXqWnHKHpL6, CQvHoVwj4DbPCdK2cn)
break
case 2:
		CQT872FcD6ZK3oSHURWe.sq_SetCurrentAnimation(463)
local CQDagRjJnMVuJKK9uG7F = CQT872FcD6ZK3oSHURWe.sq_GetAimPosX(CQT872FcD6ZK3oSHURWe.getXPos(), CQT872FcD6ZK3oSHURWe.getYPos(), false)
local CQRsFUMoCvemSbJ5E = CQT872FcD6ZK3oSHURWe.sq_GetAimPosY(CQT872FcD6ZK3oSHURWe.getXPos(), CQT872FcD6ZK3oSHURWe.getYPos(), false)
CQT872FcD6ZK3oSHURWe.sq_RemoveAimPointMark()
CQT872FcD6ZK3oSHURWe.sq_StartWrite()
CQT872FcD6ZK3oSHURWe.sq_WriteDword(82)
CQT872FcD6ZK3oSHURWe.sq_WriteDword(0)
CQT872FcD6ZK3oSHURWe.sq_WriteDword(CQT872FcD6ZK3oSHURWe.sq_GetBonusRateWithPassive(82, -1, 0, getATSwordmanBonus(CQT872FcD6ZK3oSHURWe,1.0,82)))
CQT872FcD6ZK3oSHURWe.sq_WriteDword(CQT872FcD6ZK3oSHURWe.sq_GetBonusRateWithPassive(82, -1, 1, getATSwordmanBonus(CQT872FcD6ZK3oSHURWe,1.0,82)))
CQT872FcD6ZK3oSHURWe.sq_WriteDword(CQT872FcD6ZK3oSHURWe.sq_GetLevelData(82, 2, sq_GetSkillLevel(CQT872FcD6ZK3oSHURWe, 82)))
CQT872FcD6ZK3oSHURWe.sq_WriteDword(CQT872FcD6ZK3oSHURWe.sq_GetLevelData(82, 3, sq_GetSkillLevel(CQT872FcD6ZK3oSHURWe, 82)))
sq_SendCreatePassiveObjectPacketPos(CQT872FcD6ZK3oSHURWe, 24381, 0,  CQDagRjJnMVuJKK9uG7F, CQRsFUMoCvemSbJ5E, 0)
break
case 3:
		CQT872FcD6ZK3oSHURWe.sq_SetCurrentAnimation(464)
break
}

}

function onEndState_Jihad(CQirbaAhTA5zKXH1OFy, CQ1YNXe1o8pcDoH8)
{
	if(!CQirbaAhTA5zKXH1OFy) return
if(CQ1YNXe1o8pcDoH8 != 82)
		CQirbaAhTA5zKXH1OFy.sq_RemoveAimPointMark()
}

function onProc_Jihad(CQURt9TD9cRRI9G43i)
{
	if(!CQURt9TD9cRRI9G43i) return
local CQH29bJbwOA4oaFf7Myi = CQURt9TD9cRRI9G43i.getSkillSubState()
switch(CQH29bJbwOA4oaFf7Myi)
	{
	case 1:
		local CQjKPoifH6xXORF7f = CQURt9TD9cRRI9G43i.getVar("JihadPos").get_vector(0)
local CQkMXxQnrRp2Zt93GJ = CQURt9TD9cRRI9G43i.getVar("JihadPos").get_vector(1)
local CQwXpZhAt6m2D43wU = 4
local CQAaRlA8M9jokHZ7tTZE = CQURt9TD9cRRI9G43i.sq_GetLevelData(82, 2, sq_GetSkillLevel(CQURt9TD9cRRI9G43i, 82))
if(IsInterval_DeusExray(CQURt9TD9cRRI9G43i, 30))
		{
			local CQ2A3298aA1LSg6S = CQURt9TD9cRRI9G43i.getVar("JihadPos").get_vector(2)
local CQu8iInXxpJT3zUk = CQURt9TD9cRRI9G43i.sq_GetSkillLoad(65)
if(!CQu8iInXxpJT3zUk) return
local CQMBRVdIaHn8B1URGR = CQu8iInXxpJT3zUk.getRemainLoadNumber()
if(CQMBRVdIaHn8B1URGR<1)
				return
if(CQ2A3298aA1LSg6S<CQAaRlA8M9jokHZ7tTZE)
			{
				CQURt9TD9cRRI9G43i.getVar("JihadPos").set_vector(2,CQ2A3298aA1LSg6S+1)
AtSwordmanDecreaseEvolve(CQURt9TD9cRRI9G43i)
}
		}
		break
}
}

function onEndCurrentAni_Jihad(CQhFDRXzMgBN4WnzLip2)
{
	if(!CQhFDRXzMgBN4WnzLip2) return
local CQpEYUs5riIJN4bjBMY = CQhFDRXzMgBN4WnzLip2.getSkillSubState()
switch(CQpEYUs5riIJN4bjBMY)
	{
	case 0:
		CQhFDRXzMgBN4WnzLip2.sq_IntVectClear()
CQhFDRXzMgBN4WnzLip2.sq_IntVectPush(1)
CQhFDRXzMgBN4WnzLip2.sq_AddSetStatePacket(82, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQhFDRXzMgBN4WnzLip2.sq_IntVectClear()
CQhFDRXzMgBN4WnzLip2.sq_IntVectPush(2)
CQhFDRXzMgBN4WnzLip2.sq_AddSetStatePacket(82, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQhFDRXzMgBN4WnzLip2.sq_IntVectClear()
CQhFDRXzMgBN4WnzLip2.sq_IntVectPush(3)
CQhFDRXzMgBN4WnzLip2.sq_AddSetStatePacket(82, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQhFDRXzMgBN4WnzLip2.sq_IntVectClear()
CQhFDRXzMgBN4WnzLip2.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}
