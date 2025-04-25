
function checkExecutableSkill_Timeslash(CQkfnKkrPwNikC99kz3a)
{
	if (!CQkfnKkrPwNikC99kz3a) return false
local CQa1N6185sWqYq95x = CQkfnKkrPwNikC99kz3a.sq_IsUseSkill(142)
if (CQa1N6185sWqYq95x)
	{
		CheckUseAddloadDrawsword(CQkfnKkrPwNikC99kz3a,142, {[0] = true,[108] = true,[14] = true},0)
CQkfnKkrPwNikC99kz3a.sq_IntVectClear()
CQkfnKkrPwNikC99kz3a.sq_IntVectPush(0)
CQkfnKkrPwNikC99kz3a.sq_AddSetStatePacket(142, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Timeslash(CQ5JyrSZU47zTN8Rn7e)
{
	if (!CQ5JyrSZU47zTN8Rn7e) return false
if(CQ5JyrSZU47zTN8Rn7e.getZPos() > 10)
		return false
return CheckForceDrawsword(CQ5JyrSZU47zTN8Rn7e,142, {[0] = true,[108] = true,[14] = true})
}


function onSetState_Timeslash(CQwsNSrsVmadRs78, CQZryMTllEh2lg7jOX, CQzY9j25p2DLgP6fDwIQ, CQOgPwoJdncP8k57J)
{
	if(!CQwsNSrsVmadRs78) return
local CQ73xOvqeFXihV5hXld = CQwsNSrsVmadRs78.sq_GetVectorData(CQzY9j25p2DLgP6fDwIQ, 0)
CQwsNSrsVmadRs78.setSkillSubState(CQ73xOvqeFXihV5hXld)
switch(CQ73xOvqeFXihV5hXld)
	{
	case 0:
		CQwsNSrsVmadRs78.sq_StopMove()
BodyMagicSword(CQwsNSrsVmadRs78, "TimeslashStart")
if(MagicSword_IsAppebd(CQwsNSrsVmadRs78))
			CQwsNSrsVmadRs78.sq_SetCurrentAnimation(328)
else
			CQwsNSrsVmadRs78.sq_SetCurrentAnimation(106)
CQwsNSrsVmadRs78.sq_SetCurrentAttackInfo(0)
local CQrLXB8j2MQq9Q4dfILJ = CQwsNSrsVmadRs78.sq_GetBonusRateWithPassive(142, -1, 0,getATSwordmanBonus(CQwsNSrsVmadRs78,1.0,142))
CQwsNSrsVmadRs78.sq_SetCurrentAttackBonusRate(CQrLXB8j2MQq9Q4dfILJ)
if(sq_GetSkillLevel(CQwsNSrsVmadRs78, 142) > 2)
			sq_SendMessage(CQwsNSrsVmadRs78, OBJECT_MESSAGE_INVINCIBLE, 1, 0)
break
case 1:
		BodyMagicSword(CQwsNSrsVmadRs78, "TimeslashCharge")
if(MagicSword_IsAppebd(CQwsNSrsVmadRs78))
			CQwsNSrsVmadRs78.sq_SetCurrentAnimation(324)
else
			CQwsNSrsVmadRs78.sq_SetCurrentAnimation(108)
CQwsNSrsVmadRs78.sq_SetCurrentAttackInfo(0)
local CQrLXB8j2MQq9Q4dfILJ = CQwsNSrsVmadRs78.sq_GetBonusRateWithPassive(142, -1, 0, getATSwordmanBonus(CQwsNSrsVmadRs78,1.0,142))
CQwsNSrsVmadRs78.sq_SetCurrentAttackBonusRate(CQrLXB8j2MQq9Q4dfILJ)
break
case 2:
		BodyMagicSword(CQwsNSrsVmadRs78, "TimeslashSlash")
if(MagicSword_IsAppebd(CQwsNSrsVmadRs78))
			CQwsNSrsVmadRs78.sq_SetCurrentAnimation(327)
else
			CQwsNSrsVmadRs78.sq_SetCurrentAnimation(109)
CQwsNSrsVmadRs78.sq_SetCurrentAttackInfo(0)
local CQrLXB8j2MQq9Q4dfILJ = CQwsNSrsVmadRs78.sq_GetBonusRateWithPassive(142, -1, 0, getATSwordmanBonus(CQwsNSrsVmadRs78,1.0,142))
CQwsNSrsVmadRs78.sq_SetCurrentAttackBonusRate(CQrLXB8j2MQq9Q4dfILJ)
if(sq_GetSkillLevel(CQwsNSrsVmadRs78, 142) < 2)
			break
local CQAywsbnh9d25h2x = "character/atswordman/1_swordmaster/timeslash/ap_devilslash.nut"
local CQdn5XBMycOLMAgkoz = CNSquirrelAppendage.sq_AppendAppendage(CQwsNSrsVmadRs78, CQwsNSrsVmadRs78, -1, false, CQAywsbnh9d25h2x, false)
local CQyjadODXOTCXqRvsIWE = sq_GetLevelData(CQwsNSrsVmadRs78,142, 3, sq_GetSkillLevel(CQwsNSrsVmadRs78, 142))
local CQF5knQym6HD1NfzS = sq_GetLevelData(CQwsNSrsVmadRs78,142, 6, sq_GetSkillLevel(CQwsNSrsVmadRs78, 142))
if (CQdn5XBMycOLMAgkoz != null)
		{
			CQdn5XBMycOLMAgkoz.sq_SetValidTime(CQyjadODXOTCXqRvsIWE)
CQdn5XBMycOLMAgkoz.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(CQwsNSrsVmadRs78), 142, sq_GetSkillLevel(CQwsNSrsVmadRs78, 142))
CQdn5XBMycOLMAgkoz.setEnableIsBuff(true)
CNSquirrelAppendage.sq_Append(CQdn5XBMycOLMAgkoz, CQwsNSrsVmadRs78, CQwsNSrsVmadRs78, true)
if(sq_GetSkillLevel(CQwsNSrsVmadRs78, 142) < 8)
				break
local CQgXHphdDwbpCefU = CQdn5XBMycOLMAgkoz.sq_getChangeStatus("Timeslash")
if(!CQgXHphdDwbpCefU)
			{
				CQgXHphdDwbpCefU = CQdn5XBMycOLMAgkoz.sq_AddChangeStatus("Timeslash",CQwsNSrsVmadRs78, CQwsNSrsVmadRs78, 0, 49, false, CQF5knQym6HD1NfzS )
}
			if(CQgXHphdDwbpCefU)
			{
				CQF5knQym6HD1NfzS = CQF5knQym6HD1NfzS * -0.01
CQgXHphdDwbpCefU.clearParameter()
CQgXHphdDwbpCefU.addParameter(49, false, CQF5knQym6HD1NfzS.tofloat())
}
		}
		break
case 3:
		BodyMagicSword(CQwsNSrsVmadRs78, "TimeslashExp")
if(MagicSword_IsAppebd(CQwsNSrsVmadRs78))
			CQwsNSrsVmadRs78.sq_SetCurrentAnimation(326)
else
			CQwsNSrsVmadRs78.sq_SetCurrentAnimation(110)
CQwsNSrsVmadRs78.sq_SetCurrentAttackInfo(0)
local CQrLXB8j2MQq9Q4dfILJ = CQwsNSrsVmadRs78.sq_GetBonusRateWithPassive(142, -1, 0, getATSwordmanBonus(CQwsNSrsVmadRs78,1.0,142))
CQwsNSrsVmadRs78.sq_SetCurrentAttackBonusRate(CQrLXB8j2MQq9Q4dfILJ)
if(CQwsNSrsVmadRs78.isMyControlObject())
		{
			CQwsNSrsVmadRs78.sq_SetShake(CQwsNSrsVmadRs78,8,250)
sq_setFullScreenEffect(CQwsNSrsVmadRs78,"character/swordman/effect/animation/attimeslash/finish_timeslash_crack.ani")
}
		break
}
	CQwsNSrsVmadRs78.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Timeslash(CQ2u17APE4rYVO9Q9wm9)
{
	if(!CQ2u17APE4rYVO9Q9wm9) return
local CQmUUYxcMm5gKj9bg = CQ2u17APE4rYVO9Q9wm9.getSkillSubState()
switch(CQmUUYxcMm5gKj9bg)
	{
	case 0:
		CQ2u17APE4rYVO9Q9wm9.sq_IntVectClear()
CQ2u17APE4rYVO9Q9wm9.sq_IntVectPush(1)
CQ2u17APE4rYVO9Q9wm9.sq_AddSetStatePacket(142, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQ2u17APE4rYVO9Q9wm9.sq_IntVectClear()
CQ2u17APE4rYVO9Q9wm9.sq_IntVectPush(2)
CQ2u17APE4rYVO9Q9wm9.sq_AddSetStatePacket(142, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQ2u17APE4rYVO9Q9wm9.sq_IntVectClear()
CQ2u17APE4rYVO9Q9wm9.sq_IntVectPush(3)
CQ2u17APE4rYVO9Q9wm9.sq_AddSetStatePacket(142, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQ2u17APE4rYVO9Q9wm9.sq_IntVectClear()
CQ2u17APE4rYVO9Q9wm9.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Timeslash(CQJk1i57rHp5DS8xTlZ, CQk7uHHZK2gCLQ7m, CQaVf5uegnSDFM7vi6, CQ5DSxcTODeEOr6waeXS)
{
	if(!CQJk1i57rHp5DS8xTlZ)	return false
local CQwoYt644f4eGh5UP = CQJk1i57rHp5DS8xTlZ.getSkillSubState()
MagicswordupOccur(CQJk1i57rHp5DS8xTlZ, CQk7uHHZK2gCLQ7m, CQaVf5uegnSDFM7vi6, CQ5DSxcTODeEOr6waeXS)
switch(CQwoYt644f4eGh5UP)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Timeslash(CQZqCFaanvpYAP5WNzv, CQzlr3UmCARhakjQ)
{
	if(!CQZqCFaanvpYAP5WNzv) return
local CQO8CTR3T8A5uBhu77 = CQZqCFaanvpYAP5WNzv.getSkillSubState()
switch(CQO8CTR3T8A5uBhu77)
	{
	case 1:
		if(CQzlr3UmCARhakjQ == 4)
		{

		}
		break
case 2:
		if(CQzlr3UmCARhakjQ == 1 || CQzlr3UmCARhakjQ == 6 || CQzlr3UmCARhakjQ == 11)
		{
			CQZqCFaanvpYAP5WNzv.sq_StartWrite()
CQZqCFaanvpYAP5WNzv.sq_WriteDword(142)
CQZqCFaanvpYAP5WNzv.sq_WriteDword(0)
CQZqCFaanvpYAP5WNzv.sq_WriteDword(CQZqCFaanvpYAP5WNzv.sq_GetBonusRateWithPassive(142, -1, 0, getATSwordmanBonus(CQZqCFaanvpYAP5WNzv,1.0,142)))
CQZqCFaanvpYAP5WNzv.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 0)
}
		else if(CQzlr3UmCARhakjQ == 19 || CQzlr3UmCARhakjQ == 21 || CQzlr3UmCARhakjQ == 24)
		{

		}
		break
case 3:
		if(CQzlr3UmCARhakjQ == 0 && CQZqCFaanvpYAP5WNzv.isMyControlObject())
		{
			local CQ8BrrVHFczCswhrRsty = CQZqCFaanvpYAP5WNzv.getVar()
local CQWN7AIo9OKDi1gpm = sq_flashScreen(CQZqCFaanvpYAP5WNzv,0,1060,103,255,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_NORMAL)
CQ8BrrVHFczCswhrRsty.setObject(0,CQWN7AIo9OKDi1gpm)
CQZqCFaanvpYAP5WNzv.sq_StartWrite()
CQZqCFaanvpYAP5WNzv.sq_WriteDword(142)
CQZqCFaanvpYAP5WNzv.sq_WriteDword(1)
CQZqCFaanvpYAP5WNzv.sq_WriteDword(CQZqCFaanvpYAP5WNzv.sq_GetBonusRateWithPassive(142, -1, 1, getATSwordmanBonus(CQZqCFaanvpYAP5WNzv,1.0,142)))
CQZqCFaanvpYAP5WNzv.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 0)
}
		break
}
}

function onEndState_Timeslash(CQVGsMqgw6mHrOgyew1, CQYETj2M1QMsojRs)
{
	if(!CQVGsMqgw6mHrOgyew1) return
if(CQYETj2M1QMsojRs != 142)
	{
		if(sq_GetSkillLevel(CQVGsMqgw6mHrOgyew1, 142) > 2)
			sq_SendMessage(CQVGsMqgw6mHrOgyew1, OBJECT_MESSAGE_INVINCIBLE, 0, 0)
local CQSwKQDDYstWWSfopl = CQVGsMqgw6mHrOgyew1.getVar().getObject(0)
if(CQSwKQDDYstWWSfopl)
		{
			local CQfxqOWvI47nqQfPLIgY = sq_GetCNRDObjectToFlashScreen(CQSwKQDDYstWWSfopl)
if(CQfxqOWvI47nqQfPLIgY)
				CQfxqOWvI47nqQfPLIgY.fadeOut()
}
	}

}


function onKeyFrameFlag_Timeslash(CQud3BldgmsktNdaB, CQG1mR3VtGj7Qe9i)
{
	if (!CQud3BldgmsktNdaB) return false
local CQhJ2mGWZ2FNb29O6Z = CQud3BldgmsktNdaB.getSkillSubState()
switch(CQG1mR3VtGj7Qe9i)
	{
	case 1:
		if(CQhJ2mGWZ2FNb29O6Z != 3)
		{
			CQud3BldgmsktNdaB.sq_SetShake(CQud3BldgmsktNdaB,4,150)
sq_flashScreen(CQud3BldgmsktNdaB,0,60,0,102,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_COVER)
}
		break
}
	return true
}


function onProcCon_Timeslash(CQpsosbxUnYHwP8Ecz8K)
{
	if(!CQpsosbxUnYHwP8Ecz8K) return
local CQ3rgX97SDXsnklAn = CQpsosbxUnYHwP8Ecz8K.getSkillSubState()
switch(CQ3rgX97SDXsnklAn)
	{
	case 0:

		break
}
}

function onProc_Timeslash(CQqYFdZIldwtxDlsQly)
{
	if(!CQqYFdZIldwtxDlsQly) return
local CQKRvbEwpv3nUwTF = CQqYFdZIldwtxDlsQly.getSkillSubState()
}
