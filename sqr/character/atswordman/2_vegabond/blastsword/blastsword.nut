
function checkExecutableSkill_Blastsword(CQUMyRp1dYdltedfJqU)
{
	if (!CQUMyRp1dYdltedfJqU) return false
local CQHH9UbFsPO9Eg97 = CQUMyRp1dYdltedfJqU.sq_IsUseSkill(218)
if (CQHH9UbFsPO9Eg97)
	{
		
		CQUMyRp1dYdltedfJqU.getVar("Blastsword").setInt(0, 450)
CQUMyRp1dYdltedfJqU.sq_IsEnterSkillLastKeyUnits(218)
CQUMyRp1dYdltedfJqU.sq_StopMove()
CQUMyRp1dYdltedfJqU.sq_IntVectClear()
CQUMyRp1dYdltedfJqU.sq_IntVectPush(2)
CQUMyRp1dYdltedfJqU.sq_AddSetStatePacket(218, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Blastsword(CQjaPa9u28T1yP8hNk)
{
	if (!CQjaPa9u28T1yP8hNk) return false
return true
}


function onSetState_Blastsword(CQEexXPfvxJKwk893aoe, CQ4cX9wBZInOuDlkl, CQQfxbjAh5BuewTRvQZ, CQL1ZoMcAQrmUMTz)
{
	if(!CQEexXPfvxJKwk893aoe) return
local CQlJwKA86a5lrrkjeT = CQEexXPfvxJKwk893aoe.sq_GetVectorData(CQQfxbjAh5BuewTRvQZ, 0)
CQEexXPfvxJKwk893aoe.setSkillSubState(CQlJwKA86a5lrrkjeT)
switch(CQlJwKA86a5lrrkjeT)
	{
	case 0:
		CQEexXPfvxJKwk893aoe.sq_SetCurrentAnimation(568)
break
case 1:
		CQEexXPfvxJKwk893aoe.sq_PlaySound("SW_BLAST_SWORD")
CQEexXPfvxJKwk893aoe.sq_SetCurrentAnimation(567)
CQEexXPfvxJKwk893aoe.sq_SetCurrentAttackInfo(149)
local CQIs57eXm3EdmhjYAJ5l = CQEexXPfvxJKwk893aoe.sq_GetBonusRateWithPassive(218, -1, 0, getATSwordmanBonus(CQEexXPfvxJKwk893aoe,1.0,218))
CQEexXPfvxJKwk893aoe.sq_SetCurrentAttackBonusRate(CQIs57eXm3EdmhjYAJ5l)
break
case 2:
		CQEexXPfvxJKwk893aoe.getVar("Blastsword").setInt(1, 3)
CQEexXPfvxJKwk893aoe.sq_SetCurrentAnimation(571)
CQEexXPfvxJKwk893aoe.sq_SetCurrentAttackInfo(149)
local CQIs57eXm3EdmhjYAJ5l = CQEexXPfvxJKwk893aoe.sq_GetBonusRateWithPassive(218, -1, 0, getATSwordmanBonus(CQEexXPfvxJKwk893aoe,1.0,218))
CQEexXPfvxJKwk893aoe.sq_SetCurrentAttackBonusRate(CQIs57eXm3EdmhjYAJ5l)
break
case 3:
		CQEexXPfvxJKwk893aoe.sq_SetCurrentAnimation(570)
CQEexXPfvxJKwk893aoe.sq_SetStaticMoveInfo(0, CQEexXPfvxJKwk893aoe.getVar("Blastsword").getInt(0), 800, false);	
		CQEexXPfvxJKwk893aoe.sq_SetMoveDirection(CQEexXPfvxJKwk893aoe.getDirection(), ENUM_DIRECTION_NEUTRAL)
CQEexXPfvxJKwk893aoe.sq_SetCurrentAttackInfo(149)
local CQIs57eXm3EdmhjYAJ5l = CQEexXPfvxJKwk893aoe.sq_GetBonusRateWithPassive(218, -1, 2, getATSwordmanBonus(CQEexXPfvxJKwk893aoe,1.0,218))
CQEexXPfvxJKwk893aoe.sq_SetCurrentAttackBonusRate(CQIs57eXm3EdmhjYAJ5l)
local CQCbHHu5E1xXvNhc = sq_GetIntData(CQEexXPfvxJKwk893aoe,218, 4)
local CQchU4csfbZSlegTgq = sq_GetIntData(CQEexXPfvxJKwk893aoe,218, 0)/2
CQEexXPfvxJKwk893aoe.setTimeEvent(0,CQchU4csfbZSlegTgq,CQCbHHu5E1xXvNhc,true)
break
case 4:
		CQEexXPfvxJKwk893aoe.sq_StopMove()
CQEexXPfvxJKwk893aoe.sq_SetCurrentAnimation(569)
CQEexXPfvxJKwk893aoe.sq_SetCurrentAttackInfo(149)
local CQIs57eXm3EdmhjYAJ5l = CQEexXPfvxJKwk893aoe.sq_GetBonusRateWithPassive(218, -1, 0, getATSwordmanBonus(CQEexXPfvxJKwk893aoe,1.0,218))
CQEexXPfvxJKwk893aoe.sq_SetCurrentAttackBonusRate(CQIs57eXm3EdmhjYAJ5l)
break
}
	CQEexXPfvxJKwk893aoe.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onTimeEvent_Blastsword(CQdZUWK4Kd1wzPRxc, CQyPMDmJbYychjfmnaf, CQNyu2RoOP8R9Sdv)
{
	if (!CQdZUWK4Kd1wzPRxc) return false
switch(CQyPMDmJbYychjfmnaf)
	{
	case 0:
		CQdZUWK4Kd1wzPRxc.resetHitObjectList()
if(CQNyu2RoOP8R9Sdv >= sq_GetIntData(CQdZUWK4Kd1wzPRxc,218, 4))
		{
			CQdZUWK4Kd1wzPRxc.sq_IntVectClear()
CQdZUWK4Kd1wzPRxc.sq_IntVectPush(4)
CQdZUWK4Kd1wzPRxc.sq_AddSetStatePacket(218, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
}
}

function onEndCurrentAni_Blastsword(CQbnfkVhj7I4jQcwPQ)
{
	if(!CQbnfkVhj7I4jQcwPQ) return
local CQojSeI1uekXdMxUF = CQbnfkVhj7I4jQcwPQ.getSkillSubState()
switch(CQojSeI1uekXdMxUF)
	{
	case 0:
		CQbnfkVhj7I4jQcwPQ.sq_IntVectClear()
CQbnfkVhj7I4jQcwPQ.sq_IntVectPush(1)
CQbnfkVhj7I4jQcwPQ.sq_AddSetStatePacket(218, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQbnfkVhj7I4jQcwPQ.sq_IntVectClear()
CQbnfkVhj7I4jQcwPQ.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		local CQ25YAqDCIGS5rzWKq6 = CQbnfkVhj7I4jQcwPQ.getVar("Blastsword").getInt(1)
CQbnfkVhj7I4jQcwPQ.sq_IntVectClear()
CQbnfkVhj7I4jQcwPQ.sq_IntVectPush(CQ25YAqDCIGS5rzWKq6)
CQbnfkVhj7I4jQcwPQ.sq_AddSetStatePacket(218, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		
		break
case 4:
		CQbnfkVhj7I4jQcwPQ.sq_IntVectClear()
CQbnfkVhj7I4jQcwPQ.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Blastsword(CQmXCNgbq5vpf3zQ, CQJAchDfFQVw6Alyfk, CQkuCEWB9aec1TTejElg, CQaUrLzta34g8FTox)
{
	if(!CQmXCNgbq5vpf3zQ || CQaUrLzta34g8FTox)	return false
local CQ5k784c1Uo43wktyqA = CQmXCNgbq5vpf3zQ.getSkillSubState()
switch(CQ5k784c1Uo43wktyqA)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Blastsword(CQw7sYG8WGRXB1jw, CQZVTiyOL1AS4WjiIk)
{
	if(!CQw7sYG8WGRXB1jw || !CQw7sYG8WGRXB1jw.isMyControlObject()) return
local CQzBKJ9ehbzGNjhWSaC1 = CQw7sYG8WGRXB1jw.getSkillSubState()
switch(CQzBKJ9ehbzGNjhWSaC1)
	{
	case 1:
		if(CQZVTiyOL1AS4WjiIk == 1)
		{
			CQw7sYG8WGRXB1jw.sq_StartWrite()
CQw7sYG8WGRXB1jw.sq_WriteDword(218)
CQw7sYG8WGRXB1jw.sq_WriteDword(0)
CQw7sYG8WGRXB1jw.sq_WriteDword(CQw7sYG8WGRXB1jw.sq_GetBonusRateWithPassive(218, -1, 1, getATSwordmanBonus(CQw7sYG8WGRXB1jw,1.0,218)))
CQw7sYG8WGRXB1jw.sq_SendCreatePassiveObjectPacket(24381, 0, 206, 0, 0)
}
		break
case 4:
		if(CQZVTiyOL1AS4WjiIk == 1)
		{
			CQw7sYG8WGRXB1jw.sq_StartWrite()
CQw7sYG8WGRXB1jw.sq_WriteDword(218)
CQw7sYG8WGRXB1jw.sq_WriteDword(0)
CQw7sYG8WGRXB1jw.sq_WriteDword(CQw7sYG8WGRXB1jw.sq_GetBonusRateWithPassive(218, -1, 1, getATSwordmanBonus(CQw7sYG8WGRXB1jw,1.0,218)))
CQw7sYG8WGRXB1jw.sq_SendCreatePassiveObjectPacket(24381, 0, 206, 0, 0)
}
		break
}
}

function onEndState_Blastsword(CQOFq5ZlPSKaZSgE1, CQ8pJxEL5dUrGlbu6Qb)
{
	if(!CQOFq5ZlPSKaZSgE1) return
local CQWQmynaUYMbXMvI = CQOFq5ZlPSKaZSgE1.getSkillSubState()
switch(CQWQmynaUYMbXMvI)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onProc_Blastsword(CQVz2FdTVPtjHrvphq)
{
	if(!CQVz2FdTVPtjHrvphq) return
local CQY9o3X3l776A2YAQJyp = CQVz2FdTVPtjHrvphq.getSkillSubState()
}

function onKeyFrameFlag_Blastsword(CQvTNPolMgUn7hOr, CQiRrxvoJ73hNXoVOHZ9)
{
	if (!CQvTNPolMgUn7hOr) return false
switch(CQiRrxvoJ73hNXoVOHZ9)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Blastsword(CQKV5WL1TdKGTsqyJP)
{
	if(!CQKV5WL1TdKGTsqyJP) return
local CQ92CmT19Do4B4EhTdU = CQKV5WL1TdKGTsqyJP.getSkillSubState()
switch(CQ92CmT19Do4B4EhTdU)
	{
	case 2:
		if(sq_IsKeyDown(OPTION_HOTKEY_SKILL, ENUM_SUBKEY_TYPE_ALL))
		{
			CQKV5WL1TdKGTsqyJP.getVar("Blastsword").setInt(1, 1)
}
		
		if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && CQKV5WL1TdKGTsqyJP.getDirection() == 0)
			CQKV5WL1TdKGTsqyJP.getVar("Blastsword").setInt(0, 800)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && CQKV5WL1TdKGTsqyJP.getDirection() == 1)
			CQKV5WL1TdKGTsqyJP.getVar("Blastsword").setInt(0, 800)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && CQKV5WL1TdKGTsqyJP.getDirection() == 1)
			CQKV5WL1TdKGTsqyJP.getVar("Blastsword").setInt(1, 1)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && CQKV5WL1TdKGTsqyJP.getDirection() == 0)
			CQKV5WL1TdKGTsqyJP.getVar("Blastsword").setInt(1, 1)
else 
		{
			if(CQKV5WL1TdKGTsqyJP.isDownSkillLastKey())
				CQKV5WL1TdKGTsqyJP.getVar("Blastsword").setInt(1, 1)
else
				CQKV5WL1TdKGTsqyJP.getVar("Blastsword").setInt(1, 3)
}
		break
case 3:
		
		break
}
}