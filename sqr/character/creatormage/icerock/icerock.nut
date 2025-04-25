
SUB_STATE_ICEROCK_0	<- 0


function onMouseButtonDown_IceRock(obj)
{
	if (!obj) return;
	
	local objectManager = obj.getObjectManager();
	local xPos = objectManager.getFieldXPos(IMouse.GetXPos(), ENUM_DRAWLAYER_NORMAL);
	local yPos = objectManager.getFieldYPos(IMouse.GetYPos(), 0, ENUM_DRAWLAYER_NORMAL) + 20;
	local zPos = 61;
	
	
	if (yPos < TILE_FLOOR_START_Y)
	{ // �ٴ��� �����ϴ� y��ǥ���..
		return;
	}
	
	// 0.���ݷ�

	// ���ݷ� �߰���ġ �۾�
	local level = sq_GetSkillLevel(obj, SKILL_CREATORICE);

	// 1.���ݷ� �߰� ��ġ (%)
	local addValue = sq_GetLevelData(obj, SKILL_CREATORICE, SKL_LV_1, level);
	local addRate = addValue.tofloat() / 100.0;

	local power = obj.sq_GetPowerWithPassive(SKILL_ICEROCK, STATE_ICEROCK, 0,-1,addRate.tofloat());

	// 1. �ٴ���Ʈ ����
	local multiHitTerm = sq_GetIntData(obj, SKILL_ICEROCK, 1); 

	sq_BinaryStartWrite();
	sq_BinaryWriteDword(power); // ��
	sq_BinaryWriteDword(multiHitTerm); // �ٴ���Ʈ
	sq_SendCreatePassiveObjectPacketPos(obj, 23503, 0, xPos, yPos, zPos);

	obj.sq_PlaySound("ICESTONE_READY");
}

