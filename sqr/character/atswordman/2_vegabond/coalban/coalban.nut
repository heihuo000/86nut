
function checkExecutableSkill_Coalban(CQCjkYzu8JRxdsFHCE)
{
	if (!CQCjkYzu8JRxdsFHCE) return false
local CQc5Hi4fQjSf5bDSR4P8 = CQCjkYzu8JRxdsFHCE.sq_IsUseSkill(216)
if (CQc5Hi4fQjSf5bDSR4P8)
	{
		CQCjkYzu8JRxdsFHCE.sq_StopMove()
CQCjkYzu8JRxdsFHCE.getVar("Coalban2").setBool(0,false)
CQCjkYzu8JRxdsFHCE.sq_IntVectClear()
if(CQCjkYzu8JRxdsFHCE.sq_GetState() == 6)
			CQCjkYzu8JRxdsFHCE.sq_IntVectPush(3)
else
			CQCjkYzu8JRxdsFHCE.sq_IntVectPush(0)
CQCjkYzu8JRxdsFHCE.sq_AddSetStatePacket(216, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Coalban(CQACUJGBGox2fXDLk)
{
	if (!CQACUJGBGox2fXDLk) return false
return true
}


function onSetState_Coalban(CQ9SH5yAcMLZ6USGxK, CQtiUxxYsRmA18CCbkXe, CQBm1yX82uMD7ECKp, CQvTuFaXtByE2fXNI4v)
{
	if(!CQ9SH5yAcMLZ6USGxK) return
local CQD7f3UrZc8eVLZX = CQ9SH5yAcMLZ6USGxK.sq_GetVectorData(CQBm1yX82uMD7ECKp, 0)
CQ9SH5yAcMLZ6USGxK.setSkillSubState(CQD7f3UrZc8eVLZX)
switch(CQD7f3UrZc8eVLZX)
	{
	case 0:
		CQ9SH5yAcMLZ6USGxK.sq_PlaySound("SW_COAL_BAN")
local CQR8STflnWsY3nZJJK = sq_GetIntData(CQ9SH5yAcMLZ6USGxK,216, 0)
CQ9SH5yAcMLZ6USGxK.getVar("Coalban").setInt(0, CQR8STflnWsY3nZJJK)
CQ9SH5yAcMLZ6USGxK.sq_SetCurrentAnimation(558)
break
case 1:
		CQ9SH5yAcMLZ6USGxK.sq_SetCurrentAnimation(560)
local CQiBYrCZACjhBCLB6qtl = CQ9SH5yAcMLZ6USGxK.getVar("Coalban").getInt(0)
CQ9SH5yAcMLZ6USGxK.getVar("Coalban").setInt(0, CQiBYrCZACjhBCLB6qtl - 1)
break
case 2:
		CQ9SH5yAcMLZ6USGxK.sq_SetCurrentAnimation(562)
break
case 3:
		CQ9SH5yAcMLZ6USGxK.sq_ZStop()
CQ9SH5yAcMLZ6USGxK.sq_PlaySound("SW_COAL_BAN")
local CQR8STflnWsY3nZJJK = sq_GetIntData(CQ9SH5yAcMLZ6USGxK,216, 0)
CQ9SH5yAcMLZ6USGxK.getVar("Coalban").setInt(0, CQR8STflnWsY3nZJJK)
CQ9SH5yAcMLZ6USGxK.sq_SetCurrentAnimation(559)
break
case 4:
		CQ9SH5yAcMLZ6USGxK.sq_SetCurrentAnimation(561)
local CQiBYrCZACjhBCLB6qtl = CQ9SH5yAcMLZ6USGxK.getVar("Coalban").getInt(0)
CQ9SH5yAcMLZ6USGxK.getVar("Coalban").setInt(0, CQiBYrCZACjhBCLB6qtl - 1)
break
case 5:
		CQ9SH5yAcMLZ6USGxK.sq_SetCurrentAnimation(563)
break
}
	CQ9SH5yAcMLZ6USGxK.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Coalban(CQHQCj14BLCFXaJC)
{
	if(!CQHQCj14BLCFXaJC) return
local CQjzrwSJzTwEHRH3t4 = CQHQCj14BLCFXaJC.getSkillSubState()
switch(CQjzrwSJzTwEHRH3t4)
	{
	case 0:
		CQHQCj14BLCFXaJC.sq_IntVectClear()
CQHQCj14BLCFXaJC.sq_IntVectPush(1)
CQHQCj14BLCFXaJC.sq_AddSetStatePacket(216, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQHQCj14BLCFXaJC.sq_IntVectClear()
if(CQHQCj14BLCFXaJC.getVar("Coalban").getInt(0) > 0)
			CQHQCj14BLCFXaJC.sq_IntVectPush(1)
else
			CQHQCj14BLCFXaJC.sq_IntVectPush(2)
CQHQCj14BLCFXaJC.sq_AddSetStatePacket(216, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQHQCj14BLCFXaJC.sq_IntVectClear()
CQHQCj14BLCFXaJC.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQHQCj14BLCFXaJC.sq_IntVectClear()
CQHQCj14BLCFXaJC.sq_IntVectPush(4)
CQHQCj14BLCFXaJC.sq_AddSetStatePacket(216, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 4:
		CQHQCj14BLCFXaJC.sq_IntVectClear()
if(CQHQCj14BLCFXaJC.getVar("Coalban").getInt(0) > 0)
			CQHQCj14BLCFXaJC.sq_IntVectPush(4)
else
			CQHQCj14BLCFXaJC.sq_IntVectPush(5)
CQHQCj14BLCFXaJC.sq_AddSetStatePacket(216, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 5:
		CQHQCj14BLCFXaJC.sq_IntVectClear()
CQHQCj14BLCFXaJC.sq_IntVectPush(1)
CQHQCj14BLCFXaJC.sq_IntVectPush(0)
CQHQCj14BLCFXaJC.sq_IntVectPush(0)
CQHQCj14BLCFXaJC.sq_AddSetStatePacket(6, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onEnterFrame_Coalban(CQE97OrpHE4eAZHNoqgX, CQ4NIBlhf2oYJUG6s)
{
	if(!CQE97OrpHE4eAZHNoqgX) return
local CQQHTR31rhfhSVF2Akw = CQE97OrpHE4eAZHNoqgX.getSkillSubState()
switch(CQQHTR31rhfhSVF2Akw)
	{
	case 1:
		switch(CQ4NIBlhf2oYJUG6s)
		{
		case 0:
			CQE97OrpHE4eAZHNoqgX.sq_StartWrite()
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(216)
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(0)
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(CQE97OrpHE4eAZHNoqgX.sq_GetBonusRateWithPassive(216, -1, 0, getATSwordmanBonus(CQE97OrpHE4eAZHNoqgX,1.0,216)))
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(sq_GetIntData(CQE97OrpHE4eAZHNoqgX,216, 1))
CQE97OrpHE4eAZHNoqgX.sq_WriteBool(CQE97OrpHE4eAZHNoqgX.getVar("Coalban2").getBool(0))
CQE97OrpHE4eAZHNoqgX.sq_WriteFloat(0.0)
CQE97OrpHE4eAZHNoqgX.sq_SendCreatePassiveObjectPacket(24381, 0, 50, 0, 73)
break
case 2:
			CQE97OrpHE4eAZHNoqgX.sq_StartWrite()
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(216)
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(1)
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(CQE97OrpHE4eAZHNoqgX.sq_GetBonusRateWithPassive(216, -1, 0, getATSwordmanBonus(CQE97OrpHE4eAZHNoqgX,1.0,216)))
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(sq_GetIntData(CQE97OrpHE4eAZHNoqgX,216, 1))
CQE97OrpHE4eAZHNoqgX.sq_WriteBool(CQE97OrpHE4eAZHNoqgX.getVar("Coalban2").getBool(0))
CQE97OrpHE4eAZHNoqgX.sq_WriteFloat(0.0)
CQE97OrpHE4eAZHNoqgX.sq_SendCreatePassiveObjectPacket(24381, 0, 50, 0, 73)
break
case 4:
			CQE97OrpHE4eAZHNoqgX.sq_StartWrite()
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(216)
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(2)
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(CQE97OrpHE4eAZHNoqgX.sq_GetBonusRateWithPassive(216, -1, 0, getATSwordmanBonus(CQE97OrpHE4eAZHNoqgX,1.0,216)))
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(sq_GetIntData(CQE97OrpHE4eAZHNoqgX,216, 1))
CQE97OrpHE4eAZHNoqgX.sq_WriteBool(CQE97OrpHE4eAZHNoqgX.getVar("Coalban2").getBool(0))
CQE97OrpHE4eAZHNoqgX.sq_WriteFloat(0.0)
CQE97OrpHE4eAZHNoqgX.sq_SendCreatePassiveObjectPacket(24381, 0, 50, 0, 73)
break
}
		break
case 2:
		
		break
case 4:
		switch(CQ4NIBlhf2oYJUG6s)
		{
		case 0:
			CQE97OrpHE4eAZHNoqgX.sq_StartWrite()
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(216)
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(0)
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(CQE97OrpHE4eAZHNoqgX.sq_GetBonusRateWithPassive(216, -1, 0, getATSwordmanBonus(CQE97OrpHE4eAZHNoqgX,1.0,216)))
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(sq_GetIntData(CQE97OrpHE4eAZHNoqgX,216, 1))
CQE97OrpHE4eAZHNoqgX.sq_WriteBool(CQE97OrpHE4eAZHNoqgX.getVar("Coalban2").getBool(0))
CQE97OrpHE4eAZHNoqgX.sq_WriteFloat(-40.0)
CQE97OrpHE4eAZHNoqgX.sq_SendCreatePassiveObjectPacket(24381, 0, 50, 0, 73)
break
case 2:
			CQE97OrpHE4eAZHNoqgX.sq_StartWrite()
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(216)
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(1)
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(CQE97OrpHE4eAZHNoqgX.sq_GetBonusRateWithPassive(216, -1, 0, getATSwordmanBonus(CQE97OrpHE4eAZHNoqgX,1.0,216)))
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(sq_GetIntData(CQE97OrpHE4eAZHNoqgX,216, 1))
CQE97OrpHE4eAZHNoqgX.sq_WriteBool(CQE97OrpHE4eAZHNoqgX.getVar("Coalban2").getBool(0))
CQE97OrpHE4eAZHNoqgX.sq_WriteFloat(-40.0)
CQE97OrpHE4eAZHNoqgX.sq_SendCreatePassiveObjectPacket(24381, 0, 50, 0, 73)
break
case 4:
			CQE97OrpHE4eAZHNoqgX.sq_StartWrite()
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(216)
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(2)
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(CQE97OrpHE4eAZHNoqgX.sq_GetBonusRateWithPassive(216, -1, 0, getATSwordmanBonus(CQE97OrpHE4eAZHNoqgX,1.0,216)))
CQE97OrpHE4eAZHNoqgX.sq_WriteDword(sq_GetIntData(CQE97OrpHE4eAZHNoqgX,216, 1))
CQE97OrpHE4eAZHNoqgX.sq_WriteBool(CQE97OrpHE4eAZHNoqgX.getVar("Coalban2").getBool(0))
CQE97OrpHE4eAZHNoqgX.sq_WriteFloat(-40.0)
CQE97OrpHE4eAZHNoqgX.sq_SendCreatePassiveObjectPacket(24381, 0, 50, 0, 73)
break
}
		break
case 5:
		
		break
}
}

function onEndState_Coalban(CQLaKmoF3oP5sEN9, CQleTsvbbMlCDfB544)
{
	if(!CQLaKmoF3oP5sEN9) return
local CQrcKX8fXRKFIIBR9QaO = CQLaKmoF3oP5sEN9.getSkillSubState()
switch(CQrcKX8fXRKFIIBR9QaO)
	{
	case 3:
		
		break
}
	
}

function onProc_Coalban(CQCfmdLBjyUEobV8g3n)
{
	if(!CQCfmdLBjyUEobV8g3n) return
local CQc12nptuBNsOXC4 = CQCfmdLBjyUEobV8g3n.getSkillSubState()
}

function onKeyFrameFlag_Coalban(CQAJopbc7cWtpmCfrJ, CQdsgLBVqW7nt9X7ukug)
{
	if (!CQAJopbc7cWtpmCfrJ) return false
switch(CQdsgLBVqW7nt9X7ukug)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Coalban(CQyrF8OOFXakEaZhE)
{
	if(!CQyrF8OOFXakEaZhE) return
local CQNWvYwexzh8yRZdX43 = CQyrF8OOFXakEaZhE.getSkillSubState()
switch(CQNWvYwexzh8yRZdX43)
	{
	case 1:
		if(sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL))
		{
			CQyrF8OOFXakEaZhE.sq_IntVectClear()
CQyrF8OOFXakEaZhE.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
}
		if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && CQyrF8OOFXakEaZhE.getDirection() == 0)
			CQyrF8OOFXakEaZhE.getVar("Coalban2").setBool(0,true)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && CQyrF8OOFXakEaZhE.getDirection() == 1)
			CQyrF8OOFXakEaZhE.getVar("Coalban2").setBool(0,true)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && CQyrF8OOFXakEaZhE.getDirection() == 1)
			CQyrF8OOFXakEaZhE.getVar("Coalban2").setBool(0,false)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && CQyrF8OOFXakEaZhE.getDirection() == 0)
			CQyrF8OOFXakEaZhE.getVar("Coalban2").setBool(0,false)
break
case 4:
		if(sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL))
		{
			CQyrF8OOFXakEaZhE.sq_IntVectClear()
CQyrF8OOFXakEaZhE.sq_IntVectPush(1)
CQyrF8OOFXakEaZhE.sq_IntVectPush(0)
CQyrF8OOFXakEaZhE.sq_IntVectPush(0)
CQyrF8OOFXakEaZhE.sq_AddSetStatePacket(6, STATE_PRIORITY_IGNORE_FORCE, true)
}
		if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && CQyrF8OOFXakEaZhE.getDirection() == 0)
			CQyrF8OOFXakEaZhE.getVar("Coalban2").setBool(0,true)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && CQyrF8OOFXakEaZhE.getDirection() == 1)
			CQyrF8OOFXakEaZhE.getVar("Coalban2").setBool(0,true)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && CQyrF8OOFXakEaZhE.getDirection() == 1)
			CQyrF8OOFXakEaZhE.getVar("Coalban2").setBool(0,false)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && CQyrF8OOFXakEaZhE.getDirection() == 0)
			CQyrF8OOFXakEaZhE.getVar("Coalban2").setBool(0,false)
break
}
}