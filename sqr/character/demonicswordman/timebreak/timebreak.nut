

function checkExecutableSkill_TimeBreak(obj)  
{
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_TIMEBREAK);

	if (isUseSkill) 
    {
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(0);
		obj.sq_AddSetStatePacket(STATE_TIMEBREAK, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_TimeBreak(obj)
{
	return true;
}

function findAllMonster_TimeBreak(obj)
{
	local state = obj.getVar("state").get_vector(0);
    
	local objectManager = obj.getObjectManager();
	
	if (state == 1)
    {
		for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
		{
			local object = objectManager.getCollisionObject(i);
		
			if (object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_ACTIVE) )
			{
				local activeObj = sq_GetCNRDObjectToActiveObject(object);
				
				obj.getVar("dama").push_obj_vector(activeObj);
			}
		}
	}
	if (state == 2)
    {
		for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)	
		{
			local object = objectManager.getCollisionObject(i);	
		
			if (object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_ACTIVE) )	
			{
				local activeObj = sq_GetCNRDObjectToActiveObject(object);	
			
				obj.getVar("dama").push_obj_vector(activeObj);	
			}
		}
	}
}

function sendAllMonsterOneHit_TimeBreak(obj, id)	
{
	local state = obj.getVar("state").get_vector(0); 
    
	local var = obj.getVar("dama");	
	
	local objectsSize = var.get_obj_vector_size();	
    
	if (state == 1)
	{
		if (objectsSize > 0)
		{
			for(local i=0; i<objectsSize; ++i)
			{
				local damager = var.get_obj_vector(i);	
			
				sq_SendHitObjectPacket(obj, damager, 0, 0, 0 + damager.getObjectHeight()/2);	
			}
		}
	}
	if (state == 2)
	{
		if (objectsSize > 0)
		{
			for(local i=0; i<objectsSize; ++i)
			{
				local damager = var.get_obj_vector(i);	
			
				sq_SendHitObjectPacket(obj, damager, 0, 0, 0 + damager.getObjectHeight()/2);	
				
				createEndBoom_TIMEBREAK(obj, damager);
			}
		}
	}
}

function releaseAllMonster_TimeBreak(obj)	
{
	local var = obj.getVar("dama");	
	
	local objectsSize = var.get_obj_vector_size();	
	
	if (objectsSize > 0)
	{
		for(local i=0;i<objectsSize;++i)
		{
			local damager = var.get_obj_vector(i);	
			
			if(damager)
			{
				CNSquirrelAppendage.sq_RemoveAppendage(damager, "character/demonicswordman/timebreak/ap_timebreak.nut");	
			}
		}
	}
}

function controlAllMonster_TimeBreak(obj)	
{
	local var = obj.getVar("dama");	
    
	local objectsSize = var.get_obj_vector_size();	
    
	if (objectsSize > 0)
	{
		for(local i=0;i<objectsSize;++i)
		{
			local damager = var.get_obj_vector(i);	

			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, SKILL_TIMEBREAK, false, "character/demonicswordman/timebreak/ap_timebreak.nut", true);				 
			sq_HoldAndDelayDie(damager, obj, true, true, true, 0, 300, ENUM_DIRECTION_NEUTRAL , masterAppendage);	
			
			createAttackhit_TIMEBREAK(obj, damager); 
		}
	}
}

function createReadyGround_TIMEBREAK(obj,x,y,z)	
{
	local ani = sq_CreateAnimation("","character/swordman/effect/animation/timebreak_ds/timebreak_ready_ground.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), x);
	pooledObj.setCurrentPos(posX ,obj.getYPos() + y,obj.getZPos() + z );
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}

function createEndBoom_TIMEBREAK(obj,damager)	
{
	local ani = sq_CreateAnimation("","character/swordman/effect/animation/timebreak_ds/timebreak_boom_hitnormal.ani"); 
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentPos(damager.getXPos() ,damager.getYPos() + 1,damager.getZPos() + damager.getObjectHeight()/2 );
	pooledObj.setCurrentDirection(damager.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}

function createAttackhit_TIMEBREAK(obj,damager)	
{
	local ani = sq_CreateAnimation("","character/swordman/effect/animation/timebreak_ds/timebreak_hit_slashb.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentPos(damager.getXPos() ,damager.getYPos() + 1,damager.getZPos() + damager.getObjectHeight()/2);
	pooledObj.setCurrentDirection(damager.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}

function onSetState_TimeBreak(obj, state, datas, isResetTimer)
{
	local state = obj.getVar("state").get_vector(0);

	obj.sq_StopMove();
	
    if (state == 0)
    {
        obj.getVar("dama").clear_obj_vector(); 
        obj.sq_SetShake(obj, 1, 1020);
        obj.sq_SetCurrentAnimation(CUSTOM_ANI_TIMEBREAK_READY_BODY);
        createReadyGround_TIMEBREAK(obj,0,-1,0);
    }
	else if (state == 1)
    {
        findAllMonster_TimeBreak(obj);		
        controlAllMonster_TimeBreak(obj);	

        obj.sq_SetCurrentAnimation(CUSTOM_ANI_TIMEBREAK_ATTACK_BODY);
        obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_TIMEBREAKATTACK);
		
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_TIMEBREAK , STATE_TIMEBREAK, 0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);				

		local ani = obj.sq_GetCurrentAni();
		local delay = ani.getDelaySum(false);
        local hitCount = obj.sq_GetIntData(SKILL_TIMEBREAK, 0);		 
        obj.setTimeEvent(0, delay / hitCount, 0, true);				 
        sq_flashScreen(obj, 0, 1500, 0, 127, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
	}
	else if (state == 2)
    {
        obj.sq_SetCurrentAnimation(CUSTOM_ANI_TIMEBREAK_END_BODY);
        obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_TIMEBREAKFINISH);
		
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_TIMEBREAK , STATE_TIMEBREAK, 1, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
	}
}

function onTimeEvent_TimeBreak(obj, timeEventIndex, timeEventCount)	
{
	local state = obj.getVar("state").get_vector(0); 
    
	if (state == 1)
	{
		if (timeEventIndex == 0)
		{
			sendAllMonsterOneHit_TimeBreak(obj,0); 
		}
	}
}

function onProc_TimeBreak(obj)
{
    local state = obj.getVar("state").get_vector(0);
	
	local pAni = obj.sq_GetCurrentAni();
	
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni); 
	
    if (state == 0)
    {
        if (frmIndex == 0)
        {

    
        }
    }else if (state == 1)
    {
        if (frmIndex == 0)
        {

          
        }
    }else if (state == 2)
    {
        if (frmIndex == 0)
        {
            sq_flashScreen(obj,0,0,300,127, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
        }
		else if (frmIndex == 5)
        {
            obj.sq_SetShake(obj, 5, 300);
        }
		else if (frmIndex == 4)
        {
            sq_flashScreen(obj,0,60,60,204, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
        }
    }
}

function onEndCurrentAni_TimeBreak(obj)
{
    local state = obj.getVar("state").get_vector(0);
    
	if (state == 0)
    {
		obj.getVar("state").set_vector(0,1);
        obj.sq_AddSetStatePacket(STATE_TIMEBREAK, STATE_PRIORITY_USER, true);
    }
	else if (state == 1)
    {
        obj.getVar("state").set_vector(0,2);	
        obj.sq_AddSetStatePacket(STATE_TIMEBREAK, STATE_PRIORITY_USER, true);
    }
	else if (state == 2)
    {
        obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);	 
    }
}

function onKeyFrameFlag_TimeBreak(obj,flagIndex)
{
	local state = obj.getVar("state").get_vector(0);
	
	if (state == 2)
	{
		if (flagIndex == 1)
		{
			sendAllMonsterOneHit_TimeBreak(obj, 1);
			releaseAllMonster_TimeBreak(obj);
        }
	}
	return true;
}
