function checkExecutableSkill_Darkslash(CQCJ8ksjGlweShk9g)
{
	if (!CQCJ8ksjGlweShk9g) return false
local CQcsOem2ds3vsAjkTNd = CQCJ8ksjGlweShk9g.sq_IsUseSkill(143)
if (CQcsOem2ds3vsAjkTNd)
	{
		CheckUseAddloadDrawsword(CQCJ8ksjGlweShk9g,143,{[0] = true,[108] = true,[14] = true},0)
CQCJ8ksjGlweShk9g.sq_IntVectClear()
CQCJ8ksjGlweShk9g.sq_IntVectPush(0)
CQCJ8ksjGlweShk9g.sq_AddSetStatePacket(143, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Darkslash(CQArzA1Fe4ihiTjR)
{
	if (!CQArzA1Fe4ihiTjR) return false
if(CQArzA1Fe4ihiTjR.getZPos() > 10)
		return false
return CheckForceDrawsword(CQArzA1Fe4ihiTjR,143,{[0] = true,[108] = true,[14] = true})
}


function onSetState_Darkslash(CQdYZNSn2mf5INhznD, CQyRQhrRvpPVoehjafcM, CQF24QTBZ2lNt1gYP, CQgKEI2yjnJHEORl)
{
	if(!CQdYZNSn2mf5INhznD) return
local CQoI4VDYyinsyjRnKb = CQdYZNSn2mf5INhznD.sq_GetVectorData(CQF24QTBZ2lNt1gYP, 0)
CQdYZNSn2mf5INhznD.setSkillSubState(CQoI4VDYyinsyjRnKb)
switch(CQoI4VDYyinsyjRnKb)
	{
	case 0:
		CQdYZNSn2mf5INhznD.sq_StopMove()
BodyMagicSword(CQdYZNSn2mf5INhznD, "DarkSlash1")
if(MagicSword_IsAppebd(CQdYZNSn2mf5INhznD))
			CQdYZNSn2mf5INhznD.sq_SetCurrentAnimation(209)
else
		{
			if(sq_GetSkillLevel(CQdYZNSn2mf5INhznD, 148) > 0)
			{
				BodyCalldaimus(CQdYZNSn2mf5INhznD, "DarkSlash1")
CQdYZNSn2mf5INhznD.sq_SetCurrentAnimation(383)
}
			else
				CQdYZNSn2mf5INhznD.sq_SetCurrentAnimation(7)
}
		CQdYZNSn2mf5INhznD.sq_SetCurrentAttackInfo(6)
local CQ2WERvV6MNtwSfc7Dke = CQdYZNSn2mf5INhznD.sq_GetBonusRateWithPassive(143, -1, 0, getATSwordmanBonus(CQdYZNSn2mf5INhznD,1.0,143))
CQdYZNSn2mf5INhznD.sq_SetCurrentAttackBonusRate(CQ2WERvV6MNtwSfc7Dke)
break
case 1:
		BodyMagicSword(CQdYZNSn2mf5INhznD, "DarkSlash2")
if(MagicSword_IsAppebd(CQdYZNSn2mf5INhznD))
			CQdYZNSn2mf5INhznD.sq_SetCurrentAnimation(210)
else
		{
			if(sq_GetSkillLevel(CQdYZNSn2mf5INhznD, 148) > 0)
			{
				BodyCalldaimus(CQdYZNSn2mf5INhznD, "DarkSlash2")
CQdYZNSn2mf5INhznD.sq_SetCurrentAnimation(384)
}
			else
				CQdYZNSn2mf5INhznD.sq_SetCurrentAnimation(8)
}
			
		CQdYZNSn2mf5INhznD.sq_SetCurrentAttackInfo(7)
local CQ2WERvV6MNtwSfc7Dke = CQdYZNSn2mf5INhznD.sq_GetBonusRateWithPassive(143, -1, 0, getATSwordmanBonus(CQdYZNSn2mf5INhznD,1.0,143))
CQdYZNSn2mf5INhznD.sq_SetCurrentAttackBonusRate(CQ2WERvV6MNtwSfc7Dke)
break
}
	//CQdYZNSn2mf5INhznD.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Darkslash(CQJhGaLrDA6keMcbkSO)
{
	if(!CQJhGaLrDA6keMcbkSO) return
local CQk4nZp7zVE8Urxe = CQJhGaLrDA6keMcbkSO.getSkillSubState()
switch(CQk4nZp7zVE8Urxe)
	{
	case 0:
		CQJhGaLrDA6keMcbkSO.sq_IntVectClear()
CQJhGaLrDA6keMcbkSO.sq_IntVectPush(1)
CQJhGaLrDA6keMcbkSO.sq_AddSetStatePacket(143, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQJhGaLrDA6keMcbkSO.sq_IntVectClear()
CQJhGaLrDA6keMcbkSO.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}
function onAttack_Darkslash(CQaZM9bZEchNrhzmyy, CQ5Pub9sMODHmAzvpNZl, CQwydoZlr6cIYklQI, CQZuyKQ4KlZtqDTnSDY)
{
	if(!CQaZM9bZEchNrhzmyy) return false
local CQzUd7hJbsqnvwTr = CQaZM9bZEchNrhzmyy.getSkillSubState()
MagicswordupOccur(CQaZM9bZEchNrhzmyy, CQ5Pub9sMODHmAzvpNZl, CQwydoZlr6cIYklQI, CQZuyKQ4KlZtqDTnSDY)
}