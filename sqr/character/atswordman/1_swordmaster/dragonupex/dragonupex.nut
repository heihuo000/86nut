
function checkExecutableSkill_Dragonupex(CQUof7vjFIomw2Yykxzc)
{
	if (!CQUof7vjFIomw2Yykxzc) return false
local CQHqSY8H95flntcee = CQUof7vjFIomw2Yykxzc.sq_IsUseSkill(137)
if (CQHqSY8H95flntcee)
	{
		CheckUseAddloadDrawsword(CQUof7vjFIomw2Yykxzc,137,{[0] = true,[108] = true,[14] = true},0)
CQUof7vjFIomw2Yykxzc.sq_IntVectClear()
CQUof7vjFIomw2Yykxzc.sq_IntVectPush(0)
CQUof7vjFIomw2Yykxzc.sq_AddSetStatePacket(137, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Dragonupex(CQjlcuLoaTPde5coy8S)
{
	if (!CQjlcuLoaTPde5coy8S) return false
if(CQjlcuLoaTPde5coy8S.getZPos() > 10)
		return false
return CheckForceDrawsword(CQjlcuLoaTPde5coy8S,137,{[0] = true,[108] = true,[14] = true})
}


function onSetState_Dragonupex(CQE8CHpn1az1UDxW, CQ4Br5b1Y3KKczzEI7, CQQF7zdDLUUPTHwuBrV9, CQIprtPyhoNuvrQI2Xs)
{
	if(!CQE8CHpn1az1UDxW) return
local CQ7a6DwfA1tml3qp = CQE8CHpn1az1UDxW.sq_GetVectorData(CQQF7zdDLUUPTHwuBrV9, 0)
CQE8CHpn1az1UDxW.setSkillSubState(CQ7a6DwfA1tml3qp)
switch(CQ7a6DwfA1tml3qp)
	{
	case 0:
		CQE8CHpn1az1UDxW.sq_StopMove()
CQE8CHpn1az1UDxW.sq_PlaySound("SW_SPOUT")
BodyMagicSword(CQE8CHpn1az1UDxW, "DragonUpExCasting")
if(MagicSword_IsAppebd(CQE8CHpn1az1UDxW))
			CQE8CHpn1az1UDxW.sq_SetCurrentAnimation(272)
else
			CQE8CHpn1az1UDxW.sq_SetCurrentAnimation(111)
break
case 1:
		BodyMagicSword(CQE8CHpn1az1UDxW, "DragonUpExDash")
if(MagicSword_IsAppebd(CQE8CHpn1az1UDxW))
			CQE8CHpn1az1UDxW.sq_SetCurrentAnimation(274)
else
			CQE8CHpn1az1UDxW.sq_SetCurrentAnimation(112)
CQE8CHpn1az1UDxW.sq_SetCurrentAttackInfo(69)
local CQres2jV6b7lgyqydO = CQE8CHpn1az1UDxW.sq_GetBonusRateWithPassive(137, -1, 0, getATSwordmanBonus(CQE8CHpn1az1UDxW,1.0,137))
CQE8CHpn1az1UDxW.sq_SetCurrentAttackBonusRate(CQres2jV6b7lgyqydO)
CQE8CHpn1az1UDxW.sq_SetMoveDirection(CQE8CHpn1az1UDxW.getDirection(), ENUM_DIRECTION_NEUTRAL)
CQE8CHpn1az1UDxW.sq_SetStaticMoveInfo(0, 800, -1000, false)
break
case 2:
		CQE8CHpn1az1UDxW.sq_StopMove()
BodyMagicSword(CQE8CHpn1az1UDxW, "DragonUpExCutting")
if(MagicSword_IsAppebd(CQE8CHpn1az1UDxW))
			CQE8CHpn1az1UDxW.sq_SetCurrentAnimation(273)
else
			CQE8CHpn1az1UDxW.sq_SetCurrentAnimation(113)
CQE8CHpn1az1UDxW.sq_SetCurrentAttackInfo(70)
local CQres2jV6b7lgyqydO = CQE8CHpn1az1UDxW.sq_GetBonusRateWithPassive(137, -1, 1, getATSwordmanBonus(CQE8CHpn1az1UDxW,1.0,137))
CQE8CHpn1az1UDxW.sq_SetCurrentAttackBonusRate(CQres2jV6b7lgyqydO)
break
case 3:
		BodyMagicSword(CQE8CHpn1az1UDxW, "dragonupexfrontdash")
if(MagicSword_IsAppebd(CQE8CHpn1az1UDxW))
			CQE8CHpn1az1UDxW.sq_SetCurrentAnimation(275)
else
			CQE8CHpn1az1UDxW.sq_SetCurrentAnimation(114)
CQE8CHpn1az1UDxW.sq_SetCurrentAttackInfo(69)
local CQres2jV6b7lgyqydO = CQE8CHpn1az1UDxW.sq_GetBonusRateWithPassive(137, -1, 0, getATSwordmanBonus(CQE8CHpn1az1UDxW,1.0,137))
CQE8CHpn1az1UDxW.sq_SetCurrentAttackBonusRate(CQres2jV6b7lgyqydO)
break
}
	CQE8CHpn1az1UDxW.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Dragonupex(CQiQlzGCf2ccBAkf1n)
{
	if(!CQiQlzGCf2ccBAkf1n) return
local CQdJ2M5OpPYPj2na = CQiQlzGCf2ccBAkf1n.getSkillSubState()
switch(CQdJ2M5OpPYPj2na)
	{
	case 0:
		CQiQlzGCf2ccBAkf1n.sq_IntVectClear()
CQiQlzGCf2ccBAkf1n.sq_IntVectPush(1)
CQiQlzGCf2ccBAkf1n.sq_AddSetStatePacket(137, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQiQlzGCf2ccBAkf1n.sq_IntVectClear()
CQiQlzGCf2ccBAkf1n.sq_IntVectPush(2)
CQiQlzGCf2ccBAkf1n.sq_AddSetStatePacket(137, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQiQlzGCf2ccBAkf1n.sq_IntVectClear()
CQiQlzGCf2ccBAkf1n.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Dragonupex(CQysohHed7XudtnDKP, CQNr2QuTezQm54bOCzem, CQbYoOYLJI2wfuvHM, CQFRRV7av5ic6lvS47D)
{
	if(!CQysohHed7XudtnDKP)	return false
local CQg2DRKqOqdR1GWL = CQysohHed7XudtnDKP.getSkillSubState()
MagicswordupOccur(CQysohHed7XudtnDKP, CQNr2QuTezQm54bOCzem, CQbYoOYLJI2wfuvHM, CQFRRV7av5ic6lvS47D)
switch(CQg2DRKqOqdR1GWL)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Dragonupex(CQoKvUm3jEO47crGbX, CQ2IBaRHu3TX23rCqxN4)
{
	if(!CQoKvUm3jEO47crGbX) return
local CQmWtXVoCUHSVyeKr = CQoKvUm3jEO47crGbX.getSkillSubState()
switch(CQmWtXVoCUHSVyeKr)
	{
	case 2:
		if(CQ2IBaRHu3TX23rCqxN4 != 3)
			break
CQoKvUm3jEO47crGbX.sq_StartWrite()
CQoKvUm3jEO47crGbX.sq_WriteDword(137)
CQoKvUm3jEO47crGbX.sq_WriteDword(0)
CQoKvUm3jEO47crGbX.sq_WriteDword(CQoKvUm3jEO47crGbX.sq_GetBonusRateWithPassive(137, -1, 1, getATSwordmanBonus(CQoKvUm3jEO47crGbX,1.0,137)))
CQoKvUm3jEO47crGbX.sq_WriteDword(CQoKvUm3jEO47crGbX.sq_GetBonusRateWithPassive(137, -1, 2, getATSwordmanBonus(CQoKvUm3jEO47crGbX,1.0,137)))
CQoKvUm3jEO47crGbX.sq_WriteDword(sq_GetIntData(CQoKvUm3jEO47crGbX,137, 0))
CQoKvUm3jEO47crGbX.sq_SendCreatePassiveObjectPacket(24383, 0, 105, 1, 0)
break
case 4:

		break
}
}

function onEndState_Dragonupex(CQJb89IgqFnpK6wDS8m, CQjhWbqMDMBwBFwZ)
{
	if(!CQJb89IgqFnpK6wDS8m) return
local CQE48pgi8brcLzQHZ = CQJb89IgqFnpK6wDS8m.getSkillSubState()
switch(CQE48pgi8brcLzQHZ)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onKeyFrameFlag_Dragonupex(CQ4ZOKDvES5gFHqVNxo, CQlXz7tdMBE4ZWqL)
{
	if (!CQ4ZOKDvES5gFHqVNxo) return false
local CQIALczSrcgXG4mMlz57 = CQ4ZOKDvES5gFHqVNxo.getSkillSubState()
switch(CQlXz7tdMBE4ZWqL)
	{
	case 1:
		if(CQIALczSrcgXG4mMlz57 != 2)
			break
break
}
	return true
}


function onProcCon_Dragonupex(CQ7uQu4tKPSDPuUCY)
{
	if(!CQ7uQu4tKPSDPuUCY) return
local CQrU4HGxg7xpH7U3U7W = CQ7uQu4tKPSDPuUCY.getSkillSubState()
switch(CQrU4HGxg7xpH7U3U7W)
	{
	case 1:
		if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && CQ7uQu4tKPSDPuUCY.getDirection() == 1)
			CQ7uQu4tKPSDPuUCY.sq_SetStaticMoveInfo(0, 0, 0, false)
else if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && CQ7uQu4tKPSDPuUCY.getDirection() == 0)
			CQ7uQu4tKPSDPuUCY.sq_SetStaticMoveInfo(0, 0, 0, false)
if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && CQ7uQu4tKPSDPuUCY.getDirection() == 0)
			CQ7uQu4tKPSDPuUCY.sq_SetStaticMoveInfo(0, 3800, -1000, false)
else if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && CQ7uQu4tKPSDPuUCY.getDirection() == 1)
			CQ7uQu4tKPSDPuUCY.sq_SetStaticMoveInfo(0, 3800, -1000, false)
break
}
}

function onProc_Dragonupex(CQCkE4yCPzZwAGnN)
{
	if(!CQCkE4yCPzZwAGnN) return
}
