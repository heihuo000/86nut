
function checkExecutableSkill_CardinalExecution(obj)
{
	if (!obj) return false;
	
	local isUse = obj.sq_IsUseSkill(SKILL_CARDINALEXECUTION);
	
	if (isUse)
	{

        obj.getVar("CardinalExecution_skill").push_vector(1);
		//dofile("demoniclancer/cs.nut");
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_CARDINALEXECUTION , pIntVec, STATE_PRIORITY_FORCE, false, "");
	}
}

function checkCommandEnable_CardinalExecution(obj)
{

	return true;
}



function onSetState_CardinalExecution(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	obj.sq_StopMove();
	local state = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(state);
	switch(state)
	{
	case 0:
	obj.getVar("damaCardinalExecution").clear_obj_vector();
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATCARDINALEXECUTIONREADY_BODY);
	if (!Seducer(obj))
	{
	CreatdemonizationfrontEffect(obj, 0, 1, 0);
	CreatdemonizationBackEffect(obj, 0, 1, 0);
	}
	CreateCardinalExecution_ReadyfrontEffect(obj, 0, 1, 0);
	break;
	case 1:
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATCARDINALEXECUTIONATTACK1_BODY);
	
	obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_CARDINALEXECUTIONATTACK);
	local damage = obj.sq_GetBonusRateWithPassive(SKILL_CARDINALEXECUTION, -1, 0, 1.0);
	obj.sq_SetCurrentAttackBonusRate(damage);
	
	CreateCardinalExecution_Attack1FrontEffect(obj, 0, 1, 0);
	break;
	
	case 2:
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATCARDINALEXECUTIONATTACK2_BODY);
	obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_CARDINALEXECUTIONATTACK);
	local damage = obj.sq_GetBonusRateWithPassive(SKILL_CARDINALEXECUTION, -1, 0, 1.0);
	obj.sq_SetCurrentAttackBonusRate(damage);
	
	CreateCardinalExecution_Attack2FrontEffect(obj, 0, 1, 0);
	break;
	case 3:
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATCARDINALEXECUTIONATTACK3_BODY);
	obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_CARDINALEXECUTIONATTACK);
	local damage = obj.sq_GetBonusRateWithPassive(SKILL_CARDINALEXECUTION, -1, 0, 1.0);
	obj.sq_SetCurrentAttackBonusRate(damage);
	
	CreateCardinalExecution_Attack3FrontEffect(obj, 0, 1, 0);
	break;
	case 4:
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATCARDINALEXECUTIONATTACK4_BODY);
	obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_CARDINALEXECUTIONATTACK);
	local damage = obj.sq_GetBonusRateWithPassive(SKILL_CARDINALEXECUTION, -1, 0, 1.0);
	obj.sq_SetCurrentAttackBonusRate(damage);
	
	CreateCardinalExecution_Attack4FrontEffect(obj, 0, 1, 0);
	break;
	case 5:
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATCARDINALEXECUTIONATTACK5_BODY);
	obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_CARDINALEXECUTIONATTACK);
	local damage = obj.sq_GetBonusRateWithPassive(SKILL_CARDINALEXECUTION, -1, 0, 1.0);
	obj.sq_SetCurrentAttackBonusRate(damage);
	
	obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_HANDAWAKENTOSIN);
	local damage = obj.sq_GetBonusRateWithPassive(SKILL_HANDAWAKENTOSIN, -1, 0, 1.0);
	obj.sq_SetCurrentAttackBonusRate(damage);
	
	CreateCardinalExecution_Attack5FrontEffect(obj, 0, 1, 0);
	break;
	
	case 6:
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATCARDINALEXECUTIONATTACK6_BODY);
	obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_CARDINALEXECUTIONATTACK);
	local damage = obj.sq_GetBonusRateWithPassive(SKILL_CARDINALEXECUTION, -1, 0, 1.0);
	obj.sq_SetCurrentAttackBonusRate(damage);
	
	CreateCardinalExecution_Attack6FrontEffect(obj, 0, 1, 0);
	CreateCardinalExecution_Attack6BackEffect(obj, 0, -1, 0);
	break;
	case 7:
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATCARDINALEXECUTIONATTACK7_BODY);
	obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_CARDINALEXECUTIONFINISH);
	local damage = obj.sq_GetBonusRateWithPassive(SKILL_CARDINALEXECUTION, -1, 1, 1.0);
	obj.sq_SetCurrentAttackBonusRate(damage);
	
	CreateCardinalExecution_Attack7FrontEffect(obj, 0, 1, 0);
	CreateCardinalExecution_Attack7BackEffect(obj, 0, -1, 0);
	break;
	case 8:
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATCARDINALEXECUTIONEND_BODY);
	if (!Seducer(obj))
	{
	CreatdemonizationfrontEffect(obj, 0, 1, 0);
	CreatdemonizationBackEffect(obj, 0, 1, 0);
	}
	break;
    }
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
	SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onEndCurrentAni_CardinalExecution(obj)
{
	if(!obj) return;
	local state = obj.getSkillSubState(); 

	switch(state)
	{
	case 0:
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 1);
		
		obj.addSetStatePacket(STATE_CARDINALEXECUTION , pIntVec, STATE_PRIORITY_FORCE, false, "");	

	break;
	case 1:

		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 2);
		
		obj.addSetStatePacket(STATE_CARDINALEXECUTION , pIntVec, STATE_PRIORITY_FORCE, false, "");	

	break;
	case 2:

		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 3);
		
		obj.addSetStatePacket(STATE_CARDINALEXECUTION , pIntVec, STATE_PRIORITY_FORCE, false, "");	

	break;
	case 3:
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 4);
		
		obj.addSetStatePacket(STATE_CARDINALEXECUTION , pIntVec, STATE_PRIORITY_FORCE, false, "");	

	break;
	case 4:

		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 5);
		
		obj.addSetStatePacket(STATE_CARDINALEXECUTION , pIntVec, STATE_PRIORITY_FORCE, false, "");	

	break;
	case 5:

		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 6);
		
		obj.addSetStatePacket(STATE_CARDINALEXECUTION , pIntVec, STATE_PRIORITY_FORCE, false, "");	

	break;
	case 6:

		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 7);
		
		obj.addSetStatePacket(STATE_CARDINALEXECUTION , pIntVec, STATE_PRIORITY_FORCE, false, "");	

	break;
	case 7:

		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 8);
		
		obj.addSetStatePacket(STATE_CARDINALEXECUTION , pIntVec, STATE_PRIORITY_FORCE, false, "");	

	break;
	case 8:
        obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	break;
    }
}


function onProc_CardinalExecution(obj)
{
    if(!obj) return;

    local state = obj.getSkillSubState();//啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧SUB啮踝萧啮踝萧
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	
	local CardinalExecution_skill = obj.getVar("CardinalExecution_skill").get_vector(0);
	local suod = obj.sq_GetIntData(SKILL_CARDINALEXECUTION, 0)/100.0;
	switch(state)
	{
	case 0:	
	case 1:	
	case 2:	
	case 3:	
	case 4:	
	case 5:	
	case 6:	
	case 7:	
	case 8:	
	obj.setSkillCommandEnable(SKILL_CARDINALEXECUTION,true);
	local b_useskill = obj.sq_IsEnterSkill(SKILL_CARDINALEXECUTION);
	sq_SetKeyxEnable(obj, E_ATTACK_COMMAND, true);
	if(b_useskill != -1 || sq_IsEnterCommand(obj, E_ATTACK_COMMAND))
	{
        local currSize = obj.getVar("CardinalExecution_skill").get_vector(0);
        obj.getVar("CardinalExecution_skill").set_vector(0,currSize + 1 );
	}
	if(CardinalExecution_skill >= 5)
	{
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0+suod.tofloat());	
	}
    else
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);	
	break;
	}
}


function onKeyFrameFlag_CardinalExecution(obj,flagIndex)//啮踝萧啮踝萧弮啮踝萧啮踝萧啮踝萧啮踝萧
{
	if(!obj) return;


	local state = obj.getSkillSubState();//啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧sub state啮踝萧啮踝萧
	
	switch(state)
	{
	case 0:
	if(flagIndex == 0)
	{
	//`playReadySound`0	0	0	
	//`playReadySoundDM`0	0	0
	
	if (!Seducer(obj))
	{
	obj.sq_PlaySound("PW_CARDINALEXECUTION_01");
	} else {
	obj.sq_PlaySound("PW_CARDINALEXECUTION_DM_01");
	}
	}
	else if(flagIndex == 1)
	{
	sq_flashScreen(obj,60,260,60,180, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
	}else if(flagIndex == 2)
	{
	sq_SetMyShake(obj,9,240);
	}
	break;
	case 1:
	if(flagIndex == 0)
	{
	//`playAttackSoundDM`0	0	0
	if (Seducer(obj))
	{
	obj.sq_PlaySound("PW_CARDINALEXECUTION_DM_02");
	}
	}else if(flagIndex == 1)
	{
	sq_SetMyShake(obj, 1, 60);
	sq_flashScreen(obj,5,35,5,40, sq_RGB(255,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
	}
	break;
	case 2:
	if(flagIndex == 0)
	{
	sq_SetMyShake(obj, 3, 60);
	sq_flashScreen(obj,5,35,5,50, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
	}else if(flagIndex == 1)
	{
	//`playAttackSound`0	0	0
	if (!Seducer(obj))
	{
	obj.sq_PlaySound("PW_CARDINALEXECUTION_02");
	}
	}
	
	break;
	case 3:
	if(flagIndex == 0)
	{
	sq_SetMyShake(obj, 1, 60);
	sq_flashScreen(obj,5,35,5,45, sq_RGB(255,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);	
	}
	break;
	case 4:
	if(flagIndex == 0)
	{
	sq_SetMyShake(obj, 3, 60);
	sq_flashScreen(obj,5,35,5,55, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);

	}
	break;
	case 5:
	if(flagIndex == 0)
	{
	sq_SetMyShake(obj, 1, 60);
	sq_flashScreen(obj,5,35,5,50, sq_RGB(255,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
	}
	
	break;
	case 6:
	if(flagIndex == 0)
	{
	sq_SetMyShake(obj, 3, 60);
	sq_flashScreen(obj,5,35,5,60, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
	}
	
	break;
	case 7:
	if(flagIndex == 0)
	{
	sq_flashScreen(obj,30,180,30,140, sq_RGB(255,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
	}else if(flagIndex == 1)
	{
	sq_SetMyShake(obj, 15, 260);
	}
	
	break;
	case 8:
	if(flagIndex == 0)
	{
	sq_flashScreen(obj,10,70,300,90, sq_RGB(255,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
	}
	
	break;
	}
	return true;
}


function onAttack_CardinalExecution(obj, damager, boundingBox, isStuck) {
	if (!obj)
		return false;
	local state = obj.getSkillSubState();

	switch (state) {
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
			if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE)) {
				damager.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));
				local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, "character/atpriest/seducer/cardinalexecution/ap_cardinalexecution.nut", true);
				obj.getVar("damaCardinalExecution").push_obj_vector(damager);
				createAttackCutExp(obj, damager);
				if (sq_IsGrabable(obj, damager) && sq_IsHoldable(obj, damager) && !sq_IsFixture(damager)) {
					damager.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));
					local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, "character/atpriest/seducer/cardinalexecution/ap_cardinalexecution.nut", true);
					sq_HoldAndDelayDie(damager, obj, true, false, true, 0, 300, ENUM_DIRECTION_NEUTRAL, masterAppendage);
					obj.getVar("damaCardinalExecution").push_obj_vector(damager);
					createAttackCutExp(obj, damager);
				}
			}
			break;
		case 7:
			if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE)) {
				local sq_var = obj.getVar("damaCardinalExecution");

				local objectsSize = sq_var.get_obj_vector_size();

				for (local i = 0; i < objectsSize; ++i) {
					local damager = sq_var.get_obj_vector(i);
					if (CNSquirrelAppendage.sq_IsAppendAppendage(damager,
							"character/atpriest/seducer/cardinalexecution/ap_cardinalexecution.nut"))
						CNSquirrelAppendage.sq_RemoveAppendage(damager,
							"character/atpriest/seducer/cardinalexecution/ap_cardinalexecution.nut");
				}
			}
			break;
	}
}

function onEndState_CardinalExecution(obj, new_state)
{
    if (new_state != STATE_CARDINALEXECUTION )
    {
    obj.getVar("CardinalExecution_skill").clear_vector();
	local sq_var = obj.getVar("damaCardinalExecution");

	local objectsSize = sq_var.get_obj_vector_size();

	for(local i = 0; i < objectsSize; ++i)
	{
	local damager = sq_var.get_obj_vector(i);
	if(CNSquirrelAppendage.sq_IsAppendAppendage(damager,
	"character/atpriest/seducer/cardinalexecution/ap_cardinalexecution.nut")) 
	CNSquirrelAppendage.sq_RemoveAppendage(damager,
	"character/atpriest/seducer/cardinalexecution/ap_cardinalexecution.nut");
	}
    }
}

function CreatdemonizationBackEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","character/priest/seducer/effect/animation/atdemonization/atdemonizationtransformback_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}

function CreatdemonizationfrontEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","character/priest/seducer/effect/animation/atdemonization/atdemonizationtransformfront_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}


function CreateCardinalExecution_ReadyfrontEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","character/priest/seducer/effect/animation/atcardinalexecution/atcardinalexecutionreadyfront_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}

function CreateCardinalExecution_Attack1FrontEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","character/priest/seducer/effect/animation/atcardinalexecution/atcardinalexecutionattack1front_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}

function CreateCardinalExecution_Attack2FrontEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","character/priest/seducer/effect/animation/atcardinalexecution/atcardinalexecutionattack2front_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}

function CreateCardinalExecution_Attack3FrontEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","character/priest/seducer/effect/animation/atcardinalexecution/atcardinalexecutionattack3front_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}

function CreateCardinalExecution_Attack4FrontEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","character/priest/seducer/effect/animation/atcardinalexecution/atcardinalexecutionattack4front_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}

function CreateCardinalExecution_Attack5FrontEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","character/priest/seducer/effect/animation/atcardinalexecution/atcardinalexecutionattack5front_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}

function CreateCardinalExecution_Attack6FrontEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","character/priest/seducer/effect/animation/atcardinalexecution/atcardinalexecutionattack6front_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}

function CreateCardinalExecution_Attack7FrontEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","character/priest/seducer/effect/animation/atcardinalexecution/atcardinalexecutionattack7front_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}

function CreateCardinalExecution_Attack6BackEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","character/priest/seducer/effect/animation/atcardinalexecution/atcardinalexecutionattack6back_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}

function CreateCardinalExecution_Attack7BackEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","character/priest/seducer/effect/animation/atcardinalexecution/atcardinalexecutionattack7back_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}  