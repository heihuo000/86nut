
function checkExecutableSkill_Groupdance(CQ4UQ2nVjj5gZrgeJL1Z)
{
	if (!CQ4UQ2nVjj5gZrgeJL1Z) return false
local CQQk4TdPSop4MhRmC = CQ4UQ2nVjj5gZrgeJL1Z.sq_IsUseSkill(157)
if (CQQk4TdPSop4MhRmC)
	{
		CQ4UQ2nVjj5gZrgeJL1Z.sq_IntVectClear()
CQ4UQ2nVjj5gZrgeJL1Z.sq_IntVectPush(0)
CQ4UQ2nVjj5gZrgeJL1Z.sq_AddSetStatePacket(157, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Groupdance(CQL7pePe7HRCXAftMsq)
{
	if (!CQL7pePe7HRCXAftMsq) return false
return true
}


function onSetState_Groupdance(CQTVhAw7pgADJkfw, CQsDGMjZBuxpVBdiz, CQ6onhMazBLeKw9Wv5E, CQeqNQATHfmYD1xE)
{
	if(!CQTVhAw7pgADJkfw) return
local CQXQbOe4ftMbIWzurL = CQTVhAw7pgADJkfw.sq_GetVectorData(CQ6onhMazBLeKw9Wv5E, 0)
CQTVhAw7pgADJkfw.setSkillSubState(CQXQbOe4ftMbIWzurL)
switch(CQXQbOe4ftMbIWzurL)
	{
	case 0:
		CQTVhAw7pgADJkfw.sq_StopMove()
BodyCalldaimus(CQTVhAw7pgADJkfw, "groupdance")
CQTVhAw7pgADJkfw.sq_SetCurrentAnimation(424)
CQTVhAw7pgADJkfw.getVar("Groupdance").clear_obj_vector()
local CQxzNV5ErCtjFjzrSTH4 = sq_GetIntData(CQTVhAw7pgADJkfw,157, 0)
local CQP9yRJm3x87OSlpH = CQTVhAw7pgADJkfw.getObjectManager()
if(!CQP9yRJm3x87OSlpH)
			break
CQTVhAw7pgADJkfw.getVar("GroupdanceTarget").clear_obj_vector()
local CQ9NdUihbrsBplTyZ5l = 0
for(local CQtGPaYHXZjGPMTs = 0; CQtGPaYHXZjGPMTs < CQP9yRJm3x87OSlpH.getCollisionObjectNumber(); ++CQtGPaYHXZjGPMTs)
		{
			local CQBExX7ikTFsEekogL = CQP9yRJm3x87OSlpH.getCollisionObject(CQtGPaYHXZjGPMTs)
local CQvwX9KbiavWy2jPTQws = sq_GetDistanceObject(CQTVhAw7pgADJkfw, CQBExX7ikTFsEekogL, false)
if(CQBExX7ikTFsEekogL && CQBExX7ikTFsEekogL.isObjectType(OBJECTTYPE_ACTIVE) && CQTVhAw7pgADJkfw.isEnemy(CQBExX7ikTFsEekogL) && CQBExX7ikTFsEekogL.isInDamagableState(CQTVhAw7pgADJkfw))
			{
				if(CQvwX9KbiavWy2jPTQws < CQxzNV5ErCtjFjzrSTH4 && CQ9NdUihbrsBplTyZ5l < 5)
				{
					CQTVhAw7pgADJkfw.getVar("GroupdanceTarget").push_obj_vector(CQBExX7ikTFsEekogL)
local CQDxebmM8KCbaPjaY = sq_GetDistancePos(CQBExX7ikTFsEekogL.getXPos(), CQBExX7ikTFsEekogL.getDirection(), 100)
local CQ1dXpRSQjwkukhDUTV = CQBExX7ikTFsEekogL.getYPos()
local CQU1wKVtFo37eDgOaa = "passiveobject/changqing_atswordman/animation/atgroupdance/appear_dance_fog.ani"
DarktemplerCreateAniPooledObj(CQTVhAw7pgADJkfw, CQU1wKVtFo37eDgOaa , true , true, CQDxebmM8KCbaPjaY, CQ1dXpRSQjwkukhDUTV, 0,1.0)
CQTVhAw7pgADJkfw.sq_StartWrite()
CQTVhAw7pgADJkfw.sq_WriteDword(157)
CQTVhAw7pgADJkfw.sq_WriteDword(0)
CQTVhAw7pgADJkfw.sq_WriteDword(CQTVhAw7pgADJkfw.sq_GetBonusRateWithPassive(157, -1, CQ9NdUihbrsBplTyZ5l, getATSwordmanBonus(CQTVhAw7pgADJkfw,1.0,157)))
CQTVhAw7pgADJkfw.sq_WriteDword(sq_GetOppositeDirection(CQBExX7ikTFsEekogL.getDirection()))
CQTVhAw7pgADJkfw.sq_WriteDword(CQ9NdUihbrsBplTyZ5l)
sq_SendCreatePassiveObjectPacketPos(CQTVhAw7pgADJkfw, 24383, 0, CQDxebmM8KCbaPjaY, CQ1dXpRSQjwkukhDUTV, 0)
CQ9NdUihbrsBplTyZ5l++
}
			}
		}
		
		local CQHJ57Idx1iBiwgHP5nY = CQTVhAw7pgADJkfw.getVar("GroupdanceTarget").get_obj_vector_size()
if(CQHJ57Idx1iBiwgHP5nY < 1 || CQHJ57Idx1iBiwgHP5nY > 4)
			break
if(CQ9NdUihbrsBplTyZ5l < 5)
		{
			for(local CQtGPaYHXZjGPMTs=0; CQtGPaYHXZjGPMTs<5-CQ9NdUihbrsBplTyZ5l; ++CQtGPaYHXZjGPMTs)
			{
				local CQBExX7ikTFsEekogL = CQTVhAw7pgADJkfw.getVar("GroupdanceTarget").get_obj_vector(2%CQHJ57Idx1iBiwgHP5nY)
if(CQBExX7ikTFsEekogL)
				{
					local CQDxebmM8KCbaPjaY = sq_GetDistancePos(CQBExX7ikTFsEekogL.getXPos(), CQBExX7ikTFsEekogL.getDirection(), 100)
local CQ1dXpRSQjwkukhDUTV = CQBExX7ikTFsEekogL.getYPos()
local CQU1wKVtFo37eDgOaa = "passiveobject/changqing_atswordman/animation/atgroupdance/appear_dance_fog.ani"
DarktemplerCreateAniPooledObj(CQTVhAw7pgADJkfw, CQU1wKVtFo37eDgOaa , true , true, CQDxebmM8KCbaPjaY, CQ1dXpRSQjwkukhDUTV, 0,1.0)
CQTVhAw7pgADJkfw.sq_StartWrite()
CQTVhAw7pgADJkfw.sq_WriteDword(157)
CQTVhAw7pgADJkfw.sq_WriteDword(0)
CQTVhAw7pgADJkfw.sq_WriteDword(CQTVhAw7pgADJkfw.sq_GetBonusRateWithPassive(157, -1, CQ9NdUihbrsBplTyZ5l + CQtGPaYHXZjGPMTs, getATSwordmanBonus(CQTVhAw7pgADJkfw,1.0,157)))
CQTVhAw7pgADJkfw.sq_WriteDword(sq_GetOppositeDirection(CQBExX7ikTFsEekogL.getDirection()))
CQTVhAw7pgADJkfw.sq_WriteDword(CQ9NdUihbrsBplTyZ5l + CQtGPaYHXZjGPMTs)
sq_SendCreatePassiveObjectPacketPos(CQTVhAw7pgADJkfw, 24383, 0, CQDxebmM8KCbaPjaY, CQ1dXpRSQjwkukhDUTV, 0)
}
			}
		}
		
		break
}
	CQTVhAw7pgADJkfw.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Groupdance(CQlKUt4wACNllFxDx)
{
	if(!CQlKUt4wACNllFxDx) return
local CQII1DGT6zWdbezZy4e = CQlKUt4wACNllFxDx.getSkillSubState()
switch(CQII1DGT6zWdbezZy4e)
	{
	case 0:
		CQlKUt4wACNllFxDx.sq_IntVectClear()
CQlKUt4wACNllFxDx.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Groupdance(CQ7Ou2yKor61z2lH, CQrtfT9EBZaKhtlVOK, CQCbSeZmzThPxkTLDTeD, CQchYAa2GEDujDTM2)
{
	if(!CQ7Ou2yKor61z2lH)	return false
local CQA4VMUGdKcmflkC65B = CQ7Ou2yKor61z2lH.getSkillSubState()
Calldaimus_onAttack(CQ7Ou2yKor61z2lH,CQrtfT9EBZaKhtlVOK, CQCbSeZmzThPxkTLDTeD, CQchYAa2GEDujDTM2)
switch(CQA4VMUGdKcmflkC65B)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Groupdance(CQdXchfisjZzTMj3, CQyACQCR2oQdRrUNhL)
{
	if(!CQdXchfisjZzTMj3) return
local CQNurIeNvM2173n6wldn = CQdXchfisjZzTMj3.getSkillSubState()
switch(CQNurIeNvM2173n6wldn)
	{
	case 3:

		break
case 4:

		break
}
}

function onEndState_Groupdance(CQbU7VkSZguKgAb2t, CQFkIR1vju9P8Tb9o6o)
{
	if(!CQbU7VkSZguKgAb2t) return
local CQ26TUS9uBOu3Fv5sa = CQbU7VkSZguKgAb2t.getSkillSubState()
switch(CQ26TUS9uBOu3Fv5sa)
	{
	case 3:

		break
case 4:

		break
}

}

function onProc_Groupdance(CQ9pMZE8x6gztUhdA)
{
	if(!CQ9pMZE8x6gztUhdA) return
local CQIhzQurxjySImRt = CQ9pMZE8x6gztUhdA.getSkillSubState()
}

function onKeyFrameFlag_Groupdance(CQkiKxKzFCbdNWc35LW, CQamqyoXzzVRZ4xd)
{
	if (!CQkiKxKzFCbdNWc35LW) return false
switch(CQamqyoXzzVRZ4xd)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Groupdance(CQ5T2FvIEIr4MSx6bs)
{
	if(!CQ5T2FvIEIr4MSx6bs) return
local CQw7o38QfZ5XXlzgq5OI = CQ5T2FvIEIr4MSx6bs.getSkillSubState()
switch(CQw7o38QfZ5XXlzgq5OI)
	{
	case 0:

		break
}
}