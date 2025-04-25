
SUB_STATE_FIREWALL_0	<- 0
SUB_STATE_FIREWALL_1	<- 1


function onMouseMoveCharacter_WindStorm(obj, x, y)
{
	if (!obj)
		return;	
}

function onMouseButtonDown_WindStorm(obj)
{
	if (!obj) return;
	
	local objectManager = obj.getObjectManager();
	local xPos = objectManager.getFieldXPos(IMouse.GetXPos(), ENUM_DRAWLAYER_NORMAL);
	local yPos = objectManager.getFieldYPos(IMouse.GetYPos(), 0, ENUM_DRAWLAYER_NORMAL);
	local zPos = 0;
	
	if (yPos < TILE_FLOOR_START_Y)
	{ // �ٴ��� �����ϴ� y��ǥ���..
		return;
	}
	
	// 0.�ٴ���Ʈ ����
	local multiHitTerm = sq_GetIntData(obj, SKILL_WINDSTORM, 0);
	// 1.�Ҹ�
	local consume = sq_GetIntData(obj, SKILL_WINDSTORM, 1);
	

	// ���ݷ� �߰���ġ �۾�
	local level = sq_GetSkillLevel(obj, SKILL_CREATORWIND);

	// 1.���ݷ� �߰� ��ġ (%)
	local addValue = sq_GetLevelData(obj, SKILL_CREATORWIND, SKL_LV_1, level);
	local addRate = addValue.tofloat() / 100.0;



	local power =  obj.sq_GetPowerWithPassive(SKILL_WINDSTORM, STATE_STAND, SKL_LV_0, -1,addRate.tofloat());
	
	local skill_level = obj.sq_GetSkillLevel(SKILL_WINDSTORM);
	// Ȯ���� (%)
	local imageRate = obj.sq_GetLevelData(SKILL_WINDSTORM, SKL_CL_LI_1, skill_level);

	// 2.������� X�� ��
	local xVel = obj.sq_GetLevelData(SKILL_WINDSTORM, SKL_CL_LI_2, skill_level);

	// 3.������� Y�� ��
	local yVel = obj.sq_GetLevelData(SKILL_WINDSTORM, SKL_CL_LI_3, skill_level);

	
	sq_BinaryStartWrite();
	sq_BinaryWriteDword(multiHitTerm);
	sq_BinaryWriteDword(consume);
	sq_BinaryWriteDword(power);
	sq_BinaryWriteDword(imageRate);
	sq_BinaryWriteDword(xVel);
	sq_BinaryWriteDword(yVel);
	
	
	// 24356 `Character/Mage/CreatorWindStorm.obj`			// ũ�������� : ���彺��
	sq_SendCreatePassiveObjectPacketPos(obj, 24356, 0, xPos, yPos, zPos);

	//local consumeValue = getCreatorSkillConsumeValue(obj, SKILL_WINDSTORM);	
}
