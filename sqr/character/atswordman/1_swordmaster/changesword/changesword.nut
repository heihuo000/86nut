
function checkExecutableSkill_Changesword(CQze7Fc8Is5yN4Qwd8)
{
	if (!CQze7Fc8Is5yN4Qwd8) return false
local CQOcrh6P34pUZuquhWhc = CQze7Fc8Is5yN4Qwd8.sq_IsUseSkill(96)
if (CQOcrh6P34pUZuquhWhc)
	{
		CQze7Fc8Is5yN4Qwd8.sq_IntVectClear()
CQze7Fc8Is5yN4Qwd8.sq_IntVectPush(0)
CQze7Fc8Is5yN4Qwd8.sq_IntVectPush(0)
CQze7Fc8Is5yN4Qwd8.sq_IntVectPush(96)
CQze7Fc8Is5yN4Qwd8.sq_IntVectPush(sq_GetCastTime(CQze7Fc8Is5yN4Qwd8, 96, sq_GetSkillLevel(CQze7Fc8Is5yN4Qwd8, 96)))
CQze7Fc8Is5yN4Qwd8.sq_IntVectPush(500)
CQze7Fc8Is5yN4Qwd8.sq_IntVectPush(0)
CQze7Fc8Is5yN4Qwd8.sq_IntVectPush(4)
CQze7Fc8Is5yN4Qwd8.sq_IntVectPush(4)
CQze7Fc8Is5yN4Qwd8.sq_IntVectPush(1000)
CQze7Fc8Is5yN4Qwd8.sq_IntVectPush(1000)
CQze7Fc8Is5yN4Qwd8.sq_IntVectPush(-1)
CQze7Fc8Is5yN4Qwd8.sq_AddSetStatePacket(STATE_THROW, STATE_PRIORITY_USER, true)
return true
}
	return false
}

function checkCommandEnable_Changesword(CQ8f7QJrbqRlGlqrQ)
{
	if (!CQ8f7QJrbqRlGlqrQ) return false
return true
}

function onSetState_Changesword(CQW1IIo7XHA9XFmptcs, CQVJlVRZj2zMHxUy, CQfsKfVsuUL3A2Uss992, CQurqUIT7FmZJtnoC)
{
	if(!CQW1IIo7XHA9XFmptcs) return
local CQMY3aq4qfMAS5btM8i = CQW1IIo7XHA9XFmptcs.sq_GetVectorData(CQfsKfVsuUL3A2Uss992, 0)
CQW1IIo7XHA9XFmptcs.setSkillSubState(CQMY3aq4qfMAS5btM8i)
switch(CQMY3aq4qfMAS5btM8i)
	{
	case 0:
		CQW1IIo7XHA9XFmptcs.sq_StopMove()
if(MagicSword_IsAppebd(CQW1IIo7XHA9XFmptcs))
			CQW1IIo7XHA9XFmptcs.sq_SetCurrentAnimation(67)
else
			CQW1IIo7XHA9XFmptcs.sq_SetCurrentAnimation(66)
BodyMagicSword(CQW1IIo7XHA9XFmptcs, "ChangeSword")
break
case 1:
		CQW1IIo7XHA9XFmptcs.sq_PlaySound("R_SW_CHANGESWORD")
if(MagicSword_IsAppebd(CQW1IIo7XHA9XFmptcs))
			CQW1IIo7XHA9XFmptcs.sq_SetCurrentAnimation(261)
else
			CQW1IIo7XHA9XFmptcs.sq_SetCurrentAnimation(68)
Changesword_ChangeAppebd(CQW1IIo7XHA9XFmptcs,CQMY3aq4qfMAS5btM8i)
BodyMagicSword(CQW1IIo7XHA9XFmptcs, "ChangeSwordFire")
break
case 2:
		CQW1IIo7XHA9XFmptcs.sq_PlaySound("R_SW_CHANGESWORD")
if(MagicSword_IsAppebd(CQW1IIo7XHA9XFmptcs))
			CQW1IIo7XHA9XFmptcs.sq_SetCurrentAnimation(262)
else
			CQW1IIo7XHA9XFmptcs.sq_SetCurrentAnimation(69)
Changesword_ChangeAppebd(CQW1IIo7XHA9XFmptcs,CQMY3aq4qfMAS5btM8i)
BodyMagicSword(CQW1IIo7XHA9XFmptcs, "ChangeSwordIce")
break
case 3:
		CQW1IIo7XHA9XFmptcs.sq_PlaySound("R_SW_CHANGESWORD")
if(MagicSword_IsAppebd(CQW1IIo7XHA9XFmptcs))
			CQW1IIo7XHA9XFmptcs.sq_SetCurrentAnimation(260)
else
			CQW1IIo7XHA9XFmptcs.sq_SetCurrentAnimation(70)
Changesword_ChangeAppebd(CQW1IIo7XHA9XFmptcs,CQMY3aq4qfMAS5btM8i)
BodyMagicSword(CQW1IIo7XHA9XFmptcs, "ChangeSwordDark")
break
case 4:
		CQW1IIo7XHA9XFmptcs.sq_PlaySound("R_SW_CHANGESWORD")
if(MagicSword_IsAppebd(CQW1IIo7XHA9XFmptcs))
			CQW1IIo7XHA9XFmptcs.sq_SetCurrentAnimation(263)
else
			CQW1IIo7XHA9XFmptcs.sq_SetCurrentAnimation(71)
Changesword_ChangeAppebd(CQW1IIo7XHA9XFmptcs,CQMY3aq4qfMAS5btM8i)
BodyMagicSword(CQW1IIo7XHA9XFmptcs, "ChangeSwordlight")
break
}
	CQW1IIo7XHA9XFmptcs.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Changesword(CQnRpZgJNvtosiba)
{
	if(!CQnRpZgJNvtosiba) return
CQnRpZgJNvtosiba.sq_IntVectClear()
CQnRpZgJNvtosiba.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
local CQG229BmxS8Qizti9C = CQnRpZgJNvtosiba.getMyPassiveObjectCount(2438300)
if(CQG229BmxS8Qizti9C == 0)
		CQnRpZgJNvtosiba.sq_SendCreatePassiveObjectPacket(2438300, 0, 0, 0, 0)
}

function onProcCon_Changesword(CQhLobWha9sxIHtOgxDp)
{
	if(!CQhLobWha9sxIHtOgxDp) return
local CQoOgol1RrjRocWE = CQhLobWha9sxIHtOgxDp.getSkillSubState()
switch(CQoOgol1RrjRocWE)
	{
	case 0:
		local CQ2tFK3oWOF3W3rSr8 = sq_GetCurrentAnimation(CQhLobWha9sxIHtOgxDp)
local CQmbb7GbL7YZpyrIuWB1 = sq_GetAnimationFrameIndex(CQ2tFK3oWOF3W3rSr8)
if(CQhLobWha9sxIHtOgxDp.sq_GetStateTimer() < 200)
			return
if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL))
		{
			CQhLobWha9sxIHtOgxDp.sq_IntVectClear()
CQhLobWha9sxIHtOgxDp.sq_IntVectPush(2)
CQhLobWha9sxIHtOgxDp.sq_AddSetStatePacket(96, STATE_PRIORITY_IGNORE_FORCE, true)
}
		else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL))
		{
			CQhLobWha9sxIHtOgxDp.sq_IntVectClear()
CQhLobWha9sxIHtOgxDp.sq_IntVectPush(4)
CQhLobWha9sxIHtOgxDp.sq_AddSetStatePacket(96, STATE_PRIORITY_IGNORE_FORCE, true)
}
		if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL))
		{
			CQhLobWha9sxIHtOgxDp.sq_IntVectClear()
if(CQhLobWha9sxIHtOgxDp.getDirection() == 0)
				CQhLobWha9sxIHtOgxDp.sq_IntVectPush(1)
else
				CQhLobWha9sxIHtOgxDp.sq_IntVectPush(3)
CQhLobWha9sxIHtOgxDp.sq_AddSetStatePacket(96, STATE_PRIORITY_IGNORE_FORCE, true)
}
		else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
		{
			CQhLobWha9sxIHtOgxDp.sq_IntVectClear()
if(CQhLobWha9sxIHtOgxDp.getDirection() == 0)
				CQhLobWha9sxIHtOgxDp.sq_IntVectPush(3)
else
				CQhLobWha9sxIHtOgxDp.sq_IntVectPush(1)
CQhLobWha9sxIHtOgxDp.sq_AddSetStatePacket(96, STATE_PRIORITY_IGNORE_FORCE, true)
}
		else if(sq_IsKeyDown(OPTION_HOTKEY_SKILL2, ENUM_SUBKEY_TYPE_ALL))
		{
			Changesword_RemoveAppebd(CQhLobWha9sxIHtOgxDp)
CQhLobWha9sxIHtOgxDp.sq_IntVectClear()
CQhLobWha9sxIHtOgxDp.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
}
}

function onProc_Changesword(CQJhBcyfnwCSt6eGE)
{
	if(!CQJhBcyfnwCSt6eGE) return
}



function onEnterFrame_Changesword(CQk4tuxDAKwoQFwAXcU, CQaZ9GZt543QyxwK)
{
	if(!CQk4tuxDAKwoQFwAXcU) return
local CQ5Xt4EdiqicwJQF3x = CQk4tuxDAKwoQFwAXcU.getSkillSubState()
}

function onEndState_Changesword(CQwA9znVVHfRntqX7OoG, CQZuOWdOQ2P3e5qHY)
{
	if(!CQwA9znVVHfRntqX7OoG) return
local CQ2VoH3I3chSJIwCk = CQwA9znVVHfRntqX7OoG.getSkillSubState()
switch(CQ2VoH3I3chSJIwCk)
	{
	case 3:

		break
case 4:

		break
}

}

function onKeyFrameFlag_Changesword(CQyOAuN63lnnfWkx9hsB, CQ86wkjZsfUFqGiGyx)
{
	if (!CQyOAuN63lnnfWkx9hsB) return false
switch(CQ86wkjZsfUFqGiGyx)
	{
	case 0:

		break
}
	return true
}

