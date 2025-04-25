
function checkExecutableSkill_IceFieldEx(obj)
{

	if (!obj) return false;

	local useSkill = obj.sq_IsUseSkill(SKILL_ICE_FIELD_EX);

	if (useSkill) {
		obj.sq_AddSetStatePacket(STATE_ICE_FIELD_EX, STATE_PRIORITY_IGNORE_FORCE, false);
		return true;
	}

	return false;

}

function checkCommandEnable_IceFieldEx(obj)
{

	if(!obj) return false;

	local state = obj.sq_GetState();

	if(state == STATE_ATTACK) {
		// ĵ�� ��ų ���� �۾���: ������ [2012.04.20]
		return obj.sq_IsCommandEnable(SKILL_ICE_FIELD_EX);
	}

	return true;

}

function onSetState_IceFieldEx(obj, state, datas, isResetTimer)
{
	if(!obj) return;	
	
	obj.sq_StopMove();
	obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICE_FIELD_EX);	
	obj.sq_PlaySound("MW_ICEFIELD");
obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED , SPEED_TYPE_CAST_SPEED , SPEED_VALUE_DEFAULT , SPEED_VALUE_DEFAULT , 1.0 , 1.0);
}

function onEndCurrentAni_IceFieldEx(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();	
	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);	// �ִ� ������ ���ĵ��?
}

function onKeyFrameFlag_IceFieldEx(obj, flagIndex)
{

	if(!obj) return false;

	local substate = obj.getSkillSubState();	
	local level		  = sq_GetSkillLevel(obj, SKILL_ICE_FIELD_EX);
	
	if(flagIndex == 1) {
		local level	    = sq_GetSkillLevel(obj, SKILL_ICE_FIELD_EX);
		local power		= obj.sq_GetBonusRateWithPassive(SKILL_ICE_FIELD_EX , STATE_ICE_FIELD_EX, 0, 1.0);	//  LEVEL 0. ���� �۰� ���ݷ�(%)
		local iceLevel  = sq_GetLevelData(obj, SKILL_ICE_FIELD_EX, 1, level);	// LEVEL 1. ���� ����
		local iceProb   = sq_GetLevelData(obj, SKILL_ICE_FIELD_EX, 2, level);	// LEVEL 2. ���� Ȯ��
		local iceTime   = sq_GetLevelData(obj, SKILL_ICE_FIELD_EX, 3, level);	// LEVEL 3. ���� �ð�
		
		obj.sq_StartWrite();
		obj.sq_WriteFloat(power.tofloat()); //�����ϼ��� �ֱ⶧���� float������ ������. sqr���� DWORD ���� �ڵ����� int������ �ٲ� ���� �ʱ� ����.
		obj.sq_WriteDword(iceLevel);
		obj.sq_WriteDword(iceProb);
		obj.sq_WriteDword(iceTime);
		obj.sq_SendCreatePassiveObjectPacket(24237, 0, 0, 0, 0);	// �ʵ� ����, 100,50�� ��ǥ�� ����		
	}

	return true;

}
