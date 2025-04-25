
SUB_STATE_FIREPILLAR_0	<- 0
SUB_STATE_FIREPILLAR_1	<- 1
SUB_STATE_FIREPILLAR_2	<- 2
SUB_STATE_FIREPILLAR_3	<- 3
SUB_STATE_FIREPILLAR_4	<- 4

function checkExecutableSkill_FirePillar(obj)
{

	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_FIREPILLAR);

	if(b_useskill)
	{
		obj.sq_IsEnterSkillLastKeyUnits(SKILL_FIREPILLAR);
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_FIREPILLAR_0); // substate����
		obj.sq_AddSetStatePacket(STATE_FIREPILLAR, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}	

	return false;

}

function checkCommandEnable_FirePillar(obj)
{

	if(!obj) return false;

	local state = obj.sq_GetState();
	
	if(state == STATE_ATTACK)
	{
		return obj.sq_IsCommandEnable(SKILL_FIREPILLAR); // �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20] obj.sq_IsCommandEnable(SKILL_BROKENARROW);
	}
	

	return true;

}

function onSetState_FirePillar(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	
	obj.getVar("firepillar").clear_vector();
	obj.getVar("firepillar").push_vector(0);
	obj.getVar("firepillar").push_vector(0);
	obj.getVar("firepillar").push_vector(0);
	
	obj.sq_StopMove();

	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();

	obj.getVar().clear_vector();
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);

	if(substate == SUB_STATE_FIREPILLAR_0)
	{
		obj.sq_PlaySound("MW_FPILLAR_READY");
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FIREPILLAR1);
		
		addElementalChain_ATMage(obj, ENUM_ELEMENT_FIRE);
	}
	else if(substate == SUB_STATE_FIREPILLAR_1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FIREPILLAR2);
	}
	else if(substate == SUB_STATE_FIREPILLAR_2)
	{
		obj.sq_PlaySound("MW_FPILLAR");
	
		if(obj.isMyControlObject())
		{
			local skillLevel = obj.sq_GetSkillLevel(SKILL_FIREPILLAR);
			local arriveTime = obj.sq_GetIntData(SKILL_FIREPILLAR, 0); // 0. �ҿ뵹�� ������ �ӵ� (�Ÿ����� �����ϴ� �ð�) (1/1000��)
			local attackRate = obj.sq_GetBonusRateWithPassive(SKILL_FIREPILLAR, STATE_FIREPILLAR, 2, 1.0); // 2. Ÿ�� ���ݷ�(%)
			local distance = obj.sq_GetLevelData(SKILL_FIREPILLAR, 1, skillLevel); // 1.������ �Ÿ�
			local term  = obj.sq_GetIntData(SKILL_FIREPILLAR, 2); // 2. �ٴ���Ʈ ����

			sq_BinaryStartWrite();
			sq_BinaryWriteDword(attackRate); // ���ð��ݷ�
			sq_BinaryWriteDword(distance); // ������ �Ÿ�
			sq_BinaryWriteDword(arriveTime); // �ҿ뵹�� ������ �ӵ� (�Ÿ����� �����ϴ� �ð�) (1/1000��)
			sq_BinaryWriteDword(term); // �ٴ���Ʈ ����
			obj.sq_SendCreatePassiveObjectPacket(24254, 0, 0, 1, 0); // 
		}

		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FIREPILLAR3);
	}
	else if(substate == SUB_STATE_FIREPILLAR_3)
	{
	}
	else if(substate == SUB_STATE_FIREPILLAR_4)
	{
	}
	
	//obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
	//		SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function prepareDraw_FirePillar(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_FIREPILLAR_0) {
		// SUB_STATE_FIREPILLAR_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_1) {
		// SUB_STATE_FIREPILLAR_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_2) {
		// SUB_STATE_FIREPILLAR_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_3) {
		// SUB_STATE_FIREPILLAR_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_4) {
		// SUB_STATE_FIREPILLAR_4 ���꽺����Ʈ �۾�
	}
}

function onProc_FirePillar(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);
	
	//print(" substate:" + substate);

	if(substate == SUB_STATE_FIREPILLAR_0) {
		// SUB_STATE_FIREPILLAR_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_1) {
	}
	else if(substate == SUB_STATE_FIREPILLAR_2) {
		// SUB_STATE_FIREPILLAR_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_3) {
		// SUB_STATE_FIREPILLAR_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_4) {
		// SUB_STATE_FIREPILLAR_4 ���꽺����Ʈ �۾�
	}
}

function onProcCon_FirePillar(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_FIREPILLAR_0) {
		// SUB_STATE_FIREPILLAR_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_1)
	{
		local bDownKey = obj.isDownSkillLastKey();
		local stateTimer = obj.sq_GetStateTimer();
		local grabMaxTime = obj.sq_GetIntData(SKILL_FIREPILLAR, 1); // 1. �ҿ뵹�� ��� �ִ� �ִ�ð�
		
		// ��û����
		// ���� �Ŀ� ����ð���ŭ �帣�� �ڵ����� �Ѿ�ϴ�..		
		if(!bDownKey || stateTimer >= grabMaxTime)// ���� ����ٴ°���.. 
		//if(!bDownKey)// ���� ����ٴ°���.. 
		{ // ���� ����ٴ°���.. 
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(SUB_STATE_FIREPILLAR_2); // substate����
			obj.sq_AddSetStatePacket(STATE_FIREPILLAR, STATE_PRIORITY_USER, true);
			return;
		}
	}
	else if(substate == SUB_STATE_FIREPILLAR_2) {
		// SUB_STATE_FIREPILLAR_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_3) {
		// SUB_STATE_FIREPILLAR_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_4) {
		// SUB_STATE_FIREPILLAR_4 ���꽺����Ʈ �۾�
	}
	

}

function onEndCurrentAni_FirePillar(obj)
{

	if(!obj) return;

	if(!obj.isMyControlObject()) {
		return;
	}	
	
	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_FIREPILLAR_0) {
		
		print( " onend:" + substate);
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_FIREPILLAR_1); // substate����
		obj.sq_AddSetStatePacket(STATE_FIREPILLAR, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(substate == SUB_STATE_FIREPILLAR_1) {
	}
	else if(substate == SUB_STATE_FIREPILLAR_2) {
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
	else if(substate == SUB_STATE_FIREPILLAR_3) {
		// SUB_STATE_FIREPILLAR_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_4) {
		// SUB_STATE_FIREPILLAR_4 ���꽺����Ʈ �۾�
	}
	

}

function onKeyFrameFlag_FirePillar(obj, flagIndex)
{

	if(!obj) return false;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_FIREPILLAR_0) {
		// SUB_STATE_FIREPILLAR_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_1) {
		// SUB_STATE_FIREPILLAR_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_2) {
		// SUB_STATE_FIREPILLAR_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_3) {
		// SUB_STATE_FIREPILLAR_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_4) {
		// SUB_STATE_FIREPILLAR_4 ���꽺����Ʈ �۾�
	}
	

	return false;

}

function onEndState_FirePillar(obj, new_state)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
	
	if(substate == SUB_STATE_FIREPILLAR_0) {
		// SUB_STATE_FIREPILLAR_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_1) {
		// SUB_STATE_FIREPILLAR_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_2) {
		// SUB_STATE_FIREPILLAR_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_3) {
		// SUB_STATE_FIREPILLAR_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_4) {
		// SUB_STATE_FIREPILLAR_4 ���꽺����Ʈ �۾�
	}
	

}

function onAfterSetState_FirePillar(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_FIREPILLAR_0) {
	}
	else if(substate == SUB_STATE_FIREPILLAR_1) {
		// SUB_STATE_FIREPILLAR_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_2) {
		// SUB_STATE_FIREPILLAR_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_3) {
		// SUB_STATE_FIREPILLAR_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FIREPILLAR_4) {
		// SUB_STATE_FIREPILLAR_4 ���꽺����Ʈ �۾�
	}
	

}


function onBeforeDamage_FirePillar(obj, attacker, boundingBox, isStuck)
//function onBeforeDamage_FirePillar(obj, attacker, boundingBox)
{
	if(!obj) return;
	
	local substate = obj.getSkillSubState();
	
	if(substate == SUB_STATE_FIREPILLAR_1)
	{
		// // �ұ�� ���Ÿ� ������ �������� N%��ŭ ���ҽ�Ű��, ������ ���� �ʽ��ϴ�.
		local isMeleeAttack = attacker.isMeleeAttack();
		local isMissileObj = attacker.isMissileObject();
		
		if((isMeleeAttack == false) || (isMissileObj == true))
		{
			local direction = sq_GetOppositeDirection(obj. sq_GetDirection(obj));
			
			if(direction == sq_GetDirection(attacker))
			{
				local attackerInfo = sq_GetCurrentAttackInfo(attacker);
				
				print( " isMeleeAttack:" + isMeleeAttack);
				print( " isMissileObj:" + isMissileObj);
				if(attackerInfo)
				{
					local rateDamager = sq_GetAttackInfoHitDelayRateDamager(attackerInfo);
					
					local backupRate = rateDamager * 100.0;
					obj.getVar("firepillar").set_vector(VECTOR_FLAG_0, backupRate.tointeger());
					
					sq_SetAttackInfoHitDelayRateDamager(attackerInfo, 0.0); // ���� ����Ȯ���� 0.0���� ����������..
					
					obj.getVar("firepillar").set_vector(VECTOR_FLAG_1, sq_GetCurrentAttackeDamageAct(attackerInfo));
					print( " DAMAGEACT_NONE");
					sq_SetCurrentAttackeDamageAct(attackerInfo, DAMAGEACT_NONE);
					
					obj.getVar("firepillar").set_vector(VECTOR_FLAG_2, 1);
				}
			}
		}
	}

}

function onAfterDamage_FirePillar(obj, attacker, boundingBox)
{
	if(!obj) return;

	local substate = obj.getSkillSubState();
	// // �ұ�� ���Ÿ� ������ �������� N%��ŭ ���ҽ�Ű��, ������ ���� �ʽ��ϴ�.
	if(substate == SUB_STATE_FIREPILLAR_1)
	{
		if(obj.getVar("firepillar").get_vector(VECTOR_FLAG_2))
		{
			local attackerInfo = sq_GetCurrentAttackInfo(attacker);
			
			if(attackerInfo)
			{
				local backupRate = obj.getVar("firepillar").get_vector(VECTOR_FLAG_0);
				local damageAct = obj.getVar("firepillar").get_vector(VECTOR_FLAG_1);
				local rateDamager = backupRate.tofloat() / 100.0;
				sq_SetAttackInfoHitDelayRateDamager(attackerInfo, rateDamager); // ���� ����Ȯ���� 0.0���� ����������..
				sq_SetCurrentAttackeDamageAct(attackerInfo, damageAct);
			}
			
			obj.getVar("firepillar").set_vector(VECTOR_FLAG_2, 0);
		}
	}
}
