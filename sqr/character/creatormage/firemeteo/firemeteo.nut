
SUB_STATE_FIREMETEO_0	<- 0


function onMouseButtonDown_FireMeteo(obj)
{
	if (!obj) return;
	
	local objectManager = obj.getObjectManager();
	local xPos = objectManager.getFieldXPos(IMouse.GetXPos(), ENUM_DRAWLAYER_NORMAL);
	local yPos = objectManager.getFieldYPos(IMouse.GetYPos(), 0, ENUM_DRAWLAYER_NORMAL);
	local zPos = 61;
	
	if (yPos < TILE_FLOOR_START_Y)
	{ // �ٴ��� �����ϴ� y��ǥ���..
		return;
	}
	
	
	local ptl = sq_GetParticleInfo(obj, "Particle/CreatorFireMeteo.ptl");
	
	sq_BinaryParameterStartWrite();
	// �Ķ���Ͱ� �ʹ� ���� ���̳ʸ� ����Ÿ�� �̿��մϴ�.
	// x, y, z == �����нú������Ʈ�� ��µ� ��
	// wx, wy == ���ǥ�ð� ��µ� ��
	// delay ControlRate ���ǥ���� ���ǵ� ������ %��
	// warningMarkIndex == ���ǥ���� ���� : 0 �Ⱥ���, 1 ����, 2 ����, 3 ���� (�Ʊ�Only), 4 ���� (�Ʊ�Only)
	local moveVariable1 = 500;
	local naaMoveVariable1 = -400; // -800
	local createXDistance = xPos - moveVariable1;
	local createYDistance = yPos;
	local createZDistance = -naaMoveVariable1;
	
	local dir = sq_GetDirection(obj);
	if (dir == ENUM_DIRECTION_LEFT)
	{
		createXDistance = xPos + moveVariable1;
	}
	
	sq_BinaryParameterWriteDword(createXDistance);
	sq_BinaryParameterWriteDword(createYDistance);
	sq_BinaryParameterWriteDword(createZDistance);
	
	sq_BinaryParameterWriteDword(xPos);
	sq_BinaryParameterWriteDword(yPos);
	
	sq_BinaryParameterWriteDword(ENUM_DIRECTION_NEUTRAL);
	sq_BinaryParameterWriteDword(200); // int delayControlRate
	
	local markType = obj.sq_GetIntData(SKILL_FIREMETEO, 0); // Ÿ���� ��ũ ����(�������� ����!)
	sq_BinaryParameterWriteDword(markType); //int warningMarkIndex

	
	// ���ݷ� �߰���ġ �۾�
	local level = sq_GetSkillLevel(obj, SKILL_CREATORFLAME);

	// 1.���ݷ� �߰� ��ġ (%)
	local addValue = sq_GetLevelData(obj, SKILL_CREATORFLAME, SKL_LV_1, level);
	local addRate = addValue.tofloat() / 100.0;

	print(" addRate:" + addRate);

	local skillLevel = sq_GetSkillLevel(obj, SKILL_FIREMETEO);

	local power = obj.sq_GetPowerWithPassive(SKILL_FIREMETEO, STATE_FIREMETEO, SKL_LV_0,-1,addRate.tofloat());
	local sizeRate = sq_GetLevelData(obj, SKILL_FIREMETEO, SKL_LV_1, skillLevel);

	
	// ���׿� ���ݷ� Ǫ��	
	sq_BinaryStartWrite();
	 // ���ݷ� ����
	sq_BinaryWriteDword(power);
	 // size rate
	sq_BinaryWriteDword(sizeRate);
	
	
	local skill_level = obj.sq_GetSkillLevel(SKILL_FIREMETEO);
	sq_CreatePassiveObjectAfterWarning(obj, 23501, skill_level, ptl);	
	
	obj.sq_PlaySound("R_METEO_CASTING");
}

