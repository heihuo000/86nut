
SUB_STATE_ICEPLATE_0	<- 0
SUB_STATE_ICEPLATE_1	<- 1

function onMouseButtonDown_IcePlate(obj)
{
	if(!obj) return;
	
	local objectManager = obj.getObjectManager();
	
	local destXPos = objectManager.getFieldXPos(IMouse.GetXPos(), ENUM_DRAWLAYER_NORMAL);
	local destYPos = objectManager.getFieldYPos(IMouse.GetYPos(), 0, ENUM_DRAWLAYER_NORMAL);
	
	
	if (destYPos < TILE_FLOOR_START_Y)
	{ // �ٴ��� �����ϴ� y��ǥ���..
		return;
	}
	
	local posX = obj.getXPos();
	
	local direction = sq_GetDirection(obj);

	if (posX >= destXPos)
		direction = ENUM_DIRECTION_LEFT;
	else
		direction = ENUM_DIRECTION_RIGHT;
		
	obj.sq_SetDirection(direction);

	local skill_level = obj.sq_GetSkillLevel(SKILL_ICEPLATE);

	// ���ݷ� �߰���ġ �۾�
	local level = sq_GetSkillLevel(obj, SKILL_CREATORICE);

	// 1.���ݷ� �߰� ��ġ (%)
	local addValue = sq_GetLevelData(obj, SKILL_CREATORICE, SKL_LV_1, level);
	local addRate = addValue.tofloat() / 100.0;

	local power = obj.sq_GetPowerWithPassive(SKILL_ICEPLATE, STATE_ICEPLATE, SKL_LV_0,-1,addRate.tofloat());
	
	// 1.��������
	local size = obj.sq_GetLevelData(SKILL_ICEPLATE, SKL_LV_2, skill_level);
	
	sq_BinaryStartWrite();
	sq_BinaryWriteDword(size);							// ���� ũ�� %
	sq_BinaryWriteFloat(power.tofloat());

	// ������ ������ ��ġ ���
	
	// ����
	//local MAGIC_TARGET_WARNING_POBJID = 48012;
	//sq_SendCreatePassiveObjectPacketPos(obj, MAGIC_TARGET_WARNING_POBJID, 3, destXPos, destYPos, 0);	
	
	/////////////////////
	sq_BinaryParameterStartWrite();
	sq_BinaryParameterWriteDword(destXPos);
	sq_BinaryParameterWriteDword(destYPos);
	sq_BinaryParameterWriteDword(1);
	
	sq_BinaryParameterWriteDword(destXPos);
	sq_BinaryParameterWriteDword(destYPos);
	
	sq_BinaryParameterWriteDword(ENUM_DIRECTION_NEUTRAL);
	sq_BinaryParameterWriteDword(200); // int delayControlRate
	
	local markType = 7; // Ÿ���� ��ũ ����(�������� ����!)
	sq_BinaryParameterWriteDword(markType); //int warningMarkIndex
	
	
	local skill_level = obj.sq_GetSkillLevel(SKILL_ICEPLATE);
	sq_CreatePassiveObjectAfterWarning(obj, 23505, skill_level, null);
	/////////////////////
	//sq_SendCreatePassiveObjectPacketPos(obj, 23505, 0, destXPos, destYPos, 1);	
	
	obj.sq_PlaySound("R_ICEPLATE_CASTING");
}

