
function checkExecutableSkill_Doomsday(CQGwRoYKQThNa4nk2Gmd)
{
	if (!CQGwRoYKQThNa4nk2Gmd) return false
local CQhxDK7EGaFHuSbRT = CQGwRoYKQThNa4nk2Gmd.sq_IsUseSkill(74)
if (CQhxDK7EGaFHuSbRT)
	{
		CQGwRoYKQThNa4nk2Gmd.sq_IntVectClear()
CQGwRoYKQThNa4nk2Gmd.sq_IntVectPush(0)
CQGwRoYKQThNa4nk2Gmd.sq_AddSetStatePacket(74, STATE_PRIORITY_IGNORE_FORCE, true)
CQGwRoYKQThNa4nk2Gmd.getVar("DoomsdayEnermy").clear_vector()
if(sq_GetSkillLevel(CQGwRoYKQThNa4nk2Gmd, 74)>2)
		{
			local CQpdv6KUd3Yselb8coZ = CQGwRoYKQThNa4nk2Gmd.sq_GetLevelData(74, 5, sq_GetSkillLevel(CQGwRoYKQThNa4nk2Gmd, 74))
local CQ3MBco2sjXPiGvj = CQGwRoYKQThNa4nk2Gmd.sq_GetLevelData(74, 4, sq_GetSkillLevel(CQGwRoYKQThNa4nk2Gmd, 74))/10
local CQq1tuvG2oQurrYfwi = sq_CreateChangeStatus(16, false, CQ3MBco2sjXPiGvj.tofloat(), CQpdv6KUd3Yselb8coZ)
CQq1tuvG2oQurrYfwi.sq_Append(CQGwRoYKQThNa4nk2Gmd,CQGwRoYKQThNa4nk2Gmd)
}
		
		return true
}

	return false
}

function checkCommandEnable_Doomsday(CQsJ8G8nt12mm3YlPM6D)
{
	if (!CQsJ8G8nt12mm3YlPM6D) return false
return true
}

function onSetState_Doomsday(CQ6sO4ORZbizWtrhFnG, CQer8lQNjuddq5ec, CQXYOWhuSBO1vDekCg, CQxRzDNY7YTLlzwvfiMT)
{
	if(!CQ6sO4ORZbizWtrhFnG) return
local CQP3L1P9qPJPbHQzk = CQ6sO4ORZbizWtrhFnG.sq_GetVectorData(CQXYOWhuSBO1vDekCg, 0)
CQ6sO4ORZbizWtrhFnG.setSkillSubState(CQP3L1P9qPJPbHQzk)
local CQ9LQkwANCnuzWQUxnq = 0
if(sq_GetSkillLevel(CQ6sO4ORZbizWtrhFnG, 74)>5)
		CQ9LQkwANCnuzWQUxnq = CQ6sO4ORZbizWtrhFnG.sq_GetLevelData(74, 10, sq_GetSkillLevel(CQ6sO4ORZbizWtrhFnG, 74))/100.0
switch(CQP3L1P9qPJPbHQzk)
	{
	case 0:
		CQ6sO4ORZbizWtrhFnG.sq_StopMove()
CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAnimation(473)
CQ6sO4ORZbizWtrhFnG.sq_PlaySound("SW_DOOMSDAY")
CQ6sO4ORZbizWtrhFnG.setTimeEvent(10,500,1,false)
local CQtO4e4rzzBqh4qY = sq_GetDistancePos(CQ6sO4ORZbizWtrhFnG.getXPos(), CQ6sO4ORZbizWtrhFnG.getDirection(), 100)
local CQBtEPGzHIrzxumQpg = sq_GetDistancePos(CQ6sO4ORZbizWtrhFnG.getXPos(), CQ6sO4ORZbizWtrhFnG.getDirection(), -26)
CQ6sO4ORZbizWtrhFnG.getVar().clear_vector()
CQ6sO4ORZbizWtrhFnG.getVar().push_vector(CQtO4e4rzzBqh4qY)
CQ6sO4ORZbizWtrhFnG.getVar().push_vector(CQBtEPGzHIrzxumQpg)
CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAttackInfo(119)
CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAttackBonusRate(CQ6sO4ORZbizWtrhFnG.sq_GetBonusRateWithPassive(74, -1, 0, getATSwordmanBonus(CQ6sO4ORZbizWtrhFnG,1.0,74)+CQ9LQkwANCnuzWQUxnq))
break
case 1:
		CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAnimation(474)
CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAttackInfo(120)
CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAttackBonusRate(CQ6sO4ORZbizWtrhFnG.sq_GetBonusRateWithPassive(74, -1, 1, getATSwordmanBonus(CQ6sO4ORZbizWtrhFnG,1.0,74)+CQ9LQkwANCnuzWQUxnq))
break
case 2:
		CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAnimation(475)
CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAttackInfo(120)
CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAttackBonusRate(CQ6sO4ORZbizWtrhFnG.sq_GetBonusRateWithPassive(74, -1, 1, getATSwordmanBonus(CQ6sO4ORZbizWtrhFnG,1.0,74)+CQ9LQkwANCnuzWQUxnq))
break
case 3:
		CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAnimation(476)
CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAttackInfo(120)
CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAttackBonusRate(CQ6sO4ORZbizWtrhFnG.sq_GetBonusRateWithPassive(74, -1, 1, getATSwordmanBonus(CQ6sO4ORZbizWtrhFnG,1.0,74)+CQ9LQkwANCnuzWQUxnq))
break
case 4:
		CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAnimation(477)
CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAttackInfo(120)
CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAttackBonusRate(CQ6sO4ORZbizWtrhFnG.sq_GetBonusRateWithPassive(74, -1, 1, getATSwordmanBonus(CQ6sO4ORZbizWtrhFnG,1.0,74)+CQ9LQkwANCnuzWQUxnq))
break
case 5:
		CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAnimation(478)
break
case 6:
		CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAnimation(479)
break
case 7:
		CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAnimation(480)
CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAttackInfo(120)
local CQvbhNyXfZ6dkTmnIFE5 = CQ6sO4ORZbizWtrhFnG.sq_GetBonusRateWithPassive(74, -1, 9, getATSwordmanBonus(CQ6sO4ORZbizWtrhFnG,1.0,74)+CQ9LQkwANCnuzWQUxnq)
local CQtO4e4rzzBqh4qY = sq_GetDistancePos(CQ6sO4ORZbizWtrhFnG.getXPos(), CQ6sO4ORZbizWtrhFnG.getDirection(), 400)
CQ6sO4ORZbizWtrhFnG.getVar().clear_vector()
CQ6sO4ORZbizWtrhFnG.getVar().push_vector(CQtO4e4rzzBqh4qY)
CQ6sO4ORZbizWtrhFnG.getVar().push_vector(CQ6sO4ORZbizWtrhFnG.getXPos())
local CQR4hq6Q3EgLTxnqHi7 = sq_GetCurrentAnimation(CQ6sO4ORZbizWtrhFnG)
local CQiZGIJ5b3SPR2nb = sq_GetDelaySum(CQR4hq6Q3EgLTxnqHi7)
local CQ1PnCUKPjxS7tyedn = CQ6sO4ORZbizWtrhFnG.sq_GetIntData(74, 20) + 1
CQ6sO4ORZbizWtrhFnG.sq_SetCurrentAttackBonusRate(CQvbhNyXfZ6dkTmnIFE5*CQ1PnCUKPjxS7tyedn)
break
}
	//CQ6sO4ORZbizWtrhFnG.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}


function getScrollBasisPos_Doomsday(CQUyNffqkoZpg5ymhF7L)
{
	if (!CQUyNffqkoZpg5ymhF7L) return false
local CQHnyUCjiMqw8Dttl = CQUyNffqkoZpg5ymhF7L.getSkillSubState()
if (!CQUyNffqkoZpg5ymhF7L.isMyControlObject()) return false
switch(CQHnyUCjiMqw8Dttl)
	{
	case 0:
		local CQjjdEs2Vb1c3zWwWiy = sq_GetDistancePos(CQUyNffqkoZpg5ymhF7L.getXPos(), CQUyNffqkoZpg5ymhF7L.getDirection(), 220)
CQUyNffqkoZpg5ymhF7L.sq_SetCameraScrollPosition(CQjjdEs2Vb1c3zWwWiy, CQUyNffqkoZpg5ymhF7L.getYPos(), 0)
break
case 4:
		
		break
case 5:
		
		break
case 6:
		
		break
case 7:
		
		break
}

	return true
}

function onEndCurrentAni_Doomsday(CQEkAZmoQuyg9HWi)
{
	if(!CQEkAZmoQuyg9HWi) return
local CQ46d9RnFB944crWsn = CQEkAZmoQuyg9HWi.getSkillSubState()
switch(CQ46d9RnFB944crWsn)
	{
	case 0:
		CQEkAZmoQuyg9HWi.sq_IntVectClear()
CQEkAZmoQuyg9HWi.sq_IntVectPush(1)
CQEkAZmoQuyg9HWi.sq_AddSetStatePacket(74, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		sq_SetMyShake(CQEkAZmoQuyg9HWi,8,200)
sq_flashScreen(CQEkAZmoQuyg9HWi, 10, 50, 10, 255, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM)
CQEkAZmoQuyg9HWi.sq_IntVectClear()
CQEkAZmoQuyg9HWi.sq_IntVectPush(2)
CQEkAZmoQuyg9HWi.sq_AddSetStatePacket(74, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		sq_SetMyShake(CQEkAZmoQuyg9HWi,4,200)
sq_flashScreen(CQEkAZmoQuyg9HWi, 10, 50, 10, 255, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM)
CQEkAZmoQuyg9HWi.sq_IntVectClear()
CQEkAZmoQuyg9HWi.sq_IntVectPush(3)
CQEkAZmoQuyg9HWi.sq_AddSetStatePacket(74, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		sq_SetMyShake(CQEkAZmoQuyg9HWi,4,200)
sq_flashScreen(CQEkAZmoQuyg9HWi, 10, 50, 10, 255, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM)
CQEkAZmoQuyg9HWi.sq_IntVectClear()
CQEkAZmoQuyg9HWi.sq_IntVectPush(4)
CQEkAZmoQuyg9HWi.sq_AddSetStatePacket(74, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 4:
		sq_SetMyShake(CQEkAZmoQuyg9HWi,4,200)
sq_flashScreen(CQEkAZmoQuyg9HWi, 10, 50, 10, 255, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM)
CQEkAZmoQuyg9HWi.sq_IntVectClear()
CQEkAZmoQuyg9HWi.sq_IntVectPush(5)
CQEkAZmoQuyg9HWi.sq_AddSetStatePacket(74, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 5:
		CQEkAZmoQuyg9HWi.sq_IntVectClear()
CQEkAZmoQuyg9HWi.sq_IntVectPush(6)
CQEkAZmoQuyg9HWi.sq_AddSetStatePacket(74, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 6:
		sq_SetMyShake(CQEkAZmoQuyg9HWi,11,300)
sq_flashScreen(CQEkAZmoQuyg9HWi, 10, 100, 10, 255, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM)
CQEkAZmoQuyg9HWi.sq_IntVectClear()
CQEkAZmoQuyg9HWi.sq_IntVectPush(7)
CQEkAZmoQuyg9HWi.sq_AddSetStatePacket(74, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 7:
		if(sq_GetSkillLevel(CQEkAZmoQuyg9HWi, 74)>8)
		{
			local CQfQ3iZbtTpDbdvoA = CQEkAZmoQuyg9HWi.sq_GetLevelData(74, 8, sq_GetSkillLevel(CQEkAZmoQuyg9HWi, 74))
local CQtjff1DtjGjOMc1QI = "character/atswordman/4_darktempler/doomsday/ap_doomsdaybuff.nut"
local CQ7oXKly1CGpM6wI = CNSquirrelAppendage.sq_AppendAppendage(CQEkAZmoQuyg9HWi, CQEkAZmoQuyg9HWi, -1, false, CQtjff1DtjGjOMc1QI , false)
CQ7oXKly1CGpM6wI.sq_SetValidTime(CQfQ3iZbtTpDbdvoA)
CQ7oXKly1CGpM6wI.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(CQEkAZmoQuyg9HWi), 74, sq_GetSkillLevel(CQEkAZmoQuyg9HWi, 74))
CQ7oXKly1CGpM6wI.setEnableIsBuff(true)
CNSquirrelAppendage.sq_Append(CQ7oXKly1CGpM6wI, CQEkAZmoQuyg9HWi, CQEkAZmoQuyg9HWi, true)
}
		CQEkAZmoQuyg9HWi.sq_IntVectClear()
CQEkAZmoQuyg9HWi.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onTimeEvent_Doomsday(CQrqe63YWzvwXFQo8R, CQCl6cFVLsVYHxQPRiaM, CQc8aytPh5egCJqaq)
{
	if(!CQrqe63YWzvwXFQo8R) return
switch(CQCl6cFVLsVYHxQPRiaM)
	{
	case 10:
		local CQABkGzrAT44Jtmirn8 = 0
if(sq_GetSkillLevel(CQrqe63YWzvwXFQo8R, 74)>5)
			CQABkGzrAT44Jtmirn8 = CQrqe63YWzvwXFQo8R.sq_GetLevelData(74, 10, sq_GetSkillLevel(CQrqe63YWzvwXFQo8R, 74))/100.0
sq_SetMyShake(CQrqe63YWzvwXFQo8R,6,500)
sq_flashScreen(CQrqe63YWzvwXFQo8R, 10, 50, 10, 255, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM)
CQrqe63YWzvwXFQo8R.sq_StartWrite()
CQrqe63YWzvwXFQo8R.sq_WriteDword(74)
CQrqe63YWzvwXFQo8R.sq_WriteDword(0)
CQrqe63YWzvwXFQo8R.sq_WriteDword(CQrqe63YWzvwXFQo8R.sq_GetBonusRateWithPassive(74, -1, 0, getATSwordmanBonus(CQrqe63YWzvwXFQo8R,1.0,74)+CQABkGzrAT44Jtmirn8))
CQrqe63YWzvwXFQo8R.sq_WriteDword(CQrqe63YWzvwXFQo8R.sq_GetBonusRateWithPassive(74, -1, 9, getATSwordmanBonus(CQrqe63YWzvwXFQo8R,1.0,74)+CQABkGzrAT44Jtmirn8))
CQrqe63YWzvwXFQo8R.sq_SendCreatePassiveObjectPacket(24381, 0, 200, 0, 74)
break
case 11:
		local CQABkGzrAT44Jtmirn8 = 0
if(sq_GetSkillLevel(CQrqe63YWzvwXFQo8R, 74)>5)
			CQABkGzrAT44Jtmirn8 = CQrqe63YWzvwXFQo8R.sq_GetLevelData(74, 10, sq_GetSkillLevel(CQrqe63YWzvwXFQo8R, 74))/100.0
CQrqe63YWzvwXFQo8R.sq_SetCurrentAttackBonusRate(CQrqe63YWzvwXFQo8R.sq_GetBonusRateWithPassive(74, -1, 3, getATSwordmanBonus(CQrqe63YWzvwXFQo8R,1.0,74)+CQABkGzrAT44Jtmirn8))
for(local CQypkQpZo3RDKuiEEg = 0; CQypkQpZo3RDKuiEEg < CQrqe63YWzvwXFQo8R.getVar("DoomsdayEnermy").size_vector(); CQypkQpZo3RDKuiEEg++)
		{
			local CQNQHObsBUApDluSOixF = sq_GetObjectByObjectId(CQrqe63YWzvwXFQo8R, CQrqe63YWzvwXFQo8R.getVar("DoomsdayEnermy").get_vector(CQypkQpZo3RDKuiEEg))
local CQbzUB9lzozsIGuIB = CQNQHObsBUApDluSOixF.getZPos() + CQNQHObsBUApDluSOixF.getObjectHeight()/2
local CQF91RX4GMKWFcyG3nD = "character/swordman/effect/animation/atsouldrain/loopboom_01.ani"
DarktemplerCreateAniPooledObj(CQNQHObsBUApDluSOixF,CQF91RX4GMKWFcyG3nD,true,true,CQNQHObsBUApDluSOixF.getXPos(), CQNQHObsBUApDluSOixF.getYPos(),CQbzUB9lzozsIGuIB, 1.0)
sq_SendHitObjectPacket(CQrqe63YWzvwXFQo8R,CQNQHObsBUApDluSOixF,0,0,CQbzUB9lzozsIGuIB)
}
		break
}

}

function onProc_Doomsday(CQgNimaadbUbO3yA)
{
	if(!CQgNimaadbUbO3yA) return
local CQoGRajqeuMkpytKfn = 1
if(CQgNimaadbUbO3yA.getDirection()==0)
		CQoGRajqeuMkpytKfn = -CQoGRajqeuMkpytKfn
local CQ2aSXMh2Bt7P6WFUFBi = CQgNimaadbUbO3yA.getSkillSubState()
switch(CQ2aSXMh2Bt7P6WFUFBi)
	{
	case 0:
		local CQmsfdAHvc7BEoWXw = CQgNimaadbUbO3yA.getVar().get_vector(0)
local CQHrSbeoOPaHuzrJti = CQgNimaadbUbO3yA.getVar().get_vector(1)
if(CQgNimaadbUbO3yA.sq_GetStateTimer()>200)
		{
			local CQjYYpknjCjseHeBp1dB = sq_GetAccel(CQgNimaadbUbO3yA.getXPos(), CQmsfdAHvc7BEoWXw, CQgNimaadbUbO3yA.sq_GetStateTimer(), 280, false)
sq_setCurrentAxisPos(CQgNimaadbUbO3yA, 0, CQjYYpknjCjseHeBp1dB)
sq_SimpleMoveToNearMovablePos(CQgNimaadbUbO3yA,1000)
}
		
		if(CQgNimaadbUbO3yA.sq_GetStateTimer()>=1300)
		{
			local CQjYYpknjCjseHeBp1dB = sq_GetAccel(CQgNimaadbUbO3yA.getXPos(), CQHrSbeoOPaHuzrJti, CQgNimaadbUbO3yA.sq_GetStateTimer(), 280, false)
sq_setCurrentAxisPos(CQgNimaadbUbO3yA, 0, CQjYYpknjCjseHeBp1dB)
sq_SimpleMoveToNearMovablePos(CQgNimaadbUbO3yA,1000)
}
		break
case 7:
		local CQmsfdAHvc7BEoWXw = CQgNimaadbUbO3yA.getVar().get_vector(0)
local CQjYYpknjCjseHeBp1dB = sq_GetAccel(CQgNimaadbUbO3yA.getXPos(), CQmsfdAHvc7BEoWXw, CQgNimaadbUbO3yA.sq_GetStateTimer(), 300, false)
sq_setCurrentAxisPos(CQgNimaadbUbO3yA, 0, CQjYYpknjCjseHeBp1dB)
sq_SimpleMoveToNearMovablePos(CQgNimaadbUbO3yA,1000)
break
}
}

function onAttack_Doomsday(CQIIIi7dFTw7W7EK5o5Q, CQ7W7HKVxE3BqGpNx, CQrvI5oPE2iHvcoXniW, CQCgTzvxMUdsQJo2)
{
	if (!CQIIIi7dFTw7W7EK5o5Q) return false
local CQc3KtV7roOWbtiBWn = CQIIIi7dFTw7W7EK5o5Q.getSkillSubState()
if (!CQIIIi7dFTw7W7EK5o5Q.isMyControlObject()) return false
switch(CQc3KtV7roOWbtiBWn)
	{
	case 7:
		local CQALqFIOKMluz5u5DFOk = sq_GetObjectId(CQ7W7HKVxE3BqGpNx)
CQIIIi7dFTw7W7EK5o5Q.getVar("DoomsdayEnermy").push_vector(CQALqFIOKMluz5u5DFOk)
break
}
}

