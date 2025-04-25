
function checkExecutableSkill_Atspeedslash(CQnDO1OJ2r4nY4zr)
{
	if (!CQnDO1OJ2r4nY4zr) return false
local CQGo8kQotZokqAlqFc = CQnDO1OJ2r4nY4zr.sq_IsUseSkill(145)
if (CQGo8kQotZokqAlqFc)
	{
		CheckUseAddloadDrawsword(CQnDO1OJ2r4nY4zr,145, {[0] = true,[108] = true,[14] = true},0)
CQnDO1OJ2r4nY4zr.sq_IntVectClear()
CQnDO1OJ2r4nY4zr.sq_IntVectPush(0)
CQnDO1OJ2r4nY4zr.sq_AddSetStatePacket(145, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Atspeedslash(CQhqOehhZTR8vTTbKP21)
{
	if (!CQhqOehhZTR8vTTbKP21) return false
if(CQhqOehhZTR8vTTbKP21.getZPos() > 10)
		return false
return CheckForceDrawsword(CQhqOehhZTR8vTTbKP21,143, {[0] = true,[108] = true,[14] = true})
}


function onSetState_Atspeedslash(CQpllPN1jQAdlFTeC, CQ38LNPFSKz1bekmfWw, CQqBQhxb7jKLz2jW, CQKF4q5fpomPhtUQzc)
{
	if(!CQpllPN1jQAdlFTeC) return
local CQTpEIHBNGMu9knubAap = CQpllPN1jQAdlFTeC.sq_GetVectorData(CQqBQhxb7jKLz2jW, 0)
CQpllPN1jQAdlFTeC.setSkillSubState(CQTpEIHBNGMu9knubAap)
switch(CQTpEIHBNGMu9knubAap)
	{
	case 0:
		CQpllPN1jQAdlFTeC.sq_StopMove()
BodyMagicSword(CQpllPN1jQAdlFTeC, "SpeedSlash")
if(MagicSword_IsAppebd(CQpllPN1jQAdlFTeC))
			CQpllPN1jQAdlFTeC.sq_SetCurrentAnimation(317)
else
			CQpllPN1jQAdlFTeC.sq_SetCurrentAnimation(73)
CQpllPN1jQAdlFTeC.sq_SetCurrentAttackInfo(59)
local CQew3CutxgtqjDbrq9b = CQpllPN1jQAdlFTeC.sq_GetBonusRateWithPassive(145, -1, 0,getATSwordmanBonus(CQpllPN1jQAdlFTeC,1.0,145))
CQpllPN1jQAdlFTeC.sq_SetCurrentAttackBonusRate(CQew3CutxgtqjDbrq9b)
local CQZxpfccJu7zflbp = sq_GetDistancePos(CQpllPN1jQAdlFTeC.getXPos(), CQpllPN1jQAdlFTeC.getDirection(), sq_GetLevelData(CQpllPN1jQAdlFTeC,145, 1, sq_GetSkillLevel(CQpllPN1jQAdlFTeC, 145)))
CQpllPN1jQAdlFTeC.getVar("Atspeedslash").clear_vector()
CQpllPN1jQAdlFTeC.getVar("Atspeedslash").push_vector(CQZxpfccJu7zflbp)
CQpllPN1jQAdlFTeC.getVar("Atspeedslash").setBool(0,false)
break
}
CQpllPN1jQAdlFTeC.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Atspeedslash(CQzdhU6VfDsd6GvyS)
{
	if(!CQzdhU6VfDsd6GvyS) return
local CQOfGEaOrdj2RrYsHWu = CQzdhU6VfDsd6GvyS.getSkillSubState()
switch(CQOfGEaOrdj2RrYsHWu)
	{
	case 0:
		CQzdhU6VfDsd6GvyS.sq_IntVectClear()
CQzdhU6VfDsd6GvyS.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Atspeedslash(CQ81bZUe3tFL73Yo, CQWJN9f7bCYP2ycPdc, CQVsyvCLP8Xu8TcahPSs, CQYrdoIakrwq3Fxil)
{
	if(!CQ81bZUe3tFL73Yo)	return false
local CQSYyJqTiZ3zBxzOYWh = CQ81bZUe3tFL73Yo.getSkillSubState()
switch(CQSYyJqTiZ3zBxzOYWh)
	{
	case 0:
		MagicswordupOccur(CQ81bZUe3tFL73Yo, CQWJN9f7bCYP2ycPdc, CQVsyvCLP8Xu8TcahPSs, CQYrdoIakrwq3Fxil)
local CQfR96248Tid42zE = "character/atswordman/1_swordmaster/atspeedslash/ap_atspeedslash.nut"
local CQu2PcDHQQd2NWQSac = CNSquirrelAppendage.sq_AppendAppendage(CQWJN9f7bCYP2ycPdc, CQ81bZUe3tFL73Yo, -1, false, CQfR96248Tid42zE, true)
if(sq_IsHoldable(CQ81bZUe3tFL73Yo,CQWJN9f7bCYP2ycPdc) && sq_IsGrabable(CQ81bZUe3tFL73Yo,CQWJN9f7bCYP2ycPdc) && !sq_IsFixture(CQWJN9f7bCYP2ycPdc))
			if(CQu2PcDHQQd2NWQSac)
			{
				sq_HoldAndDelayDie(CQWJN9f7bCYP2ycPdc, CQ81bZUe3tFL73Yo, true, false, true, 200, 150, ENUM_DIRECTION_NEUTRAL, CQu2PcDHQQd2NWQSac)
local CQMKxAWmGKP4Z4qIPAUw = CQu2PcDHQQd2NWQSac.getAppendageInfo()
CQMKxAWmGKP4Z4qIPAUw.setValidTime(500)
}
		break
}
}


function onEnterFrame_Atspeedslash(CQnIXMlhcjlXMSqGG, CQGWej3MsoJDXlmA4PL)
{
	if(!CQnIXMlhcjlXMSqGG) return
local CQhb5QFi1GnpHGUK = CQnIXMlhcjlXMSqGG.getSkillSubState()
switch(CQhb5QFi1GnpHGUK)
	{
	case 3:

		break
case 4:

		break
}
}

function onEndState_Atspeedslash(CQphaOvbWgBwArUFRW, CQ345B9NLuWYJ3nZkC47)
{
	if(!CQphaOvbWgBwArUFRW) return
local CQqZaRZSnB6gSybHe = CQphaOvbWgBwArUFRW.getSkillSubState()
switch(CQqZaRZSnB6gSybHe)
	{
	case 3:

		break
case 4:

		break
}

}

function onChangeSkillEffect_Atspeedslash(CQKPkmEtAdE4s6bVuPr, CQ6yHan96tgCDDvL, CQenUXdCoCDDIzYGOWFD)
{
	if(!CQKPkmEtAdE4s6bVuPr || CQ6yHan96tgCDDvL != 145) return
if(CQKPkmEtAdE4s6bVuPr.getVar("Atspeedslash").getBool(0))
		return
CQKPkmEtAdE4s6bVuPr.getVar("Atspeedslash").setBool(0,true)
local CQXU1dPOBzcpoHYCB = CQKPkmEtAdE4s6bVuPr.getCurrentAnimation()
sq_SetAnimationCurrentTimeByFrame(CQXU1dPOBzcpoHYCB, 5, true)
}

function onProcCon_Atspeedslash(CQxkibwxzeZeOWcK2ck)
{
	if(!CQxkibwxzeZeOWcK2ck) return
local CQP6fpj6HZqYp4eN = CQxkibwxzeZeOWcK2ck.getSkillSubState()
switch(CQP6fpj6HZqYp4eN)
	{
	case 0:
		if(CQxkibwxzeZeOWcK2ck.getVar("Atspeedslash").getBool(0))
			return
local CQ9CuLMLfT2gtueXfx = CQxkibwxzeZeOWcK2ck.getCurrentAnimation()
local CQtSf7AwrQu5Elw2UPmn = CQxkibwxzeZeOWcK2ck.sq_GetCurrentFrameIndex(CQ9CuLMLfT2gtueXfx)
CQxkibwxzeZeOWcK2ck.setSkillCommandEnable(145, true)
if(CQxkibwxzeZeOWcK2ck.sq_IsEnterSkill(145) != -1 && CQtSf7AwrQu5Elw2UPmn < 4)
		{
			sq_BinaryStartWrite()
sq_SendChangeSkillEffectPacket(CQxkibwxzeZeOWcK2ck, 145)
}
		
		
		break
}
}

function onProc_Atspeedslash(CQBiSYrk2J9CyGwBw)
{
	if(!CQBiSYrk2J9CyGwBw) return
local CQvmYi63vjIBexQ5tWZ = CQBiSYrk2J9CyGwBw.getSkillSubState()
switch(CQvmYi63vjIBexQ5tWZ)
	{
	case 0:
		if(CQBiSYrk2J9CyGwBw.getVar("Atspeedslash").getBool(0))
			break
local CQDlCHJEZokHi2q1 = CQBiSYrk2J9CyGwBw.getVar("Atspeedslash").get_vector(0)
local CQR8r5iUjGHsrtq8Kc = CQBiSYrk2J9CyGwBw.getCurrentAnimation()
local CQiB7zYguRbWm5m4VA6g = sq_GetDelaySum(CQR8r5iUjGHsrtq8Kc)
local CQ1FIt7G7uVbYDUf1 = CQBiSYrk2J9CyGwBw.sq_GetStateTimer()
local CQUp7FKiqBekqzU75tt = sq_GetAccel(CQBiSYrk2J9CyGwBw.getXPos(), CQDlCHJEZokHi2q1, CQ1FIt7G7uVbYDUf1, CQiB7zYguRbWm5m4VA6g, false)
if(CQBiSYrk2J9CyGwBw.isMovablePos(CQUp7FKiqBekqzU75tt, CQBiSYrk2J9CyGwBw.getYPos()))
			sq_setCurrentAxisPos(CQBiSYrk2J9CyGwBw, 0, CQUp7FKiqBekqzU75tt)
break
}
}
