
function checkExecutableSkill_Flowerbladedance(CQXbAZ2Q4xsElcor)
{
	if (!CQXbAZ2Q4xsElcor) return false
local CQxhc9i5nIjegKiqH3 = CQXbAZ2Q4xsElcor.sq_IsUseSkill(224)
if (CQxhc9i5nIjegKiqH3)
	{
		CQXbAZ2Q4xsElcor.sq_IntVectClear()
if(CQXbAZ2Q4xsElcor.sq_GetState() == 6)
			CQXbAZ2Q4xsElcor.sq_IntVectPush(2)
else
			CQXbAZ2Q4xsElcor.sq_IntVectPush(0)
CQXbAZ2Q4xsElcor.sq_AddSetStatePacket(224, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Flowerbladedance(CQP4AbYKC5Ft8tiyZmhq)
{
	if (!CQP4AbYKC5Ft8tiyZmhq) return false
return true
}

function onSetState_Flowerbladedance(CQ9Zco7pTlvnh5ueB, CQtPXKKjoaCk9iyo2js, CQBye7o293w848yt, CQvn6cbFQU3NdHtaYh)
{
	if(!CQ9Zco7pTlvnh5ueB) return
local CQDjsuBnGpiH5YtiUpKj = CQ9Zco7pTlvnh5ueB.sq_GetVectorData(CQBye7o293w848yt, 0)
CQ9Zco7pTlvnh5ueB.setSkillSubState(CQDjsuBnGpiH5YtiUpKj)
switch(CQDjsuBnGpiH5YtiUpKj)
	{
	case 0:
		CQ9Zco7pTlvnh5ueB.sq_StopMove()
local CQR5TGORc1fIMLOOw = sq_GetDistancePos(CQ9Zco7pTlvnh5ueB.getXPos(), CQ9Zco7pTlvnh5ueB.getDirection(), 250)
CQ9Zco7pTlvnh5ueB.getVar("Flowerbladedance").clear_vector()
CQ9Zco7pTlvnh5ueB.getVar("Flowerbladedance").push_vector(CQR5TGORc1fIMLOOw)
CQ9Zco7pTlvnh5ueB.getVar("Flowerbladedance").setBool(0,false)
local CQiCJ4QDsbPt6uIEPmx = CQ9Zco7pTlvnh5ueB.sq_GetBonusRateWithPassive(224, -1, 3,getATSwordmanBonus(CQ9Zco7pTlvnh5ueB,1.0,224))
CQ9Zco7pTlvnh5ueB.getVar("FlowerbladedanceAtk").setInt(0, CQiCJ4QDsbPt6uIEPmx)
CQ9Zco7pTlvnh5ueB.sq_SetCurrentAnimation(602)
CQ9Zco7pTlvnh5ueB.sq_SetCurrentAttackInfo(175)
local CQiCJ4QDsbPt6uIEPmx = CQ9Zco7pTlvnh5ueB.sq_GetBonusRateWithPassive(224, -1, 0,getATSwordmanBonus(CQ9Zco7pTlvnh5ueB,1.0,224))
CQ9Zco7pTlvnh5ueB.sq_SetCurrentAttackBonusRate(CQiCJ4QDsbPt6uIEPmx)
CQ9Zco7pTlvnh5ueB.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 1:
		CQ9Zco7pTlvnh5ueB.sq_SetCurrentAnimation(603)
CQ9Zco7pTlvnh5ueB.sq_SetCurrentAttackInfo(175)
local CQiCJ4QDsbPt6uIEPmx = CQ9Zco7pTlvnh5ueB.sq_GetBonusRateWithPassive(224, -1, 0, getATSwordmanBonus(CQ9Zco7pTlvnh5ueB,1.0,224))
CQ9Zco7pTlvnh5ueB.sq_SetCurrentAttackBonusRate(CQiCJ4QDsbPt6uIEPmx)
break
case 2:
		CQ9Zco7pTlvnh5ueB.getVar("Flowerbladedance").set_vector(0,CQ9Zco7pTlvnh5ueB.getXPos())
local CQiCJ4QDsbPt6uIEPmx = CQ9Zco7pTlvnh5ueB.sq_GetBonusRateWithPassive(224, -1, 4,getATSwordmanBonus(CQ9Zco7pTlvnh5ueB,1.0,224))
CQ9Zco7pTlvnh5ueB.getVar("FlowerbladedanceAtk").setInt(0, CQiCJ4QDsbPt6uIEPmx)
CQ9Zco7pTlvnh5ueB.sq_StopMove()
local CQR5TGORc1fIMLOOw = sq_GetDistancePos(CQ9Zco7pTlvnh5ueB.getXPos(), CQ9Zco7pTlvnh5ueB.getDirection(), 250)
CQ9Zco7pTlvnh5ueB.getVar("Flowerbladedance").clear_vector()
CQ9Zco7pTlvnh5ueB.getVar("Flowerbladedance").push_vector(CQR5TGORc1fIMLOOw)
CQ9Zco7pTlvnh5ueB.getVar("Flowerbladedance").setBool(0,false)
CQ9Zco7pTlvnh5ueB.sq_SetCurrentAnimation(604)
CQ9Zco7pTlvnh5ueB.sq_SetCurrentAttackInfo(176)
local CQiCJ4QDsbPt6uIEPmx = CQ9Zco7pTlvnh5ueB.sq_GetBonusRateWithPassive(224, -1, 1, getATSwordmanBonus(CQ9Zco7pTlvnh5ueB,1.0,224))
CQ9Zco7pTlvnh5ueB.sq_SetCurrentAttackBonusRate(CQiCJ4QDsbPt6uIEPmx)
CQ9Zco7pTlvnh5ueB.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 3:
		CQ9Zco7pTlvnh5ueB.sq_SetCurrentAnimation(605)
CQ9Zco7pTlvnh5ueB.sq_SetCurrentAttackInfo(176)
local CQiCJ4QDsbPt6uIEPmx = CQ9Zco7pTlvnh5ueB.sq_GetBonusRateWithPassive(224, -1, 0, getATSwordmanBonus(CQ9Zco7pTlvnh5ueB,1.0,224))
CQ9Zco7pTlvnh5ueB.sq_SetCurrentAttackBonusRate(CQiCJ4QDsbPt6uIEPmx)
break
case 4:
		CQ9Zco7pTlvnh5ueB.sq_SetCurrentAnimation(606)
CQ9Zco7pTlvnh5ueB.sq_SetCurrentAttackInfo(173)
local CQiCJ4QDsbPt6uIEPmx = CQ9Zco7pTlvnh5ueB.getVar("FlowerbladedanceAtk").getInt(0)
CQ9Zco7pTlvnh5ueB.sq_SetCurrentAttackBonusRate(CQiCJ4QDsbPt6uIEPmx)
local CQR5TGORc1fIMLOOw = sq_GetDistancePos(CQ9Zco7pTlvnh5ueB.getXPos(), CQ9Zco7pTlvnh5ueB.getDirection(), -380)
if(CQ9Zco7pTlvnh5ueB.getVar("Flowerbladedance").getBool(0))
			CQR5TGORc1fIMLOOw = CQ9Zco7pTlvnh5ueB.getXPos()
CQ9Zco7pTlvnh5ueB.getVar("Flowerbladedance").clear_vector()
CQ9Zco7pTlvnh5ueB.getVar("Flowerbladedance").push_vector(CQR5TGORc1fIMLOOw)
break
case 5:
		CQ9Zco7pTlvnh5ueB.sq_SetCurrentAnimation(607)
CQ9Zco7pTlvnh5ueB.sq_SetCurrentAttackInfo(176)
local CQiCJ4QDsbPt6uIEPmx = CQ9Zco7pTlvnh5ueB.sq_GetBonusRateWithPassive(224, -1, 0, getATSwordmanBonus(CQ9Zco7pTlvnh5ueB,1.0,224))
CQ9Zco7pTlvnh5ueB.sq_SetCurrentAttackBonusRate(CQiCJ4QDsbPt6uIEPmx)
break
case 6:
		CQ9Zco7pTlvnh5ueB.sq_SetCurrentAnimation(608)
CQ9Zco7pTlvnh5ueB.sq_SetCurrentAttackInfo(174)
local CQiCJ4QDsbPt6uIEPmx = CQ9Zco7pTlvnh5ueB.sq_GetBonusRateWithPassive(224, -1, 2, getATSwordmanBonus(CQ9Zco7pTlvnh5ueB,1.0,224))
CQ9Zco7pTlvnh5ueB.sq_SetCurrentAttackBonusRate(CQiCJ4QDsbPt6uIEPmx)
CQ9Zco7pTlvnh5ueB.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
}
	//
}

function onEndCurrentAni_Flowerbladedance(CQXzVIUJf3ZdAKSGJ)
{
	if(!CQXzVIUJf3ZdAKSGJ) return
local CQx9WVfqIUQ2abAC6mZ = CQXzVIUJf3ZdAKSGJ.getSkillSubState()
switch(CQx9WVfqIUQ2abAC6mZ)
	{
	case 0:
		CQXzVIUJf3ZdAKSGJ.sq_IntVectClear()
CQXzVIUJf3ZdAKSGJ.sq_IntVectPush(1)
CQXzVIUJf3ZdAKSGJ.sq_AddSetStatePacket(224, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQXzVIUJf3ZdAKSGJ.sq_IntVectClear()
CQXzVIUJf3ZdAKSGJ.sq_IntVectPush(2)
CQXzVIUJf3ZdAKSGJ.sq_AddSetStatePacket(224, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQXzVIUJf3ZdAKSGJ.sq_IntVectClear()
CQXzVIUJf3ZdAKSGJ.sq_IntVectPush(6)
CQXzVIUJf3ZdAKSGJ.sq_AddSetStatePacket(224, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 6:
		CQXzVIUJf3ZdAKSGJ.sq_IntVectClear()
CQXzVIUJf3ZdAKSGJ.sq_IntVectPush(4)
CQXzVIUJf3ZdAKSGJ.sq_AddSetStatePacket(224, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 5:
		CQXzVIUJf3ZdAKSGJ.sq_IntVectClear()
CQXzVIUJf3ZdAKSGJ.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 4:
		CQXzVIUJf3ZdAKSGJ.sq_IntVectClear()
CQXzVIUJf3ZdAKSGJ.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Flowerbladedance(CQPN8fCh3F2LS6AK, CQ9GIUs1b1uPsoPNhj, CQtalJmoXb9ii9PXzE5O, CQBeL51nkSOqIJOJt)
{
	if(!CQPN8fCh3F2LS6AK || CQBeL51nkSOqIJOJt)	return false
local CQvclxDMiBTzovIBoqW = CQPN8fCh3F2LS6AK.getSkillSubState()
Calldaimus_onAttack(CQPN8fCh3F2LS6AK,CQ9GIUs1b1uPsoPNhj, CQtalJmoXb9ii9PXzE5O, CQBeL51nkSOqIJOJt)
switch(CQvclxDMiBTzovIBoqW)
	{
	case 0:

		break
case 1:

		break
}

}

function onChangeSkillEffect_Flowerbladedance(CQDfLtWD8YHfWZIZ, CQR1qFlyQPb2pus1Am, CQiJ333dF7VLt7aVMHPc)
{
	if(!CQDfLtWD8YHfWZIZ) return
local CQ1KpTFVxzrAQpa45 = CQiJ333dF7VLt7aVMHPc.readDword()
}

function onEnterFrame_Flowerbladedance(CQUIhrvPaI5ibcEM9pR, CQHWGS8xR5pqwKp7)
{
	if(!CQUIhrvPaI5ibcEM9pR || !CQUIhrvPaI5ibcEM9pR.isMyControlObject()) return
local CQjvgML7WqRxnbG3qm = CQUIhrvPaI5ibcEM9pR.getSkillSubState()
switch(CQjvgML7WqRxnbG3qm)
	{
	case 0:
		switch(CQHWGS8xR5pqwKp7)
		{
		case 1:
			sq_SetMyShake(CQUIhrvPaI5ibcEM9pR,1,30)
sq_flashScreen(CQUIhrvPaI5ibcEM9pR,0,50,0,89,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
}
		break
case 1:
		switch(CQHWGS8xR5pqwKp7)
		{
		case 0:
			sq_flashScreen(CQUIhrvPaI5ibcEM9pR,0,20,0,127,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 3:
			sq_BinaryStartWrite()
sq_BinaryWriteDword(0)
sq_SendChangeSkillEffectPacket(CQUIhrvPaI5ibcEM9pR, 224)
break
}
		break
case 2:
		switch(CQHWGS8xR5pqwKp7)
		{
		case 0:
			sq_SetMyShake(CQUIhrvPaI5ibcEM9pR,1,150)
sq_flashScreen(CQUIhrvPaI5ibcEM9pR,0,20,0,127,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 3:
			sq_BinaryStartWrite()
sq_BinaryWriteDword(0)
sq_SendChangeSkillEffectPacket(CQUIhrvPaI5ibcEM9pR, 224)
break
}
		break
case 4:
		switch(CQHWGS8xR5pqwKp7)
		{
		case 1:

			break
case 5:
			sq_flashScreen(CQUIhrvPaI5ibcEM9pR,10,50,100,178,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
sq_SetMyShake(CQUIhrvPaI5ibcEM9pR,5,320)
sq_BinaryStartWrite()
sq_BinaryWriteDword(1)
sq_SendChangeSkillEffectPacket(CQUIhrvPaI5ibcEM9pR, 224)
break
case 6:
			sq_SetMyShake(CQUIhrvPaI5ibcEM9pR,5,320)
break
}
		break
case 6:
		switch(CQHWGS8xR5pqwKp7)
		{
		case 0:
			sq_SetMyShake(CQUIhrvPaI5ibcEM9pR,3,160)
sq_flashScreen(CQUIhrvPaI5ibcEM9pR,0,20,0,127,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 5:
			sq_BinaryStartWrite()
sq_BinaryWriteDword(0)
sq_SendChangeSkillEffectPacket(CQUIhrvPaI5ibcEM9pR, 224)
break
}
		break
}
}

function onChangeSkillEffect_Flowerbladedance(CQEgFjpZLaSYxXF9rJv9, CQ43bwben3xgUoD5u, CQQLNOdTAUL5Y9DRaEH)
{
	if(!CQEgFjpZLaSYxXF9rJv9 || CQ43bwben3xgUoD5u != 224) return
local CQLOyBP46FmCTES8 = CQQLNOdTAUL5Y9DRaEH.readDword()
if(CQLOyBP46FmCTES8 == 0)
		CQEgFjpZLaSYxXF9rJv9.resetHitObjectList()
else if(CQLOyBP46FmCTES8 == 1)
	{
		local CQ7y9Rwao11DvYA4Np = "character/swordman/effect/animation/atflowerbladedance/spin/flower_spin.ani"
ATswordmanCreateAniPooledObj(CQEgFjpZLaSYxXF9rJv9, CQ7y9Rwao11DvYA4Np, false, true,CQEgFjpZLaSYxXF9rJv9.getXPos(), CQEgFjpZLaSYxXF9rJv9.getYPos(), 0,1.0)
}else if(CQLOyBP46FmCTES8 == 2)
	{
		CQEgFjpZLaSYxXF9rJv9.getVar("Flowerbladedance").setBool(0,true)
}else if(CQLOyBP46FmCTES8 == 3)
	{
		CQEgFjpZLaSYxXF9rJv9.getVar("Flowerbladedance").setBool(0,false)
}
}

function onEndState_Flowerbladedance(CQrnPmjmBbyplLAf3, CQCjxsM3wS8egnP77mA)
{
	if(!CQrnPmjmBbyplLAf3) return
local CQc5PXAHG9sYz7Oh = CQrnPmjmBbyplLAf3.getSkillSubState()
switch(CQc5PXAHG9sYz7Oh)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onKeyFrameFlag_Flowerbladedance(CQAXzdeidYjghpOdmj, CQdAZn5gsPG59dITepCm)
{
	if (!CQAXzdeidYjghpOdmj) return false
switch(CQdAZn5gsPG59dITepCm)
	{
	case 0:

		break
}
	return true
}

function onProc_Flowerbladedance(CQyuwpHM27vCjKIgy)
{
	if(!CQyuwpHM27vCjKIgy) return
local CQNU5LuSvwCDdvKxGmb = CQyuwpHM27vCjKIgy.getSkillSubState()
local CQbka8YvZIwE5ZJk = sq_GetCurrentAnimation(CQyuwpHM27vCjKIgy)
local CQF6jY7dj54eMiJvVj = CQyuwpHM27vCjKIgy.sq_GetCurrentFrameIndex(CQbka8YvZIwE5ZJk)
local CQg7HiKVuqoY68Hz1Eu4 = CQyuwpHM27vCjKIgy.sq_GetStateTimer()
switch(CQNU5LuSvwCDdvKxGmb)
	{
	case 2:
		local CQoVjHmW7Efn1EGUT = CQyuwpHM27vCjKIgy.getVar("Flowerbladedance").get_vector(0)
local CQ2DH5Rxq3PkCfGYcp3 = sq_GetAccel(CQyuwpHM27vCjKIgy.getXPos(), CQoVjHmW7Efn1EGUT, CQg7HiKVuqoY68Hz1Eu4, 50, false)
local CQmoUxV7NUl72LFQ = sq_GetAccel(CQyuwpHM27vCjKIgy.getZPos(), 200, CQg7HiKVuqoY68Hz1Eu4, 50, false)
sq_setCurrentAxisPos(CQyuwpHM27vCjKIgy, 2, CQmoUxV7NUl72LFQ)
if(!CQyuwpHM27vCjKIgy.isMovablePos(CQ2DH5Rxq3PkCfGYcp3, CQyuwpHM27vCjKIgy.getYPos()))
			break
sq_setCurrentAxisPos(CQyuwpHM27vCjKIgy, 0, CQ2DH5Rxq3PkCfGYcp3)
break
case 4:
		local CQoVjHmW7Efn1EGUT = CQyuwpHM27vCjKIgy.getVar("Flowerbladedance").get_vector(0)
local CQ2DH5Rxq3PkCfGYcp3 = sq_GetAccel(CQyuwpHM27vCjKIgy.getXPos(), CQoVjHmW7Efn1EGUT, CQg7HiKVuqoY68Hz1Eu4, 50, false)
if(!CQyuwpHM27vCjKIgy.isMovablePos(CQ2DH5Rxq3PkCfGYcp3, CQyuwpHM27vCjKIgy.getYPos()))
			break
sq_setCurrentAxisPos(CQyuwpHM27vCjKIgy, 0, CQ2DH5Rxq3PkCfGYcp3)
break
case 6:
		local CQmoUxV7NUl72LFQ = sq_GetAccel(CQyuwpHM27vCjKIgy.getZPos(), 0, CQg7HiKVuqoY68Hz1Eu4, 50, false)
sq_setCurrentAxisPos(CQyuwpHM27vCjKIgy, 2, CQmoUxV7NUl72LFQ)
if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && CQyuwpHM27vCjKIgy.getDirection() == 0)
		{
			sq_BinaryStartWrite()
sq_BinaryWriteDword(2)
sq_SendChangeSkillEffectPacket(CQyuwpHM27vCjKIgy, 224)
}
		else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && CQyuwpHM27vCjKIgy.getDirection() == 1)
		{
			sq_BinaryStartWrite()
sq_BinaryWriteDword(2)
sq_SendChangeSkillEffectPacket(CQyuwpHM27vCjKIgy, 224)
}
		else
		{
			sq_BinaryStartWrite()
sq_BinaryWriteDword(3)
sq_SendChangeSkillEffectPacket(CQyuwpHM27vCjKIgy, 224)
}
		
		break
}
}

function onProcCon_Flowerbladedance(CQYTq3JazJisQ3Ln)
{
	if(!CQYTq3JazJisQ3Ln) return
local CQoYxBjadqtVdU6L = CQYTq3JazJisQ3Ln.getSkillSubState()
switch(CQoYxBjadqtVdU6L)
	{
	case 0:

		break
}
}