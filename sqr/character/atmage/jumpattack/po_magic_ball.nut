VAR_IS_ELEMENTAL_RAIN_PASSIVE_OBJECT	<- 0;


function setCustomData_po_ATMagicBallLightJumpMultiShot(obj, receiveData)
{
	setCustomData_po_ATMagicBallLightJump(obj, receiveData);
}

function setCustomData_po_ATMagicBallDarkJumpMultiShot(obj, receiveData)
{
	setCustomData_po_ATMagicBallDarkJump(obj, receiveData);
}

function setCustomData_po_ATMagicBallWaterJumpMultiShot(obj, receiveData)
{
	setCustomData_po_ATMagicBallWaterJump(obj, receiveData);
}

function setCustomData_po_ATMagicBallFireJumpMultiShot(obj, receiveData)
{
	setCustomData_po_ATMagicBallFireJump(obj, receiveData);
}

function setCustomData_po_ATMagicBallNoneJumpMultiShot(obj, receiveData)
{
	setCustomData_po_ATMagicBallNoneJump(obj, receiveData);
}






// ������ü - ��Ӽ�
function setCustomData_po_ATMagicBallLightJump(obj, receiveData)
{
	if(!obj)
		return;
		
	local horizonAngle = receiveData.readFloat();
	local verticalAngle = receiveData.readFloat();
	if (sq_BinaryGetReadSize() < receiveData.getSize())
	{
		// ������Ż ���� �̶��, ���ݷ��� �����س��ٰ� �����Ҷ� ����ϵ��� �Ѵ�.
		
		// ���ݷ� ����
		local attackBonusRate = receiveData.readDword();
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		sq_SetCurrentAttackInfo(obj,sq_GetCurrentAttackInfo(obj));
	}
	
	if (sq_BinaryGetReadSize() < receiveData.getSize())
	{
		// ������Ż ���ο��� ������ ������Ʈ
		local flag = receiveData.readDword();
		local var = obj.getVar();
		
		var.setInt(VAR_IS_ELEMENTAL_RAIN_PASSIVE_OBJECT, flag);
	}
	
	// ũ�δ�Ŭ �����ۿ� ���ؼ� �߻簢���� �����
	local mage = obj.getTopCharacter();
	local angle = sq_GetIntData(mage, SKILL_ELEMENTAL_RAIN, 5);
	verticalAngle = verticalAngle - angle;
	
	
	// ��ƼŬ�� �̵� ������ ������
	obj.sq_SetMoveParticle("Particle/ATMagicBallLightMoveJump.ptl", horizonAngle, verticalAngle);
	local particleCreater = obj.sq_var.GetparticleCreaterMap("ATMagicBallLight", "PassiveObject/Character/Mage/Particle/ATMagicBallLightTail1.ptl", obj);
	particleCreater.Restart(0);
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallLightTailJump1.ptl");
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallLightTailJump2.ptl");
}

function procAppend_po_ATMagicBallLightJump(obj)
{
	// ������ü - ��Ӽ� (������Ż ����)
	local var = obj.getVar();
	if (var.getInt(VAR_IS_ELEMENTAL_RAIN_PASSIVE_OBJECT) > 0)
	{
		if (obj.isMyControlObject() && obj.getZPos() <= 16)
		{
			createLightExplosion(obj, null, null, false, 24283);
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
}



// ������ü - �ϼӼ�
function setCustomData_po_ATMagicBallDarkJump(obj, receiveData)
{
	if(!obj)
		return 0;
		
	local horizonAngle = receiveData.readFloat();
	local verticalAngle = receiveData.readFloat();
	local attackBonusRate = 0;
	if (sq_BinaryGetReadSize() < receiveData.getSize())
	{
		// ���ݷ� ����
		attackBonusRate = receiveData.readDword();
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		sq_SetCurrentAttackInfo(obj,sq_GetCurrentAttackInfo(obj));
	}

	local mage = obj.getTopCharacter();
	if (!mage)
		return 0;
		
	// ũ�δ�Ŭ �����ۿ� ���ؼ� �߻簢���� �����
	local angle = sq_GetIntData(mage, SKILL_ELEMENTAL_RAIN, 5);
	verticalAngle = verticalAngle - angle;

	local skill = sq_GetSkill(mage, SKILL_ELEMENTAL_CHANGE);
	local skillLevel = sq_GetSkillLevel(mage, SKILL_ELEMENTAL_CHANGE);
	attackBonusRate = sq_GetAttackBonusRate(skill, 6, 1.0) + attackBonusRate;

	sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackBonusRate);
	
	// ��ƼŬ�� �̵� ������ ������
	obj.sq_SetMoveParticle("Particle/ATMagicBallDarkMoveJump.ptl", horizonAngle, verticalAngle);
	local particleCreater = obj.sq_var.GetparticleCreaterMap("ATMagicBallDark", "PassiveObject/Character/Mage/Particle/ATMagicBallDarkTail1.ptl", obj);
	particleCreater.Restart(0);
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallDarkTailJump1.ptl");
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallDarkTailJump2.ptl");
	//obj.sq_AddObjectParticleCreater("Particle/ATMagicBallDarkTailJump3.ptl");
}


// ������ü - ���Ӽ�
function setCustomData_po_ATMagicBallWaterJump(obj, receiveData)
{
	if(!obj)
		return;
		
	local horizonAngle = receiveData.readFloat();
	local verticalAngle = receiveData.readFloat();
	
	if (sq_BinaryGetReadSize() < receiveData.getSize())
	{
		// ���ݷ� ����
		local attackBonusRate = receiveData.readDword();
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		sq_SetCurrentAttackInfo(obj,sq_GetCurrentAttackInfo(obj));
	}
	
	if (sq_BinaryGetReadSize() < receiveData.getSize())
	{
		// ������Ż ���ο��� ������ ������Ʈ
		local flag = receiveData.readDword();
		local var = obj.getVar();
		
		var.setInt(VAR_IS_ELEMENTAL_RAIN_PASSIVE_OBJECT, flag);
	}
	
	// ũ�δ�Ŭ �����ۿ� ���ؼ� �߻簢���� �����
	local mage = obj.getTopCharacter();
	local angle = sq_GetIntData(mage, SKILL_ELEMENTAL_RAIN, 5);
	verticalAngle = verticalAngle - angle;
	

	// ��ƼŬ�� �̵� ������ ������
	obj.sq_SetMoveParticle("Particle/ATMagicBallWaterMoveJump.ptl", horizonAngle, verticalAngle);
	local particleCreater = obj.sq_var.GetparticleCreaterMap("ATMagicBallWaterTailJump", "PassiveObject/Character/Mage/Particle/ATMagicBallWaterTail1.ptl", obj);
	particleCreater.Restart(0);
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallWaterTailJump1.ptl");
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallWaterTailJump2.ptl");
}


function procAppend_po_ATMagicBallWaterJump(obj)
{
	// ������ü - ���Ӽ� (������Ż ����)
	local var = obj.getVar();
	if (var.getInt(VAR_IS_ELEMENTAL_RAIN_PASSIVE_OBJECT) > 0)
	{
		if (obj.isMyControlObject() && obj.getZPos() <= 16)
		{
			createWaterExplosion(obj, null, null, false, 24282);
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
}


// ������ü - ȭ�Ӽ�
function setCustomData_po_ATMagicBallFireJump(obj, receiveData)
{
	if(!obj)
		return;

	local horizonAngle = receiveData.readFloat();
	local verticalAngle = receiveData.readFloat();

	if (sq_BinaryGetReadSize() < receiveData.getSize())
	{
		// ���ݷ� ����
		local attackBonusRate = receiveData.readDword();
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		sq_SetCurrentAttackInfo(obj,sq_GetCurrentAttackInfo(obj));
	}
	
	if (sq_BinaryGetReadSize() < receiveData.getSize())
	{
		// ������Ż ���ο��� ������ ������Ʈ
		local flag = receiveData.readDword();
		local var = obj.getVar();
		
		var.setInt(VAR_IS_ELEMENTAL_RAIN_PASSIVE_OBJECT, flag);
	}
	
	// ũ�δ�Ŭ �����ۿ� ���ؼ� �߻簢���� �����
	local mage = obj.getTopCharacter();
	local angle = sq_GetIntData(mage, SKILL_ELEMENTAL_RAIN, 5);
	verticalAngle = verticalAngle - angle;
	
	// ��ƼŬ�� �̵� ������ ������
	obj.sq_SetMoveParticle("Particle/ATMagicBallFireMoveJump.ptl", horizonAngle, verticalAngle);
	local particleCreater = obj.sq_var.GetparticleCreaterMap("ATMagicBallNoneTail", "PassiveObject/Character/Mage/Particle/ATMagicBallFireTail1.ptl", obj);
	particleCreater.Restart(0);
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallFireTailJump1.ptl");
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallFireTailJump2.ptl");
}


function procAppend_po_ATMagicBallFireJump(obj)
{
	// ������ü - ȭ�Ӽ� (������Ż ����)
	local var = obj.getVar();
	if (var.getInt(VAR_IS_ELEMENTAL_RAIN_PASSIVE_OBJECT) > 0)
	{
		if (obj.isMyControlObject() && obj.getZPos() <= 16)
		{
			createFireExplosion(obj, null, null, false, 24281);
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
}


// ������ü - ���Ӽ�
function setCustomData_po_ATMagicBallNoneJump(obj, receiveData)
{
	if(!obj)
		return;
		
	local horizonAngle = receiveData.readFloat();
	local verticalAngle = receiveData.readFloat();

	if (sq_BinaryGetReadSize() < receiveData.getSize())
	{
		// ���ݷ� ����
		local attackBonusRate = receiveData.readDword();
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		sq_SetCurrentAttackInfo(obj,sq_GetCurrentAttackInfo(obj));
	}
	
	// ũ�δ�Ŭ �����ۿ� ���ؼ� �߻簢���� �����
	local mage = obj.getTopCharacter();
	if (!mage) return;
	
	local angle = sq_GetIntData(mage, SKILL_ELEMENTAL_RAIN, 5);
	verticalAngle = verticalAngle - angle;
	
	// ��ƼŬ�� �̵� ������ ������
	obj.sq_SetMoveParticle("Particle/ATMagicBallNoneMoveJump.ptl", horizonAngle, verticalAngle);
	local particleCreater = obj.sq_var.GetparticleCreaterMap("ATMagicBallNoneTail", "PassiveObject/Character/Mage/Particle/ATMagicBallNoneTail.ptl", obj);
	particleCreater.Restart(0);
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallNoneTailJump.ptl");
		
	// �⺻�� ���� ����
	mage.applyBasicAttackUp(sq_GetCurrentAttackInfo(obj),mage.getState());	
	sq_SetCurrentAttackInfo(obj,sq_GetCurrentAttackInfo(obj));
}




// ���� ���� ������(ȭ�Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallFireJumpMultiShot(obj, damager, boundingBox, isStuck)
{	// ���� ������ ȭ�Ӽ�
	createFireExplosion(obj, damager, boundingBox, isStuck, 24281);
	return 0;
}


// ���� ��Ÿ ������(ȭ�Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallFireJump(obj, damager, boundingBox, isStuck)
{
	// ��Ÿ ȭ�Ӽ�
	createFireExplosion(obj, damager, boundingBox, isStuck, 24214);
	return 0;
}


// ���� ���� ������(���Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallWaterJumpMultiShot(obj, damager, boundingBox, isStuck)
{
	createWaterExplosion(obj, damager, boundingBox, isStuck, 24282);
	return 0;
}


// ���� ��Ÿ ������(���Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallWaterJump(obj, damager, boundingBox, isStuck)
{
	createWaterExplosion(obj, damager, boundingBox, isStuck, 24215);
	return 0;
}

// ���� ���� ������(��Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallLightJumpMultiShot(obj, damager, boundingBox, isStuck)
{	// ��Ÿ ��Ӽ�
	createLightExplosion(obj, damager, boundingBox, isStuck, 24283);
	return 0;
}


// ���� ��Ÿ ������(��Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallLightJump(obj, damager, boundingBox, isStuck)
{	// ��Ÿ ��Ӽ�
	createLightExplosion(obj, damager, boundingBox, isStuck, 24216);
	return 0;
}


