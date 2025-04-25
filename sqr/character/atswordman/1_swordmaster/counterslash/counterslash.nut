
function checkExecutableSkill_Counterslash(CQSDEPSTvAWrlKyKL)
{
	if (!CQSDEPSTvAWrlKyKL) return false
local CQfo4Nr4Z96vgyyN = CQSDEPSTvAWrlKyKL.sq_IsUseSkill(144)
if (CQfo4Nr4Z96vgyyN)
	{
		CQSDEPSTvAWrlKyKL.sq_IntVectClear()
CQSDEPSTvAWrlKyKL.sq_IntVectPush(0)
CQSDEPSTvAWrlKyKL.sq_AddSetStatePacket(144, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Counterslash(CQuqEhTEjrEhz6tX1C)
{
	if (!CQuqEhTEjrEhz6tX1C) return false
local CQMljq2mSOh6hot2TcM7 = "character/atswordman/1_swordmaster/counterslash/ap_counterslash.nut"
if(CNSquirrelAppendage.sq_IsAppendAppendage(CQuqEhTEjrEhz6tX1C, CQMljq2mSOh6hot2TcM7))
		return true
return false
}


function onSetState_Counterslash(CQn8GIDh66DV9zWBc, CQGBnVYGmwcFjHr5nxq, CQhFMf7iBKZadYr1, CQppuUKbz4Qr54e8O8)
{
	if(!CQn8GIDh66DV9zWBc) return
local CQ3QMaoNEm2vfuw4DrpP = CQn8GIDh66DV9zWBc.sq_GetVectorData(CQhFMf7iBKZadYr1, 0)
CQn8GIDh66DV9zWBc.setSkillSubState(CQ3QMaoNEm2vfuw4DrpP)
switch(CQ3QMaoNEm2vfuw4DrpP)
	{
	case 0:
		CQn8GIDh66DV9zWBc.sq_StopMove()
BodyMagicSword(CQn8GIDh66DV9zWBc, "CounterSlash")
if(MagicSword_IsAppebd(CQn8GIDh66DV9zWBc))
			CQn8GIDh66DV9zWBc.sq_SetCurrentAnimation(264)
else
			CQn8GIDh66DV9zWBc.sq_SetCurrentAnimation(72)
CQn8GIDh66DV9zWBc.sq_SetCurrentAttackInfo(0)
local CQqzyZbSfHuj67wfK = CQn8GIDh66DV9zWBc.sq_GetBonusRateWithPassive(144, -1, 0,getATSwordmanBonus(CQn8GIDh66DV9zWBc,1.0,144))
CQn8GIDh66DV9zWBc.sq_SetCurrentAttackBonusRate(CQqzyZbSfHuj67wfK)
break
}
	CQn8GIDh66DV9zWBc.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Counterslash(CQK9d99vrg961GE7Cx6)
{
	if(!CQK9d99vrg961GE7Cx6) return
local CQTdAvOdKnIV7cp3 = CQK9d99vrg961GE7Cx6.getSkillSubState()
switch(CQTdAvOdKnIV7cp3)
	{
	case 0:
		CQK9d99vrg961GE7Cx6.sq_IntVectClear()
CQK9d99vrg961GE7Cx6.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}
function onAttack_Counterslash(CQsMcoQCbDTG2Kpdj8, CQ6HCKhWPfHJVvo5zWlW, CQese6NxktbI35iRv, CQXr6cP6uAVyBii8orA)
{
	if(!CQsMcoQCbDTG2Kpdj8) return false
local CQxYeuwIC9rUL8uj = CQsMcoQCbDTG2Kpdj8.getSkillSubState()
MagicswordupOccur(CQsMcoQCbDTG2Kpdj8, CQ6HCKhWPfHJVvo5zWlW, CQese6NxktbI35iRv, CQXr6cP6uAVyBii8orA)
MagicSword_BasiconAttack(CQsMcoQCbDTG2Kpdj8, CQ6HCKhWPfHJVvo5zWlW, CQese6NxktbI35iRv, CQXr6cP6uAVyBii8orA)
}
function onProc_Counterslash(CQPR6G4wqr5TFHyfSx)
{
	if(!CQPR6G4wqr5TFHyfSx) return
local CQ92s4GkFOp9ZYylHOCd = CQPR6G4wqr5TFHyfSx.getSkillSubState()
}

