
function checkExecutableSkill_Excalibur(CQG3SW5UFc31MvaWi)
{
	if (!CQG3SW5UFc31MvaWi) return false
local CQhLYDH18OiK74EQaze = CQG3SW5UFc31MvaWi.sq_IsUseSkill(135)
if (CQhLYDH18OiK74EQaze)
	{
		CQG3SW5UFc31MvaWi.sq_PlaySound("SW_EXCALIBUR")
CheckUseAddloadDrawsword(CQG3SW5UFc31MvaWi,135, {[0] = true,[108] = true,[14] = true},0)
local CQpOV2uFQ7dP2upy = 0
if(sq_GetSkillLevel(CQG3SW5UFc31MvaWi, 13) > 0 && CQG3SW5UFc31MvaWi.getWeaponSubType() == 2)
		{
			CQG3SW5UFc31MvaWi.getVar("Excalibur").setBool(0,true)
CQpOV2uFQ7dP2upy = 2
}
		else
			CQG3SW5UFc31MvaWi.getVar("Excalibur").setBool(0,false)
CQG3SW5UFc31MvaWi.sq_IntVectClear()
CQG3SW5UFc31MvaWi.sq_IntVectPush(CQpOV2uFQ7dP2upy)
CQG3SW5UFc31MvaWi.sq_AddSetStatePacket(135, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Excalibur(CQ3trkcuMwOuV7peN7)
{
	if (!CQ3trkcuMwOuV7peN7) return false
if(CQ3trkcuMwOuV7peN7.getZPos() > 10)
		return false
return CheckForceDrawsword(CQ3trkcuMwOuV7peN7,135, {[0] = true,[108] = true,[14] = true})
}


function onSetState_Excalibur(CQqy7eXfcslm3poo4rs3, CQKnrAaBs4JlBcit8, CQTj7NUAgqncLKiwvx9, CQs5shfYtHBRNbui)
{
	if(!CQqy7eXfcslm3poo4rs3) return
local CQXCTQV852r3Z6yWe8 = CQqy7eXfcslm3poo4rs3.sq_GetVectorData(CQTj7NUAgqncLKiwvx9, 0)
CQqy7eXfcslm3poo4rs3.setSkillSubState(CQXCTQV852r3Z6yWe8)
CQqy7eXfcslm3poo4rs3.sq_SetStaticMoveInfo(0, 150, 200, false, -500, true)
CQqy7eXfcslm3poo4rs3.sq_SetMoveDirection(CQqy7eXfcslm3poo4rs3.getDirection(), ENUM_DIRECTION_NEUTRAL)
switch(CQXCTQV852r3Z6yWe8)
	{
	case 0:
		CQqy7eXfcslm3poo4rs3.sq_StopMove()
BodyMagicSword(CQqy7eXfcslm3poo4rs3, "Excalibur1")
if(MagicSword_IsAppebd(CQqy7eXfcslm3poo4rs3))
			CQqy7eXfcslm3poo4rs3.sq_SetCurrentAnimation(276)
else
			CQqy7eXfcslm3poo4rs3.sq_SetCurrentAnimation(96)
CQqy7eXfcslm3poo4rs3.sq_SetCurrentAttackInfo(66)
local CQzSKIIXUU6XGiyEy = CQqy7eXfcslm3poo4rs3.sq_GetBonusRateWithPassive(135, -1, 0,getATSwordmanBonus(CQqy7eXfcslm3poo4rs3,1.0,135))
CQqy7eXfcslm3poo4rs3.sq_SetCurrentAttackBonusRate(CQzSKIIXUU6XGiyEy)
BodyExcalibur2(CQqy7eXfcslm3poo4rs3,GetMagicSwordAppIndex(CQqy7eXfcslm3poo4rs3), "Excalibur1")
break
case 1:
		BodyMagicSword(CQqy7eXfcslm3poo4rs3, "Excalibur2")
if(MagicSword_IsAppebd(CQqy7eXfcslm3poo4rs3))
			CQqy7eXfcslm3poo4rs3.sq_SetCurrentAnimation(277)
else
			CQqy7eXfcslm3poo4rs3.sq_SetCurrentAnimation(97)
CQqy7eXfcslm3poo4rs3.sq_SetCurrentAttackInfo(67)
local CQzSKIIXUU6XGiyEy = CQqy7eXfcslm3poo4rs3.sq_GetBonusRateWithPassive(135, -1, 0, getATSwordmanBonus(CQqy7eXfcslm3poo4rs3,1.0,135))
CQqy7eXfcslm3poo4rs3.sq_SetCurrentAttackBonusRate(CQzSKIIXUU6XGiyEy)
BodyExcalibur2(CQqy7eXfcslm3poo4rs3,GetMagicSwordAppIndex(CQqy7eXfcslm3poo4rs3), "Excalibur2")
break
case 2:
		CQqy7eXfcslm3poo4rs3.sq_StopMove()
BodyMagicSword(CQqy7eXfcslm3poo4rs3, "Excalibur3")
if(MagicSword_IsAppebd(CQqy7eXfcslm3poo4rs3))
			CQqy7eXfcslm3poo4rs3.sq_SetCurrentAnimation(278)
else
			CQqy7eXfcslm3poo4rs3.sq_SetCurrentAnimation(98)
CQqy7eXfcslm3poo4rs3.sq_SetCurrentAttackInfo(68)
local CQzSKIIXUU6XGiyEy = CQqy7eXfcslm3poo4rs3.sq_GetBonusRateWithPassive(135, -1, 0, getATSwordmanBonus(CQqy7eXfcslm3poo4rs3,1.0,135))
CQqy7eXfcslm3poo4rs3.sq_SetCurrentAttackBonusRate(CQzSKIIXUU6XGiyEy)
BodyExcalibur2(CQqy7eXfcslm3poo4rs3,GetMagicSwordAppIndex(CQqy7eXfcslm3poo4rs3), "Excalibur3")
local CQWToUD5ovSwAYOpB = GetMagicSwordAppIndex(CQqy7eXfcslm3poo4rs3)
if(CQqy7eXfcslm3poo4rs3.getVar("Excalibur").getBool(0))
			CQzSKIIXUU6XGiyEy = (CQzSKIIXUU6XGiyEy*(sq_GetLevelData(CQqy7eXfcslm3poo4rs3,13, 6, sq_GetSkillLevel(CQqy7eXfcslm3poo4rs3, 13))/100.0)+1.0).tointeger()
CQqy7eXfcslm3poo4rs3.sq_StartWrite()
CQqy7eXfcslm3poo4rs3.sq_WriteDword(135)
CQqy7eXfcslm3poo4rs3.sq_WriteDword(10)
CQqy7eXfcslm3poo4rs3.sq_WriteDword(CQzSKIIXUU6XGiyEy)
CQqy7eXfcslm3poo4rs3.sq_WriteDword(CQWToUD5ovSwAYOpB)
CQqy7eXfcslm3poo4rs3.sq_WriteDword(sq_GetIntData(CQqy7eXfcslm3poo4rs3,135, 4))
CQqy7eXfcslm3poo4rs3.sq_WriteDword(CQqy7eXfcslm3poo4rs3.sq_GetBonusRateWithPassive(135, -1, 1, getATSwordmanBonus(CQqy7eXfcslm3poo4rs3,1.0,135)))
CQqy7eXfcslm3poo4rs3.sq_WriteDword(CQqy7eXfcslm3poo4rs3.sq_GetBonusRateWithPassive(135, -1, 2, getATSwordmanBonus(CQqy7eXfcslm3poo4rs3,1.0,135)))
CQqy7eXfcslm3poo4rs3.sq_SendCreatePassiveObjectPacket(24383, 0, 250, 0, 0)
if(CQqy7eXfcslm3poo4rs3.getVar("Excalibur").getBool(0))
		{
			CQqy7eXfcslm3poo4rs3.sq_StartWrite()
CQqy7eXfcslm3poo4rs3.sq_WriteDword(135)
CQqy7eXfcslm3poo4rs3.sq_WriteDword(1)
CQqy7eXfcslm3poo4rs3.sq_WriteDword(CQzSKIIXUU6XGiyEy)
CQqy7eXfcslm3poo4rs3.sq_WriteDword(CQWToUD5ovSwAYOpB)
CQqy7eXfcslm3poo4rs3.sq_WriteDword(sq_GetIntData(CQqy7eXfcslm3poo4rs3,135, 4))
CQqy7eXfcslm3poo4rs3.sq_WriteDword(CQqy7eXfcslm3poo4rs3.sq_GetBonusRateWithPassive(135, -1, 1, getATSwordmanBonus(CQqy7eXfcslm3poo4rs3,1.0,135)))
CQqy7eXfcslm3poo4rs3.sq_WriteDword(CQqy7eXfcslm3poo4rs3.sq_GetBonusRateWithPassive(135, -1, 2, getATSwordmanBonus(CQqy7eXfcslm3poo4rs3,1.0,135)))
CQqy7eXfcslm3poo4rs3.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 0)
}
		break
}
	CQqy7eXfcslm3poo4rs3.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Excalibur(CQV72aWsBSccaLIA2zk)
{
	if(!CQV72aWsBSccaLIA2zk) return
local CQYVoZlqw9ZRSuIs = CQV72aWsBSccaLIA2zk.getSkillSubState()
switch(CQYVoZlqw9ZRSuIs)
	{
	case 0:
		CQV72aWsBSccaLIA2zk.sq_IntVectClear()
CQV72aWsBSccaLIA2zk.sq_IntVectPush(1)
CQV72aWsBSccaLIA2zk.sq_AddSetStatePacket(135, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQV72aWsBSccaLIA2zk.sq_IntVectClear()
CQV72aWsBSccaLIA2zk.sq_IntVectPush(2)
CQV72aWsBSccaLIA2zk.sq_AddSetStatePacket(135, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQV72aWsBSccaLIA2zk.sq_IntVectClear()
CQV72aWsBSccaLIA2zk.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Excalibur(CQSDgx34Hcq4s7sFc7, CQfoFyoJfO1XipaPUrmO, CQuqvFvoI7ySIcaJw, CQMlB39h3w9poJEDPxZ)
{
	if(!CQSDgx34Hcq4s7sFc7)	return false
local CQn8tTZ1ysIwWvpZ = CQSDgx34Hcq4s7sFc7.getSkillSubState()
MagicswordupOccur(CQSDgx34Hcq4s7sFc7, CQfoFyoJfO1XipaPUrmO, CQuqvFvoI7ySIcaJw, CQMlB39h3w9poJEDPxZ)
switch(CQn8tTZ1ysIwWvpZ)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Excalibur(CQGB9rEFX4kcpZpGK8, CQhFtSnbkqGbtioACr5r)
{
	if(!CQGB9rEFX4kcpZpGK8) return
local CQpH8MNfDHbjQ8iKR = CQGB9rEFX4kcpZpGK8.getSkillSubState()
switch(CQpH8MNfDHbjQ8iKR)
	{
	case 3:

		break
case 4:

		break
}
}

function onEndState_Excalibur(CQ3aOjPB82V6bEiFkeY, CQqezwwtqneBwYSX)
{
	if(!CQ3aOjPB82V6bEiFkeY) return
local CQKcZOjcNF4GnLAJbz = CQ3aOjPB82V6bEiFkeY.getSkillSubState()
switch(CQKcZOjcNF4GnLAJbz)
	{
	case 3:

		break
case 4:

		break
}

}

function onProcCon_Excalibur(CQTfQBM8xfpacbABpOt9)
{
	if(!CQTfQBM8xfpacbABpOt9) return
local CQs14gAOavRWm6PZI = CQTfQBM8xfpacbABpOt9.getSkillSubState()
if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && CQTfQBM8xfpacbABpOt9.getDirection() == 1)
		CQTfQBM8xfpacbABpOt9.sq_SetStaticMoveInfo(0, 0, 0, false)
else if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && CQTfQBM8xfpacbABpOt9.getDirection() == 0)
		CQTfQBM8xfpacbABpOt9.sq_SetStaticMoveInfo(0, 0, 0, false)
}

function onProc_Excalibur(CQXJQmreRAAbYoO1Sr1)
{
	if(!CQXJQmreRAAbYoO1Sr1) return
local CQxs4s67W9zjT9OVJX = CQXJQmreRAAbYoO1Sr1.getSkillSubState()
}

function onKeyFrameFlag_Excalibur(CQPrEXJZ4rK6vJI46xQp, CQ9YhdianOmBlvIMd)
{
	if (!CQPrEXJZ4rK6vJI46xQp) return false
switch(CQ9YhdianOmBlvIMd)
	{
	case 0:

		break
}
	return true
}

function BodyExcalibur2(CQtRGnYTA6MGgZs7h8C,CQB2np74Twtazia3, CQvKMLKHos7Wh8aNW7)
{
	local CQDIu8mmV4sb9pE6oe7m = [
		"_mu_slash_mu.ani",
		"_fire_slash_fire.ani",
		"_ice_slash_ice.ani",
		"_dark_slash_dark.ani",
		"_light_slash_light.ani"
	]
local CQRtNYRhQmjjjdG2s = "effect/animation/atexcalibur/" + CQvKMLKHos7Wh8aNW7 + CQDIu8mmV4sb9pE6oe7m[CQB2np74Twtazia3]
CQtRGnYTA6MGgZs7h8C.sq_AddStateLayerAnimation(4,CQtRGnYTA6MGgZs7h8C.sq_CreateCNRDAnimation(CQRtNYRhQmjjjdG2s), 0, 0)
}