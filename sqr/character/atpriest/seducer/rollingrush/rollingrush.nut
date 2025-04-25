
function checkExecutableSkill_Rollingrush(obj)
{
	if (!obj) return false;
	
	local isUse = obj.sq_IsUseSkill(SKILL_ROLLINGRUSH);
	local state = obj.sq_GetState();	
	if (isUse)
	{
	if (state == STATE_JUMP)
	{
		obj.getVar("zpos").clear_vector();
		obj.getVar("zpos").push_vector( 1 );
		
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 1);
		obj.addSetStatePacket(STATE_ROLLINGRUSH , pIntVec, STATE_PRIORITY_FORCE, false, "");
	}else {
		obj.getVar("zpos").clear_vector();
		obj.getVar("zpos").push_vector( 0 );
		
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_ROLLINGRUSH , pIntVec, STATE_PRIORITY_FORCE, false, "");
	}
	}
}

function checkCommandEnable_Rollingrush(obj)
{

	return true;
}



function onSetState_Rollingrush(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	local state = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(state);
	obj.sq_StopMove();
	switch(state)
	{
	case 0:
	if (Seducer(obj))
	{
		local ani = obj.getVar().GetAnimationMap("Seducer121", "Character/Priest/Seducer/ATAnimation/atrollingrush_d_ready_body.ani");
		obj.setCurrentAnimation(ani);
	}
	else
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATROLLINGRUSH_READY_BODY);//
	}

	break;
	case 1:
	obj.sq_PlaySound("ROLLINGRUSH");
	creatrollingrush_start_dust01(obj, 0, 0, 0)
	if (Seducer(obj))
	{
		local ani = obj.getVar().GetAnimationMap("Seducer122", "Character/Priest/Seducer/ATAnimation/atrollingrush_d_hit_01_body.ani");
		obj.setCurrentAnimation(ani);
		
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_ROLLONGRUSH_FRONT);
		local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_ROLLINGRUSH, -1, 0, 1.0); 
		obj.sq_SetCurrentAttackBonusRate(attackBonusRate); 
	}
	else
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATROLLINGRUSH_HIT_01_BODY);//
		
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_ROLLONGRUSH);
		local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_ROLLINGRUSH, -1, 0, 1.0); 
		obj.sq_SetCurrentAttackBonusRate(attackBonusRate); 
	}
	
	if(obj.getVar("zpos").get_vector(0) == 1 && obj.getZPos() > 75)
	{
		obj.getVar("pos").clear_vector();
		obj.getVar("pos").push_vector( obj.getXPos() );
		obj.getVar("pos").push_vector( obj.getZPos() );
		obj.getVar("pos").push_vector( 100 );
		obj.getVar("pos").push_vector( obj.getZPos()/-1 );
	
	}else{
		obj.getVar("pos").clear_vector();
		obj.getVar("pos").push_vector( obj.getXPos() );
		obj.getVar("pos").push_vector( obj.getZPos() );
		obj.getVar("pos").push_vector( 100 );
		obj.getVar("pos").push_vector( 50 );
		obj.sq_ZStop();//啮踝萧啮缈啮踝萧啮?
	}	

	break;
	case 2:
	if (Seducer(obj))
	{
		local ani = obj.getVar().GetAnimationMap("Seducer123", "Character/Priest/Seducer/ATAnimation/atrollingrush_d_hit_02_body.ani");
		obj.setCurrentAnimation(ani);
		
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_ROLLONGRUSH_FRONT);
		local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_ROLLINGRUSH, -1, 0, 1.0); 
		obj.sq_SetCurrentAttackBonusRate(attackBonusRate); 
	}
	else
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATROLLINGRUSH_HIT_02_BODY);
		
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_ROLLONGRUSH);
		local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_ROLLINGRUSH, -1, 0, 1.0); 
		obj.sq_SetCurrentAttackBonusRate(attackBonusRate); 
	}
	if(obj.getVar("zpos").get_vector(0) == 1 && obj.getZPos() > 75)
	{
		obj.getVar("pos").clear_vector();
		obj.getVar("pos").push_vector( obj.getXPos() );
		obj.getVar("pos").push_vector( obj.getZPos() );
		obj.getVar("pos").push_vector( 100 );
		obj.getVar("pos").push_vector( obj.getZPos()/-1 );
	}else{
		obj.getVar("pos").clear_vector();
		obj.getVar("pos").push_vector( obj.getXPos() );
		obj.getVar("pos").push_vector( obj.getZPos() );
		obj.getVar("pos").push_vector( 100 );
		obj.getVar("pos").push_vector( 0 );
		obj.sq_ZStop();//啮踝萧啮缈啮踝萧啮?
	}			

	break;
	case 3:

	if (Seducer(obj))
	{
		local ani = obj.getVar().GetAnimationMap("Seducer124", "Character/Priest/Seducer/ATAnimation/atrollingrush_d_landing_body.ani");
		obj.setCurrentAnimation(ani);
		
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_ROLLONGRUSH_FRONT);
		local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_ROLLINGRUSH, -1, 0, 1.0); 
		obj.sq_SetCurrentAttackBonusRate(attackBonusRate); 
	}
	else
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATROLLINGRUSH_LANDING_BODY);//
		
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_ROLLONGRUSH);
		local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_ROLLINGRUSH, -1, 0, 1.0); 
		obj.sq_SetCurrentAttackBonusRate(attackBonusRate); 
	}
		obj.getVar("pos").clear_vector();
		obj.getVar("pos").push_vector( obj.getXPos() );
		obj.getVar("pos").push_vector( obj.getZPos() );
		obj.getVar("pos").push_vector( 100 );
		obj.getVar("pos").push_vector( 0 );

	break;
	case 4:
	if (Seducer(obj))
	{
		local ani = obj.getVar().GetAnimationMap("Seducer125", "Character/Priest/Seducer/ATAnimation/atrollingrush_d_finish_body.ani");
		obj.setCurrentAnimation(ani);
		
		creatrollingrush_finish_background(obj)
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_ROLLONGRUSHFINSH_FRONT);
		local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_ROLLINGRUSH, -1, 1, 1.0); 
		obj.sq_SetCurrentAttackBonusRate(attackBonusRate); 
	}
	else
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATROLLINGRUSH_FINISH_BODY);//
		
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_ROLLONGRUSHFINSH);
		local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_ROLLINGRUSH, -1, 1, 1.0); 
		obj.sq_SetCurrentAttackBonusRate(attackBonusRate); 
	}
		obj.getVar("pos").clear_vector();
		obj.getVar("pos").push_vector( obj.getXPos() );
		obj.getVar("pos").push_vector( 90 );
		creatrollingrush_finish_dust(obj, 0, 0, 0)
	break;
	case 5:
	if (Seducer(obj))
	{
		local ani = obj.getVar().GetAnimationMap("Seducer127", "Character/Priest/Seducer/ATAnimation/atrollingrush_d_spin_end_body.ani");
		obj.setCurrentAnimation(ani);
	}
	else
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATROLLINGRUSH_SPIN_END_BODY);//
	}
	break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}


function onProc_Rollingrush(obj)
{
    if(!obj) return;

    local state = obj.getSkillSubState();
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	switch(state)
	{
	case 1:
		local pAni = obj.sq_GetCurrentAni();
		local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);


		local startFrameIndex = 0;
		local endFrameIndex = 2;

		local currentT = sq_GetCurrentTime(pAni);

		if (frmIndex < startFrameIndex)
		{


		}else if (frmIndex > startFrameIndex && frmIndex <= endFrameIndex)
		{
			local startX = obj.getVar("pos").get_vector(0);
			local startZ = obj.getVar("pos").get_vector(1);

			local maxD = obj.getVar("pos").get_vector(2);
			local mazD = obj.getVar("pos").get_vector(3);

			currentT = currentT - pAni.getDelaySum(0,startFrameIndex);
			local maxT = pAni.getDelaySum(startFrameIndex,endFrameIndex);
			if (currentT < maxT)
			{
				local v = sq_GetAccel(0, maxD, currentT,maxT, true);
				local dstX = sq_GetDistancePos(startX, obj.getDirection(), v);
				local dstZ = startZ + sq_GetAccel(0, mazD, currentT,maxT, true);
				if( obj.isMovablePos(dstX, obj.getYPos() ))
				{
					sq_setCurrentAxisPos(obj, 0, dstX);
					sq_setCurrentAxisPos(obj, 2, dstZ);
				}

			}
		}
	break;	
	case 2:
		local pAni = obj.sq_GetCurrentAni();
		local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);


		local startFrameIndex = 0;
		local endFrameIndex = 2;

		local currentT = sq_GetCurrentTime(pAni);

		if (frmIndex < startFrameIndex)
		{
		}else if (frmIndex > startFrameIndex && frmIndex <= endFrameIndex)
		{
			local startX = obj.getVar("pos").get_vector(0);
			local startZ = obj.getVar("pos").get_vector(1);

			local maxD = obj.getVar("pos").get_vector(2);
			local mazD = obj.getVar("pos").get_vector(3);

			currentT = currentT - pAni.getDelaySum(0,startFrameIndex);
			local maxT = pAni.getDelaySum(startFrameIndex,endFrameIndex);
			if (currentT < maxT)
			{
				local v = sq_GetAccel(0, maxD, currentT,maxT, true);
				local dstX = sq_GetDistancePos(startX, obj.getDirection(), v);
				local dstZ = startZ + sq_GetAccel(0, mazD, currentT,maxT, true);
				if( obj.isMovablePos(dstX, obj.getYPos() ))
				{
					sq_setCurrentAxisPos(obj, 0, dstX);
					sq_setCurrentAxisPos(obj, 2, dstZ);
				}

			}
		}
	break;	
	case 3:
		local pAni = obj.sq_GetCurrentAni();
		local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);


		local startFrameIndex = 0;
		local endFrameIndex = 3;

		local currentT = sq_GetCurrentTime(pAni);

		if (frmIndex < startFrameIndex)
		{
		}else if (frmIndex > startFrameIndex && frmIndex <= endFrameIndex)
		{
			local startX = obj.getVar("pos").get_vector(0);
			local startZ = obj.getVar("pos").get_vector(1);

			local maxD = obj.getVar("pos").get_vector(2);
			local mazD = obj.getVar("pos").get_vector(3);

			currentT = currentT - pAni.getDelaySum(0,startFrameIndex);
			local maxT = pAni.getDelaySum(startFrameIndex,endFrameIndex);
			if (currentT < maxT)
			{
				local v = sq_GetAccel(0, maxD, currentT,maxT, true);
				local dstX = sq_GetDistancePos(startX, obj.getDirection(), v);
				local dstZ = sq_GetAccel(startZ, mazD, currentT,maxT, true);
				if( obj.isMovablePos(dstX, obj.getYPos() ))
				{
					sq_setCurrentAxisPos(obj, 0, dstX);
					sq_setCurrentAxisPos(obj, 2, dstZ);
				}

			}
		}
	break;
	case 4:
		local pAni = obj.sq_GetCurrentAni();
		local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);


		local startFrameIndex = 0;
		local endFrameIndex = 3;

		local currentT = sq_GetCurrentTime(pAni);

		if (frmIndex < startFrameIndex)
		{
		}else if (frmIndex > startFrameIndex && frmIndex <= endFrameIndex)
		{
			local startX = obj.getVar("pos").get_vector(0);

			local maxD = obj.getVar("pos").get_vector(1);

			currentT = currentT - pAni.getDelaySum(0,startFrameIndex);
			local maxT = pAni.getDelaySum(startFrameIndex,endFrameIndex);
			if (currentT < maxT)
			{
				local v = sq_GetAccel(0, maxD, currentT,maxT, true);
				local dstX = sq_GetDistancePos(startX, obj.getDirection(), v);
				if( obj.isMovablePos(dstX, obj.getYPos() ))
				{
					sq_setCurrentAxisPos(obj, 0, dstX);
				}

			}
		}
	break;	
	}
}

	

function onEndCurrentAni_Rollingrush(obj)
{
	if(!obj) return;
	local state = obj.getSkillSubState(); 
	switch(state)
	{
	case 0:
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 1);
		obj.addSetStatePacket(STATE_ROLLINGRUSH , pIntVec, STATE_PRIORITY_FORCE, false, "");	

	break;
	case 1:
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 2);
		obj.addSetStatePacket(STATE_ROLLINGRUSH , pIntVec, STATE_PRIORITY_FORCE, false, "");	
	break;
	case 2:
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 3);
		obj.addSetStatePacket(STATE_ROLLINGRUSH , pIntVec, STATE_PRIORITY_FORCE, false, "");	
	break;
	case 3:	
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 4);
		obj.addSetStatePacket(STATE_ROLLINGRUSH , pIntVec, STATE_PRIORITY_FORCE, false, "");	
	break;
	case 4:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
	break;
	case 5:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
	break;
	}
}

function onKeyFrameFlag_Rollingrush(obj,flagIndex)//啮踝萧啮踝萧弮啮踝萧啮踝萧啮踝萧啮踝萧
{
	if(!obj) return;
	local state = obj.getSkillSubState();//啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧sub state啮踝萧啮踝萧
	switch(state)
	{
	case 4:
		if(flagIndex == 1)
		{
		if (Seducer(obj))
		{
			sq_SetMyShake(obj,4,100);
			sq_flashScreen(obj,0,10,100,38, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
			obj.sq_PlaySound("BEHEAD");
		}
		else
		{
			sq_SetMyShake(obj, 1, 50);
			sq_flashScreen(obj,0,10,100,38, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		}
		}
	break;
	}
	return true;
}

function onAttack_Rollingrush(obj, damager, boundingBox, isStuck)
{
	if(!obj)
		return false;
	local state = obj.getSkillSubState();//啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧sub state啮踝萧啮踝萧
	switch(state)
	{
	case 1:
	if(damager && damager.isObjectType(OBJECTTYPE_ACTIVE) && sq_IsHoldable(obj,damager) && sq_IsGrabable(obj,damager) && !sq_IsFixture(damager))
	{

			createAttackCutExp(obj,damager);
			local dstX =sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 80);
			//damager.setCurrentPos(dstX,damager.getYPos(),damager.getZPos());
			
			 sq_MoveToNearMovablePos(damager, dstX, damager.getYPos(), damager.getZPos(), damager.getXPos(), damager.getYPos(), damager.getZPos(), 80, -1, 5);
	}
	break;
	case 2:
	if(damager && damager.isObjectType(OBJECTTYPE_ACTIVE) && sq_IsHoldable(obj,damager) && sq_IsGrabable(obj,damager) && !sq_IsFixture(damager))
	{
			createAttackCutExp(obj,damager);
			local dstX =sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 80);
			//damager.setCurrentPos(dstX,damager.getYPos(),damager.getZPos());
			
			sq_MoveToNearMovablePos(damager, dstX, damager.getYPos(), damager.getZPos(), damager.getXPos(), damager.getYPos(), damager.getZPos(), 80, -1, 5);
	}
	break;
	case 3:
	if(damager && damager.isObjectType(OBJECTTYPE_ACTIVE) && sq_IsHoldable(obj,damager) && sq_IsGrabable(obj,damager) && !sq_IsFixture(damager))
	{
			createAttackCutExp(obj,damager);
			local dstX =sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 80);
			//damager.setCurrentPos(dstX,damager.getYPos(),damager.getZPos());
			
			sq_MoveToNearMovablePos(damager, dstX, damager.getYPos(), damager.getZPos(), damager.getXPos(), damager.getYPos(), damager.getZPos(), 80, -1, 5);
	}
	break;
	}

}


function creatrollingrush_start_dust01(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atrollingrush/atrollingrush_start_dust01.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	
	sq_AddObject(obj,pooledObj,2,false);	

}

function creatrollingrush_finish_dust(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atrollingrush/atrollingrush_finish_dust.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	
	sq_AddObject(obj,pooledObj,2,false);	

}

function creatrollingrush_finish_background(obj)
{
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atrollingrush/atrollingrush_finish_background.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local objectManager = obj.getObjectManager();
	local xPos = objectManager.getFieldXPos(400, ENUM_DRAWLAYER_NORMAL);
	local yPos = objectManager.getFieldYPos(300, 0, ENUM_DRAWLAYER_NORMAL);
	pooledObj.setCurrentPos(xPos ,yPos, 0);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 0, false);
}

