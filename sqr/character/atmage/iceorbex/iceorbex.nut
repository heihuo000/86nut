
function checkExecutableSkill_IceOrbEx(obj)
{
	if (!obj) return false;

	local useSkill = obj.sq_IsUseSkill(SKILL_ICE_ORB_EX);
	if (useSkill) {
		obj.sq_AddSetStatePacket(STATE_ICE_ORB_EX, STATE_PRIORITY_IGNORE_FORCE, false);
		return true;
	}
	return false;
}

function checkCommandEnable_IceOrbEx(obj)
{
	if(!obj) return false;
	local state = obj.sq_GetState();

	if(state == STATE_ATTACK) {
		// �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20]
		return obj.sq_IsCommandEnable(SKILL_ICE_ORB_EX);
	}

	return true;
}

function onSetState_IceOrbEx(obj, state, datas, isResetTimer)
{
	if(!obj) return;	
	
	obj.sq_StopMove();
	obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICE_ORB_EX);
	obj.sq_PlaySound("MW_ICEORB");
obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED , SPEED_TYPE_CAST_SPEED , SPEED_VALUE_DEFAULT , SPEED_VALUE_DEFAULT , 1.0 , 1.0);
}

function onEndCurrentAni_IceOrbEx(obj)
{
	if(!obj) return;

	local substate = obj.getSkillSubState();	
	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);	// �ִ� ������ ���ĵ��?
}

function onKeyFrameFlag_IceOrbEx(obj, flagIndex)
{

	if(!obj) return false;

	local substate = obj.getSkillSubState();	
	local level		  = sq_GetSkillLevel(obj, SKILL_ICE_ORB_EX);
	
	if(flagIndex == 1) {
		// �нú� �߻�.
		if(obj.isMyControlObject())
		{
			local distance = sq_GetIntData(obj, SKILL_ICE_ORB_EX, 0); // 0. ���Է� �Ÿ� 
			
			
			local leftPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL);
			local rightPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL);
				
			if(leftPress && rightPress)  // ���ÿ� �ȴ������� ó��. ���ÿ� ������ �� �߰�����.
			{
				//����Ʈ ���̱⿡ �ƹ��͵� ��������.
			}			
			else if((sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT && rightPress)  // ���� ������ ��������.
				|| (sq_GetDirection(obj) == ENUM_DIRECTION_LEFT && leftPress)) 
			{
				distance = sq_GetIntData(obj, SKILL_ICE_ORB_EX, 1); // STATIC 1. ������ �Ÿ�
			}
			else if(leftPress || rightPress) // �ϳ��� �Է� �ƴٸ� ������
			{
				distance = sq_GetIntData(obj, SKILL_ICE_ORB_EX, 2); // STATIC 2. ������ �Ÿ�
			}
			
			
			local speed = sq_GetIntData(obj, SKILL_ICE_ORB_EX, 3);// STATIC 3. ��ü �߻� �ӵ� 
			
			local level			= sq_GetSkillLevel(obj, SKILL_ICE_ORB_EX);	
			local gap			= sq_GetIntData(obj, SKILL_ICE_ORB_EX, 4); // STATIC 4. ���� ���� �ð� ����
			local pricklePower  = obj.sq_GetBonusRateWithPassive(SKILL_ICE_ORB_EX , STATE_ICE_ORB_EX, 0, 1.0);	// LEVEL 0. ���� ���ݷ�
			local lastPower		= obj.sq_GetBonusRateWithPassive(SKILL_ICE_ORB_EX , STATE_ICE_ORB_EX, 1, 1.0);	// LEVEL 1. ��Ÿ ���ݷ�
			local maxCount		= sq_GetLevelData(obj, SKILL_ICE_ORB_EX, 2, level);	// LEVEL 2. ���� ���� Ƚ��			
			local direction		= sq_GetDirection(obj);
			local targetPos		= sq_GetDistancePos(obj.getXPos(), direction, distance);
		
			// �ð� = �Ÿ�/�ӷ�
			obj.sq_StartWrite();
			obj.sq_WriteDword(speed);  // ���ư��� �ӵ�.	
			obj.sq_WriteDword(gap);
			obj.sq_WriteFloat(pricklePower.tofloat()); //�����ϼ��� �ֱ⶧���� float������ ������. sqr���� DWORD ���� �ڵ����� int������ �ٲ� ���� �ʱ� ����.
			obj.sq_WriteFloat(lastPower.tofloat());			
			obj.sq_WriteDword(maxCount);
			obj.sq_WriteWord(direction);
			obj.sq_WriteDword(targetPos);			
			
			obj.sq_SendCreatePassiveObjectPacket(24235, 0, 100, 0, 50);	// ������ ����, 100,50�� ��ǥ�� ����
		}
	}

	return true;

}
