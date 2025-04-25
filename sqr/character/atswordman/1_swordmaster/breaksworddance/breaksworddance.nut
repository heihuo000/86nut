
function checkExecutableSkill_Breaksworddance(CQ2VLkAPyAzhmpbfD)
{
	if (!CQ2VLkAPyAzhmpbfD) return false
local CQyO1MK8yOwsSQdu = CQ2VLkAPyAzhmpbfD.sq_IsUseSkill(140)
if (CQyO1MK8yOwsSQdu)
	{
		CheckUseAddloadDrawsword(CQ2VLkAPyAzhmpbfD,140, {[0] = true,[108] = true,[14] = true},0)
CQ2VLkAPyAzhmpbfD.sq_IntVectClear()
CQ2VLkAPyAzhmpbfD.sq_IntVectPush(0)
CQ2VLkAPyAzhmpbfD.sq_AddSetStatePacket(140, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Breaksworddance(CQ86As9Xgnw53yw5Tcp)
{
	if (!CQ86As9Xgnw53yw5Tcp) return false
if(CQ86As9Xgnw53yw5Tcp.getZPos() > 10)
		return false
return CheckForceDrawsword(CQ86As9Xgnw53yw5Tcp,140, {[0] = true,[108] = true,[14] = true})
}

function onSetState_Breaksworddance(CQWCcXZItD4VBTwR, CQVSCdEw5foFLFQ8Ux, CQYirnn5UtfENxq4wPGH, CQSm6pNKSAPrZ2qft)
{
	if(!CQWCcXZItD4VBTwR) return
local CQfTsLPEl9ztGtm6FWT = CQWCcXZItD4VBTwR.sq_GetVectorData(CQYirnn5UtfENxq4wPGH, 0)
CQWCcXZItD4VBTwR.setSkillSubState(CQfTsLPEl9ztGtm6FWT)
local CQu768wkprKnX5Ug = CQWCcXZItD4VBTwR.getXPos()
local CQMVsYk2dZUTJDU9Vc = CQWCcXZItD4VBTwR.getYPos()
CQWCcXZItD4VBTwR.getVar("BreaksworddanceSub").setInt(0, CQfTsLPEl9ztGtm6FWT)
local CQnDTi1pe6N8Slnk1PQp = CQWCcXZItD4VBTwR.getVar("BreaksworddanceSpeed").getFloat(0)
if(CQnDTi1pe6N8Slnk1PQp < 0.5)
		CQnDTi1pe6N8Slnk1PQp = 1.0
switch(CQfTsLPEl9ztGtm6FWT)
	{
	case 0:
		CQWCcXZItD4VBTwR.getVar("BreaksworddanceSpeed").setFloat(0,1.0)
CQWCcXZItD4VBTwR.sq_StopMove()
BodyMagicSword(CQWCcXZItD4VBTwR, "BreakSwordDance_Cast")
CQWCcXZItD4VBTwR.getVar("BreaksworddanceF").setBool(0,false)
if(MagicSword_IsAppebd(CQWCcXZItD4VBTwR))
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(256)
else
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(135)
if(CQWCcXZItD4VBTwR.isMyControlObject())
		{
			local CQppJHSUJwtNsGbRk9R = CQWCcXZItD4VBTwR.getVar()
local CQ3Qm5cRvK7HDcbz = sq_flashScreen(CQWCcXZItD4VBTwR,150, 10500, 300, 250, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM)
CQppJHSUJwtNsGbRk9R.setObject(0,CQ3Qm5cRvK7HDcbz)
}
		
		local CQqz2x6FOjaII3vjbV = sq_GetDistancePos(CQu768wkprKnX5Ug, CQWCcXZItD4VBTwR.getDirection(), 300)
CQWCcXZItD4VBTwR.getVar("Breaksworddance").clear_vector()
CQWCcXZItD4VBTwR.getVar("Breaksworddance").push_vector(CQu768wkprKnX5Ug)
CQWCcXZItD4VBTwR.getVar("Breaksworddance").push_vector(CQMVsYk2dZUTJDU9Vc)
CQWCcXZItD4VBTwR.getVar("Breaksworddance").push_vector(CQqz2x6FOjaII3vjbV)
CQWCcXZItD4VBTwR.getVar("Breaksworddance").push_vector(CQMVsYk2dZUTJDU9Vc)
CQWCcXZItD4VBTwR.sq_StartWrite()
CQWCcXZItD4VBTwR.sq_WriteDword(140)
CQWCcXZItD4VBTwR.sq_WriteDword(0)
CQWCcXZItD4VBTwR.sq_SendCreatePassiveObjectPacket(24383, 0, 300, 0, 0)
CQWCcXZItD4VBTwR.sq_StartWrite()
CQWCcXZItD4VBTwR.sq_WriteDword(140)
CQWCcXZItD4VBTwR.sq_WriteDword(1)
CQWCcXZItD4VBTwR.sq_SendCreatePassiveObjectPacket(24383, 0, 300, 0, 0)
CQWCcXZItD4VBTwR.sq_StartWrite()
CQWCcXZItD4VBTwR.sq_WriteDword(140)
CQWCcXZItD4VBTwR.sq_WriteDword(2)
CQWCcXZItD4VBTwR.sq_SendCreatePassiveObjectPacket(24383, 0, 497, 0, 0)
CQWCcXZItD4VBTwR.sq_StartWrite()
CQWCcXZItD4VBTwR.sq_WriteDword(140)
CQWCcXZItD4VBTwR.sq_WriteDword(3)
CQWCcXZItD4VBTwR.sq_SendCreatePassiveObjectPacket(24383, 0, 402, -50, 0)
CQWCcXZItD4VBTwR.sq_StartWrite()
CQWCcXZItD4VBTwR.sq_WriteDword(140)
CQWCcXZItD4VBTwR.sq_WriteDword(4)
CQWCcXZItD4VBTwR.sq_SendCreatePassiveObjectPacket(24383, 0, 402, 57, 0)
CQWCcXZItD4VBTwR.sq_StartWrite()
CQWCcXZItD4VBTwR.sq_WriteDword(140)
CQWCcXZItD4VBTwR.sq_WriteDword(5)
CQWCcXZItD4VBTwR.sq_SendCreatePassiveObjectPacket(24383, 0, 198, -48, 0)
CQWCcXZItD4VBTwR.sq_StartWrite()
CQWCcXZItD4VBTwR.sq_WriteDword(140)
CQWCcXZItD4VBTwR.sq_WriteDword(6)
CQWCcXZItD4VBTwR.sq_SendCreatePassiveObjectPacket(24383, 0, 297, 42, 0)
CQWCcXZItD4VBTwR.sq_StartWrite()
CQWCcXZItD4VBTwR.sq_WriteDword(140)
CQWCcXZItD4VBTwR.sq_WriteDword(7)
CQWCcXZItD4VBTwR.sq_SendCreatePassiveObjectPacket(24383, 0, 100, -31, 0)
CQWCcXZItD4VBTwR.sq_StartWrite()
CQWCcXZItD4VBTwR.sq_WriteDword(140)
CQWCcXZItD4VBTwR.sq_WriteDword(8)
CQWCcXZItD4VBTwR.sq_SendCreatePassiveObjectPacket(24383, 0, 100, 21, 0)
break
case 1:
		BodyMagicSword(CQWCcXZItD4VBTwR, "BreakSwordDance_Attack1")
if(MagicSword_IsAppebd(CQWCcXZItD4VBTwR))
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(249)
else
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(136)
break
case 2:
		BodyMagicSword(CQWCcXZItD4VBTwR, "BreakSwordDance_Attack2")
if(MagicSword_IsAppebd(CQWCcXZItD4VBTwR))
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(250)
else
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(137)
break
case 3:
		BodyMagicSword(CQWCcXZItD4VBTwR, "BreakSwordDance_Attack3")
if(MagicSword_IsAppebd(CQWCcXZItD4VBTwR))
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(251)
else
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(138)
break
case 4:
		BodyMagicSword(CQWCcXZItD4VBTwR, "BreakSwordDance_Attack4")
if(MagicSword_IsAppebd(CQWCcXZItD4VBTwR))
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(252)
else
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(139)
break
case 5:
		BodyMagicSword(CQWCcXZItD4VBTwR, "BreakSwordDance_Attack5")
if(MagicSword_IsAppebd(CQWCcXZItD4VBTwR))
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(253)
else
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(140)
break
case 6:
		BodyMagicSword(CQWCcXZItD4VBTwR, "BreakSwordDance_Attack6")
if(MagicSword_IsAppebd(CQWCcXZItD4VBTwR))
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(254)
else
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(141)
break
case 7:
		BodyMagicSword(CQWCcXZItD4VBTwR, "BreakSwordDance_Attack7")
if(MagicSword_IsAppebd(CQWCcXZItD4VBTwR))
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(255)
else
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(142)
break
case 8:
		BodyMagicSword(CQWCcXZItD4VBTwR, "BreakSwordDance_FinishAttack")
if(MagicSword_IsAppebd(CQWCcXZItD4VBTwR))
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(257)
else
			CQWCcXZItD4VBTwR.sq_SetCurrentAnimation(143)
break
}
CQWCcXZItD4VBTwR.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, CQnDTi1pe6N8Slnk1PQp)
}

function onEndCurrentAni_Breaksworddance(CQK9otJu3mhtoyYYqrv8)
{
	if(!CQK9otJu3mhtoyYYqrv8) return
local CQTN1FiYyHDnO6WlO = CQK9otJu3mhtoyYYqrv8.getSkillSubState()
switch(CQTN1FiYyHDnO6WlO)
	{
	case 0:
		CQK9otJu3mhtoyYYqrv8.sq_IntVectClear()
CQK9otJu3mhtoyYYqrv8.sq_IntVectPush(1)
CQK9otJu3mhtoyYYqrv8.sq_AddSetStatePacket(140, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQK9otJu3mhtoyYYqrv8.sq_IntVectClear()
CQK9otJu3mhtoyYYqrv8.sq_IntVectPush(2)
CQK9otJu3mhtoyYYqrv8.sq_AddSetStatePacket(140, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQK9otJu3mhtoyYYqrv8.sq_IntVectClear()
CQK9otJu3mhtoyYYqrv8.sq_IntVectPush(3)
CQK9otJu3mhtoyYYqrv8.sq_AddSetStatePacket(140, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQK9otJu3mhtoyYYqrv8.sq_IntVectClear()
CQK9otJu3mhtoyYYqrv8.sq_IntVectPush(4)
CQK9otJu3mhtoyYYqrv8.sq_AddSetStatePacket(140, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 4:
		CQK9otJu3mhtoyYYqrv8.sq_IntVectClear()
CQK9otJu3mhtoyYYqrv8.sq_IntVectPush(5)
CQK9otJu3mhtoyYYqrv8.sq_AddSetStatePacket(140, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 5:
		CQK9otJu3mhtoyYYqrv8.sq_IntVectClear()
CQK9otJu3mhtoyYYqrv8.sq_IntVectPush(6)
CQK9otJu3mhtoyYYqrv8.sq_AddSetStatePacket(140, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 6:
		CQK9otJu3mhtoyYYqrv8.sq_IntVectClear()
CQK9otJu3mhtoyYYqrv8.sq_IntVectPush(7)
CQK9otJu3mhtoyYYqrv8.sq_AddSetStatePacket(140, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 7:
		CQK9otJu3mhtoyYYqrv8.sq_IntVectClear()
CQK9otJu3mhtoyYYqrv8.sq_IntVectPush(8)
CQK9otJu3mhtoyYYqrv8.sq_AddSetStatePacket(140, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 8:
		CQK9otJu3mhtoyYYqrv8.sq_IntVectClear()
CQK9otJu3mhtoyYYqrv8.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Breaksworddance(CQsGi3YBXgYTpFrnDxH, CQ6ERT7AmuX8txrc, CQeaDrsrDDQNEHeqX8, CQXevSq88f2JyWwbdWJC)
{
	if(!CQsGi3YBXgYTpFrnDxH)	return false
local CQxcVMgXEtiIw4wxh = CQsGi3YBXgYTpFrnDxH.getSkillSubState()
MagicswordupOccur(CQsGi3YBXgYTpFrnDxH, CQ6ERT7AmuX8txrc, CQeaDrsrDDQNEHeqX8, CQXevSq88f2JyWwbdWJC)
switch(CQxcVMgXEtiIw4wxh)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Breaksworddance(CQPfWjBIMAdtuuQmlcz, CQ918QOlc8OUelqv)
{
	if(!CQPfWjBIMAdtuuQmlcz) return
local CQtJWOQ5KrTqUGqwo9 = CQPfWjBIMAdtuuQmlcz.getSkillSubState()
local CQBs8B3sgZHzrcmUsWwt = CQPfWjBIMAdtuuQmlcz.getVar("Breaksworddance").get_vector(2)
local CQvWIRFqt6nfmKUrA = CQPfWjBIMAdtuuQmlcz.getVar("Breaksworddance").get_vector(3)
switch(CQtJWOQ5KrTqUGqwo9)
	{
	case 1:
		if(CQ918QOlc8OUelqv == 4 && CQPfWjBIMAdtuuQmlcz.isMyControlObject())
		{
			if(CQPfWjBIMAdtuuQmlcz.isMyControlObject())
			{
				sq_SetMyShake(CQPfWjBIMAdtuuQmlcz,5,300)
sq_flashScreen(CQPfWjBIMAdtuuQmlcz,0,60,0,76,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_COVER)
}
			
			CQPfWjBIMAdtuuQmlcz.sq_StartWrite()
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(140)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(9)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(CQPfWjBIMAdtuuQmlcz.sq_GetBonusRateWithPassive(140, -1, 0, getATSwordmanBonus(CQPfWjBIMAdtuuQmlcz,1.0,140)))
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(GetMagicSwordAppIndex(CQPfWjBIMAdtuuQmlcz))
sq_SendCreatePassiveObjectPacketPos(CQPfWjBIMAdtuuQmlcz, 24383, 0, CQBs8B3sgZHzrcmUsWwt, CQvWIRFqt6nfmKUrA, 0)
}
		break
case 2:
		if(CQ918QOlc8OUelqv == 3 && CQPfWjBIMAdtuuQmlcz.isMyControlObject())
		{
			sq_SetMyShake(CQPfWjBIMAdtuuQmlcz,5,300)
sq_flashScreen(CQPfWjBIMAdtuuQmlcz,0,60,0,102,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_COVER)
CQPfWjBIMAdtuuQmlcz.sq_StartWrite()
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(140)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(9)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(CQPfWjBIMAdtuuQmlcz.sq_GetBonusRateWithPassive(140, -1, 0, getATSwordmanBonus(CQPfWjBIMAdtuuQmlcz,1.0,140)))
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(GetMagicSwordAppIndex(CQPfWjBIMAdtuuQmlcz))
sq_SendCreatePassiveObjectPacketPos(CQPfWjBIMAdtuuQmlcz, 24383, 0, CQBs8B3sgZHzrcmUsWwt, CQvWIRFqt6nfmKUrA, 0)
}
		break
case 3:
		if(CQ918QOlc8OUelqv == 3 && CQPfWjBIMAdtuuQmlcz.isMyControlObject())
		{
			sq_SetMyShake(CQPfWjBIMAdtuuQmlcz,16,120)
sq_flashScreen(CQPfWjBIMAdtuuQmlcz,0,60,0,76,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_COVER)
CQPfWjBIMAdtuuQmlcz.sq_StartWrite()
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(140)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(9)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(CQPfWjBIMAdtuuQmlcz.sq_GetBonusRateWithPassive(140, -1, 0, getATSwordmanBonus(CQPfWjBIMAdtuuQmlcz,1.0,140)))
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(GetMagicSwordAppIndex(CQPfWjBIMAdtuuQmlcz))
sq_SendCreatePassiveObjectPacketPos(CQPfWjBIMAdtuuQmlcz, 24383, 0, CQBs8B3sgZHzrcmUsWwt, CQvWIRFqt6nfmKUrA, 0)
}
		break
case 4:
		if(CQ918QOlc8OUelqv == 2 && CQPfWjBIMAdtuuQmlcz.isMyControlObject())
		{
			sq_SetMyShake(CQPfWjBIMAdtuuQmlcz,5,300)
sq_flashScreen(CQPfWjBIMAdtuuQmlcz,0,60,0,102,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_COVER)
CQPfWjBIMAdtuuQmlcz.sq_StartWrite()
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(140)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(9)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(CQPfWjBIMAdtuuQmlcz.sq_GetBonusRateWithPassive(140, -1, 0, getATSwordmanBonus(CQPfWjBIMAdtuuQmlcz,1.0,140)))
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(GetMagicSwordAppIndex(CQPfWjBIMAdtuuQmlcz))
sq_SendCreatePassiveObjectPacketPos(CQPfWjBIMAdtuuQmlcz, 24383, 0, CQBs8B3sgZHzrcmUsWwt, CQvWIRFqt6nfmKUrA, 0)
}
		break
case 5:
		if(CQ918QOlc8OUelqv == 2 && CQPfWjBIMAdtuuQmlcz.isMyControlObject())
		{
			sq_SetMyShake(CQPfWjBIMAdtuuQmlcz,5,300)
sq_flashScreen(CQPfWjBIMAdtuuQmlcz,0,60,0,76,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_COVER)
CQPfWjBIMAdtuuQmlcz.sq_StartWrite()
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(140)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(9)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(CQPfWjBIMAdtuuQmlcz.sq_GetBonusRateWithPassive(140, -1, 0, getATSwordmanBonus(CQPfWjBIMAdtuuQmlcz,1.0,140)))
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(GetMagicSwordAppIndex(CQPfWjBIMAdtuuQmlcz))
sq_SendCreatePassiveObjectPacketPos(CQPfWjBIMAdtuuQmlcz, 24383, 0, CQBs8B3sgZHzrcmUsWwt, CQvWIRFqt6nfmKUrA, 0)
}
		break
case 6:
		if(CQ918QOlc8OUelqv == 3 && CQPfWjBIMAdtuuQmlcz.isMyControlObject())
		{
			sq_SetMyShake(CQPfWjBIMAdtuuQmlcz,5,300)
sq_flashScreen(CQPfWjBIMAdtuuQmlcz,0,60,0,102,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_COVER)
CQPfWjBIMAdtuuQmlcz.sq_StartWrite()
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(140)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(9)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(CQPfWjBIMAdtuuQmlcz.sq_GetBonusRateWithPassive(140, -1, 0, getATSwordmanBonus(CQPfWjBIMAdtuuQmlcz,1.0,140)))
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(GetMagicSwordAppIndex(CQPfWjBIMAdtuuQmlcz))
sq_SendCreatePassiveObjectPacketPos(CQPfWjBIMAdtuuQmlcz, 24383, 0, CQBs8B3sgZHzrcmUsWwt, CQvWIRFqt6nfmKUrA, 0)
}
		break
case 7:
		if(CQ918QOlc8OUelqv == 3 && CQPfWjBIMAdtuuQmlcz.isMyControlObject())
		{
			sq_SetMyShake(CQPfWjBIMAdtuuQmlcz,5,300)
sq_flashScreen(CQPfWjBIMAdtuuQmlcz,0,60,0,76,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_COVER)
CQPfWjBIMAdtuuQmlcz.sq_StartWrite()
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(140)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(9)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(CQPfWjBIMAdtuuQmlcz.sq_GetBonusRateWithPassive(140, -1, 0, getATSwordmanBonus(CQPfWjBIMAdtuuQmlcz,1.0,140)))
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(GetMagicSwordAppIndex(CQPfWjBIMAdtuuQmlcz))
sq_SendCreatePassiveObjectPacketPos(CQPfWjBIMAdtuuQmlcz, 24383, 0, CQBs8B3sgZHzrcmUsWwt, CQvWIRFqt6nfmKUrA, 0)
}
		break
case 8:
		if(CQ918QOlc8OUelqv == 4 && CQPfWjBIMAdtuuQmlcz.isMyControlObject())
		{
			sq_SetMyShake(CQPfWjBIMAdtuuQmlcz,5,300)
sq_flashScreen(CQPfWjBIMAdtuuQmlcz,0,60,0,178,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_COVER)
CQPfWjBIMAdtuuQmlcz.sq_StartWrite()
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(140)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(9)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(CQPfWjBIMAdtuuQmlcz.sq_GetBonusRateWithPassive(140, -1, 1, getATSwordmanBonus(CQPfWjBIMAdtuuQmlcz,1.0,140)))
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(5)
sq_SendCreatePassiveObjectPacketPos(CQPfWjBIMAdtuuQmlcz, 24383, 0, CQBs8B3sgZHzrcmUsWwt, CQvWIRFqt6nfmKUrA, 0)
}
		else if(CQ918QOlc8OUelqv == 1 && CQPfWjBIMAdtuuQmlcz.isMyControlObject())
		{
			CQPfWjBIMAdtuuQmlcz.sq_StartWrite()
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(140)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(9)
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(CQPfWjBIMAdtuuQmlcz.sq_GetBonusRateWithPassive(140, -1, 0, getATSwordmanBonus(CQPfWjBIMAdtuuQmlcz,1.0,140)))
CQPfWjBIMAdtuuQmlcz.sq_WriteDword(GetMagicSwordAppIndex(CQPfWjBIMAdtuuQmlcz))
sq_SendCreatePassiveObjectPacketPos(CQPfWjBIMAdtuuQmlcz, 24383, 0, CQBs8B3sgZHzrcmUsWwt, CQvWIRFqt6nfmKUrA, 0)
}
		break
}
}

function onEndState_Breaksworddance(CQSvlmtj4QB2YyUqGrV, CQfgLszJnKrLT5uy4Cs6)
{
	if(!CQSvlmtj4QB2YyUqGrV) return
local CQu3QX4oCj5Aviye9 = CQSvlmtj4QB2YyUqGrV.getSkillSubState()
if(CQfgLszJnKrLT5uy4Cs6 != 140)
	{
		if(CQu3QX4oCj5Aviye9 != 8)
			CQSvlmtj4QB2YyUqGrV.getVar("BreaksworddanceF").setBool(0,true)
local CQML4dHnTmEilzyogP9 = CQSvlmtj4QB2YyUqGrV.getVar().getObject(0)
if(CQML4dHnTmEilzyogP9)
		{
			local CQhOpbn1oGgqgHtt = sq_GetCNRDObjectToFlashScreen(CQML4dHnTmEilzyogP9)
if(CQhOpbn1oGgqgHtt)
				CQhOpbn1oGgqgHtt.fadeOut()
}
	}
	
}

function onProc_Breaksworddance(CQpt3pdF9gSxzYWarWii)
{
	if(!CQpt3pdF9gSxzYWarWii) return
local CQ3bpLXywuxfh4Wiu = CQpt3pdF9gSxzYWarWii.getSkillSubState()
local CQqhh7afHDZ29urWEc4 = CQpt3pdF9gSxzYWarWii.getVar("Breaksworddance").get_vector(0)
local CQK4FYUBYdqZj7rE = CQpt3pdF9gSxzYWarWii.getVar("Breaksworddance").get_vector(1)
switch(CQ3bpLXywuxfh4Wiu)
	{
	case 1:
		local CQTZbifPIt1AfFeuN9 = sq_GetDistancePos(CQqhh7afHDZ29urWEc4, CQpt3pdF9gSxzYWarWii.getDirection(), 300)
local CQsXNHAchCyi6xwI3Ojb = sq_GetCurrentAnimation(CQpt3pdF9gSxzYWarWii)
local CQ6Ay5e8t88qRJwp7 = sq_GetDelaySum(CQsXNHAchCyi6xwI3Ojb)
local CQeudxTOZrIx7tQAfrI = CQpt3pdF9gSxzYWarWii.sq_GetStateTimer()
local CQXmtt2eUZkY25qs = sq_GetAccel(CQpt3pdF9gSxzYWarWii.getXPos(), CQTZbifPIt1AfFeuN9, CQeudxTOZrIx7tQAfrI, 50, false)
if(CQpt3pdF9gSxzYWarWii.isMovablePos(CQXmtt2eUZkY25qs, CQpt3pdF9gSxzYWarWii.getYPos()))
			sq_setCurrentAxisPos(CQpt3pdF9gSxzYWarWii, 0, CQXmtt2eUZkY25qs)
break
case 2:
		local CQTZbifPIt1AfFeuN9 = sq_GetDistancePos(CQqhh7afHDZ29urWEc4, CQpt3pdF9gSxzYWarWii.getDirection(), 497)
local CQsXNHAchCyi6xwI3Ojb = sq_GetCurrentAnimation(CQpt3pdF9gSxzYWarWii)
local CQ6Ay5e8t88qRJwp7 = sq_GetDelaySum(CQsXNHAchCyi6xwI3Ojb)
local CQeudxTOZrIx7tQAfrI = CQpt3pdF9gSxzYWarWii.sq_GetStateTimer()
local CQXmtt2eUZkY25qs = sq_GetAccel(CQpt3pdF9gSxzYWarWii.getXPos(), CQTZbifPIt1AfFeuN9, CQeudxTOZrIx7tQAfrI, 50, false)
if(CQpt3pdF9gSxzYWarWii.isMovablePos(CQXmtt2eUZkY25qs, CQpt3pdF9gSxzYWarWii.getYPos()))
			sq_setCurrentAxisPos(CQpt3pdF9gSxzYWarWii, 0, CQXmtt2eUZkY25qs)
break
case 3:
		local CQTZbifPIt1AfFeuN9 = sq_GetDistancePos(CQqhh7afHDZ29urWEc4, CQpt3pdF9gSxzYWarWii.getDirection(), 402)
local CQsXNHAchCyi6xwI3Ojb = sq_GetCurrentAnimation(CQpt3pdF9gSxzYWarWii)
local CQ6Ay5e8t88qRJwp7 = sq_GetDelaySum(CQsXNHAchCyi6xwI3Ojb)
local CQeudxTOZrIx7tQAfrI = CQpt3pdF9gSxzYWarWii.sq_GetStateTimer()
local CQXmtt2eUZkY25qs = sq_GetAccel(CQpt3pdF9gSxzYWarWii.getXPos(), CQTZbifPIt1AfFeuN9, CQeudxTOZrIx7tQAfrI, 50, false)
local CQOO85RudY9KgI2Ni = sq_GetAccel(CQpt3pdF9gSxzYWarWii.getYPos(), CQK4FYUBYdqZj7rE - 50, CQeudxTOZrIx7tQAfrI, 50, false)
if(CQpt3pdF9gSxzYWarWii.isMovablePos(CQXmtt2eUZkY25qs, CQOO85RudY9KgI2Ni))
		{
			sq_setCurrentAxisPos(CQpt3pdF9gSxzYWarWii, 1, CQOO85RudY9KgI2Ni)
sq_setCurrentAxisPos(CQpt3pdF9gSxzYWarWii, 0, CQXmtt2eUZkY25qs)
}

		break
case 4:
		local CQTZbifPIt1AfFeuN9 = sq_GetDistancePos(CQqhh7afHDZ29urWEc4, CQpt3pdF9gSxzYWarWii.getDirection(), 402)
local CQsXNHAchCyi6xwI3Ojb = sq_GetCurrentAnimation(CQpt3pdF9gSxzYWarWii)
local CQ6Ay5e8t88qRJwp7 = sq_GetDelaySum(CQsXNHAchCyi6xwI3Ojb)
local CQeudxTOZrIx7tQAfrI = CQpt3pdF9gSxzYWarWii.sq_GetStateTimer()
local CQXmtt2eUZkY25qs = sq_GetAccel(CQpt3pdF9gSxzYWarWii.getXPos(), CQTZbifPIt1AfFeuN9, CQeudxTOZrIx7tQAfrI, 50, false)
local CQOO85RudY9KgI2Ni = sq_GetAccel(CQpt3pdF9gSxzYWarWii.getYPos(), CQK4FYUBYdqZj7rE + 57, CQeudxTOZrIx7tQAfrI, 50, false)
if(CQpt3pdF9gSxzYWarWii.isMovablePos(CQXmtt2eUZkY25qs, CQOO85RudY9KgI2Ni))
		{
			sq_setCurrentAxisPos(CQpt3pdF9gSxzYWarWii, 1, CQOO85RudY9KgI2Ni)
sq_setCurrentAxisPos(CQpt3pdF9gSxzYWarWii, 0, CQXmtt2eUZkY25qs)
}

		break
case 5:
		local CQTZbifPIt1AfFeuN9 = sq_GetDistancePos(CQqhh7afHDZ29urWEc4, CQpt3pdF9gSxzYWarWii.getDirection(), 198)
local CQsXNHAchCyi6xwI3Ojb = sq_GetCurrentAnimation(CQpt3pdF9gSxzYWarWii)
local CQ6Ay5e8t88qRJwp7 = sq_GetDelaySum(CQsXNHAchCyi6xwI3Ojb)
local CQeudxTOZrIx7tQAfrI = CQpt3pdF9gSxzYWarWii.sq_GetStateTimer()
local CQXmtt2eUZkY25qs = sq_GetAccel(CQpt3pdF9gSxzYWarWii.getXPos(), CQTZbifPIt1AfFeuN9, CQeudxTOZrIx7tQAfrI, 50, false)
local CQOO85RudY9KgI2Ni = sq_GetAccel(CQpt3pdF9gSxzYWarWii.getYPos(), CQK4FYUBYdqZj7rE - 48, CQeudxTOZrIx7tQAfrI, 50, false)
if(CQpt3pdF9gSxzYWarWii.isMovablePos(CQXmtt2eUZkY25qs, CQOO85RudY9KgI2Ni))
		{
			sq_setCurrentAxisPos(CQpt3pdF9gSxzYWarWii, 1, CQOO85RudY9KgI2Ni)
sq_setCurrentAxisPos(CQpt3pdF9gSxzYWarWii, 0, CQXmtt2eUZkY25qs)
}
		break
case 6:
		local CQTZbifPIt1AfFeuN9 = sq_GetDistancePos(CQqhh7afHDZ29urWEc4, CQpt3pdF9gSxzYWarWii.getDirection(), 297)
local CQsXNHAchCyi6xwI3Ojb = sq_GetCurrentAnimation(CQpt3pdF9gSxzYWarWii)
local CQ6Ay5e8t88qRJwp7 = sq_GetDelaySum(CQsXNHAchCyi6xwI3Ojb)
local CQeudxTOZrIx7tQAfrI = CQpt3pdF9gSxzYWarWii.sq_GetStateTimer()
local CQXmtt2eUZkY25qs = sq_GetAccel(CQpt3pdF9gSxzYWarWii.getXPos(), CQTZbifPIt1AfFeuN9, CQeudxTOZrIx7tQAfrI, 50, false)
local CQOO85RudY9KgI2Ni = sq_GetAccel(CQpt3pdF9gSxzYWarWii.getYPos(), CQK4FYUBYdqZj7rE + 42, CQeudxTOZrIx7tQAfrI, 50, false)
if(CQpt3pdF9gSxzYWarWii.isMovablePos(CQXmtt2eUZkY25qs, CQOO85RudY9KgI2Ni))
		{
			sq_setCurrentAxisPos(CQpt3pdF9gSxzYWarWii, 1, CQOO85RudY9KgI2Ni)
sq_setCurrentAxisPos(CQpt3pdF9gSxzYWarWii, 0, CQXmtt2eUZkY25qs)
}
		break
case 7:
		local CQTZbifPIt1AfFeuN9 = sq_GetDistancePos(CQqhh7afHDZ29urWEc4, CQpt3pdF9gSxzYWarWii.getDirection(), 100)
local CQsXNHAchCyi6xwI3Ojb = sq_GetCurrentAnimation(CQpt3pdF9gSxzYWarWii)
local CQ6Ay5e8t88qRJwp7 = sq_GetDelaySum(CQsXNHAchCyi6xwI3Ojb)
local CQeudxTOZrIx7tQAfrI = CQpt3pdF9gSxzYWarWii.sq_GetStateTimer()
local CQXmtt2eUZkY25qs = sq_GetAccel(CQpt3pdF9gSxzYWarWii.getXPos(), CQTZbifPIt1AfFeuN9, CQeudxTOZrIx7tQAfrI, 50, false)
local CQOO85RudY9KgI2Ni = sq_GetAccel(CQpt3pdF9gSxzYWarWii.getYPos(), CQK4FYUBYdqZj7rE - 31, CQeudxTOZrIx7tQAfrI, 50, false)
if(CQpt3pdF9gSxzYWarWii.isMovablePos(CQXmtt2eUZkY25qs, CQOO85RudY9KgI2Ni))
		{
			sq_setCurrentAxisPos(CQpt3pdF9gSxzYWarWii, 1, CQOO85RudY9KgI2Ni)
sq_setCurrentAxisPos(CQpt3pdF9gSxzYWarWii, 0, CQXmtt2eUZkY25qs)
}
		break
case 8:
		local CQsXNHAchCyi6xwI3Ojb = sq_GetCurrentAnimation(CQpt3pdF9gSxzYWarWii)
local CQMJawClL1PrOP7nq =  CQpt3pdF9gSxzYWarWii.sq_GetCurrentFrameIndex(CQsXNHAchCyi6xwI3Ojb)
local CQTZbifPIt1AfFeuN9 = sq_GetDistancePos(CQqhh7afHDZ29urWEc4, CQpt3pdF9gSxzYWarWii.getDirection(), 100)
local CQsXNHAchCyi6xwI3Ojb = sq_GetCurrentAnimation(CQpt3pdF9gSxzYWarWii)
local CQ6Ay5e8t88qRJwp7 = sq_GetDelaySum(CQsXNHAchCyi6xwI3Ojb)
local CQeudxTOZrIx7tQAfrI = CQpt3pdF9gSxzYWarWii.sq_GetStateTimer()
local CQXmtt2eUZkY25qs = sq_GetAccel(CQpt3pdF9gSxzYWarWii.getXPos(), CQTZbifPIt1AfFeuN9, CQeudxTOZrIx7tQAfrI, 50, false)
local CQOO85RudY9KgI2Ni = sq_GetAccel(CQpt3pdF9gSxzYWarWii.getYPos(), CQK4FYUBYdqZj7rE + 21, CQeudxTOZrIx7tQAfrI, 50, false)
if(CQpt3pdF9gSxzYWarWii.isMovablePos(CQXmtt2eUZkY25qs, CQOO85RudY9KgI2Ni))
		{
			sq_setCurrentAxisPos(CQpt3pdF9gSxzYWarWii, 1, CQOO85RudY9KgI2Ni)
sq_setCurrentAxisPos(CQpt3pdF9gSxzYWarWii, 0, CQXmtt2eUZkY25qs)
}
		
		if(CQMJawClL1PrOP7nq < 3)
		{
			local CQKOuf3hpzaWeAhw = sq_GetAccel(CQpt3pdF9gSxzYWarWii.getZPos(), 120, CQeudxTOZrIx7tQAfrI, 50, false)
sq_setCurrentAxisPos(CQpt3pdF9gSxzYWarWii, 2, CQKOuf3hpzaWeAhw)
}
		else
		{
			local CQKOuf3hpzaWeAhw = sq_GetAccel(CQpt3pdF9gSxzYWarWii.getZPos(), 0, CQeudxTOZrIx7tQAfrI, 100, false)
sq_setCurrentAxisPos(CQpt3pdF9gSxzYWarWii, 2, CQKOuf3hpzaWeAhw)
}
		break
}
}

function onKeyFrameFlag_Breaksworddance(CQsbSEtie5DjcNRWUrHG, CQ6hYZzbJqclmeRQs)
{
	if (!CQsbSEtie5DjcNRWUrHG) return false
switch(CQ6hYZzbJqclmeRQs)
	{
	case 0:

		break
}
	return true
}

function onProcCon_Breaksworddance(CQhS4f1vuuJ1D8hP)
{
	if(!CQhS4f1vuuJ1D8hP) return
local CQSYvC8SuPRQ7BM8l2XB = sq_GetCurrentAnimation(CQhS4f1vuuJ1D8hP)
local CQxX7int4U2JbjdpL8 = sq_GetAnimationFrameIndex(CQSYvC8SuPRQ7BM8l2XB)
if(CQxX7int4U2JbjdpL8 < 2)
		return
if(sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL))
	{
		if(IsInterval(CQhS4f1vuuJ1D8hP, 100))
		{
			local CQtArJdcyFuOzSxt8 = CQhS4f1vuuJ1D8hP.getVar("BreaksworddanceSpeed").getFloat(0)
CQhS4f1vuuJ1D8hP.getVar("BreaksworddanceSpeed").setFloat(0,CQtArJdcyFuOzSxt8 + 0.05)
}
	}
}