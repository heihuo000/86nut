function setCustomData_po_ATFighterObject(obj, receiveData)
{
	if(!obj)
		return;
		
	local attackBonusRate = receiveData.readDword();
	local id = receiveData.readDword();
	
	local atfighter = obj.getTopCharacter();
	atfighter = sq_ObjectToSQRCharacter(atfighter);
	
	obj.getVar("id").clear_vector();
	obj.getVar("id").push_vector(id);
		
	obj.getVar("attack").clear_vector();
	obj.getVar("attack").push_vector(attackBonusRate);
	
	if (id == 0)
	{
		local ani = sq_CreateAnimation("" , "character/fighter/effect/animation/atspiralgaleforce/buff_01.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
	}
	if (id == 1)
	{
		local ani = sq_CreateAnimation("" , "passiveobject/character/fighter/animation/atspiralgaleforce/forcem_loop_12.ani");
		obj.setCurrentAnimation(ani);
		obj.setTimeEvent(0,1000,1,false);
	}
	if (id == 2)
	{
		local ani = sq_CreateAnimation("" , "passiveobject/character/fighter/animation/atspiralgaleforce/forcem_end_15.ani");
		obj.setCurrentAnimation(ani);
	}
	if (id == 3)
	{
		local ani = sq_CreateAnimation("" , "passiveobject/character/fighter/animation/atspiralgaleforce/forcel_loop_09.ani");
		obj.setCurrentAnimation(ani);
		obj.setTimeEvent(0,7000,1,false);
	}
	if (id == 4)
	{
		local ani = sq_CreateAnimation("" , "passiveobject/character/fighter/animation/atspiralgaleforce/forcel_end_15.ani");
		obj.setCurrentAnimation(ani);
	}
	if (id == 5)
	{
		local ani = sq_CreateAnimation("" , "passiveobject/character/fighter/animation/atspiralgaleforce/forcem_loop_112.ani");
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 5);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
	}
	if (id == 6)
	{
		local ani = sq_CreateAnimation("" , "passiveobject/character/fighter/animation/atspiralgaleforce/forcem_loop_12.ani");
		obj.setCurrentAnimation(ani);
		obj.setTimeEvent(0,1000,1,false);
		local currentAni = sq_GetCurrentAnimation(obj);
		local sizeRate = 80.0/100.0;
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
	if (id == 7)
	{
		local ani = sq_CreateAnimation("" , "passiveobject/character/fighter/animation/atspiralgaleforce/forcem_end_15.ani");
		obj.setCurrentAnimation(ani);
		local currentAni = sq_GetCurrentAnimation(obj);
		local sizeRate = 80.0/100.0;
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
	if (id == 8)
	{
		local ani = obj.getVar().GetAnimationMap("", "passiveobject/character/fighter/animation/atspiralgaleforce/draweffect_02.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
		obj.setTimeEvent(0,1500,1,false);
		obj.sq_SetMoveParticle("Particle/ATGrenadeGravity.ptl", 0.0, 0.0);

	}
	if (id == 9)
	{
		local ani = sq_CreateAnimation("" , "passiveobject/character/fighter/animation/atspiralgaleforce/forcem_loop_12.ani");
		obj.setCurrentAnimation(ani);
		obj.setTimeEvent(0,1500,1,false);
		local currentAni = sq_GetCurrentAnimation(obj);
		local sizeRate = 80.0/100.0;
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
	if (id == 10)
	{
		local ani = sq_CreateAnimation("" , "passiveobject/character/fighter/animation/atspiralgaleforce/forcem_end_15.ani");
		obj.setCurrentAnimation(ani);
		local currentAni = sq_GetCurrentAnimation(obj);
		local sizeRate = 80.0/100.0;
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
}

function onTimeEvent_po_ATFighterObject(obj, timeEventIndex, timeEventCount)
{
	local attackBonusRate = obj.getVar("attack").get_vector(0);
	local atfighter = obj.getTopCharacter();
	atfighter = sq_ObjectToSQRCharacter(atfighter);
	
	if (obj.getVar("id").get_vector(0) == 1)
	{
		if (timeEventIndex == 0)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(0);
			sq_BinaryWriteDword(2);
			sq_SendCreatePassiveObjectPacketPos(obj,24393, 0,obj.getXPos(), obj.getYPos(), obj.getZPos() );
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (obj.getVar("id").get_vector(0) == 3)
	{
		if (timeEventIndex == 0)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(0);
			sq_BinaryWriteDword(4);
			sq_SendCreatePassiveObjectPacketPos(obj,24393, 0,obj.getXPos(), obj.getYPos(), obj.getZPos() );
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (obj.getVar("id").get_vector(0) == 6)
	{
		if (timeEventIndex == 0)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(0);
			sq_BinaryWriteDword(7);
			sq_SendCreatePassiveObjectPacketPos(obj,24393, 0,obj.getXPos(), obj.getYPos(), obj.getZPos() );
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (obj.getVar("id").get_vector(0) == 8)
	{
		if (timeEventIndex == 0)
		{
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (obj.getVar("id").get_vector(0) == 9)
	{
		if (timeEventIndex == 0)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(0);
			sq_BinaryWriteDword(10);
			sq_SendCreatePassiveObjectPacketPos(obj,24393, 0,obj.getXPos(), obj.getYPos(), obj.getZPos() );
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
}

function procAppend_po_ATFighterObject(obj)
{
	local attackBonusRate = obj.getVar("attack").get_vector(0);
	local atfighter = obj.getTopCharacter();
	atfighter = sq_ObjectToSQRCharacter(atfighter);
	local atfighterState = obj.sq_GetParentState();
	if (atfighterState == STATE_DIE)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	
	if (obj.getVar("id").get_vector(0) == 0)
	{
		local startX = obj.getXPos();
		local startY = obj.getYPos();
		local chrX = atfighter.getXPos();
		local chrY = atfighter.getYPos();
		
		local pAni = obj.getCurrentAnimation();
		local currentT = sq_GetCurrentTime(pAni);
		
		local v1 = sq_GetAccel(startX, chrX, currentT, currentT, true);
		local v2 = sq_GetAccel(startY, chrY, currentT, currentT, true);
		obj.setCurrentPos(v1, v2, 0);
		
		if (!CNSquirrelAppendage.sq_IsAppendAppendage(atfighter, "character/atfighter/spiralgaleforce/ap_spiralgaleforce.nut") )
		{
			sq_SendDestroyPacketPassiveObject(obj);
		}
		
		local skillIndex = obj.getCurrentSkillIndex();
		if (skillIndex == 15 || skillIndex == 16 || skillIndex == 90 || skillIndex == 67
			 || skillIndex == 117 || skillIndex == 120)
		{
			local currentAni = obj.getCurrentAnimation();
			if(currentAni)
			{
				currentAni.setSpeedRate(900.0);
			}
		}
	}
	if (obj.getVar("id").get_vector(0) == 3)
	{
		sq_moveWithParent(atfighter, obj);
	}
	if (obj.getVar("id").get_vector(0) == 8)
	{
		local OBJ = atfighter.getMyPassiveObject(21067,0);
		obj.setCurrentPos(OBJ.getXPos(), OBJ.getYPos(), OBJ.getZPos());
	}
	if (obj.getVar("id").get_vector(0) == 9)
	{
		local OBJ = atfighter.getMyPassiveObject(21067,0);
		obj.setCurrentPos(OBJ.getXPos(), OBJ.getYPos(), OBJ.getZPos());
	}
}

function onAttack_po_ATFighterObject(obj,daatfighterr, boundingBox, isStuck)
{
	if (!obj)
		return 0;
		
	local attackBonusRate = obj.getVar("attack").get_vector(0);
	local atfighter = obj.getTopCharacter();
	atfighter = sq_ObjectToSQRCharacter(atfighter);
	
	if (obj.getVar("id").get_vector(0) == 5)
	{
		local posX = sq_GetDistancePos(atfighter.getXPos(), atfighter.getDirection(), 150);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(0);
		sq_BinaryWriteDword(6);
		sq_SendCreatePassiveObjectPacketPos(obj,24393, 0, posX, obj.getYPos(), obj.getZPos() - 60);
	}
}


function onKeyFrameFlag_po_ATFighterObject(obj, flagIndex)
{
	if(!obj)
		return;
	local attackBonusRate = obj.getVar("attack").get_vector(0);
	local atfighter = obj.getTopCharacter();
	atfighter = sq_ObjectToSQRCharacter(atfighter);
	
	if (obj.getVar("id").get_vector(0) == 22)
	{
		if (flagIndex == 1 )
		{
			
		}
	}
	return true;
}

function onEndCurrentAni_po_ATFighterObject(obj)
{
	local attackBonusRate = obj.getVar("attack").get_vector(0);
	local atfighter = obj.getTopCharacter();
	atfighter = sq_ObjectToSQRCharacter(atfighter);
	
	if (obj.getVar("id").get_vector(0) == 2)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (obj.getVar("id").get_vector(0) == 4)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (obj.getVar("id").get_vector(0) == 7)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (obj.getVar("id").get_vector(0) == 10)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
}
