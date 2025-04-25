
function checkExecutableSkill_Snakedance(CQJzhJS4qNWbRoA2ZQ7)
{
	if (!CQJzhJS4qNWbRoA2ZQ7) return false
local CQk9F6cHNv6j79P99L = CQJzhJS4qNWbRoA2ZQ7.sq_IsUseSkill(167)
if (CQk9F6cHNv6j79P99L)
	{
		CQJzhJS4qNWbRoA2ZQ7.sq_IntVectClear()
CQJzhJS4qNWbRoA2ZQ7.sq_IntVectPush(0)
CQJzhJS4qNWbRoA2ZQ7.sq_AddSetStatePacket(167, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Snakedance(CQaNbc6oxAa62aP5hqbZ)
{
	if (!CQaNbc6oxAa62aP5hqbZ) return false
if(sq_GetSkillLevel(CQaNbc6oxAa62aP5hqbZ, 163) < 1)
	{
		local CQ5GNyJhJ8hB8vORl = CQaNbc6oxAa62aP5hqbZ.sq_GetState()
if(CQ5GNyJhJ8hB8vORl == 0 || CQ5GNyJhJ8hB8vORl == 108 || CQ5GNyJhJ8hB8vORl == 14)
			return true
else
			return false
}
	return true
}


function onSetState_Snakedance(CQwEbGoMfxDG3ZZ8YkJ, CQZwN4vDrOcaNnLj, CQzctl8b36ZWZ7Kfa4, CQOf9WIdblQbMpK7PQ2s)
{
	if(!CQwEbGoMfxDG3ZZ8YkJ) return
local CQ81PSqSPa2jXdJhG = CQwEbGoMfxDG3ZZ8YkJ.sq_GetVectorData(CQzctl8b36ZWZ7Kfa4, 0)
CQwEbGoMfxDG3ZZ8YkJ.setSkillSubState(CQ81PSqSPa2jXdJhG)
switch(CQ81PSqSPa2jXdJhG)
	{
	case 0:
		CQwEbGoMfxDG3ZZ8YkJ.sq_StopMove()
CQwEbGoMfxDG3ZZ8YkJ.sq_PlaySound("SW_SNAKEDANCE_01")
BodyCalldaimus(CQwEbGoMfxDG3ZZ8YkJ, "snakedance1")
CQwEbGoMfxDG3ZZ8YkJ.sq_SetCurrentAnimation(455)
CQwEbGoMfxDG3ZZ8YkJ.sq_SetCurrentAttackInfo(112)
local CQWJx1gtk4u6HsHd4Tw = CQwEbGoMfxDG3ZZ8YkJ.sq_GetBonusRateWithPassive(167, -1, 0,getATSwordmanBonus(CQwEbGoMfxDG3ZZ8YkJ,1.0,167))
CQwEbGoMfxDG3ZZ8YkJ.sq_SetCurrentAttackBonusRate(CQWJx1gtk4u6HsHd4Tw)
break
case 1:
		CQwEbGoMfxDG3ZZ8YkJ.sq_PlaySound("SW_SNAKEDANCE_02")
BodyCalldaimus(CQwEbGoMfxDG3ZZ8YkJ, "snakedance2")
CQwEbGoMfxDG3ZZ8YkJ.sq_SetCurrentAnimation(456)
CQwEbGoMfxDG3ZZ8YkJ.sq_SetCurrentAttackInfo(113)
local CQWJx1gtk4u6HsHd4Tw = CQwEbGoMfxDG3ZZ8YkJ.sq_GetBonusRateWithPassive(167, -1, 1, getATSwordmanBonus(CQwEbGoMfxDG3ZZ8YkJ,1.0,167))
CQwEbGoMfxDG3ZZ8YkJ.sq_SetCurrentAttackBonusRate(CQWJx1gtk4u6HsHd4Tw)
break
case 2:
		CQwEbGoMfxDG3ZZ8YkJ.sq_PlaySound("SW_SNAKEDANCE_03")
BodyCalldaimus(CQwEbGoMfxDG3ZZ8YkJ, "snakedance3")
CQwEbGoMfxDG3ZZ8YkJ.sq_SetCurrentAnimation(457)
CQwEbGoMfxDG3ZZ8YkJ.sq_SetCurrentAttackInfo(114)
local CQWJx1gtk4u6HsHd4Tw = CQwEbGoMfxDG3ZZ8YkJ.sq_GetBonusRateWithPassive(167, -1, 2, getATSwordmanBonus(CQwEbGoMfxDG3ZZ8YkJ,1.0,167))
CQwEbGoMfxDG3ZZ8YkJ.sq_SetCurrentAttackBonusRate(CQWJx1gtk4u6HsHd4Tw)
break
}
	CQwEbGoMfxDG3ZZ8YkJ.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Snakedance(CQSYZPQOQ1TaSmFzkwsz)
{
	if(!CQSYZPQOQ1TaSmFzkwsz) return
local CQfRwN3eGnHOK9Fje = CQSYZPQOQ1TaSmFzkwsz.getSkillSubState()
switch(CQfRwN3eGnHOK9Fje)
	{
	case 0:
		CQSYZPQOQ1TaSmFzkwsz.sq_IntVectClear()
CQSYZPQOQ1TaSmFzkwsz.sq_IntVectPush(1)
CQSYZPQOQ1TaSmFzkwsz.sq_AddSetStatePacket(167, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQSYZPQOQ1TaSmFzkwsz.sq_IntVectClear()
CQSYZPQOQ1TaSmFzkwsz.sq_IntVectPush(2)
CQSYZPQOQ1TaSmFzkwsz.sq_AddSetStatePacket(167, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQSYZPQOQ1TaSmFzkwsz.sq_IntVectClear()
CQSYZPQOQ1TaSmFzkwsz.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Snakedance(CQu25gG6cDbyDEDYuQ9, CQMKaqyLaNVUIfSl, CQnLjsxa1vrlFLSnOT, CQGOHC5kWA59OnCcBax7)
{
	if(!CQu25gG6cDbyDEDYuQ9)	return false
local CQhtUfH3L8pMpCXq2 = CQu25gG6cDbyDEDYuQ9.getSkillSubState()
Calldaimus_onAttack(CQu25gG6cDbyDEDYuQ9,CQMKaqyLaNVUIfSl, CQnLjsxa1vrlFLSnOT, CQGOHC5kWA59OnCcBax7)
}

function onEnterFrame_Snakedance(CQpbHnnHhxRKtpXb6QD, CQKhnEdUAOSOEdZefL)
{
	if(!CQpbHnnHhxRKtpXb6QD) return
local CQT5MZXg66xyysZmUTji = CQpbHnnHhxRKtpXb6QD.getSkillSubState()
switch(CQT5MZXg66xyysZmUTji)
	{
	case 3:

		break
case 4:

		break
}
}

function onEndState_Snakedance(CQaXu8aGoQLmwvLv, CQ5AfvUiBamluZKwt5)
{
	if(!CQaXu8aGoQLmwvLv) return
local CQwuSoRvz4M9eUKUoaUN = CQaXu8aGoQLmwvLv.getSkillSubState()
switch(CQwuSoRvz4M9eUKUoaUN)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onProc_Snakedance(CQZUcJSNHmy1UVJWK)
{
	if(!CQZUcJSNHmy1UVJWK) return
local CQzkC6rSfp8KrEHQVQL = CQZUcJSNHmy1UVJWK.getSkillSubState()
}

function onKeyFrameFlag_Snakedance(CQO6cxTWe1sOmfHu, CQ8CCy292njSYIGr5T)
{
	if (!CQO6cxTWe1sOmfHu) return false
switch(CQ8CCy292njSYIGr5T)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Snakedance(CQWSrGDCvDGoqnNpxa5D)
{
	if(!CQWSrGDCvDGoqnNpxa5D) return
local CQVi63WIONvQvCNtb = CQWSrGDCvDGoqnNpxa5D.getSkillSubState()
switch(CQVi63WIONvQvCNtb)
	{
	case 0:

		break
}
}