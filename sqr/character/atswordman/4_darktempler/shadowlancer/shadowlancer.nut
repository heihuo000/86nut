
function checkExecutableSkill_ShadowLancer(CQ7pR1sxVTEZonIRMuH)
{
	if (!CQ7pR1sxVTEZonIRMuH) return false
local CQrQDkm7lahAO7sz = CQ7pR1sxVTEZonIRMuH.sq_IsUseSkill(63)
if (CQrQDkm7lahAO7sz)
	{
		CQ7pR1sxVTEZonIRMuH.sq_IntVectClear()
CQ7pR1sxVTEZonIRMuH.sq_IntVectPush(0)
CQ7pR1sxVTEZonIRMuH.sq_AddSetStatePacket(63, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	
	return false
}

function checkCommandEnable_ShadowLancer(CQCzveROpKDippKj8b)
{
	if (!CQCzveROpKDippKj8b) return false
return true
}

function onSetState_ShadowLancer(CQc9VPVedjcQt9JcRF21, CQANWNr6eoZxEJHTm, CQNG8hTLJ1qfyvHb, CQbEOq2avg23wZGxuM)
{	
	if(!CQc9VPVedjcQt9JcRF21) return
local CQFa8IFkOuuZuiFkEnVs = CQc9VPVedjcQt9JcRF21.sq_GetVectorData(CQNG8hTLJ1qfyvHb, 0)
CQc9VPVedjcQt9JcRF21.setSkillSubState(CQFa8IFkOuuZuiFkEnVs)
switch(CQFa8IFkOuuZuiFkEnVs)
	{
	case 0:
		CQc9VPVedjcQt9JcRF21.sq_StopMove()
CQc9VPVedjcQt9JcRF21.sq_SetCurrentAnimation(500)
CQc9VPVedjcQt9JcRF21.sq_PlaySound("SW_SHADOW_LANCER")
break
case 1:
		CQc9VPVedjcQt9JcRF21.sq_SetCurrentAnimation(501)
CQc9VPVedjcQt9JcRF21.sq_StartWrite()
CQc9VPVedjcQt9JcRF21.sq_WriteDword(63)
CQc9VPVedjcQt9JcRF21.sq_WriteDword(0)
CQc9VPVedjcQt9JcRF21.sq_WriteDword(CQc9VPVedjcQt9JcRF21.sq_GetBonusRateWithPassive(63, -1, 0, getATSwordmanBonus(CQc9VPVedjcQt9JcRF21,1.0,63)))
CQc9VPVedjcQt9JcRF21.sq_WriteDword(sq_GetIntData(CQc9VPVedjcQt9JcRF21, 63, 4))
CQc9VPVedjcQt9JcRF21.sq_SendCreatePassiveObjectPacket(24381, 0, 0, 0, 60)
local CQgeICt3hB9Ae8FvZ = sq_GetDistancePos(CQc9VPVedjcQt9JcRF21.getXPos(), CQc9VPVedjcQt9JcRF21.getDirection(), 150)
CQc9VPVedjcQt9JcRF21.getVar().clear_vector()
CQc9VPVedjcQt9JcRF21.getVar().push_vector(CQgeICt3hB9Ae8FvZ)
break
}

}

function onEndCurrentAni_ShadowLancer(CQoclfzHyYIoUEDzBbn)
{
	if(!CQoclfzHyYIoUEDzBbn) return
local CQ2fLULUXtTQrfSU = CQoclfzHyYIoUEDzBbn.getSkillSubState()
switch(CQ2fLULUXtTQrfSU)
	{
	case 0:
		CQoclfzHyYIoUEDzBbn.sq_IntVectClear()
CQoclfzHyYIoUEDzBbn.sq_IntVectPush(1)
CQoclfzHyYIoUEDzBbn.sq_AddSetStatePacket(63, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQoclfzHyYIoUEDzBbn.sq_IntVectClear()
CQoclfzHyYIoUEDzBbn.sq_IntVectPush(1)
CQoclfzHyYIoUEDzBbn.sq_IntVectPush(1)
CQoclfzHyYIoUEDzBbn.sq_IntVectPush(200)
CQoclfzHyYIoUEDzBbn.sq_AddSetStatePacket(6, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onProc_ShadowLancer(CQm1QEpgmCHemKSY7R)
{
	if(!CQm1QEpgmCHemKSY7R) return
local CQJK3ZbMDzbvYbAQYuuz = CQm1QEpgmCHemKSY7R.getSkillSubState()
switch(CQJK3ZbMDzbvYbAQYuuz)
	{
	case 0:
		
		break
case 1:
		local CQkIp99i8rVhqXAnU = CQm1QEpgmCHemKSY7R.getVar().get_vector(0)
local CQaW3vZvEZe5voPrwb3 = sq_GetAccel(CQm1QEpgmCHemKSY7R.getXPos(), CQkIp99i8rVhqXAnU, CQm1QEpgmCHemKSY7R.sq_GetStateTimer(), 300, false)
if(CQm1QEpgmCHemKSY7R.isMovablePos(CQaW3vZvEZe5voPrwb3,CQm1QEpgmCHemKSY7R.getYPos()))
			sq_setCurrentAxisPos(CQm1QEpgmCHemKSY7R, 0, CQaW3vZvEZe5voPrwb3)
break
}
}
