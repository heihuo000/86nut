
function checkExecutableSkill_Moonlightslash(CQ8zIYgc4EIaANEidtT)
{
	if (!CQ8zIYgc4EIaANEidtT) return false
local CQe51CxXjo4z5GmM4C = CQ8zIYgc4EIaANEidtT.sq_IsUseSkill(226)
if (CQe51CxXjo4z5GmM4C)
	{
		CQ8zIYgc4EIaANEidtT.sq_IntVectClear()
CQ8zIYgc4EIaANEidtT.sq_IntVectPush(0)
CQ8zIYgc4EIaANEidtT.sq_AddSetStatePacket(226, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Moonlightslash(CQ4qAiiIIxZIYXSwE2)
{
	if (!CQ4qAiiIIxZIYXSwE2) return false
return true
}

function onSetState_Moonlightslash(CQQlcJYzhIqtToAiOmId, CQL8A576y51UR9AWD, CQlBxxssXluTlaPEKjd, CQIGXymQma98gvPu)
{
	if(!CQQlcJYzhIqtToAiOmId) return
local CQ6EeFRkD3IM8LOIf = CQQlcJYzhIqtToAiOmId.sq_GetVectorData(CQlBxxssXluTlaPEKjd, 0)
CQQlcJYzhIqtToAiOmId.setSkillSubState(CQ6EeFRkD3IM8LOIf)
switch(CQ6EeFRkD3IM8LOIf)
	{
	case 0:
		CQQlcJYzhIqtToAiOmId.sq_StopMove()
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAnimation(620)
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAttackInfo(179)
local CQew63VK8UkJhnLpjmc = CQQlcJYzhIqtToAiOmId.sq_GetBonusRateWithPassive(226, -1, 0,getATSwordmanBonus(CQQlcJYzhIqtToAiOmId,1.0,226))
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAttackBonusRate(CQew63VK8UkJhnLpjmc)
break
case 1:
		CQQlcJYzhIqtToAiOmId.sq_SetCurrentAnimation(616)
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAttackInfo(180)
local CQew63VK8UkJhnLpjmc = CQQlcJYzhIqtToAiOmId.sq_GetBonusRateWithPassive(226, -1, 0, getATSwordmanBonus(CQQlcJYzhIqtToAiOmId,1.0,226))
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAttackBonusRate(CQew63VK8UkJhnLpjmc)
local CQxdkrQUM1by4pKstU = sq_GetCurrentAnimation(CQQlcJYzhIqtToAiOmId)
local CQPMJS32rbVUddJopHrx = sq_GetDelaySum(CQxdkrQUM1by4pKstU)
CQQlcJYzhIqtToAiOmId.setTimeEvent(0, CQPMJS32rbVUddJopHrx/18, 18,true)
break
case 2:
		local CQ9HkMFFJSeT5KJPI = sq_GetDistancePos(CQQlcJYzhIqtToAiOmId.getXPos(), CQQlcJYzhIqtToAiOmId.getDirection(), 350)
CQQlcJYzhIqtToAiOmId.getVar("Moonlightslash").setInt(0, CQQlcJYzhIqtToAiOmId.getXPos())
CQQlcJYzhIqtToAiOmId.getVar("Moonlightslash").setInt(1, CQ9HkMFFJSeT5KJPI)
CQQlcJYzhIqtToAiOmId.getVar("Moonlightslash").setInt(2, CQQlcJYzhIqtToAiOmId.getDirection())
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAnimation(617)
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAttackInfo(181)
local CQew63VK8UkJhnLpjmc = CQQlcJYzhIqtToAiOmId.sq_GetBonusRateWithPassive(226, -1, 2, getATSwordmanBonus(CQQlcJYzhIqtToAiOmId,1.0,226))
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAttackBonusRate(CQew63VK8UkJhnLpjmc)
break
case 3:
		CQQlcJYzhIqtToAiOmId.sq_ZStop()
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAnimation(623)
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAttackInfo(182)
local CQew63VK8UkJhnLpjmc = CQQlcJYzhIqtToAiOmId.sq_GetBonusRateWithPassive(226, -1, 3, getATSwordmanBonus(CQQlcJYzhIqtToAiOmId,1.0,226))
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAttackBonusRate(CQew63VK8UkJhnLpjmc)
break
case 4:
		CQQlcJYzhIqtToAiOmId.sq_SetCurrentAnimation(621)
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAttackInfo(183)
local CQew63VK8UkJhnLpjmc = CQQlcJYzhIqtToAiOmId.sq_GetBonusRateWithPassive(226, -1, 5, getATSwordmanBonus(CQQlcJYzhIqtToAiOmId,1.0,226))
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAttackBonusRate(CQew63VK8UkJhnLpjmc)
break
case 5:
		CQQlcJYzhIqtToAiOmId.sq_SetCurrentAnimation(622)
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAttackInfo(184)
local CQew63VK8UkJhnLpjmc = CQQlcJYzhIqtToAiOmId.sq_GetBonusRateWithPassive(226, -1, 6, getATSwordmanBonus(CQQlcJYzhIqtToAiOmId,1.0,226))
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAttackBonusRate(CQew63VK8UkJhnLpjmc)
break
case 6:
		CQQlcJYzhIqtToAiOmId.sq_SetCurrentAnimation(618)
CQQlcJYzhIqtToAiOmId.getVar("MoonlightslashDraw").setBool(0,true)
CQQlcJYzhIqtToAiOmId.getVar("MoonlightslashDraw").setBool(1,true)
break
case 7:
		CQQlcJYzhIqtToAiOmId.sq_SetCurrentAnimation(619)
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAttackInfo(185)
local CQew63VK8UkJhnLpjmc = CQQlcJYzhIqtToAiOmId.sq_GetBonusRateWithPassive(226, -1, 7, getATSwordmanBonus(CQQlcJYzhIqtToAiOmId,1.0,226))
CQQlcJYzhIqtToAiOmId.sq_SetCurrentAttackBonusRate(CQew63VK8UkJhnLpjmc)
break
}
	CQQlcJYzhIqtToAiOmId.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onTimeEvent_Moonlightslash(CQi2Dm99TILiBfDKQpp, CQ1KvsXPF5mqLLSF, CQUOSXar9TMxFnAXim)
{
	if(!CQi2Dm99TILiBfDKQpp) return
switch(CQ1KvsXPF5mqLLSF)
	{
	case 0:
		CQi2Dm99TILiBfDKQpp.resetHitObjectList()
break
}
}

function onEndCurrentAni_Moonlightslash(CQEtYdUzwatfZCCJa)
{
	if(!CQEtYdUzwatfZCCJa) return
local CQ4bVnfZ1372GpXDXUv = CQEtYdUzwatfZCCJa.getSkillSubState()
switch(CQ4bVnfZ1372GpXDXUv)
	{
	case 0:
		CQEtYdUzwatfZCCJa.sq_IntVectClear()
CQEtYdUzwatfZCCJa.sq_IntVectPush(1)
CQEtYdUzwatfZCCJa.sq_AddSetStatePacket(226, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQEtYdUzwatfZCCJa.sq_IntVectClear()
CQEtYdUzwatfZCCJa.sq_IntVectPush(2)
CQEtYdUzwatfZCCJa.sq_AddSetStatePacket(226, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQEtYdUzwatfZCCJa.sq_IntVectClear()
CQEtYdUzwatfZCCJa.sq_IntVectPush(3)
CQEtYdUzwatfZCCJa.sq_AddSetStatePacket(226, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQEtYdUzwatfZCCJa.sq_IntVectClear()
CQEtYdUzwatfZCCJa.sq_IntVectPush(4)
CQEtYdUzwatfZCCJa.sq_AddSetStatePacket(226, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 4:
		CQEtYdUzwatfZCCJa.sq_IntVectClear()
CQEtYdUzwatfZCCJa.sq_IntVectPush(5)
CQEtYdUzwatfZCCJa.sq_AddSetStatePacket(226, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 5:
		CQEtYdUzwatfZCCJa.setDirection(CQEtYdUzwatfZCCJa.getVar("Moonlightslash").getInt(2))
CQEtYdUzwatfZCCJa.sq_IntVectClear()
CQEtYdUzwatfZCCJa.sq_IntVectPush(6)
CQEtYdUzwatfZCCJa.sq_AddSetStatePacket(226, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 6:
		CQEtYdUzwatfZCCJa.sq_IntVectClear()
CQEtYdUzwatfZCCJa.sq_IntVectPush(7)
CQEtYdUzwatfZCCJa.sq_AddSetStatePacket(226, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 7:
		CQEtYdUzwatfZCCJa.sq_IntVectClear()
CQEtYdUzwatfZCCJa.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Moonlightslash(CQQhWpAsYUsZPdXZ, CQL47LeQsojAHaZH4h, CQlZI8k4g1FiAvLV8ptj, CQIPlY1JtbYQaZLLv)
{
	if(!CQQhWpAsYUsZPdXZ || CQIPlY1JtbYQaZLLv)	return false
local CQ7yIiSpZSCxSUKMmm1 = CQQhWpAsYUsZPdXZ.getSkillSubState()
switch(CQ7yIiSpZSCxSUKMmm1)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Moonlightslash(CQrnlJrhUBwfs8JC, CQCjK571SY33iEJ3uj)
{
	if(!CQrnlJrhUBwfs8JC || !CQrnlJrhUBwfs8JC.isMyControlObject()) return
local CQc5qxKFlPiZrfHNHpR3 = CQrnlJrhUBwfs8JC.getSkillSubState()
switch(CQc5qxKFlPiZrfHNHpR3)
	{
	case 0:
		switch(CQCjK571SY33iEJ3uj)
		{
		case 5:
			sq_SetMyShake(CQrnlJrhUBwfs8JC,5,50)
sq_flashScreen(CQrnlJrhUBwfs8JC,100,4600,0,204,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 11:
			sq_SetMyShake(CQrnlJrhUBwfs8JC,4,100)
break
case 12:
			sq_SetMyShake(CQrnlJrhUBwfs8JC,9,200)
sq_flashScreen(CQrnlJrhUBwfs8JC,0,50,0,76,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
sq_BinaryStartWrite()
sq_BinaryWriteDword(0)
sq_SendChangeSkillEffectPacket(CQrnlJrhUBwfs8JC, 226)
break
}
		break
case 1:
		switch(CQCjK571SY33iEJ3uj)
		{
		case 0:
			sq_flashScreen(CQrnlJrhUBwfs8JC,0,20,0,76,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 3:
			sq_flashScreen(CQrnlJrhUBwfs8JC,0,20,0,76,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 6:
			sq_flashScreen(CQrnlJrhUBwfs8JC,0,20,0,76,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 9:
			sq_flashScreen(CQrnlJrhUBwfs8JC,0,20,0,76,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 12:
			sq_flashScreen(CQrnlJrhUBwfs8JC,0,20,0,76,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 15:
			sq_flashScreen(CQrnlJrhUBwfs8JC,0,20,0,76,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 18:
			sq_flashScreen(CQrnlJrhUBwfs8JC,0,20,0,76,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
}
		break
case 2:
		switch(CQCjK571SY33iEJ3uj)
		{
		case 0:
			sq_SetMyShake(CQrnlJrhUBwfs8JC,5,240)
sq_flashScreen(CQrnlJrhUBwfs8JC,0,100,0,76,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
}
		break
case 3:
		switch(CQCjK571SY33iEJ3uj)
		{
		case 0:
			sq_SetMyShake(CQrnlJrhUBwfs8JC,3,10)
break
}
		break
case 4:
		switch(CQCjK571SY33iEJ3uj)
		{
		case 0:
			sq_flashScreen(CQrnlJrhUBwfs8JC,0,40,0,102,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 1:
			sq_SetMyShake(CQrnlJrhUBwfs8JC,7,150)
break
}
		break
case 6:
		switch(CQCjK571SY33iEJ3uj)
		{
		case 0:
			sq_flashScreen(CQrnlJrhUBwfs8JC,0,20,0,76,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 2:
			sq_flashScreen(CQrnlJrhUBwfs8JC,0,20,0,51,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 4:
			sq_flashScreen(CQrnlJrhUBwfs8JC,0,100,0,127,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
}
		break
case 7:
		switch(CQCjK571SY33iEJ3uj)
		{
		case 0:
			sq_SetMyShake(CQrnlJrhUBwfs8JC,10,700)
sq_flashScreen(CQrnlJrhUBwfs8JC,0,60,0,127,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
}
		break
}
}

function onEndState_Moonlightslash(CQAX3tonp7dAoIG6Z, CQdApFvfNzPFWnG2BoE)
{
	if(!CQAX3tonp7dAoIG6Z) return
local CQyuh38DeIlEqXN8 = CQAX3tonp7dAoIG6Z.getSkillSubState()
switch(CQyuh38DeIlEqXN8)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onChangeSkillEffect_Moonlightslash(CQNoFTLyJ5JetmB4TU, CQbqgrqcfqnvQ9BfcHJa, CQFlFVgVIaNhbaV7U)
{
	if(!CQNoFTLyJ5JetmB4TU || CQbqgrqcfqnvQ9BfcHJa != 226) return
local CQg8bfBP33W5wRC3wpz = CQFlFVgVIaNhbaV7U.readDword()
if(CQg8bfBP33W5wRC3wpz == 0)
	{
		local CQoBNUOeyU6VnZCd = "character/swordman/effect/animation/atmakelotusslash/atmakelotusslash_step01c_dust04.ani"
ATswordmanCreateAniPooledObj(CQNoFTLyJ5JetmB4TU, CQoBNUOeyU6VnZCd, true, true,CQNoFTLyJ5JetmB4TU.getXPos(), CQNoFTLyJ5JetmB4TU.getYPos(), 0,1.0)
}
}

function onProc_Moonlightslash(CQ2Ftaw7XoEFxUX6Fm)
{
	if(!CQ2Ftaw7XoEFxUX6Fm) return
local CQkp9ZjZk1hEUVZgKHwQ = CQ2Ftaw7XoEFxUX6Fm.getSkillSubState()
local CQaQP9GsDbDrYpZ9Cjh = sq_GetCurrentAnimation(CQ2Ftaw7XoEFxUX6Fm)
local CQ5zxvyT8ScvTdLk = sq_GetDelaySum(CQaQP9GsDbDrYpZ9Cjh)
local CQw9Oox4QBZhRsLRkh = CQ2Ftaw7XoEFxUX6Fm.sq_GetStateTimer()
switch(CQkp9ZjZk1hEUVZgKHwQ)
	{
	case 2:
		local CQZNzK5JMYq5lbKzxonB = CQ2Ftaw7XoEFxUX6Fm.getVar("Moonlightslash").getInt(1)
local CQzGZ6HmcP2VgXJjb = sq_GetAccel(CQ2Ftaw7XoEFxUX6Fm.getXPos(), CQZNzK5JMYq5lbKzxonB, CQw9Oox4QBZhRsLRkh, CQ5zxvyT8ScvTdLk/2, false)
if(CQ2Ftaw7XoEFxUX6Fm.isMovablePos(CQzGZ6HmcP2VgXJjb, CQ2Ftaw7XoEFxUX6Fm.getYPos()))
			sq_setCurrentAxisPos(CQ2Ftaw7XoEFxUX6Fm, 0, CQzGZ6HmcP2VgXJjb)
break
case 3:
		local CQZNzK5JMYq5lbKzxonB = CQ2Ftaw7XoEFxUX6Fm.getVar("Moonlightslash").getInt(0)
local CQzGZ6HmcP2VgXJjb = sq_GetAccel(CQ2Ftaw7XoEFxUX6Fm.getXPos(), CQZNzK5JMYq5lbKzxonB, CQw9Oox4QBZhRsLRkh, CQ5zxvyT8ScvTdLk/2, false)
local CQWcEGCiWIII9aMnDh = sq_GetAccel(CQ2Ftaw7XoEFxUX6Fm.getZPos(), 200, CQw9Oox4QBZhRsLRkh, CQ5zxvyT8ScvTdLk/2, false)
sq_setCurrentAxisPos(CQ2Ftaw7XoEFxUX6Fm, 2, CQWcEGCiWIII9aMnDh)
if(CQ2Ftaw7XoEFxUX6Fm.isMovablePos(CQzGZ6HmcP2VgXJjb, CQ2Ftaw7XoEFxUX6Fm.getYPos()))
			sq_setCurrentAxisPos(CQ2Ftaw7XoEFxUX6Fm, 0, CQzGZ6HmcP2VgXJjb)
break
case 4:
		local CQWcEGCiWIII9aMnDh = sq_GetAccel(CQ2Ftaw7XoEFxUX6Fm.getZPos(), 0, CQw9Oox4QBZhRsLRkh, CQ5zxvyT8ScvTdLk/2, false)
sq_setCurrentAxisPos(CQ2Ftaw7XoEFxUX6Fm, 2, CQWcEGCiWIII9aMnDh)
break
case 5:
		local CQWcEGCiWIII9aMnDh = sq_GetAccel(CQ2Ftaw7XoEFxUX6Fm.getZPos(), 200, CQw9Oox4QBZhRsLRkh, CQ5zxvyT8ScvTdLk/2, false)
sq_setCurrentAxisPos(CQ2Ftaw7XoEFxUX6Fm, 2, CQWcEGCiWIII9aMnDh)
break
case 7:
		local CQWcEGCiWIII9aMnDh = sq_GetAccel(CQ2Ftaw7XoEFxUX6Fm.getZPos(), 0, CQw9Oox4QBZhRsLRkh, CQ5zxvyT8ScvTdLk/5, false)
sq_setCurrentAxisPos(CQ2Ftaw7XoEFxUX6Fm, 2, CQWcEGCiWIII9aMnDh)
break
}
}

function onKeyFrameFlag_Moonlightslash(CQdKHDVtT3V8MCBzhHj9, CQyIn1rdoUeN6qVUl)
{
	if (!CQdKHDVtT3V8MCBzhHj9) return false
switch(CQyIn1rdoUeN6qVUl)
	{
	case 0:

		break
}
	return true
}

function CreateAimPointMark(CQNWMkTVBF5J1dCYvGr)
{
	local CQbvue2OwMpICsCQ = sq_getJob(CQNWMkTVBF5J1dCYvGr)
local CQFgfPDxHbRt2gXnsp = null
if(CQbvue2OwMpICsCQ == ENUM_CHARACTERJOB_AT_MAGE)
	{
		CQFgfPDxHbRt2gXnsp = sq_CreateAnimation("", "Common/CommonEffect/Animation/atmage_cussor/AimPointMark.ani")
CQFgfPDxHbRt2gXnsp.setRGBA(0, 78, 255, 255)
}
	else if(CQbvue2OwMpICsCQ == 10)
	{
		local CQg3ANW7YSAUVXZrA2IV = AIMPOINT_ATSWORDMAN
if(CQg3ANW7YSAUVXZrA2IV == 69)
			CQFgfPDxHbRt2gXnsp = sq_CreateAnimation("", "passiveobject/changqing_atswordman/magiccircle.ani")
else if(CQg3ANW7YSAUVXZrA2IV == 82)
			CQFgfPDxHbRt2gXnsp = sq_CreateAnimation("", "character/swordman/effect/animation/atjihad/jihad_targettingloop_a.ani")
}

	return CQFgfPDxHbRt2gXnsp
}

function CNAimPointMarkCustomAnimation(CQoLchzLs9xTKU5qG, CQp1rXM8gjpyhojhqL)
{
	if(!CQoLchzLs9xTKU5qG)
		return false
local CQsCjwCqj9myC8cHjuC = sq_getJob(CQp1rXM8gjpyhojhqL)
if(CQsCjwCqj9myC8cHjuC == ENUM_CHARACTERJOB_AT_MAGE)
	{
		local CQBKFIkasRjNb5MQbz = sq_CreateAnimation("", "Common/CommonEffect/Animation/atmage_cussor/AimPointMarkDisable.ani")
local CQhSEoEJWF1j5TR7FP = sq_CreateAnimation("", "Common/CommonEffect/Animation/atmage_cussor/AimPointMarkVanish.ani")
local CQDdglCp1e2pYtrinH = sq_CreateAnimation("", "Common/CommonEffect/Animation/atmage_cussor/AimPointMarkDisableVanish.ani")
local CQRMFWsjYLuaT5rWQh2j = sq_CreateAnimation("", "Common/CommonEffect/Animation/atmage_cussor/AimPointMarkEnable.ani")
if(CQBKFIkasRjNb5MQbz && CQhSEoEJWF1j5TR7FP && CQDdglCp1e2pYtrinH && CQRMFWsjYLuaT5rWQh2j)
		{
			CQBKFIkasRjNb5MQbz.setRGBA(0, 78, 255, 255)
CQhSEoEJWF1j5TR7FP.setRGBA(0, 78, 255, 255)
CQDdglCp1e2pYtrinH.setRGBA(0, 78, 255, 255)
CQRMFWsjYLuaT5rWQh2j.setRGBA(0, 78, 255, 255)
CQoLchzLs9xTKU5qG.addCustomAnimation(CQBKFIkasRjNb5MQbz)
CQoLchzLs9xTKU5qG.addCustomAnimation(CQhSEoEJWF1j5TR7FP)
CQoLchzLs9xTKU5qG.addCustomAnimation(CQDdglCp1e2pYtrinH)
CQoLchzLs9xTKU5qG.addCustomAnimation(CQRMFWsjYLuaT5rWQh2j)
return true
}
	}
	else if(CQsCjwCqj9myC8cHjuC == 10)
	{
		local CQiHbDm1Kk9WRieEO = AIMPOINT_ATSWORDMAN
if(CQiHbDm1Kk9WRieEO == 69)
		{
			local CQBKFIkasRjNb5MQbz = sq_CreateAnimation("", "passiveobject/changqing_atswordman/magiccircle.ani")
local CQhSEoEJWF1j5TR7FP = sq_CreateAnimation("", "passiveobject/changqing_atswordman/magiccircle.ani")
local CQDdglCp1e2pYtrinH = sq_CreateAnimation("", "passiveobject/changqing_atswordman/magiccircle.ani")
local CQRMFWsjYLuaT5rWQh2j = sq_CreateAnimation("", "passiveobject/changqing_atswordman/magiccircle.ani")
CQhSEoEJWF1j5TR7FP.setLoop(false)
if(CQBKFIkasRjNb5MQbz && CQhSEoEJWF1j5TR7FP && CQDdglCp1e2pYtrinH && CQRMFWsjYLuaT5rWQh2j)
			{
				CQoLchzLs9xTKU5qG.addCustomAnimation(CQBKFIkasRjNb5MQbz)
CQoLchzLs9xTKU5qG.addCustomAnimation(CQhSEoEJWF1j5TR7FP)
CQoLchzLs9xTKU5qG.addCustomAnimation(CQDdglCp1e2pYtrinH)
CQoLchzLs9xTKU5qG.addCustomAnimation(CQRMFWsjYLuaT5rWQh2j)
return true
}
		}
		else if(CQiHbDm1Kk9WRieEO == 82)
		{
			local CQBKFIkasRjNb5MQbz = sq_CreateAnimation("", "character/swordman/effect/animation/atjihad/jihad_targettingloop_a.ani")
local CQhSEoEJWF1j5TR7FP = sq_CreateAnimation("", "character/swordman/effect/animation/atjihad/jihad_targettingloop_a.ani")
local CQDdglCp1e2pYtrinH = sq_CreateAnimation("", "character/swordman/effect/animation/atjihad/jihad_targettingloop_a.ani")
local CQRMFWsjYLuaT5rWQh2j = sq_CreateAnimation("", "character/swordman/effect/animation/atjihad/jihad_targettingloop_a.ani")
if(CQBKFIkasRjNb5MQbz && CQhSEoEJWF1j5TR7FP && CQDdglCp1e2pYtrinH && CQRMFWsjYLuaT5rWQh2j)
			{
				CQoLchzLs9xTKU5qG.addCustomAnimation(CQBKFIkasRjNb5MQbz)
CQoLchzLs9xTKU5qG.addCustomAnimation(CQhSEoEJWF1j5TR7FP)
CQoLchzLs9xTKU5qG.addCustomAnimation(CQDdglCp1e2pYtrinH)
CQoLchzLs9xTKU5qG.addCustomAnimation(CQRMFWsjYLuaT5rWQh2j)
return true
}
		}

	}

	return false
}

function onProcCon_Moonlightslash(CQlWwC4redRj1JuDsU9J)
{
	if(!CQlWwC4redRj1JuDsU9J) return
local CQIv5fp7JWA7CtuOA = CQlWwC4redRj1JuDsU9J.getSkillSubState()
if(CQIv5fp7JWA7CtuOA < 6)
	{
		if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL))
			CQlWwC4redRj1JuDsU9J.getVar("Moonlightslash").setInt(2, 0)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
			CQlWwC4redRj1JuDsU9J.getVar("Moonlightslash").setInt(2, 1)
}
}

function drawCustomSkillani_ATSwordman(CQ7gaUbZYXxB24yHHhi)
{
	if(!CQ7gaUbZYXxB24yHHhi.getVar("MoonlightslashDraw").getBool(0))
		return
local CQr4jE9sIlLGVutS = 0
Skill_DrawAni(CQ7gaUbZYXxB24yHHhi,"Moonlightslash","etc/ultimateskillani/atsword_swordempress2nd.ani",1.0,1.0,255,CQr4jE9sIlLGVutS, 50,"MoonlightslashDraw")
return
}

function Skill_DrawAni(CQCZHZXThemsK7tL92,CQcPj9a4yLMWBGWGgmFQ,CQyyHvUaXktyLcrXT,CQNnUoMmmp8mFKrJ,CQbjMJAhDJslOyeBiG,CQF5u6eH8hj9G6wZahIB,CQgXfckoEiF1Pia1P,CQoASy1bMMvKEzEVN2d,CQ2ucGSMcRCOAHpL)
{
	local CQmUA4cDKywuaYpM7H = CQCZHZXThemsK7tL92.getVar()
local CQJmcl7tRV3mu4oCRhYS = CQmUA4cDKywuaYpM7H.GetAnimationMap( CQcPj9a4yLMWBGWGgmFQ , CQyyHvUaXktyLcrXT )
if(CQCZHZXThemsK7tL92.getDirection() == 1)
	{
		CQNnUoMmmp8mFKrJ = -CQNnUoMmmp8mFKrJ
CQgXfckoEiF1Pia1P = CQgXfckoEiF1Pia1P + 800
}
	if(sq_IsEnd(CQJmcl7tRV3mu4oCRhYS))
	{
		if(CQCZHZXThemsK7tL92.getVar(CQ2ucGSMcRCOAHpL).getBool(1))
		{
			sq_Rewind(CQJmcl7tRV3mu4oCRhYS)
CQCZHZXThemsK7tL92.getVar(CQ2ucGSMcRCOAHpL).setBool(1,false)
}
		else
			CQCZHZXThemsK7tL92.getVar(CQ2ucGSMcRCOAHpL).setBool(0,false)
}
	else
	{
		sq_AnimationProc(CQJmcl7tRV3mu4oCRhYS)
CQJmcl7tRV3mu4oCRhYS.setImageRate(CQNnUoMmmp8mFKrJ,CQbjMJAhDJslOyeBiG)
CQJmcl7tRV3mu4oCRhYS.setRGBA(255, 255, 255, CQF5u6eH8hj9G6wZahIB)
sq_drawCurrentFrame(CQJmcl7tRV3mu4oCRhYS, CQgXfckoEiF1Pia1P,CQoASy1bMMvKEzEVN2d, false)
CQCZHZXThemsK7tL92.getVar(CQ2ucGSMcRCOAHpL).setBool(1,false)
}
	
}


function isMovablePos_CNAimPointMark(CQkTCWKdOcilsuo3m, CQa7rSoV4Wfdi7iNe3G, CQ5B61vOnXP1rGu6, CQwFsk8xCllKocu2p2)
{
	if(!CQkTCWKdOcilsuo3m)
		return true
if(!CQa7rSoV4Wfdi7iNe3G)
		return true
local CQLpTwI7TeJPtJy9LUM = sq_getJob(CQa7rSoV4Wfdi7iNe3G)
if(CQLpTwI7TeJPtJy9LUM == ENUM_CHARACTERJOB_AT_MAGE)
	{
		return sq_IsMovablePosCollisionObject(CQa7rSoV4Wfdi7iNe3G, CQ5B61vOnXP1rGu6, CQwFsk8xCllKocu2p2)
}
	else if(CQLpTwI7TeJPtJy9LUM == 10)
	{
		return sq_IsMovablePosCollisionObject(CQa7rSoV4Wfdi7iNe3G, CQ5B61vOnXP1rGu6, CQwFsk8xCllKocu2p2)
}

	return true
}
