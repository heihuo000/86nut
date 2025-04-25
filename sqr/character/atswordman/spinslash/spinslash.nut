
function checkExecutableSkill_Spinslash(CQHMto7LODLIw3ydMy)
{
	if (!CQHMto7LODLIw3ydMy) return false
local CQjH9KswjNmtnyy64N5G = CQHMto7LODLIw3ydMy.sq_IsUseSkill(93)
if (CQjH9KswjNmtnyy64N5G)
	{
		CQHMto7LODLIw3ydMy.getVar("Spinslash").clear_vector()
CQHMto7LODLIw3ydMy.getVar("Spinslash").push_vector(CQHMto7LODLIw3ydMy.getXPos())
CQHMto7LODLIw3ydMy.getVar("Spinslash").push_vector(CQHMto7LODLIw3ydMy.getYPos())
local CQEat6mTuYMUe6tg8 = CQHMto7LODLIw3ydMy.getVar("SpinslashTar").get_vector(0)
local CQ4e8cR3CAtTUoW9RBW = sq_GetObjectByObjectId(CQHMto7LODLIw3ydMy, CQEat6mTuYMUe6tg8)
if(CQ4e8cR3CAtTUoW9RBW)
			CQHMto7LODLIw3ydMy.setCurrentDirection(sq_GetOppositeDirection(CQ4e8cR3CAtTUoW9RBW.getDirection()))
CQHMto7LODLIw3ydMy.sq_IntVectClear()
CQHMto7LODLIw3ydMy.sq_IntVectPush(0)
CQHMto7LODLIw3ydMy.sq_AddSetStatePacket(93, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Spinslash(CQQcOuVEq888cxWk)
{
	if (!CQQcOuVEq888cxWk) return false
if(CQQcOuVEq888cxWk.sq_GetState() == 0)
		return false
return true
}


function onSetState_Spinslash(CQLfzGImFxsMmJrRrS, CQl1Z4Qg8IjJYvrzudPm, CQIJwz3GE6FIl4sjE, CQ7I4WFiMQYyguaYZBR)
{
	if(!CQLfzGImFxsMmJrRrS) return
local CQrWEDtRraCUz7al = CQLfzGImFxsMmJrRrS.sq_GetVectorData(CQIJwz3GE6FIl4sjE, 0)
CQLfzGImFxsMmJrRrS.setSkillSubState(CQrWEDtRraCUz7al)
switch(CQrWEDtRraCUz7al)
	{
	case 0:
		CQLfzGImFxsMmJrRrS.sq_StopMove()
BodyMagicSword(CQLfzGImFxsMmJrRrS, "SpinSlash")
if(MagicSword_IsAppebd(CQLfzGImFxsMmJrRrS))
			CQLfzGImFxsMmJrRrS.sq_SetCurrentAnimation(227)
else
		{
			if(sq_GetSkillLevel(CQLfzGImFxsMmJrRrS, 148) > 0)
			{
				BodyCalldaimus(CQLfzGImFxsMmJrRrS, "SpinSlash")
CQLfzGImFxsMmJrRrS.sq_SetCurrentAnimation(401)
}
			else
				CQLfzGImFxsMmJrRrS.sq_SetCurrentAnimation(21)
}
			
		CQLfzGImFxsMmJrRrS.sq_SetCurrentAttackInfo(15)
local CQp5Y4UR6NU9pCrvK6jt = CQLfzGImFxsMmJrRrS.sq_GetBonusRateWithPassive(93, -1, 0, getATSwordmanBonus(CQLfzGImFxsMmJrRrS,1.0,93))
CQLfzGImFxsMmJrRrS.sq_SetCurrentAttackBonusRate(CQp5Y4UR6NU9pCrvK6jt)
break
case 1:
		BodyMagicSword(CQLfzGImFxsMmJrRrS, "SpinSlash2")
if(MagicSword_IsAppebd(CQLfzGImFxsMmJrRrS))
			CQLfzGImFxsMmJrRrS.sq_SetCurrentAnimation(228)
else
		{
			if(sq_GetSkillLevel(CQLfzGImFxsMmJrRrS, 148) > 0)
			{
				BodyCalldaimus(CQLfzGImFxsMmJrRrS, "SpinSlash2")
CQLfzGImFxsMmJrRrS.sq_SetCurrentAnimation(402)
}
			else
				CQLfzGImFxsMmJrRrS.sq_SetCurrentAnimation(22)
}
			
		CQLfzGImFxsMmJrRrS.sq_SetCurrentAttackInfo(16)
local CQp5Y4UR6NU9pCrvK6jt = CQLfzGImFxsMmJrRrS.sq_GetBonusRateWithPassive(93, -1, 1, getATSwordmanBonus(CQLfzGImFxsMmJrRrS,1.0,93))
CQLfzGImFxsMmJrRrS.sq_SetCurrentAttackBonusRate(CQp5Y4UR6NU9pCrvK6jt)
CQLfzGImFxsMmJrRrS.sq_StartWrite()
CQLfzGImFxsMmJrRrS.sq_WriteDword(93)
CQLfzGImFxsMmJrRrS.sq_WriteDword(0)
CQLfzGImFxsMmJrRrS.sq_WriteDword(CQLfzGImFxsMmJrRrS.sq_GetBonusRateWithPassive(93, -1, 4, getATSwordmanBonus(CQLfzGImFxsMmJrRrS,1.0,93)))
CQLfzGImFxsMmJrRrS.sq_WriteDword(CQLfzGImFxsMmJrRrS.sq_GetBonusRateWithPassive(93, -1, 5, getATSwordmanBonus(CQLfzGImFxsMmJrRrS,1.0,93)))
CQLfzGImFxsMmJrRrS.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 0)
break
}
}

function onEndCurrentAni_Spinslash(CQy3jeGvPpifjKpTY)
{
	if(!CQy3jeGvPpifjKpTY) return
local CQNLGPb951f2dyob = CQy3jeGvPpifjKpTY.getSkillSubState()
switch(CQNLGPb951f2dyob)
	{
	case 0:
		CQy3jeGvPpifjKpTY.sq_IntVectClear()
CQy3jeGvPpifjKpTY.sq_IntVectPush(1)
CQy3jeGvPpifjKpTY.sq_AddSetStatePacket(93, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQy3jeGvPpifjKpTY.sq_IntVectClear()
CQy3jeGvPpifjKpTY.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Spinslash(CQbOnN9CUbPL56izwy, CQFtMhZWVDlAfoiUtB7P, CQgbuqazlNJi6zuYG, CQohMIU6FYnq1HyQLSy)
{
	if(!CQbOnN9CUbPL56izwy)	return false
MagicSword_BasiconAttack(CQbOnN9CUbPL56izwy, CQFtMhZWVDlAfoiUtB7P, CQgbuqazlNJi6zuYG, CQohMIU6FYnq1HyQLSy)
}

function onEnterFrame_Spinslash(CQ2jyCfI9ANx7Yyn, CQm5dfAQw8Wf2LPr1y)
{
	if(!CQ2jyCfI9ANx7Yyn) return
local CQJXAUek1x62VuOqkNSW = CQ2jyCfI9ANx7Yyn.getSkillSubState()
switch(CQJXAUek1x62VuOqkNSW)
	{
	case 3:

		break
case 4:

		break
}
}

function onEndState_Spinslash(CQkAcEkKYIEZK7Oyx, CQauXZ1pI6hABpIenDh)
{
	if(!CQkAcEkKYIEZK7Oyx) return
local CQ5me9SjhQDiLcIo = CQkAcEkKYIEZK7Oyx.getSkillSubState()
switch(CQ5me9SjhQDiLcIo)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onKeyFrameFlag_Spinslash(CQQT6vr2yacQFJstO, CQL7eo6GX3ZxZvawDdn)
{
	if (!CQQT6vr2yacQFJstO) return false
switch(CQL7eo6GX3ZxZvawDdn)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Spinslash(CQlV6KKnmmqfG5ai)
{
	if(!CQlV6KKnmmqfG5ai) return
local CQIDa6oRDG23PiEWXB = CQlV6KKnmmqfG5ai.getSkillSubState()
switch(CQIDa6oRDG23PiEWXB)
	{
	case 0:

		break
}
}

function onProc_Spinslash(CQ7okcvNz1u5H8pEfvur)
{
	if(!CQ7okcvNz1u5H8pEfvur) return
local CQrqJy8ypb9CAHpuj = CQ7okcvNz1u5H8pEfvur.getSkillSubState()
switch(CQrqJy8ypb9CAHpuj)
	{
	case 0:
		local CQClmGLYNDIFaYoIzf3 = CQ7okcvNz1u5H8pEfvur.getVar("Spinslash").get_vector(0)
local CQc824q9edTESLip = CQ7okcvNz1u5H8pEfvur.getVar("Spinslash").get_vector(1)
local CQyBilgPJYHesuDPoNeg = CQ7okcvNz1u5H8pEfvur.getVar("SpinslashTar").get_vector(0)
local CQNF1WBrRPbvo6Sas = sq_GetObjectByObjectId(CQ7okcvNz1u5H8pEfvur, CQyBilgPJYHesuDPoNeg)
if(CQNF1WBrRPbvo6Sas)
		{
			CQ7okcvNz1u5H8pEfvur.setCurrentDirection(sq_GetOppositeDirection(CQNF1WBrRPbvo6Sas.getDirection()))
CQClmGLYNDIFaYoIzf3 = sq_GetDistancePos(CQNF1WBrRPbvo6Sas.getXPos(), CQNF1WBrRPbvo6Sas.getDirection(), -80)
CQc824q9edTESLip = CQNF1WBrRPbvo6Sas.getYPos()
}
		
		local CQbpiDOzO8VhOoADSDB = sq_GetCurrentAnimation(CQ7okcvNz1u5H8pEfvur)
local CQFER1QX4xr5p9AO = sq_GetDelaySum(CQbpiDOzO8VhOoADSDB)/2
local CQgwDkjsuI5CtJPH5S = CQ7okcvNz1u5H8pEfvur.sq_GetStateTimer()
if(CQgwDkjsuI5CtJPH5S < CQFER1QX4xr5p9AO)
		{
			local CQocYwGQC5pFQvOS9ddG = sq_GetAccel(CQ7okcvNz1u5H8pEfvur.getXPos(), CQClmGLYNDIFaYoIzf3, CQgwDkjsuI5CtJPH5S, CQFER1QX4xr5p9AO, false)
local CQ2fVPy5TQREyZOLg = sq_GetAccel(CQ7okcvNz1u5H8pEfvur.getYPos(), CQc824q9edTESLip, CQgwDkjsuI5CtJPH5S, CQFER1QX4xr5p9AO, false)
sq_setCurrentAxisPos(CQ7okcvNz1u5H8pEfvur, 0, CQocYwGQC5pFQvOS9ddG)
sq_setCurrentAxisPos(CQ7okcvNz1u5H8pEfvur, 1, CQ2fVPy5TQREyZOLg)
sq_SetZVelocity(CQ7okcvNz1u5H8pEfvur, 500, -600)
}
		else
		{
			sq_SetZVelocity(CQ7okcvNz1u5H8pEfvur, -500, -600)
}
		sq_SimpleMoveToNearMovablePos(CQ7okcvNz1u5H8pEfvur,900)
break
}
}

function ATSwordmanSpinslash(CQm1WNxJFaAewiIGTBo)
{
	if(sq_GetSkillLevel(CQm1WNxJFaAewiIGTBo,93) > 0)
	{
		local CQJJ8g5q93xvn8IA = "character/atswordman/spinslash/ap_spinslash.nut"
if(!CNSquirrelAppendage.sq_IsAppendAppendage(CQm1WNxJFaAewiIGTBo, CQJJ8g5q93xvn8IA))
			local CQksrqHjQULhepsKiS = CNSquirrelAppendage.sq_AppendAppendage(CQm1WNxJFaAewiIGTBo, CQm1WNxJFaAewiIGTBo, -1, false, CQJJ8g5q93xvn8IA, true)
}
}
