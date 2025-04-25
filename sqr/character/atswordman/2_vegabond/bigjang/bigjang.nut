
function checkExecutableSkill_Bigjang(CQGNuHj3kl6ztB2rv4)
{
	if (!CQGNuHj3kl6ztB2rv4) return false
local CQhGf5MHiaEdEw1qqQZs = CQGNuHj3kl6ztB2rv4.sq_GetState()
local CQpEAzAi84g1yR1yr = sq_GetIntData(CQGNuHj3kl6ztB2rv4,223, 2)
if(CQhGf5MHiaEdEw1qqQZs == 6 && CQGNuHj3kl6ztB2rv4.getZPos() < CQpEAzAi84g1yR1yr)
	{
		return false
}
	
	local CQ3wctrgQmD4wIMeSTY = CQGNuHj3kl6ztB2rv4.sq_IsUseSkill(223)
if(CQ3wctrgQmD4wIMeSTY)
	{
		local CQqxCDTMGpcXuhNo = sq_GetIntData(CQGNuHj3kl6ztB2rv4,223, 3)
if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && CQGNuHj3kl6ztB2rv4.getDirection() == 0)
			CQGNuHj3kl6ztB2rv4.getVar("Bigjang").setInt(0, CQqxCDTMGpcXuhNo/3*2)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && CQGNuHj3kl6ztB2rv4.getDirection() == 1)
			CQGNuHj3kl6ztB2rv4.getVar("Bigjang").setInt(0, CQqxCDTMGpcXuhNo/3*2)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL))
			CQGNuHj3kl6ztB2rv4.getVar("Bigjang").setInt(0, CQqxCDTMGpcXuhNo)
else
			CQGNuHj3kl6ztB2rv4.getVar("Bigjang").setInt(0, CQqxCDTMGpcXuhNo/2)
CQGNuHj3kl6ztB2rv4.sq_StopMove()
CQGNuHj3kl6ztB2rv4.sq_IntVectClear()
if(CQhGf5MHiaEdEw1qqQZs == 6)
			CQGNuHj3kl6ztB2rv4.sq_IntVectPush(1)
else
			CQGNuHj3kl6ztB2rv4.sq_IntVectPush(0)
CQGNuHj3kl6ztB2rv4.sq_AddSetStatePacket(223, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Bigjang(CQKdc2JDc1ZSeCNWZk)
{
	if (!CQKdc2JDc1ZSeCNWZk) return false
return true
}


function onSetState_Bigjang(CQTMCTivsnqpUq9EBEWz, CQsJeeYdgD2wcN8uh, CQ6s6A7StNucms8rlqM, CQersMKWLY9gYg7p)
{
	if(!CQTMCTivsnqpUq9EBEWz) return
local CQXYThoxnAI4TP6yUk = CQTMCTivsnqpUq9EBEWz.sq_GetVectorData(CQ6s6A7StNucms8rlqM, 0)
CQTMCTivsnqpUq9EBEWz.setSkillSubState(CQXYThoxnAI4TP6yUk)
switch(CQXYThoxnAI4TP6yUk)
	{
	case 0:
		CQTMCTivsnqpUq9EBEWz.sq_SetCurrentAnimation(601)
CQTMCTivsnqpUq9EBEWz.sq_SetCurrentAttackInfo(0)
local CQxRJQRCA8TXbj6saaR7 = CQTMCTivsnqpUq9EBEWz.sq_GetBonusRateWithPassive(223, -1, 0,getATSwordmanBonus(CQTMCTivsnqpUq9EBEWz,1.0,223))
CQTMCTivsnqpUq9EBEWz.sq_SetCurrentAttackBonusRate(CQxRJQRCA8TXbj6saaR7)
break
case 1:
		CQTMCTivsnqpUq9EBEWz.sq_ZStop()
CQTMCTivsnqpUq9EBEWz.sq_SetCurrentAnimation(598)
CQTMCTivsnqpUq9EBEWz.sq_SetCurrentAttackInfo(0)
local CQxRJQRCA8TXbj6saaR7 = CQTMCTivsnqpUq9EBEWz.sq_GetBonusRateWithPassive(223, -1, 0, getATSwordmanBonus(CQTMCTivsnqpUq9EBEWz,1.0,223))
CQTMCTivsnqpUq9EBEWz.sq_SetCurrentAttackBonusRate(CQxRJQRCA8TXbj6saaR7)
	CQTMCTivsnqpUq9EBEWz.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 2:
		CQTMCTivsnqpUq9EBEWz.sq_SetCurrentAnimation(600)
CQTMCTivsnqpUq9EBEWz.sq_SetCurrentAttackInfo(0)
local CQxRJQRCA8TXbj6saaR7 = CQTMCTivsnqpUq9EBEWz.sq_GetBonusRateWithPassive(223, -1, 0, getATSwordmanBonus(CQTMCTivsnqpUq9EBEWz,1.0,223))
CQTMCTivsnqpUq9EBEWz.sq_SetCurrentAttackBonusRate(CQxRJQRCA8TXbj6saaR7)
break
}

}

function onEndCurrentAni_Bigjang(CQtLmRQ6B6VwxM4a)
{
	if(!CQtLmRQ6B6VwxM4a) return
local CQBO2UhLzlecjI3D8q = CQtLmRQ6B6VwxM4a.getSkillSubState()
switch(CQBO2UhLzlecjI3D8q)
	{
	case 0:
		CQtLmRQ6B6VwxM4a.sq_IntVectClear()
CQtLmRQ6B6VwxM4a.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQtLmRQ6B6VwxM4a.sq_IntVectClear()
CQtLmRQ6B6VwxM4a.sq_IntVectPush(2)
CQtLmRQ6B6VwxM4a.sq_AddSetStatePacket(223, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQtLmRQ6B6VwxM4a.sq_IntVectClear()
CQtLmRQ6B6VwxM4a.sq_IntVectPush(1)
CQtLmRQ6B6VwxM4a.sq_IntVectPush(0)
CQtLmRQ6B6VwxM4a.sq_IntVectPush(200)
CQtLmRQ6B6VwxM4a.sq_AddSetStatePacket(6, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Bigjang(CQvtiaNEHa5gdh3ORJEX, CQibRXPkf3p4kA2Hk, CQ1hD9z3ImRXfqRS, CQU4vb4G3pAB6NRLy4)
{
	if(!CQvtiaNEHa5gdh3ORJEX || CQU4vb4G3pAB6NRLy4)	return false
local CQHZBpGUv1xGRwfGEqyn = CQvtiaNEHa5gdh3ORJEX.getSkillSubState()
switch(CQHZBpGUv1xGRwfGEqyn)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Bigjang(CQjAYKygZbLa7RdCO, CQEuV7cFjDoW2OdKDk2)
{
	if(!CQjAYKygZbLa7RdCO) return
local CQ4UWY6uuNfbVj9F = CQjAYKygZbLa7RdCO.getSkillSubState()
local CQQk8uav7YPj3V8Z64 = sq_GetIntData(CQjAYKygZbLa7RdCO,223, 0)
switch(CQ4UWY6uuNfbVj9F)
	{
	case 0:
		if(CQEuV7cFjDoW2OdKDk2 == 1)
		{
			local CQL6OHUBqPz7BQ8HdQgg = "character/swordman/effect/animation/atbigjang/normal_start_ready.ani"
ATswordmanCreateAniPooledObj(CQjAYKygZbLa7RdCO, CQL6OHUBqPz7BQ8HdQgg , true , true,sq_GetDistancePos(CQjAYKygZbLa7RdCO.getXPos(), CQjAYKygZbLa7RdCO.getDirection(), 23), CQjAYKygZbLa7RdCO.getYPos(), 63,CQQk8uav7YPj3V8Z64/100.0)
}
		else if(CQEuV7cFjDoW2OdKDk2 == 8)
		{
			local CQlCl4fAN8KBLM7Vj = CQjAYKygZbLa7RdCO.getVar("Bigjang").getInt(0)
CQjAYKygZbLa7RdCO.sq_StartWrite()
CQjAYKygZbLa7RdCO.sq_WriteDword(223)
CQjAYKygZbLa7RdCO.sq_WriteDword(0)
CQjAYKygZbLa7RdCO.sq_WriteDword(CQjAYKygZbLa7RdCO.sq_GetBonusRateWithPassive(223, -1, 0, getATSwordmanBonus(CQjAYKygZbLa7RdCO,1.0,223)))
CQjAYKygZbLa7RdCO.sq_WriteDword(CQjAYKygZbLa7RdCO.sq_GetBonusRateWithPassive(223, -1, 1, getATSwordmanBonus(CQjAYKygZbLa7RdCO,1.0,223)))
CQjAYKygZbLa7RdCO.sq_WriteDword(sq_GetDistancePos(CQjAYKygZbLa7RdCO.getXPos(), CQjAYKygZbLa7RdCO.getDirection(), CQlCl4fAN8KBLM7Vj))
CQjAYKygZbLa7RdCO.sq_WriteDword(CQQk8uav7YPj3V8Z64)
CQjAYKygZbLa7RdCO.sq_SendCreatePassiveObjectPacket(24381, 0, 0, 0, 65)
}
		break
case 1:
		if(CQEuV7cFjDoW2OdKDk2 == 5)
		{
			local CQL6OHUBqPz7BQ8HdQgg = "character/swordman/effect/animation/atbigjang/jump_start_hand.ani"
ATswordmanCreateAniPooledObj(CQjAYKygZbLa7RdCO, CQL6OHUBqPz7BQ8HdQgg , true , true,sq_GetDistancePos(CQjAYKygZbLa7RdCO.getXPos(), CQjAYKygZbLa7RdCO.getDirection(), 8), CQjAYKygZbLa7RdCO.getYPos(), CQjAYKygZbLa7RdCO.getZPos() + 80,CQQk8uav7YPj3V8Z64/100.0)
}
		break
case 2:
		if(CQEuV7cFjDoW2OdKDk2 == 1)
		{
			local CQlCl4fAN8KBLM7Vj = CQjAYKygZbLa7RdCO.getVar("Bigjang").getInt(0)
CQjAYKygZbLa7RdCO.sq_StartWrite()
CQjAYKygZbLa7RdCO.sq_WriteDword(223)
CQjAYKygZbLa7RdCO.sq_WriteDword(1)
CQjAYKygZbLa7RdCO.sq_WriteDword(CQjAYKygZbLa7RdCO.sq_GetBonusRateWithPassive(223, -1, 0, getATSwordmanBonus(CQjAYKygZbLa7RdCO,1.0,223)))
CQjAYKygZbLa7RdCO.sq_WriteDword(CQjAYKygZbLa7RdCO.sq_GetBonusRateWithPassive(223, -1, 1, getATSwordmanBonus(CQjAYKygZbLa7RdCO,1.0,223)))
CQjAYKygZbLa7RdCO.sq_WriteDword(sq_GetDistancePos(CQjAYKygZbLa7RdCO.getXPos(), CQjAYKygZbLa7RdCO.getDirection(), CQlCl4fAN8KBLM7Vj))
CQjAYKygZbLa7RdCO.sq_WriteDword(CQQk8uav7YPj3V8Z64)
CQjAYKygZbLa7RdCO.sq_SendCreatePassiveObjectPacket(24381, 0, 8, 0, 80)
}
		break
}
}

function onEndState_Bigjang(CQrmLDmXR6tWGP5Cok, CQCTq21IWQ7bXk43sEKH)
{
	if(!CQrmLDmXR6tWGP5Cok) return
local CQcl3TSzLaakHBjNC = CQrmLDmXR6tWGP5Cok.getSkillSubState()
switch(CQcl3TSzLaakHBjNC)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onProc_Bigjang(CQA8peW5b3h7Awh61qx)
{
	if(!CQA8peW5b3h7Awh61qx) return
local CQdBhAlKPmDBJ1h2 = CQA8peW5b3h7Awh61qx.getSkillSubState()
}

function onKeyFrameFlag_Bigjang(CQyFGN3Q5GYHSOg99T, CQNEbhFji1XKsjR5baep)
{
	if (!CQyFGN3Q5GYHSOg99T) return false
switch(CQNEbhFji1XKsjR5baep)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Bigjang(CQbwFQv2VbQODSR1q)
{
	if(!CQbwFQv2VbQODSR1q) return
local CQixbI8pQD2uOqf8rEBL = CQbwFQv2VbQODSR1q.getSkillSubState()
switch(CQixbI8pQD2uOqf8rEBL)
	{
	case 0:

		break
}
}