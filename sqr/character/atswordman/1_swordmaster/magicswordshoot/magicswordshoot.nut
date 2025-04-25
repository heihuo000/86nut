
function checkExecutableSkill_Magicswordshoot(CQ8ju2vriu5JtYfVHYm)
{
	if (!CQ8ju2vriu5JtYfVHYm) return false
local CQYdzmzKQQLJU3kbo5 = CQ8ju2vriu5JtYfVHYm.sq_IsUseSkill(138)
if (CQYdzmzKQQLJU3kbo5)
	{
		CheckUseAddloadDrawsword(CQ8ju2vriu5JtYfVHYm,138, {[0] = true,[108] = true,[14] = true},0)
CQ8ju2vriu5JtYfVHYm.sq_IntVectClear()
CQ8ju2vriu5JtYfVHYm.sq_IntVectPush(0)
CQ8ju2vriu5JtYfVHYm.sq_AddSetStatePacket(138, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Magicswordshoot(CQo6KHHkZrrmOGX1)
{
	if (!CQo6KHHkZrrmOGX1) return false
if(GetMagicSwordAppIndex(CQo6KHHkZrrmOGX1) == 0 || CQo6KHHkZrrmOGX1.getZPos() > 10)
		return false
return CheckForceDrawsword(CQo6KHHkZrrmOGX1,138, {[0] = true,[108] = true,[14] = true})
}


function onSetState_Magicswordshoot(CQZMOPhjS9qsn28af, CQqvqUw2hHl5slqdS, CQKg3akpAhJViGm6HOT, CQT3mZHU6iUFIrmg)
{
	if(!CQZMOPhjS9qsn28af) return
local CQsL29ugmNNEo3U99r = CQZMOPhjS9qsn28af.sq_GetVectorData(CQKg3akpAhJViGm6HOT, 0)
CQZMOPhjS9qsn28af.setSkillSubState(CQsL29ugmNNEo3U99r)
local CQ6ZovcFBfWrWynkh6qy = 0.0
local CQePgo6uzy6vqTnRl = sq_GetIntData(CQZMOPhjS9qsn28af,138, 1)/100.0
local CQXyFKJvHVEhtFbzWZX = CQZMOPhjS9qsn28af.sq_GetSkillLoad(138)
if(CQXyFKJvHVEhtFbzWZX)
	{
		local CQxUv6iBfxh6Qxvh = CQXyFKJvHVEhtFbzWZX.getRemainLoadNumber()
if(CQxUv6iBfxh6Qxvh > 0 && !CQXyFKJvHVEhtFbzWZX.isCooling())
		{
			CQXyFKJvHVEhtFbzWZX.decreaseLoadCount(CQxUv6iBfxh6Qxvh)
CQ6ZovcFBfWrWynkh6qy = CQePgo6uzy6vqTnRl*CQxUv6iBfxh6Qxvh
}
	}

	local CQOkBcfAerDVbJvcaI = GetMagicSwordAppIndex(CQZMOPhjS9qsn28af)
switch(CQsL29ugmNNEo3U99r)
	{
	case 0:
		CQZMOPhjS9qsn28af.sq_StopMove()
CQZMOPhjS9qsn28af.sq_IsEnterSkillLastKeyUnits(138)
CQZMOPhjS9qsn28af.sq_PlaySound("SW_SWORDSHOOT_01")
CQZMOPhjS9qsn28af.getVar("MagicswordshootIs").setBool(0,false)
local CQ86tuCW2XcFwWWTP77  =
		{
			[0] = ["MagicSwordShot_Fire_Start",306,115],
			[1] = ["MagicSwordShot_Fire_Start",306,115],
			[2] = ["MagicSwordShot_Ice_Start",309,118],
			[3] = ["MagicSwordShot_Dark_Start",303,124],
			[4] = ["MagicSwordShot_Light_Start",312,121]
		}
BodyMagicSword(CQZMOPhjS9qsn28af, CQ86tuCW2XcFwWWTP77[CQOkBcfAerDVbJvcaI][0])
if(MagicSword_IsAppebd(CQZMOPhjS9qsn28af))
			CQZMOPhjS9qsn28af.sq_SetCurrentAnimation(CQ86tuCW2XcFwWWTP77[CQOkBcfAerDVbJvcaI][1])
else
			CQZMOPhjS9qsn28af.sq_SetCurrentAnimation(CQ86tuCW2XcFwWWTP77[CQOkBcfAerDVbJvcaI][2])
CQZMOPhjS9qsn28af.sq_SetCurrentAttackInfo(0)
local CQYCBGs8vlZan4rbMe = CQZMOPhjS9qsn28af.sq_GetBonusRateWithPassive(138, -1, 0,getATSwordmanBonus(CQZMOPhjS9qsn28af,1.0,138))
CQZMOPhjS9qsn28af.sq_SetCurrentAttackBonusRate(CQYCBGs8vlZan4rbMe)
break
case 1:
		local CQ86tuCW2XcFwWWTP77  =
		{
			[0] = ["MagicSwordShot_Fire_Loop",304,116],
			[1] = ["MagicSwordShot_Fire_Loop",304,116],
			[2] = ["MagicSwordShot_Ice_Loop",307,119],
			[3] = ["MagicSwordShot_Dark_Loop",301,125],
			[4] = ["MagicSwordShot_Light_Loop",310,122]
		}
BodyMagicSword(CQZMOPhjS9qsn28af, CQ86tuCW2XcFwWWTP77[CQOkBcfAerDVbJvcaI][0])
if(MagicSword_IsAppebd(CQZMOPhjS9qsn28af))
			CQZMOPhjS9qsn28af.sq_SetCurrentAnimation(CQ86tuCW2XcFwWWTP77[CQOkBcfAerDVbJvcaI][1])
else
			CQZMOPhjS9qsn28af.sq_SetCurrentAnimation(CQ86tuCW2XcFwWWTP77[CQOkBcfAerDVbJvcaI][2])
CQZMOPhjS9qsn28af.sq_SetCurrentAttackInfo(0)
local CQYCBGs8vlZan4rbMe = CQZMOPhjS9qsn28af.sq_GetBonusRateWithPassive(138, -1, 0, getATSwordmanBonus(CQZMOPhjS9qsn28af,1.0+CQ6ZovcFBfWrWynkh6qy,138))
CQZMOPhjS9qsn28af.sq_SetCurrentAttackBonusRate(CQYCBGs8vlZan4rbMe)
CQZMOPhjS9qsn28af.sq_StartWrite()
CQZMOPhjS9qsn28af.sq_WriteDword(138)
CQZMOPhjS9qsn28af.sq_WriteDword(0)
CQZMOPhjS9qsn28af.sq_WriteDword(CQZMOPhjS9qsn28af.sq_GetBonusRateWithPassive(138, -1, 2, getATSwordmanBonus(CQZMOPhjS9qsn28af,1.0,138)))
CQZMOPhjS9qsn28af.sq_WriteDword(CQZMOPhjS9qsn28af.sq_GetBonusRateWithPassive(138, -1, 4, getATSwordmanBonus(CQZMOPhjS9qsn28af,1.0+CQ6ZovcFBfWrWynkh6qy,138)))
CQZMOPhjS9qsn28af.sq_WriteDword(CQOkBcfAerDVbJvcaI)
CQZMOPhjS9qsn28af.sq_WriteDword(sq_GetIntData(CQZMOPhjS9qsn28af,138, 4))
CQZMOPhjS9qsn28af.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 0)
break
case 2:
		CQZMOPhjS9qsn28af.sq_PlaySound("SW_SWORDSHOOT_02")
local CQ86tuCW2XcFwWWTP77  =
		{
			[0] = ["MagicSwordShot_Fire_Shoot",305,117],
			[1] = ["MagicSwordShot_Fire_Shoot",305,117],
			[2] = ["MagicSwordShot_Ice_Shoot",306,120],
			[3] = ["MagicSwordShot_Dark_Shoot",302,126],
			[4] = ["MagicSwordShot_Light_Shoot",311,123]
		}
BodyMagicSword(CQZMOPhjS9qsn28af, CQ86tuCW2XcFwWWTP77[CQOkBcfAerDVbJvcaI][0])
if(MagicSword_IsAppebd(CQZMOPhjS9qsn28af))
			CQZMOPhjS9qsn28af.sq_SetCurrentAnimation(CQ86tuCW2XcFwWWTP77[CQOkBcfAerDVbJvcaI][1])
else
			CQZMOPhjS9qsn28af.sq_SetCurrentAnimation(CQ86tuCW2XcFwWWTP77[CQOkBcfAerDVbJvcaI][2])
CQZMOPhjS9qsn28af.sq_SetCurrentAttackInfo(0)
local CQYCBGs8vlZan4rbMe = CQZMOPhjS9qsn28af.sq_GetBonusRateWithPassive(138, -1, 0, getATSwordmanBonus(CQZMOPhjS9qsn28af,1.0+CQ6ZovcFBfWrWynkh6qy,138))
CQZMOPhjS9qsn28af.sq_SetCurrentAttackBonusRate(CQYCBGs8vlZan4rbMe)
break
}
	//CQZMOPhjS9qsn28af.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Magicswordshoot(CQn7Z1lsq1O8Y3QUeI)
{
	if(!CQn7Z1lsq1O8Y3QUeI) return
local CQGVQk3QFgTMTyQYu6gU = CQn7Z1lsq1O8Y3QUeI.getSkillSubState()
switch(CQGVQk3QFgTMTyQYu6gU)
	{
	case 0:
		CQn7Z1lsq1O8Y3QUeI.sq_IntVectClear()
CQn7Z1lsq1O8Y3QUeI.sq_IntVectPush(1)
CQn7Z1lsq1O8Y3QUeI.sq_AddSetStatePacket(138, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQn7Z1lsq1O8Y3QUeI.sq_IntVectClear()
CQn7Z1lsq1O8Y3QUeI.sq_IntVectPush(2)
CQn7Z1lsq1O8Y3QUeI.sq_AddSetStatePacket(138, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQn7Z1lsq1O8Y3QUeI.sq_IntVectClear()
CQn7Z1lsq1O8Y3QUeI.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Magicswordshoot(CQhD4eFjxiHJg5qQE, CQpoQPtJaNbI8DmnZZa, CQ3q4NzpMfVthzmr, CQqlEhZnryrU9HUq2I)
{
	if(!CQhD4eFjxiHJg5qQE)	return false
local CQK9hqE1KV5T4Yny67J3 = CQhD4eFjxiHJg5qQE.getSkillSubState()
MagicswordupOccur(CQhD4eFjxiHJg5qQE, CQpoQPtJaNbI8DmnZZa, CQ3q4NzpMfVthzmr, CQqlEhZnryrU9HUq2I)
switch(CQK9hqE1KV5T4Yny67J3)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Magicswordshoot(CQTdGInFgxp8d4ueY, CQsMnCdyPrRM5uyoUXz)
{
	if(!CQTdGInFgxp8d4ueY) return
local CQ6HMfXf5XSJM7tt = CQTdGInFgxp8d4ueY.getSkillSubState()
local CQeauUaBilxI6GtatO = GetMagicSwordAppIndex(CQTdGInFgxp8d4ueY)
switch(CQ6HMfXf5XSJM7tt)
	{
	case 0:
		if(CQsMnCdyPrRM5uyoUXz != 1)
			break
switch(CQeauUaBilxI6GtatO)
		{
		case 0:
			sq_SetMyShake(CQTdGInFgxp8d4ueY,2,360)
sq_flashScreen(CQTdGInFgxp8d4ueY,1,1,50,76,sq_RGB(255,69,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 1:
			sq_SetMyShake(CQTdGInFgxp8d4ueY,2,360)
sq_flashScreen(CQTdGInFgxp8d4ueY,1,1,50,76,sq_RGB(255,69,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 2:
			sq_SetMyShake(CQTdGInFgxp8d4ueY,2,360)
sq_flashScreen(CQTdGInFgxp8d4ueY,1,1,50,76,sq_RGB(65,105,225),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 3:
			sq_SetMyShake(CQTdGInFgxp8d4ueY,2,360)
sq_flashScreen(CQTdGInFgxp8d4ueY,1,1,50,76,sq_RGB(192,192,192),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 4:
			sq_SetMyShake(CQTdGInFgxp8d4ueY,2,360)
sq_flashScreen(CQTdGInFgxp8d4ueY,1,1,50,76,sq_RGB(255,255,224),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
}
		break
case 1:
		if(CQsMnCdyPrRM5uyoUXz > 6)
			break
sq_SetMyShake(CQTdGInFgxp8d4ueY,2,240)
break
case 2:
		if(CQsMnCdyPrRM5uyoUXz != 3)
			break
sq_SetMyShake(CQTdGInFgxp8d4ueY,4,200)
break
}
}

function onEndState_Magicswordshoot(CQXeNEjAVaLy1xWuFzeJ, CQxcyZMclKmUCJrrK)
{
	if(!CQXeNEjAVaLy1xWuFzeJ) return
local CQPfd9A8GkMq2trpV7B = CQXeNEjAVaLy1xWuFzeJ.getSkillSubState()
switch(CQPfd9A8GkMq2trpV7B)
	{
	case 3:

		break
case 4:

		break
}

}

function onKeyFrameFlag_Magicswordshoot(CQ91AvePdpyxV5ey, CQvJcoTee18fKiwskXUc)
{
	if (!CQ91AvePdpyxV5ey) return false
switch(CQvJcoTee18fKiwskXUc)
	{
	case 0:

		break
}
	return true
}

function onProcCon_Magicswordshoot(CQDsXJ2l1gs2Bzwox)
{
	if(!CQDsXJ2l1gs2Bzwox) return
local CQRre6iZYijZLHQPbOL = CQDsXJ2l1gs2Bzwox.getSkillSubState()
switch(CQRre6iZYijZLHQPbOL)
	{
	case 1:
		local CQiY6cYaINGAFYqa = sq_GetCurrentAnimation(CQDsXJ2l1gs2Bzwox)
local CQ1Rey7qhYviO3pDOr = sq_GetAnimationFrameIndex(CQiY6cYaINGAFYqa)
if(CQ1Rey7qhYviO3pDOr < 2)
			return
local CQU35GK4ytCQGyoODXL9 = CQDsXJ2l1gs2Bzwox.isDownSkillLastKey()
local CQHLa4oJ6VwxP6oHJ = CQDsXJ2l1gs2Bzwox.sq_GetStateTimer()
local CQjOklvomx3fEoiSXZc = sq_GetIntData(CQDsXJ2l1gs2Bzwox,138, 9)
if(!CQU35GK4ytCQGyoODXL9 || CQHLa4oJ6VwxP6oHJ >= CQjOklvomx3fEoiSXZc)
		{
			CQDsXJ2l1gs2Bzwox.getVar("MagicswordshootIs").setBool(0,true)
CQDsXJ2l1gs2Bzwox.sq_IntVectClear()
CQDsXJ2l1gs2Bzwox.sq_IntVectPush(2)
CQDsXJ2l1gs2Bzwox.sq_AddSetStatePacket(138,STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
}
}

function onProc_Magicswordshoot(CQEtJWVhDIF3AxuL)
{
	if(!CQEtJWVhDIF3AxuL) return
}
