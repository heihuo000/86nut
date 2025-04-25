
function checkExecutableSkill_Cometblade(CQFgvHMZRLcHuUKg3K)
{
	if (!CQFgvHMZRLcHuUKg3K) return false
local CQg3B5AaWkXIeVKx7kh1 = CQFgvHMZRLcHuUKg3K.sq_IsUseSkill(220)
if (CQg3B5AaWkXIeVKx7kh1)
	{
		CQFgvHMZRLcHuUKg3K.sq_StopMove()
CQFgvHMZRLcHuUKg3K.sq_IntVectClear()
CQFgvHMZRLcHuUKg3K.sq_IntVectPush(2)
CQFgvHMZRLcHuUKg3K.sq_AddSetStatePacket(220, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Cometblade(CQoLtxxTLEQtUq2jY)
{
	if (!CQoLtxxTLEQtUq2jY) return false
return true
}


function onSetState_Cometblade(CQ2P8t54n22ncd1YU4s, CQmyOFHHPhuTms1l, CQtCUTOpzW5MSxKbyvXB, CQ7IAHEgwemq6cEDlAS)
{
	if(!CQ2P8t54n22ncd1YU4s) return
local CQa5zr6MVvTJvmNqL = CQ2P8t54n22ncd1YU4s.sq_GetVectorData(CQtCUTOpzW5MSxKbyvXB, 0)
CQ2P8t54n22ncd1YU4s.setSkillSubState(CQa5zr6MVvTJvmNqL)
switch(CQa5zr6MVvTJvmNqL)
	{
	case 0:
		local CQ5XLSsilyHIlBBbVkc = [585,583,582,584,581,581]
local CQwAQMmbGBntgaVx = checkAppend_Dualweapon(CQ2P8t54n22ncd1YU4s)
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAnimation(CQ5XLSsilyHIlBBbVkc[CQwAQMmbGBntgaVx])
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAttackInfo(170)
local CQZu4jRMdcBixfVmk4 = CQ2P8t54n22ncd1YU4s.sq_GetBonusRateWithPassive(220, -1, 2,getATSwordmanBonus(CQ2P8t54n22ncd1YU4s,1.0,220))
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAttackBonusRate(CQZu4jRMdcBixfVmk4)
CQ2P8t54n22ncd1YU4s.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
case 1:
		CQ2P8t54n22ncd1YU4s.sq_PlaySound("SW_COMET_BLADE")
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAnimation(575)
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAttackInfo(169)
local CQZu4jRMdcBixfVmk4 = CQ2P8t54n22ncd1YU4s.sq_GetBonusRateWithPassive(220, -1, 2, getATSwordmanBonus(CQ2P8t54n22ncd1YU4s,1.0,220))
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAttackBonusRate(CQZu4jRMdcBixfVmk4)
CQ2P8t54n22ncd1YU4s.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
case 2:
		CQ2P8t54n22ncd1YU4s.getVar("Cometblade").clear_vector()
CQ2P8t54n22ncd1YU4s.getVar("Cometblade").push_vector(sq_GetDistancePos(CQ2P8t54n22ncd1YU4s.getXPos(), CQ2P8t54n22ncd1YU4s.getDirection(), 350))
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAnimation(576)
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAttackInfo(165)
local CQZu4jRMdcBixfVmk4 = CQ2P8t54n22ncd1YU4s.sq_GetBonusRateWithPassive(220, -1, 1, getATSwordmanBonus(CQ2P8t54n22ncd1YU4s,1.0,220))
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAttackBonusRate(CQZu4jRMdcBixfVmk4)
CQ2P8t54n22ncd1YU4s.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
case 3:
		CQ2P8t54n22ncd1YU4s.getVar("Cometblade").clear_vector()
CQ2P8t54n22ncd1YU4s.getVar("Cometblade").push_vector(sq_GetDistancePos(CQ2P8t54n22ncd1YU4s.getXPos(), CQ2P8t54n22ncd1YU4s.getDirection(), 300))
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAnimation(578)
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAttackInfo(167)
local CQZu4jRMdcBixfVmk4 = CQ2P8t54n22ncd1YU4s.sq_GetBonusRateWithPassive(220, -1, 2, getATSwordmanBonus(CQ2P8t54n22ncd1YU4s,1.0,220))
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAttackBonusRate(CQZu4jRMdcBixfVmk4)
CQ2P8t54n22ncd1YU4s.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
case 4:
		CQ2P8t54n22ncd1YU4s.sq_ZStop()
CQ2P8t54n22ncd1YU4s.getVar("Cometblade").clear_vector()
CQ2P8t54n22ncd1YU4s.getVar("Cometblade").push_vector(sq_GetDistancePos(CQ2P8t54n22ncd1YU4s.getXPos(), CQ2P8t54n22ncd1YU4s.getDirection(), -300))
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAnimation(577)
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAttackInfo(166)
local CQZu4jRMdcBixfVmk4 = CQ2P8t54n22ncd1YU4s.sq_GetBonusRateWithPassive(220, -1, 2, getATSwordmanBonus(CQ2P8t54n22ncd1YU4s,1.0,220))
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAttackBonusRate(CQZu4jRMdcBixfVmk4)
CQ2P8t54n22ncd1YU4s.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
case 5:
		CQ2P8t54n22ncd1YU4s.sq_ZStop()
CQ2P8t54n22ncd1YU4s.getVar("Cometblade").clear_vector()
CQ2P8t54n22ncd1YU4s.getVar("Cometblade").push_vector(sq_GetDistancePos(CQ2P8t54n22ncd1YU4s.getXPos(), CQ2P8t54n22ncd1YU4s.getDirection(), -300))
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAnimation(579)
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAttackInfo(168)
local CQZu4jRMdcBixfVmk4 = CQ2P8t54n22ncd1YU4s.sq_GetBonusRateWithPassive(220, -1, 2, getATSwordmanBonus(CQ2P8t54n22ncd1YU4s,1.0,220))
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAttackBonusRate(CQZu4jRMdcBixfVmk4)
break
case 6:
		CQ2P8t54n22ncd1YU4s.sq_SetCurrentAnimation(580)
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAttackInfo(168)
local CQZu4jRMdcBixfVmk4 = CQ2P8t54n22ncd1YU4s.sq_GetBonusRateWithPassive(220, -1, 3, getATSwordmanBonus(CQ2P8t54n22ncd1YU4s,1.0,220))
CQ2P8t54n22ncd1YU4s.sq_SetCurrentAttackBonusRate(CQZu4jRMdcBixfVmk4)
break
}
	CQ2P8t54n22ncd1YU4s.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
}

function onEnterFrame_Cometblade(CQupNXz66ELi7g3rC3Z, CQMQyd4Lm2qq2P3p)
{
	if(!CQupNXz66ELi7g3rC3Z || !CQupNXz66ELi7g3rC3Z.isMyControlObject()) return
local CQbzdbGwBh1zVU2yj = CQupNXz66ELi7g3rC3Z.getSkillSubState()
switch(CQbzdbGwBh1zVU2yj)
	{
	case 1:
		switch(CQMQyd4Lm2qq2P3p)
		{
		case 4:
			sq_BinaryStartWrite()
sq_BinaryWriteDword(0)
sq_SendChangeSkillEffectPacket(CQupNXz66ELi7g3rC3Z, 220)
break
case 7:
			sq_BinaryStartWrite()
sq_BinaryWriteDword(0)
sq_SendChangeSkillEffectPacket(CQupNXz66ELi7g3rC3Z, 220)
break
case 9:
			sq_BinaryStartWrite()
sq_BinaryWriteDword(0)
sq_SendChangeSkillEffectPacket(CQupNXz66ELi7g3rC3Z, 220)
break
case 13:
			sq_BinaryStartWrite()
sq_BinaryWriteDword(0)
sq_SendChangeSkillEffectPacket(CQupNXz66ELi7g3rC3Z, 220)
break
case 20:
			sq_BinaryStartWrite()
sq_BinaryWriteDword(0)
sq_SendChangeSkillEffectPacket(CQupNXz66ELi7g3rC3Z, 220)
break
case 21:
			sq_BinaryStartWrite()
sq_BinaryWriteDword(0)
sq_SendChangeSkillEffectPacket(CQupNXz66ELi7g3rC3Z, 220)
break
case 22:
			sq_BinaryStartWrite()
sq_BinaryWriteDword(0)
sq_SendChangeSkillEffectPacket(CQupNXz66ELi7g3rC3Z, 220)
sq_SetMyShake(CQupNXz66ELi7g3rC3Z,5,100)
sq_flashScreen(CQupNXz66ELi7g3rC3Z,50,100,300,204,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
}
		break
case 2:
		switch(CQMQyd4Lm2qq2P3p)
		{
		case 0:
			sq_SetMyShake(CQupNXz66ELi7g3rC3Z,10,200)
sq_flashScreen(CQupNXz66ELi7g3rC3Z,50,200,400,204,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
}
		break
case 4:
		switch(CQMQyd4Lm2qq2P3p)
		{
		case 1:
			sq_SetMyShake(CQupNXz66ELi7g3rC3Z,10,200)
sq_flashScreen(CQupNXz66ELi7g3rC3Z,30,150,200,153,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 5:
			sq_BinaryStartWrite()
sq_BinaryWriteDword(1)
sq_SendChangeSkillEffectPacket(CQupNXz66ELi7g3rC3Z, 220)
break
}
		break
case 6:
		switch(CQMQyd4Lm2qq2P3p)
		{
		case 1:
			sq_SetMyShake(CQupNXz66ELi7g3rC3Z,20,200)
sq_flashScreen(CQupNXz66ELi7g3rC3Z,30,150,250,204,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
}
		break
}
}

function onChangeSkillEffect_Cometblade(CQF9Apbkziyf3V1szk5, CQgNcL93EM82BQ1i, CQoGX7ZEfvsLLfMWo4)
{
	if(!CQF9Apbkziyf3V1szk5 || CQgNcL93EM82BQ1i != 220) return
local CQ2ExYEmrykANINEIq67 = CQoGX7ZEfvsLLfMWo4.readDword()
if(CQ2ExYEmrykANINEIq67 == 0)
		CQF9Apbkziyf3V1szk5.resetHitObjectList()
else if(CQ2ExYEmrykANINEIq67 == 1)
	{
		local CQmwXingKVGiZhNuS = [
		                    "character/swordman/effect/animation/atcometblade/finishfixsword.ani",
		                    "character/swordman/effect/animation/atcometblade/finishfloor_00.ani"
		                ]
foreach(path in CQmwXingKVGiZhNuS)
			DarktemplerCreateAniPooledObj(CQF9Apbkziyf3V1szk5, path, false, true, CQF9Apbkziyf3V1szk5.getXPos(), CQF9Apbkziyf3V1szk5.getYPos()-1, 0,1.0)
}
}

function onEndCurrentAni_Cometblade(CQJxeHdGbcvpGCBIHqt)
{
	if(!CQJxeHdGbcvpGCBIHqt) return
local CQkd55PiPOCeXqVp = CQJxeHdGbcvpGCBIHqt.getSkillSubState()
switch(CQkd55PiPOCeXqVp)
	{
	case 0:
		CQJxeHdGbcvpGCBIHqt.sq_IntVectClear()
CQJxeHdGbcvpGCBIHqt.sq_IntVectPush(1)
CQJxeHdGbcvpGCBIHqt.sq_AddSetStatePacket(220, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQJxeHdGbcvpGCBIHqt.sq_IntVectClear()
CQJxeHdGbcvpGCBIHqt.sq_IntVectPush(3)
CQJxeHdGbcvpGCBIHqt.sq_AddSetStatePacket(220, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQJxeHdGbcvpGCBIHqt.sq_IntVectClear()
CQJxeHdGbcvpGCBIHqt.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQJxeHdGbcvpGCBIHqt.sq_IntVectClear()
CQJxeHdGbcvpGCBIHqt.sq_IntVectPush(4)
CQJxeHdGbcvpGCBIHqt.sq_AddSetStatePacket(220, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 4:
		CQJxeHdGbcvpGCBIHqt.sq_IntVectClear()
CQJxeHdGbcvpGCBIHqt.sq_IntVectPush(5)
CQJxeHdGbcvpGCBIHqt.sq_AddSetStatePacket(220, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 5:
		CQJxeHdGbcvpGCBIHqt.sq_IntVectClear()
CQJxeHdGbcvpGCBIHqt.sq_IntVectPush(6)
CQJxeHdGbcvpGCBIHqt.sq_AddSetStatePacket(220, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 6:
		CQJxeHdGbcvpGCBIHqt.sq_IntVectClear()
CQJxeHdGbcvpGCBIHqt.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Cometblade(CQaMaxeR4XeYHB8A9k, CQ5HktkNul4gAa7sgEPX, CQwaJF1SCso5JR7Fl, CQZem2SYq4fCSO6PWqR)
{
	if(!CQaMaxeR4XeYHB8A9k || CQZem2SYq4fCSO6PWqR)	return false
local CQ8YHTr9FkPDsj5J = CQaMaxeR4XeYHB8A9k.getSkillSubState()
Calldaimus_onAttack(CQaMaxeR4XeYHB8A9k,CQ5HktkNul4gAa7sgEPX, CQwaJF1SCso5JR7Fl, CQZem2SYq4fCSO6PWqR)
switch(CQ8YHTr9FkPDsj5J)
	{
	case 0:

		break
case 1:

		break
}

}

function onEndState_Cometblade(CQWRUr6C9pzEiV5DakEn, CQV21AJWa2KeIQ4ZP)
{
	if(!CQWRUr6C9pzEiV5DakEn) return
local CQY3iMiz1hUYoM3HN47 = CQWRUr6C9pzEiV5DakEn.getSkillSubState()
switch(CQY3iMiz1hUYoM3HN47)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onProc_Cometblade(CQSLRjY6YiNhWI3S)
{
	if(!CQSLRjY6YiNhWI3S) return
local CQfOSQ7ILMt5Eg2L83 = CQSLRjY6YiNhWI3S.getSkillSubState()
local CQutYOLQhv7CyP1GRqzg = CQSLRjY6YiNhWI3S.getVar("Cometblade").get_vector(0)
local CQMbSVqkAyaDwm1Cm = sq_GetCurrentAnimation(CQSLRjY6YiNhWI3S)
local CQnhYRgK5VhEuBfJekA = CQSLRjY6YiNhWI3S.sq_GetCurrentFrameIndex(CQMbSVqkAyaDwm1Cm)
local CQG4VmBpUcFeewdB = sq_GetDelaySum(CQMbSVqkAyaDwm1Cm)
local CQhZraOjVOYWURdZE4 = CQSLRjY6YiNhWI3S.sq_GetStateTimer()
switch(CQfOSQ7ILMt5Eg2L83)
	{
	case 2:
		if(CQnhYRgK5VhEuBfJekA < 8)
		{
			local CQpP7XQ2lXXnrO91OqVH = sq_GetAccel(CQSLRjY6YiNhWI3S.getXPos(), CQutYOLQhv7CyP1GRqzg, CQhZraOjVOYWURdZE4, 150, false)
if(CQSLRjY6YiNhWI3S.isMovablePos(CQpP7XQ2lXXnrO91OqVH, CQSLRjY6YiNhWI3S.getYPos()))
				sq_setCurrentAxisPos(CQSLRjY6YiNhWI3S, 0, CQpP7XQ2lXXnrO91OqVH)
}
		else if(CQnhYRgK5VhEuBfJekA >= 8 && CQnhYRgK5VhEuBfJekA < 14)
		{
			CQSLRjY6YiNhWI3S.setSkillCommandEnable(220,true)
if(CQSLRjY6YiNhWI3S.sq_IsEnterSkill(220) != -1)
			{
				CQSLRjY6YiNhWI3S.sq_IntVectClear()
CQSLRjY6YiNhWI3S.sq_IntVectPush(1)
CQSLRjY6YiNhWI3S.sq_AddSetStatePacket(220, STATE_PRIORITY_IGNORE_FORCE, true)
}
		}
		break
case 3:
		local CQpP7XQ2lXXnrO91OqVH = sq_GetAccel(CQSLRjY6YiNhWI3S.getXPos(), CQutYOLQhv7CyP1GRqzg, CQhZraOjVOYWURdZE4, 100, false)
if(CQSLRjY6YiNhWI3S.isMovablePos(CQpP7XQ2lXXnrO91OqVH, CQSLRjY6YiNhWI3S.getYPos()))
			sq_setCurrentAxisPos(CQSLRjY6YiNhWI3S, 0, CQpP7XQ2lXXnrO91OqVH)
break
case 4:
		local CQpP7XQ2lXXnrO91OqVH = sq_GetAccel(CQSLRjY6YiNhWI3S.getXPos(), CQutYOLQhv7CyP1GRqzg, CQhZraOjVOYWURdZE4, 70, false)
local CQKjKptRe4iNqq7M = sq_GetAccel(CQSLRjY6YiNhWI3S.getZPos(), 220, CQhZraOjVOYWURdZE4, 70, false)
if(CQSLRjY6YiNhWI3S.isMovablePos(CQpP7XQ2lXXnrO91OqVH, CQSLRjY6YiNhWI3S.getYPos()))
		{
			sq_setCurrentAxisPos(CQSLRjY6YiNhWI3S, 0, CQpP7XQ2lXXnrO91OqVH)
sq_setCurrentAxisPos(CQSLRjY6YiNhWI3S, 2, CQKjKptRe4iNqq7M)
}
		break
case 5:
		if(CQnhYRgK5VhEuBfJekA < 6)
		{
			local CQKjKptRe4iNqq7M = sq_GetAccel(CQSLRjY6YiNhWI3S.getZPos(), 0, CQhZraOjVOYWURdZE4, 70, false)
sq_setCurrentAxisPos(CQSLRjY6YiNhWI3S, 2, CQKjKptRe4iNqq7M)
}else if(CQnhYRgK5VhEuBfJekA > 6)
		{
			local CQpP7XQ2lXXnrO91OqVH = sq_GetAccel(CQSLRjY6YiNhWI3S.getXPos(), CQutYOLQhv7CyP1GRqzg, CQhZraOjVOYWURdZE4, 80, false)
local CQKjKptRe4iNqq7M = sq_GetAccel(CQSLRjY6YiNhWI3S.getZPos(), 220, CQhZraOjVOYWURdZE4, 80, false)
if(CQSLRjY6YiNhWI3S.isMovablePos(CQpP7XQ2lXXnrO91OqVH, CQSLRjY6YiNhWI3S.getYPos()))
			{
				sq_setCurrentAxisPos(CQSLRjY6YiNhWI3S, 0, CQpP7XQ2lXXnrO91OqVH)
sq_setCurrentAxisPos(CQSLRjY6YiNhWI3S, 2, CQKjKptRe4iNqq7M)
}
			
		}
		break
case 6:
		local CQKjKptRe4iNqq7M = sq_GetAccel(CQSLRjY6YiNhWI3S.getZPos(), 0, CQhZraOjVOYWURdZE4, 150, false)
sq_setCurrentAxisPos(CQSLRjY6YiNhWI3S, 2, CQKjKptRe4iNqq7M)
break
}
}

function onKeyFrameFlag_Cometblade(CQXmoHdPuinkhk42, CQ9TgkXrXNB89B39Kk)
{
	if (!CQXmoHdPuinkhk42) return false
switch(CQ9TgkXrXNB89B39Kk)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Cometblade(CQtlFwazmvrNjwh5C)
{
	if(!CQtlFwazmvrNjwh5C) return
local CQB8bPUZDA5HdMgR14D = CQtlFwazmvrNjwh5C.getSkillSubState()
switch(CQB8bPUZDA5HdMgR14D)
	{
	case 0:

		break
}
}