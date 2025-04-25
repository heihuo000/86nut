
function checkExecutableSkill_Guard(CQVawRCKEz1T7O7IMf)
{
	if (!CQVawRCKEz1T7O7IMf) return false
local CQYe5mIEMru92U6G4uTw = CQVawRCKEz1T7O7IMf.sq_IsUseSkill(85)
if (CQYe5mIEMru92U6G4uTw)
	{
		CheckUseAddloadDrawsword(CQVawRCKEz1T7O7IMf,143,{[0] = true,[108] = true,[14] = true},0)
CQVawRCKEz1T7O7IMf.sq_IntVectClear()
CQVawRCKEz1T7O7IMf.sq_IntVectPush(0)
CQVawRCKEz1T7O7IMf.sq_AddSetStatePacket(85, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Guard(CQScaaqkrZ9MVV5A8)
{
	if (!CQScaaqkrZ9MVV5A8) return false
return CheckForceDrawsword(CQScaaqkrZ9MVV5A8,143,{[0] = true,[108] = true,[14] = true})
}

function onSetState_Guard(CQff4Xg3KTIJ3Q5sRbP, CQu1EdDGgEkOBd4F, CQMJjbWUPKHyLs3Pev, CQnsHplg5jbUNg3JuSX7)
{
	if(!CQff4Xg3KTIJ3Q5sRbP) return
local CQGrUL3NioVlZP2DE = CQff4Xg3KTIJ3Q5sRbP.sq_GetVectorData(CQMJjbWUPKHyLs3Pev, 0)
CQff4Xg3KTIJ3Q5sRbP.setSkillSubState(CQGrUL3NioVlZP2DE)
switch(CQGrUL3NioVlZP2DE)
	{
	case 0:
		CQff4Xg3KTIJ3Q5sRbP.sq_IsEnterSkillLastKeyUnits(85)
CQff4Xg3KTIJ3Q5sRbP.sq_PlaySound("SW_GUARD")
CQff4Xg3KTIJ3Q5sRbP.sq_StopMove()
BodyMagicSword(CQff4Xg3KTIJ3Q5sRbP, "Guard")
if(MagicSword_IsAppebd(CQff4Xg3KTIJ3Q5sRbP))
			CQff4Xg3KTIJ3Q5sRbP.sq_SetCurrentAnimation(216)
else
		{
			if(sq_GetSkillLevel(CQff4Xg3KTIJ3Q5sRbP, 148) > 0)
			{
				BodyCalldaimus(CQff4Xg3KTIJ3Q5sRbP, "Guard")
CQff4Xg3KTIJ3Q5sRbP.sq_SetCurrentAnimation(390)
}
			else
				CQff4Xg3KTIJ3Q5sRbP.sq_SetCurrentAnimation(15)
}
			
		CQff4Xg3KTIJ3Q5sRbP.getVar("ATGuard").setBool(0,false)
break
case 1:
		CQff4Xg3KTIJ3Q5sRbP.getVar("Enable_Counterslash").setBool(0,false)
CQff4Xg3KTIJ3Q5sRbP.getVar("Counterslash").setBool(0,false)
if(CQff4Xg3KTIJ3Q5sRbP.getVar("ATGuard").getBool(0))
		{
			CQff4Xg3KTIJ3Q5sRbP.sq_SetMoveDirection(sq_GetOppositeDirection(CQff4Xg3KTIJ3Q5sRbP.getDirection()), ENUM_DIRECTION_NEUTRAL)
CQff4Xg3KTIJ3Q5sRbP.sq_SetStaticMoveInfo(0, 100, 100, false)
}
		else
		{
			CQff4Xg3KTIJ3Q5sRbP.sq_StopMove()
}
		BodyMagicSword(CQff4Xg3KTIJ3Q5sRbP, "Guard_Ex")
if(MagicSword_IsAppebd(CQff4Xg3KTIJ3Q5sRbP))
			CQff4Xg3KTIJ3Q5sRbP.sq_SetCurrentAnimation(217)
else
		{
			if(sq_GetSkillLevel(CQff4Xg3KTIJ3Q5sRbP, 148) > 0)
			{
				BodyCalldaimus(CQff4Xg3KTIJ3Q5sRbP, "Guard_Ex")
CQff4Xg3KTIJ3Q5sRbP.sq_SetCurrentAnimation(391)
}
			else
				CQff4Xg3KTIJ3Q5sRbP.sq_SetCurrentAnimation(16)
}
			
		local CQhvM7FuCMe9Gm1ZZyv = "character/atswordman/guard/ap_guard.nut"
if(CNSquirrelAppendage.sq_IsAppendAppendage(CQff4Xg3KTIJ3Q5sRbP, CQhvM7FuCMe9Gm1ZZyv))
			break
local CQpguYtvTg4MXB1H = CNSquirrelAppendage.sq_AppendAppendage(CQff4Xg3KTIJ3Q5sRbP, CQff4Xg3KTIJ3Q5sRbP, -1, false, CQhvM7FuCMe9Gm1ZZyv, false)
if (CQpguYtvTg4MXB1H != null)
		{
			CQpguYtvTg4MXB1H.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(CQff4Xg3KTIJ3Q5sRbP), 85, sq_GetSkillLevel(CQff4Xg3KTIJ3Q5sRbP, 85))
CNSquirrelAppendage.sq_Append(CQpguYtvTg4MXB1H, CQff4Xg3KTIJ3Q5sRbP, CQff4Xg3KTIJ3Q5sRbP, true)
}
		break
}
}

function onAfterDamage_Guard(CQ33fi99FupKHwMC2v, CQqLuHZA9BROARdK6DyX, CQKOf5EWwcAyJOdNY)
{
	if(!CQ33fi99FupKHwMC2v) return
local CQTtAzn81tzoSh9XUu2 = CQ33fi99FupKHwMC2v.getSkillSubState()
local CQsbctdXYCLQsC82 = CQ33fi99FupKHwMC2v.getSendState()
if(CQTtAzn81tzoSh9XUu2 == 1)
	{
		if(IsFrontOf(CQ33fi99FupKHwMC2v,CQqLuHZA9BROARdK6DyX) && (CQsbctdXYCLQsC82 == 3 || CQsbctdXYCLQsC82 == 4 || CQsbctdXYCLQsC82 == 9))
		{
			local CQ6hCFXILzmxiq8Bty = "character/atswordman/1_swordmaster/counterslash/ap_counterslash.nut"
local CQe4r2wzhsMRIN7ZoBgr = CNSquirrelAppendage.sq_AppendAppendage(CQ33fi99FupKHwMC2v, CQ33fi99FupKHwMC2v, -1, false, CQ6hCFXILzmxiq8Bty, false)
if (CQe4r2wzhsMRIN7ZoBgr != null)
			{
				CQe4r2wzhsMRIN7ZoBgr.sq_SetValidTime(600)
CNSquirrelAppendage.sq_Append(CQe4r2wzhsMRIN7ZoBgr, CQ33fi99FupKHwMC2v, CQ33fi99FupKHwMC2v, true)
}
			CQ33fi99FupKHwMC2v.getVar("ATGuard").setBool(0,true)
CQ33fi99FupKHwMC2v.getVar("Counterslash").setBool(0,true)
CQ33fi99FupKHwMC2v.sq_SetMoveDirection(sq_GetOppositeDirection(CQ33fi99FupKHwMC2v.getDirection()), ENUM_DIRECTION_NEUTRAL)
CQ33fi99FupKHwMC2v.sq_SetStaticMoveInfo(0, 100, 100, false)
CQ33fi99FupKHwMC2v.sq_IntVectClear()
CQ33fi99FupKHwMC2v.sq_IntVectPush(1)
CQ33fi99FupKHwMC2v.sq_AddSetStatePacket(85, STATE_PRIORITY_IGNORE_FORCE, true)
}
	}
}

function onEndCurrentAni_Guard(CQP56Tj5yZt3os61KvC)
{
	if(!CQP56Tj5yZt3os61KvC) return
local CQ9XsrMK6T8ZWg6V = CQP56Tj5yZt3os61KvC.getSkillSubState()
switch(CQ9XsrMK6T8ZWg6V)
	{
	case 0:
		CQP56Tj5yZt3os61KvC.sq_IntVectClear()
CQP56Tj5yZt3os61KvC.sq_IntVectPush(1)
CQP56Tj5yZt3os61KvC.sq_AddSetStatePacket(85, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQP56Tj5yZt3os61KvC.sq_IntVectClear()
CQP56Tj5yZt3os61KvC.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}


function onEnterFrame_Guard(CQtA6AAQmEsSpP541f, CQBusMrjSJjotm5M5y8g)
{
	if(!CQtA6AAQmEsSpP541f) return
switch(CQBusMrjSJjotm5M5y8g)
	{
	case 2:

		break
}
}



function onEndState_Guard(CQvUTjT2ljFQwV47x, CQDTJQJppoYcuQ33bvu)
{
	if(!CQvUTjT2ljFQwV47x) return
local CQR7mOinNMCReM3d = CQvUTjT2ljFQwV47x.getSkillSubState()
switch(CQR7mOinNMCReM3d)
	{
	case 1:
		local CQiV2VYReRw3UIg6WR = "character/atswordman/guard/ap_guard.nut"
if(CQDTJQJppoYcuQ33bvu != 85 &&  CNSquirrelAppendage.sq_IsAppendAppendage(CQvUTjT2ljFQwV47x, CQiV2VYReRw3UIg6WR))
			CNSquirrelAppendage.sq_RemoveAppendage(CQvUTjT2ljFQwV47x, CQiV2VYReRw3UIg6WR)
break
}

}

function onKeyFrameFlag_Guard(CQ1DoR7FJu3ZrhRgDuuH, CQUo2mKuvBiSmAR9J)
{
	if (!CQ1DoR7FJu3ZrhRgDuuH) return false
switch(CQUo2mKuvBiSmAR9J)
	{
	case 0:

		break
}
	return true
}

function onProcCon_Guard(CQHqiaofOcfoYqfkXy3)
{
	if(!CQHqiaofOcfoYqfkXy3) return
local CQjlRXRB4WPETNdf = CQHqiaofOcfoYqfkXy3.getSkillSubState()
switch(CQjlRXRB4WPETNdf)
	{
	case 1:
		local CQE8DdVAuClrved7hv = sq_GetCurrentAnimation(CQHqiaofOcfoYqfkXy3)
local CQ4BvbOcCzJvlR9hzDjo = sq_GetDelaySum(CQE8DdVAuClrved7hv)/2
local CQQFBpQ8ksnhgO8dv = CQHqiaofOcfoYqfkXy3.sq_GetStateTimer()
if(CQHqiaofOcfoYqfkXy3.isDownSkillLastKey() && CQQFBpQ8ksnhgO8dv > CQ4BvbOcCzJvlR9hzDjo)
		{
			CQHqiaofOcfoYqfkXy3.getVar("ATGuard").setBool(0,false)
CQHqiaofOcfoYqfkXy3.sq_IntVectClear()
CQHqiaofOcfoYqfkXy3.sq_IntVectPush(1)
CQHqiaofOcfoYqfkXy3.sq_AddSetStatePacket(85, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
}
}

function onProc_Guard(CQLpWKhXDZN6zj8TmuI)
{
	if(!CQLpWKhXDZN6zj8TmuI) return
local CQlQ87Ne8TWVhV7g = CQLpWKhXDZN6zj8TmuI.getSkillSubState()
}
