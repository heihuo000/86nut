getroottable()["IceOrbExCreatePos"] <- {};
getroottable()["IceOrbExCreatePos"] = [[28,28],	// 0
											[22,-24],	// 1
											[-21,0],	// 2
											[-5,-28],	// 3
											[-17,36],	// 4
											[8,-19],	// 5
											[-31,9],	// 6
											[-2,42],	// 7
											[-24,-24],	// 8
											[36,7]];	// 9



PO_ICE_ORB_ETC_ANI_READY	 <- 0;	// ��� 1 : ����, �غ�
PO_ICE_ORB_ETC_ANI_ATTACK	 <- 1;	// ��� 2 : ���ð���
PO_ICE_ORB_ETC_ANI_EXPLOSION <- 2;	// ��� 3 : ����	

PO_ICE_ORB_SUB_STATE_FLYING	<- 2; // ���ư�
PO_ICE_ORB_SUB_STATE_READY		<- 3; // �����غ�,����
PO_ICE_ORB_SUB_STATE_ATTACK	<- 4; // ����,���õ���
PO_ICE_ORB_SUB_STATE_EXPLOSION <- 5; // ����

//PO_ICE_ORB_VAR_TIME		<- 0; // ���ư��� �ð�
PO_ICE_ORB_VAR_SPEED	<- 1; // ���ư��� �ӵ�
PO_ICE_ORB_VAR_GAP		<- 2; // ���� ���� �ð�����
PO_ICE_ORB_VAR_POWER	<- 3; // ���� ���ݷ�
PO_ICE_ORB_VAR_MAXCOUNT <- 4; // ���� ���� �ִ� ����.
PO_ICE_ORB_VAR_TARGET_X <- 5; // ������ X��ǥ
PO_ICE_ORB_VAR_TARGET_Z <- 6; // ������ z��ǥ


PO_ICE_ORB_TIMER_FLYING <- 0; //���ư��� �ð�
PO_ICE_ORB_TIMER_ATTACK_GAP <- 1; //���� ���� �ð� ����
PO_ICE_ORB_TIMER_WAITING_END <- 2; //������ ���� ������ �ִ� ������ ���� �ð� ����

PO_ICE_ORB_CONST_PRICKLE_ANI_TIME <- 160; // ���� �ִ��� �� �ð�. : ������ ���ð� �������� ������ ���ð� ����������� ��� �ð�
PO_ICE_ORB_CONST_START_FRAME	  <- 6; //ó�� ������ ������

function setCustomData_po_ATIceOrbEx(obj, reciveData)
{
	if(!obj) return;	
	
	local speed			= reciveData.readDword();
	local gap			= reciveData.readDword();
	local pricklePower	= reciveData.readFloat();
	local lastPower		= reciveData.readFloat();
	local maxCount		= reciveData.readDword();		
	local direction		= reciveData.readWord();
	local targetPos		= reciveData.readDword();
			
	obj.setDirection(direction); // ������ �θ�ü�� �����ϰ�
	
	
	local var = obj.getVar();
	var.setInt(PO_ICE_ORB_VAR_SPEED		,speed);
	var.setInt(PO_ICE_ORB_VAR_GAP		,gap);
	var.setFloat(PO_ICE_ORB_VAR_POWER	,pricklePower);
	var.setInt(PO_ICE_ORB_VAR_MAXCOUNT	,maxCount);
	var.setInt(PO_ICE_ORB_VAR_TARGET_X	,targetPos);
	var.setInt(PO_ICE_ORB_VAR_TARGET_Z	,obj.getZPos());
	
	
	obj.sendStateOnlyPacket(PO_ICE_ORB_SUB_STATE_FLYING);
	
	// ��Ÿ ���ݷ� ����
	local currentAttackInfo = sq_GetCurrentAttackInfo(obj);
	sq_SetCurrentAttackBonusRate(currentAttackInfo, lastPower.tointeger());
	
}

//���� ���� �Լ�.
function createIcePrickleByIceOrbEx(obj, index, isFirst)
{
	// ���� ��ġ�� �ʰ� �Ǹ� �ʰ� �ȵǴ� ������ ����			
	local createPosMax = ::IceOrbExCreatePos.len();	
	index = index % createPosMax; 
	
	local pos = ::IceOrbExCreatePos[index];	
	local x = pos[0];	
	local z = pos[1];
	
	// �̹����� 1.5�� Ȯ�� �ߴ�. ���� ������ ������ġ�� 1.5�� ���Ѵ�.
	x = x.tofloat() * 1.0;
	z = z.tofloat() * 1.0;
	
	local var	= obj.getVar();
	local power = var.getFloat(PO_ICE_ORB_VAR_POWER);
	
	sq_BinaryStartWrite();		
	sq_BinaryWriteWord(index); // ���� ���� �ε���.
	sq_BinaryWriteFloat(power);
	sq_BinaryWriteBool(isFirst);			
	sq_SendCreatePassiveObjectPacket(obj, 24236, 0, x.tointeger(), 1, z.tointeger(), obj.getDirection());			
}

function onTimeEvent_po_ATIceOrbEx(obj, timeEventIndex, timeEventCount)
{	
	if(!obj)
		return false;
		
	if(timeEventIndex == PO_ICE_ORB_TIMER_ATTACK_GAP)
	{	
		if(!obj.isMyControlObject())
			return true;	//	Ÿ�̸Ӱ� true�̸� ȣ�� �ߴ�.
			
		local var = obj.getVar();
		local maxCount = var.getInt(PO_ICE_ORB_VAR_MAXCOUNT);
		if(timeEventCount < maxCount) //�ִ� ���� �̸��̸� ���� ����
		{	
			// ���� ���� �Լ� ��
			createIcePrickleByIceOrbEx(obj, timeEventCount + PO_ICE_ORB_CONST_START_FRAME, false);
			return false;	//	Ÿ�̸Ӱ� false�̸� ��� ȣ�� �Ѵ�.
		}		
		else {
			obj.setTimeEvent(PO_ICE_ORB_TIMER_WAITING_END, PO_ICE_ORB_CONST_PRICKLE_ANI_TIME ,1 , false); 			
			return true;	//	Ÿ�̸Ӱ� true�̸� ȣ�� �ߴ�.
		}
	}
	else if(timeEventIndex == PO_ICE_ORB_TIMER_WAITING_END)
	{
		obj.sendStateOnlyPacket(PO_ICE_ORB_SUB_STATE_EXPLOSION);		
		return true;	//	Ÿ�̸Ӱ� true�̸� ȣ�� �ߴ�.
	}
		
	return false;
}

function setState_po_ATIceOrbEx(obj, state, datas)
{
	if(!obj) return;
	
	if(state == PO_ICE_ORB_SUB_STATE_FLYING) 
	{
		local var = obj.getVar();
		local speed = var.getInt(PO_ICE_ORB_VAR_SPEED);	
			
		obj.sq_SetMoveParticle("Particle/ATIceOrbEx.ptl", 0.0, 0.0);
		sq_SetSpeedToMoveParticle(obj,0,speed);	
				
		// ���� ���� : �������� ���� �����Ѵ�.
		local dustTimeGap = 50.0 * (1000.0/speed.tofloat());
		
		sq_CreateParticle("PassiveObject/Character/Mage/Particle/ATIceOrbDust.ptl",obj,0,-1,0,true,dustTimeGap.tointeger(),500,100);		
	}		
	else if(state == PO_ICE_ORB_SUB_STATE_READY)
	{
		obj.sq_RemoveMoveParticle(); // �̵� ����.		
		setCurrentAnimationFromCutomIndex(obj, PO_ICE_ORB_ETC_ANI_READY); // �ִ� ��ü		
		local xPos = sq_GetVectorData(datas,0); // ������ x��ǥ.
		sq_SetCurrentPos(obj, xPos, obj.getYPos(), obj.getZPos());		
		
		sq_RemoveParticle("PassiveObject/Character/Mage/Particle/ATIceOrbDust.ptl",obj);
	}
	else if(state == PO_ICE_ORB_SUB_STATE_ATTACK)
	{	
		setCurrentAnimationFromCutomIndex(obj, PO_ICE_ORB_ETC_ANI_ATTACK); // �ִ� ��ü			
	}
	else if(state == PO_ICE_ORB_SUB_STATE_EXPLOSION)
	{	
		setCurrentAnimationFromCutomIndex(obj, PO_ICE_ORB_ETC_ANI_EXPLOSION); // �ִ� ��ü		
		obj.stopSound(3711);
	}
}

function procAppend_po_ATIceOrbEx(obj)
{
	if(!obj) return;
	
	local state = obj.getState();
	if(state == PO_ICE_ORB_SUB_STATE_FLYING)
	{		
		local var = obj.getVar();
		local targetXPos = var.getInt(PO_ICE_ORB_VAR_TARGET_X);
		local direction = obj.getDirection();
		if( (direction == ENUM_DIRECTION_LEFT && targetXPos > obj.getXPos()) 
			|| (direction == ENUM_DIRECTION_RIGHT && targetXPos < obj.getXPos()) ) {
			
			obj.sq_RemoveMoveParticle(); // �̵� ����.					
			targetXPos = obj.getXPos();
			sq_SetCurrentPos(obj, targetXPos, obj.getYPos(), obj.getZPos());
			
			// �̵� �� ���� ���·� �ѱ�.
			obj.sendStatePacket(PO_ICE_ORB_SUB_STATE_READY, obj.getXPos());
		}
	}
	else if(state == PO_ICE_ORB_SUB_STATE_READY)
	{		
		if(sq_GetCurrentFrameIndex(obj) < 1) {		
			local var = obj.getVar();
			local targetXPos = var.getInt(PO_ICE_ORB_VAR_TARGET_X);			
			local addX = sq_GetShuttleValue(0, 10, sq_GetObjectTime(obj), 30)-5;
			addX = addX >= 0 ? 2 : -2;

			sq_SetCurrentPos(obj, targetXPos + addX, obj.getYPos(), obj.getZPos());			
		}
	}
	
	if(state == PO_ICE_ORB_SUB_STATE_ATTACK || state == PO_ICE_ORB_SUB_STATE_READY)
	{
		if(PO_ICE_ORB_SUB_STATE_READY && sq_GetCurrentFrameIndex(obj) < 2)
			return;
		
		local var = obj.getVar();
		local x,z;
		local t = (sq_GetObjectTime(obj)/100)%4; //sq_GetShuttleValue(0, 4,sq_GetObjectTime(obj),80)%4;
		
		switch(t)
		{
			case 0 : x = 0; z = 2; break;
			case 1 : x = 0; z = -2; break;
			case 2 : x = -2; z = 0; break;
			case 3 : x = 2; z = 0; break;
			default : x = 0; z = 0; break;
		}
		
		x = x + var.getInt(PO_ICE_ORB_VAR_TARGET_X);
		z = z + var.getInt(PO_ICE_ORB_VAR_TARGET_Z);		
			
		
		sq_SetCurrentPos(obj, x, obj.getYPos(), z);

	}
	
}

function onKeyFrameFlag_po_ATIceOrbEx(obj, flagIndex)
{
	if(!obj)
		return false;

	if(obj.getState() == PO_ICE_ORB_SUB_STATE_READY)
	{
		if(flagIndex == 1)
		{			
			// ó���� �� ��½ ���·� ��� ����.
			for(local i = 0; i<PO_ICE_ORB_CONST_START_FRAME ; ++i) 
			{					
				createIcePrickleByIceOrbEx(obj, i, true);
			}
			
			local var	= obj.getVar();
			local gap	= var.getInt(PO_ICE_ORB_VAR_GAP);
			local power = var.getInt(PO_ICE_ORB_VAR_POWER);
			obj.setTimeEvent(PO_ICE_ORB_TIMER_ATTACK_GAP, gap, 999, true); 	
			obj.sq_PlaySound("ICEORB_THORN_LOOP",3711);		
		}
	}
	else if(obj.getState() == PO_ICE_ORB_SUB_STATE_EXPLOSION)
	{
		if(flagIndex == 2)
		{
			sq_CreateParticleByGlobal(PARTICLE_CREATER_WATER_HIT_LIGHT,	// ENUM_PARTICLE_CREATER
										obj,		// CNRDObject* master,
										0,			//int x,
										-1,			//int y,
										0,			//int z,
										true,		//bool posistionFromMaster,
										30,			//int timeGap,
										150,		//int maxTime,
										5);		//int maxCount		
										
			sq_CreateParticleByGlobal(PARTICLE_CREATER_WATER_HIT_ICE,	// ENUM_PARTICLE_CREATER
										obj,		// CNRDObject* master,
										0,			//int x,
										-1,			//int y,
										0,			//int z,
										true,		//bool posistionFromMaster,
										30,			//int timeGap,
										150,		//int maxTime,
										5);		//int maxCount		
										
			sq_CreateParticleByGlobal(PARTICLE_CREATER_WATER_HIT,	// ENUM_PARTICLE_CREATER
										obj,		// CNRDObject* master,
										0,			//int x,
										0,			//int y,
										0,			//int z,
										true,		//bool posistionFromMaster,
										30,			//int timeGap,
										150,		//int maxTime,
										2);			//int maxCount			
		}	
	}
	
	return true;	
}

function onEndCurrentAni_po_ATIceOrbEx(obj)
{
	if(!obj) return;
	
	if(obj.getState() == PO_ICE_ORB_SUB_STATE_READY)
	{
		obj.sendStateOnlyPacket(PO_ICE_ORB_SUB_STATE_ATTACK);
	}
	else if(obj.getState() == PO_ICE_ORB_SUB_STATE_EXPLOSION) 
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}	
}
