
function checkExecutableSkill_Clawblade(CQO32P7EZkHGCgH8eW)
{
	if (!CQO32P7EZkHGCgH8eW) return false
local CQVSyxKMSdQGFOPy7 = CQO32P7EZkHGCgH8eW.sq_IsUseSkill(152)
if (CQVSyxKMSdQGFOPy7)
	{
		CQO32P7EZkHGCgH8eW.getVar("Clawblade").clear_obj_vector()
CQO32P7EZkHGCgH8eW.sq_IntVectClear()
CQO32P7EZkHGCgH8eW.sq_IntVectPush(0)
CQO32P7EZkHGCgH8eW.sq_AddSetStatePacket(152, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Clawblade(CQgO8ObvRgTg6wyR)
{
	if (!CQgO8ObvRgTg6wyR) return false
return true
}


function onSetState_Clawblade(CQwFNqDv4G3QDKDJ, CQ3fO83drr334BCc, CQT1zvFV3ZoXNa6qeZZy, CQsJZotPbTfSZR6by)
{
	if(!CQwFNqDv4G3QDKDJ) return
local CQ6sQJxxPaPoMO5eEIc = CQwFNqDv4G3QDKDJ.sq_GetVectorData(CQT1zvFV3ZoXNa6qeZZy, 0)
CQwFNqDv4G3QDKDJ.setSkillSubState(CQ6sQJxxPaPoMO5eEIc)
switch(CQ6sQJxxPaPoMO5eEIc)
	{
	case 0:
		CQwFNqDv4G3QDKDJ.sq_StopMove()
CQwFNqDv4G3QDKDJ.sq_PlaySound("SW_CLAWBLADE")
BodyCalldaimus(CQwFNqDv4G3QDKDJ, "clawblade1")
CQwFNqDv4G3QDKDJ.sq_SetCurrentAnimation(403)
CQwFNqDv4G3QDKDJ.sq_SetCurrentAttackInfo(90)
local CQerL657kKlwXj4m = CQwFNqDv4G3QDKDJ.sq_GetBonusRateWithPassive(152, -1, 0,getATSwordmanBonus(CQwFNqDv4G3QDKDJ,1.0,152))
CQwFNqDv4G3QDKDJ.sq_SetCurrentAttackBonusRate(CQerL657kKlwXj4m)
break
case 1:
		CQwFNqDv4G3QDKDJ.sq_SetCurrentAnimation(404)
CQwFNqDv4G3QDKDJ.sq_SetCurrentAttackInfo(90)
local CQerL657kKlwXj4m = CQwFNqDv4G3QDKDJ.sq_GetBonusRateWithPassive(152, -1, 1, getATSwordmanBonus(CQwFNqDv4G3QDKDJ,1.0,152))
CQwFNqDv4G3QDKDJ.sq_SetCurrentAttackBonusRate(CQerL657kKlwXj4m)
break
case 2:
		CQwFNqDv4G3QDKDJ.sq_SetCurrentAnimation(405)
CQwFNqDv4G3QDKDJ.sq_SetCurrentAttackInfo(90)
local CQerL657kKlwXj4m = CQwFNqDv4G3QDKDJ.sq_GetBonusRateWithPassive(152, -1, 0, getATSwordmanBonus(CQwFNqDv4G3QDKDJ,1.0,152))
CQwFNqDv4G3QDKDJ.sq_SetCurrentAttackBonusRate(CQerL657kKlwXj4m)
break
case 3:
		CQwFNqDv4G3QDKDJ.sq_SetCurrentAnimation(406)
CQwFNqDv4G3QDKDJ.sq_SetCurrentAttackInfo(91)
local CQerL657kKlwXj4m = CQwFNqDv4G3QDKDJ.sq_GetBonusRateWithPassive(152, -1, 0, getATSwordmanBonus(CQwFNqDv4G3QDKDJ,1.0,152))
CQwFNqDv4G3QDKDJ.sq_SetCurrentAttackBonusRate(CQerL657kKlwXj4m)
break
}
	CQwFNqDv4G3QDKDJ.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Clawblade(CQ9Kh3XLFgWXDs2rdLM)
{
	if(!CQ9Kh3XLFgWXDs2rdLM) return
local CQtIGlaExu7SLg1q = CQ9Kh3XLFgWXDs2rdLM.getSkillSubState()
switch(CQtIGlaExu7SLg1q)
	{
	case 0:
		CQ9Kh3XLFgWXDs2rdLM.sq_IntVectClear()
CQ9Kh3XLFgWXDs2rdLM.sq_IntVectPush(1)
CQ9Kh3XLFgWXDs2rdLM.sq_AddSetStatePacket(152, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQ9Kh3XLFgWXDs2rdLM.sq_IntVectClear()
CQ9Kh3XLFgWXDs2rdLM.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQ9Kh3XLFgWXDs2rdLM.sq_IntVectClear()
CQ9Kh3XLFgWXDs2rdLM.sq_IntVectPush(3)
CQ9Kh3XLFgWXDs2rdLM.sq_AddSetStatePacket(152, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQ9Kh3XLFgWXDs2rdLM.sq_IntVectClear()
CQ9Kh3XLFgWXDs2rdLM.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Clawblade(CQBWnWUmaBaoFPMyws, CQvtMSM31YhwOmMet6fM, CQDbb1AHWtDcGBNoo, CQRjNkriLCcRPw9tKZp)
{
	if(!CQBWnWUmaBaoFPMyws)	return false
local CQu5ywTghxX4Ef9a = CQBWnWUmaBaoFPMyws.getSkillSubState()
Calldaimus_onAttack(CQBWnWUmaBaoFPMyws,CQvtMSM31YhwOmMet6fM, CQDbb1AHWtDcGBNoo, CQRjNkriLCcRPw9tKZp)
switch(CQu5ywTghxX4Ef9a)
	{
	case 0:
		if(!CQBWnWUmaBaoFPMyws.getVar("Clawblade").is_obj_vector(CQvtMSM31YhwOmMet6fM) && sq_GetSkillLevel(CQBWnWUmaBaoFPMyws, 163) > 0)
		{
			CQBWnWUmaBaoFPMyws.getVar("Clawblade").push_obj_vector(CQvtMSM31YhwOmMet6fM)
local CQMXdP2MAIQXAI8i1 = sq_GetLevelData(CQBWnWUmaBaoFPMyws,163, 5, sq_GetSkillLevel(CQBWnWUmaBaoFPMyws, 163))/100.0
CQBWnWUmaBaoFPMyws.sq_StartWrite()
CQBWnWUmaBaoFPMyws.sq_WriteDword(152)
CQBWnWUmaBaoFPMyws.sq_WriteDword(1)
CQBWnWUmaBaoFPMyws.sq_WriteDword(CQBWnWUmaBaoFPMyws.sq_GetBonusRateWithPassive(152, -1, 0, getATSwordmanBonus(CQBWnWUmaBaoFPMyws,CQMXdP2MAIQXAI8i1,152)))
CQBWnWUmaBaoFPMyws.sq_WriteDword(sq_GetObjectId(CQvtMSM31YhwOmMet6fM))
sq_SendCreatePassiveObjectPacketPos( CQBWnWUmaBaoFPMyws, 24383, 0, CQvtMSM31YhwOmMet6fM.getXPos(), CQvtMSM31YhwOmMet6fM.getYPos(), CQvtMSM31YhwOmMet6fM.getZPos() + CQBWnWUmaBaoFPMyws.getObjectHeight()/2)
}
		if(sq_IsHoldable(CQBWnWUmaBaoFPMyws,CQvtMSM31YhwOmMet6fM) && sq_IsGrabable(CQBWnWUmaBaoFPMyws,CQvtMSM31YhwOmMet6fM) && !sq_IsFixture(CQvtMSM31YhwOmMet6fM))
		{
			local CQnAABDS6Z2Vah8O5TH = "character/atswordman/2_demonslayer/clawblade/ap_clawblade.nut"
local CQGuxgYvUTuGuA7E = CNSquirrelAppendage.sq_AppendAppendage(CQvtMSM31YhwOmMet6fM, CQBWnWUmaBaoFPMyws, -1, false, CQnAABDS6Z2Vah8O5TH, true)
if(CQGuxgYvUTuGuA7E)
			{
				sq_HoldAndDelayDie(CQvtMSM31YhwOmMet6fM, CQBWnWUmaBaoFPMyws, true, true, false, 100, 100, ENUM_DIRECTION_NEUTRAL, CQGuxgYvUTuGuA7E)
sq_MoveToAppendageForce(CQvtMSM31YhwOmMet6fM, CQBWnWUmaBaoFPMyws, CQBWnWUmaBaoFPMyws, 250, 0, 0, 300, true, CQGuxgYvUTuGuA7E,true)
local CQhUXq7dVadaeq6ub5 = CQGuxgYvUTuGuA7E.getAppendageInfo()
CQhUXq7dVadaeq6ub5.setValidTime(300)
}
		}
		break
case 1:
		if(sq_IsHoldable(CQBWnWUmaBaoFPMyws,CQvtMSM31YhwOmMet6fM) && sq_IsGrabable(CQBWnWUmaBaoFPMyws,CQvtMSM31YhwOmMet6fM) && !sq_IsFixture(CQvtMSM31YhwOmMet6fM))
		{
			local CQnAABDS6Z2Vah8O5TH = "character/atswordman/2_demonslayer/clawblade/ap_clawblade.nut"
local CQGuxgYvUTuGuA7E = CNSquirrelAppendage.sq_AppendAppendage(CQvtMSM31YhwOmMet6fM, CQBWnWUmaBaoFPMyws, -1, false, CQnAABDS6Z2Vah8O5TH, true)
if(CQGuxgYvUTuGuA7E)
			{
				sq_HoldAndDelayDie(CQvtMSM31YhwOmMet6fM, CQBWnWUmaBaoFPMyws, true, true, false, 100, 100, ENUM_DIRECTION_NEUTRAL, CQGuxgYvUTuGuA7E)
sq_MoveToAppendageForce(CQvtMSM31YhwOmMet6fM, CQBWnWUmaBaoFPMyws, CQBWnWUmaBaoFPMyws, 250, 0, 120, 300, true, CQGuxgYvUTuGuA7E,true)
local CQhUXq7dVadaeq6ub5 = CQGuxgYvUTuGuA7E.getAppendageInfo()
CQhUXq7dVadaeq6ub5.setValidTime(300)
}
		}
		break
}

}

function onEnterFrame_Clawblade(CQsS5n8Xe1b6WP4sJs, CQ6iaEOI2gBBqj3FX6CE)
{
	if(!CQsS5n8Xe1b6WP4sJs) return
local CQemkLQwvurGvV2PN = CQsS5n8Xe1b6WP4sJs.getSkillSubState()
switch(CQemkLQwvurGvV2PN)
	{
	case 1:
		if(CQ6iaEOI2gBBqj3FX6CE == 3 || CQ6iaEOI2gBBqj3FX6CE == 5 || CQ6iaEOI2gBBqj3FX6CE == 7)
			CQsS5n8Xe1b6WP4sJs.resetHitObjectList()
break
case 2:

		break
}
}

function onEndState_Clawblade(CQXTJ8h6OB5aQQ2HhZb, CQx7mvNKjYpWbMRS)
{
	if(!CQXTJ8h6OB5aQQ2HhZb) return
local CQPB1iPEutgbzIfLvL = CQXTJ8h6OB5aQQ2HhZb.getSkillSubState()
switch(CQPB1iPEutgbzIfLvL)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onProc_Clawblade(CQ9NUJwk7CSjnhfGmTyT)
{
	if(!CQ9NUJwk7CSjnhfGmTyT) return
local CQtG1642mzx7xAdCs = CQ9NUJwk7CSjnhfGmTyT.getSkillSubState()
}

function onKeyFrameFlag_Clawblade(CQBEixGGDILBjq9KA5J, CQvwfyyUzZqGfB9F)
{
	if (!CQBEixGGDILBjq9KA5J) return false
switch(CQvwfyyUzZqGfB9F)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Clawblade(CQDxSGxRET1KTw8XLL)
{
	if(!CQDxSGxRET1KTw8XLL) return
local CQRdYh6NMEyOR17J8l35 = CQDxSGxRET1KTw8XLL.getSkillSubState()
switch(CQRdYh6NMEyOR17J8l35)
	{
	case 0:

		break
}
}