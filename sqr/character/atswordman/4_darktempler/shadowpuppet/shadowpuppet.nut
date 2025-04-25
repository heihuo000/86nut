
function checkExecutableSkill_ShadowPuppet(CQ5vpoEdMT5Vl9Zq)
{
	if (!CQ5vpoEdMT5Vl9Zq) return false
local CQwghKnSrEpFgaZyFR = CQ5vpoEdMT5Vl9Zq.sq_IsUseSkill(68)
if (CQwghKnSrEpFgaZyFR)
	{
		CQ5vpoEdMT5Vl9Zq.sq_IntVectClear()
CQ5vpoEdMT5Vl9Zq.sq_IntVectPush(0)
CQ5vpoEdMT5Vl9Zq.sq_AddSetStatePacket(68, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	
	return false
}

function checkCommandEnable_ShadowPuppet(CQZ3F6MWKKREzvLeLih7)
{
	if (!CQZ3F6MWKKREzvLeLih7) return false
return true
}

function onSetState_ShadowPuppet(CQzLbcA9gjArhZKoV, CQOONyeCPoxv9UKt1ue, CQ8tyGkI4MLhk7Jw, CQWbd41zngm6fpHuxb)
{	
	if(!CQzLbcA9gjArhZKoV) return
CQzLbcA9gjArhZKoV.sq_StopMove()
local CQVhtlS6CuMV6dHrbDIP = CQzLbcA9gjArhZKoV.sq_GetVectorData(CQ8tyGkI4MLhk7Jw, 0)
CQzLbcA9gjArhZKoV.setSkillSubState(CQVhtlS6CuMV6dHrbDIP)
switch(CQVhtlS6CuMV6dHrbDIP)
	{
	case 0:
		CQzLbcA9gjArhZKoV.sq_SetCurrentAnimation(493)
CQzLbcA9gjArhZKoV.sq_PlaySound("SW_SHADOW_PUPPET")
sq_GetCurrentAnimation(CQzLbcA9gjArhZKoV).setSpeedRate(200.0)
if(sq_GetSkillLevel(CQzLbcA9gjArhZKoV, 77)>0)
			break
CQzLbcA9gjArhZKoV.sq_StartWrite()
CQzLbcA9gjArhZKoV.sq_WriteDword(68)
CQzLbcA9gjArhZKoV.sq_WriteDword(0)
CQzLbcA9gjArhZKoV.sq_WriteDword(CQzLbcA9gjArhZKoV.sq_GetBonusRateWithPassive(68, -1, 0, getATSwordmanBonus(CQzLbcA9gjArhZKoV,1.0,68)))
CQzLbcA9gjArhZKoV.sq_SendCreatePassiveObjectPacket(24381, 0, 400, -3, 0)
break
case 1:
		CQzLbcA9gjArhZKoV.sq_SetCurrentAnimation(494)
break
case 2:
		CQzLbcA9gjArhZKoV.sq_SetCurrentAnimation(495)
break
case 3:
		CQzLbcA9gjArhZKoV.sq_SetCurrentAnimation(496)
local CQY49WcKTByFRKGpQ = CQzLbcA9gjArhZKoV.sq_GetBonusRateWithPassive(68, -1, 0, getATSwordmanBonus(CQzLbcA9gjArhZKoV,1.0,68))
local CQuZPD6Qoc8E7bFyOud = CQzLbcA9gjArhZKoV.sq_GetBonusRateWithPassive(68, -1, 2, getATSwordmanBonus(CQzLbcA9gjArhZKoV,1.0,68))
local CQMXx1Jk9tsr2XFsDM = CQuZPD6Qoc8E7bFyOud
if(sq_GetSkillLevel(CQzLbcA9gjArhZKoV, 77)>0)
			CQMXx1Jk9tsr2XFsDM = CQY49WcKTByFRKGpQ + CQuZPD6Qoc8E7bFyOud
CQzLbcA9gjArhZKoV.sq_StartWrite()
CQzLbcA9gjArhZKoV.sq_WriteDword(68)
CQzLbcA9gjArhZKoV.sq_WriteDword(1)
CQzLbcA9gjArhZKoV.sq_WriteDword(CQzLbcA9gjArhZKoV.sq_GetLevelData(68, 1, sq_GetSkillLevel(CQzLbcA9gjArhZKoV, 68)))
CQzLbcA9gjArhZKoV.sq_WriteDword(CQMXx1Jk9tsr2XFsDM)
CQzLbcA9gjArhZKoV.sq_WriteDword(sq_GetIntData(CQzLbcA9gjArhZKoV, 68, 0))
CQzLbcA9gjArhZKoV.sq_SendCreatePassiveObjectPacket(24381, 0, 0, 0, 68)
break
}
	
}

function onEndCurrentAni_ShadowPuppet(CQnAZki3wCjv8mDoJbon)
{
	if(!CQnAZki3wCjv8mDoJbon) return
local CQGiwevp1zFn39VPX = CQnAZki3wCjv8mDoJbon.getSkillSubState()
switch(CQGiwevp1zFn39VPX)
	{
	case 0:
		CQnAZki3wCjv8mDoJbon.sq_IntVectClear()
CQnAZki3wCjv8mDoJbon.sq_IntVectPush(1)
CQnAZki3wCjv8mDoJbon.sq_AddSetStatePacket(68, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQnAZki3wCjv8mDoJbon.sq_IntVectClear()
CQnAZki3wCjv8mDoJbon.sq_IntVectPush(2)
CQnAZki3wCjv8mDoJbon.sq_AddSetStatePacket(68, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQnAZki3wCjv8mDoJbon.sq_IntVectClear()
CQnAZki3wCjv8mDoJbon.sq_IntVectPush(3)
CQnAZki3wCjv8mDoJbon.sq_AddSetStatePacket(68, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQnAZki3wCjv8mDoJbon.sq_IntVectClear()
CQnAZki3wCjv8mDoJbon.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}


