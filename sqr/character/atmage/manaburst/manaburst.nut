
SUB_STATE_MANABURST_0	<- 0
SUB_STATE_MANABURST_1	<- 1
SUB_STATE_MANABURST_2	<- 2
SUB_STATE_MANABURST_3	<- 3
SUB_STATE_MANABURST_4	<- 4

function checkExecutableSkill_ManaBurst(obj)
{

	if(!obj) return false;
	
	local state = obj.sq_GetState();
	
	// �нú�ƽ�� ��Ƽ�꽺ų�̶� �̰����� �ൿ������ �̴ϴ�.
	// ManaBurst.skl [executable states] �� -1�� ����������ϴ�.
	// �̰��� ��罺ų���� ���ݷ��� �������Ѵٴ� ��ų��� �����Դϴ�.
	if(state == STATE_STAND || state == STATE_ATTACK || state == STATE_DASH) 
	{	

		local b_useskill = obj.sq_IsUseSkill(SKILL_MANABURST);
		
		if (b_useskill)
		{
			/*
			# STATE_THROW
			[0]   Throw State (0:������, 1:������, 2:���ν���)
			* Throw State 0 *
			[1]   ������ Ÿ�� (ENUM_THROW_TYPE)
			[2]   ������ ����� �ε��� (��ų �ε��� or ������ �ε���)
			[3]   ������ �ð�
			[4]   �߻� �ð�
			[5]   ������ �ִϸ��̼� Ÿ�� (0 or 1)
			[6]   ������ �ӵ� Ÿ��
			[7]   �߻� �ӵ� Ÿ��
			[8]   ������ �ӵ� (�ȳ����� SPEED_VALUE_DEFAULT)
			[9]   �߻� �ӵ� (�ȳ����� SPEED_VALUE_DEFAULT)
			[10]	���ν��� ���� (�ȳְų� -1�̸� ���ν��� ����)
			* Throw State 1 *
			// Throw State 2���� �Ѿ���� ��쿡��
			[1]	���� ������ ��� Object Id
			* Throw State 2 *
			*/
			local skillLevel = sq_GetSkillLevel(obj, SKILL_MANABURST);
			local castTime = sq_GetCastTime(obj, SKILL_MANABURST, skillLevel);

			obj.sq_IntVectClear();				
			obj.sq_IntVectPush(0);		// throwState
			obj.sq_IntVectPush(0);		// throwType
			obj.sq_IntVectPush(SKILL_MANABURST);	// throwIndex
			obj.sq_IntVectPush(castTime);	// throwChargeTime
			obj.sq_IntVectPush(500);	// throwShootTime
			obj.sq_IntVectPush(0);		// throwAnimationIndex
			obj.sq_IntVectPush(4);		// chargeSpeedType
			obj.sq_IntVectPush(4);		// throwShootSpeedType
			obj.sq_IntVectPush(1000);	// chargeSpeedValue
			obj.sq_IntVectPush(1000);	// throwShootSpeedValue
			obj.sq_IntVectPush(-1);		// personalCastRange
			obj.sq_AddSetStatePacket(STATE_THROW, STATE_PRIORITY_USER, true);
			//obj.sq_AddSetStatePacket(STATE_ELEMENTAL_CHANGE, STATE_PRIORITY_USER, false);
			return true;
		}
	}

	return false;

}

function checkCommandEnable_ManaBurst(obj)
{

	if(!obj) return false;

	local state = obj.sq_GetState();
	
	if(state == STATE_ATTACK) {
		// �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20]
		return obj.sq_IsCommandEnable(SKILL_MANABURST);
	}
	

	if(state == STATE_STAND || state == STATE_ATTACK || state == STATE_DASH) 
	{
		return true;
	}
	
	return false;

}

