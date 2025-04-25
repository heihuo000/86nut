
function checkExecutableSkill_Splitdemonsword(CQSTTWK6uAwRn9Vi)
{
	if (!CQSTTWK6uAwRn9Vi) return false
local CQflKSoL7843xaVODT = CQSTTWK6uAwRn9Vi.sq_IsUseSkill(156)
if (CQflKSoL7843xaVODT)
	{
		CQSTTWK6uAwRn9Vi.sq_IntVectClear()
CQSTTWK6uAwRn9Vi.sq_IntVectPush(0)
CQSTTWK6uAwRn9Vi.sq_AddSetStatePacket(156, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Splitdemonsword(CQu8q1bQqxoZjRCEJsWn)
{
	if (!CQu8q1bQqxoZjRCEJsWn) return false
if(sq_GetSkillLevel(CQu8q1bQqxoZjRCEJsWn, 163) < 1)
	{
		local CQMNJj9kFIfSdZXuX = CQu8q1bQqxoZjRCEJsWn.sq_GetState()
if(CQMNJj9kFIfSdZXuX == 0 || CQMNJj9kFIfSdZXuX == 108 || CQMNJj9kFIfSdZXuX == 14)
			return true
else
			return false
}
	return true
}


function onSetState_Splitdemonsword(CQnGmwZ3x6PokUXINaM, CQGE2PQpaQlQfVZp, CQhwoBhU1aKc6EZAzQ, CQqxRgN2r3URRdLsvKRg)
{
	if(!CQnGmwZ3x6PokUXINaM) return
local CQKdDqPFKmN37sKFmTX = CQnGmwZ3x6PokUXINaM.sq_GetVectorData(CQhwoBhU1aKc6EZAzQ, 0)
CQnGmwZ3x6PokUXINaM.setSkillSubState(CQKdDqPFKmN37sKFmTX)
switch(CQKdDqPFKmN37sKFmTX)
	{
	case 0:
		CQnGmwZ3x6PokUXINaM.sq_StopMove()
CQnGmwZ3x6PokUXINaM.getVar().setBool(0,false)
BodyCalldaimus(CQnGmwZ3x6PokUXINaM, "splitdemonsword_body")
CQnGmwZ3x6PokUXINaM.sq_SetCurrentAnimation(435)
CQnGmwZ3x6PokUXINaM.sq_SetCurrentAttackInfo(97)
local CQTMvswubGWX2gKP = CQnGmwZ3x6PokUXINaM.sq_GetBonusRateWithPassive(156, -1, 0,getATSwordmanBonus(CQnGmwZ3x6PokUXINaM,1.0,156))
CQnGmwZ3x6PokUXINaM.sq_SetCurrentAttackBonusRate(CQTMvswubGWX2gKP)
break
}
	CQnGmwZ3x6PokUXINaM.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Splitdemonsword(CQsHBCjRP17S8X2JA5)
{
	if(!CQsHBCjRP17S8X2JA5) return
local CQ6avfMB5bao3m1DGQ6I = CQsHBCjRP17S8X2JA5.getSkillSubState()
switch(CQ6avfMB5bao3m1DGQ6I)
	{
	case 0:
		CQsHBCjRP17S8X2JA5.sq_IntVectClear()
CQsHBCjRP17S8X2JA5.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Splitdemonsword(CQeeVnuAiDhaBB1ZZ, CQXcWEcYVdDr4aMH9Tt, CQxf8L69lYcvNRNV, CQP1O8JXGPXjZONLTk)
{
	if(!CQeeVnuAiDhaBB1ZZ)	return false
local CQ9Jzvird8Q6MnBNcaAe = CQeeVnuAiDhaBB1ZZ.getSkillSubState()
Calldaimus_onAttack(CQeeVnuAiDhaBB1ZZ,CQXcWEcYVdDr4aMH9Tt, CQxf8L69lYcvNRNV, CQP1O8JXGPXjZONLTk)
switch(CQ9Jzvird8Q6MnBNcaAe)
	{
	case 0:
		if(sq_IsHoldable(CQeeVnuAiDhaBB1ZZ,CQXcWEcYVdDr4aMH9Tt) && sq_IsGrabable(CQeeVnuAiDhaBB1ZZ,CQXcWEcYVdDr4aMH9Tt) && !sq_IsFixture(CQXcWEcYVdDr4aMH9Tt))
		{
			local CQtILiYzex2VXCVXn = "character/atswordman/2_demonslayer/splitdemonsword/ap_splitdemonsword.nut"
local CQBWQJC51IuGHqVJEQg = CNSquirrelAppendage.sq_AppendAppendage(CQXcWEcYVdDr4aMH9Tt, CQeeVnuAiDhaBB1ZZ, -1, false, CQtILiYzex2VXCVXn, true)
local CQvtL6ssY6daAdCB = 400
local CQDbQxmQLQOrJsXZFT = 250
if(CQeeVnuAiDhaBB1ZZ.getVar().getBool(0))
			{
				CQvtL6ssY6daAdCB = 170
CQDbQxmQLQOrJsXZFT = 300
}
			if(CQBWQJC51IuGHqVJEQg)
			{
				
				sq_MoveToAppendageForce(CQXcWEcYVdDr4aMH9Tt, CQeeVnuAiDhaBB1ZZ, CQeeVnuAiDhaBB1ZZ, CQvtL6ssY6daAdCB, 0, CQXcWEcYVdDr4aMH9Tt.getZPos(), CQDbQxmQLQOrJsXZFT, true, CQBWQJC51IuGHqVJEQg,true)
local CQRh4yR4haTbSgX1Kab8 = CQBWQJC51IuGHqVJEQg.getAppendageInfo()
CQRh4yR4haTbSgX1Kab8.setValidTime(CQDbQxmQLQOrJsXZFT)
}
		}
		break
case 1:

		break
}

}

function onEnterFrame_Splitdemonsword(CQi4pGBJy3HjsX5V7, CQ1Zh3Op6mn6Dm44fQJ)
{
	if(!CQi4pGBJy3HjsX5V7) return
local CQUPGlljmGBBOV4M = CQi4pGBJy3HjsX5V7.getSkillSubState()
switch(CQ1Zh3Op6mn6Dm44fQJ)
	{
	case 7:
		CQi4pGBJy3HjsX5V7.resetHitObjectList()
CQi4pGBJy3HjsX5V7.getVar().setBool(0,true)
sq_SetMyShake(CQi4pGBJy3HjsX5V7,3,200)
CQi4pGBJy3HjsX5V7.sq_SetCurrentAttackInfo(98)
local CQHynr31D1rGpQ37xq = CQi4pGBJy3HjsX5V7.sq_GetBonusRateWithPassive(156, -1, 0,getATSwordmanBonus(CQi4pGBJy3HjsX5V7,1.0,156))
CQi4pGBJy3HjsX5V7.sq_SetCurrentAttackBonusRate(CQHynr31D1rGpQ37xq)
break
}
}

function onEndState_Splitdemonsword(CQjnFSFFzb5aPf33yK3C, CQQjb1tnEDprEI2dp)
{
	if(!CQjnFSFFzb5aPf33yK3C) return
local CQL5Njzffdgyyh16 = CQjnFSFFzb5aPf33yK3C.getSkillSubState()
switch(CQL5Njzffdgyyh16)
	{
	case 3:

		break
case 4:

		break
}

}

function onProc_Splitdemonsword(CQZhcC1UskrsCuvKc)
{
	if(!CQZhcC1UskrsCuvKc) return
local CQ784rCAP9xso6TlVHGs = CQZhcC1UskrsCuvKc.getSkillSubState()
}

function onKeyFrameFlag_Splitdemonsword(CQb5mXT9dR8T6K76ktX, CQaNQEa9JGZWDkxAsBc4)
{
	if (!CQb5mXT9dR8T6K76ktX) return false
switch(CQaNQEa9JGZWDkxAsBc4)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Splitdemonsword(CQgY2xVCwrXC4cQjT4Rn)
{
	if(!CQgY2xVCwrXC4cQjT4Rn) return
local CQoRoyIOHZQDN3qf = CQgY2xVCwrXC4cQjT4Rn.getSkillSubState()
switch(CQoRoyIOHZQDN3qf)
	{
	case 0:

		break
}
}