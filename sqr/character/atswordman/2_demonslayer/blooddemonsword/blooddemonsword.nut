
function checkExecutableSkill_Blooddemonsword(CQ6OsI2mz6EIulYW)
{
	if (!CQ6OsI2mz6EIulYW) return false
local CQePTCDhEQgtsGcEQl = CQ6OsI2mz6EIulYW.sq_IsUseSkill(162)
if (CQePTCDhEQgtsGcEQl)
	{
		CQ6OsI2mz6EIulYW.sq_IntVectClear()
CQ6OsI2mz6EIulYW.sq_IntVectPush(0)
CQ6OsI2mz6EIulYW.sq_AddSetStatePacket(162, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Blooddemonsword(CQXyKfWHMsSnirxuOsaZ)
{
	if (!CQXyKfWHMsSnirxuOsaZ) return false
return true
}


function onSetState_Blooddemonsword(CQxnqU7or4xTr3xID, CQPj2EKbKmZ8oyzpJw8, CQB5mZoMbGqNWTlPXZ, CQvX29vDP21JqFladluy)
{
	if(!CQxnqU7or4xTr3xID) return
local CQDAov9t5nyIvzqDj = CQxnqU7or4xTr3xID.sq_GetVectorData(CQB5mZoMbGqNWTlPXZ, 0)
CQxnqU7or4xTr3xID.setSkillSubState(CQDAov9t5nyIvzqDj)
switch(CQDAov9t5nyIvzqDj)
	{
	case 0:
		CQxnqU7or4xTr3xID.sq_StopMove()
BodyCalldaimus(CQxnqU7or4xTr3xID, "blooddemonswordcast_body")
CQxnqU7or4xTr3xID.sq_SetCurrentAnimation(365)
local CQRugoZduD8tQ1mOz63 = CQxnqU7or4xTr3xID.sq_CreateCNRDAnimation("effect/animation/atblooddemonsword/daimus/daimuscast_body.ani")
CQxnqU7or4xTr3xID.sq_AddStateLayerAnimation(-1,CQRugoZduD8tQ1mOz63, 0, 0)
break
case 1:
		BodyCalldaimus(CQxnqU7or4xTr3xID, "blooddemonswordhit_body")
CQxnqU7or4xTr3xID.sq_SetCurrentAnimation(366)
CQxnqU7or4xTr3xID.sq_SetCurrentAttackInfo(110)
local CQiUDJQVCMIUbWmH = CQxnqU7or4xTr3xID.sq_GetBonusRateWithPassive(162, -1, 0, getATSwordmanBonus(CQxnqU7or4xTr3xID,1.0,162))
CQxnqU7or4xTr3xID.sq_SetCurrentAttackBonusRate(CQiUDJQVCMIUbWmH)
local CQ1kv6hOTvkTz4USoZ = [
			"effect/animation/atblooddemonsword/daimus/daimushitback_00.ani",
			"effect/animation/atblooddemonsword/hitback_dust.ani",
			"effect/animation/atblooddemonsword/hitfront_07.ani",
			"effect/animation/atblooddemonsword/daimus/daimushit_body.ani"
		]
foreach(path in CQ1kv6hOTvkTz4USoZ)
			CQxnqU7or4xTr3xID.sq_AddStateLayerAnimation(-1,CQxnqU7or4xTr3xID.sq_CreateCNRDAnimation(path), 0, 0)
break
}
	CQxnqU7or4xTr3xID.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Blooddemonsword(CQU6BcNxFAG8nSnLswjR)
{
	if(!CQU6BcNxFAG8nSnLswjR) return
local CQHCtyP798vfxlnGA = CQU6BcNxFAG8nSnLswjR.getSkillSubState()
switch(CQHCtyP798vfxlnGA)
	{
	case 0:
		CQU6BcNxFAG8nSnLswjR.sq_IntVectClear()
CQU6BcNxFAG8nSnLswjR.sq_IntVectPush(1)
CQU6BcNxFAG8nSnLswjR.sq_AddSetStatePacket(162, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		local CQjSVGwLwcV2jGbAHlI = "character/swordman/effect/animation/atblooddemonsword/daimus/daimusdisappear_body.ani"
DarktemplerCreateAniPooledObj(CQU6BcNxFAG8nSnLswjR, CQjSVGwLwcV2jGbAHlI , true , true, CQU6BcNxFAG8nSnLswjR.getXPos(), CQU6BcNxFAG8nSnLswjR.getYPos(), 0,1.0)
CQU6BcNxFAG8nSnLswjR.sq_IntVectClear()
CQU6BcNxFAG8nSnLswjR.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Blooddemonsword(CQEoW4jw1OeLcrbK, CQ3q8lGTY64Ak2vF9, CQqlOWy4LQoiftYXgwL, CQK8zDcEhsfqT5YJ)
{
	if(!CQEoW4jw1OeLcrbK || CQK8zDcEhsfqT5YJ)	return false
local CQTBL16my4AxRDcBrl = CQEoW4jw1OeLcrbK.getSkillSubState()
Calldaimus_onAttack(CQEoW4jw1OeLcrbK,CQ3q8lGTY64Ak2vF9, CQqlOWy4LQoiftYXgwL, CQK8zDcEhsfqT5YJ)
switch(CQTBL16my4AxRDcBrl)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Blooddemonsword(CQsNQkJ36mzf7zeZiI4Y, CQ6GLwiGUGK2gHe1a)
{
	if(!CQsNQkJ36mzf7zeZiI4Y || !CQsNQkJ36mzf7zeZiI4Y.isMyControlObject()) return
local CQeEQPfiS2UZ8WwVPer = CQsNQkJ36mzf7zeZiI4Y.getSkillSubState()
switch(CQeEQPfiS2UZ8WwVPer)
	{
	case 1:
		if(CQ6GLwiGUGK2gHe1a ==2)
			sq_flashScreen(CQsNQkJ36mzf7zeZiI4Y,0,80,240,204,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_CLOSEBACK)
else if(CQ6GLwiGUGK2gHe1a ==1)
		{
			sq_SetMyShake(CQsNQkJ36mzf7zeZiI4Y,7,200)
sq_flashScreen(CQsNQkJ36mzf7zeZiI4Y,0,120,400,204,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_CLOSEBACK)
}
		break
}
}

function onEndState_Blooddemonsword(CQXw4NCglnMA34Q4, CQxxpgsNpDtiBuQN3w)
{
	if(!CQXw4NCglnMA34Q4) return
local CQtdhqmSdd7Q5Tq67LON = CQXw4NCglnMA34Q4.getSkillSubState()
switch(CQtdhqmSdd7Q5Tq67LON)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onProc_Blooddemonsword(CQBMGIRvevaxMFm2Rlk)
{
	if(!CQBMGIRvevaxMFm2Rlk) return
local CQvHnCVdJAjfXxm9 = CQBMGIRvevaxMFm2Rlk.getSkillSubState()
}

function onKeyFrameFlag_Blooddemonsword(CQDaMfWCv8F212U5e6, CQRrbnlWOxY5Ctn1ywqE)
{
	if (!CQDaMfWCv8F212U5e6) return false
switch(CQRrbnlWOxY5Ctn1ywqE)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Blooddemonsword(CQiYNE3x4OXCJ5n8p)
{
	if(!CQiYNE3x4OXCJ5n8p) return
local CQ1RyZF6u6QDVib4LlX = CQiYNE3x4OXCJ5n8p.getSkillSubState()
switch(CQ1RyZF6u6QDVib4LlX)
	{
	case 0:

		break
}
}