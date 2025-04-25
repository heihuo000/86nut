getroottable()["iceAreaRainCreatePos"] <- {};
getroottable()["iceAreaRainCreatePos"] = [[26,-30],[91,15],[-66,-5],[114,-39],[-37,-34],[-109,5],
							  [26,20],[-20,4],[134,-12],[-92,-42],[-44,25],[-120,-23],[-23,-52],[62,-55],
							  [55,1],[-10,-13],[84,-24]];
				
ICEAREA_VAR_AREA_SIZE <- 0;	// ������ ũ����						  
ICEAREA_VAR_LIFE_TIME <- 1; // ������ �ð�
ICEAREA_VAR_ICE_COUNT <- 2; // ���� ���� ����
ICEAREA_VAR_ICE_RATE  <- 3; // ���� Ȯ��
ICEAREA_VAR_ICE_LEVEL <- 4; // ���᷹��
ICEAREA_VAR_ICE_TIME  <- 5; // ����ð�

function setCustomData_po_ATIceArea(obj,receiveData)
{		
	if(!obj)
		return;

	local areaSizeRate= receiveData.readFloat();
	local lifeTime	  = receiveData.readDword();
	local iceRainCount= receiveData.readDword();
	local iceRate	  = receiveData.readDword();
	local iceLevel	  = receiveData.readDword();
	local iceTime	  = receiveData.readDword();	
	
	local var = obj.getVar();
	var.setFloat(ICEAREA_VAR_AREA_SIZE,areaSizeRate);
	var.setInt(ICEAREA_VAR_LIFE_TIME,lifeTime);
	var.setInt(ICEAREA_VAR_ICE_COUNT,iceRainCount);
	var.setInt(ICEAREA_VAR_ICE_RATE,iceRate);
	var.setInt(ICEAREA_VAR_ICE_LEVEL,iceLevel);
	var.setInt(ICEAREA_VAR_ICE_TIME,iceTime);	
}


function onTimeEvent_po_ATIceArea(obj, timeEventIndex, timeEventCount)
{		
	if(!obj)
		return false;
		
	if(timeEventIndex == 0) {
		local var = obj.getVar();
		local areaSizeRate = var.getFloat(ICEAREA_VAR_AREA_SIZE);
		local iceRainCount = var.getInt(ICEAREA_VAR_ICE_COUNT);
		local iceRate	   = var.getInt(ICEAREA_VAR_ICE_RATE);
		local iceLevel	   = var.getInt(ICEAREA_VAR_ICE_LEVEL);
		local iceTime	   = var.getInt(ICEAREA_VAR_ICE_TIME);

		if(timeEventCount < iceRainCount)
		{
			local currentIndex = timeEventCount%::iceAreaRainCreatePos.len();
			local pos = ::iceAreaRainCreatePos[currentIndex];	
			local x = pos[0];
			local y = pos[1];
			local iceSizeRate = sq_getRandom(80,110)*0.01; //���� ���� ũ��			
			
			if(areaSizeRate != 1.0)
			{
				x = x * areaSizeRate;
				y = y * areaSizeRate;
			}
			
			if(obj.isMyControlObject())
			{
				sq_BinaryStartWrite();			
				sq_BinaryWriteDword(iceRate);		// ���� Ȯ��
				sq_BinaryWriteDword(iceLevel);		// ���� ����
				sq_BinaryWriteDword(iceTime);		// ���� �ð�
				sq_BinaryWriteFloat(iceSizeRate);	// ���� ���� ũ��
				
				sq_SendCreatePassiveObjectPacket(obj,24226, 0, x.tointeger(), y.tointeger(), 250, ENUM_DIRECTION_NEUTRAL);
			}
		}	
		else
		{			
			obj.setTimeEvent(1,500,1,false);
			return true; // Ÿ�̸� �ݹ� �ߴ�
		}
	}
	else if(timeEventIndex == 1) {
		//������� ���������� ����
		local ani = obj.getCurrentAnimation();
		if(ani) {
			ani.setCurrentFrameWithChildLayer(11);
		}
	}
	return false;	
} 



function onKeyFrameFlag_po_ATIceArea(obj,flagIndex)
{		 
	if(!obj)
		return false;

	local var = obj.getVar();
	if(flagIndex == 1) {
		local sizeRate = var.getFloat(ICEAREA_VAR_AREA_SIZE);//������ ũ����
		if(sizeRate != 1.0) {
			local ani = obj.getCurrentAnimation();				
			ani.setImageRateFromOriginal(sizeRate,sizeRate);
		}		
	}
	if(flagIndex == 2) {
		local var = obj.getVar();
		local lifeTime	   = var.getInt(ICEAREA_VAR_LIFE_TIME);
		local iceRainCount = var.getInt(ICEAREA_VAR_ICE_COUNT);
				
		local createGap = lifeTime/iceRainCount;
		obj.setTimeEvent(0,createGap.tointeger(),500,false); 
	}	
	return true;
}

function onEndCurrentAni_po_ATIceArea(obj)
{
	if(!obj)
		return;

	if(obj.isMyControlObject())
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
}

