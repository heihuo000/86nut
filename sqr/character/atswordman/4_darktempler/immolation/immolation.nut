
function checkExecutableSkill_Immolation(CQOoZbsW6MIqMHocY)
{
	if (!CQOoZbsW6MIqMHocY) return false
local CQ8qwpmxmvkwXciTing = CQOoZbsW6MIqMHocY.sq_IsUseSkill(168)
if (CQ8qwpmxmvkwXciTing)
	{
		CQOoZbsW6MIqMHocY.sq_IsEnterSkillLastKeyUnits(168)
CQOoZbsW6MIqMHocY.sq_IntVectClear()
CQOoZbsW6MIqMHocY.sq_IntVectPush(0)
CQOoZbsW6MIqMHocY.sq_AddSetStatePacket(168, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}

	return false
}

function checkCommandEnable_Immolation(CQWz4K1CDSHc1Kub)
{
	if (!CQWz4K1CDSHc1Kub) return false
return true
}

function onSetState_Immolation(CQV9E7SIzBbRCbSxPb, CQYNjYrwEcV4J6AmFFbN, CQSGEuT6NOeXSoPv3, CQfEhH2Ke74SK9Pz8iJ)
{
	if(!CQV9E7SIzBbRCbSxPb) return
local CQuwG5DEJzppDJOU = CQV9E7SIzBbRCbSxPb.sq_GetVectorData(CQSGEuT6NOeXSoPv3, 0)
CQV9E7SIzBbRCbSxPb.setSkillSubState(CQuwG5DEJzppDJOU)
switch(CQuwG5DEJzppDJOU)
	{
	case 0:
		CQV9E7SIzBbRCbSxPb.getVar("ImmolationInfo").clear_vector()
CQV9E7SIzBbRCbSxPb.getVar("ImmolationInfo").push_vector(0)
CQV9E7SIzBbRCbSxPb.sq_StopMove()
CQV9E7SIzBbRCbSxPb.sq_SetCurrentAnimation(468)
CQV9E7SIzBbRCbSxPb.sq_SetCurrentAttackInfo(232)
local CQMxnzYkvsRwIvOYkn = CQV9E7SIzBbRCbSxPb.getCurrentAnimation()
sq_ClearAttackBox(CQMxnzYkvsRwIvOYkn);	
		CQV9E7SIzBbRCbSxPb.sq_SetCurrentAttackBonusRate(CQV9E7SIzBbRCbSxPb.sq_GetBonusRateWithPassive(168, -1, 0, getATSwordmanBonus(CQV9E7SIzBbRCbSxPb,1.0,168)))
local CQndMt72O4AcFLIQeF2i = sq_GetSkillLevel(CQV9E7SIzBbRCbSxPb, 77)
local CQGfuFLG4qzgOusny = 0.0
if(CQndMt72O4AcFLIQeF2i>0)
			CQGfuFLG4qzgOusny = CQV9E7SIzBbRCbSxPb.sq_GetLevelData(77, 3, CQndMt72O4AcFLIQeF2i)/100.0
local CQh1d2pUuEL4p7srpiw = (sq_GetIntData(CQV9E7SIzBbRCbSxPb, 168, 3)*(1.0+CQGfuFLG4qzgOusny)).tointeger()
CQV9E7SIzBbRCbSxPb.setTimeEvent(10,CQh1d2pUuEL4p7srpiw,999,true)
CQV9E7SIzBbRCbSxPb.sq_StartWrite()
CQV9E7SIzBbRCbSxPb.sq_WriteDword(168)
CQV9E7SIzBbRCbSxPb.sq_WriteDword(0)
CQV9E7SIzBbRCbSxPb.sq_WriteDword(sq_GetIntData(CQV9E7SIzBbRCbSxPb, 168, 1))
CQV9E7SIzBbRCbSxPb.sq_WriteDword(CQV9E7SIzBbRCbSxPb.sq_GetBonusRateWithPassive(168, -1, 0, getATSwordmanBonus(CQV9E7SIzBbRCbSxPb,1.0,168)))
CQV9E7SIzBbRCbSxPb.sq_WriteDword(sq_GetIntData(CQV9E7SIzBbRCbSxPb, 168, 6))
CQV9E7SIzBbRCbSxPb.sq_WriteDword(sq_GetIntData(CQV9E7SIzBbRCbSxPb, 168, 2))
CQV9E7SIzBbRCbSxPb.sq_WriteDword(CQV9E7SIzBbRCbSxPb.sq_GetBonusRateWithPassive(168, -1, 2, getATSwordmanBonus(CQV9E7SIzBbRCbSxPb,1.0,168)))
CQV9E7SIzBbRCbSxPb.sq_WriteDword(CQV9E7SIzBbRCbSxPb.sq_GetBonusRateWithPassive(168, -1, 3, getATSwordmanBonus(CQV9E7SIzBbRCbSxPb,1.0,168)))
CQV9E7SIzBbRCbSxPb.sq_WriteDword(CQh1d2pUuEL4p7srpiw)
CQV9E7SIzBbRCbSxPb.sq_SendCreatePassiveObjectPacket(24381, 0, 0, 0, 0)
break
case 1:
		CQV9E7SIzBbRCbSxPb.sq_SetCurrentAnimation(469)
CQV9E7SIzBbRCbSxPb.sq_SetCurrentAttackInfo(232)
local CQMxnzYkvsRwIvOYkn = CQV9E7SIzBbRCbSxPb.getCurrentAnimation()
sq_ClearAttackBox(CQMxnzYkvsRwIvOYkn);	
		CQV9E7SIzBbRCbSxPb.sq_SetCurrentAttackBonusRate(CQV9E7SIzBbRCbSxPb.sq_GetBonusRateWithPassive(168, -1, 0, getATSwordmanBonus(CQV9E7SIzBbRCbSxPb,1.0,168)))
break
case 2:
		sq_SetMyShake(CQV9E7SIzBbRCbSxPb,3,200)
CQV9E7SIzBbRCbSxPb.stopTimeEvent(10)
CQV9E7SIzBbRCbSxPb.sq_SetCurrentAnimation(470)
break
}
	//CQV9E7SIzBbRCbSxPb.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onProcCon_Immolation(CQ3sde9NTnMDEcEyBn)
{
	if(!CQ3sde9NTnMDEcEyBn) return
local CQqrAAOuFotpyKEe2Msn = CQ3sde9NTnMDEcEyBn.getSkillSubState()
if(CQqrAAOuFotpyKEe2Msn == 1)
	{
		local CQKYcMQv9M7wabpo6 = sq_GetCurrentAnimation(CQ3sde9NTnMDEcEyBn)
local CQTgXhhBavsWu6FWdF9 = CQ3sde9NTnMDEcEyBn.sq_GetStateTimer()
local CQa3eQNAMAjbeoFE = sq_GetSkillLevel(CQ3sde9NTnMDEcEyBn, 168)
local CQZL6OPWcBFji8DuQ = sq_GetIntData(CQ3sde9NTnMDEcEyBn, 168, 6)
local CQzOsVw8KcY7rESr = sq_GetIntData(CQ3sde9NTnMDEcEyBn, 168, 2)
CQ3sde9NTnMDEcEyBn.getVar("ImmolationInfo").set_vector(0,CQTgXhhBavsWu6FWdF9)
if(CQTgXhhBavsWu6FWdF9 > CQZL6OPWcBFji8DuQ)
		{
			if(!CQ3sde9NTnMDEcEyBn.isDownSkillLastKey())
			{
				CQ3sde9NTnMDEcEyBn.sq_IntVectClear()
CQ3sde9NTnMDEcEyBn.sq_IntVectPush(2)
CQ3sde9NTnMDEcEyBn.sq_AddSetStatePacket(168, STATE_PRIORITY_IGNORE_FORCE, true)
}
			else
			{
				if(CQTgXhhBavsWu6FWdF9 > CQzOsVw8KcY7rESr)
				{
					CQ3sde9NTnMDEcEyBn.sq_IntVectClear()
CQ3sde9NTnMDEcEyBn.sq_IntVectPush(2)
CQ3sde9NTnMDEcEyBn.sq_AddSetStatePacket(168, STATE_PRIORITY_IGNORE_FORCE, true)
}
			}
		}
		
	}
}

function onAttack_Immolation(CQOtTR5XgOCBmYSpon, CQ8baUHIt6wGYLAyKFiq, CQWhkauz5z3sqnPsC, CQV4JXc5UsiWv7PoMi4)
{
	if(!CQOtTR5XgOCBmYSpon) return
local CQYZm96KS4fblpOP = CQOtTR5XgOCBmYSpon.sq_GetLevelData(168, 1, sq_GetSkillLevel(CQOtTR5XgOCBmYSpon, 168))
sq_sendSetActiveStatusPacket(CQ8baUHIt6wGYLAyKFiq, CQOtTR5XgOCBmYSpon, ACTIVESTATUS_SLOW, 100.0, CQYZm96KS4fblpOP, false, sq_GetIntData(CQOtTR5XgOCBmYSpon, 168, 1))
local CQSP1bJQlmPkbdOaxu = "character/atswordman/4_darktempler/immolation/ap_immolation.nut"
local CQfyipUjpEl7xJIDbMk5 = CNSquirrelAppendage.sq_AppendAppendage(CQ8baUHIt6wGYLAyKFiq, CQOtTR5XgOCBmYSpon, -1, false, CQSP1bJQlmPkbdOaxu, true)
if(sq_IsHoldable(CQOtTR5XgOCBmYSpon,CQ8baUHIt6wGYLAyKFiq) && !sq_IsFixture(CQ8baUHIt6wGYLAyKFiq))
		if(CQfyipUjpEl7xJIDbMk5)
		{
			sq_MoveToAppendageForce(CQ8baUHIt6wGYLAyKFiq, CQOtTR5XgOCBmYSpon, CQOtTR5XgOCBmYSpon, 0, 0, CQ8baUHIt6wGYLAyKFiq.getZPos(), 3000, true, CQfyipUjpEl7xJIDbMk5,true)
local CQunRKf2d2JBjvsOq = CQfyipUjpEl7xJIDbMk5.getAppendageInfo()
CQunRKf2d2JBjvsOq.setValidTime(600)
}
}

function onTimeEvent_Immolation(CQMUi7CpwnnGcZKHrFI, CQnkRYInHFNskiJS, CQG7Suq1YMWWf8HLHi)
{
	if(!CQMUi7CpwnnGcZKHrFI) return
switch(CQnkRYInHFNskiJS)
	{
	case 10:
		CQMUi7CpwnnGcZKHrFI.resetHitObjectList()
break
}
}

function onEndCurrentAni_Immolation(CQhVYHgFIv6bTEHGXMZL)
{
	if(!CQhVYHgFIv6bTEHGXMZL) return
local CQpDV4Dy3AEmRYGAN = CQhVYHgFIv6bTEHGXMZL.getSkillSubState()
switch(CQpDV4Dy3AEmRYGAN)
	{
	case 0:
		CQhVYHgFIv6bTEHGXMZL.sq_IntVectClear()
CQhVYHgFIv6bTEHGXMZL.sq_IntVectPush(1)
CQhVYHgFIv6bTEHGXMZL.sq_AddSetStatePacket(168, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQhVYHgFIv6bTEHGXMZL.sq_IntVectClear()
CQhVYHgFIv6bTEHGXMZL.sq_IntVectPush(2)
CQhVYHgFIv6bTEHGXMZL.sq_AddSetStatePacket(168, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQhVYHgFIv6bTEHGXMZL.sq_IntVectClear()
CQhVYHgFIv6bTEHGXMZL.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}
