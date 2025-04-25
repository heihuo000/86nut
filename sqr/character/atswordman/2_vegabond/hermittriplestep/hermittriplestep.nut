
function checkExecutableSkill_Hermittriplestep(CQuypLTjNWVRY3nw8j)
{
	if (!CQuypLTjNWVRY3nw8j) return false
local CQGnh7JHwXe3TAniR = CQuypLTjNWVRY3nw8j.sq_IsUseSkill(225)
if (CQGnh7JHwXe3TAniR)
	{
		
		CQuypLTjNWVRY3nw8j.sq_IntVectClear()
CQuypLTjNWVRY3nw8j.sq_IntVectPush(0)
CQuypLTjNWVRY3nw8j.sq_AddSetStatePacket(225, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Hermittriplestep(CQhjGYioHz4XRTbWm3v)
{
	if (!CQhjGYioHz4XRTbWm3v) return false
return true
}

function onSetState_Hermittriplestep(CQp5hiYnYepSlFvQ, CQ3XFH7MILRogevyyJ, CQqAb5KD3kAw91YepjyO, CQKuNxoyyEzcjWcoZ)
{
	if(!CQp5hiYnYepSlFvQ) return
local CQTUytRfXJLRd4ctB32 = CQp5hiYnYepSlFvQ.sq_GetVectorData(CQqAb5KD3kAw91YepjyO, 0)
CQp5hiYnYepSlFvQ.setSkillSubState(CQTUytRfXJLRd4ctB32)
switch(CQTUytRfXJLRd4ctB32)
	{
	case 0:
		CQp5hiYnYepSlFvQ.getVar("Hermittriplestep").clear_vector()
CQp5hiYnYepSlFvQ.getVar("Hermittriplestep").push_vector(CQp5hiYnYepSlFvQ.getXPos())
CQp5hiYnYepSlFvQ.getVar("Hermittriplestep").push_vector(CQp5hiYnYepSlFvQ.getXPos())
CQp5hiYnYepSlFvQ.getVar("Hermittriplestep").clear_obj_vector()
CQp5hiYnYepSlFvQ.sq_StopMove()
CQp5hiYnYepSlFvQ.sq_SetCurrentAnimation(612)
if(CQp5hiYnYepSlFvQ.isMyControlObject())
			sq_flashScreen(CQp5hiYnYepSlFvQ,60,420,0,102,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
local CQsmdFBVkhmh5Sxa = [
			"character/swordman/effect/animation/athermittriplestep/cast_ilusion.ani",
			"character/swordman/effect/animation/athermittriplestep/cast_dust.ani",
			"character/swordman/effect/animation/athermittriplestep/cast_effect.ani"
		]
foreach(path in CQsmdFBVkhmh5Sxa)
			ATswordmanCreateAniPooledObj(CQp5hiYnYepSlFvQ, path , false , true,CQp5hiYnYepSlFvQ.getXPos(), CQp5hiYnYepSlFvQ.getYPos(), 0,1.0)
	CQp5hiYnYepSlFvQ.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 1:
		CQp5hiYnYepSlFvQ.sq_SetCurrentAnimation(609)
if(CQp5hiYnYepSlFvQ.isMyControlObject())
			sq_flashScreen(CQp5hiYnYepSlFvQ,0,120,0,102,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
local CQsmdFBVkhmh5Sxa = [
			"character/swordman/effect/animation/athermittriplestep/attacka_back_leef02.ani",
			"character/swordman/effect/animation/athermittriplestep/attacka_front_leef03.ani",
			"character/swordman/effect/animation/athermittriplestep/attacka_back_ilusion.ani"
		]
foreach(path in CQsmdFBVkhmh5Sxa)
			ATswordmanCreateAniPooledObj(CQp5hiYnYepSlFvQ, path , false , true,CQp5hiYnYepSlFvQ.getXPos(), CQp5hiYnYepSlFvQ.getYPos(), 0,1.0)
local CQe8xTQc8MtV6GzOcm2c = sq_GetDistancePos(CQp5hiYnYepSlFvQ.getXPos(), CQp5hiYnYepSlFvQ.getDirection(), 150)
CQp5hiYnYepSlFvQ.getVar("Hermittriplestep").set_vector(1,CQe8xTQc8MtV6GzOcm2c)
	CQp5hiYnYepSlFvQ.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 2:
		CQp5hiYnYepSlFvQ.sq_SetCurrentAnimation(610)
if(CQp5hiYnYepSlFvQ.isMyControlObject())
			sq_flashScreen(CQp5hiYnYepSlFvQ,0,120,0,102,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
local CQsmdFBVkhmh5Sxa = [
			"character/swordman/effect/animation/athermittriplestep/attackb_back_leef02.ani",
			"character/swordman/effect/animation/athermittriplestep/attackb_back_ilusion.ani",
			"character/swordman/effect/animation/athermittriplestep/attackb_front_leef03.ani"
		]
foreach(path in CQsmdFBVkhmh5Sxa)
			ATswordmanCreateAniPooledObj(CQp5hiYnYepSlFvQ, path , false , true,CQp5hiYnYepSlFvQ.getXPos(), CQp5hiYnYepSlFvQ.getYPos(), 0,1.0)
local CQe8xTQc8MtV6GzOcm2c = sq_GetDistancePos(CQp5hiYnYepSlFvQ.getXPos(), CQp5hiYnYepSlFvQ.getDirection(), 150)
CQp5hiYnYepSlFvQ.getVar("Hermittriplestep").set_vector(1,CQe8xTQc8MtV6GzOcm2c)
	CQp5hiYnYepSlFvQ.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 3:
		CQp5hiYnYepSlFvQ.sq_SetCurrentAnimation(611)
if(CQp5hiYnYepSlFvQ.isMyControlObject())
			sq_flashScreen(CQp5hiYnYepSlFvQ,0,120,360,102,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
local CQsmdFBVkhmh5Sxa = [
			"character/swordman/effect/animation/athermittriplestep/attackc_back_leef02.ani",
			"character/swordman/effect/animation/athermittriplestep/attackc_back_ilusion.ani",
			"character/swordman/effect/animation/athermittriplestep/attackc_front_leef01.ani"
		]
foreach(path in CQsmdFBVkhmh5Sxa)
			ATswordmanCreateAniPooledObj(CQp5hiYnYepSlFvQ, path , false , true,CQp5hiYnYepSlFvQ.getXPos(), CQp5hiYnYepSlFvQ.getYPos(), 0,1.0)
local CQe8xTQc8MtV6GzOcm2c = sq_GetDistancePos(CQp5hiYnYepSlFvQ.getXPos(), CQp5hiYnYepSlFvQ.getDirection(), 150)
CQp5hiYnYepSlFvQ.getVar("Hermittriplestep").set_vector(1,CQe8xTQc8MtV6GzOcm2c)
	CQp5hiYnYepSlFvQ.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 4:
		CQp5hiYnYepSlFvQ.sq_SetCurrentAnimation(613)
if(CQp5hiYnYepSlFvQ.isMyControlObject())
			sq_flashScreen(CQp5hiYnYepSlFvQ,720,120,0,255,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)

	CQp5hiYnYepSlFvQ.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 5:
		CQp5hiYnYepSlFvQ.sq_SetCurrentAnimation(614)
if(CQp5hiYnYepSlFvQ.isMyControlObject())
			sq_flashScreen(CQp5hiYnYepSlFvQ,720,120,0,255,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)

	CQp5hiYnYepSlFvQ.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 6:
		CQp5hiYnYepSlFvQ.sq_SetCurrentAnimation(615)
CQp5hiYnYepSlFvQ.sq_SetCurrentAttackInfo(177)
local CQtz5Q4LRWYjKDmAKms9 = CQp5hiYnYepSlFvQ.sq_GetBonusRateWithPassive(225, -1, 0, getATSwordmanBonus(CQp5hiYnYepSlFvQ,1.0,225))
CQp5hiYnYepSlFvQ.sq_SetCurrentAttackBonusRate(CQtz5Q4LRWYjKDmAKms9)
if(CQp5hiYnYepSlFvQ.isMyControlObject())
			sq_flashScreen(CQp5hiYnYepSlFvQ,0,0,600,153,sq_RGB(255,255,255),GRAPHICEFFECT_LINEARDODGE,ENUM_DRAWLAYER_BOTTOM)
local CQsmdFBVkhmh5Sxa = [
			"character/swordman/effect/animation/athermittriplestep/lastb_effect02.ani",
			"character/swordman/effect/animation/athermittriplestep/lasta_leef.ani"
		]
foreach(path in CQsmdFBVkhmh5Sxa)
			ATswordmanCreateAniPooledObj(CQp5hiYnYepSlFvQ, path , false , true,CQp5hiYnYepSlFvQ.getXPos(), CQp5hiYnYepSlFvQ.getYPos(), 0,1.0)
break
}
}

function onEndCurrentAni_Hermittriplestep(CQvNkBym4lwVL1nFMj8)
{
	if(!CQvNkBym4lwVL1nFMj8) return
local CQDGHRc3ns3GFWnP = CQvNkBym4lwVL1nFMj8.getSkillSubState()
switch(CQDGHRc3ns3GFWnP)
	{
	case 0:
		CQvNkBym4lwVL1nFMj8.sq_IntVectClear()
CQvNkBym4lwVL1nFMj8.sq_IntVectPush(1)
CQvNkBym4lwVL1nFMj8.sq_AddSetStatePacket(225, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQvNkBym4lwVL1nFMj8.sq_IntVectClear()
CQvNkBym4lwVL1nFMj8.sq_IntVectPush(2)
CQvNkBym4lwVL1nFMj8.sq_AddSetStatePacket(225, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQvNkBym4lwVL1nFMj8.sq_IntVectClear()
CQvNkBym4lwVL1nFMj8.sq_IntVectPush(3)
CQvNkBym4lwVL1nFMj8.sq_AddSetStatePacket(225, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		local CQREjmXHALiaZ4bJxh = CQvNkBym4lwVL1nFMj8.getVar("Hermittriplestep").get_vector(0)
local CQUwHaaoTkdrGSvDbpxS = CQvNkBym4lwVL1nFMj8.getVar("Hermittriplestep").get_vector(1)
if(CQREjmXHALiaZ4bJxh == CQUwHaaoTkdrGSvDbpxS)
			CQvNkBym4lwVL1nFMj8.setDirection(sq_GetOppositeDirection(CQvNkBym4lwVL1nFMj8.getDirection()))
CQvNkBym4lwVL1nFMj8.sq_IntVectClear()
CQvNkBym4lwVL1nFMj8.sq_IntVectPush(4)
CQvNkBym4lwVL1nFMj8.sq_AddSetStatePacket(225, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 4:
		CQvNkBym4lwVL1nFMj8.sq_IntVectClear()
CQvNkBym4lwVL1nFMj8.sq_IntVectPush(6)
CQvNkBym4lwVL1nFMj8.sq_AddSetStatePacket(225, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 5:
		CQvNkBym4lwVL1nFMj8.sq_IntVectClear()
CQvNkBym4lwVL1nFMj8.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 6:
		CQvNkBym4lwVL1nFMj8.sq_IntVectClear()
CQvNkBym4lwVL1nFMj8.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onEnterFrame_Hermittriplestep(CQHxUXUgopPbPlvZq23, CQjd1dfM9JljHFYG)
{
	if(!CQHxUXUgopPbPlvZq23 || !CQHxUXUgopPbPlvZq23.isMyControlObject()) return
local CQE1ubCDwhJTAxcCSH = CQHxUXUgopPbPlvZq23.getSkillSubState()
switch(CQE1ubCDwhJTAxcCSH)
	{
	case 0:

		break
case 6:
		if(CQjd1dfM9JljHFYG == 1)
		{
			sq_SetMyShake(CQHxUXUgopPbPlvZq23,6,250)
local CQ4JfpsvGiu9a2cKHjjm = CQHxUXUgopPbPlvZq23.getVar("Hermittriplestep").get_obj_vector_size()
for(local CQQsSLkdcMdMuteNX=0; CQQsSLkdcMdMuteNX<CQ4JfpsvGiu9a2cKHjjm; ++CQQsSLkdcMdMuteNX)
			{
				local CQLIY71VsROJs5wXd3I = CQHxUXUgopPbPlvZq23.getVar("Hermittriplestep").get_obj_vector(CQQsSLkdcMdMuteNX)
if(CQLIY71VsROJs5wXd3I)
					sq_SendHitObjectPacketWithNoStuck(CQHxUXUgopPbPlvZq23,CQLIY71VsROJs5wXd3I,0,0,CQLIY71VsROJs5wXd3I.getZPos() + CQLIY71VsROJs5wXd3I.getObjectHeight()/2)
}
		}
		break
}
}

function onChangeSkillEffect_Hermittriplestep(CQlWSYSW2yTOiDw2, CQIvciWxtVHyrzQBlJ, CQ7gCHlCZcnUoHqZYUL4)
{
	if(!CQlWSYSW2yTOiDw2 || CQIvciWxtVHyrzQBlJ != 225) return
local CQr3r53OUWBltrq1i = CQ7gCHlCZcnUoHqZYUL4.readDword()
if(CQr3r53OUWBltrq1i == 0)
	{

	}else if(CQr3r53OUWBltrq1i == 1)
	{
		local CQCL7zowSXr9Q3mVshc = CQlWSYSW2yTOiDw2.getVar("Hermittriplestep").get_vector(1)
CQlWSYSW2yTOiDw2.getVar("Hermittriplestep").set_vector(0,CQCL7zowSXr9Q3mVshc)
}
}

function onAttack_Hermittriplestep(CQcOstv67l5Myym4, CQAtTF8LpspJwTUMG2, CQdbK2LENLgOnFn74mWK, CQyhTTpkxkSyexn38)
{
	if(!CQcOstv67l5Myym4 || CQyhTTpkxkSyexn38)	return false
local CQN4Krb3HpxUU2bdRjM = CQcOstv67l5Myym4.getSkillSubState()
local CQbXmANGf2Llctv6 = "character/swordman/effect/animation/athermittriplestep/hit_effect02.ani"
DarktemplerCreateAniPooledObj(CQcOstv67l5Myym4, CQbXmANGf2Llctv6 , false , true, CQAtTF8LpspJwTUMG2.getXPos(), CQAtTF8LpspJwTUMG2.getYPos()+1, CQAtTF8LpspJwTUMG2.getZPos()+CQAtTF8LpspJwTUMG2.getObjectHeight()/2,1.0)
}

function onEndState_Hermittriplestep(CQFA2MPUrhq9m5tgr3, CQRuohwg3i1fYuW9umf)
{
	if(!CQFA2MPUrhq9m5tgr3) return
local CQUUgQjNbNy3TlrkE2 = CQFA2MPUrhq9m5tgr3.getSkillSubState()
switch(CQUUgQjNbNy3TlrkE2)
	{
	case 3:

		break
case 4:

		break
}
	
}

function HermittriplestepSearchTarget(CQHkFOMuXv8ZRGrfOUpX)
{
	if(IsInterval(CQHkFOMuXv8ZRGrfOUpX, 5))
	{
		local CQj6vVAvkysAlcelB = CQHkFOMuXv8ZRGrfOUpX.getObjectManager()
for(local CQECDRxNiVkog3wh3hX=0; CQECDRxNiVkog3wh3hX<CQj6vVAvkysAlcelB.getCollisionObjectNumber(); ++CQECDRxNiVkog3wh3hX)
		{
			local CQ4Vvm5A8xGQ8ywd = CQj6vVAvkysAlcelB.getCollisionObject(CQECDRxNiVkog3wh3hX)
local CQQDBaHWQWvxh6QTf3 = sq_GetDistanceObject(CQ4Vvm5A8xGQ8ywd, CQHkFOMuXv8ZRGrfOUpX, false)
if(CQ4Vvm5A8xGQ8ywd && CQHkFOMuXv8ZRGrfOUpX.isEnemy(CQ4Vvm5A8xGQ8ywd) && CQQDBaHWQWvxh6QTf3 <= 130 && CQ4Vvm5A8xGQ8ywd.isObjectType(OBJECTTYPE_ACTIVE))
				CQHkFOMuXv8ZRGrfOUpX.getVar("Hermittriplestep").push_obj_vector(CQ4Vvm5A8xGQ8ywd)
}
	}
}

function HermittriplestepSetPos(CQLoWXu9GXCR9FqgUm6W,CQlq8dYXxle34zqxw)
{
	if(CQlq8dYXxle34zqxw > 0)
	{
		local CQIlOb7Iaa4ZdHmktjt = CQLoWXu9GXCR9FqgUm6W.sq_GetInputDirection(0)
if(CQLoWXu9GXCR9FqgUm6W.getDirection() == CQIlOb7Iaa4ZdHmktjt)
		{
			sq_BinaryStartWrite()
sq_BinaryWriteDword(1)
sq_SendChangeSkillEffectPacket(CQLoWXu9GXCR9FqgUm6W, 225)
}

	}
}

function onProc_Hermittriplestep(CQ78zpszRLoS5Wmv)
{
	if(!CQ78zpszRLoS5Wmv) return
local CQrBOKm5WkfoM4izL3 = CQ78zpszRLoS5Wmv.getSkillSubState()
local CQCGl7RKLpPQ6uuUVpAx = sq_GetCurrentAnimation(CQ78zpszRLoS5Wmv)
local CQcELYVQn1zc1luY1 = CQ78zpszRLoS5Wmv.sq_GetCurrentFrameIndex(CQCGl7RKLpPQ6uuUVpAx)
local CQAwQuIkAhKRCGyQ5mg = sq_GetDelaySum(CQCGl7RKLpPQ6uuUVpAx)
local CQdx4Hq26iU32ctn = CQ78zpszRLoS5Wmv.sq_GetStateTimer()
switch(CQrBOKm5WkfoM4izL3)
	{
	case 1:
		HermittriplestepSearchTarget(CQ78zpszRLoS5Wmv)
HermittriplestepSetPos(CQ78zpszRLoS5Wmv,CQcELYVQn1zc1luY1)
local CQydE52poNN6VKtrnj = CQ78zpszRLoS5Wmv.getVar("Hermittriplestep").get_vector(1)
local CQIIYWXof7wGlanil = sq_GetAccel(CQ78zpszRLoS5Wmv.getXPos(), CQydE52poNN6VKtrnj, CQdx4Hq26iU32ctn, CQAwQuIkAhKRCGyQ5mg/2, false)
if(CQ78zpszRLoS5Wmv.isMovablePos(CQIIYWXof7wGlanil, CQ78zpszRLoS5Wmv.getYPos()))
			sq_setCurrentAxisPos(CQ78zpszRLoS5Wmv, 0, CQIIYWXof7wGlanil)
break
case 2:
		HermittriplestepSearchTarget(CQ78zpszRLoS5Wmv)
HermittriplestepSetPos(CQ78zpszRLoS5Wmv,CQcELYVQn1zc1luY1)
local CQydE52poNN6VKtrnj = CQ78zpszRLoS5Wmv.getVar("Hermittriplestep").get_vector(1)
local CQIIYWXof7wGlanil = sq_GetAccel(CQ78zpszRLoS5Wmv.getXPos(), CQydE52poNN6VKtrnj, CQdx4Hq26iU32ctn, CQAwQuIkAhKRCGyQ5mg/2, false)
if(CQ78zpszRLoS5Wmv.isMovablePos(CQIIYWXof7wGlanil, CQ78zpszRLoS5Wmv.getYPos()))
			sq_setCurrentAxisPos(CQ78zpszRLoS5Wmv, 0, CQIIYWXof7wGlanil)
break
case 3:
		HermittriplestepSearchTarget(CQ78zpszRLoS5Wmv)
HermittriplestepSetPos(CQ78zpszRLoS5Wmv,CQcELYVQn1zc1luY1)
local CQydE52poNN6VKtrnj = CQ78zpszRLoS5Wmv.getVar("Hermittriplestep").get_vector(1)
local CQIIYWXof7wGlanil = sq_GetAccel(CQ78zpszRLoS5Wmv.getXPos(), CQydE52poNN6VKtrnj, CQdx4Hq26iU32ctn, CQAwQuIkAhKRCGyQ5mg/2, false)
if(CQ78zpszRLoS5Wmv.isMovablePos(CQIIYWXof7wGlanil, CQ78zpszRLoS5Wmv.getYPos()))
			sq_setCurrentAxisPos(CQ78zpszRLoS5Wmv, 0, CQIIYWXof7wGlanil)
break
case 4:
		local CQydE52poNN6VKtrnj = CQ78zpszRLoS5Wmv.getVar("Hermittriplestep").get_vector(0)
local CQIIYWXof7wGlanil = sq_GetAccel(CQ78zpszRLoS5Wmv.getXPos(), CQydE52poNN6VKtrnj, CQdx4Hq26iU32ctn, 30, false)
if(CQ78zpszRLoS5Wmv.isMovablePos(CQIIYWXof7wGlanil, CQ78zpszRLoS5Wmv.getYPos()))
			sq_setCurrentAxisPos(CQ78zpszRLoS5Wmv, 0, CQIIYWXof7wGlanil)
break
case 6:
		
		break
}
}

function onProcCon_Hermittriplestep(CQa2dfZcZaQVaupr)
{
	if(!CQa2dfZcZaQVaupr) return
local CQ5KAnE8j42FS6ppv2 = CQa2dfZcZaQVaupr.getSkillSubState()
switch(CQ5KAnE8j42FS6ppv2)
	{
	case 0:

		break
}
}