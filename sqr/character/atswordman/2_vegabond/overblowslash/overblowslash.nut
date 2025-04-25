
function checkExecutableSkill_Overblowslash(CQKhTKEePVOo9aLMNUP)
{
	if (!CQKhTKEePVOo9aLMNUP) return false
local CQT4s7nlkxTQ4vL7 = CQKhTKEePVOo9aLMNUP.sq_IsUseSkill(217)
if (CQT4s7nlkxTQ4vL7)
	{
		CQKhTKEePVOo9aLMNUP.sq_StopMove()
CQKhTKEePVOo9aLMNUP.sq_IntVectClear()
if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && CQKhTKEePVOo9aLMNUP.getDirection() == 0)
			CQKhTKEePVOo9aLMNUP.sq_IntVectPush(1)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && CQKhTKEePVOo9aLMNUP.getDirection() == 1)
			CQKhTKEePVOo9aLMNUP.sq_IntVectPush(1)
else
			CQKhTKEePVOo9aLMNUP.sq_IntVectPush(0)
CQKhTKEePVOo9aLMNUP.sq_AddSetStatePacket(217, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Overblowslash(CQsZTcd4iIHcdZK3zh)
{
	if (!CQsZTcd4iIHcdZK3zh) return false
return true
}


function onSetState_Overblowslash(CQ6PKuXaVXnR5UJdvoCJ, CQeyqHaqQlB3M8J6m, CQXn24UjGarX6pH1emb, CQxjozMHc35S1dG8)
{
	if(!CQ6PKuXaVXnR5UJdvoCJ) return
local CQP5gtAoskpoCsG4Hj = CQ6PKuXaVXnR5UJdvoCJ.sq_GetVectorData(CQXn24UjGarX6pH1emb, 0)
CQ6PKuXaVXnR5UJdvoCJ.setSkillSubState(CQP5gtAoskpoCsG4Hj)
switch(CQP5gtAoskpoCsG4Hj)
	{
	case 0:
		CQ6PKuXaVXnR5UJdvoCJ.sq_SetCurrentAnimation(564)
	CQ6PKuXaVXnR5UJdvoCJ.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 1:
		CQ6PKuXaVXnR5UJdvoCJ.sq_SetCurrentAnimation(565)
CQ6PKuXaVXnR5UJdvoCJ.sq_SetStaticMoveInfo(0, 500, 800, false);	
		CQ6PKuXaVXnR5UJdvoCJ.sq_SetMoveDirection(CQ6PKuXaVXnR5UJdvoCJ.getDirection(), ENUM_DIRECTION_NEUTRAL)
	CQ6PKuXaVXnR5UJdvoCJ.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 2:
		CQ6PKuXaVXnR5UJdvoCJ.sq_StopMove()
CQ6PKuXaVXnR5UJdvoCJ.sq_SetCurrentAnimation(566)
CQ6PKuXaVXnR5UJdvoCJ.sq_SetCurrentAttackInfo(161)
local CQ9XFDeh2pgwJbFfZpyQ = CQ6PKuXaVXnR5UJdvoCJ.sq_GetBonusRateWithPassive(217, -1, 1, getATSwordmanBonus(CQ6PKuXaVXnR5UJdvoCJ,1.0,217))
CQ6PKuXaVXnR5UJdvoCJ.sq_SetCurrentAttackBonusRate(CQ9XFDeh2pgwJbFfZpyQ)
local CQtAg2TMt1ScVXD7B = sq_GetLevelData(CQ6PKuXaVXnR5UJdvoCJ,217, 0, sq_GetSkillLevel(CQ6PKuXaVXnR5UJdvoCJ, 217))
local CQDuDk2DLbxRKmBhgo2 = sq_GetDelaySum(CQ6PKuXaVXnR5UJdvoCJ.getCurrentAnimation())/10*8
CQ6PKuXaVXnR5UJdvoCJ.setTimeEvent(0,CQDuDk2DLbxRKmBhgo2/CQtAg2TMt1ScVXD7B,CQtAg2TMt1ScVXD7B,true)
break
}
}

function onTimeEvent_Overblowslash(CQRiveDbhiLjD9VdT2, CQimBAYdANq6LaCTcUw9, CQ1TtN7V6Y1VFfCgU)
{
	if(!CQRiveDbhiLjD9VdT2) return false
if(CQimBAYdANq6LaCTcUw9 == 0)
		CQRiveDbhiLjD9VdT2.resetHitObjectList()
return false
} 

function onEndCurrentAni_Overblowslash(CQU88hKtmtyGOLXxahV)
{
	if(!CQU88hKtmtyGOLXxahV) return
local CQHBOQocBV8aGnXk = CQU88hKtmtyGOLXxahV.getSkillSubState()
switch(CQHBOQocBV8aGnXk)
	{
	case 0:
		CQU88hKtmtyGOLXxahV.sq_IntVectClear()
CQU88hKtmtyGOLXxahV.sq_IntVectPush(2)
CQU88hKtmtyGOLXxahV.sq_AddSetStatePacket(217, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQU88hKtmtyGOLXxahV.sq_IntVectClear()
CQU88hKtmtyGOLXxahV.sq_IntVectPush(2)
CQU88hKtmtyGOLXxahV.sq_AddSetStatePacket(217, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQU88hKtmtyGOLXxahV.sq_IntVectClear()
CQU88hKtmtyGOLXxahV.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Overblowslash(CQjFzIv7zxsrPCZvF2, CQEpOV8OHIkbEpLzKm9S, CQ4QzRIefZGjAdLU7, CQQzLUQTrlv6asKYRUn)
{
	if(!CQjFzIv7zxsrPCZvF2 || CQQzLUQTrlv6asKYRUn)	return false
local CQL9QahL3aCBubJl = CQjFzIv7zxsrPCZvF2.getSkillSubState()
switch(CQL9QahL3aCBubJl)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Overblowslash(CQlN4ZNab3eGsXJnxh, CQIGE9PmOj4aoUHcyoiy)
{
	if(!CQlN4ZNab3eGsXJnxh) return
local CQ7Ejbw3jpoWWVMmp = CQlN4ZNab3eGsXJnxh.getSkillSubState()
switch(CQ7Ejbw3jpoWWVMmp)
	{
	case 2:
		if(CQIGE9PmOj4aoUHcyoiy == 1)
		{
			sq_SetMyShake(CQlN4ZNab3eGsXJnxh,2,650)
CQlN4ZNab3eGsXJnxh.sq_StartWrite()
CQlN4ZNab3eGsXJnxh.sq_WriteDword(217)
CQlN4ZNab3eGsXJnxh.sq_WriteDword(0)
CQlN4ZNab3eGsXJnxh.sq_WriteDword(CQlN4ZNab3eGsXJnxh.sq_GetBonusRateWithPassive(217, -1, 4, getATSwordmanBonus(CQlN4ZNab3eGsXJnxh,1.0,217)))
CQlN4ZNab3eGsXJnxh.sq_WriteDword(CQlN4ZNab3eGsXJnxh.sq_GetBonusRateWithPassive(217, -1, 5, getATSwordmanBonus(CQlN4ZNab3eGsXJnxh,1.0,217)))
CQlN4ZNab3eGsXJnxh.sq_WriteDword(sq_GetLevelData(CQlN4ZNab3eGsXJnxh,217, 3, sq_GetSkillLevel(CQlN4ZNab3eGsXJnxh, 217)))
CQlN4ZNab3eGsXJnxh.sq_SendCreatePassiveObjectPacket(24381, 0, 0, 0, 0)
}
		else if(CQIGE9PmOj4aoUHcyoiy == 22)
		{
			CQlN4ZNab3eGsXJnxh.sq_SetCurrentAttackInfo(160)
local CQrwGo4Hu1fbqEMvIU4 = CQlN4ZNab3eGsXJnxh.sq_GetBonusRateWithPassive(217, -1, 2, getATSwordmanBonus(CQlN4ZNab3eGsXJnxh,1.0,217))
CQlN4ZNab3eGsXJnxh.sq_SetCurrentAttackBonusRate(CQrwGo4Hu1fbqEMvIU4)
sq_SetMyShake(CQlN4ZNab3eGsXJnxh,9,300)
sq_flashScreen(CQlN4ZNab3eGsXJnxh,200,50,0,153,sq_RGB(255,255,255),GRAPHICEFFECT_LINEARDODGE,ENUM_DRAWLAYER_BOTTOM)
}
		break
}
}

function onEndState_Overblowslash(CQCxhKGU7bAjtfNw, CQcdG7ygquzTQIBU2h)
{
	if(!CQCxhKGU7bAjtfNw) return
local CQAMncxMFNK9bnBW6pjR = CQCxhKGU7bAjtfNw.getSkillSubState()
switch(CQAMncxMFNK9bnBW6pjR)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onProc_Overblowslash(CQdHNu5ixYUMwCVQd)
{
	if(!CQdHNu5ixYUMwCVQd) return
local CQyKyHJvaPNJnqCuhmI = CQdHNu5ixYUMwCVQd.getSkillSubState()
}

function onKeyFrameFlag_Overblowslash(CQDId4Ud1VtOx9Cr, CQRWAzfSWx7yUaXptUd)
{
	if (!CQDId4Ud1VtOx9Cr) return false
switch(CQRWAzfSWx7yUaXptUd)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Overblowslash(CQivcWCWLIaUcRXy)
{
	if(!CQivcWCWLIaUcRXy) return
local CQ1gPDsxgZhlkZZesh = CQivcWCWLIaUcRXy.getSkillSubState()
switch(CQ1gPDsxgZhlkZZesh)
	{
	case 2:
		if(sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL))
		{
			CQivcWCWLIaUcRXy.sq_IntVectClear()
CQivcWCWLIaUcRXy.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
}
}