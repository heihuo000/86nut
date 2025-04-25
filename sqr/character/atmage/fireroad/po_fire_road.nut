

// ********** ATFireRoad1 ********** 
function setCustomData_po_ATFireRoad1(obj, receiveData)
{
	local pauseTime = receiveData.readWord();
	local damage1 = receiveData.readDword();
	local damage2 = receiveData.readDword();
	local maxHit = receiveData.readByte();
	local number = receiveData.readByte();		// ������ ��°��
	local sizeRate = receiveData.readWord();	// Ȯ����
	
	sq_SetPause(obj, PAUSETYPE_OBJECT, pauseTime);
	local attackInfo = sq_GetCurrentAttackInfo(obj);
	
	sq_SetCurrentAttackBonusRate(attackInfo, damage1);
	obj.sq_var.setInt(0, damage2);

	obj.sq_SetMaxHitCounterPerObject(maxHit);
	obj.sq_PlaySound("FIREROAD_01");	
	
	// ���̾�ε� ������ Ȯ���ϴ� �ڵ�
	// �����۰� �����Ǵ� ���
	if (sizeRate != 100)
	{
		local animation = sq_GetCurrentAnimation(obj);
		if (!animation) return;
		local size = sizeRate.tofloat() / 100.0;
		animation.setImageRateFromOriginal(size, size);
		animation.setAutoLayerWorkAnimationAddSizeRate(size);
		sq_SetAttackBoundingBoxSizeRate(animation, size, size, size);
	}
}


function procAppend_po_ATFireRoad1(obj)
{
	local animation = sq_GetCurrentAnimation(obj);
	local frameIndex = sq_GetAnimationFrameIndex(animation);

	// �θ� ������Ʈ�� ���ؼ�, skillSubState�� 0�� �ƴ϶��, 2��° ���� ���������� ������.
	// Ȥ�� �θ��� state�� STATE_FIRE_ROAD�� �ƴ϶�� 2��° �������������� ������
	if (frameIndex == 15)
	{
		local state = obj.sq_GetParentState();
		local skillSubState = obj.sq_GetParentSkillSubState();

		if (skillSubState == 1 || state == -1 || state != STATE_FIRE_ROAD)
		{
			local attackInfo = sq_GetCustomAttackInfo(obj, 0);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			// �����س��� �������� ������
			local damage = obj.sq_var.getInt(0);	
			attackInfo = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackBonusRate(attackInfo, damage);
			sq_SetAnimationCurrentTimeByFrame(animation, 16, true);
			obj.sq_PlaySound("FIREROAD_02");
		}
	}
}

function onKeyFrameFlag_po_ATFireRoad1(obj)
{
}


// ���ϸ��̼��� �����ٸ� �����Ѵ�
function onEndCurrentAni_po_ATFireRoad1(obj)
{
	if(!obj)
		return;
	if(obj.isMyControlObject())
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
}












// ********** ATFireRoad2 ********** 
function setCustomData_po_ATFireRoad2(obj, receiveData)
{
	local pauseTime = receiveData.readWord();
	local damage1 = receiveData.readDword();
	local damage2 = receiveData.readDword();
	local maxHit = receiveData.readByte();
	local number = receiveData.readByte();		// ������ ��°��
	local sizeRate = receiveData.readWord();	// Ȯ����
		
	sq_SetPause(obj, PAUSETYPE_OBJECT, pauseTime);
	local attackInfo = sq_GetCurrentAttackInfo(obj);
	
	sq_SetCurrentAttackBonusRate(attackInfo, damage1);
	obj.sq_var.setInt(0, damage2);

	obj.sq_SetMaxHitCounterPerObject(maxHit);
	obj.sq_PlaySound("FIREROAD_01");
	
	
	// ���̾�ε� ������ Ȯ���ϴ� �ڵ�
	// �����۰� �����Ǵ� ���
	if (sizeRate != 100)
	{
		local animation = sq_GetCurrentAnimation(obj);
		if (!animation) return;
		local size = sizeRate.tofloat() / 100.0;
		animation.setImageRateFromOriginal(size, size);
		animation.setAutoLayerWorkAnimationAddSizeRate(size);
		sq_SetAttackBoundingBoxSizeRate(animation, size, size, size);
	}
}


function procAppend_po_ATFireRoad2(obj)
{	
	local animation = sq_GetCurrentAnimation(obj);
	local frameIndex = sq_GetAnimationFrameIndex(animation);
	

	// �θ� ������Ʈ�� ���ؼ�, skillSubState�� 0�� �ƴ϶��, 2��° ���� ���������� ������.
	// Ȥ�� �θ��� state�� STATE_FIRE_ROAD�� �ƴ϶�� 2��° �������������� ������
	if (frameIndex == 15)	{
		local state = obj.sq_GetParentState();
		local skillSubState = obj.sq_GetParentSkillSubState();

		if (skillSubState == 1 || state == -1 || state != STATE_FIRE_ROAD)
		{
			local attackInfo = sq_GetCustomAttackInfo(obj, 0);
			sq_SetCurrentAttackInfo(obj, attackInfo);

			// �����س��� �������� ������
			local damage = obj.sq_var.getInt(0);	
			attackInfo = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackBonusRate(attackInfo, damage);
			sq_SetAnimationCurrentTimeByFrame(animation, 16, true);
			obj.sq_PlaySound("FIREROAD_02");
		}
	}
}

function onKeyFrameFlag_po_ATFireRoad2(obj)
{
}


// ���ϸ��̼��� �����ٸ� �����Ѵ�
function onEndCurrentAni_po_ATFireRoad2(obj)
{
	sq_SendDestroyPacketPassiveObject(obj);
}