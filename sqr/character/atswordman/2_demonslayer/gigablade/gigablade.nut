
function checkExecutableSkill_Gigablade(CQY5RVrMDcwOVDTH)
{
	if (!CQY5RVrMDcwOVDTH) return false
local CQSXDfTi7O3yKzkSdL = CQY5RVrMDcwOVDTH.sq_IsUseSkill(160)
if (CQSXDfTi7O3yKzkSdL)
	{
		CQY5RVrMDcwOVDTH.sq_IntVectClear()
CQY5RVrMDcwOVDTH.sq_IntVectPush(0)
CQY5RVrMDcwOVDTH.sq_AddSetStatePacket(160, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Gigablade(CQfAYU2vpCiUD1mLjlBN)
{
	if (!CQfAYU2vpCiUD1mLjlBN) return false
if(sq_GetSkillLevel(CQfAYU2vpCiUD1mLjlBN, 163) < 1)
	{
		local CQuuVaDdNzflLWUGz = CQfAYU2vpCiUD1mLjlBN.sq_GetState()
if(CQuuVaDdNzflLWUGz == 0 || CQuuVaDdNzflLWUGz == 108 || CQuuVaDdNzflLWUGz == 14)
			return true
else
			return false
}
	return true
}


function onSetState_Gigablade(CQMUYZYSxsP9F4UCt6U, CQnkV97WJ4lMOAnK, CQG6WbLxRTJKpTbNs5, CQhC7opCWEUOPFbXAQii)
{
	if(!CQMUYZYSxsP9F4UCt6U) return
local CQpSIKbO42NyEev2M = CQMUYZYSxsP9F4UCt6U.sq_GetVectorData(CQG6WbLxRTJKpTbNs5, 0)
CQMUYZYSxsP9F4UCt6U.setSkillSubState(CQpSIKbO42NyEev2M)
local CQ3il69wnnWoy2YB5TL = 1.0
if(sq_GetSkillLevel(CQMUYZYSxsP9F4UCt6U, 160) > 2)
		CQ3il69wnnWoy2YB5TL = 1.1
switch(CQpSIKbO42NyEev2M)
	{
	case 0:
		CQMUYZYSxsP9F4UCt6U.sq_StopMove()
BodyCalldaimus(CQMUYZYSxsP9F4UCt6U, "gigabladecast")
CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAnimation(414)
if(CQMUYZYSxsP9F4UCt6U.isMyControlObject())
		{
			local CQqmLcO6Co6QatY5 = CQMUYZYSxsP9F4UCt6U.getVar()
local CQKTQuQLTMExu5c1g5 = sq_flashScreen(CQMUYZYSxsP9F4UCt6U,150, 10500, 300, 100, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM)
CQqmLcO6Co6QatY5.setObject(0,CQKTQuQLTMExu5c1g5)
}

		break
case 1:
		CQMUYZYSxsP9F4UCt6U.sq_PlaySound("GIGA_SWORD")
BodyCalldaimus(CQMUYZYSxsP9F4UCt6U, "gigabladeslash")
CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAnimation(420)
CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAttackInfo(106)
local CQT8KGhQovhReDx7qw5n = CQMUYZYSxsP9F4UCt6U.sq_GetBonusRateWithPassive(160, -1, 4, getATSwordmanBonus(CQMUYZYSxsP9F4UCt6U,CQ3il69wnnWoy2YB5TL,160))
CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAttackBonusRate(CQT8KGhQovhReDx7qw5n)
CQMUYZYSxsP9F4UCt6U.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
CQMUYZYSxsP9F4UCt6U.setTimeEvent(0, sq_GetIntData(CQMUYZYSxsP9F4UCt6U,160, 1), 8,true)
break
case 2:
		CQMUYZYSxsP9F4UCt6U.stopTimeEvent(0)
BodyCalldaimus(CQMUYZYSxsP9F4UCt6U, "gigabladegate")
CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAnimation(417)
CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAttackInfo(104)
local CQT8KGhQovhReDx7qw5n = CQMUYZYSxsP9F4UCt6U.sq_GetBonusRateWithPassive(160, -1, 4, getATSwordmanBonus(CQMUYZYSxsP9F4UCt6U,CQ3il69wnnWoy2YB5TL,160))
local CQZN3zP3QBcZrGwNulWE = CQMUYZYSxsP9F4UCt6U.sq_GetBonusRateWithPassive(160, -1, 7, getATSwordmanBonus(CQMUYZYSxsP9F4UCt6U,CQ3il69wnnWoy2YB5TL,160))
if(sq_GetSkillLevel(CQMUYZYSxsP9F4UCt6U, 160) > 5)
			CQT8KGhQovhReDx7qw5n = CQT8KGhQovhReDx7qw5n + CQZN3zP3QBcZrGwNulWE
CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAttackBonusRate(CQT8KGhQovhReDx7qw5n)
CQMUYZYSxsP9F4UCt6U.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
CQMUYZYSxsP9F4UCt6U.setTimeEvent(1, sq_GetIntData(CQMUYZYSxsP9F4UCt6U,160, 1), 99,true)
break
case 3:
		CQMUYZYSxsP9F4UCt6U.stopTimeEvent(1)
BodyCalldaimus(CQMUYZYSxsP9F4UCt6U, "gigabladedash")
CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAnimation(415)
CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAttackInfo(102)
local CQT8KGhQovhReDx7qw5n = CQMUYZYSxsP9F4UCt6U.sq_GetBonusRateWithPassive(160, -1, 0, getATSwordmanBonus(CQMUYZYSxsP9F4UCt6U,CQ3il69wnnWoy2YB5TL,160))
CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAttackBonusRate(CQT8KGhQovhReDx7qw5n)
CQMUYZYSxsP9F4UCt6U.sq_SetMoveDirection(CQMUYZYSxsP9F4UCt6U.getDirection(), ENUM_DIRECTION_NEUTRAL)
CQMUYZYSxsP9F4UCt6U.sq_SetStaticMoveInfo(0, 1000, -1000, false)
break
case 4:
		CQMUYZYSxsP9F4UCt6U.sq_StopMove()
CQMUYZYSxsP9F4UCt6U.setDirection(sq_GetOppositeDirection(CQMUYZYSxsP9F4UCt6U.getDirection()))
CQMUYZYSxsP9F4UCt6U.sq_SetMoveDirection(CQMUYZYSxsP9F4UCt6U.getDirection(), ENUM_DIRECTION_NEUTRAL)
CQMUYZYSxsP9F4UCt6U.sq_SetStaticMoveInfo(0, 560, -1000, false)
BodyCalldaimus(CQMUYZYSxsP9F4UCt6U, "gigabladefinish")
CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAnimation(416)
CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAttackInfo(103)
local CQT8KGhQovhReDx7qw5n = CQMUYZYSxsP9F4UCt6U.sq_GetBonusRateWithPassive(160, -1, 1, getATSwordmanBonus(CQMUYZYSxsP9F4UCt6U,CQ3il69wnnWoy2YB5TL,160))
CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAttackBonusRate(CQT8KGhQovhReDx7qw5n)
break
case 5:
		CQMUYZYSxsP9F4UCt6U.sq_StopMove()
CQMUYZYSxsP9F4UCt6U.setDirection(sq_GetOppositeDirection(CQMUYZYSxsP9F4UCt6U.getDirection()))
CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAnimation(419)
CQMUYZYSxsP9F4UCt6U.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
case 6:
		CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAnimation(418)
CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAttackInfo(105)
local CQT8KGhQovhReDx7qw5n = CQMUYZYSxsP9F4UCt6U.sq_GetBonusRateWithPassive(160, -1, 3, getATSwordmanBonus(CQMUYZYSxsP9F4UCt6U,CQ3il69wnnWoy2YB5TL,160))
CQMUYZYSxsP9F4UCt6U.sq_SetCurrentAttackBonusRate(CQT8KGhQovhReDx7qw5n)
CQMUYZYSxsP9F4UCt6U.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
}

}

function onEndCurrentAni_Gigablade(CQWxbkuG2zucvTm535)
{
	if(!CQWxbkuG2zucvTm535) return
local CQVdNecuts9RQFmR7Qfq = CQWxbkuG2zucvTm535.getSkillSubState()
switch(CQVdNecuts9RQFmR7Qfq)
	{
	case 0:
		CQWxbkuG2zucvTm535.sq_IntVectClear()
CQWxbkuG2zucvTm535.sq_IntVectPush(1)
CQWxbkuG2zucvTm535.sq_AddSetStatePacket(160, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		
		break
case 2:
		CQWxbkuG2zucvTm535.sq_IntVectClear()
CQWxbkuG2zucvTm535.sq_IntVectPush(3)
CQWxbkuG2zucvTm535.sq_AddSetStatePacket(160, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQWxbkuG2zucvTm535.sq_IntVectClear()
CQWxbkuG2zucvTm535.sq_IntVectPush(4)
CQWxbkuG2zucvTm535.sq_AddSetStatePacket(160, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 4:
		CQWxbkuG2zucvTm535.sq_IntVectClear()
CQWxbkuG2zucvTm535.sq_IntVectPush(5)
CQWxbkuG2zucvTm535.sq_AddSetStatePacket(160, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 5:
		CQWxbkuG2zucvTm535.sq_IntVectClear()
CQWxbkuG2zucvTm535.sq_IntVectPush(6)
CQWxbkuG2zucvTm535.sq_AddSetStatePacket(160, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 6:
		CQWxbkuG2zucvTm535.sq_IntVectClear()
CQWxbkuG2zucvTm535.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onTimeEvent_Gigablade(CQYMbP6vZ4O3bxU8Y, CQSHBNJNUkTXz2UjmTp, CQfathUASEHSjWnf)
{
	if(!CQYMbP6vZ4O3bxU8Y) return
switch(CQSHBNJNUkTXz2UjmTp)
	{
	case 0:
		CQYMbP6vZ4O3bxU8Y.resetHitObjectList()
if(CQfathUASEHSjWnf > 7)
		{
			CQYMbP6vZ4O3bxU8Y.sq_IntVectClear()
CQYMbP6vZ4O3bxU8Y.sq_IntVectPush(2)
CQYMbP6vZ4O3bxU8Y.sq_AddSetStatePacket(160, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
case 1:
		CQYMbP6vZ4O3bxU8Y.resetHitObjectList()
break
}
}

function onAttack_Gigablade(CQue9qfW72boc4bly5, CQMcPIC9onVEkubhGwG5, CQnfxVIXBorrflvcL, CQG2ZfqrzM5vTGYTVlT)
{
	if(!CQue9qfW72boc4bly5 || CQG2ZfqrzM5vTGYTVlT)	return false
local CQhKwUgzHvphRcWb = CQue9qfW72boc4bly5.getSkillSubState()
Calldaimus_onAttack(CQue9qfW72boc4bly5,CQMcPIC9onVEkubhGwG5, CQnfxVIXBorrflvcL, CQG2ZfqrzM5vTGYTVlT)
local CQpIZED5fAR673rxTT = 1.0
if(sq_GetSkillLevel(CQue9qfW72boc4bly5, 160) > 2)
		CQpIZED5fAR673rxTT = 1.1
switch(CQhKwUgzHvphRcWb)
	{
	case 2:
		if(sq_GetSkillLevel(CQue9qfW72boc4bly5, 160) > 5)
		{
			local CQ3WwZWsIBSVgyekcaQL = "passiveobject/changqing_atswordman/animation/atgigabladekelkusexp/gigablade_specialatk_06.ani"
DarktemplerCreateAniPooledObj(CQMcPIC9onVEkubhGwG5, CQ3WwZWsIBSVgyekcaQL , true , true, CQMcPIC9onVEkubhGwG5.getXPos(), CQMcPIC9onVEkubhGwG5.getYPos(), CQMcPIC9onVEkubhGwG5.getZPos() + CQMcPIC9onVEkubhGwG5.getObjectHeight()/3,1.0)
}
		break
case 1:

		break
}

}

function onEnterFrame_Gigablade(CQqv59lQ3cxF86evn, CQKbEv3kbOLa3DwlQwC)
{
	if(!CQqv59lQ3cxF86evn) return
local CQ6hjoFJX6mr9zQn = CQqv59lQ3cxF86evn.getSkillSubState()
local CQe4HKtpkzMv4HQcFlbv = 1.0
if(sq_GetSkillLevel(CQqv59lQ3cxF86evn, 160) > 2)
		CQe4HKtpkzMv4HQcFlbv = 1.1
switch(CQ6hjoFJX6mr9zQn)
	{
	case 6:
		if(CQKbEv3kbOLa3DwlQwC == 5)
		{
			local CQXZU68UisyjNWqqK = 100
if(sq_GetSkillLevel(CQqv59lQ3cxF86evn, 160) > 8)
				CQXZU68UisyjNWqqK = 250
CQqv59lQ3cxF86evn.sq_PlaySound("GIGASLASH_SMASH")
CQqv59lQ3cxF86evn.sq_StartWrite()
CQqv59lQ3cxF86evn.sq_WriteDword(160)
CQqv59lQ3cxF86evn.sq_WriteDword(1)
CQqv59lQ3cxF86evn.sq_WriteDword(CQqv59lQ3cxF86evn.sq_GetBonusRateWithPassive(160, -1, 3, getATSwordmanBonus(CQqv59lQ3cxF86evn,CQe4HKtpkzMv4HQcFlbv,160)))
CQqv59lQ3cxF86evn.sq_WriteDword(CQXZU68UisyjNWqqK)
CQqv59lQ3cxF86evn.sq_SendCreatePassiveObjectPacket(24383, 0, 180, 0, 0)
}
		break
case 4:

		break
}
}

function onEndState_Gigablade(CQxP1cZ18486Z4mbC6J, CQPynyEFqmsVMume)
{
	if(!CQxP1cZ18486Z4mbC6J) return
if(CQPynyEFqmsVMume != 160)
	{
		local CQ9nMGnuFEjGXlUmjZ = CQxP1cZ18486Z4mbC6J.getVar().getObject(0)
if(CQ9nMGnuFEjGXlUmjZ)
		{
			local CQtju4dfx2GaHGntzl2f = sq_GetCNRDObjectToFlashScreen(CQ9nMGnuFEjGXlUmjZ)
if(CQtju4dfx2GaHGntzl2f)
				CQtju4dfx2GaHGntzl2f.fadeOut()
}
	}
	
}

function onProc_Gigablade(CQB5flXBanvrCxuwb)
{
	if(!CQB5flXBanvrCxuwb) return
local CQvCAWwyRDCyJJyipTz = CQB5flXBanvrCxuwb.getSkillSubState()
switch(CQvCAWwyRDCyJJyipTz)
	{
	case 4:
		local CQDScBjYWMwUStyW = sq_GetCurrentAnimation(CQB5flXBanvrCxuwb)
local CQRiCRM8Lv3TK5tQS5 = CQB5flXBanvrCxuwb.sq_GetCurrentFrameIndex(CQDScBjYWMwUStyW)
if(CQRiCRM8Lv3TK5tQS5 > 4)
		{
			CQB5flXBanvrCxuwb.sq_IntVectClear()
CQB5flXBanvrCxuwb.sq_IntVectPush(5)
CQB5flXBanvrCxuwb.sq_AddSetStatePacket(160, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
}
}

function onKeyFrameFlag_Gigablade(CQimrmAPnAo9DiWuHweF, CQ1TCserAVfMIzWr5)
{
	if (!CQimrmAPnAo9DiWuHweF) return false
switch(CQ1TCserAVfMIzWr5)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Gigablade(CQU7eXTl6cPJFHrpdlV)
{
	if(!CQU7eXTl6cPJFHrpdlV) return
local CQHV6dJZoOlOOYey = CQU7eXTl6cPJFHrpdlV.getSkillSubState()
switch(CQHV6dJZoOlOOYey)
	{
	case 0:

		break
}
}