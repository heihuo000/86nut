
function checkExecutableSkill_DeadlyCape(CQpRcjppMQVCqrJXlNpk)
{
	if (!CQpRcjppMQVCqrJXlNpk) return false
local CQX9OpN2jrurCQstULt = CQpRcjppMQVCqrJXlNpk.sq_IsUseSkill(70)
if (CQX9OpN2jrurCQstULt)
	{
		CQpRcjppMQVCqrJXlNpk.sq_IntVectClear()
CQpRcjppMQVCqrJXlNpk.sq_IntVectPush(0)
CQpRcjppMQVCqrJXlNpk.sq_AddSetStatePacket(70, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_DeadlyCape(CQfhSvv279rSoaZRJzd)
{
	if (!CQfhSvv279rSoaZRJzd) return false
return true
}

function onSetState_DeadlyCape(CQPiz3GGyHYdOV3Imh1, CQ9mZlbi6hX2GQ2G, CQtTwWdvmiwLPM2PAg, CQB75SXNBN3PEIRJGiRY)
{
	if(!CQPiz3GGyHYdOV3Imh1) return
local CQvVa1aSlfiiyhfDZ = CQPiz3GGyHYdOV3Imh1.sq_GetVectorData(CQtTwWdvmiwLPM2PAg, 0)
CQPiz3GGyHYdOV3Imh1.setSkillSubState(CQvVa1aSlfiiyhfDZ)
switch(CQvVa1aSlfiiyhfDZ)
	{
	case 0:
		CQPiz3GGyHYdOV3Imh1.sq_StopMove()
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAnimation(484)
CQPiz3GGyHYdOV3Imh1.sq_PlaySound("SW_DEDLY_CAPE")
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAttackInfo(125)
local CQDDjjUWpydqaPfO9nE = CQPiz3GGyHYdOV3Imh1.sq_GetBonusRateWithPassive(70, -1, 0, getATSwordmanBonus(CQPiz3GGyHYdOV3Imh1,1.0,70))
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAttackBonusRate(CQDDjjUWpydqaPfO9nE)
CQPiz3GGyHYdOV3Imh1.setTimeEvent(10,300,1,false)
CQPiz3GGyHYdOV3Imh1.getVar("DeadlyCapeCount").clear_vector()
CQPiz3GGyHYdOV3Imh1.getVar("DeadlyCapeCount").push_vector(0)
break
case 1:
		if(CQPiz3GGyHYdOV3Imh1.isMyControlObject())
			sq_SetMyShake(CQPiz3GGyHYdOV3Imh1,3,30)
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAnimation(485)
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAttackInfo(126)
local CQDDjjUWpydqaPfO9nE = CQPiz3GGyHYdOV3Imh1.sq_GetBonusRateWithPassive(70, -1, 0, getATSwordmanBonus(CQPiz3GGyHYdOV3Imh1,1.0,70))
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAttackBonusRate(CQDDjjUWpydqaPfO9nE)
CQPiz3GGyHYdOV3Imh1.getVar("DeadlyCapeCount").set_vector(0,CQPiz3GGyHYdOV3Imh1.getVar("DeadlyCapeCount").get_vector(0)+1)
break
case 2:
		if(CQPiz3GGyHYdOV3Imh1.isMyControlObject())
			sq_SetMyShake(CQPiz3GGyHYdOV3Imh1,3,30)
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAnimation(486)
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAttackInfo(126)
local CQDDjjUWpydqaPfO9nE = CQPiz3GGyHYdOV3Imh1.sq_GetBonusRateWithPassive(70, -1, 0, getATSwordmanBonus(CQPiz3GGyHYdOV3Imh1,1.0,70))
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAttackBonusRate(CQDDjjUWpydqaPfO9nE)
break
case 3:
		if(CQPiz3GGyHYdOV3Imh1.isMyControlObject())
			sq_SetMyShake(CQPiz3GGyHYdOV3Imh1,3,30)
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAnimation(487)
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAttackInfo(126)
local CQDDjjUWpydqaPfO9nE = CQPiz3GGyHYdOV3Imh1.sq_GetBonusRateWithPassive(70, -1, 0, getATSwordmanBonus(CQPiz3GGyHYdOV3Imh1,1.0,70))
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAttackBonusRate(CQDDjjUWpydqaPfO9nE)
break
case 4:
		if(CQPiz3GGyHYdOV3Imh1.isMyControlObject())
			sq_SetMyShake(CQPiz3GGyHYdOV3Imh1,3,30)
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAnimation(488)
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAttackInfo(126)
local CQDDjjUWpydqaPfO9nE = CQPiz3GGyHYdOV3Imh1.sq_GetBonusRateWithPassive(70, -1, 0, getATSwordmanBonus(CQPiz3GGyHYdOV3Imh1,1.0,70))
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAttackBonusRate(CQDDjjUWpydqaPfO9nE)
break
case 5:
		if(CQPiz3GGyHYdOV3Imh1.isMyControlObject())
			sq_SetMyShake(CQPiz3GGyHYdOV3Imh1,3,30)
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAnimation(489)
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAttackInfo(126)
local CQDDjjUWpydqaPfO9nE = CQPiz3GGyHYdOV3Imh1.sq_GetBonusRateWithPassive(70, -1, 0, getATSwordmanBonus(CQPiz3GGyHYdOV3Imh1,1.0,70))
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAttackBonusRate(CQDDjjUWpydqaPfO9nE)
break
case 6:
		CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAnimation(490)
break
case 7:
		if(CQPiz3GGyHYdOV3Imh1.isMyControlObject())
			sq_SetMyShake(CQPiz3GGyHYdOV3Imh1,8,500)
CQPiz3GGyHYdOV3Imh1.sq_SetCurrentAnimation(491)
break
}
	CQPiz3GGyHYdOV3Imh1.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_DeadlyCape(CQjGusSLjwWDWj7K)
{
	if(!CQjGusSLjwWDWj7K) return
local CQQEfCWQuK6pqV6NFnyE = CQjGusSLjwWDWj7K.getSkillSubState()
switch(CQQEfCWQuK6pqV6NFnyE)
	{
	case 0:
		CQjGusSLjwWDWj7K.sq_IntVectClear()
CQjGusSLjwWDWj7K.sq_IntVectPush(1)
CQjGusSLjwWDWj7K.sq_AddSetStatePacket(70, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQjGusSLjwWDWj7K.sq_IntVectClear()
CQjGusSLjwWDWj7K.sq_IntVectPush(2)
CQjGusSLjwWDWj7K.sq_AddSetStatePacket(70, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQjGusSLjwWDWj7K.sq_IntVectClear()
CQjGusSLjwWDWj7K.sq_IntVectPush(3)
CQjGusSLjwWDWj7K.sq_AddSetStatePacket(70, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQjGusSLjwWDWj7K.sq_IntVectClear()
CQjGusSLjwWDWj7K.sq_IntVectPush(4)
CQjGusSLjwWDWj7K.sq_AddSetStatePacket(70, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 4:
		CQjGusSLjwWDWj7K.sq_IntVectClear()
CQjGusSLjwWDWj7K.sq_IntVectPush(5)
CQjGusSLjwWDWj7K.sq_AddSetStatePacket(70, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 5:
		if(CQjGusSLjwWDWj7K.getVar("DeadlyCapeCount").get_vector(0)<sq_GetIntData(CQjGusSLjwWDWj7K, 70, 0))
		{
			CQjGusSLjwWDWj7K.sq_IntVectClear()
CQjGusSLjwWDWj7K.sq_IntVectPush(1)
CQjGusSLjwWDWj7K.sq_AddSetStatePacket(70, STATE_PRIORITY_IGNORE_FORCE, true)
}
		else
		{
			CQjGusSLjwWDWj7K.sq_IntVectClear()
CQjGusSLjwWDWj7K.sq_IntVectPush(6)
CQjGusSLjwWDWj7K.sq_AddSetStatePacket(70, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
case 6:
		CQjGusSLjwWDWj7K.sq_IntVectClear()
CQjGusSLjwWDWj7K.sq_IntVectPush(7)
CQjGusSLjwWDWj7K.sq_AddSetStatePacket(70, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 7:
		CQjGusSLjwWDWj7K.sq_IntVectClear()
CQjGusSLjwWDWj7K.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onTimeEvent_DeadlyCape(CQLwSd7kCkEevQ6X3, CQlxdnKKqpgYQN527g2, CQIdAEopDHSgbe4B)
{
	if(!CQLwSd7kCkEevQ6X3) return
switch(CQlxdnKKqpgYQN527g2)
	{
	case 10:
		CQLwSd7kCkEevQ6X3.sq_StartWrite()
CQLwSd7kCkEevQ6X3.sq_WriteDword(70)
CQLwSd7kCkEevQ6X3.sq_WriteDword(0)
CQLwSd7kCkEevQ6X3.sq_WriteDword(CQLwSd7kCkEevQ6X3.sq_GetBonusRateWithPassive(70, -1, 1, getATSwordmanBonus(CQLwSd7kCkEevQ6X3,1.0,70)))
CQLwSd7kCkEevQ6X3.sq_SendCreatePassiveObjectPacket(24381, 0, 130, -2, 60)
break
case 11:
		
		break
}
	
}

function onProcCon_DeadlyCape(CQ7McLvU8gc5zgj5k1)
{
	if(!CQ7McLvU8gc5zgj5k1) return
local CQr1C882EiZCnPh1xnhT = CQ7McLvU8gc5zgj5k1.getSkillSubState()
if(0<CQr1C882EiZCnPh1xnhT && CQr1C882EiZCnPh1xnhT<6)
	{
		if(sq_IsKeyDown(OPTION_HOTKEY_JUMP , ENUM_SUBKEY_TYPE_ALL))
		{
			CQ7McLvU8gc5zgj5k1.sq_IntVectClear()
CQ7McLvU8gc5zgj5k1.sq_IntVectPush(6)
CQ7McLvU8gc5zgj5k1.sq_AddSetStatePacket(70, STATE_PRIORITY_IGNORE_FORCE, true)
}
	}
}


function getScrollBasisPos_DeadlyCape(CQCJrvLFMNqDxkgVy)
{
	if (!CQCJrvLFMNqDxkgVy) return false
local CQcs6iqucf1EjBg4pgs = CQCJrvLFMNqDxkgVy.getSkillSubState()
if (!CQCJrvLFMNqDxkgVy.isMyControlObject()) return false
local CQArsJgRKyuedwRN = sq_GetDistancePos(CQCJrvLFMNqDxkgVy.getXPos(), CQCJrvLFMNqDxkgVy.getDirection(), 150)
CQCJrvLFMNqDxkgVy.sq_SetCameraScrollPosition(CQArsJgRKyuedwRN, CQCJrvLFMNqDxkgVy.getYPos(), 0)
return true
}


function IsInterval_DeadlyCape(CQdYT6BNgV9Yk1f6S1, CQyRsxPAPxIhROf22UK5)
{
	if (!CQdYT6BNgV9Yk1f6S1)
		return false
local CQN2TAwY5rk57hd96 = CQdYT6BNgV9Yk1f6S1.getVar("TimerDeadlyCape").get_ct_vector(0)
if (!CQN2TAwY5rk57hd96)
	{
		CQdYT6BNgV9Yk1f6S1.getVar("TimerDeadlyCape").clear_ct_vector()
CQdYT6BNgV9Yk1f6S1.getVar("TimerDeadlyCape").push_ct_vector(); 
		CQN2TAwY5rk57hd96 = CQdYT6BNgV9Yk1f6S1.getVar("TimerDeadlyCape").get_ct_vector(0)
CQN2TAwY5rk57hd96.Reset()
CQN2TAwY5rk57hd96.Start(10000,0)
return true
}

	local CQbLJNj9UXHCgA95dnx = CQN2TAwY5rk57hd96.Get()
if(CQbLJNj9UXHCgA95dnx > CQyRsxPAPxIhROf22UK5)
	{ 
		CQN2TAwY5rk57hd96.Reset()
CQN2TAwY5rk57hd96.Start(10000,0)
return true
}
	return false
}