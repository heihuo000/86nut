
function checkExecutableSkill_Ultimateblade(CQmKD3g6sEueM6ohaTvD)
{
	if (!CQmKD3g6sEueM6ohaTvD) return false
local CQJLvlBI2KdYXFicP = CQmKD3g6sEueM6ohaTvD.sq_IsUseSkill(165)
if (CQJLvlBI2KdYXFicP)
	{
		CQmKD3g6sEueM6ohaTvD.getVar("Ultimateblade").clear_obj_vector()
CQmKD3g6sEueM6ohaTvD.getVar("Ultimateblade").setInt(0, CQmKD3g6sEueM6ohaTvD.getDirection())
CQmKD3g6sEueM6ohaTvD.sq_IntVectClear()
CQmKD3g6sEueM6ohaTvD.sq_IntVectPush(0)
CQmKD3g6sEueM6ohaTvD.sq_AddSetStatePacket(165, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Ultimateblade(CQkOBrOQvjOgHxiTF5H)
{
	if (!CQkOBrOQvjOgHxiTF5H) return false
return true
}


function onSetState_Ultimateblade(CQatvSlkZoT5AJug, CQ5bB13KjMHCJvyx8L, CQwhWUFpSgbDS5ykRq2u, CQZ48ayU7uBEsutvk)
{
	if(!CQatvSlkZoT5AJug) return
local CQzZOZx2qBreD7WzxkQ = CQatvSlkZoT5AJug.sq_GetVectorData(CQwhWUFpSgbDS5ykRq2u, 0)
CQatvSlkZoT5AJug.setSkillSubState(CQzZOZx2qBreD7WzxkQ)
if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT , ENUM_SUBKEY_TYPE_ALL))
		CQatvSlkZoT5AJug.getVar("Ultimateblade").setInt(0, 0)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT , ENUM_SUBKEY_TYPE_ALL))
		CQatvSlkZoT5AJug.getVar("Ultimateblade").setInt(0, 1)
switch(CQzZOZx2qBreD7WzxkQ)
	{
	case 0:
		CQatvSlkZoT5AJug.sq_StopMove()
BodyCalldaimus(CQatvSlkZoT5AJug, "ultimateblade_start_grab")
CQatvSlkZoT5AJug.sq_SetCurrentAnimation(446)
CQatvSlkZoT5AJug.sq_SetCurrentAttackInfo(111)
local CQOPz95GNc5WIGWn = CQatvSlkZoT5AJug.sq_GetBonusRateWithPassive(165, -1, 0,getATSwordmanBonus(CQatvSlkZoT5AJug,1.0,165))
CQatvSlkZoT5AJug.sq_SetCurrentAttackBonusRate(CQOPz95GNc5WIGWn)
local CQ8yZbEuxtpnocrcp4 = [
		                   "character/swordman/effect/animation/atultimateblade/start/start_grab_clawn02.ani",
		                   "character/swordman/effect/animation/atultimateblade/start/start_grab_floor01.ani"
		               ]
foreach(path in CQ8yZbEuxtpnocrcp4)
			DarktemplerCreateAniPooledObj(CQatvSlkZoT5AJug, path, true, true, CQatvSlkZoT5AJug.getXPos(), CQatvSlkZoT5AJug.getYPos(), 0,1.0)
break
case 1:
		
		CQatvSlkZoT5AJug.sq_SetCurrentAnimation(447)
CQatvSlkZoT5AJug.sq_SetCurrentAttackInfo(111)
local CQOPz95GNc5WIGWn = CQatvSlkZoT5AJug.sq_GetBonusRateWithPassive(165, -1, 0, getATSwordmanBonus(CQatvSlkZoT5AJug,1.0,165))
CQatvSlkZoT5AJug.sq_SetCurrentAttackBonusRate(CQOPz95GNc5WIGWn)
local CQ8yZbEuxtpnocrcp4 = [
		                   "character/swordman/effect/animation/atultimateblade/start/start_pull_floorn01.ani",
		                   "character/swordman/effect/animation/atultimateblade/start/start_pull_clawn02.ani"
		               ]
foreach(path in CQ8yZbEuxtpnocrcp4)
			DarktemplerCreateAniPooledObj(CQatvSlkZoT5AJug, path, true, true, CQatvSlkZoT5AJug.getXPos(), CQatvSlkZoT5AJug.getYPos(), 0,1.0)
break
case 2:
		
		CQatvSlkZoT5AJug.sq_SetCurrentAnimation(436)
CQatvSlkZoT5AJug.sq_SetCurrentAttackInfo(111)
local CQOPz95GNc5WIGWn = CQatvSlkZoT5AJug.sq_GetBonusRateWithPassive(165, -1, 0, getATSwordmanBonus(CQatvSlkZoT5AJug,1.0,165))
CQatvSlkZoT5AJug.sq_SetCurrentAttackBonusRate(CQOPz95GNc5WIGWn)
local CQ8yZbEuxtpnocrcp4 = [
		                   "character/swordman/effect/animation/atultimateblade/attackbasic/basic_attack01_clawn03.ani"
		               ]
foreach(path in CQ8yZbEuxtpnocrcp4)
			DarktemplerCreateAniPooledObj(CQatvSlkZoT5AJug, path, true, true, CQatvSlkZoT5AJug.getXPos(), CQatvSlkZoT5AJug.getYPos(), 0,1.0)
break
case 3:
		
		CQatvSlkZoT5AJug.sq_SetCurrentAnimation(437)
CQatvSlkZoT5AJug.sq_SetCurrentAttackInfo(111)
local CQOPz95GNc5WIGWn = CQatvSlkZoT5AJug.sq_GetBonusRateWithPassive(165, -1, 0, getATSwordmanBonus(CQatvSlkZoT5AJug,1.0,165))
CQatvSlkZoT5AJug.sq_SetCurrentAttackBonusRate(CQOPz95GNc5WIGWn)
local CQ8yZbEuxtpnocrcp4 = [
		                   "character/swordman/effect/animation/atultimateblade/attackbasic/basic_attack02_clawn03.ani"
		               ]
foreach(path in CQ8yZbEuxtpnocrcp4)
			DarktemplerCreateAniPooledObj(CQatvSlkZoT5AJug, path, true, true, CQatvSlkZoT5AJug.getXPos(), CQatvSlkZoT5AJug.getYPos(), 0,1.0)
break
case 4:
		
		CQatvSlkZoT5AJug.sq_SetCurrentAnimation(438)
CQatvSlkZoT5AJug.sq_SetCurrentAttackInfo(111)
local CQOPz95GNc5WIGWn = CQatvSlkZoT5AJug.sq_GetBonusRateWithPassive(165, -1, 0, getATSwordmanBonus(CQatvSlkZoT5AJug,1.0,165))
CQatvSlkZoT5AJug.sq_SetCurrentAttackBonusRate(CQOPz95GNc5WIGWn)
local CQ8yZbEuxtpnocrcp4 = [
		                   "character/swordman/effect/animation/atultimateblade/attackbasic/basic_attack03_clawn03.ani"
		               ]
foreach(path in CQ8yZbEuxtpnocrcp4)
			DarktemplerCreateAniPooledObj(CQatvSlkZoT5AJug, path, true, true, CQatvSlkZoT5AJug.getXPos(), CQatvSlkZoT5AJug.getYPos(), 0,1.0)
break
case 5:
		
		CQatvSlkZoT5AJug.sq_SetCurrentAnimation(439)
CQatvSlkZoT5AJug.sq_SetCurrentAttackInfo(111)
local CQOPz95GNc5WIGWn = CQatvSlkZoT5AJug.sq_GetBonusRateWithPassive(165, -1, 0, getATSwordmanBonus(CQatvSlkZoT5AJug,1.0,165))
CQatvSlkZoT5AJug.sq_SetCurrentAttackBonusRate(CQOPz95GNc5WIGWn)
local CQ8yZbEuxtpnocrcp4 = [
		                   "character/swordman/effect/animation/atultimateblade/attackbasic/basic_attack04_clawn03.ani"
		               ]
foreach(path in CQ8yZbEuxtpnocrcp4)
			DarktemplerCreateAniPooledObj(CQatvSlkZoT5AJug, path, true, true, CQatvSlkZoT5AJug.getXPos(), CQatvSlkZoT5AJug.getYPos(), 0,1.0)
break
case 6:
		CQatvSlkZoT5AJug.sq_SetCurrentAnimation(445)
CQatvSlkZoT5AJug.sq_SetCurrentAttackInfo(111)
local CQOPz95GNc5WIGWn = CQatvSlkZoT5AJug.sq_GetBonusRateWithPassive(165, -1, 0, getATSwordmanBonus(CQatvSlkZoT5AJug,1.0,165))
CQatvSlkZoT5AJug.sq_SetCurrentAttackBonusRate(CQOPz95GNc5WIGWn)
CQatvSlkZoT5AJug.setDirection(CQatvSlkZoT5AJug.getVar("Ultimateblade").getInt(0))
local CQ8yZbEuxtpnocrcp4 = [
		                   "character/swordman/effect/animation/atultimateblade/finish/finish_floorn01.ani",
		                   "character/swordman/effect/animation/atultimateblade/finish/finish_dust02.ani"
		               ]
foreach(path in CQ8yZbEuxtpnocrcp4)
			DarktemplerCreateAniPooledObj(CQatvSlkZoT5AJug, path, true, true, CQatvSlkZoT5AJug.getXPos(), CQatvSlkZoT5AJug.getYPos(), 0,1.0)
break
}
	CQatvSlkZoT5AJug.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Ultimateblade(CQTpde7JsBCtlKyy)
{
	if(!CQTpde7JsBCtlKyy) return
local CQsQAAKp1cenbvts9K = CQTpde7JsBCtlKyy.getSkillSubState()
switch(CQsQAAKp1cenbvts9K)
	{
	case 0:
		CQTpde7JsBCtlKyy.sq_IntVectClear()
CQTpde7JsBCtlKyy.sq_IntVectPush(1)
CQTpde7JsBCtlKyy.sq_AddSetStatePacket(165, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQTpde7JsBCtlKyy.sq_IntVectClear()
CQTpde7JsBCtlKyy.sq_IntVectPush(2)
CQTpde7JsBCtlKyy.sq_AddSetStatePacket(165, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQTpde7JsBCtlKyy.sq_IntVectClear()
CQTpde7JsBCtlKyy.sq_IntVectPush(3)
CQTpde7JsBCtlKyy.sq_AddSetStatePacket(165, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQTpde7JsBCtlKyy.sq_IntVectClear()
CQTpde7JsBCtlKyy.sq_IntVectPush(4)
CQTpde7JsBCtlKyy.sq_AddSetStatePacket(165, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 4:
		CQTpde7JsBCtlKyy.sq_IntVectClear()
CQTpde7JsBCtlKyy.sq_IntVectPush(5)
CQTpde7JsBCtlKyy.sq_AddSetStatePacket(165, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 5:
		CQTpde7JsBCtlKyy.sq_IntVectClear()
CQTpde7JsBCtlKyy.sq_IntVectPush(6)
CQTpde7JsBCtlKyy.sq_AddSetStatePacket(165, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 6:
		CQTpde7JsBCtlKyy.sq_IntVectClear()
CQTpde7JsBCtlKyy.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Ultimateblade(CQ6xxNojWW4mz5OobTIz, CQedXhb1LCozhiOPq, CQXMxQ9Fhzfdx8Iar5d, CQxHXIOnAsP1jHsS)
{
	if(!CQ6xxNojWW4mz5OobTIz || CQxHXIOnAsP1jHsS)	return false
local CQPaeVQf6LzLdYsIH4 = CQ6xxNojWW4mz5OobTIz.getSkillSubState()
Calldaimus_onAttack(CQ6xxNojWW4mz5OobTIz,CQedXhb1LCozhiOPq, CQXMxQ9Fhzfdx8Iar5d, CQxHXIOnAsP1jHsS)
switch(CQPaeVQf6LzLdYsIH4)
	{
	case 0:
		if(!CQ6xxNojWW4mz5OobTIz.getVar("Ultimateblade").is_obj_vector(CQedXhb1LCozhiOPq))
		{
			local CQ9e5fhBmTKPkLapXqcX = "character/atswordman/2_demonslayer/ultimateblade/ap_ultimateblade.nut"
local CQtcaUNyBEUufuEAN = CNSquirrelAppendage.sq_AppendAppendage(CQedXhb1LCozhiOPq, CQ6xxNojWW4mz5OobTIz, -1, false, CQ9e5fhBmTKPkLapXqcX, true)
if(sq_IsHoldable(CQ6xxNojWW4mz5OobTIz,CQedXhb1LCozhiOPq) && sq_IsGrabable(CQ6xxNojWW4mz5OobTIz,CQedXhb1LCozhiOPq) && !sq_IsFixture(CQedXhb1LCozhiOPq))
			{
				CQ6xxNojWW4mz5OobTIz.getVar("Ultimateblade").push_obj_vector(CQedXhb1LCozhiOPq)
if(CQtcaUNyBEUufuEAN)
				{
					sq_HoldAndDelayDie(CQedXhb1LCozhiOPq, CQ6xxNojWW4mz5OobTIz, true, true, true, 100, 100, ENUM_DIRECTION_NEUTRAL, CQtcaUNyBEUufuEAN)
local CQDfkaPYz2Nq66Es = CQtcaUNyBEUufuEAN.getAppendageInfo()
CQDfkaPYz2Nq66Es.setValidTime(1600)
}
			}
		}
		break
case 1:

		break
}

}

function onEnterFrame_Ultimateblade(CQR1JZwVHjtzRopF7a, CQiJU9jPfo7d7xoPY4kU)
{
	if(!CQR1JZwVHjtzRopF7a || !CQR1JZwVHjtzRopF7a.isMyControlObject()) return
local CQ1sHbGrrMa22JoJU = CQR1JZwVHjtzRopF7a.getSkillSubState()
switch(CQ1sHbGrrMa22JoJU)
	{
	case 0:
		switch(CQiJU9jPfo7d7xoPY4kU)
		{
		case 0:
			sq_flashScreen(CQR1JZwVHjtzRopF7a,160,0,0,102,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 2:
			sq_flashScreen(CQR1JZwVHjtzRopF7a,0,0,160,102,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 4:
			sq_SetMyShake(CQR1JZwVHjtzRopF7a,4,160)
sq_flashScreen(CQR1JZwVHjtzRopF7a,0,0,160,51,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
}
		break
case 1:
		switch(CQiJU9jPfo7d7xoPY4kU)
		{
		case 0:
			sq_SetMyShake(CQR1JZwVHjtzRopF7a,3,40)
break
case 1:
			sq_SetMyShake(CQR1JZwVHjtzRopF7a,2,80)
break
case 2:
			sq_SetMyShake(CQR1JZwVHjtzRopF7a,1,180)
break
case 3:
			GrabMons_Ultimateblade(CQR1JZwVHjtzRopF7a, -37,0,148)
break
case 4:
			GrabMons_Ultimateblade(CQR1JZwVHjtzRopF7a, -27,0,182)
break
}
		break
case 2:
		switch(CQiJU9jPfo7d7xoPY4kU)
		{
		case 0:
			sq_SetMyShake(CQR1JZwVHjtzRopF7a,3,40)
sq_flashScreen(CQR1JZwVHjtzRopF7a,0,0,40,25,sq_RGB(255,255,255),GRAPHICEFFECT_LINEARDODGE,ENUM_DRAWLAYER_BOTTOM)
CQR1JZwVHjtzRopF7a.sq_StartWrite()
CQR1JZwVHjtzRopF7a.sq_WriteDword(165)
CQR1JZwVHjtzRopF7a.sq_WriteDword(0)
CQR1JZwVHjtzRopF7a.sq_WriteDword(CQR1JZwVHjtzRopF7a.sq_GetBonusRateWithPassive(165, -1, 2, getATSwordmanBonus(CQR1JZwVHjtzRopF7a,1.0,165)))
CQR1JZwVHjtzRopF7a.sq_SendCreatePassiveObjectPacket(24383, 0, 133, 0, 0)
break
case 1:
			GrabMons_Ultimateblade(CQR1JZwVHjtzRopF7a, 133,0,130)
break
case 2:
			GrabMons_Ultimateblade(CQR1JZwVHjtzRopF7a, 133,0,130)
break
}
		break
case 3:
		switch(CQiJU9jPfo7d7xoPY4kU)
		{
		case 0:
			CQR1JZwVHjtzRopF7a.sq_StartWrite()
CQR1JZwVHjtzRopF7a.sq_WriteDword(165)
CQR1JZwVHjtzRopF7a.sq_WriteDword(0)
CQR1JZwVHjtzRopF7a.sq_WriteDword(CQR1JZwVHjtzRopF7a.sq_GetBonusRateWithPassive(165, -1, 2, getATSwordmanBonus(CQR1JZwVHjtzRopF7a,1.0,165)))
CQR1JZwVHjtzRopF7a.sq_SendCreatePassiveObjectPacket(24383, 0, -87, 0, 0)
sq_SetMyShake(CQR1JZwVHjtzRopF7a,3,40)
sq_flashScreen(CQR1JZwVHjtzRopF7a,0,0,40,25,sq_RGB(255,255,255),GRAPHICEFFECT_LINEARDODGE,ENUM_DRAWLAYER_BOTTOM)
break
case 1:
			GrabMons_Ultimateblade(CQR1JZwVHjtzRopF7a, -87,0,166)
break
case 2:
			GrabMons_Ultimateblade(CQR1JZwVHjtzRopF7a, -132,0,171)
break
}
		break
case 4:
		switch(CQiJU9jPfo7d7xoPY4kU)
		{
		case 0:
			CQR1JZwVHjtzRopF7a.sq_StartWrite()
CQR1JZwVHjtzRopF7a.sq_WriteDword(165)
CQR1JZwVHjtzRopF7a.sq_WriteDword(0)
CQR1JZwVHjtzRopF7a.sq_WriteDword(CQR1JZwVHjtzRopF7a.sq_GetBonusRateWithPassive(165, -1, 2, getATSwordmanBonus(CQR1JZwVHjtzRopF7a,1.0,165)))
CQR1JZwVHjtzRopF7a.sq_SendCreatePassiveObjectPacket(24383, 0, 155, 0, 0)
sq_SetMyShake(CQR1JZwVHjtzRopF7a,3,40)
sq_flashScreen(CQR1JZwVHjtzRopF7a,0,0,40,25,sq_RGB(255,255,255),GRAPHICEFFECT_LINEARDODGE,ENUM_DRAWLAYER_BOTTOM)
break
case 1:
			GrabMons_Ultimateblade(CQR1JZwVHjtzRopF7a, 155,0,124)
break
case 2:
			GrabMons_Ultimateblade(CQR1JZwVHjtzRopF7a, 149,0,171)
break
}
		break
case 5:
		switch(CQiJU9jPfo7d7xoPY4kU)
		{
		case 0:
			CQR1JZwVHjtzRopF7a.sq_StartWrite()
CQR1JZwVHjtzRopF7a.sq_WriteDword(165)
CQR1JZwVHjtzRopF7a.sq_WriteDword(0)
CQR1JZwVHjtzRopF7a.sq_WriteDword(CQR1JZwVHjtzRopF7a.sq_GetBonusRateWithPassive(165, -1, 2, getATSwordmanBonus(CQR1JZwVHjtzRopF7a,1.0,165)))
CQR1JZwVHjtzRopF7a.sq_SendCreatePassiveObjectPacket(24383, 0,  -90, 0, 0)
sq_SetMyShake(CQR1JZwVHjtzRopF7a,3,40)
sq_flashScreen(CQR1JZwVHjtzRopF7a,0,0,40,25,sq_RGB(255,255,255),GRAPHICEFFECT_LINEARDODGE,ENUM_DRAWLAYER_BOTTOM)
break
case 1:
			GrabMons_Ultimateblade(CQR1JZwVHjtzRopF7a, -90,0,168)
break
case 2:
			GrabMons_Ultimateblade(CQR1JZwVHjtzRopF7a, -127,0,170)
break
}
		break
case 6:
		switch(CQiJU9jPfo7d7xoPY4kU)
		{
		case 0:
			GrabMons_Ultimateblade(CQR1JZwVHjtzRopF7a, -47,0,224)
sq_flashScreen(CQR1JZwVHjtzRopF7a,160,0,0,165,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 1:
			GrabMons_Ultimateblade(CQR1JZwVHjtzRopF7a, -25,0,242)
break
case 2:
			CQR1JZwVHjtzRopF7a.sq_StartWrite()
CQR1JZwVHjtzRopF7a.sq_WriteDword(165)
CQR1JZwVHjtzRopF7a.sq_WriteDword(1)
CQR1JZwVHjtzRopF7a.sq_WriteDword(CQR1JZwVHjtzRopF7a.sq_GetBonusRateWithPassive(165, -1, 4, getATSwordmanBonus(CQR1JZwVHjtzRopF7a,1.0,165)))
CQR1JZwVHjtzRopF7a.sq_SendCreatePassiveObjectPacket(24383, 0,  228, 0, 0)
sq_SetMyShake(CQR1JZwVHjtzRopF7a,6,240)
sq_flashScreen(CQR1JZwVHjtzRopF7a,0,0,160,165,sq_RGB(255,255,255),GRAPHICEFFECT_LINEARDODGE,ENUM_DRAWLAYER_BOTTOM)
break
case 3:
			GrabMons_Ultimateblade2(CQR1JZwVHjtzRopF7a, 228,0,65)
break
}
		break
}
}

function onChangeSkillEffect_Ultimateblade(CQ8hPaIek8dAWwEC, CQsGKUGLkkcgsxmchSxA, CQjvi66sOBYiBiSHGs)
{
	if(!CQ8hPaIek8dAWwEC || CQsGKUGLkkcgsxmchSxA != 165) return
local CQEhfcJTjcXqL8AVLkZh = CQjvi66sOBYiBiSHGs.readDword()
local CQ44Sui4uWQzNEALV = CQjvi66sOBYiBiSHGs.readDword()
local CQqZYGfJCC2YXcPM14 = CQjvi66sOBYiBiSHGs.readDword()
local CQKPV4CqqzigHKOCTQ6u = CQjvi66sOBYiBiSHGs.readDword()
local CQTyYzshFsd4CbO3c = sq_GetDistancePos(CQ8hPaIek8dAWwEC.getXPos(), CQ8hPaIek8dAWwEC.getDirection(), CQEhfcJTjcXqL8AVLkZh)
local CQsnCWm1xLOXJ6INnTt = CQ8hPaIek8dAWwEC.getVar("Ultimateblade").get_obj_vector_size()
for(local CQ6jrDRoaTTDSosX = 0; CQ6jrDRoaTTDSosX < CQsnCWm1xLOXJ6INnTt; ++CQ6jrDRoaTTDSosX)
	{
		local CQe572Bb1EJpK9s1O5 = CQ8hPaIek8dAWwEC.getVar("Ultimateblade").get_obj_vector(CQ6jrDRoaTTDSosX)
if(CQe572Bb1EJpK9s1O5)
			sq_SetCurrentPos(CQe572Bb1EJpK9s1O5, CQTyYzshFsd4CbO3c, CQ8hPaIek8dAWwEC.getYPos(), CQqZYGfJCC2YXcPM14)
}
	
}

function GrabMons_Ultimateblade(CQXXIkWMW2nwDJaVDQtb, CQxAlelDKhBYIvE4K , CQPuKP3tgorgoLEMCq1 , CQ9UqNFdPM54OnG7)
{
	sq_BinaryStartWrite()
sq_BinaryWriteDword(CQxAlelDKhBYIvE4K)
sq_BinaryWriteDword(CQPuKP3tgorgoLEMCq1)
sq_BinaryWriteDword(CQ9UqNFdPM54OnG7)
sq_BinaryWriteDword(0)
sq_SendChangeSkillEffectPacket(CQXXIkWMW2nwDJaVDQtb, 165)
}

function GrabMons_Ultimateblade2(CQvkKhtV5vECp7F3jk, CQD6qqzOiygDtpFdz , CQRC2ILxVBSpEdD6v4C , CQiDoVp7lcxeyKDg)
{
	sq_BinaryStartWrite()
sq_BinaryWriteDword(CQD6qqzOiygDtpFdz)
sq_BinaryWriteDword(CQRC2ILxVBSpEdD6v4C)
sq_BinaryWriteDword(CQiDoVp7lcxeyKDg)
sq_BinaryWriteDword(1)
sq_SendChangeSkillEffectPacket(CQvkKhtV5vECp7F3jk, 165)
}

function onEndState_Ultimateblade(CQ1ogfbZGOZYwbS9IK, CQUpFUdwdXqbuXAkST7s)
{
	if(!CQ1ogfbZGOZYwbS9IK) return
local CQHQbEXTez1keoARH = CQ1ogfbZGOZYwbS9IK.getSkillSubState()
switch(CQHQbEXTez1keoARH)
	{
	case 3:

		break
case 4:

		break
}

}

function onProc_Ultimateblade(CQjzBZa42sy7U8P855y)
{
	if(!CQjzBZa42sy7U8P855y) return
local CQE9v9jEYL8BrEOj = CQjzBZa42sy7U8P855y.getSkillSubState()
}

function onKeyFrameFlag_Ultimateblade(CQ4NBvMmIkIHmYOfh4, CQQGtoAhhEksYLIllqSz)
{
	if (!CQ4NBvMmIkIHmYOfh4) return false
switch(CQQGtoAhhEksYLIllqSz)
	{
	case 0:

		break
}
	return true
}
