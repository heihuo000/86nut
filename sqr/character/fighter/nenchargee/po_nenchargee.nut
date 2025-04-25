

function setCustomData_po_NenMaster(obj, receiveData)
{
	
	if(!obj)
		return;

	local id = receiveData.readDword();
	local tarid = receiveData.readDword();
	local attackBonusRate = receiveData.readDword();
	
	obj.getVar("id").clear_vector();
    obj.getVar("id").push_vector(id);
	
	local fighter = obj.getTopCharacter();
	if (!fighter)
		return;
	
	if (id == 0)	
    {
		local ani = obj.getCustomAnimation(0);
        obj.setCurrentAnimation(ani);
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local size = 150;
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
	if (id == 1)	
    {
		local ani = obj.getCustomAnimation(1);
        obj.setCurrentAnimation(ani);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 0);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local size = receiveData.readDword();
		local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
	if (id == 2)	
    {
		local ani = obj.getCustomAnimation(2);
        obj.setCurrentAnimation(ani);
	
		local attackInfo = sq_GetCustomAttackInfo(obj, 1);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
	
		obj.setTimeEvent(0, 30, 5, true);
	}
	if (id == 3)	
    {
		local ani = obj.getCustomAnimation(3);
        obj.setCurrentAnimation(ani);
	}
	if (id == 4)	
    {
		local ani = obj.getCustomAnimation(4);
        obj.setCurrentAnimation(ani);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 3);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
		obj.sq_SetMoveParticle("Particle/SaintIllusion.ptl", 0.0, 0.0);
	}
	if (id == 5)	
    {
		local ani = obj.getCustomAnimation(5);
        obj.setCurrentAnimation(ani);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 3);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
		obj.sq_SetMoveParticle("Particle/SaintIllusion.ptl", 0.0, 0.0);
	}
	if (id == 6)	
    {
		local ani = obj.getCustomAnimation(6);
        obj.setCurrentAnimation(ani);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 3);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
	}
	if (id == 7)	
    {
		local ani = obj.getCustomAnimation(7);
        obj.setCurrentAnimation(ani);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 3);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
	}
	if (id == 8)	
    {
		local ani = obj.getCustomAnimation(8);
        obj.setCurrentAnimation(ani);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 2);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
	}
	if (id == 9)	
    {
		local ani = obj.getCustomAnimation(9);
        obj.setCurrentAnimation(ani);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 3);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
		obj.setTimeEvent(1,540,0,false);
		
		obj.sq_SetMoveParticle("Particle/NenPrison.ptl", 0.0, 0.0);
	}
	if (id == 10)	
    {
		local ani = obj.getCustomAnimation(10);
        obj.setCurrentAnimation(ani);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 4);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
		obj.setTimeEvent(0, 180, 15, true);
		obj.setTimeEvent(1,2700,0,false);
		
		local skill = sq_GetSkill(fighter, SKILL_NENCHARGEE);
		local skillLevel = sq_GetSkillLevel(fighter, SKILL_NENCHARGEE);
		attackBonusRate = sq_GetBonusRateWithPassive(fighter, SKILL_NENCHARGEE, STATE_NENCHARGEE, 1, 1.0);

		sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackBonusRate);
	}
	if (id == 11)	
    {
		local ani = obj.getCustomAnimation(11);
        obj.setCurrentAnimation(ani);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 5);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
		local skill = sq_GetSkill(fighter, SKILL_NENCHARGEE);
		local skillLevel = sq_GetSkillLevel(fighter, SKILL_NENCHARGEE);
		attackBonusRate = sq_GetBonusRateWithPassive(fighter, SKILL_NENCHARGEE, STATE_NENCHARGEE, 2, 1.0);

		sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackBonusRate);
	}
	if (id == 12)	
    {
		local ani = obj.getCustomAnimation(12);
        obj.setCurrentAnimation(ani);
	}
}

function onTimeEvent_po_NenMaster(obj, timeEventIndex, timeEventCount)
{
	if (obj.getVar("id").get_vector(0) == 2)
	{	
		if (timeEventIndex == 0)
		{
			obj.resetHitObjectList();
		}
		if (timeEventIndex == 1)
		{
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (obj.getVar("id").get_vector(0) == 9)
	{	
		if (timeEventIndex == 1)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(10);
			sq_BinaryWriteDword(4);
			sq_SendCreatePassiveObjectPacketPos(obj,24397, 0,obj.getXPos(), obj.getYPos() + 1, obj.getZPos() + obj.getObjectHeight()/2 );
			sq_SendCreatePassiveObjectPacketPos(obj,990204, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (obj.getVar("id").get_vector(0) == 10)
	{	
		if (timeEventIndex == 0)
		{
			obj.resetHitObjectList();
		}
		if (timeEventIndex == 1)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(11);
			sq_BinaryWriteDword(5);
			sq_SendCreatePassiveObjectPacketPos(obj,24397, 0,obj.getXPos(), obj.getYPos() + 1, obj.getZPos() + obj.getObjectHeight()/2 );
			
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(12);
			sq_SendCreatePassiveObjectPacketPos(obj,24397, 0,obj.getXPos(), obj.getYPos() + 1, obj.getZPos() + obj.getObjectHeight()/2 );
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
}

function onAttack_po_NenMaster(obj, damager, boundingBox, isStuck)
{
	if (obj.getVar("id").get_vector(0) == 9)
    {
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(10);
		sq_BinaryWriteDword(4);
		sq_SendCreatePassiveObjectPacketPos(obj,24397, 0,obj.getXPos(), obj.getYPos() + 1, obj.getZPos() + obj.getObjectHeight()/2 );
		sq_SendCreatePassiveObjectPacketPos(obj,990204, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
		sq_SendDestroyPacketPassiveObject(obj);
	}
}

function onEndCurrentAni_po_NenMaster(obj)
{
	local id = obj.getVar("id").get_vector(0);
	
	if (id == 0)
    {
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 1)
    {
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 2)
    {
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 3)
    {
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 4)
    {
		local attackBonusRate = obj.getVar("atk").get_vector(1);
		
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(6);
		sq_BinaryWriteDword(3);
		sq_BinaryWriteDword(attackBonusRate);
		sq_SendCreatePassiveObjectPacketPos(obj,24397, 0,obj.getXPos(), obj.getYPos() + 1, obj.getZPos() + obj.getObjectHeight()/2 );
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 5)
    {
		local attackBonusRate = obj.getVar("atk").get_vector(1);
		
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(7);
		sq_BinaryWriteDword(3);
		sq_BinaryWriteDword(attackBonusRate);
		sq_SendCreatePassiveObjectPacketPos(obj,24397, 0,obj.getXPos(), obj.getYPos() + 1, obj.getZPos() + obj.getObjectHeight()/2 );
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 6)
    {
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 7)
    {
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 8)
    {
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 11)
    {
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 12)
    {
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 13)
    {
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 14)
    {
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 15)
    {
		sq_SendDestroyPacketPassiveObject(obj);
	}
}	

ADDEXTRANUT <- 0 