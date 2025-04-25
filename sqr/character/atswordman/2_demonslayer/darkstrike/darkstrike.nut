
function checkExecutableSkill_Darkstrike(CQ7WKpl59CflXBR6f)
{
	if (!CQ7WKpl59CflXBR6f) return false
local CQrvqK3KwzP91wfRjL4 = CQ7WKpl59CflXBR6f.sq_IsUseSkill(158)
local CQCg37Fq1sz1C1f8 = 0
local CQchoctjYZKKJOd4ys = 0
if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL))
	{
		CQCg37Fq1sz1C1f8 = 3
CQchoctjYZKKJOd4ys = CQ7WKpl59CflXBR6f.getZPos()
}
	else
	{
		if(CQ7WKpl59CflXBR6f.sq_GetState() == 6)
		{
			CQchoctjYZKKJOd4ys = CQ7WKpl59CflXBR6f.getZPos()
CQCg37Fq1sz1C1f8 = 1
}
	}

	if (CQrvqK3KwzP91wfRjL4)
	{
		CQ7WKpl59CflXBR6f.getVar("Darkstrike").clear_vector()
CQ7WKpl59CflXBR6f.getVar("Darkstrike").push_vector(sq_GetDistancePos(CQ7WKpl59CflXBR6f.getXPos(), CQ7WKpl59CflXBR6f.getDirection(), 350))
CQ7WKpl59CflXBR6f.getVar("Darkstrike").push_vector(sq_GetDistancePos(CQ7WKpl59CflXBR6f.getXPos(), CQ7WKpl59CflXBR6f.getDirection(), 350))
CQ7WKpl59CflXBR6f.getVar("Darkstrike").clear_obj_vector()
CQ7WKpl59CflXBR6f.sq_StopMove()
CQ7WKpl59CflXBR6f.getVar("Darkstrike").setBool(0,false)
CQ7WKpl59CflXBR6f.sq_IntVectClear()
CQ7WKpl59CflXBR6f.sq_IntVectPush(CQCg37Fq1sz1C1f8)
CQ7WKpl59CflXBR6f.sq_IntVectPush(CQchoctjYZKKJOd4ys)
CQ7WKpl59CflXBR6f.sq_AddSetStatePacket(158, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Darkstrike(CQA4gu82LTUZSj9fp6jf)
{
	if (!CQA4gu82LTUZSj9fp6jf) return false
return true
}


function onSetState_Darkstrike(CQdZFHLphENSKA97I, CQyPb4pny3toDT8hS5I, CQNyBzb16j7QINld, CQbnvt9FmoacFelT5L)
{
	if(!CQdZFHLphENSKA97I) return
local CQFjBDXySMhRO2TgdTZF = CQdZFHLphENSKA97I.sq_GetVectorData(CQNyBzb16j7QINld, 0)
CQdZFHLphENSKA97I.setSkillSubState(CQFjBDXySMhRO2TgdTZF)
switch(CQFjBDXySMhRO2TgdTZF)
	{
	case 0:
		CQdZFHLphENSKA97I.sq_PlaySound("R_SW_LIFTSLASH")
CQdZFHLphENSKA97I.sq_SetCurrentAnimation(410)
CQdZFHLphENSKA97I.sq_SetCurrentAttackInfo(99)
local CQg5t2wflbD3pPTxh = CQdZFHLphENSKA97I.sq_GetBonusRateWithPassive(158, -1, 3,getATSwordmanBonus(CQdZFHLphENSKA97I,1.0,158))
CQdZFHLphENSKA97I.sq_SetCurrentAttackBonusRate(CQg5t2wflbD3pPTxh)
CQdZFHLphENSKA97I.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
case 1:
		BodyCalldaimus(CQdZFHLphENSKA97I, "darkstrikeattack")
CQdZFHLphENSKA97I.sq_PlaySound("R_SW_LIFTSLASH")
if(CQdZFHLphENSKA97I.sq_GetVectorData(CQNyBzb16j7QINld, 1) < 1)
		{
			CQdZFHLphENSKA97I.sq_SetMoveDirection(CQdZFHLphENSKA97I.getDirection(), ENUM_DIRECTION_NEUTRAL)
CQdZFHLphENSKA97I.sq_SetStaticMoveInfo(0, 800, -1000, false)
sq_SetZVelocity(CQdZFHLphENSKA97I, -400, -600)
}
		CQdZFHLphENSKA97I.sq_SetCurrentAnimation(407)
CQdZFHLphENSKA97I.sq_SetCurrentAttackInfo(99)
local CQg5t2wflbD3pPTxh = CQdZFHLphENSKA97I.sq_GetBonusRateWithPassive(158, -1, 3, getATSwordmanBonus(CQdZFHLphENSKA97I,1.0,158))
CQdZFHLphENSKA97I.sq_SetCurrentAttackBonusRate(CQg5t2wflbD3pPTxh)
CQdZFHLphENSKA97I.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
case 2:
		BodyCalldaimus(CQdZFHLphENSKA97I, "darkstrikejump")
CQdZFHLphENSKA97I.sq_SetCurrentAnimation(409)
CQdZFHLphENSKA97I.sq_SetCurrentAttackInfo(100)
local CQg5t2wflbD3pPTxh = CQdZFHLphENSKA97I.sq_GetBonusRateWithPassive(158, -1, 3, getATSwordmanBonus(CQdZFHLphENSKA97I,1.0,158))
CQdZFHLphENSKA97I.sq_SetCurrentAttackBonusRate(CQg5t2wflbD3pPTxh)
break
case 3:
		CQdZFHLphENSKA97I.sq_ZStop()
CQdZFHLphENSKA97I.sq_SetMoveDirection(CQdZFHLphENSKA97I.getDirection(), ENUM_DIRECTION_NEUTRAL)
CQdZFHLphENSKA97I.sq_SetStaticMoveInfo(0, 800, -1000, false)
BodyCalldaimus(CQdZFHLphENSKA97I, "darkstrikejump")
CQdZFHLphENSKA97I.sq_SetCurrentAnimation(409)
CQdZFHLphENSKA97I.sq_SetCurrentAttackInfo(100)
local CQg5t2wflbD3pPTxh = CQdZFHLphENSKA97I.sq_GetBonusRateWithPassive(158, -1, 3, getATSwordmanBonus(CQdZFHLphENSKA97I,1.0,158))
CQdZFHLphENSKA97I.sq_SetCurrentAttackBonusRate(CQg5t2wflbD3pPTxh)
break
case 4:
		CQdZFHLphENSKA97I.sq_StopMove()
sq_SimpleMoveToNearMovablePos(CQdZFHLphENSKA97I,400)
BodyCalldaimus(CQdZFHLphENSKA97I, "darkstrikelanding")
CQdZFHLphENSKA97I.sq_SetCurrentAnimation(411)
CQdZFHLphENSKA97I.sq_SetCurrentAttackInfo(100)
local CQg5t2wflbD3pPTxh = CQdZFHLphENSKA97I.sq_GetBonusRateWithPassive(158, -1, 3, getATSwordmanBonus(CQdZFHLphENSKA97I,1.0,158))
CQdZFHLphENSKA97I.sq_SetCurrentAttackBonusRate(CQg5t2wflbD3pPTxh)
CQdZFHLphENSKA97I.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
}

}

function onEndCurrentAni_Darkstrike(CQjTwhkXvCicirgY)
{
	if(!CQjTwhkXvCicirgY) return
local CQQ7ZQHeOzdRrhglM6 = CQjTwhkXvCicirgY.getSkillSubState()
switch(CQQ7ZQHeOzdRrhglM6)
	{
	case 0:
		CQjTwhkXvCicirgY.sq_IntVectClear()
CQjTwhkXvCicirgY.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		local CQLVQIul4sO3oARn4 = CQjTwhkXvCicirgY.getVar("Darkstrike").get_obj_vector(0)
if(CQLVQIul4sO3oARn4)
		{

			CQjTwhkXvCicirgY.sq_StartWrite()
CQjTwhkXvCicirgY.sq_WriteDword(158)
CQjTwhkXvCicirgY.sq_WriteDword(0)
CQjTwhkXvCicirgY.sq_WriteDword(CQjTwhkXvCicirgY.sq_GetBonusRateWithPassive(158, -1, 1, getATSwordmanBonus(CQjTwhkXvCicirgY,1.0,158)))
CQjTwhkXvCicirgY.sq_WriteDword(CQjTwhkXvCicirgY.sq_GetBonusRateWithPassive(158, -1, 2, getATSwordmanBonus(CQjTwhkXvCicirgY,1.0,158)))
CQjTwhkXvCicirgY.sq_WriteDword(sq_GetLevelData(CQjTwhkXvCicirgY,158, 0, sq_GetSkillLevel(CQjTwhkXvCicirgY, 158)))
CQjTwhkXvCicirgY.sq_WriteDword(sq_GetIntData(CQjTwhkXvCicirgY,158, 3))
sq_SendCreatePassiveObjectPacketPos(CQjTwhkXvCicirgY, 24383, 0, CQLVQIul4sO3oARn4.getXPos(), CQLVQIul4sO3oARn4.getYPos(), CQLVQIul4sO3oARn4.getZPos() + CQLVQIul4sO3oARn4.getObjectHeight()/2)
}
		else
		{
			CQjTwhkXvCicirgY.sq_StartWrite()
CQjTwhkXvCicirgY.sq_WriteDword(158)
CQjTwhkXvCicirgY.sq_WriteDword(0)
CQjTwhkXvCicirgY.sq_WriteDword(CQjTwhkXvCicirgY.sq_GetBonusRateWithPassive(158, -1, 1, getATSwordmanBonus(CQjTwhkXvCicirgY,1.0,158)))
CQjTwhkXvCicirgY.sq_WriteDword(CQjTwhkXvCicirgY.sq_GetBonusRateWithPassive(158, -1, 2, getATSwordmanBonus(CQjTwhkXvCicirgY,1.0,158)))
CQjTwhkXvCicirgY.sq_WriteDword(sq_GetLevelData(CQjTwhkXvCicirgY,158, 0, sq_GetSkillLevel(CQjTwhkXvCicirgY, 158)))
CQjTwhkXvCicirgY.sq_WriteDword(sq_GetIntData(CQjTwhkXvCicirgY,158, 3))
CQjTwhkXvCicirgY.sq_SendCreatePassiveObjectPacket(24383, 0, -80, 0, 70)
}
		CQjTwhkXvCicirgY.sq_IntVectClear()
CQjTwhkXvCicirgY.sq_IntVectPush(1)
CQjTwhkXvCicirgY.sq_IntVectPush(0)
CQjTwhkXvCicirgY.sq_IntVectPush(0)
CQjTwhkXvCicirgY.sq_AddSetStatePacket(6, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQjTwhkXvCicirgY.sq_IntVectClear()
CQjTwhkXvCicirgY.sq_IntVectPush(3)
CQjTwhkXvCicirgY.sq_AddSetStatePacket(158, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQjTwhkXvCicirgY.sq_IntVectClear()
CQjTwhkXvCicirgY.sq_IntVectPush(4)
CQjTwhkXvCicirgY.sq_AddSetStatePacket(158, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 4:
		CQjTwhkXvCicirgY.sq_IntVectClear()
CQjTwhkXvCicirgY.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
CQjTwhkXvCicirgY.sq_StartWrite()
CQjTwhkXvCicirgY.sq_WriteDword(158)
CQjTwhkXvCicirgY.sq_WriteDword(0)
CQjTwhkXvCicirgY.sq_WriteDword(CQjTwhkXvCicirgY.sq_GetBonusRateWithPassive(158, -1, 1, getATSwordmanBonus(CQjTwhkXvCicirgY,1.0,158)))
CQjTwhkXvCicirgY.sq_WriteDword(CQjTwhkXvCicirgY.sq_GetBonusRateWithPassive(158, -1, 2, getATSwordmanBonus(CQjTwhkXvCicirgY,1.0,158)))
CQjTwhkXvCicirgY.sq_WriteDword(sq_GetLevelData(CQjTwhkXvCicirgY,158, 0, sq_GetSkillLevel(CQjTwhkXvCicirgY, 158)))
CQjTwhkXvCicirgY.sq_WriteDword(sq_GetIntData(CQjTwhkXvCicirgY,158, 3))
CQjTwhkXvCicirgY.sq_SendCreatePassiveObjectPacket(24383, 0, -80, 0, 70)
break
}
}

function onAttack_Darkstrike(CQlD4Vc5uZTXWTfc85q, CQIoER7aCTJSqNfm, CQ7qjUKqTEnFvecvmL, CQrQHaojD2BaQ2xwrlQQ)
{
	if(!CQlD4Vc5uZTXWTfc85q || CQrQHaojD2BaQ2xwrlQQ)	return false
local CQCznZRH8jrrbWxUu = CQlD4Vc5uZTXWTfc85q.getSkillSubState()
Calldaimus_onAttack(CQlD4Vc5uZTXWTfc85q,CQIoER7aCTJSqNfm, CQ7qjUKqTEnFvecvmL, CQrQHaojD2BaQ2xwrlQQ)
switch(CQCznZRH8jrrbWxUu)
	{
	case 0:
		CQlD4Vc5uZTXWTfc85q.getVar("Darkstrike").clear_obj_vector()
CQlD4Vc5uZTXWTfc85q.getVar("Darkstrike").push_obj_vector(CQIoER7aCTJSqNfm)
break
case 1:
		CQlD4Vc5uZTXWTfc85q.getVar("Darkstrike").clear_obj_vector()
		CQlD4Vc5uZTXWTfc85q.getVar("Darkstrike").push_obj_vector(CQIoER7aCTJSqNfm)
break
}

}

function onEnterFrame_Darkstrike(CQc9M9VoQo5vzjzWH6X, CQANnbIhMMEjnSlQ)
{
	if(!CQc9M9VoQo5vzjzWH6X) return
local CQLclaugyz9BPndyDh9u = CQc9M9VoQo5vzjzWH6X.getSkillSubState()
switch(CQLclaugyz9BPndyDh9u)
	{
	case 0:
		if(CQANnbIhMMEjnSlQ ==4 && CQc9M9VoQo5vzjzWH6X.isMyControlObject())
		{
			sq_SetMyShake(CQc9M9VoQo5vzjzWH6X,3,200)
sq_flashScreen(CQc9M9VoQo5vzjzWH6X,1,30,40,63,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
}
		else if(CQANnbIhMMEjnSlQ == 8 && CQc9M9VoQo5vzjzWH6X.isMyControlObject())
		{
			local CQU8UUIiyTeU4U7BsDf = CQc9M9VoQo5vzjzWH6X.getVar("Darkstrike").get_obj_vector(0)
if(CQU8UUIiyTeU4U7BsDf)
			{
				CQc9M9VoQo5vzjzWH6X.sq_StartWrite()
CQc9M9VoQo5vzjzWH6X.sq_WriteDword(158)
CQc9M9VoQo5vzjzWH6X.sq_WriteDword(0)
CQc9M9VoQo5vzjzWH6X.sq_WriteDword(CQc9M9VoQo5vzjzWH6X.sq_GetBonusRateWithPassive(158, -1, 1, getATSwordmanBonus(CQc9M9VoQo5vzjzWH6X,1.0,158)))
CQc9M9VoQo5vzjzWH6X.sq_WriteDword(CQc9M9VoQo5vzjzWH6X.sq_GetBonusRateWithPassive(158, -1, 2, getATSwordmanBonus(CQc9M9VoQo5vzjzWH6X,1.0,158)))
CQc9M9VoQo5vzjzWH6X.sq_WriteDword(sq_GetLevelData(CQc9M9VoQo5vzjzWH6X,158, 0, sq_GetSkillLevel(CQc9M9VoQo5vzjzWH6X, 158)))
CQc9M9VoQo5vzjzWH6X.sq_WriteDword(sq_GetIntData(CQc9M9VoQo5vzjzWH6X,158, 3))
sq_SendCreatePassiveObjectPacketPos(CQc9M9VoQo5vzjzWH6X, 24383, 0, CQU8UUIiyTeU4U7BsDf.getXPos(), CQU8UUIiyTeU4U7BsDf.getYPos(), CQU8UUIiyTeU4U7BsDf.getZPos() + CQU8UUIiyTeU4U7BsDf.getObjectHeight()/2)
}
			else
			{
				CQc9M9VoQo5vzjzWH6X.sq_StartWrite()
CQc9M9VoQo5vzjzWH6X.sq_WriteDword(158)
CQc9M9VoQo5vzjzWH6X.sq_WriteDword(0)
CQc9M9VoQo5vzjzWH6X.sq_WriteDword(CQc9M9VoQo5vzjzWH6X.sq_GetBonusRateWithPassive(158, -1, 1, getATSwordmanBonus(CQc9M9VoQo5vzjzWH6X,1.0,158)))
CQc9M9VoQo5vzjzWH6X.sq_WriteDword(CQc9M9VoQo5vzjzWH6X.sq_GetBonusRateWithPassive(158, -1, 2, getATSwordmanBonus(CQc9M9VoQo5vzjzWH6X,1.0,158)))
CQc9M9VoQo5vzjzWH6X.sq_WriteDword(sq_GetLevelData(CQc9M9VoQo5vzjzWH6X,158, 0, sq_GetSkillLevel(CQc9M9VoQo5vzjzWH6X, 158)))
CQc9M9VoQo5vzjzWH6X.sq_WriteDword(sq_GetIntData(CQc9M9VoQo5vzjzWH6X,158, 3))
CQc9M9VoQo5vzjzWH6X.sq_SendCreatePassiveObjectPacket(24383, 0, 180, 0, 70)
}
		}
		break
case 4:
		
		break
}
}

function onEndState_Darkstrike(CQNed7BbgBxGcrTpl, CQbcAcWftcZak3kyYTy)
{
	if(!CQNed7BbgBxGcrTpl) return
local CQFfcuzV5OqrfAje = CQNed7BbgBxGcrTpl.getSkillSubState()
switch(CQFfcuzV5OqrfAje)
	{
	case 3:

		break
case 4:

		break
}

}

function onProc_Darkstrike(CQg1CG4tUC1bTTjow5)
{
	if(!CQg1CG4tUC1bTTjow5) return
local CQoJe4GcSzyjRDhtPwAL = CQg1CG4tUC1bTTjow5.getSkillSubState()
switch(CQoJe4GcSzyjRDhtPwAL)
	{
	case 3:
		local CQ2sXzy7Ts867wbaF = sq_GetCurrentAnimation(CQg1CG4tUC1bTTjow5)
local CQmreWxOo4IB21biLlg = sq_GetDelaySum(CQ2sXzy7Ts867wbaF)
local CQJY6DZe9TkG8WvO = CQg1CG4tUC1bTTjow5.sq_GetStateTimer()
local CQkRs2ETwEGa3jYER6 = CQg1CG4tUC1bTTjow5.getVar("Darkstrike").get_vector(0)
local CQw2kknLH2vOBSYSk = CQg1CG4tUC1bTTjow5.getVar("Darkstrike").get_vector(1)
if(CQg1CG4tUC1bTTjow5.getZPos() < 3 && CQJY6DZe9TkG8WvO < 300)
			sq_SetZVelocity(CQg1CG4tUC1bTTjow5, 400, -600)
else if(CQJY6DZe9TkG8WvO > 300)
			sq_SetZVelocity(CQg1CG4tUC1bTTjow5, -400, -600)
if(CQJY6DZe9TkG8WvO > 600)
		{
			CQg1CG4tUC1bTTjow5.sq_IntVectClear()
CQg1CG4tUC1bTTjow5.sq_IntVectPush(4)
CQg1CG4tUC1bTTjow5.sq_AddSetStatePacket(158, STATE_PRIORITY_IGNORE_FORCE, true)
}


		if(CQJY6DZe9TkG8WvO > 100)
		{
			CQg1CG4tUC1bTTjow5.setSkillCommandEnable(158,true)
local CQZKJedaYUVy4lcsxZ8 = CQg1CG4tUC1bTTjow5.sq_IsEnterSkill(158)
if(CQZKJedaYUVy4lcsxZ8 != -1 && !CQg1CG4tUC1bTTjow5.getVar("Darkstrike").getBool(0))
			{
				CQg1CG4tUC1bTTjow5.sq_IntVectClear()
CQg1CG4tUC1bTTjow5.sq_IntVectPush(1)
CQg1CG4tUC1bTTjow5.sq_AddSetStatePacket(158, STATE_PRIORITY_IGNORE_FORCE, true)
CQg1CG4tUC1bTTjow5.getVar("Darkstrike").setBool(0,true)
}

		}
		break
}
}

function onKeyFrameFlag_Darkstrike(CQzImAXTIoeUNGxF, CQOO2Ns33M4lXrxPEL)
{
	if (!CQzImAXTIoeUNGxF) return false
switch(CQOO2Ns33M4lXrxPEL)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Darkstrike(CQ8tmhmHyvo912zJOTxR)
{
	if(!CQ8tmhmHyvo912zJOTxR) return
local CQWn1q1mXuRMCtlDD = CQ8tmhmHyvo912zJOTxR.getSkillSubState()
switch(CQWn1q1mXuRMCtlDD)
	{
	case 0:

		break
}
}