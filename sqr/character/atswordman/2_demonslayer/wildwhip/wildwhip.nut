
function checkExecutableSkill_Wildwhip(CQkdYwpokV1DrgJZo)
{
	if (!CQkdYwpokV1DrgJZo) return false
local CQaMVPbnDcupmXHHskl = CQkdYwpokV1DrgJZo.sq_IsUseSkill(153)
if (CQaMVPbnDcupmXHHskl)
	{
		CQkdYwpokV1DrgJZo.sq_IntVectClear()
CQkdYwpokV1DrgJZo.sq_IntVectPush(0)
CQkdYwpokV1DrgJZo.sq_AddSetStatePacket(153, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Wildwhip(CQ5HWd9R8O9wYm1V)
{
	if (!CQ5HWd9R8O9wYm1V) return false
if(sq_GetSkillLevel(CQ5HWd9R8O9wYm1V, 163) < 1)
	{
		local CQwa7bOFE6IYqVMKG5 = CQ5HWd9R8O9wYm1V.sq_GetState()
if(CQwa7bOFE6IYqVMKG5 == 0 || CQwa7bOFE6IYqVMKG5 == 108 || CQwa7bOFE6IYqVMKG5 == 14)
			return true
else
			return false
}
	return true
}


function onSetState_Wildwhip(CQZeIpQyMlkgvENN4QQz, CQzclLhYcsG4lfNX9, CQOfL7NBK4b7bIB2gqC, CQ81QYAPgkVBznVB)
{
	if(!CQZeIpQyMlkgvENN4QQz) return
local CQWJKuerWpeGhCV5rk = CQZeIpQyMlkgvENN4QQz.sq_GetVectorData(CQOfL7NBK4b7bIB2gqC, 0)
CQZeIpQyMlkgvENN4QQz.setSkillSubState(CQWJKuerWpeGhCV5rk)
switch(CQWJKuerWpeGhCV5rk)
	{
	case 0:
		CQZeIpQyMlkgvENN4QQz.sq_StopMove()
CQZeIpQyMlkgvENN4QQz.sq_PlaySound("WILDWHIP_SPIRAL_READY")
CQZeIpQyMlkgvENN4QQz.getVar("WildwhipSpeed").setFloat(0,1.0)
CQZeIpQyMlkgvENN4QQz.getVar("WildwhipC").setInt(0, 0)
CQZeIpQyMlkgvENN4QQz.sq_SetCurrentAnimation(452)
CQZeIpQyMlkgvENN4QQz.sq_SetCurrentAttackInfo(92)
local CQVsqH58424sxqC1ua8X = CQZeIpQyMlkgvENN4QQz.sq_GetBonusRateWithPassive(153, -1, 1,getATSwordmanBonus(CQZeIpQyMlkgvENN4QQz,1.0,153))
CQZeIpQyMlkgvENN4QQz.sq_SetCurrentAttackBonusRate(CQVsqH58424sxqC1ua8X)
break
case 1:
		
		CQZeIpQyMlkgvENN4QQz.sq_SetCurrentAnimation(453)
CQZeIpQyMlkgvENN4QQz.sq_SetCurrentAttackInfo(92)
local CQVsqH58424sxqC1ua8X = CQZeIpQyMlkgvENN4QQz.sq_GetBonusRateWithPassive(153, -1, 1, getATSwordmanBonus(CQZeIpQyMlkgvENN4QQz,1.0,153))
CQZeIpQyMlkgvENN4QQz.sq_SetCurrentAttackBonusRate(CQVsqH58424sxqC1ua8X)
break
case 2:
		CQZeIpQyMlkgvENN4QQz.stopSound(2021)
CQZeIpQyMlkgvENN4QQz.sq_PlaySound("WILDWHIP_SPIRAL_FINISH")
CQZeIpQyMlkgvENN4QQz.sq_SetCurrentAnimation(454)
CQZeIpQyMlkgvENN4QQz.sq_SetCurrentAttackInfo(93)
local CQVsqH58424sxqC1ua8X = CQZeIpQyMlkgvENN4QQz.sq_GetBonusRateWithPassive(153, -1, 1, getATSwordmanBonus(CQZeIpQyMlkgvENN4QQz,1.0,153))
CQZeIpQyMlkgvENN4QQz.sq_SetCurrentAttackBonusRate(CQVsqH58424sxqC1ua8X)
break
}
	CQZeIpQyMlkgvENN4QQz.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Wildwhip(CQMbgtclTNAk5RZf)
{
	if(!CQMbgtclTNAk5RZf) return
local CQnhFF65ovz7fZZ73T3i = CQMbgtclTNAk5RZf.getSkillSubState()
switch(CQnhFF65ovz7fZZ73T3i)
	{
	case 0:
		CQMbgtclTNAk5RZf.playSound("WILDWHIP_SPIRAL_LOOP", 2021, 0,0,0)
CQMbgtclTNAk5RZf.sq_IntVectClear()
CQMbgtclTNAk5RZf.sq_IntVectPush(1)
CQMbgtclTNAk5RZf.sq_AddSetStatePacket(153, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		local CQG4b2Ja9AKB6ULh7 = CQMbgtclTNAk5RZf.getVar("WildwhipC").getInt(0)
if(CQG4b2Ja9AKB6ULh7 == 1)
		{
			CQMbgtclTNAk5RZf.sq_IntVectClear()
CQMbgtclTNAk5RZf.sq_IntVectPush(2)
CQMbgtclTNAk5RZf.sq_AddSetStatePacket(153, STATE_PRIORITY_IGNORE_FORCE, true)
}
		else
		{
			CQMbgtclTNAk5RZf.sq_IntVectClear()
CQMbgtclTNAk5RZf.sq_IntVectPush(1)
CQMbgtclTNAk5RZf.sq_AddSetStatePacket(153, STATE_PRIORITY_IGNORE_FORCE, true)
CQMbgtclTNAk5RZf.getVar("WildwhipC").setInt(0, CQG4b2Ja9AKB6ULh7 + 1)
}
		break
case 2:
		CQMbgtclTNAk5RZf.sq_IntVectClear()
CQMbgtclTNAk5RZf.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Wildwhip(CQhZFTUqwVmH1V3df5x, CQpPbrfjHxMs7Q36, CQ3yBAVHYOtW2f2ge4, CQqntMIoI67nVI19yqeh)
{
	if(!CQhZFTUqwVmH1V3df5x)	return false
local CQKj9hqn3lsk3h1kp = CQhZFTUqwVmH1V3df5x.getSkillSubState()
Calldaimus_onAttack(CQhZFTUqwVmH1V3df5x,CQpPbrfjHxMs7Q36, CQ3yBAVHYOtW2f2ge4, CQqntMIoI67nVI19yqeh)
switch(CQKj9hqn3lsk3h1kp)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Wildwhip(CQT5PQgMtaj7NXMRLkB, CQsXxODDZ4FdZmNl)
{
	if(!CQT5PQgMtaj7NXMRLkB) return
local CQ6AZVWyUmY1MBNh14 = CQT5PQgMtaj7NXMRLkB.getSkillSubState()
switch(CQ6AZVWyUmY1MBNh14)
	{
	case 1:
		if(CQsXxODDZ4FdZmNl%3 == 0)
		{
			CQT5PQgMtaj7NXMRLkB.resetHitObjectList()
if(CQT5PQgMtaj7NXMRLkB.isMyControlObject())
				CQT5PQgMtaj7NXMRLkB.sq_SetShake(CQT5PQgMtaj7NXMRLkB,2,85)
}
		break
case 4:

		break
}
}

function onEndState_Wildwhip(CQeuzRldSpCKXaBc6Q91, CQXUZm3V71wOHRVTc)
{
	if(!CQeuzRldSpCKXaBc6Q91) return
if(CQXUZm3V71wOHRVTc != 153)
		CQeuzRldSpCKXaBc6Q91.stopSound(2021)
}

function onProcCon_Wildwhip(CQxkwaFtpn3uCOVbnTi)
{
	if(!CQxkwaFtpn3uCOVbnTi) return
local CQP64XtcNDimJUCx = CQxkwaFtpn3uCOVbnTi.getSkillSubState()
switch(CQP64XtcNDimJUCx)
	{
	case 1:
		if(sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL))
		{
			if(IsInterval(CQxkwaFtpn3uCOVbnTi, 50))
			{
				local CQ9VEd97xNdlSV6mWk = CQxkwaFtpn3uCOVbnTi.getVar("WildwhipSpeed").getFloat(0)
CQxkwaFtpn3uCOVbnTi.getVar("WildwhipSpeed").setFloat(0,CQ9VEd97xNdlSV6mWk + 0.15)
}
		}
		else if(sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL))
		{
			CQxkwaFtpn3uCOVbnTi.sq_IntVectClear()
CQxkwaFtpn3uCOVbnTi.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
}
		local CQWDjbZOJvPdsq6vDEFp = CQxkwaFtpn3uCOVbnTi.getVar("WildwhipSpeed").getFloat(0)
CQxkwaFtpn3uCOVbnTi.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, CQWDjbZOJvPdsq6vDEFp)
break
}
}
function onProc_Wildwhip(CQVFHpEeRAl1Dd5z)
{
	if(!CQVFHpEeRAl1Dd5z) return
local CQYpUKnTWVJKIs5UCq = CQVFHpEeRAl1Dd5z.getSkillSubState()
}

function onKeyFrameFlag_Wildwhip(CQwM8dTkTjcigxCeMR, CQJSmXhETgI3YdIXOy)
{
	if (!CQwM8dTkTjcigxCeMR) return false
switch(CQJSmXhETgI3YdIXOy)
	{
	case 0:

		break
}
	return true
}

