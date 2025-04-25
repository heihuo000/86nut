

function checkExecutableSkill_Autoguard(CQcfDR4sij81f5wc)
{
	if (!CQcfDR4sij81f5wc) return false
local CQA2vmGQVosK6iwTv9 = CQcfDR4sij81f5wc.sq_IsUseSkill(126)
if (CQA2vmGQVosK6iwTv9)
	{
		CheckUseAddloadDrawsword(CQcfDR4sij81f5wc,126, {[0] = true,[108] = true,[14] = true},0)
CQcfDR4sij81f5wc.sq_IntVectClear()
CQcfDR4sij81f5wc.sq_IntVectPush(0)
CQcfDR4sij81f5wc.sq_AddSetStatePacket(126, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Autoguard(CQ9KBayklGjP1lQbmtl)
{
	if (!CQ9KBayklGjP1lQbmtl) return false
if(CQ9KBayklGjP1lQbmtl.getZPos() > 10)
		return false
return CheckForceDrawsword(CQ9KBayklGjP1lQbmtl,126, {[0] = true,[108] = true,[14] = true})
}


function onSetState_Autoguard(CQtItX9KGRFu7Gqx, CQBW9dXpduYm2cqmAW, CQvvWbajsBCzVKmvGCwe, CQDg8pU22dwd3yizZ)
{
	if(!CQtItX9KGRFu7Gqx) return
local CQR3OKfFYW31B6iU9PV = CQtItX9KGRFu7Gqx.sq_GetVectorData(CQvvWbajsBCzVKmvGCwe, 0)
CQtItX9KGRFu7Gqx.setSkillSubState(CQR3OKfFYW31B6iU9PV)
switch(CQR3OKfFYW31B6iU9PV)
	{
	case 0:
		CQtItX9KGRFu7Gqx.sq_StopMove()
BodyMagicSword(CQtItX9KGRFu7Gqx, "AutoGuardCast1")
if(MagicSword_IsAppebd(CQtItX9KGRFu7Gqx))
			CQtItX9KGRFu7Gqx.sq_SetCurrentAnimation(231)
else
			CQtItX9KGRFu7Gqx.sq_SetCurrentAnimation(74)
local CQiLz7CnLCiLLouY  = sq_GetCastTime(CQtItX9KGRFu7Gqx, 126, sq_GetSkillLevel(CQtItX9KGRFu7Gqx, 126))
local CQ1OZYeRhzfPNxyQTW = sq_GetCurrentAnimation(CQtItX9KGRFu7Gqx)
local CQUtQukByePuZJybcVVz = sq_GetFrameStartTime(CQ1OZYeRhzfPNxyQTW, 4)
local CQHb4H1y6LlqHYteu = CQUtQukByePuZJybcVVz.tofloat() / CQiLz7CnLCiLLouY.tofloat()
sq_StartDrawCastGauge(CQtItX9KGRFu7Gqx, CQUtQukByePuZJybcVVz, true)
CQtItX9KGRFu7Gqx.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, CQHb4H1y6LlqHYteu, CQHb4H1y6LlqHYteu)
break
case 1:
		BodyMagicSword(CQtItX9KGRFu7Gqx, "AutoGuardCast2")
if(MagicSword_IsAppebd(CQtItX9KGRFu7Gqx))
			CQtItX9KGRFu7Gqx.sq_SetCurrentAnimation(232)
else
			CQtItX9KGRFu7Gqx.sq_SetCurrentAnimation(75)
local CQjhE5SYmTJzC4WmaAn = sq_GetLevelData(CQtItX9KGRFu7Gqx,126, 1, sq_GetSkillLevel(CQtItX9KGRFu7Gqx, 126))
local CQE44zr9DEUdJuWt = "character/atswordman/1_swordmaster/autoguard/ap_autoguard.nut"
local CQ45EtlPzJN1S7rwFt = CNSquirrelAppendage.sq_AppendAppendage(CQtItX9KGRFu7Gqx, CQtItX9KGRFu7Gqx, -1, false, CQE44zr9DEUdJuWt, false)
CQ45EtlPzJN1S7rwFt.sq_SetValidTime(CQjhE5SYmTJzC4WmaAn)
CQ45EtlPzJN1S7rwFt.setEnableIsBuff(true)
CQ45EtlPzJN1S7rwFt.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(CQtItX9KGRFu7Gqx), 126, sq_GetSkillLevel(CQtItX9KGRFu7Gqx, 126))
CNSquirrelAppendage.sq_Append(CQ45EtlPzJN1S7rwFt, CQtItX9KGRFu7Gqx, CQtItX9KGRFu7Gqx, true)
CQ45EtlPzJN1S7rwFt.setBuffIconImage(57)
CQtItX9KGRFu7Gqx.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
case 2:
		CQtItX9KGRFu7Gqx.sq_StopMove()
CQtItX9KGRFu7Gqx.sq_SetDirection(CQtItX9KGRFu7Gqx.getVar("ATSwordman_Autoguard").getInt(0))
BodyMagicSword(CQtItX9KGRFu7Gqx, "AutoGuard")
if(MagicSword_IsAppebd(CQtItX9KGRFu7Gqx))
			CQtItX9KGRFu7Gqx.sq_SetCurrentAnimation(230)
else
			CQtItX9KGRFu7Gqx.sq_SetCurrentAnimation(76)
CQtItX9KGRFu7Gqx.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
sq_SendMessage(CQtItX9KGRFu7Gqx, OBJECT_MESSAGE_SUPERARMOR, 1, 0)
local CQQChDKrEhWLKGei38iX = "character/atswordman/guard/ap_guard.nut"
if(CNSquirrelAppendage.sq_IsAppendAppendage(CQtItX9KGRFu7Gqx, CQQChDKrEhWLKGei38iX))
			break
local CQ45EtlPzJN1S7rwFt = CNSquirrelAppendage.sq_AppendAppendage(CQtItX9KGRFu7Gqx, CQtItX9KGRFu7Gqx, -1, false, CQQChDKrEhWLKGei38iX, false)
if (CQ45EtlPzJN1S7rwFt != null)
		{
			CQ45EtlPzJN1S7rwFt.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(CQtItX9KGRFu7Gqx), 85, sq_GetSkillLevel(CQtItX9KGRFu7Gqx, 85))
CNSquirrelAppendage.sq_Append(CQ45EtlPzJN1S7rwFt, CQtItX9KGRFu7Gqx, CQtItX9KGRFu7Gqx, true)
}
		break
}
}

function onEndCurrentAni_Autoguard(CQ7inTvZrMESIKwE)
{
	if(!CQ7inTvZrMESIKwE) return
local CQrmMe8sKRhpoyaukc = CQ7inTvZrMESIKwE.getSkillSubState()
switch(CQrmMe8sKRhpoyaukc)
	{
	case 0:
		CQ7inTvZrMESIKwE.sq_IntVectClear()
CQ7inTvZrMESIKwE.sq_IntVectPush(1)
CQ7inTvZrMESIKwE.sq_AddSetStatePacket(126, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQ7inTvZrMESIKwE.sq_IntVectClear()
CQ7inTvZrMESIKwE.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQ7inTvZrMESIKwE.sq_IntVectClear()
CQ7inTvZrMESIKwE.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onEnterFrame_Autoguard(CQCTyALQvyDwO5EIePri, CQc7dMp4OBccpippy)
{
	if(!CQCTyALQvyDwO5EIePri) return
local CQAVyhgJ4cZgt8pypWN = CQCTyALQvyDwO5EIePri.getSkillSubState()
switch(CQAVyhgJ4cZgt8pypWN)
	{
	case 3:

		break
case 4:

		break
}
}

function onEndState_Autoguard(CQdDdQBquWQ4EHos, CQyoAOOhCX2XyYioVc)
{
	if(!CQdDdQBquWQ4EHos) return
sq_SendMessage(CQdDdQBquWQ4EHos, OBJECT_MESSAGE_SUPERARMOR, 0, 0)
local CQNqxVw1qzuDwLiP2Adh = CQdDdQBquWQ4EHos.getSkillSubState()
switch(CQNqxVw1qzuDwLiP2Adh)
	{
	case 0:
		sq_EndDrawCastGauge(CQdDdQBquWQ4EHos)
break
case 2:
		local CQblXRjoFe9puuua6 = "character/atswordman/guard/ap_guard.nut"
if(CQyoAOOhCX2XyYioVc != 85 &&  CNSquirrelAppendage.sq_IsAppendAppendage(CQdDdQBquWQ4EHos, CQblXRjoFe9puuua6))
			CNSquirrelAppendage.sq_RemoveAppendage(CQdDdQBquWQ4EHos, CQblXRjoFe9puuua6)
break
}

}


function onProcCon_Autoguard(CQF8eUMn9LIwe7yDdPo)
{
	if(!CQF8eUMn9LIwe7yDdPo) return
local CQgB6ayfakTYUpyO = CQF8eUMn9LIwe7yDdPo.getSkillSubState()
switch(CQgB6ayfakTYUpyO)
	{
	case 0:

		break
}
}

function onProc_Autoguard(CQoFsXxD1EHgrxtGQW)
{
	if(!CQoFsXxD1EHgrxtGQW) return
local CQ2E595yYJb4mJWAWCF1 = CQoFsXxD1EHgrxtGQW.getSkillSubState()
}

function onKeyFrameFlag_Autoguard(CQmwabHcKhVCYvWKi, CQqF25WubekhOPLpkD)
{
	if (!CQmwabHcKhVCYvWKi) return false
switch(CQqF25WubekhOPLpkD)
	{
	case 0:

		break
}
	return true
}

function proSkill_ATSwordman_Autoguard(CQsWAaqXUh5hUkN42)
{
	if(CQsWAaqXUh5hUkN42.getVar("Autoguard").getBool(0))
	{
		CQsWAaqXUh5hUkN42.getVar("Autoguard").setBool(0,false)
CQsWAaqXUh5hUkN42.sq_IntVectClear()
CQsWAaqXUh5hUkN42.sq_IntVectPush(2)
CQsWAaqXUh5hUkN42.sq_AddSetStatePacket(126, STATE_PRIORITY_IGNORE_FORCE, true)
}
	
	return
}













