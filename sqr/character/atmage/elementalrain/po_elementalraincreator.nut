SUBSTATE_PO_ELEMENTAL_CREATOR_STAY	<- 2; // ��� ���� // �нú��� ���� ������Ʈ��  2 ���� �����Ѵ�.
SUBSTATE_PO_ELEMENTAL_CREATOR_FIRE	<- 3; // �߻� 

VAR_PO_ELEMENTAL_CREATOR_TYPE	<- 0;	// ���� Ÿ��
VAR_PO_POS_MIN					<- 1;	// �յ� ���ִ� ��ġ �ּҰ�
VAR_PO_POS_MAX					<- 2;	// �յ� ���ִ� ��ġ �ִ밪

function setCustomData_po_ATElementalCreator(obj, receiveData)
{		
	if (!obj) return;	
	//elemental type ����.  �� Ÿ������ ���߿� ������ ����
	local elementalType = receiveData.readWord();	
	
	local var = obj.getVar();
	var.setInt(VAR_PO_ELEMENTAL_CREATOR_TYPE, elementalType);
	
	
	local rand = sq_getRandom(0, 1);
	local upHeight = 8;
	if (rand == 0)
		upHeight = -8;

	var.setInt(VAR_PO_POS_MIN, obj.getZPos());
	var.setInt(VAR_PO_POS_MAX, obj.getZPos() + upHeight);
	
	if (elementalType != ENUM_ELEMENT_NONE)
		setCurrentAnimationFromCutomIndex(obj, elementalType);
	obj.sendStateOnlyPacket(SUBSTATE_PO_ELEMENTAL_CREATOR_STAY);	
}

function onAttack_po_ATElementalCreator(obj, damager, boundingBox, isStuck)
{
	if (!obj) return 0;
	return 0;
}


function procAppend_po_ATElementalCreator(obj)
{
	if (!obj) return;
	
	local var = obj.getVar();
	local min = var.getInt(VAR_PO_POS_MIN);
	local max = var.getInt(VAR_PO_POS_MAX);
	
	local zPos = sq_GetShuttleValue(min, max, sq_GetObjectTime(obj), 400);
	sq_SetCurrentPos(obj, obj.getXPos(), obj.getYPos(), zPos);	
}


function setState_po_ATElementalCreator(obj, state, datas)
{
	if (!obj) return;
	
	if (state == SUBSTATE_PO_ELEMENTAL_CREATOR_FIRE) 
	{
		local var = obj.getVar();
		local elementalType = var.getInt(VAR_PO_ELEMENTAL_CREATOR_TYPE);	
		playSoundForAtmageAttack(obj, elementalType, 0);
		
		if (!obj.isMyControlObject()) // ���� �����ϴ� �ְ� �ƴϸ� ���常 ���
			return;		
		
		local direction = sq_GetDirection(obj);
		local parentObj = obj.getTopCharacter();
		
		// �ణ�� ��������� ����.		
		local activeObject = sq_FindShootingTarget(parentObj, 0, 0, 0, 0, 0, 4, 4, -1, 300, 100, 50, 100);
		local horizonAngle = 0.0;
		local verticalAngle = 0.0;

		if (activeObject != NULL)
		{
			local maxDistance = abs(activeObject.getXPos());
			horizonAngle = sq_GetShootingHorizonAngle(activeObject, 0, 0, 5, maxDistance);
			verticalAngle = sq_GetShootingVerticalAngle(activeObject, 0, 0, 5, maxDistance, 300);
		}

		sq_BinaryStartWrite()
		sq_BinaryWriteFloat(horizonAngle);			// ������ ũ��
		sq_BinaryWriteFloat(verticalAngle);
		sq_BinaryWriteDword(0);
		sq_BinaryWriteDword(1);						// ������Ż ������ �нú� ������Ʈ �ΰ�?
		
		// �нú� ������Ʈ �ε��� ����
		local passiveObjectIndex = (elementalType == ENUM_ELEMENT_NONE ? 24207 : 24208 + elementalType);
		sq_SendCreatePassiveObjectPacket(obj, passiveObjectIndex, 0, 0, 0, 0, obj.getDirection());	
		sq_SendDestroyPacketPassiveObject(obj);	
	}
}
