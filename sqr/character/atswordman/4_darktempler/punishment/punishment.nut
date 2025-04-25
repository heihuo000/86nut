
function checkExecutableSkill_Punishment(CQbNMHzdrBAAJ1p378)
{
	if (!CQbNMHzdrBAAJ1p378) return false
local CQCA8yUtIX7Rf3im1 = CQbNMHzdrBAAJ1p378.sq_IsUseSkill(81)
if (CQCA8yUtIX7Rf3im1)
	{
		CQbNMHzdrBAAJ1p378.sq_IntVectClear()
CQbNMHzdrBAAJ1p378.sq_IntVectPush(0)
CQbNMHzdrBAAJ1p378.sq_AddSetStatePacket(81, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	
	return false
}

function checkCommandEnable_Punishment(CQw8KkIcfoCuq9A7iDRF)
{
	if (!CQw8KkIcfoCuq9A7iDRF) return false
return true
}

function onSetState_Punishment(CQZBqwqVIMeqvaA3s, CQzF2P2P2v4zlYPdAuQ, CQOpoNDevuodbLO6, CQ8QggW7ZBf2znO24b)
{	
	if(!CQZBqwqVIMeqvaA3s) return
local CQWzoqlZjcALh7L98FEu = CQZBqwqVIMeqvaA3s.sq_GetVectorData(CQOpoNDevuodbLO6, 0)
CQZBqwqVIMeqvaA3s.setSkillSubState(CQWzoqlZjcALh7L98FEu)
switch(CQWzoqlZjcALh7L98FEu)
	{
	case 0:
		CQZBqwqVIMeqvaA3s.sq_StopMove()
CQZBqwqVIMeqvaA3s.sq_SetCurrentAnimation(466)
CQZBqwqVIMeqvaA3s.sq_PlaySound("SW_PUNISHMENT")
local CQV9gI3auOzPxpK5R = sq_GetDistancePos(CQZBqwqVIMeqvaA3s.getXPos(), CQZBqwqVIMeqvaA3s.getDirection(), 250)
local CQYNDCGT7CKijdKRTi7 = sq_GetDistancePos(CQZBqwqVIMeqvaA3s.getXPos(), CQZBqwqVIMeqvaA3s.getDirection(), 500)
CQZBqwqVIMeqvaA3s.getVar("PunishmentInfo").clear_vector()
CQZBqwqVIMeqvaA3s.getVar("PunishmentInfo").push_vector(CQV9gI3auOzPxpK5R)
CQZBqwqVIMeqvaA3s.getVar("PunishmentInfo").push_vector(CQZBqwqVIMeqvaA3s.getXPos())
CQZBqwqVIMeqvaA3s.getVar("PunishmentInfo").push_vector(CQYNDCGT7CKijdKRTi7)
local CQSGvfb4qzUqdKJ8 = sq_GetDistancePos(CQZBqwqVIMeqvaA3s.getXPos(), CQZBqwqVIMeqvaA3s.getDirection(), 250)
CQZBqwqVIMeqvaA3s.getVar("PunishmentInfo2").clear_vector()
CQZBqwqVIMeqvaA3s.getVar("PunishmentInfo2").push_vector(CQSGvfb4qzUqdKJ8)
local CQfEBn9aNsNzkbHjun = 0
for(local CQuatEZmx4tffXHfEFlg=0;CQuatEZmx4tffXHfEFlg<CQZBqwqVIMeqvaA3s.sq_GetLevelData(81, 2, sq_GetSkillLevel(CQZBqwqVIMeqvaA3s, 81));CQuatEZmx4tffXHfEFlg++)
		{
			local CQMe9ZEhaT726iGTO = CQZBqwqVIMeqvaA3s.sq_GetSkillLoad(65)
if(!CQMe9ZEhaT726iGTO) return true
local CQnYO8nHREaLR8FgBDA = CQMe9ZEhaT726iGTO.getRemainLoadNumber()
if(CQnYO8nHREaLR8FgBDA<1)
				break
AtSwordmanDecreaseEvolve(CQZBqwqVIMeqvaA3s)
CQfEBn9aNsNzkbHjun++
}
		CQZBqwqVIMeqvaA3s.getVar("PunishmentInfo").push_vector(CQfEBn9aNsNzkbHjun)
CQZBqwqVIMeqvaA3s.sq_StartWrite()
CQZBqwqVIMeqvaA3s.sq_WriteDword(81)
CQZBqwqVIMeqvaA3s.sq_WriteDword(0)
CQZBqwqVIMeqvaA3s.sq_WriteDword(sq_GetIntData(CQZBqwqVIMeqvaA3s, 81, 0))
CQZBqwqVIMeqvaA3s.sq_WriteDword(CQZBqwqVIMeqvaA3s.sq_GetBonusRateWithPassive(81, -1, 0, getATSwordmanBonus(CQZBqwqVIMeqvaA3s,1.0,81)))
CQZBqwqVIMeqvaA3s.sq_WriteDword(CQZBqwqVIMeqvaA3s.sq_GetBonusRateWithPassive(81, -1, 1, getATSwordmanBonus(CQZBqwqVIMeqvaA3s,1.0,81)))
CQZBqwqVIMeqvaA3s.sq_WriteDword(CQZBqwqVIMeqvaA3s.sq_GetLevelData(81, 2, sq_GetSkillLevel(CQZBqwqVIMeqvaA3s, 81)))
CQZBqwqVIMeqvaA3s.sq_WriteDword(CQZBqwqVIMeqvaA3s.sq_GetLevelData(81, 3, sq_GetSkillLevel(CQZBqwqVIMeqvaA3s, 81)))
CQZBqwqVIMeqvaA3s.sq_SendCreatePassiveObjectPacket(24381, 0, 250, -5, 0)
sq_flashScreen(CQZBqwqVIMeqvaA3s, 15, 1400, 15, 150, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM)
CQZBqwqVIMeqvaA3s.setTimeEvent(0,4000,1,false)
break
case 1:
		CQZBqwqVIMeqvaA3s.sq_PlaySound("SW_PUNISHMENT_FIN")
CQZBqwqVIMeqvaA3s.sq_SetCurrentAnimation(467)
sq_flashScreen(CQZBqwqVIMeqvaA3s, 15, 1400, 15, 255, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM)
CQZBqwqVIMeqvaA3s.setTimeEvent(0,1200,1,false)
CQZBqwqVIMeqvaA3s.sq_StartWrite()
CQZBqwqVIMeqvaA3s.sq_WriteDword(81)
CQZBqwqVIMeqvaA3s.sq_WriteDword(2)
CQZBqwqVIMeqvaA3s.sq_WriteDword(sq_GetIntData(CQZBqwqVIMeqvaA3s, 81, 0))
CQZBqwqVIMeqvaA3s.sq_WriteDword(CQZBqwqVIMeqvaA3s.sq_GetBonusRateWithPassive(81, -1, 0, getATSwordmanBonus(CQZBqwqVIMeqvaA3s,1.0,81)))
CQZBqwqVIMeqvaA3s.sq_WriteDword(CQZBqwqVIMeqvaA3s.sq_GetBonusRateWithPassive(81, -1, 1, getATSwordmanBonus(CQZBqwqVIMeqvaA3s,1.0,81)))
CQZBqwqVIMeqvaA3s.sq_WriteDword(CQZBqwqVIMeqvaA3s.sq_GetLevelData(81, 2, sq_GetSkillLevel(CQZBqwqVIMeqvaA3s, 81)))
CQZBqwqVIMeqvaA3s.sq_WriteDword(CQZBqwqVIMeqvaA3s.sq_GetLevelData(81, 3, sq_GetSkillLevel(CQZBqwqVIMeqvaA3s, 81)))
CQZBqwqVIMeqvaA3s.sq_SendCreatePassiveObjectPacket(24381, 0, 250, -3, 80)
break
}

}

function onTimeEvent_Punishment(CQGR8vdir2hC7EFx, CQh2OoPbKUFD2fDk7u, CQqKzJwMboYpVLSvf)
{
	if(!CQGR8vdir2hC7EFx) return
switch(CQh2OoPbKUFD2fDk7u)
	{
	case 0:
		sq_flashScreen(CQGR8vdir2hC7EFx, 200, 100, 100, 255, sq_RGB(255,255,255), GRAPHICEFFECT_SPACE_DISTORT, ENUM_DRAWLAYER_CONTACT)
break
case 1:	
		
		break
}
}

function onProc_Punishment(CQKIZ6jSPMXe3nSzUba)
{
	if(!CQKIZ6jSPMXe3nSzUba) return
local CQTWQc1t5vQYBCCj = CQKIZ6jSPMXe3nSzUba.getSkillSubState()
local CQsv4ySdiS3gLpXYtR = sq_GetCurrentAnimation(CQKIZ6jSPMXe3nSzUba)
local CQ6gEGrVVBi5M9XloiKe = CQKIZ6jSPMXe3nSzUba.sq_GetStateTimer()
local CQe3j36OQcdCXaZnL = sq_GetDelaySum(CQsv4ySdiS3gLpXYtR)
switch(CQTWQc1t5vQYBCCj)
	{
	case 0:
		if(CQ6gEGrVVBi5M9XloiKe>1160)
		{
			local CQXLplJxGOODHvZcVux = CQKIZ6jSPMXe3nSzUba.getVar("PunishmentInfo").get_vector(0)
local CQxOhWi7dCTpCZLq = sq_GetAccel(CQKIZ6jSPMXe3nSzUba.getXPos(), CQXLplJxGOODHvZcVux, CQ6gEGrVVBi5M9XloiKe, 100, false)
if(CQKIZ6jSPMXe3nSzUba.isMovablePos(CQxOhWi7dCTpCZLq,CQKIZ6jSPMXe3nSzUba.getYPos()))
				sq_setCurrentAxisPos(CQKIZ6jSPMXe3nSzUba, 0, CQxOhWi7dCTpCZLq)
}
		if(CQ6gEGrVVBi5M9XloiKe>3140)
		{
			local CQXLplJxGOODHvZcVux = CQKIZ6jSPMXe3nSzUba.getVar("PunishmentInfo").get_vector(2)
local CQxOhWi7dCTpCZLq = sq_GetAccel(CQKIZ6jSPMXe3nSzUba.getXPos(), CQXLplJxGOODHvZcVux, CQ6gEGrVVBi5M9XloiKe, 100, false)
if(CQKIZ6jSPMXe3nSzUba.isMovablePos(CQxOhWi7dCTpCZLq,CQKIZ6jSPMXe3nSzUba.getYPos()))
				sq_setCurrentAxisPos(CQKIZ6jSPMXe3nSzUba, 0, CQxOhWi7dCTpCZLq)
}
		if(CQ6gEGrVVBi5M9XloiKe>3940)
		{
			local CQXLplJxGOODHvZcVux = CQKIZ6jSPMXe3nSzUba.getVar("PunishmentInfo").get_vector(1)
local CQxOhWi7dCTpCZLq = sq_GetAccel(CQKIZ6jSPMXe3nSzUba.getXPos(), CQXLplJxGOODHvZcVux, CQ6gEGrVVBi5M9XloiKe, 100, false)
if(CQKIZ6jSPMXe3nSzUba.isMovablePos(CQxOhWi7dCTpCZLq,CQKIZ6jSPMXe3nSzUba.getYPos()))
				sq_setCurrentAxisPos(CQKIZ6jSPMXe3nSzUba, 0, CQxOhWi7dCTpCZLq)
}
		if(CQ6gEGrVVBi5M9XloiKe>4140)
		{
			local CQXLplJxGOODHvZcVux = CQKIZ6jSPMXe3nSzUba.getVar("PunishmentInfo").get_vector(2)
local CQxOhWi7dCTpCZLq = sq_GetAccel(CQKIZ6jSPMXe3nSzUba.getXPos(), CQXLplJxGOODHvZcVux, CQ6gEGrVVBi5M9XloiKe, 100, false)
if(CQKIZ6jSPMXe3nSzUba.isMovablePos(CQxOhWi7dCTpCZLq,CQKIZ6jSPMXe3nSzUba.getYPos()))
				sq_setCurrentAxisPos(CQKIZ6jSPMXe3nSzUba, 0, CQxOhWi7dCTpCZLq)
}
		if(CQ6gEGrVVBi5M9XloiKe>4540)
		{
			local CQXLplJxGOODHvZcVux = CQKIZ6jSPMXe3nSzUba.getVar("PunishmentInfo").get_vector(1)
local CQxOhWi7dCTpCZLq = sq_GetAccel(CQKIZ6jSPMXe3nSzUba.getXPos(), CQXLplJxGOODHvZcVux, CQ6gEGrVVBi5M9XloiKe, 200, false)
if(CQKIZ6jSPMXe3nSzUba.isMovablePos(CQxOhWi7dCTpCZLq,CQKIZ6jSPMXe3nSzUba.getYPos()))
				sq_setCurrentAxisPos(CQKIZ6jSPMXe3nSzUba, 0, CQxOhWi7dCTpCZLq)
}
		break
case 1:
		
		break
}
	
}

function onEndCurrentAni_Punishment(CQMmxshiBMxWt9ByNi)
{
	if(!CQMmxshiBMxWt9ByNi) return
local CQnTXCFgzvZnEaVejfcw = CQMmxshiBMxWt9ByNi.getSkillSubState()
switch(CQnTXCFgzvZnEaVejfcw)
	{
	case 0:
		CQMmxshiBMxWt9ByNi.sq_IntVectClear()
CQMmxshiBMxWt9ByNi.sq_IntVectPush(1)
CQMmxshiBMxWt9ByNi.sq_AddSetStatePacket(81, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQMmxshiBMxWt9ByNi.sq_IntVectClear()
CQMmxshiBMxWt9ByNi.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQMmxshiBMxWt9ByNi.sq_IntVectClear()
CQMmxshiBMxWt9ByNi.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}


function getScrollBasisPos_Punishment(CQG7eftNEAqkyRVoz)
{
	if (!CQG7eftNEAqkyRVoz) return false
local CQ3V6nzSfB17wZCtvMo = CQG7eftNEAqkyRVoz.getSkillSubState()
if (!CQG7eftNEAqkyRVoz.isMyControlObject()) return false
switch(CQ3V6nzSfB17wZCtvMo)
	{
	case 0:
		local CQqDaE4vrcyNuUXamb = CQG7eftNEAqkyRVoz.getVar("PunishmentInfo2").get_vector(0)
CQG7eftNEAqkyRVoz.sq_SetCameraScrollPosition(CQqDaE4vrcyNuUXamb, CQG7eftNEAqkyRVoz.getYPos(), 0)
break
case 1:
		
		break
}
	return true
}


function onKeyFrameFlag_Punishment(CQKo5ZH9JO9HeCXisF5N, CQTqa8uCv6IsUpZOA)
{
	if (!CQKo5ZH9JO9HeCXisF5N) return false
switch(CQTqa8uCv6IsUpZOA)
	{
	case 20:
		sq_flashScreen(CQKo5ZH9JO9HeCXisF5N, 15, 4040, 15, 255, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM)
CQKo5ZH9JO9HeCXisF5N.sq_StartWrite()
CQKo5ZH9JO9HeCXisF5N.sq_WriteDword(81)
CQKo5ZH9JO9HeCXisF5N.sq_WriteDword(1)
CQKo5ZH9JO9HeCXisF5N.sq_WriteDword(sq_GetIntData(CQKo5ZH9JO9HeCXisF5N, 81, 0))
CQKo5ZH9JO9HeCXisF5N.sq_WriteDword(CQKo5ZH9JO9HeCXisF5N.sq_GetBonusRateWithPassive(81, -1, 0, getATSwordmanBonus(CQKo5ZH9JO9HeCXisF5N,1.0,81)))
CQKo5ZH9JO9HeCXisF5N.sq_WriteDword(CQKo5ZH9JO9HeCXisF5N.sq_GetBonusRateWithPassive(81, -1, 1, getATSwordmanBonus(CQKo5ZH9JO9HeCXisF5N,1.0,81)))
CQKo5ZH9JO9HeCXisF5N.sq_WriteDword(CQKo5ZH9JO9HeCXisF5N.sq_GetLevelData(81, 2, sq_GetSkillLevel(CQKo5ZH9JO9HeCXisF5N, 81)))
CQKo5ZH9JO9HeCXisF5N.sq_WriteDword(CQKo5ZH9JO9HeCXisF5N.sq_GetLevelData(81, 3, sq_GetSkillLevel(CQKo5ZH9JO9HeCXisF5N, 81)))
CQKo5ZH9JO9HeCXisF5N.sq_SendCreatePassiveObjectPacket(24381, 0, 0, -3, 80)
break
}
	return true
}

function onTimeEvent_Punishment(CQslkvdWOzktrdZEHiW, CQ68JiXzjsGnmsLS, CQeNUJaXu4vkYbKI9n)
{
	if (!CQslkvdWOzktrdZEHiW) return false
if (!CQslkvdWOzktrdZEHiW.isMyControlObject()) return false
switch(CQ68JiXzjsGnmsLS)
	{
	case 0:


		break
case 1:
		
		break
case 2:
		
		break
}
}














