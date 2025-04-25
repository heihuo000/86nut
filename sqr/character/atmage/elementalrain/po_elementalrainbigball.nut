// ������ü - ��Ӽ�
function setCustomData_po_ATElementalRainBigBall(obj, receiveData)
{
	if(!obj)
		return;
	// ������ ū �������� ���ݷ� ����
	local attackBonusRate = receiveData.readDword();
	local attackInfo = sq_GetCurrentAttackInfo(obj);
	local mage = obj.getTopCharacter();
	if (mage)
		attackInfo.setElement(mage.getThrowElement());
		
	sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);	
	sq_SetCurrentAttackInfo(obj,attackInfo);
	
		
	// ũ�δ�Ŭ �����ۿ� ���ؼ� �߻簢���� �����
	local mage = obj.getTopCharacter();
	if (!mage) return;
	
	local angle = sq_GetIntData(mage, SKILL_ELEMENTAL_RAIN, 6);
	
	// ��ƼŬ�� �̵� ����
	obj.sq_SetMoveParticle("Particle/ATElementalRainBigBall.ptl", 0.0, -angle.tofloat());
}

function onAttack_po_ATElementalRainBigBall(obj, damager, boundingBox, isStuck)
{
	if (!obj)
		return 0;
	return 0;
}


function procAppend_po_ATElementalRainBigBall(obj)
{
	if(!obj)
		return;
	if (sq_GetZPos(obj) < 16)
	{
		if (obj.isMyControlObject())
		{
			local mage = obj.getTopCharacter();
			mage = sq_ObjectToSQRCharacter(mage);
			
			if (mage)
			{
				// ������ ���� ������ ������
				local skill = sq_GetSkill(mage, SKILL_ELEMENTAL_RAIN);
				local attackBonusRate = mage.sq_GetBonusRateWithPassive(SKILL_ELEMENTAL_RAIN, STATE_ELEMENTAL_RAIN, 2, 1.0);
				
				
				// �����ۿ� ���� ��� �߰�
				// ������ ������ ����� ������ �� �ִ� �����
				local sizeRate = sq_GetIntData(mage, SKILL_ELEMENTAL_RAIN, 4);
				
				// ������ ���� ������Ʈ�� �����Ѵ�.
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(attackBonusRate);
				sq_BinaryWriteWord(sizeRate);
				sq_SendCreatePassiveObjectPacket(obj, 24220, 0, 0, 1, 0, obj.getDirection());
			}
			
			// ������Ʈ �Ҹ�
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
}

