

// state�� �����ϰ� ó������ ������ �˴ϴ�. ���� ���ҽ��� �����մϴ�. 
function onSetState_ATMageDashAttack(obj, state, datas, isResetTimer)
{	
	if (!obj)
		return;

	local skillLevel = obj.sq_GetSkillLevel(SKILL_ICE_ELEMENTAL_ATTACK);

	// ����ü�� �����?
	if (skillLevel > 0)
	{
		local isPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL) || sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL);
		
		// ���?���ݽ�, ������ ���� ó��
		if(!isPress)
			obj.sq_SetStaticMoveInfo(0, 450, 450, false, -500, true);
		
		// �⺻�� ���� ����	
		obj.applyBasicAttackUp(sq_GetCurrentAttackInfo(obj),obj.getState());		
		sq_SetCurrentAttackInfo(obj, sq_GetCurrentAttackInfo(obj));
	}
	else
	{
		// ���?���ݽ�, ������ ���� ó��
		obj.sq_SetStaticMoveInfo(0, 450, 450, false, -500, true);
	}

}

// ���?���ݽ� ���� ��ü�� �����Ѵ�.
function onKeyFrameFlag_ATMageDashAttack(obj, flagIndex)
{
	if(!obj)
		return false;
	if (flagIndex == 1)
	{
		// ������ü�� �����Ѵ�.
		if (obj.sq_IsMyControlObject())
		{
			// ������ �нú� ������Ʈ�� �ε���
			local passiveObjectIndex = 24261;
			local power = -25;
			// ����ü ��ų�� ����
			local skillLevel = sq_GetSkillLevel(obj, SKILL_ELEMENTAL_CHANGE);

			// �Ӽ��ߵ� appendage�� �ɷ��ִ��� üũ��.
			local element = obj.getThrowElement();
			
			// �Ӽ��ߵ��� �ɷ����� �ʴٸ� ���Ӽ� ��Ÿ�� �߻��?
			local appendage = obj.GetSquirrelAppendage("Character/ATMage/ElementalChange/ap_ATMage_Elemental_Change.nut");
			if (!appendage || !appendage.isValid())
				element = ENUM_ELEMENT_NONE;

			if (element != ENUM_ELEMENT_NONE)
			{
				if (element == ENUM_ELEMENT_FIRE)
					passiveObjectIndex = 24262;
				else if (element == ENUM_ELEMENT_WATER)
					passiveObjectIndex = 24263;
				else if (element == ENUM_ELEMENT_DARK)
					passiveObjectIndex = 24264;
				else if (element == ENUM_ELEMENT_LIGHT)
					passiveObjectIndex = 24265;
			}
			else 
			{
				//�⺻�� ����
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj),power);
				obj.applyBasicAttackUp(sq_GetCurrentAttackInfo(obj),obj.getState());					
				power = sq_GetCurrentAttackBonusRate(obj);
			}
			
			obj.sq_StartWrite();
			obj.sq_WriteWord(80);	// ������ ������(%)
			obj.sq_WriteWord(power);	// ������ ���ݷ�(%)
			obj.sq_SendCreatePassiveObjectPacket(passiveObjectIndex, 0, 100, 1, 55);
		}
	}

	return true;
}
