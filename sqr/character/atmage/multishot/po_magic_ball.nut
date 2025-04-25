function setCustomData_po_ATMagicBallLightDownMultiShot(obj, receiveData)
{
	setCustomData_po_ATMagicBallLightDown(obj, receiveData);
}

function setCustomData_po_ATMagicBallDarkDownMultiShot(obj, receiveData)
{
	setCustomData_po_ATMagicBallDarkDown(obj, receiveData);
}

function setCustomData_po_ATMagicBallWaterDownMultiShot(obj, receiveData)
{
	setCustomData_po_ATMagicBallWaterDown(obj, receiveData);
}

function setCustomData_po_ATMagicBallFireDownMultiShot(obj, receiveData)
{
	setCustomData_po_ATMagicBallFireDown(obj, receiveData);
}

function setCustomData_po_ATMagicBallNoneDownMultiShot(obj, receiveData)
{
	setCustomData_po_ATMagicBallNoneDown(obj, receiveData);
}



// ������ü - ��Ӽ�
function setCustomData_po_ATMagicBallLightDown(obj, receiveData)
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
	
	// ��ƼŬ�� �̵� ������ ������
	obj.sq_SetMoveParticle("Particle/ATMagicBallLightMoveDown.ptl", horizonAngle, verticalAngle);
	local particleCreater = obj.sq_var.GetparticleCreaterMap("ATMagicBallLight", "PassiveObject/Character/Mage/Particle/ATMagicBallLightTail1.ptl", obj);
	particleCreater.Restart(0);
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallLightTailDown1.ptl");
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallLightTailDown2.ptl");
}


// ������ü - �ϼӼ�
function setCustomData_po_ATMagicBallDarkDown(obj, receiveData)
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

	// ��ƼŬ�� �̵� ������ ������
	obj.sq_SetMoveParticle("Particle/ATMagicBallDarkMoveDown.ptl", horizonAngle, verticalAngle);
	local particleCreater = obj.sq_var.GetparticleCreaterMap("ATMagicBallDark", "PassiveObject/Character/Mage/Particle/ATMagicBallDarkTail1.ptl", obj);
	particleCreater.Restart(0);
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallDarkTailDown1.ptl");
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallDarkTailDown2.ptl");
	//obj.sq_AddObjectParticleCreater("Particle/ATMagicBallDarkTailDown3.ptl");
}


// ������ü - ���Ӽ�
function setCustomData_po_ATMagicBallWaterDown(obj, receiveData)
{
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

	// ��ƼŬ�� �̵� ������ ������
	obj.sq_SetMoveParticle("Particle/ATMagicBallWaterMoveDown.ptl", horizonAngle, verticalAngle);
	local particleCreater = obj.sq_var.GetparticleCreaterMap("ATMagicBallWaterTailDown", "PassiveObject/Character/Mage/Particle/ATMagicBallWaterTail1.ptl", obj);
	particleCreater.Restart(0);
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallWaterTailDown1.ptl");
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallWaterTailDown2.ptl");
}


// ������ü - ȭ�Ӽ�
function setCustomData_po_ATMagicBallFireDown(obj, receiveData)
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
	
	// ��ƼŬ�� �̵� ������ ������
	obj.sq_SetMoveParticle("Particle/ATMagicBallFireMoveDown.ptl", horizonAngle, verticalAngle);
	local particleCreater = obj.sq_var.GetparticleCreaterMap("ATMagicBallNoneTail", "PassiveObject/Character/Mage/Particle/ATMagicBallFireTail1.ptl", obj);
	particleCreater.Restart(0);
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallFireTailDown1.ptl");
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallFireTailDown2.ptl");
}

// ������ü - ���Ӽ�
function setCustomData_po_ATMagicBallNoneDown(obj, receiveData)
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
	}
	
	// ��ƼŬ�� �̵� ������ ������
	obj.sq_SetMoveParticle("Particle/ATMagicBallNoneMoveDown.ptl", horizonAngle, verticalAngle);
	local particleCreater = obj.sq_var.GetparticleCreaterMap("ATMagicBallNoneTail", "PassiveObject/Character/Mage/Particle/ATMagicBallNoneTail.ptl", obj);
	particleCreater.Restart(0);
	obj.sq_AddObjectParticleCreater("Particle/ATMagicBallNoneTailDown.ptl");
	
	local mage = obj.getTopCharacter();
	if (!mage)
		return;
		
	// �⺻�� ���� ����
	mage.applyBasicAttackUp(sq_GetCurrentAttackInfo(obj),mage.getState());	
	sq_SetCurrentAttackInfo(obj,sq_GetCurrentAttackInfo(obj));
}



// ���� ���� ������(ȭ�Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallFireDownMultiShot(obj, damager, boundingBox, isStuck)
{
	if(!obj)
		return 0;
	createFireExplosion(obj, damager, boundingBox, isStuck, 24281);
	return 0;
}


// ���� ��Ÿ ������(ȭ�Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallFireDown(obj, damager, boundingBox, isStuck)
{
	if(!obj)
		return 0;

	createFireExplosion(obj, damager, boundingBox, isStuck, 24214);
	return 0;
}


// ���� ���� ������(���Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallWaterDownMultiShot(obj, damager, boundingBox, isStuck)
{
	if(!obj)
		return 0;
	// ��Ÿ ���Ӽ�
	createWaterExplosion(obj, damager, boundingBox, isStuck, 24282);
	return 0;
}


// ���� ��Ÿ ������(���Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallWaterDown(obj, damager, boundingBox, isStuck)
{
	if(!obj)
		return 0;
	// ��Ÿ ���Ӽ�
	createWaterExplosion(obj, damager, boundingBox, isStuck, 24215);
	return 0;
}


// ���� ���� ������(��Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallLightDownMultiShot(obj, damager, boundingBox, isStuck)
{
	if(!obj)
		return 0;
	// ��Ÿ ��Ӽ�
	createLightExplosion(obj, damager, boundingBox, isStuck, 24283);
	return 0;
}



// ���� ��Ÿ ������(��Ӽ�)�� ����.
// ���� ����
function onAttack_po_ATMagicBallLightDown(obj, damager, boundingBox, isStuck)
{
	if(!obj)
		return 0;
	// ��Ÿ ��Ӽ�
	createLightExplosion(obj, damager, boundingBox, isStuck, 24216);
	return 0;
}


