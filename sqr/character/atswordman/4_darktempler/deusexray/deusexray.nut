
function checkExecutableSkill_DeusExray(CQANfetGhgHp7B373Zf)
{
	if (!CQANfetGhgHp7B373Zf) return false
local CQzYPf1isZH2bjvoE = CQANfetGhgHp7B373Zf.sq_IsUseSkill(199)
if (CQzYPf1isZH2bjvoE)
	{
		CQANfetGhgHp7B373Zf.sq_IsEnterSkillLastKeyUnits(199)
CQANfetGhgHp7B373Zf.sq_IntVectClear()
CQANfetGhgHp7B373Zf.sq_IntVectPush(0)
CQANfetGhgHp7B373Zf.sq_AddSetStatePacket(199, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}

	return false
}

function checkCommandEnable_DeusExray(CQORxUubglnLzSYPOgA)
{
	if (!CQORxUubglnLzSYPOgA) return false
return true
}

function onProcCon_DeusExray(CQ82XacftaBXnlYa)
{
	if(!CQ82XacftaBXnlYa) return
local CQWKwZ6DZKrDxNcSJg = CQ82XacftaBXnlYa.getSkillSubState()
if(CQWKwZ6DZKrDxNcSJg == 1)
	{
		local CQVI59JtUj5pjexI6iCT = CQ82XacftaBXnlYa.sq_GetLevelData(199, 1, sq_GetSkillLevel(CQ82XacftaBXnlYa, 199))
local CQYWabidSppwc2xpf = CQ82XacftaBXnlYa.sq_GetLevelData(199, 2, sq_GetSkillLevel(CQ82XacftaBXnlYa, 199))
local CQSvkoYVl1gYktzAjnb = sq_GetCurrentAnimation(CQ82XacftaBXnlYa)
local CQfgaKVOpgSgfkls = CQ82XacftaBXnlYa.sq_GetStateTimer()
local CQu3j6IxBux4TDlFtg = CQ82XacftaBXnlYa.getVar("DeusExrayInfo").get_vector(0)
local CQMLHcq7wNLCRzTPoouL = sq_GetDelaySum(CQSvkoYVl1gYktzAjnb)
if(IsInterval_DeusExray(CQ82XacftaBXnlYa, sq_GetIntData(CQ82XacftaBXnlYa, 199, 0)))
		{
			local CQnOUugLHYqD71kJs = CQ82XacftaBXnlYa.getVar("DeusExrayInfo").get_vector(1)
local CQGt1GBwft1p2rkDSU3 = CQ82XacftaBXnlYa.sq_GetSkillLoad(65)
if(!CQGt1GBwft1p2rkDSU3) return
local CQhnu4OTICye83UZ = CQGt1GBwft1p2rkDSU3.getRemainLoadNumber()
if(CQhnu4OTICye83UZ<1)
				return
if(CQnOUugLHYqD71kJs<sq_GetIntData(CQ82XacftaBXnlYa, 199, 1))
			{
				CQ82XacftaBXnlYa.getVar("DeusExrayInfo").set_vector(1,CQnOUugLHYqD71kJs+1)
AtSwordmanDecreaseEvolve(CQ82XacftaBXnlYa)
}
		}
		
		if(!CQ82XacftaBXnlYa.isDownSkillLastKey())	
		{
			CQ82XacftaBXnlYa.sq_IntVectClear()
CQ82XacftaBXnlYa.sq_IntVectPush(2)
CQ82XacftaBXnlYa.sq_AddSetStatePacket(199, STATE_PRIORITY_IGNORE_FORCE, true)
}
		else
		{
			if(CQfgaKVOpgSgfkls > CQYWabidSppwc2xpf)
			{
				CQ82XacftaBXnlYa.sq_IntVectClear()
CQ82XacftaBXnlYa.sq_IntVectPush(2)
CQ82XacftaBXnlYa.sq_AddSetStatePacket(199, STATE_PRIORITY_IGNORE_FORCE, true)
}
		}

	}
}

function onSetState_DeusExray(CQpjfzl43x8Y3AUH5n, CQ35SW3EbIsgBTnV9Fhs, CQqXfDFmXZk54FbLg, CQsAS2thkTGCNebMqis)
{
	if(!CQpjfzl43x8Y3AUH5n) return
local CQ6SckxGDavDZ2vCW1 = CQpjfzl43x8Y3AUH5n.sq_GetVectorData(CQqXfDFmXZk54FbLg, 0)
CQpjfzl43x8Y3AUH5n.setSkillSubState(CQ6SckxGDavDZ2vCW1)
switch(CQ6SckxGDavDZ2vCW1)
	{
	case 0:
		CQpjfzl43x8Y3AUH5n.getVar("DeusExrayInfo").clear_vector()
CQpjfzl43x8Y3AUH5n.getVar("DeusExrayInfo").push_vector(0)
CQpjfzl43x8Y3AUH5n.getVar("DeusExrayInfo").push_vector(0)
if(CQpjfzl43x8Y3AUH5n.isMyControlObject())
			sq_SetMyShake(CQpjfzl43x8Y3AUH5n,3,200)
CQpjfzl43x8Y3AUH5n.sq_StopMove()
CQpjfzl43x8Y3AUH5n.sq_SetCurrentAnimation(458)
CQpjfzl43x8Y3AUH5n.sq_PlaySound("SW_EXRAY_01")
CQpjfzl43x8Y3AUH5n.sq_StartWrite()
CQpjfzl43x8Y3AUH5n.sq_WriteDword(199)
CQpjfzl43x8Y3AUH5n.sq_WriteDword(0)
CQpjfzl43x8Y3AUH5n.sq_WriteDword(CQpjfzl43x8Y3AUH5n.sq_GetBonusRateWithPassive(199, -1, 0, getATSwordmanBonus(CQpjfzl43x8Y3AUH5n,1.0,199)))
CQpjfzl43x8Y3AUH5n.sq_WriteDword(CQpjfzl43x8Y3AUH5n.sq_GetLevelData(199, 1, sq_GetSkillLevel(CQpjfzl43x8Y3AUH5n, 199)))
CQpjfzl43x8Y3AUH5n.sq_WriteDword(sq_GetIntData(CQpjfzl43x8Y3AUH5n, 199, 1))
CQpjfzl43x8Y3AUH5n.sq_WriteDword(sq_GetIntData(CQpjfzl43x8Y3AUH5n, 199, 0))
CQpjfzl43x8Y3AUH5n.sq_WriteDword(CQpjfzl43x8Y3AUH5n.sq_GetLevelData(199, 3, sq_GetSkillLevel(CQpjfzl43x8Y3AUH5n, 199))/10)
CQpjfzl43x8Y3AUH5n.sq_WriteDword(CQpjfzl43x8Y3AUH5n.sq_GetLevelData(199, 2, sq_GetSkillLevel(CQpjfzl43x8Y3AUH5n, 199))/10)
CQpjfzl43x8Y3AUH5n.sq_SendCreatePassiveObjectPacket(24381, 0, 220, 0, 80)
break
case 1:
		CQpjfzl43x8Y3AUH5n.sq_SetCurrentAnimation(459)
local CQeiCe5i83CHMtYKinBR = CQpjfzl43x8Y3AUH5n.getCurrentAnimation()
CQeiCe5i83CHMtYKinBR.setLoop(true)
local CQXmrPEgQjesXkYNa = CQpjfzl43x8Y3AUH5n.sq_GetLevelData(199, 1, sq_GetSkillLevel(CQpjfzl43x8Y3AUH5n, 199))
sq_SetFrameDelayTime(CQeiCe5i83CHMtYKinBR, 0, CQXmrPEgQjesXkYNa)
break
case 2:
		if(CQpjfzl43x8Y3AUH5n.isMyControlObject())
			sq_SetMyShake(CQpjfzl43x8Y3AUH5n,8,400)
CQpjfzl43x8Y3AUH5n.sq_SetCurrentAnimation(460)
break
}
	//CQpjfzl43x8Y3AUH5n.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_DeusExray(CQxT7NnNNo4WJScXXgU)
{
	if(!CQxT7NnNNo4WJScXXgU) return
local CQP7IhdSx1onVlx1 = CQxT7NnNNo4WJScXXgU.getSkillSubState()
switch(CQP7IhdSx1onVlx1)
	{
	case 0:
		CQxT7NnNNo4WJScXXgU.sq_IntVectClear()
CQxT7NnNNo4WJScXXgU.sq_IntVectPush(1)
CQxT7NnNNo4WJScXXgU.sq_AddSetStatePacket(199, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQxT7NnNNo4WJScXXgU.sq_IntVectClear()
CQxT7NnNNo4WJScXXgU.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function IsInterval_DeusExray(CQ9VTqXvagfkKGxV31, CQtDsIa9RuA7Drz48iiN)
{
	if (!CQ9VTqXvagfkKGxV31)
		return false
local CQBoTVUCWBzBL3QMv = CQ9VTqXvagfkKGxV31.getVar("TimerDeusExray").get_ct_vector(0)
if (!CQBoTVUCWBzBL3QMv)
	{
		CQ9VTqXvagfkKGxV31.getVar("TimerDeusExray").clear_ct_vector()
CQ9VTqXvagfkKGxV31.getVar("TimerDeusExray").push_ct_vector()
CQBoTVUCWBzBL3QMv = CQ9VTqXvagfkKGxV31.getVar("TimerDeusExray").get_ct_vector(0)
CQBoTVUCWBzBL3QMv.Reset()
CQBoTVUCWBzBL3QMv.Start(10000,0)
return true
}

	local CQvqKfMW4YKHFyQ7mn4 = CQBoTVUCWBzBL3QMv.Get()
if(CQvqKfMW4YKHFyQ7mn4 > CQtDsIa9RuA7Drz48iiN)
	{
		CQBoTVUCWBzBL3QMv.Reset()
CQBoTVUCWBzBL3QMv.Start(10000,0)
return true
}
	return false
}
