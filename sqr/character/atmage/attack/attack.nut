

// state�� �����ϰ� ó������ ������ �˴ϴ�. ���� ���ҽ��� �����մϴ�. 
function onSetState_Attack(obj, state, datas, isResetTimer)
{	
	if (!obj)
		return;

	local skillLevel = obj.sq_GetSkillLevel(SKILL_ICE_ELEMENTAL_ATTACK);

	// ����ü�� �����.
	if (skillLevel > 0)
	{
		// �Ϲ� ���ݽ�, ������ ���� ó��
		obj.setAttackXVelocity(250);
		obj.setAttackXAccel(-1000);
		obj.setAttackXVelocityFast(400);
		obj.setAttackXAccelFast(-1000);
		
		// �⺻�� ���� ����	
		obj.applyBasicAttackUp(sq_GetCurrentAttackInfo(obj),obj.getState());		
		sq_SetCurrentAttackInfo(obj, sq_GetCurrentAttackInfo(obj));
	}
	else
	{
		// ����ü�� ����� �ʾҴٸ� ���ڸ����� ������ ����
		obj.setAttackXVelocity(0);
		obj.setAttackXAccel(0);
		obj.setAttackXVelocityFast(0);
		obj.setAttackXAccelFast(0);
		local element = obj.getThrowElement();
		local attackIndex = obj.getAttackIndex();
		playSoundForAtmageAttack(obj, element, attackIndex);
	}
}


function onAfterSetState_Attack(obj, state, datas, isResetTimer)
{
	if (!obj) return;

	// ����ü ��ų�� ����ٸ�, ��Ÿ ���ϸ��̼��� �ٲ�
	// �������� �߻���� ����.
	local iceElementalAttackSkillLevel = obj.sq_GetSkillLevel(SKILL_ICE_ELEMENTAL_ATTACK);


	if (state == STATE_ATTACK && iceElementalAttackSkillLevel <= 0)
	{
		// ��Ÿ ����Ʈ�� ���δ�.
		// �ɷ��ִ� ���� ��ų �ε��� �� ���� ������Ʈ�� ���� �������� ����Ʈ�� �ٸ� (�Ӽ������� �ٴ� ����Ʈ�� �ٸ�)
		local element = obj.getThrowElement();
		local attackIndex = obj.getAttackIndex();
		
		// �Ӽ��ߵ� appendage�� �ɷ��ִ��� üũ��.
		// �Ӽ��ߵ��� �ɷ����� �ʴٸ� ���Ӽ� ��Ÿ�� �߻��
		local appendage = obj.GetSquirrelAppendage("Character/ATMage/ElementalChange/ap_ATMage_Elemental_Change.nut");
		if (!appendage || !appendage.isValid())
			element = ENUM_ELEMENT_NONE;

		if (attackIndex == 0)
		{
			if (element == ENUM_ELEMENT_FIRE)
			{	// ȭ�Ӽ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/fire/attack1_fire_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/fire/attack1_fire_dodge.ani"), 0, 0);
			}
			else if (element == ENUM_ELEMENT_WATER)
			{	// ���Ӽ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/water/attack1_water_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/water/attack1_water_dodge.ani"), 0, 0);
			}
			else if (element == ENUM_ELEMENT_DARK)
			{	// �ϼӼ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/dark/attack1_dark_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/dark/attack1_dark_dodge.ani"), 0, 0);
			}
			else if (element == ENUM_ELEMENT_LIGHT)
			{	// ��Ӽ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/light/attack1_light_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/light/attack1_light_dodge.ani"), 0, 0);
			}
			else if (element == ENUM_ELEMENT_NONE)
			{	// ���Ӽ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/attack1_none_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/attack1_none_dodge.ani"), 0, 0);
			}
		}
		else if (attackIndex == 1)
		{
			if (element == ENUM_ELEMENT_FIRE)
			{	// ȭ�Ӽ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/fire/attack2_fire_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/fire/attack2_fire_dodge.ani"), 0, 0);
			}
			else if (element == ENUM_ELEMENT_WATER)
			{	// ���Ӽ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/water/attack2_water_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/water/attack2_water_dodge.ani"), 0, 0);
			}
			else if (element == ENUM_ELEMENT_DARK)
			{	// �ϼӼ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/dark/attack2_dark_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/dark/attack2_dark_dodge.ani"), 0, 0);
			}
			else if (element == ENUM_ELEMENT_LIGHT)
			{	// ��Ӽ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/light/attack2_light_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/light/attack2_light_dodge.ani"), 0, 0);
			}
			else if (element == ENUM_ELEMENT_NONE)
			{	// ���Ӽ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/attack2_none_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/attack2_none_dodge.ani"), 0, 0);
			}
		}
		else if (attackIndex == 2)
		{
			if (element == ENUM_ELEMENT_FIRE)
			{	// ȭ�Ӽ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/fire/attack3_fire_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/fire/attack3_fire_dodge.ani"), 0, 0);
			}
			else if (element == ENUM_ELEMENT_WATER)
			{	// ���Ӽ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/water/attack3_water_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/water/attack3_water_dodge.ani"), 0, 0);
			}
			else if (element == ENUM_ELEMENT_DARK)
			{	// �ϼӼ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/dark/attack3_dark_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/dark/attack3_dark_dodge.ani"), 0, 0);
			}
			else if (element == ENUM_ELEMENT_LIGHT)
			{	// ��Ӽ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/light/attack3_light_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/light/attack3_light_dodge.ani"), 0, 0);
			}
			else if (element == ENUM_ELEMENT_NONE)
			{	// ���Ӽ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/attack3_none_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/attack3_none_dodge.ani"), 0, 0);
			}
		}
		else if (attackIndex == 3)
		{
			if (element == ENUM_ELEMENT_FIRE)
			{	// ȭ�Ӽ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/fire/attack4_fire_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/fire/attack4_fire_dodge.ani"), 0, 0);
			}
			else if (element == ENUM_ELEMENT_WATER)
			{	// ���Ӽ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/water/attack4_water_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/water/attack4_water_dodge.ani"), 0, 0);
			}
			else if (element == ENUM_ELEMENT_DARK)
			{	// �ϼӼ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/dark/attack4_dark_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/dark/attack4_dark_dodge.ani"), 0, 0);
			}
			else if (element == ENUM_ELEMENT_LIGHT)
			{	// ��Ӽ�
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/light/attack4_light_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/light/attack4_light_dodge.ani"), 0, 0);
			}
			else if (element == ENUM_ELEMENT_NONE)
			{
				obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/attack4_none_normal.ani"), 0, 0);
				obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATAttack/attack4_none_dodge.ani"), 0, 0);
			}
		}
	}	
}

function createMiniMagicCircle(obj, xPos, zPos, shotDirection, bonusDamage) // direction 0:����  1:�밢��  2:�ϴ�)
{	
	if(!obj)
		return;
	if (obj.sq_IsMyControlObject()) {
	
		// ������ü ������ġ
		local direction = sq_GetDirection(obj);
		local x = sq_GetDistancePos(obj.getXPos(), direction, xPos);
		local y = sq_GetDistancePos(obj.getYPos(), ENUM_DIRECTION_DOWN, 1);
		local z = sq_GetDistancePos(obj.getZPos(), ENUM_DIRECTION_UP, zPos);
		// �ణ�� ��������� ����.
		// ������
		// �߻� ��ġ(x,y,z)
		// ���� �߻簢 (0�̸� ������ �߻�, 30�̸� ������ 30���� �߻�)
		// ���� �߻簢 (0�̸� ������ �߻�, -30�̸� �Ʒ��� 30���� �߻�)
		// ���� �ִ� ������ (���� ����)
		// ���� �ִ� ������ (���� ����)
		// ������ �ִ� �Ÿ�. -1�̸� ���� ����
		// x�� �ִ� �����Ÿ�
		// ���� �ڽ��� x�� ũ��
		// ���� �ڽ��� y�� ũ��
		// ���� �ڽ��� z�� ũ��
		
		local activeObject;
		local searchAngleH = 0;
		local searchAngleV = 0;
		local passiveObjectIndex = 0;		
		
		if(shotDirection == 0)
		{	// ����
			//activeObject = sq_FindShootingTarget(obj, x, y, z, 0, 0, 10, 10, -1, 1000, 1000, 250, 100);	
			local distance = 1000;
			local angle = 20;
			activeObject = findAngleTarget(obj, distance, angle, 100); // ��ä�� ����� �� �˻�			
			searchAngleH = 30;
			searchAngleV = 15;
			passiveObjectIndex = 24202;
		
			// ���ӹ߻�� ������� ������, �ٸ� ������Ʈ�� �߻�� (�������� ������ �ޱ⶧��)
			if (obj.getState() == STATE_MULTI_SHOT)
				passiveObjectIndex = 24266;
		}
		else if(shotDirection == 1) {// �밢��
			activeObject = sq_FindShootingTarget(obj, x, y, z, 0, 0, 4, 4, -1, 300, 100, 50, 100);
			searchAngleH = 5;
			searchAngleV = 5;			
			passiveObjectIndex = 24207;
			
			// ���ӹ߻�� ������� ������, �ٸ� ������Ʈ�� �߻�� (�������� ������ �ޱ⶧��)
			if (obj.getState() == STATE_MULTI_SHOT)
				passiveObjectIndex = 24271;
		}
		else if(shotDirection == 2) { // �ϴ�
			activeObject = sq_FindShootingTarget(obj, x, y, z, 0, 0, 4, 4, -1, 300, 100, 50, 100);			
			searchAngleH = 5;
			searchAngleV = 5;	
			passiveObjectIndex = 24228;
			
			// ���ӹ߻�� ������� ������, �ٸ� ������Ʈ�� �߻�� (�������� ������ �ޱ⶧��)
			if (obj.getState() == STATE_MULTI_SHOT)
				passiveObjectIndex = 24276;
		}				
		else {
			printc("error! magic ball create shotDirection error");
			return;
		}
		
		// �Ӽ��ߵ� appendage�� �ɷ��ִ��� üũ��.
		// �Ӽ��ߵ��� �ɷ����� �ʴٸ� ���Ӽ� ��Ÿ�� �߻��
		local horizonAngle = 0.0;
		local verticalAngle = 0.0;	
		if (activeObject != NULL) {		
			local maxDistance = abs(activeObject.getXPos() - x);
			horizonAngle = sq_GetShootingHorizonAngle(activeObject, y, 0, searchAngleH, maxDistance);
			verticalAngle = sq_GetShootingVerticalAngle(activeObject, z, 0, searchAngleV, maxDistance, 300);
		}
			
		local appendage = obj.GetSquirrelAppendage("Character/ATMage/ElementalChange/ap_ATMage_Elemental_Change.nut");
		if (appendage && appendage.isValid()) {	
			local element = obj.getThrowElement();
			passiveObjectIndex = passiveObjectIndex + 1 + element;
		}
		
		obj.sq_StartWrite();
		obj.sq_WriteFloat(horizonAngle);
		obj.sq_WriteFloat(verticalAngle);
		obj.sq_WriteDword(bonusDamage);		
		obj.sq_SendCreatePassiveObjectPacket(passiveObjectIndex, 0, xPos, 1, zPos);
	}
}

// ���ݽ� ���� ��ü�� �����Ѵ�.
function onKeyFrameFlag_Attack(obj, flagIndex)
{
	if(!obj)
		return false;
	local isMyControlObject = obj.sq_IsMyControlObject();

	// �����Ҷ����� ���� ��ü�� �����Ѵ�.
	// �ɷ��ִ� ������ ���� ���� �Ǿ����� �� �нú� ������Ʈ�� �ٸ�(�Ӽ�)
	// 
	local xPos = 0, zPos = 0;

	local attackIndex = obj.getAttackIndex();
	if (attackIndex == 0)
	{
		xPos = 65, zPos = 59;
	}
	else if (attackIndex == 1)
	{
		xPos = 60, zPos = 71;
	}
	else if (attackIndex == 2)
	{
		xPos = 55, zPos = 58;
	}
	else if (attackIndex == 3)
	{
		xPos = 65, zPos = 36;
	}

	if (flagIndex == 1)
	{
		// ������ü�� �����Ѵ�.
		createMiniMagicCircle(obj, xPos, zPos, 0, 0); // direction 0:����  1:�밢��  2:�ϴ�
	}


	return true;
}

function playSoundForAtmageAttack(obj, elementalType, attackCount)
{	
	if(!obj)
		return;

	local elementalName = "MWSHOT_0";
	if (elementalType == ENUM_ELEMENT_FIRE)
		elementalName = "FIRESHOT_0";
	else if (elementalType == ENUM_ELEMENT_WATER)
		elementalName = "ICESHOT_0";
	else if (elementalType == ENUM_ELEMENT_DARK)
		elementalName = "DARKSHOT_0";
	else if (elementalType == ENUM_ELEMENT_LIGHT)
		elementalName = "LIGHTSHOT_0";
	
	obj.sq_PlaySound(elementalName + (attackCount+1));
}