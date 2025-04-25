ICEAREA_RAIN_VAR_SIZE  <- 1; // ���� ũ��
ICEAREA_RAIN_VAR_IS_EXPLOSION  <- 2; // ���� ���� ����


function setCustomData_po_ATIceAreaIceRain(obj,receiveData)
{		
	if(!obj)
		return;

	local iceRate	  = receiveData.readDword(); // ���� Ȯ��
	local iceLevel	  = receiveData.readDword(); // ���� ����
	local iceTime	  = receiveData.readDword(); // ���� �ð�
	local iceSizeRate = receiveData.readFloat(); // ���� ����ũ��
	
	local mage = obj.getTopCharacter();
	mage = sq_ObjectToSQRCharacter(mage);	
	if (mage)
	{	
		local attackPower = mage.sq_GetBonusRateWithPassive(SKILL_ICE_AREA , STATE_ICE_AREA, 1, 1.0);	
		sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackPower);
	}
	
	
	local attackInfo = sq_GetCurrentAttackInfo(obj);
	if (!attackInfo) return;
	sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_FREEZE, iceRate, iceLevel, iceTime);		
	
	local var = obj.getVar();
	var.setFloat(ICEAREA_RAIN_VAR_SIZE,iceSizeRate);
	var.setBool(ICEAREA_RAIN_VAR_IS_EXPLOSION,false);
}


function procAppend_po_ATIceAreaIceRain(obj)
{
	if(!obj)
		return;
	local var = obj.getVar();
	local isExplosion = var.getBool(ICEAREA_RAIN_VAR_IS_EXPLOSION);
	
	if(obj.getZPos() <= 1 && !isExplosion) {
		local explosionAni = obj.getCustomAnimation(0);		
		obj.setCurrentAnimation(explosionAni);	
		sq_CreateParticle("PassiveObject/Character/Mage/Particle/ATIceRain.ptl", obj, 0, 0, 0, true, 30, 0,2);	
			
		local iceSizeRate = var.getFloat(ICEAREA_RAIN_VAR_SIZE);	
		local ani		  = obj.getCurrentAnimation();			
	
		ani.setImageRate(iceSizeRate,iceSizeRate);
		obj.sq_RemoveMoveParticle();
		var.setBool(ICEAREA_RAIN_VAR_IS_EXPLOSION,true);
	}
}

function onKeyFrameFlag_po_ATIceAreaIceRain(obj,flagIndex)
{			
	if(!obj)
		return false;
	if(flagIndex == 1) {
		local var = obj.getVar();
		local iceSizeRate = var.getFloat(ICEAREA_RAIN_VAR_SIZE);	
		local ani = obj.getCurrentAnimation();					
		ani.setImageRate(iceSizeRate,iceSizeRate);
	}
	
	if(flagIndex == 2) {
		obj.sq_SetMoveParticle("Particle/ATIceAreaRain.ptl", 0.0, 0.0);
		sq_CreateParticle("PassiveObject/Character/Mage/Particle/ATIceRainTail1.ptl",obj,0,0,50,true,35,100,8);
		sq_CreateParticle("PassiveObject/Character/Mage/Particle/ATIceRainTail2.ptl",obj,0,0,50,true,35,100,8);
	}
	return true;
}

function onEndCurrentAni_po_ATIceAreaIceRain(obj)
{
	if(!obj)
		return;

	local explosionAni = obj.getCustomAnimation(0);
	local currentAni = obj.getCurrentAnimation();
	
	if(sq_IsSameAni(explosionAni,currentAni))
	{
		if(obj.isMyControlObject())
		{
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
}

