function checkExecutableSkill_HolongLight(obj)
{
	if(!obj) return false;	
	local count = obj.getMyPassiveObjectCount(24222);
	
	if(count > 0) {
		local loadSlot = obj.sq_GetSkillLoad(SKILL_HOLONG_LIGHT);
		if(!loadSlot) {
			return false;
		}
		
		local isCool = loadSlot.isCooling();
		if(!isCool) {			
			// ������ �ִ� ȣ�պ� �߿� �̹� �߻�� ��ü�� �ƴϸ� �߻��Ѵ�.
			local holongObj;
			for(local i=0;i<count;++i) {
				holongObj = obj.getMyPassiveObject(24222,i);				
				if(holongObj && holongObj.getState() < HOLONG_LIGHT_STATE_ATTACK) {
					holongObj.sendStateOnlyPacket(HOLONG_LIGHT_STATE_ATTACK);	
					local loadSlot = obj.sq_GetSkillLoad(SKILL_HOLONG_LIGHT);	
					loadSlot.use(1);
					break;
				}
			}
			
			// ������ �������� ã�� ���� �κ�
			local buffCount = 0;
			for(local i=0;i<count;++i) {
				local passiveObj = obj.getMyPassiveObject(24222,i);
				if(passiveObj && !isSameObject(holongObj,passiveObj) && passiveObj.getState() < HOLONG_LIGHT_STATE_ATTACK) {
					buffCount++;
				}
			}
			
			// ������ ���̸� ��Ÿ���� ������.
			if(buffCount <= 0) { // �Ѱ� ���� ��Ȳ���� ���� ������.					
				obj.startSkillCoolTime(SKILL_HOLONG_LIGHT,1,-1);
			}
					
									
			return false;			
		}
	}
	else if(obj.getState() == STATE_STAND || obj.getState() == STATE_DASH || obj.getState() == STATE_ATTACK) {	
		
		local b_useskill = obj.sq_IsUseSkill(SKILL_HOLONG_LIGHT);
		if(b_useskill) {
			obj.sq_AddSetStatePacket(STATE_HOLONG_LIGHT, STATE_PRIORITY_USER, false);			
			return true;
		}	
	}	
	return false;
}

function checkCommandEnable_HolongLight(obj)
{	
	if(!obj) return false;
	
	local count = obj.getMyPassiveObjectCount(24222);	
	
	
	//ĵ���� ���� �۾� (2012.04.12)
	if(count == 0 && obj.getState() != STATE_STAND && obj.getState() != STATE_DASH && obj.getState() != STATE_ATTACK)
		return false;
	
	local state = obj.sq_GetState();	
	
	if(state == STATE_ATTACK) {
		// �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20]
		return obj.sq_IsCommandEnable(SKILL_HOLONG_LIGHT);
	}
	
		
	return true;
}

function onSetState_HolongLight(obj, state, datas, isResetTimer)
{
	if(!obj) return;

	obj.sq_StopMove();
	obj.sq_SetCurrentAnimation(CUSTOM_ANI_HOLONG_LIGHT);
	
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
			
	local level		  = sq_GetSkillLevel(obj, SKILL_HOLONG_LIGHT);
	local lifeTime    = sq_GetLevelData(obj, SKILL_HOLONG_LIGHT, 0, level); //ȣ�պ� ���� ��ȿ �ð�
	AppendAppendageToSimple(obj, SKILL_HOLONG_LIGHT, "Appendage/Character/ap_atmage_buff.nut", lifeTime, true);
			
}


function onEndCurrentAni_HolongLight(obj)
{
	if(!obj) return;

	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}

function onKeyFrameFlag_HolongLight(obj, flagIndex)
{
	if(!obj) return true;
	
	if(flagIndex == 1) {
		obj.sq_AddSkillLoad(SKILL_HOLONG_LIGHT, 40, 2, 500);
		local x = -26;
		local y = 0;
		local z = 90;		
		
		local activeObject = sq_FindShootingTarget(obj, sq_GetDistancePos(sq_GetXPos(obj),obj.getDirection(),x), sq_GetYPos(obj), sq_GetZPos(obj) + z, 0, 0, 4, 14, -1, 300, 100, 50, 100);
		local horizonAngle = 0.0;
		local verticalAngle = 0.0;
	
		if (activeObject != NULL) {		
			local maxDistance = abs(activeObject.getXPos() - x);
			horizonAngle = sq_GetShootingHorizonAngle(activeObject, y, 0, 5, maxDistance);
			verticalAngle = sq_GetShootingVerticalAngle(activeObject, z, 0, 5, maxDistance, 300);
		}
		
		
		local level		  = sq_GetSkillLevel(obj, SKILL_HOLONG_LIGHT);
		local lifeTime    = sq_GetLevelData(obj, SKILL_HOLONG_LIGHT, 0, level); //ȣ�պ� ���� ��ȿ �ð�
		local defenceUp   = sq_GetLevelData(obj, SKILL_HOLONG_LIGHT, 1, level);
		local attackPower = obj.sq_GetBonusRateWithPassive(SKILL_HOLONG_LIGHT,STATE_HOLONG_LIGHT, 2, 1.0);
		local shotTime	  = sq_GetIntData(obj, SKILL_HOLONG_LIGHT, 0);
		local coolTime	  = sq_GetIntData(obj, SKILL_HOLONG_LIGHT, 1);
		
		
		for(local i=0;i<2;++i) {					
			if(obj.isMyControlObject())
			{
				obj.sq_StartWrite();
				obj.sq_WriteBool(i); // Ÿ�� A : ������ ����	
				obj.sq_WriteFloat(horizonAngle);
				obj.sq_WriteFloat(verticalAngle);
				obj.sq_WriteDword(lifeTime);
				obj.sq_WriteDword(defenceUp);
				obj.sq_WriteDword(attackPower);
				obj.sq_WriteDword(shotTime);
				obj.sq_WriteDword(coolTime);			
				obj.sq_SendCreatePassiveObjectPacket(24222, x, y, z, 0);
			}
		}
	}
	
	return true;
}