
function checkExecutableSkill_FireRoad(obj)
{
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_FIRE_ROAD);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);	// subState����
		obj.sq_AddSetStatePacket(STATE_FIRE_ROAD, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;

}

function checkCommandEnable_FireRoad(obj)
{
	if(!obj)
		return false;
	local state = obj.sq_GetState();
		
	if(state == STATE_ATTACK)
	{
		return obj.sq_IsCommandEnable(SKILL_FIRE_ROAD); // �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20] obj.sq_IsCommandEnable(SKILL_BROKENARROW);
	}
		
	return true;
}

function onEndState_FireRoad(obj, state)
{
	// ������Ʈ ���� Ȥ�� ���?�Ǿ��ٸ� ĳ���� ������ ����
	sq_EndDrawCastGauge(obj);
}


function onSetState_FireRoad(obj, state, datas, isResetTimer)
{
	if (!obj) return;

	obj.sq_StopMove();
	
	
	local subState = obj.sq_GetVectorData(datas, 0);	// subState
	obj.sq_SetSkillSubState(obj, subState);
	
	if (subState == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FIRE_ROAD_CAST1);
		obj.sq_PlaySound("MW_FIREROAD");
		
		// ĳ���� �ӵ��� ���󰡵��� ����
		// ĳ���� �ӵ��� ����Ǹ�? ���ϸ��̼� �ӵ��� ���� �˴ϴ�.
		// ĳ���� �������� ǥ�ø� ���ݴϴ�.
		local skillLevel = sq_GetSkillLevel(obj, SKILL_FIRE_ROAD);
		local castTime = sq_GetCastTime(obj, SKILL_FIRE_ROAD, skillLevel);
		local animation = sq_GetCurrentAnimation(obj);
		obj.sq_Rewind(animation);
		sq_SetFrameDelayTime(animation, 0, castTime);
obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED , SPEED_TYPE_CAST_SPEED , SPEED_VALUE_DEFAULT , SPEED_VALUE_DEFAULT , 1.0 , 1.0);
		sq_StartDrawCastGauge(obj, castTime, true);
		
		addElementalChain_ATMage(obj, ENUM_ELEMENT_FIRE);
	}
	else if (subState == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FIRE_ROAD_CAST2);
	}

}



// prepareDraw
function prepareDraw_FireRoad(obj)
{
	if (!obj) return;
}



// onEndCurrentAni
function onEndCurrentAni_FireRoad(obj)
{
	if (!obj) return;
	
	
	if (obj.sq_GetSkillSubState(obj) == 0) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);	// subState����
		obj.sq_AddSetStatePacket(STATE_FIRE_ROAD, STATE_PRIORITY_USER, true);
	}
	else if (obj.sq_GetSkillSubState(obj) == 1) {
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}




// onKeyFrameFlag
function onKeyFrameFlag_FireRoad(obj, flagIndex)
{
	if (!obj) return true;

	local skillSubState = obj.sq_GetSkillSubState(obj);

	if (skillSubState == 0) {

		local skillLevel = obj.sq_GetSkillLevel(SKILL_FIRE_ROAD);	
		local pauseTime = obj.sq_GetIntData(SKILL_FIRE_ROAD, 0);	// ������Ʈ ��������(�ð�)
		local xPos = obj.sq_GetIntData(SKILL_FIRE_ROAD, 1);			// ������Ʈ ������ġ(ĳ���ͷ� ���� ���ȼ� ������ �����Ǵ���?)
		local xOffset = obj.sq_GetIntData(SKILL_FIRE_ROAD, 2);		// ������Ʈ ��������(������Ʈ���� ���� ����)
		local maxHit = obj.sq_GetIntData(SKILL_FIRE_ROAD, 3);		// ������Ʈ�� �ִ� ��Ʈ��
		local sizeRate = obj.sq_GetIntData(SKILL_FIRE_ROAD, 5);		// ������Ʈ�� Ȯ����(%)

		// ������Ʈ ���� ����
		local createCount = obj.sq_GetLevelData(SKILL_FIRE_ROAD, 0, skillLevel);
		local damage1 = obj.sq_GetBonusRateWithPassive(SKILL_FIRE_ROAD, STATE_FIRE_ROAD, 1, 1.0);	// ���ݷ�1(%)
		local damage2 = obj.sq_GetBonusRateWithPassive(SKILL_FIRE_ROAD, STATE_FIRE_ROAD, 2, 1.0);	// ���ݷ�2(%)
	
		printc("createCount " + createCount);
		
		// Ư�� ��ų�� ����ٸ�?��������(����) �����ȴ�.
		local rowNumber = obj.sq_GetIntData(SKILL_FIRE_ROAD, 4);
		local yAxisDistance = 55;
		
		for (local i = 0; i < createCount; i++)
		{
			if (obj.isMyControlObject())
			{
				obj.sq_StartWrite();
				obj.sq_WriteWord(pauseTime * i);// ��������(�ð�)
				obj.sq_WriteDword(damage1);		// ������1
				obj.sq_WriteDword(damage2);		// ������2
				obj.sq_WriteByte(maxHit);		// ������Ʈ�� �ִ� ��Ʈ��
				obj.sq_WriteByte(i);			// ���� ������ ��°. (���� ��¿�?
				obj.sq_WriteWord(sizeRate);		// ������Ʈ�� Ȯ����(%)
				
				printc("number " +i);
				// 24212, 24213�� �����ư��鼭 �����Ѵ�.
				local passiveObjectIndex = 24212 + i % 2;
				obj.sq_SendCreatePassiveObjectPacket(passiveObjectIndex, 0, xPos + xOffset * i, 1, 0);
				
				
				// Ư�� ��ų�� ����ٸ�?��������(����) �����ȴ�.
				if (rowNumber > 0)
				{
					for (local j = 0; j < rowNumber; j+=1)
					{
						local row = (j + 2) / 2;
						row = row.tointeger();
	
						if ((j % 2) == 0)
						{	// ����
							local y = row * yAxisDistance;
							obj.sq_SendCreatePassiveObjectPacket(passiveObjectIndex, 0, xPos + xOffset * i, -y, 0);
						}
						else
						{	// �Ʒ���
							local y = row * yAxisDistance;
							obj.sq_SendCreatePassiveObjectPacket(passiveObjectIndex, 0, xPos + xOffset * i, y, 0);
						}
					}
				}
			}
		}
	}

	return true;

}


