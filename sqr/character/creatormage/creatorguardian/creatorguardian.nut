
SUB_STATE_CREATORGUARDIAN_0	<- 0

function checkExecutableSkill_CreatorGuardian(obj)
{
	if(!obj) return false;

	// ���� ����Ӽ��ε� �ѹ� �� ������ �Ϲݰ������� ��ȯ�˴ϴ�.
	local type = getCreatorSkillStateSkillIndex(obj);

	if (type == CREATOR_TYPE_GUARDIAN)
	{
		setCreatorSkillStateSkillIndex(obj, -1);
		onAllChargeCreatorMageGauge(obj);
		return false;
	}


	local b_useskill = obj.sq_IsUseSkill(SKILL_CREATORGUARDIAN);

	if (b_useskill)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_CREATORGUARDIAN_0); // substate����
		obj.sq_AddSetStatePacket(STATE_CREATORGUARDIAN, STATE_PRIORITY_USER, true);
		return true;
	}
	
	return false;
}

function checkCommandEnable_CreatorGuardian(obj)
{
	if(!obj) return false;
	
	local state = obj.sq_GetState();

	local skill_level = obj.sq_GetSkillLevel(SKILL_CREATORGUARDIAN);
	if(state == STATE_ATTACK)
	{
		return obj.sq_IsCommandEnable(SKILL_CREATORGUARDIAN); // �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20] obj.sq_IsCommandEnable(SKILL_BROKENARROW);
	}
	
	return true;
}

function onSetState_CreatorGuardian(obj,state,datas,isResetTimer)
{
	if(!obj) return;
	
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);

	obj.sq_StopMove();

	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();

	obj.getVar().clear_vector();
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	
	print(" onSetSTATE_CREATORGUARDIAN");
		
	if (substate == SUB_STATE_CREATORGUARDIAN_0)
	{
		// ȭ���Ӽ��� ���ٰ� �˷��ݴϴ�.
		setCreatorSkillStateSkillIndex(obj, CREATOR_TYPE_GUARDIAN);
		// ��� ũ�������� �Ӽ� ������ �����մϴ�.
		onAllChargeCreatorMageGauge(obj);
		// �÷��� �Ӽ� ������ �����մϴ�.
		setChargeCreatorMageGauge(obj, CREATOR_TYPE_GUARDIAN, 0);
		
		obj.sq_PlaySound("R_CR_PROTECTION");
		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_CAST_GUARD);

		// ĳ���� �ӵ��� ���󰡵��� ����
		// ĳ���� �ӵ��� ����Ǹ�, ���ϸ��̼� �ӵ��� ���� �˴ϴ�.
		// ĳ���� �������� ǥ�ø� ���ݴϴ�.
		local skillLevel = sq_GetSkillLevel(obj, SKILL_CREATORGUARDIAN);
		local castTime = sq_GetCastTime(obj, SKILL_CREATORGUARDIAN, skillLevel);
		local animation = sq_GetCurrentAnimation(obj);
		local startTime = sq_GetDelaySum(animation);
		local speedRate = startTime.tofloat() / castTime.tofloat();
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, speedRate, speedRate);
			
		sq_StartDrawCastGauge(obj, startTime, true);
		
		
	}
}

function prepareDraw_CreatorGuardian(obj)
{

	if(!obj) return;

}

function onProc_CreatorGuardian(obj)
{

	if(!obj) return;

}

function onProcCon_CreatorGuardian(obj)
{

	if(!obj) return;

}

function onEndCurrentAni_CreatorGuardian(obj)
{
	if(!obj) return;
	
	if(!obj.isMyControlObject()) {
		return;
	}
	
	local substate = obj.getSkillSubState();
	
	if (substate == SUB_STATE_CREATORGUARDIAN_0)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}

}

function onKeyFrameFlag_CreatorGuardian(obj,flagIndex)
{

	if(!obj) return false;

	return true;

}

function onEndState_CreatorGuardian(obj,new_state)
{
	if(!obj) return;
	sq_EndDrawCastGauge(obj);
}

function onAfterSetState_CreatorGuardian(obj,state,datas,isResetTimer)
{

	if(!obj) return;

}

function onBeforeAttack_CreatorGuardian(obj,damager,boundingBox,isStuck)
{

	if(!obj) return;

}

function onAttack_CreatorGuardian(obj,damager,boundingBox,isStuck)
{

	if(!obj) return;

}

function onAfterAttack_CreatorGuardian(obj,damager,boundingBox,isStuck)
{

	if(!obj) return 0;

	return 1;

}

function onBeforeDamage_CreatorGuardian(obj,attacker,boundingBox,isStuck)
{

	if(!obj) return;

}

function onDamage_CreatorGuardian(obj,attacker,boundingBox)
{

	if(!obj) return;

}

function onAfterDamage_CreatorGuardian(obj,attacker,boundingBox)
{

	if(!obj) return;

}
