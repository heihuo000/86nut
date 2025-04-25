
function checkExecutableSkill_SoulDrain(CQoTaNIgIZC84fCDjDFD)
{
	if (!CQoTaNIgIZC84fCDjDFD) return false
local CQ275gqFhTwNNLCOz = CQoTaNIgIZC84fCDjDFD.sq_IsUseSkill(59)
if (CQ275gqFhTwNNLCOz)
	{
		CQoTaNIgIZC84fCDjDFD.sq_IntVectClear()
CQoTaNIgIZC84fCDjDFD.sq_IntVectPush(0)
CQoTaNIgIZC84fCDjDFD.sq_AddSetStatePacket(59, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	
	return false
}

function checkCommandEnable_SoulDrain(CQmVEqgutE3JZnXHvuk)
{
	if (!CQmVEqgutE3JZnXHvuk) return false
return true
}

function onSetState_SoulDrain(CQJDjIBRZ3oIGCZS, CQkoHCOBUjftXpZIsb, CQaqUfQASoPUHdLGADqn, CQ5l1U3YlMlTAsKAH)
{	
	if(!CQJDjIBRZ3oIGCZS) return
local CQw8uEF8pgJ8JbKK5uX = CQJDjIBRZ3oIGCZS.sq_GetVectorData(CQaqUfQASoPUHdLGADqn, 0)
CQJDjIBRZ3oIGCZS.setSkillSubState(CQw8uEF8pgJ8JbKK5uX)
switch(CQw8uEF8pgJ8JbKK5uX)
	{
	case 0:
		CQJDjIBRZ3oIGCZS.sq_StopMove()
CQJDjIBRZ3oIGCZS.sq_SetCurrentAnimation(507)
CQJDjIBRZ3oIGCZS.sq_StartWrite()
CQJDjIBRZ3oIGCZS.sq_WriteDword(59)
CQJDjIBRZ3oIGCZS.sq_WriteDword(0)
CQJDjIBRZ3oIGCZS.sq_WriteDword(CQJDjIBRZ3oIGCZS.sq_GetLevelData(59, 0, sq_GetSkillLevel(CQJDjIBRZ3oIGCZS, 59)))
CQJDjIBRZ3oIGCZS.sq_WriteDword(CQJDjIBRZ3oIGCZS.sq_GetLevelData(59, 1, sq_GetSkillLevel(CQJDjIBRZ3oIGCZS, 59)))
CQJDjIBRZ3oIGCZS.sq_WriteDword(CQJDjIBRZ3oIGCZS.sq_GetBonusRateWithPassive(59, -1, 3, getATSwordmanBonus(CQJDjIBRZ3oIGCZS,1.0,59)))
CQJDjIBRZ3oIGCZS.sq_WriteDword(CQJDjIBRZ3oIGCZS.sq_GetLevelData(59, 4, sq_GetSkillLevel(CQJDjIBRZ3oIGCZS, 59)))
CQJDjIBRZ3oIGCZS.sq_WriteDword(CQJDjIBRZ3oIGCZS.sq_GetLevelData(59, 2, sq_GetSkillLevel(CQJDjIBRZ3oIGCZS, 59)))
CQJDjIBRZ3oIGCZS.sq_WriteDword(sq_GetIntData(CQJDjIBRZ3oIGCZS, 59, 0))
CQJDjIBRZ3oIGCZS.sq_SendCreatePassiveObjectPacket(24381, 0, 0, -1, 0)
break
case 1:
		
		
		break
}
	//CQJDjIBRZ3oIGCZS.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_SoulDrain(CQoaz8s8ReYJf1ZVBxn)
{
	if(!CQoaz8s8ReYJf1ZVBxn) return
local CQdkoIFegQIzeJacs = CQoaz8s8ReYJf1ZVBxn.getSkillSubState()
switch(CQdkoIFegQIzeJacs)
	{
	case 0:
		CQoaz8s8ReYJf1ZVBxn.sq_IntVectClear()
CQoaz8s8ReYJf1ZVBxn.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}


