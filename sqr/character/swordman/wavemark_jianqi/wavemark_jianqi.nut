

function onAfterSetState_ATTACKSWORDMAN(obj, state, datas, isResetTimer)
{
	if (!obj)
		return;

	local skillLevel = obj.sq_GetSkillLevel(47);
		
	if (skillLevel > 0)
	{
		local attackIndex = obj.getAttackIndex();
		local x = sq_GetXPos(obj);

		if (attackIndex == 0){

		local level = sq_GetSkillLevel(obj, 47);
		local attackBonusRate = sq_GetLevelData(obj, 47, 3, level);
		obj.sq_StartWrite();
		obj.sq_WriteDword(attackBonusRate);
		obj.sq_WriteDword(0);		//po_id
		obj.sq_SendCreatePassiveObjectPacket(24383, 0, -50, -20, 0);
		}else if (attackIndex == 1)
		{
		local level = sq_GetSkillLevel(obj, 47);
		local attackBonusRate = sq_GetLevelData(obj, 47, 4, level);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(attackBonusRate);	// attackBonusRate
        sq_BinaryWriteDword(1);
		obj.sq_SendCreatePassiveObjectPacket(24383, 0, -50, -10, 0);
		}
else if (attackIndex == 2)
		{
		local level = sq_GetSkillLevel(obj, 47);
		local attackBonusRate = sq_GetLevelData(obj, 47, 5, level);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(attackBonusRate);	// attackBonusRate
        sq_BinaryWriteDword(2);
		obj.sq_SendCreatePassiveObjectPacket(24383, 0, -50, -30, 0);
		}

	}
}

function addObject_ATTACKSWORDMAN(obj,x,y,z)
{

        local attackBonusRate = 10000;

		sq_BinaryStartWrite();
		sq_BinaryWriteDword(attackBonusRate);	// attackBonusRate
        sq_BinaryWriteDword(1);
}