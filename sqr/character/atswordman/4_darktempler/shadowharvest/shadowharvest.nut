
function checkExecutableSkill_ShadowHarvest(CQsVhfBFRpERDGiwbb8)
{
	if (!CQsVhfBFRpERDGiwbb8) return false
local CQ6DoUOuWHg3Ixui = CQsVhfBFRpERDGiwbb8.sq_IsUseSkill(64)
if (CQ6DoUOuWHg3Ixui)
	{
		CQsVhfBFRpERDGiwbb8.sq_IntVectClear()
CQsVhfBFRpERDGiwbb8.sq_IntVectPush(0)
CQsVhfBFRpERDGiwbb8.sq_AddSetStatePacket(64, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	
	return false
}

function checkCommandEnable_ShadowHarvest(CQeogaQYKgSZoJyWrR)
{
	if (!CQeogaQYKgSZoJyWrR) return false
return true
}

function onSetState_ShadowHarvest(CQXqFZ3BbucSOvyEiizg, CQxlb9FAPNZop5tuJ, CQP8Nbtr5fqEtiWrXuS, CQ9Btoz8it1rE8Op)
{
	if(!CQXqFZ3BbucSOvyEiizg) return
local CQvF9K4XVVuvyHIt3bhI = CQXqFZ3BbucSOvyEiizg.sq_GetVectorData(CQP8Nbtr5fqEtiWrXuS, 0)
CQXqFZ3BbucSOvyEiizg.setSkillSubState(CQvF9K4XVVuvyHIt3bhI)
switch(CQvF9K4XVVuvyHIt3bhI)
	{
	case 0:
		CQXqFZ3BbucSOvyEiizg.sq_StopMove()
CQXqFZ3BbucSOvyEiizg.sq_SetCurrentAnimation(498)
break
case 1:
		
		break
}
}

function onEndCurrentAni_ShadowHarvest(CQDpt7GIlx9hwYsal)
{
	if(!CQDpt7GIlx9hwYsal) return
local CQRQ9cnlGrI6iLsivRs = CQDpt7GIlx9hwYsal.getSkillSubState()
switch(CQRQ9cnlGrI6iLsivRs)
	{
	case 0:
		if(CQDpt7GIlx9hwYsal.getZPos()>3)
		{
			CQDpt7GIlx9hwYsal.sq_IntVectClear()
CQDpt7GIlx9hwYsal.sq_IntVectPush(1)
CQDpt7GIlx9hwYsal.sq_IntVectPush(0)
CQDpt7GIlx9hwYsal.sq_IntVectPush(0)
CQDpt7GIlx9hwYsal.sq_AddSetStatePacket(6, STATE_PRIORITY_IGNORE_FORCE, true)
}
		else
			CQDpt7GIlx9hwYsal.sq_IntVectClear()
CQDpt7GIlx9hwYsal.sq_AddSetStatePacket(0, STATE_PRIORITY_USER, true)
break
}
}

function onKeyFrameFlag_ShadowHarvest(CQizPud5dZkVryaO, CQ1dzGXKslHFm6EEeM)
{
	if (!CQizPud5dZkVryaO) return false
switch(CQ1dzGXKslHFm6EEeM)
	{
	case 0:
		if(CQizPud5dZkVryaO.isMyControlObject())
			sq_SetMyShake(CQizPud5dZkVryaO,5,200)
CQizPud5dZkVryaO.sq_StartWrite()
CQizPud5dZkVryaO.sq_WriteDword(64)
CQizPud5dZkVryaO.sq_WriteDword(0)
CQizPud5dZkVryaO.sq_WriteDword(sq_GetIntData(CQizPud5dZkVryaO, 64, 4))
CQizPud5dZkVryaO.sq_SendCreatePassiveObjectPacket(24381, 0, 100, 0, 0 - CQizPud5dZkVryaO.getZPos())
CQizPud5dZkVryaO.sq_StartWrite()
CQizPud5dZkVryaO.sq_WriteDword(64)
CQizPud5dZkVryaO.sq_WriteDword(1)
CQizPud5dZkVryaO.sq_WriteDword(CQizPud5dZkVryaO.sq_GetBonusRateWithPassive(64, -1, 6, getATSwordmanBonus(CQizPud5dZkVryaO,1.0,64)))
CQizPud5dZkVryaO.sq_WriteDword(sq_GetIntData(CQizPud5dZkVryaO, 64, 3))
CQizPud5dZkVryaO.sq_WriteDword(sq_GetIntData(CQizPud5dZkVryaO, 64, 4))
CQizPud5dZkVryaO.sq_WriteDword(sq_GetIntData(CQizPud5dZkVryaO, 64, 5))
CQizPud5dZkVryaO.sq_WriteDword(CQizPud5dZkVryaO.sq_GetBonusRateWithPassive(64, -1, 0, getATSwordmanBonus(CQizPud5dZkVryaO,1.0,64)))
CQizPud5dZkVryaO.sq_SendCreatePassiveObjectPacket(24381, 0, 100, 0, 0 - CQizPud5dZkVryaO.getZPos())
break
}
	return true
}