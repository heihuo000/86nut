
function checkExecutableSkill_BlackMirror(CQTeMQinmosu9ejQcU)
{
	if (!CQTeMQinmosu9ejQcU) return false
local CQsryOY1VMjm41nnnGEf = CQTeMQinmosu9ejQcU.sq_IsUseSkill(69)
if (CQsryOY1VMjm41nnnGEf)
	{
		CQTeMQinmosu9ejQcU.sq_IntVectClear()
CQTeMQinmosu9ejQcU.sq_IntVectPush(0)
CQTeMQinmosu9ejQcU.sq_AddSetStatePacket(69, STATE_PRIORITY_IGNORE_FORCE, true)
CQTeMQinmosu9ejQcU.getVar("BlackMirrorPos").clear_vector()
CQTeMQinmosu9ejQcU.getVar("BlackMirrorPos").push_vector(CQTeMQinmosu9ejQcU.getXPos())
CQTeMQinmosu9ejQcU.getVar("BlackMirrorPos").push_vector(CQTeMQinmosu9ejQcU.getYPos())
AIMPOINT_ATSWORDMAN = 69
return true
}

	return false
}

function checkCommandEnable_BlackMirror(CQ6Yd97DlbFlNWbrQ)
{
	if (!CQ6Yd97DlbFlNWbrQ) return false
return true
}

function onSetState_BlackMirror(CQeRAvsypSYc5jbqOo7, CQX2domfdBCRMSvy, CQxKAKRVecw3XlYeJi, CQtIx6BPJP3X1MYoC)
{
	if(!CQeRAvsypSYc5jbqOo7) return
local CQBWXcOcvCiSCrctfn1 = CQeRAvsypSYc5jbqOo7.sq_GetVectorData(CQxKAKRVecw3XlYeJi, 0)
CQeRAvsypSYc5jbqOo7.setSkillSubState(CQBWXcOcvCiSCrctfn1)
switch(CQBWXcOcvCiSCrctfn1)
	{
	case 0:
		CQeRAvsypSYc5jbqOo7.sq_StopMove()
CQeRAvsypSYc5jbqOo7.sq_SetCurrentAnimation(492)
CQeRAvsypSYc5jbqOo7.sq_PlaySound("SW_BLACK_MIRROR")
local CQvveyQ8OzdoJ3xa = sq_GetDelaySum(CQeRAvsypSYc5jbqOo7.getCurrentAnimation())*0.8
sq_StartDrawCastGauge(CQeRAvsypSYc5jbqOo7, CQvveyQ8OzdoJ3xa.tointeger(), true)
local CQDg6GhOjsPwVyxizg = 100
CQDg6GhOjsPwVyxizg = CQeRAvsypSYc5jbqOo7.sq_GetDistancePos(CQeRAvsypSYc5jbqOo7.getXPos(), CQeRAvsypSYc5jbqOo7.sq_GetDirection(), CQDg6GhOjsPwVyxizg)
local CQR3s4Feu5lcKkzIvogQ = 500
local CQiZkltlCTJRDDlpo = 250
CQeRAvsypSYc5jbqOo7.sq_AddAimPointMark(CQDg6GhOjsPwVyxizg, CQeRAvsypSYc5jbqOo7.getYPos(), CQR3s4Feu5lcKkzIvogQ, CQiZkltlCTJRDDlpo)
break
}
	//CQeRAvsypSYc5jbqOo7.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_BlackMirror(CQ1PaWzLmEn4IzlAsUa)
{
	if(!CQ1PaWzLmEn4IzlAsUa) return
local CQUykD4aD3NXF1qs = CQ1PaWzLmEn4IzlAsUa.getSkillSubState()
switch(CQUykD4aD3NXF1qs)
	{
	case 0:
		CQ1PaWzLmEn4IzlAsUa.sq_IntVectClear()
CQ1PaWzLmEn4IzlAsUa.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onEnterFrame_BlackMirror(CQHnJ1Gq8UWSOWmoHn, CQjjmky3Eo6pp4mP5FJ6)
{
	if(!CQHnJ1Gq8UWSOWmoHn) return
if(CQjjmky3Eo6pp4mP5FJ6 == 8)
	{
		local CQE51edHMMEwPSUa9 = CQHnJ1Gq8UWSOWmoHn.sq_GetAimPosX(CQHnJ1Gq8UWSOWmoHn.getXPos(), CQHnJ1Gq8UWSOWmoHn.getYPos(), false)
local CQ4XiPXorbhcElnDgiz = CQHnJ1Gq8UWSOWmoHn.sq_GetAimPosY(CQHnJ1Gq8UWSOWmoHn.getXPos(), CQHnJ1Gq8UWSOWmoHn.getYPos(), false)
CQHnJ1Gq8UWSOWmoHn.sq_RemoveAimPointMark()
CQHnJ1Gq8UWSOWmoHn.sq_StartWrite()
CQHnJ1Gq8UWSOWmoHn.sq_WriteDword(69)
CQHnJ1Gq8UWSOWmoHn.sq_WriteDword(0)
CQHnJ1Gq8UWSOWmoHn.sq_WriteDword(CQHnJ1Gq8UWSOWmoHn.sq_GetBonusRateWithPassive(69, -1, 0, getATSwordmanBonus(CQHnJ1Gq8UWSOWmoHn,1.0,69)))
CQHnJ1Gq8UWSOWmoHn.sq_WriteDword(CQHnJ1Gq8UWSOWmoHn.sq_GetLevelData(69, 2, sq_GetSkillLevel(CQHnJ1Gq8UWSOWmoHn, 69)))
CQHnJ1Gq8UWSOWmoHn.sq_WriteDword(CQHnJ1Gq8UWSOWmoHn.sq_GetBonusRateWithPassive(69, -1, 3, getATSwordmanBonus(CQHnJ1Gq8UWSOWmoHn,1.0,69)))
CQHnJ1Gq8UWSOWmoHn.sq_WriteDword(CQHnJ1Gq8UWSOWmoHn.sq_GetLevelData(69, 4, sq_GetSkillLevel(CQHnJ1Gq8UWSOWmoHn, 69)))
CQHnJ1Gq8UWSOWmoHn.sq_WriteDword(CQHnJ1Gq8UWSOWmoHn.sq_GetLevelData(69, 5, sq_GetSkillLevel(CQHnJ1Gq8UWSOWmoHn, 69)))
CQHnJ1Gq8UWSOWmoHn.sq_WriteDword(sq_GetIntData(CQHnJ1Gq8UWSOWmoHn, 69, 0))
CQHnJ1Gq8UWSOWmoHn.sq_WriteDword(sq_GetIntData(CQHnJ1Gq8UWSOWmoHn, 69, 79))
sq_SendCreatePassiveObjectPacketPos(CQHnJ1Gq8UWSOWmoHn, 24381, 0,  CQE51edHMMEwPSUa9, CQ4XiPXorbhcElnDgiz, 0)
}
}

function onEndState_BlackMirror(CQQARNahKSDbuFnO, CQLSDgUMgBcjsebHWn)
{
	if(!CQQARNahKSDbuFnO) return
sq_EndDrawCastGauge(CQQARNahKSDbuFnO)
CQQARNahKSDbuFnO.sq_RemoveAimPointMark()
}

function onProc_BlackMirror(CQlifqfDPcZ6i2bSiGeZ)
{
	if(!CQlifqfDPcZ6i2bSiGeZ) return
local CQImSICb5PqVrtvLa = CQlifqfDPcZ6i2bSiGeZ.getSkillSubState()
switch(CQImSICb5PqVrtvLa)
	{
	case 0:
		local CQ7TYCedU72GokYGPoB = CQlifqfDPcZ6i2bSiGeZ.sq_GetStateTimer()
if(CQ7TYCedU72GokYGPoB>sq_GetCastTime(CQlifqfDPcZ6i2bSiGeZ, 69, sq_GetSkillLevel(CQlifqfDPcZ6i2bSiGeZ, 69)))
			return
local CQr7VfkSVzuaWDYC = CQlifqfDPcZ6i2bSiGeZ.getVar("BlackMirrorPos").get_vector(0)
local CQCVWU1tTs9rqzcK3U = CQlifqfDPcZ6i2bSiGeZ.getVar("BlackMirrorPos").get_vector(1)
local CQdF7EDxo5IbvHxN8M9e = 4
if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL))
			CQlifqfDPcZ6i2bSiGeZ.getVar("BlackMirrorPos").set_vector(1,CQCVWU1tTs9rqzcK3U - 1*CQdF7EDxo5IbvHxN8M9e)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL))
			CQlifqfDPcZ6i2bSiGeZ.getVar("BlackMirrorPos").set_vector(1,CQCVWU1tTs9rqzcK3U + 1*CQdF7EDxo5IbvHxN8M9e)
if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL))
			CQlifqfDPcZ6i2bSiGeZ.getVar("BlackMirrorPos").set_vector(0,CQr7VfkSVzuaWDYC - 1*CQdF7EDxo5IbvHxN8M9e)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
			CQlifqfDPcZ6i2bSiGeZ.getVar("BlackMirrorPos").set_vector(0,CQr7VfkSVzuaWDYC + 1*CQdF7EDxo5IbvHxN8M9e)
break
}
}

function onProcCon_BlackMirror(CQypIZWC9qTjQWeXRnK)
{
	if(!CQypIZWC9qTjQWeXRnK) return
local CQBQl8lOwEH6b3w2mFiV = CQypIZWC9qTjQWeXRnK.getSkillSubState()
switch(CQBQl8lOwEH6b3w2mFiV)
	{
	case 0:
		local CQvzIvKw12bBzyQBe = CQypIZWC9qTjQWeXRnK.getXPos()
local CQD9loo6YUVGnTQLyi4 = CQypIZWC9qTjQWeXRnK.getYPos()
local CQRNKJvLIoeaxFqM = CQypIZWC9qTjQWeXRnK.getZPos()
local CQiGq68ahM5WjxmCZn = sq_GetDistancePos(CQvzIvKw12bBzyQBe, sq_GetDirection(CQypIZWC9qTjQWeXRnK), 50)
local CQ1E3cLkyvpbc2m3BG4t = CQypIZWC9qTjQWeXRnK.sq_GetAimPosX(CQvzIvKw12bBzyQBe, CQD9loo6YUVGnTQLyi4, false)
local CQUwpyp3XSRjktUN2 = CQypIZWC9qTjQWeXRnK.sq_GetAimPosY(CQvzIvKw12bBzyQBe, CQD9loo6YUVGnTQLyi4, false)
break
}
}

function getScrollBasisPos_BlackMirror(CQHxgGgHmBAlf5n66or)
{
	if (!CQHxgGgHmBAlf5n66or) return false
local CQjdo4NUScx9TSn2 = CQHxgGgHmBAlf5n66or.getSkillSubState()
if (!CQHxgGgHmBAlf5n66or.isMyControlObject()) return false
local CQEMglPglOLMRlb9ni = CQHxgGgHmBAlf5n66or.getXPos()
local CQ41FWwMp7mK7Gb5w1OY = CQHxgGgHmBAlf5n66or.getYPos()
local CQQJbSjuNzMOgrtRt = CQHxgGgHmBAlf5n66or.getZPos()
local CQLIB1Mvesty83W8FGf = sq_GetDistancePos(CQEMglPglOLMRlb9ni, sq_GetDirection(CQHxgGgHmBAlf5n66or), 50)
local CQlWtkyNJ48m3yWj = CQHxgGgHmBAlf5n66or.sq_GetAimPosX(CQEMglPglOLMRlb9ni, CQ41FWwMp7mK7Gb5w1OY, false)
local CQIv9wxSRqslB6rfCo = CQHxgGgHmBAlf5n66or.sq_GetAimPosY(CQEMglPglOLMRlb9ni, CQ41FWwMp7mK7Gb5w1OY, false)
CQHxgGgHmBAlf5n66or.sq_SetCameraScrollPosition(CQlWtkyNJ48m3yWj, CQIv9wxSRqslB6rfCo, 0)
return true
}
