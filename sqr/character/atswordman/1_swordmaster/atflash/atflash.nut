
function checkExecutableSkill_Atflash(CQiCTkrFWYg7H2L99)
{
	if (!CQiCTkrFWYg7H2L99) return false
local CQLKEQ3RBn1rzFOS = CQiCTkrFWYg7H2L99.sq_IsUseSkill(134)
if (CQLKEQ3RBn1rzFOS)
	{
		CheckUseAddloadDrawsword(CQiCTkrFWYg7H2L99,134, {[0] = true,[108] = true,[14] = true},0)
CQiCTkrFWYg7H2L99.sq_IntVectClear()
CQiCTkrFWYg7H2L99.sq_IntVectPush(0)
CQiCTkrFWYg7H2L99.sq_AddSetStatePacket(174, STATE_PRIORITY_IGNORE_FORCE, true)
if(sq_GetSkillLevel(CQiCTkrFWYg7H2L99, 12) > 0 && CQiCTkrFWYg7H2L99.getWeaponSubType() == 3)
			sq_SendMessage(CQiCTkrFWYg7H2L99, OBJECT_MESSAGE_SUPERARMOR, 1, 0)
CQiCTkrFWYg7H2L99.startSkillCoolTime(134, sq_GetSkillLevel(CQiCTkrFWYg7H2L99, 134), -1)
		return true
}
	return false
}

function checkCommandEnable_Atflash(CQ9SsbmfE2DDMfXU)
{
	if (!CQ9SsbmfE2DDMfXU) return false
if(CQ9SsbmfE2DDMfXU.getZPos() > 10)
		return false
return CheckForceDrawsword(CQ9SsbmfE2DDMfXU,134, {[0] = true,[108] = true,[14] = true})
}


function onSetState_Atflash(CQI9j4INlZFf6TjX, CQ7NHzqAp6YgRNj2t9, CQrGUWgWNwX47ehBot4L, CQCEMDB9eKQC22gZs)
{
	if(!CQI9j4INlZFf6TjX) return
local CQcau2tXHj3D8Og1AYr = CQI9j4INlZFf6TjX.sq_GetVectorData(CQrGUWgWNwX47ehBot4L, 0)
CQI9j4INlZFf6TjX.setSkillSubState(CQcau2tXHj3D8Og1AYr)
switch(CQcau2tXHj3D8Og1AYr)
	{
	case 0:
		CQI9j4INlZFf6TjX.sq_StopMove()
BodyMagicSword(CQI9j4INlZFf6TjX, "Flash1")
if(MagicSword_IsAppebd(CQI9j4INlZFf6TjX))
			CQI9j4INlZFf6TjX.sq_SetCurrentAnimation(279)
else
			CQI9j4INlZFf6TjX.sq_SetCurrentAnimation(93)
break
case 1:
		BodyMagicSword(CQI9j4INlZFf6TjX, "Flash2")
if(MagicSword_IsAppebd(CQI9j4INlZFf6TjX))
			CQI9j4INlZFf6TjX.sq_SetCurrentAnimation(280)
else
			CQI9j4INlZFf6TjX.sq_SetCurrentAnimation(94)
CQI9j4INlZFf6TjX.sq_SetCurrentAttackInfo(0)
local CQAefkzIfmip3jRV = CQI9j4INlZFf6TjX.sq_GetBonusRateWithPassive(134, -1, 1, getATSwordmanBonus(CQI9j4INlZFf6TjX,1.0,134))
CQI9j4INlZFf6TjX.sq_SetCurrentAttackBonusRate(CQAefkzIfmip3jRV)
break
case 2:
		BodyMagicSword(CQI9j4INlZFf6TjX, "flash3_flash2")
if(MagicSword_IsAppebd(CQI9j4INlZFf6TjX))
			CQI9j4INlZFf6TjX.sq_SetCurrentAnimation(281)
else
			CQI9j4INlZFf6TjX.sq_SetCurrentAnimation(95)
CQI9j4INlZFf6TjX.sq_SetCurrentAttackInfo(0)
local CQAefkzIfmip3jRV = CQI9j4INlZFf6TjX.sq_GetBonusRateWithPassive(134, -1, 1, getATSwordmanBonus(CQI9j4INlZFf6TjX,1.0,134))
CQI9j4INlZFf6TjX.sq_SetCurrentAttackBonusRate(CQAefkzIfmip3jRV)
break
}
	CQI9j4INlZFf6TjX.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Atflash(CQyffPG53gOYLlfM9PIe)
{
	if(!CQyffPG53gOYLlfM9PIe) return
local CQN2ANysyuTgNMd7g = CQyffPG53gOYLlfM9PIe.getSkillSubState()
switch(CQN2ANysyuTgNMd7g)
	{
	case 0:
		CQyffPG53gOYLlfM9PIe.sq_IntVectClear()
CQyffPG53gOYLlfM9PIe.sq_IntVectPush(1)
CQyffPG53gOYLlfM9PIe.sq_AddSetStatePacket(174, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQyffPG53gOYLlfM9PIe.sq_IntVectClear()
CQyffPG53gOYLlfM9PIe.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Atflash(CQbKchxQXDJ5Zrd3qWd, CQFICqZkkfnCG3xd, CQgWrIEJDtBDXAz6uc, CQov7Vnp8CrEHTzgaAYz)
{
	if(!CQbKchxQXDJ5Zrd3qWd)	return false
local CQ2gsfdUQ96eSDl9X = CQbKchxQXDJ5Zrd3qWd.getSkillSubState()
MagicswordupOccur(CQbKchxQXDJ5Zrd3qWd, CQFICqZkkfnCG3xd, CQgWrIEJDtBDXAz6uc, CQov7Vnp8CrEHTzgaAYz)
switch(CQ2gsfdUQ96eSDl9X)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Atflash(CQm36UC1MrEYKwTkNtG, CQJLsEsFcZggD1TR)
{
	if(!CQm36UC1MrEYKwTkNtG) return
local CQkOTZkuJ6S5IWk77Y = CQm36UC1MrEYKwTkNtG.getSkillSubState()
switch(CQkOTZkuJ6S5IWk77Y)
	{
	case 1:
		local CQwtK91fRwc7FjjhY = GetMagicSwordAppIndex(CQm36UC1MrEYKwTkNtG)
local CQZbmvSBWKZBOSjdmcO = CQm36UC1MrEYKwTkNtG.sq_GetBonusRateWithPassive(134, -1, 1, getATSwordmanBonus(CQm36UC1MrEYKwTkNtG,1.0,134))
local CQzh2orA4jqHplhT = sq_GetDistancePos(CQm36UC1MrEYKwTkNtG.getXPos(), CQm36UC1MrEYKwTkNtG.getDirection(), sq_GetIntData(CQm36UC1MrEYKwTkNtG,134, 1))
switch(CQJLsEsFcZggD1TR)
		{
		case 0:
			CQm36UC1MrEYKwTkNtG.sq_StartWrite()
CQm36UC1MrEYKwTkNtG.sq_WriteDword(134)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(0)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(0)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(CQZbmvSBWKZBOSjdmcO)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(CQzh2orA4jqHplhT)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(CQwtK91fRwc7FjjhY)
CQm36UC1MrEYKwTkNtG.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 10)
break
case 1:
			CQm36UC1MrEYKwTkNtG.sq_StartWrite()
CQm36UC1MrEYKwTkNtG.sq_WriteDword(134)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(0)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(1)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(CQZbmvSBWKZBOSjdmcO)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(CQzh2orA4jqHplhT)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(CQwtK91fRwc7FjjhY)
CQm36UC1MrEYKwTkNtG.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 10)
break
case 2:
			CQm36UC1MrEYKwTkNtG.sq_StartWrite()
CQm36UC1MrEYKwTkNtG.sq_WriteDword(134)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(0)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(2)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(CQZbmvSBWKZBOSjdmcO)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(CQzh2orA4jqHplhT)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(CQwtK91fRwc7FjjhY)
CQm36UC1MrEYKwTkNtG.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 0)
break
case 6:
			if(sq_GetSkillLevel(CQm36UC1MrEYKwTkNtG, 11) > 0 && CQm36UC1MrEYKwTkNtG.getWeaponSubType() == 1)
			{
				CQm36UC1MrEYKwTkNtG.sq_StartWrite()
CQm36UC1MrEYKwTkNtG.sq_WriteDword(134)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(0)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(2)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(CQZbmvSBWKZBOSjdmcO)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(CQzh2orA4jqHplhT)
CQm36UC1MrEYKwTkNtG.sq_WriteDword(CQwtK91fRwc7FjjhY)
CQm36UC1MrEYKwTkNtG.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 10)
}
			break
}
		break
}
}

function onEndState_Atflash(CQO4oKTcnm1sPMggy9, CQ8Zg628AHyWEegxGWXi)
{
	if(!CQO4oKTcnm1sPMggy9) return
if(sq_GetSkillLevel(CQO4oKTcnm1sPMggy9, 12) > 0 && CQO4oKTcnm1sPMggy9.getWeaponSubType() == 3 && CQ8Zg628AHyWEegxGWXi != 174)
		sq_SendMessage(CQO4oKTcnm1sPMggy9, OBJECT_MESSAGE_SUPERARMOR, 0, 0)
}


function onKeyFrameFlag_Atflash(CQWXiciPTg9ny2vkL, CQVSRuYrouIkwtYvVcv)
{
	if (!CQWXiciPTg9ny2vkL) return false
switch(CQVSRuYrouIkwtYvVcv)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Atflash(CQ4863jefORNMvhq25)
{
	if(!CQ4863jefORNMvhq25) return
local CQoZhoYLYJvmxgMKA = CQ4863jefORNMvhq25.getSkillSubState()
switch(CQoZhoYLYJvmxgMKA)
	{
	case 0:

		break
}
}

function onProc_Atflash(CQfTBlpsHtbHUzcYctvh)
{
	if(!CQfTBlpsHtbHUzcYctvh) return
local CQu7WWbqYCVsr1xQn = CQfTBlpsHtbHUzcYctvh.getSkillSubState()
}
