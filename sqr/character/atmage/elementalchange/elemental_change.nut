
function checkExecutableSkill_ElementalChange(obj)
{

	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_ELEMENTAL_CHANGE);
	if (isUseSkill)
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

		obj.sq_IntVectClear();				
		obj.sq_IntVectPush(0);		// throwState
		obj.sq_IntVectPush(0);		// throwType
		obj.sq_IntVectPush(SKILL_ELEMENTAL_CHANGE);	// throwIndex
		obj.sq_IntVectPush(500);	// throwChargeTime
		obj.sq_IntVectPush(500);	// throwShootTime
		obj.sq_IntVectPush(0);		// throwAnimationIndex
		obj.sq_IntVectPush(4);		// chargeSpeedType
		obj.sq_IntVectPush(4);		// throwShootSpeedType
		obj.sq_IntVectPush(1000);	// chargeSpeedValue
		obj.sq_IntVectPush(1000);	// throwShootSpeedValue
		obj.sq_IntVectPush(-1);		// personalCastRange
		obj.sq_AddSetStatePacket(STATE_THROW, STATE_PRIORITY_USER, true);	
		

		//obj.sq_AddSetStatePacket(STATE_ELEMENTAL_CHANGE, STATE_PRIORITY_USER, false);
		obj.sq_PlaySound("MW_PCHANGE");
		
		return true;
	}
	return false;

}



function checkCommandEnable_ElementalChange(obj)
{
	if(!obj) return false;

	local state = obj.sq_GetState();
	
	if(state == STATE_ATTACK)
	{
		return obj.sq_IsCommandEnable(SKILL_ELEMENTAL_CHANGE); // �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20] obj.sq_IsCommandEnable(SKILL_BROKENARROW);
	}

	return true
}

function onSetState_ElementalChange(obj, state, datas, isResetTimer)
{
	if (!obj)
		return;

	obj.sq_StopMove();
	//obj.sq_SetCurrentAnimation(CUSTOM_ANI_ELEMENTAL_CHANGE);
	
	//local attackSpeedRate = obj.sq_GetIntData(SKILL_CRYSTALATTACK, 0);	
	//if(attackSpeedRate != 100) {
	//	obj.sq_SetAnimationSpeedRate(obj.sq_GetCurrentAni(),attackSpeedRate.tofloat());
	//}
	//local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_ELEMENTAL_CHANGE, false, "Character/ATMage/ElementalChange/ap_ATMage_Elemental_Change.nut", true);
	//local maxValue = sq_GetIntData(obj, SKILL_DEVILSTRIKE, SI_DS_MAX_DEVIL_GAUGE);
}

function prepareDraw_ElementalChange(obj)
{
	if (!obj)
		return;
}

function onEndCurrentAni_ElementalChange(obj)
{
	if (!obj)
		return;
}

function onKeyFrameFlag_ElementalChange(obj, flagIndex)
{
	if (!obj)
		return true;
	
	return true;
}