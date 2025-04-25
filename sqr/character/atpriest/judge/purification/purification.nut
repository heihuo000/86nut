
function checkExecutableSkill_purification(obj)
{
	if(!obj)
		return false;

	local isUse = obj.sq_IsUseSkill(SKILL_PURIFICATION);
	if (isUse)
	{
		obj.sq_AddSetStatePacket(STATE_PURIFICATION, STATE_PRIORITY_USER, false);
		return true;
	}
	return false;
}


function checkCommandEnable_purification(obj)
{
	if (!obj)
		return false;
	return true;
}


function onSetState_Purification(obj, state, datas, isResetTimer)
{
	if(!obj)
		return false;
	
	local substate = obj.getVar().get_vector(0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();
	
	if(substate == 0)
	{
		obj.sq_SetCurrentAnimationThrow(1);
		obj.sq_PlaySound("R_PW_PURIFICATION");
		sq_AddDrawOnlyAniFromParent(obj,"character/priest/effect/animation/atpurification/atpurification_step1_usr_light1.ani", 0, 0, -10);
		obj.sq_PlaySound("PURIFICATION_CAST");
	}
	else if(substate == 1)
	{
		obj.sq_SetCurrentAnimationShoot(1);
	}
	
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}


function onProc_Purification(obj)
{
	local substate = obj.getSkillSubState();

	local z = obj.getZPos();
	if(z == 0)
	{
		obj.sq_StopMove();
	}
}


function onKeyFrameFlag_Purification(obj,flagIndex)
{
	if(!obj)
		return false;
		
	local ani = obj.sq_GetCurrentAni();
	if (flagIndex == 1)
	{
	
	}
	obj.sq_ClearKeyFrameFlag(ani);
	return true;
}


function onEndCurrentAni_Purification(obj)
{
	if(!obj)
		return false;
	local substate = obj.getSkillSubState();
	
	if(substate == 0)
	{
		detonatePurification(obj);
		obj.getVar().clear_vector();
		obj.getVar().push_vector(1);
		obj.sq_AddSetStatePacket(STATE_PURIFICATION ,STATE_PRIORITY_USER, true);
	}
	else if(substate == 1)
	{
		local z = obj.getZPos();
		if(z > 0)
		{
			
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 1);
			sq_IntVectorPush(pIntVec, 0);
			sq_IntVectorPush(pIntVec, 1);
			obj.addSetStatePacket(STATE_JUMP, pIntVec, STATE_PRIORITY_FORCE, false, "");
			obj.flushSetStatePacket();
			
		}
		else
		{
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}
	}
}

function detonatePurification(obj)
{
	if (!obj) return;
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if (object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(obj, object))
		{
			try
			{
				object = sq_GetCNRDObjectToActiveObject(object);
				obj = sq_ObjectToSQRCharacter(obj);
			}
			catch(ex)
			{
			}
			if (isBrandOfHeresy(object))
			{
				local PosX = sq_GetXPos(object);
				local PosY = sq_GetYPos(object);
				local PosZ = sq_GetZPos(object);
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(115);
				sq_SendCreatePassiveObjectPacketPos(obj,24240, 0, PosX, PosY, PosZ);
			}
		}
	}
}
