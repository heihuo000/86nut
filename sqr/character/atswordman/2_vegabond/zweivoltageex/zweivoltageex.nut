
function checkExecutableSkill_Zweivoltageex(CQN2OdRyiVcWLM4ho1)
{
	if (!CQN2OdRyiVcWLM4ho1) return false
local CQbKznVd8xZbFs3cIUiQ = CQN2OdRyiVcWLM4ho1.sq_IsUseSkill(222)
if (CQbKznVd8xZbFs3cIUiQ)
	{
		CQN2OdRyiVcWLM4ho1.sq_IntVectClear()
CQN2OdRyiVcWLM4ho1.sq_IntVectPush(0)
CQN2OdRyiVcWLM4ho1.sq_AddSetStatePacket(222, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Zweivoltageex(CQFIOEIVQIQkOg2TV)
{
	if (!CQFIOEIVQIQkOg2TV) return false
return true
}

function onSetState_Zweivoltageex(CQgWlLqPGZ27pP2b1hL, CQovL8gccluBPm1x, CQ2gQvF7sa9HEBMU92, CQm34itZ23OsywfYbU56)
{
	if(!CQgWlLqPGZ27pP2b1hL) return
local CQJLEJzetjTWaRdQQ = CQgWlLqPGZ27pP2b1hL.sq_GetVectorData(CQ2gQvF7sa9HEBMU92, 0)
CQgWlLqPGZ27pP2b1hL.setSkillSubState(CQJLEJzetjTWaRdQQ)
switch(CQJLEJzetjTWaRdQQ)
	{
	case 0:
		CQgWlLqPGZ27pP2b1hL.sq_StopMove()
CQgWlLqPGZ27pP2b1hL.sq_SetCurrentAnimation(593)
CQgWlLqPGZ27pP2b1hL.sq_SetCurrentAttackInfo(0)
local CQkPh54TZpHuuO9nWnr = CQgWlLqPGZ27pP2b1hL.sq_GetBonusRateWithPassive(222, -1, 0,getATSwordmanBonus(CQgWlLqPGZ27pP2b1hL,1.0,222))
CQgWlLqPGZ27pP2b1hL.sq_SetCurrentAttackBonusRate(CQkPh54TZpHuuO9nWnr)
CQgWlLqPGZ27pP2b1hL.getVar("Zweivoltageex").clear_obj_vector()
local CQEypxG4U1bmrh9r = sq_FindTarget(CQgWlLqPGZ27pP2b1hL,-500, 500, 100, 180)
if(CQEypxG4U1bmrh9r)
			CQgWlLqPGZ27pP2b1hL.getVar("Zweivoltageex").push_obj_vector(CQEypxG4U1bmrh9r)
CQgWlLqPGZ27pP2b1hL.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 1:
		CQgWlLqPGZ27pP2b1hL.sq_ZStop()
CQgWlLqPGZ27pP2b1hL.sq_SetCurrentAnimation(594)
CQgWlLqPGZ27pP2b1hL.sq_SetCurrentAttackInfo(0)
local CQkPh54TZpHuuO9nWnr = CQgWlLqPGZ27pP2b1hL.sq_GetBonusRateWithPassive(222, -1, 0, getATSwordmanBonus(CQgWlLqPGZ27pP2b1hL,1.0,222))
CQgWlLqPGZ27pP2b1hL.sq_SetCurrentAttackBonusRate(CQkPh54TZpHuuO9nWnr)
local CQQjGF9m6urdWq7yXoO = CQgWlLqPGZ27pP2b1hL.getVar("Zweivoltageex").get_obj_vector_size()
CQgWlLqPGZ27pP2b1hL.getVar("ZweivoltageexPos").clear_vector()
CQgWlLqPGZ27pP2b1hL.getVar("ZweivoltageexPos").push_vector(CQgWlLqPGZ27pP2b1hL.getXPos())
if(CQQjGF9m6urdWq7yXoO < 1)
			break
local CQL5b3ZhoN51qN7e = CQgWlLqPGZ27pP2b1hL.getVar("Zweivoltageex").get_obj_vector(0)
if(CQL5b3ZhoN51qN7e)
		{
			if(CQL5b3ZhoN51qN7e.getXPos() - CQgWlLqPGZ27pP2b1hL.getXPos() >= 0)
			{
				CQgWlLqPGZ27pP2b1hL.getVar("ZweivoltageexPos").set_vector(0,CQL5b3ZhoN51qN7e.getXPos() - 100)
CQgWlLqPGZ27pP2b1hL.setDirection(1)
}
			else
			{
				CQgWlLqPGZ27pP2b1hL.getVar("ZweivoltageexPos").set_vector(0,CQL5b3ZhoN51qN7e.getXPos() + 100)
CQgWlLqPGZ27pP2b1hL.setDirection(0)
}
		}
		else
		{
			
		}
CQgWlLqPGZ27pP2b1hL.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
		break
case 2:
		CQgWlLqPGZ27pP2b1hL.sq_SetCurrentAnimation(595)
CQgWlLqPGZ27pP2b1hL.sq_SetCurrentAttackInfo(0)
local CQkPh54TZpHuuO9nWnr = CQgWlLqPGZ27pP2b1hL.sq_GetBonusRateWithPassive(222, -1, 0, getATSwordmanBonus(CQgWlLqPGZ27pP2b1hL,1.0,222))
CQgWlLqPGZ27pP2b1hL.sq_SetCurrentAttackBonusRate(CQkPh54TZpHuuO9nWnr)
CQgWlLqPGZ27pP2b1hL.sq_StartWrite()
CQgWlLqPGZ27pP2b1hL.sq_WriteDword(222)
CQgWlLqPGZ27pP2b1hL.sq_WriteDword(1)
CQgWlLqPGZ27pP2b1hL.sq_WriteDword(CQgWlLqPGZ27pP2b1hL.sq_GetBonusRateWithPassive(222, -1, 1, getATSwordmanBonus(CQgWlLqPGZ27pP2b1hL,1.0,222)))
CQgWlLqPGZ27pP2b1hL.sq_WriteDword(CQgWlLqPGZ27pP2b1hL.sq_GetBonusRateWithPassive(222, -1, 2, getATSwordmanBonus(CQgWlLqPGZ27pP2b1hL,1.0,222)))
CQgWlLqPGZ27pP2b1hL.sq_SendCreatePassiveObjectPacket(24381, 0, 100, -1, 69)
CQgWlLqPGZ27pP2b1hL.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
}
}


function onEndCurrentAni_Zweivoltageex(CQIAyrniztROQg6t8GZk)
{
	if(!CQIAyrniztROQg6t8GZk) return
local CQCudSfgHVSubP5wvhp = CQIAyrniztROQg6t8GZk.getSkillSubState()
switch(CQCudSfgHVSubP5wvhp)
	{
	case 0:
		CQIAyrniztROQg6t8GZk.sq_IntVectClear()
CQIAyrniztROQg6t8GZk.sq_IntVectPush(1)
CQIAyrniztROQg6t8GZk.sq_AddSetStatePacket(222, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQIAyrniztROQg6t8GZk.sq_IntVectClear()
CQIAyrniztROQg6t8GZk.sq_IntVectPush(2)
CQIAyrniztROQg6t8GZk.sq_AddSetStatePacket(222, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQIAyrniztROQg6t8GZk.sq_IntVectClear()
CQIAyrniztROQg6t8GZk.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onEnterFrame_Zweivoltageex(CQciAMCMfxxmwk4i, CQAm9jeDIILlnB4Weg)
{
	if(!CQciAMCMfxxmwk4i || !CQciAMCMfxxmwk4i.isMyControlObject()) return
local CQdTPwkv3ZmdxQ3EyiGV = CQciAMCMfxxmwk4i.getSkillSubState()
switch(CQdTPwkv3ZmdxQ3EyiGV)
	{
	case 0:
		if(CQAm9jeDIILlnB4Weg == 12)
		{
			sq_SetMyShake(CQciAMCMfxxmwk4i,5,50)
sq_flashScreen(CQciAMCMfxxmwk4i,50,100,50,204,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
CQciAMCMfxxmwk4i.sq_StartWrite()
CQciAMCMfxxmwk4i.sq_WriteDword(222)
CQciAMCMfxxmwk4i.sq_WriteDword(0)
CQciAMCMfxxmwk4i.sq_WriteDword(CQciAMCMfxxmwk4i.sq_GetBonusRateWithPassive(222, -1, 0, getATSwordmanBonus(CQciAMCMfxxmwk4i,1.0,222)))
CQciAMCMfxxmwk4i.sq_SendCreatePassiveObjectPacket(24381, 0, 119, -1, 63)
}
		break
case 2:
		if(CQAm9jeDIILlnB4Weg == 0)
		{
			sq_SetMyShake(CQciAMCMfxxmwk4i,10,100)
sq_flashScreen(CQciAMCMfxxmwk4i,50,100,50,204,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)

}
		break
}
}

function onAttack_Zweivoltageex(CQy7xO1dbl11jMguG, CQNVXBSVXayKcIgIZnT, CQbDegrWk38PkhRp, CQFp5mTxujsufAfA2g)
{
	if(!CQy7xO1dbl11jMguG || CQFp5mTxujsufAfA2g)	return false
local CQgQasJ77pjmTqfsToQt = CQy7xO1dbl11jMguG.getSkillSubState()
switch(CQgQasJ77pjmTqfsToQt)
	{
	case 0:

		break
case 1:

		break
}

}

function onEndState_Zweivoltageex(CQozkCoIq1GwRNdDc, CQ29advwFbvc7e9OnUC)
{
	if(!CQozkCoIq1GwRNdDc) return
local CQmNkn8TxuCRgg9H = CQozkCoIq1GwRNdDc.getSkillSubState()
switch(CQmNkn8TxuCRgg9H)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onKeyFrameFlag_Zweivoltageex(CQJGHpLKaNw48O8SPh, CQkEULpERY4X3j7IFF7Y)
{
	if (!CQJGHpLKaNw48O8SPh) return false
switch(CQkEULpERY4X3j7IFF7Y)
	{
	case 0:

		break
}
	return true
}


function onProc_Zweivoltageex(CQaw18gmWtoS9V7GK)
{
	if(!CQaw18gmWtoS9V7GK) return
local CQ5xiYB3LCfp4Q6ACiy = CQaw18gmWtoS9V7GK.getSkillSubState()
local CQwdfiOGnxPwNMkK = sq_GetCurrentAnimation(CQaw18gmWtoS9V7GK)
local CQZMSJQUAIzc5rkFkn = sq_GetDelaySum(CQwdfiOGnxPwNMkK)
local CQz1f5hg6ZKgMhjXxGAN = CQaw18gmWtoS9V7GK.sq_GetStateTimer()
switch(CQ5xiYB3LCfp4Q6ACiy)
	{
	case 1:
		local CQOJSxMNiTU4XAjJb = CQaw18gmWtoS9V7GK.getVar("ZweivoltageexPos").get_vector(0)
local CQVsYyyuVaNXJkhB = sq_GetAccel(CQaw18gmWtoS9V7GK.getXPos(), CQOJSxMNiTU4XAjJb, CQz1f5hg6ZKgMhjXxGAN, 40, false)
local CQYWCFxvQ3ODVBgZI1 = sq_GetAccel(CQaw18gmWtoS9V7GK.getZPos(), 200, CQz1f5hg6ZKgMhjXxGAN, 40, false)
if(CQaw18gmWtoS9V7GK.isMovablePos(CQVsYyyuVaNXJkhB,CQaw18gmWtoS9V7GK.getYPos()))
		{
			sq_setCurrentAxisPos(CQaw18gmWtoS9V7GK, 0, CQVsYyyuVaNXJkhB)
sq_setCurrentAxisPos(CQaw18gmWtoS9V7GK, 2, CQYWCFxvQ3ODVBgZI1)
}
		break
case 2:
		local CQSvr359GjlpKwg1SUwE = CQaw18gmWtoS9V7GK.sq_GetCurrentFrameIndex(CQwdfiOGnxPwNMkK)
if(CQSvr359GjlpKwg1SUwE < 2)
		{
			local CQYWCFxvQ3ODVBgZI1 = sq_GetAccel(CQaw18gmWtoS9V7GK.getZPos(), 0, CQz1f5hg6ZKgMhjXxGAN, 40, false)
sq_setCurrentAxisPos(CQaw18gmWtoS9V7GK, 2, CQYWCFxvQ3ODVBgZI1)
}
		break
}
}

function onProcCon_Zweivoltageex(CQu3IruWs1nrLOf46nV)
{
	if(!CQu3IruWs1nrLOf46nV) return
local CQMLlScx2bBbFjfM = CQu3IruWs1nrLOf46nV.getSkillSubState()
switch(CQMLlScx2bBbFjfM)
	{
	case 0:

		break
}
}