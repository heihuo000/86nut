
function checkExecutableSkill_Chainslash(CQvAtiYYqFrMH54GK)
{
	if (!CQvAtiYYqFrMH54GK) return false
local CQXcKYQXpVLpdXJg = CQvAtiYYqFrMH54GK.sq_IsUseSkill(32)
if (CQXcKYQXpVLpdXJg)
	{
		CheckUseAddloadDrawsword(CQvAtiYYqFrMH54GK,143,{[0] = true,[108] = true,[14] = true},0)
CQvAtiYYqFrMH54GK.sq_StopMove()
CQvAtiYYqFrMH54GK.sq_IntVectClear()
CQvAtiYYqFrMH54GK.sq_IntVectPush(0)
CQvAtiYYqFrMH54GK.sq_AddSetStatePacket(132, STATE_PRIORITY_IGNORE_FORCE, true)
local CQQOi2AO6EZ2mRfOfuE = 0
if(sq_GetSkillLevel(CQvAtiYYqFrMH54GK, 58) > 0)
			CQQOi2AO6EZ2mRfOfuE = 2
CQvAtiYYqFrMH54GK.getVar("Chainslash").clear_vector()
CQvAtiYYqFrMH54GK.getVar("Chainslash").push_vector(sq_GetLevelData(CQvAtiYYqFrMH54GK,32, 2, sq_GetSkillLevel(CQvAtiYYqFrMH54GK, 32))-1 + CQQOi2AO6EZ2mRfOfuE)
return true
}
	return false
}

function checkCommandEnable_Chainslash(CQLtRTezm2qLYOdH)
{
	if (!CQLtRTezm2qLYOdH) return false
if(CQLtRTezm2qLYOdH.getZPos() > 2)
		return false
return CheckForceDrawsword(CQLtRTezm2qLYOdH,143,{[0] = true,[108] = true,[14] = true})
}


function onSetState_Chainslash(CQlbuek6Bn1ATjdSwb, CQIhfA1IzouivV9KtNH7, CQ74SMuwHM9qlQ8Fo, CQr5YhYkfvIxhM8XIDl)
{
	if(!CQlbuek6Bn1ATjdSwb) return
local CQCXVQ7KrAkfxs7J = CQlbuek6Bn1ATjdSwb.sq_GetVectorData(CQ74SMuwHM9qlQ8Fo, 0)
CQlbuek6Bn1ATjdSwb.setSkillSubState(CQCXVQ7KrAkfxs7J)
CQlbuek6Bn1ATjdSwb.endSkillCoolTime(32)
CQlbuek6Bn1ATjdSwb.sq_IsEnterSkillLastKeyUnits(32)
CQlbuek6Bn1ATjdSwb.getVar("Chainslash").setBool(0,false)
CQlbuek6Bn1ATjdSwb.sq_SetMoveDirection(CQlbuek6Bn1ATjdSwb.getDirection(), ENUM_DIRECTION_NEUTRAL)
CQlbuek6Bn1ATjdSwb.sq_SetStaticMoveInfo(0, 400, -1000, false)
local CQcSrIKE3BH2jg6B1u = ["ChainSlash01_body","ChainSlash02_body","ChainSlash03_body","ChainSlash04_body","ChainSlash05_body","ChainSlashTP01_body","ChainSlashTP02_body"]
BodyMagicSword(CQlbuek6Bn1ATjdSwb, CQcSrIKE3BH2jg6B1u[CQCXVQ7KrAkfxs7J])
if(MagicSword_IsAppebd(CQlbuek6Bn1ATjdSwb))
		CQlbuek6Bn1ATjdSwb.sq_SetCurrentAnimation(202 + CQCXVQ7KrAkfxs7J)
else
	{
		if(sq_GetSkillLevel(CQlbuek6Bn1ATjdSwb, 148) > 0)
		{
			BodyCalldaimus(CQlbuek6Bn1ATjdSwb, CQcSrIKE3BH2jg6B1u[CQCXVQ7KrAkfxs7J])
CQlbuek6Bn1ATjdSwb.sq_SetCurrentAnimation(374 + CQCXVQ7KrAkfxs7J)
}
		else
			CQlbuek6Bn1ATjdSwb.sq_SetCurrentAnimation(26 + CQCXVQ7KrAkfxs7J)
}


	CQlbuek6Bn1ATjdSwb.sq_SetCurrentAttackInfo(0)
local CQAi7VoUbcbLdP6Z5NwP = CQlbuek6Bn1ATjdSwb.sq_GetBonusRateWithPassive(32, -1, 0, getATSwordmanBonus(CQlbuek6Bn1ATjdSwb,1.0,32))
CQlbuek6Bn1ATjdSwb.sq_SetCurrentAttackBonusRate(CQAi7VoUbcbLdP6Z5NwP)
if(CQlbuek6Bn1ATjdSwb.getWeaponSubType() == 3 && sq_GetSkillLevel(CQlbuek6Bn1ATjdSwb, 12) > 0)
		sq_SendMessage(CQlbuek6Bn1ATjdSwb, OBJECT_MESSAGE_SUPERARMOR, 1, 0)
CQlbuek6Bn1ATjdSwb.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Chainslash(CQdmIRv2POVAkm519)
{
	if(!CQdmIRv2POVAkm519) return
CQdmIRv2POVAkm519.sq_IntVectClear()
CQdmIRv2POVAkm519.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
}

function onEnterFrame_Chainslash(CQyT7UVGj6eifB4VbDC, CQN7saIuuz4q6wjL)
{
	if(!CQyT7UVGj6eifB4VbDC) return
local CQgVTXqR7spxR1hMWubn = CQyT7UVGj6eifB4VbDC.getSkillSubState()
switch(CQgVTXqR7spxR1hMWubn)
	{
	case 3:

		break
case 4:

		break
}
}

function onEndState_Chainslash(CQoDK9gNq4Rf7OhCi, CQ2oqbBAFkA22hg3JyJ)
{
	if(!CQoDK9gNq4Rf7OhCi) return
if(CQ2oqbBAFkA22hg3JyJ != 132)
	{
		CQoDK9gNq4Rf7OhCi.startSkillCoolTime(32, sq_GetSkillLevel(CQoDK9gNq4Rf7OhCi, 32), -1)
sq_SendMessage(CQoDK9gNq4Rf7OhCi, OBJECT_MESSAGE_SUPERARMOR, 0, 0)
}
}

function onProcCon_Chainslash(CQmq3pPYxEz5VARN)
{
	if(!CQmq3pPYxEz5VARN) return
ForceUse_ATSwordman(CQmq3pPYxEz5VARN,247,[0],247)
}
function onAttack_Chainslash(CQJloKz9a2LC3qR6Nv, CQk8274C1nmDBNf23D32, CQaBocGrWiMELed9z, CQ5FguyzLMteNgd5vue)
{
	if(!CQJloKz9a2LC3qR6Nv) return false
local CQwpFHxXhv7YZP9R = CQJloKz9a2LC3qR6Nv.getSkillSubState()
MagicswordupOccur(CQJloKz9a2LC3qR6Nv, CQk8274C1nmDBNf23D32, CQaBocGrWiMELed9z, CQ5FguyzLMteNgd5vue)
}
function onProc_Chainslash(CQZwv45sAAshGk87eb)
{
	if(!CQZwv45sAAshGk87eb) return
local CQlxBzEQ5Vj5XB8hADsH = CQZwv45sAAshGk87eb.getSkillSubState()
local CQIcttn5icFCHQ7d = CQZwv45sAAshGk87eb.getCurrentAnimation()
local CQ7f9DdJVOYFAMTTZu = CQZwv45sAAshGk87eb.sq_GetCurrentFrameIndex(CQIcttn5icFCHQ7d)
local CQr1t2Cpl6CEJITgBfIR = CQZwv45sAAshGk87eb.getVar("Chainslash").get_vector(0)
if(CQ7f9DdJVOYFAMTTZu > 3 && (CQZwv45sAAshGk87eb.isDownSkillLastKey() || sq_IsKeyDown(OPTION_HOTKEY_SKILL, ENUM_SUBKEY_TYPE_ALL)))
		CQZwv45sAAshGk87eb.getVar("Chainslash").setBool(0,true)
if(CQ7f9DdJVOYFAMTTZu > 6 && CQlxBzEQ5Vj5XB8hADsH < 6 && CQr1t2Cpl6CEJITgBfIR >0)
	{
		if(CQZwv45sAAshGk87eb.getVar("Chainslash").getBool(0))
		{
			if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL))
				CQZwv45sAAshGk87eb.sq_SetDirection(ENUM_DIRECTION_LEFT)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
				CQZwv45sAAshGk87eb.sq_SetDirection(ENUM_DIRECTION_RIGHT)
CQZwv45sAAshGk87eb.sq_IntVectClear()
CQZwv45sAAshGk87eb.sq_IntVectPush(CQlxBzEQ5Vj5XB8hADsH+1)
CQZwv45sAAshGk87eb.sq_AddSetStatePacket(132, STATE_PRIORITY_IGNORE_FORCE, true)
CQZwv45sAAshGk87eb.getVar("Chainslash").set_vector(0,CQr1t2Cpl6CEJITgBfIR - 1)
}
	}
}












