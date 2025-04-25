
function checkExecutableSkill_Nearblow(CQIzTNgw9kNmy5tR2h)
{
	if (!CQIzTNgw9kNmy5tR2h) return false
local CQ79JgBTwpWQwiO86pRC = CQIzTNgw9kNmy5tR2h.sq_IsUseSkill(215)
if (CQ79JgBTwpWQwiO86pRC)
	{
		CQIzTNgw9kNmy5tR2h.sq_IntVectClear()
CQIzTNgw9kNmy5tR2h.sq_IntVectPush(0)
CQIzTNgw9kNmy5tR2h.sq_AddSetStatePacket(215, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Nearblow(CQrNmqOL1J6cn8Ijc)
{
	if (!CQrNmqOL1J6cn8Ijc) return false
return true
}


function onSetState_Nearblow(CQCG2IwEYhaRxHIdnmE, CQcEoC4mIih3UYs6, CQywgfG3gNDXcLagtj7m, CQNxDnyGtRcSkya9F)
{
	if(!CQCG2IwEYhaRxHIdnmE) return
local CQbdRExiZyZoY6EkKhv = CQCG2IwEYhaRxHIdnmE.sq_GetVectorData(CQywgfG3gNDXcLagtj7m, 0)
CQCG2IwEYhaRxHIdnmE.setSkillSubState(CQbdRExiZyZoY6EkKhv)
switch(CQbdRExiZyZoY6EkKhv)
	{
	case 0:
		CQCG2IwEYhaRxHIdnmE.sq_StopMove()
CQCG2IwEYhaRxHIdnmE.sq_PlaySound("SW_NEAR_BLOW")
CQCG2IwEYhaRxHIdnmE.getVar("Nearblow").setBool(0,false)
CQCG2IwEYhaRxHIdnmE.getVar("Nearblow").clear_obj_vector()
CQCG2IwEYhaRxHIdnmE.sq_SetCurrentAnimation(554)
CQCG2IwEYhaRxHIdnmE.sq_SetCurrentAttackInfo(157)
local CQFMDZ5gUVQwTopR = CQCG2IwEYhaRxHIdnmE.sq_GetBonusRateWithPassive(215, -1, 0,getATSwordmanBonus(CQCG2IwEYhaRxHIdnmE,1.0,215))
CQCG2IwEYhaRxHIdnmE.sq_SetCurrentAttackBonusRate(CQFMDZ5gUVQwTopR)
break
case 1:
		CQCG2IwEYhaRxHIdnmE.sq_SetCurrentAnimation(555)
break
case 2:
		CQCG2IwEYhaRxHIdnmE.sq_SetCurrentAnimation(556)
CQCG2IwEYhaRxHIdnmE.sq_SetCurrentAttackInfo(157)
local CQFMDZ5gUVQwTopR = CQCG2IwEYhaRxHIdnmE.sq_GetBonusRateWithPassive(215, -1, 1, getATSwordmanBonus(CQCG2IwEYhaRxHIdnmE,1.0,215))
CQCG2IwEYhaRxHIdnmE.sq_SetCurrentAttackBonusRate(CQFMDZ5gUVQwTopR)
break
case 3:
		CQCG2IwEYhaRxHIdnmE.sq_SetCurrentAnimation(557)
CQCG2IwEYhaRxHIdnmE.sq_SetCurrentAttackInfo(157)
local CQFMDZ5gUVQwTopR = CQCG2IwEYhaRxHIdnmE.sq_GetBonusRateWithPassive(215, -1, 0, getATSwordmanBonus(CQCG2IwEYhaRxHIdnmE,1.0,215))
CQCG2IwEYhaRxHIdnmE.sq_SetCurrentAttackBonusRate(CQFMDZ5gUVQwTopR)
break
}
	CQCG2IwEYhaRxHIdnmE.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Nearblow(CQ2IWodvpX94gvoYx)
{
	if(!CQ2IWodvpX94gvoYx) return
local CQmW8JXdNlOX8Zilbh2 = CQ2IWodvpX94gvoYx.getSkillSubState()
switch(CQmW8JXdNlOX8Zilbh2)
	{
	case 0:
		CQ2IWodvpX94gvoYx.sq_IntVectClear()
if(CQ2IWodvpX94gvoYx.getVar("Nearblow").getBool(0))
			CQ2IWodvpX94gvoYx.sq_IntVectPush(2)
else
			CQ2IWodvpX94gvoYx.sq_IntVectPush(3)
CQ2IWodvpX94gvoYx.sq_AddSetStatePacket(215, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQ2IWodvpX94gvoYx.sq_IntVectClear()
CQ2IWodvpX94gvoYx.sq_IntVectPush(2)
CQ2IWodvpX94gvoYx.sq_AddSetStatePacket(215, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQ2IWodvpX94gvoYx.setDirection(sq_GetOppositeDirection(CQ2IWodvpX94gvoYx.getDirection()))
CQ2IWodvpX94gvoYx.sq_IntVectClear()
CQ2IWodvpX94gvoYx.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQ2IWodvpX94gvoYx.sq_IntVectClear()
CQ2IWodvpX94gvoYx.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Nearblow(CQJvO6sCeaTShiun, CQkgzxmWJLHp98Scr2, CQa3IyRxRkbw4pAqSmgJ, CQ5LlGSXIpVrNcPbH)
{
	if(!CQJvO6sCeaTShiun || CQ5LlGSXIpVrNcPbH)	return false
local CQwOL3rI31rb5KPxXja = CQJvO6sCeaTShiun.getSkillSubState()
switch(CQwOL3rI31rb5KPxXja)
	{
	case 0:
		if(sq_IsHoldable(CQJvO6sCeaTShiun,CQkgzxmWJLHp98Scr2) && sq_IsGrabable(CQJvO6sCeaTShiun,CQkgzxmWJLHp98Scr2) && !sq_IsFixture(CQkgzxmWJLHp98Scr2))
		{
			CQJvO6sCeaTShiun.getVar("Nearblow").setBool(0,true)
local CQZtQlTwbh5jMbOm = "character/atswordman/2_vegabond/nearblow/ap_nearblow.nut"
local CQzb4W25Xip6X6Ivhh = CNSquirrelAppendage.sq_AppendAppendage(CQkgzxmWJLHp98Scr2, CQJvO6sCeaTShiun, -1, false, CQZtQlTwbh5jMbOm, true)
if(CQzb4W25Xip6X6Ivhh)
			{
				sq_HoldAndDelayDie(CQkgzxmWJLHp98Scr2, CQJvO6sCeaTShiun, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL, CQzb4W25Xip6X6Ivhh)
sq_MoveToAppendageForce(CQkgzxmWJLHp98Scr2, CQJvO6sCeaTShiun, CQJvO6sCeaTShiun, 100, 0, CQkgzxmWJLHp98Scr2.getZPos(), 20, true, CQzb4W25Xip6X6Ivhh,true)
local CQOhpSDKkNRB1oIwloKE = CQzb4W25Xip6X6Ivhh.getAppendageInfo()
CQOhpSDKkNRB1oIwloKE.setValidTime(1000)
}
			
			if(!CQJvO6sCeaTShiun.getVar("Nearblow").is_obj_vector(CQkgzxmWJLHp98Scr2))
				CQJvO6sCeaTShiun.getVar("Nearblow").push_obj_vector(CQkgzxmWJLHp98Scr2)
}

		break
case 1:

		break
}

}

function onEnterFrame_Nearblow(CQ84h1WEDRSGC9snY, CQWZGk7k8yxaJJarUUx)
{
	if(!CQ84h1WEDRSGC9snY) return
local CQVPhwL2QVLWBvaq = CQ84h1WEDRSGC9snY.getSkillSubState()
local CQfyGPpGMxmbLLEyAh = CQ84h1WEDRSGC9snY.getVar("Nearblow").get_obj_vector_size()
local CQuUbBbUcW1jFupeG = "character/atswordman/2_vegabond/nearblow/ap_nearblow.nut"
switch(CQVPhwL2QVLWBvaq)
	{
	case 0:
		if(CQWZGk7k8yxaJJarUUx == 1)
		{
			for(local CQMkNg9RsXy6Z7GoL2j=0; CQMkNg9RsXy6Z7GoL2j<CQfyGPpGMxmbLLEyAh; ++CQMkNg9RsXy6Z7GoL2j)
			{
				local CQn6yqZNgl8BGpFt = CQ84h1WEDRSGC9snY.getVar("Nearblow").get_obj_vector(CQMkNg9RsXy6Z7GoL2j)
local CQG7dsQuWasGPdDaRH = CNSquirrelAppendage.sq_AppendAppendage(CQn6yqZNgl8BGpFt, CQ84h1WEDRSGC9snY, -1, false, CQuUbBbUcW1jFupeG, true)
if(CQG7dsQuWasGPdDaRH)
				{
					sq_HoldAndDelayDie(CQn6yqZNgl8BGpFt, CQ84h1WEDRSGC9snY, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL, CQG7dsQuWasGPdDaRH)
sq_MoveToAppendageForce(CQn6yqZNgl8BGpFt, CQ84h1WEDRSGC9snY, CQ84h1WEDRSGC9snY, 150, 0, CQn6yqZNgl8BGpFt.getZPos(), 20, true, CQG7dsQuWasGPdDaRH,true)
local CQhVPChYLLjaHKDiTUUV = CQG7dsQuWasGPdDaRH.getAppendageInfo()
CQhVPChYLLjaHKDiTUUV.setValidTime(1000)
}
			}
		}
		else if(CQWZGk7k8yxaJJarUUx == 3)
		{
			sq_SetMyShake(CQ84h1WEDRSGC9snY,8,40)
for(local CQMkNg9RsXy6Z7GoL2j=0; CQMkNg9RsXy6Z7GoL2j<CQfyGPpGMxmbLLEyAh; ++CQMkNg9RsXy6Z7GoL2j)
			{
				local CQn6yqZNgl8BGpFt = CQ84h1WEDRSGC9snY.getVar("Nearblow").get_obj_vector(CQMkNg9RsXy6Z7GoL2j)
local CQG7dsQuWasGPdDaRH = CNSquirrelAppendage.sq_AppendAppendage(CQn6yqZNgl8BGpFt, CQ84h1WEDRSGC9snY, -1, false, CQuUbBbUcW1jFupeG, true)
if(CQG7dsQuWasGPdDaRH)
				{
					sq_HoldAndDelayDie(CQn6yqZNgl8BGpFt, CQ84h1WEDRSGC9snY, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL, CQG7dsQuWasGPdDaRH)
sq_MoveToAppendageForce(CQn6yqZNgl8BGpFt, CQ84h1WEDRSGC9snY, CQ84h1WEDRSGC9snY, 150, 0, CQn6yqZNgl8BGpFt.getZPos(), 20, true, CQG7dsQuWasGPdDaRH,true)
local CQhVPChYLLjaHKDiTUUV = CQG7dsQuWasGPdDaRH.getAppendageInfo()
CQhVPChYLLjaHKDiTUUV.setValidTime(1000)
}
			}
		}
		break
case 3:
		if(CQWZGk7k8yxaJJarUUx == 5)
		{
			sq_SetMyShake(CQ84h1WEDRSGC9snY,10,100)
CQ84h1WEDRSGC9snY.sq_StartWrite()
CQ84h1WEDRSGC9snY.sq_WriteDword(215)
CQ84h1WEDRSGC9snY.sq_WriteDword(0)
CQ84h1WEDRSGC9snY.sq_WriteDword(CQ84h1WEDRSGC9snY.sq_GetBonusRateWithPassive(215, -1, 2, getATSwordmanBonus(CQ84h1WEDRSGC9snY,1.0,215)))
CQ84h1WEDRSGC9snY.sq_WriteDword(sq_GetIntData(CQ84h1WEDRSGC9snY,215, 0))
CQ84h1WEDRSGC9snY.sq_SendCreatePassiveObjectPacket(24381, 0, 150, 0, 0)
}
		else if(CQWZGk7k8yxaJJarUUx == 0)
		{
			sq_SetMyShake(CQ84h1WEDRSGC9snY,8,40)
for(local CQMkNg9RsXy6Z7GoL2j=0; CQMkNg9RsXy6Z7GoL2j<CQfyGPpGMxmbLLEyAh; ++CQMkNg9RsXy6Z7GoL2j)
			{
				local CQn6yqZNgl8BGpFt = CQ84h1WEDRSGC9snY.getVar("Nearblow").get_obj_vector(CQMkNg9RsXy6Z7GoL2j)
local CQG7dsQuWasGPdDaRH = CNSquirrelAppendage.sq_AppendAppendage(CQn6yqZNgl8BGpFt, CQ84h1WEDRSGC9snY, -1, false, CQuUbBbUcW1jFupeG, true)
if(CQG7dsQuWasGPdDaRH)
				{
					sq_HoldAndDelayDie(CQn6yqZNgl8BGpFt, CQ84h1WEDRSGC9snY, true, true, true, 200, 200, ENUM_DIRECTION_NEUTRAL, CQG7dsQuWasGPdDaRH)
sq_MoveToAppendageForce(CQn6yqZNgl8BGpFt, CQ84h1WEDRSGC9snY, CQ84h1WEDRSGC9snY, 150, 0, CQn6yqZNgl8BGpFt.getZPos(), 20, true, CQG7dsQuWasGPdDaRH,true)
local CQhVPChYLLjaHKDiTUUV = CQG7dsQuWasGPdDaRH.getAppendageInfo()
CQhVPChYLLjaHKDiTUUV.setValidTime(100)
}
			}
		}
		break
case 2:
		if(CQWZGk7k8yxaJJarUUx == 2)
		{
			sq_SetMyShake(CQ84h1WEDRSGC9snY,15,100)
CQ84h1WEDRSGC9snY.sq_StartWrite()
CQ84h1WEDRSGC9snY.sq_WriteDword(215)
CQ84h1WEDRSGC9snY.sq_WriteDword(0)
CQ84h1WEDRSGC9snY.sq_WriteDword(CQ84h1WEDRSGC9snY.sq_GetBonusRateWithPassive(215, -1, 2, getATSwordmanBonus(CQ84h1WEDRSGC9snY,1.0,215)))
CQ84h1WEDRSGC9snY.sq_WriteDword(sq_GetIntData(CQ84h1WEDRSGC9snY,215, 0))
CQ84h1WEDRSGC9snY.sq_SendCreatePassiveObjectPacket(24381, 0, -150, 0, 0)
for(local CQMkNg9RsXy6Z7GoL2j=0; CQMkNg9RsXy6Z7GoL2j<CQfyGPpGMxmbLLEyAh; ++CQMkNg9RsXy6Z7GoL2j)
			{
				local CQn6yqZNgl8BGpFt = CQ84h1WEDRSGC9snY.getVar("Nearblow").get_obj_vector(CQMkNg9RsXy6Z7GoL2j)
local CQG7dsQuWasGPdDaRH = CNSquirrelAppendage.sq_AppendAppendage(CQn6yqZNgl8BGpFt, CQ84h1WEDRSGC9snY, -1, false, CQuUbBbUcW1jFupeG, true)
if(CQG7dsQuWasGPdDaRH)
				{
					sq_HoldAndDelayDie(CQn6yqZNgl8BGpFt, CQ84h1WEDRSGC9snY, true, true, true, 200, 200, CQ84h1WEDRSGC9snY.getDirection(), CQG7dsQuWasGPdDaRH)
sq_MoveToAppendageForce(CQn6yqZNgl8BGpFt, CQ84h1WEDRSGC9snY, CQ84h1WEDRSGC9snY, -150, 0, CQn6yqZNgl8BGpFt.getZPos(), 20, true, CQG7dsQuWasGPdDaRH,true)
local CQhVPChYLLjaHKDiTUUV = CQG7dsQuWasGPdDaRH.getAppendageInfo()
CQhVPChYLLjaHKDiTUUV.setValidTime(100)
}
			}
		}
		break
}
}

function onEndState_Nearblow(CQWH1hsojlW1wvGGIGOA, CQVaiQqnSa7KnZGCV)
{
	if(!CQWH1hsojlW1wvGGIGOA) return
local CQfefIgR7KaOxUFK = CQWH1hsojlW1wvGGIGOA.getSkillSubState()
switch(CQfefIgR7KaOxUFK)
	{
	case 0:

		break
case 2:

		break
}

}

function onProc_Nearblow(CQucSVBFqkhuU8DF52)
{
	if(!CQucSVBFqkhuU8DF52) return
local CQMYfROyNpDmcEDX9UpU = CQucSVBFqkhuU8DF52.getSkillSubState()
}

function onKeyFrameFlag_Nearblow(CQnRSUlfx1YlkfSJb, CQG2ca3BagXcfLSBQh6)
{
	if (!CQnRSUlfx1YlkfSJb) return false
switch(CQG2ca3BagXcfLSBQh6)
	{
	case 0:
		
		break
}
	return true
}

function onProcCon_Nearblow(CQhKCXFPRiQRlbAZ)
{
	if(!CQhKCXFPRiQRlbAZ) return
local CQpIr9tcWN23gXP1i2 = CQhKCXFPRiQRlbAZ.getSkillSubState()
switch(CQpIr9tcWN23gXP1i2)
	{
	case 0:
		local CQ3W7bz83YuZ8oXVJoT3 = CQhKCXFPRiQRlbAZ.sq_GetStateTimer()
if(CQ3W7bz83YuZ8oXVJoT3 < 90)
			break
if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && CQhKCXFPRiQRlbAZ.getDirection() == 0)
			CQhKCXFPRiQRlbAZ.getVar("Nearblow").setBool(0,false)
else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && CQhKCXFPRiQRlbAZ.getDirection() == 1)
			CQhKCXFPRiQRlbAZ.getVar("Nearblow").setBool(0,false)
break
}
}