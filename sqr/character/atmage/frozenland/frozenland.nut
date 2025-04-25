
SUB_STATE_FROZENLAND_0	<- 0
SUB_STATE_FROZENLAND_1	<- 1
SUB_STATE_FROZENLAND_2	<- 2
SUB_STATE_FROZENLAND_3	<- 3
SUB_STATE_FROZENLAND_4	<- 4
SUB_STATE_FROZENLAND_CASTING	<- 5

function createShockWaveAnimation(obj, x, y, z)
{
	local ani = sq_CreateAnimation("", "PassiveObject/Character/Mage/Animation/ATFrozenLand/sub_dodge.ani");
	
	local shockWaveObj = sq_CreatePooledObject(ani,true);
	shockWaveObj = sq_SetEnumDrawLayer(shockWaveObj, ENUM_DRAWLAYER_BOTTOM);
	
	if(shockWaveObj)
	{
		shockWaveObj.setCurrentPos(x,y,z);
		sq_AddObject(obj, shockWaveObj, OBJECTTYPE_DRAWONLY, false);
	}
}


function checkExecutableSkill_FrozenLand(obj)
{

	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_FROZENLAND);

	if(b_useskill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_FROZENLAND_CASTING); // substate����
		obj.sq_AddSetStatePacket(STATE_FROZENLAND, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}	
	
	return false;

}

function checkCommandEnable_FrozenLand(obj)
{

	if(!obj) return false;

	local state = obj.sq_GetState();
	
	if(state == STATE_ATTACK)
	{
		// �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20]
		return obj.sq_IsCommandEnable(SKILL_FROZENLAND); // �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20] obj.sq_IsCommandEnable(SKILL_FROZENLAND);
	}
	

	return true;

}

function onSetState_FrozenLand(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();

	obj.getVar().clear_vector();
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	
	obj.getVar("state").clear_ct_vector();
	obj.getVar("state").push_ct_vector();	
	
	
	if(substate == SUB_STATE_FROZENLAND_CASTING)
	{
		// ĳ���� �ӵ��� ���󰡵��� ����
		// ĳ���� �ӵ��� ����Ǹ�? ���ϸ��̼� �ӵ��� ���� �˴ϴ�.
		// ĳ���� �������� ǥ�ø� ���ݴϴ�.
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FROZENLAND_CASTING);
		
		local skillLevel = sq_GetSkillLevel(obj, SKILL_FROZENLAND);
		local castTime = sq_GetCastTime(obj, SKILL_FROZENLAND, skillLevel);
		local animation = sq_GetCurrentAnimation(obj);
		local startTime = sq_GetFrameStartTime(animation, 16);
		local speedRate = startTime.tofloat() / castTime.tofloat();
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, speedRate, speedRate);

		sq_StartDrawCastGauge(obj, startTime, true);
		obj.sq_PlaySound("MW_SLASHWATER");
	}
	else if(substate == SUB_STATE_FROZENLAND_0) {
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FROZENLAND1);
		
	}
	else if(substate == SUB_STATE_FROZENLAND_1) {
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FROZENLAND2);
	}
	else if(substate == SUB_STATE_FROZENLAND_2) {
		local t = obj.getVar("state").get_ct_vector(0);
		t.Reset();
		t.Start(10000,0);
		//obj.sq_SetCurrentAnimation(CUSTOM_ANI_FROZENLAND3);
	}
	else if(substate == SUB_STATE_FROZENLAND_3)
	{
		//print(" obj.sq_SetCurrentAnimation(CUSTOM_ANI_FROZENLAND3);");
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FROZENLAND3);
	}
	else if(substate == SUB_STATE_FROZENLAND_4) {
		// SUB_STATE_FROZENLAND_4 ���꽺����Ʈ �۾�
	}
	
obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED , SPEED_TYPE_CAST_SPEED , SPEED_VALUE_DEFAULT , SPEED_VALUE_DEFAULT , 1.0 , 1.0);
}

function prepareDraw_FrozenLand(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_FROZENLAND_0) {
		// SUB_STATE_FROZENLAND_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_1) {
		// SUB_STATE_FROZENLAND_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_2) {
		// SUB_STATE_FROZENLAND_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_3) {
		// SUB_STATE_FROZENLAND_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_4) {
		// SUB_STATE_FROZENLAND_4 ���꽺����Ʈ �۾�
	}
	

}

function onProc_FrozenLand(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);

	if(substate == SUB_STATE_FROZENLAND_0) {
		// SUB_STATE_FROZENLAND_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_1) {
		// SUB_STATE_FROZENLAND_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_2) {
		// SUB_STATE_FROZENLAND_2 ���꽺����Ʈ �۾�

		local t = obj.getVar("state").get_ct_vector(0);
		local currentT = 0;
		
		currentT = t.Get();
			
		//print(" currentT:" + currentT);
			
		if(currentT > 240)
		{		
			if(!obj.getVar().get_vector(1))
			{
				//obj.sq_SetCurrentAnimation(CUSTOM_ANI_FROZENLAND3);
				if(obj.isMyControlObject())
				{
					obj.sq_IntVectClear();
					obj.sq_IntVectPush(SUB_STATE_FROZENLAND_3); // substate����
					obj.sq_AddSetStatePacket(STATE_FROZENLAND, STATE_PRIORITY_IGNORE_FORCE, true);
				}
				
				obj.getVar().set_vector(1, 1);
			}
		}

	}
	else if(substate == SUB_STATE_FROZENLAND_3) {
		// SUB_STATE_FROZENLAND_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_4) {
		// SUB_STATE_FROZENLAND_4 ���꽺����Ʈ �۾�
	}
	

}

function onProcCon_FrozenLand(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	
	if(substate == SUB_STATE_FROZENLAND_0) {
		if(frmIndex >= 4) {	
			if(obj.getVar().get_vector(0) == 0) 
			{			
				if(obj.isMyControlObject())
				{
					local radiusRate = obj.sq_GetIntData(SKILL_FROZENLAND, 0);// 0. �������� (������ ���� ���� : 100%~)
					local stopSpinNum = obj.sq_GetIntData(SKILL_FROZENLAND, 2); // 2. �����?��Ÿ���� ���ڸ����� ������ ���� ��
					local spinTime = obj.sq_GetIntData(SKILL_FROZENLAND, 3); // 3. �ҿ뵹�� �ļ� ����� ������ �ð�
					
					sq_BinaryStartWrite();
					sq_BinaryWriteDword(radiusRate); // �������� (������ ���� ���� : 100%~)
					sq_BinaryWriteDword(stopSpinNum); // �����?��Ÿ���� ���ڸ����� ������ ���� ��
					sq_BinaryWriteDword(spinTime); // �ҿ뵹�� �ļ� ����� ������ �ð�
					
					local multiHitTerm = obj.sq_GetIntData(SKILL_FROZENLAND, 1); // 1. ���?�ٴ���Ʈ ���� (0.001�� ����)
					local multiHitAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_FROZENLAND, STATE_FROZENLAND, 0, 1.0); //0.���?�ٴ���Ʈ ���ݷ�(%)
					local expAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_FROZENLAND, STATE_FROZENLAND, 1, 1.0); // 1.���?���� ���ݷ�(%)
					 obj.sq_GetLevelData(SKILL_FROZENLAND, 1, obj.sq_GetSkillLevel(SKILL_FROZENLAND));

					// 2.���� Ȯ�� 3.���� ���� 4.���� �ð�
					local skillLevel = obj.sq_GetSkillLevel(SKILL_FROZENLAND);
					local frozenRate = obj.sq_GetLevelData(SKILL_FROZENLAND, 2, skillLevel); // 2.���� Ȯ��
					local frozenLevel = obj.sq_GetLevelData(SKILL_FROZENLAND, 3, skillLevel); // 3.���� ����
					local frozenTime = obj.sq_GetLevelData(SKILL_FROZENLAND, 4, skillLevel); // 4.���� �ð�
					
					sq_BinaryWriteDword(multiHitTerm); // ���?�ٴ���Ʈ ����
					sq_BinaryWriteDword(multiHitAttackRate); // ���?�ٴ���Ʈ ���ݷ� (%)
					sq_BinaryWriteDword(expAttackRate); // ���?���� ���ݷ� (%)
					sq_BinaryWriteDword(frozenRate); // ���� Ȯ��
					sq_BinaryWriteDword(frozenLevel); // ���� ����
					sq_BinaryWriteDword(frozenTime); // ���� �ð�
					
					// ũ�δ�Ŭ ������ �߰� �۾�
					// ũ�δ�Ŭ ������ �߰� �۾� ���ڸ����� �����ִ� �ð��� 0���� ũ�ٸ� ������ ��ȸ�ϴ� state�� �����ؾ� �մϴ�.
					local spinAddTime = obj.sq_GetIntData(SKILL_FROZENLAND, 4); // 4. �ҿ뵹�̰� ĳ���� �ֺ��� ȸ���ϴ� �ð� (0.001�ʴ���)
					sq_BinaryWriteDword(spinAddTime); // �ҿ뵹�̰� ĳ���� �ֺ��� ȸ���ϴ� �ð� (0.001�ʴ���)
					
					
					obj.sq_SendCreatePassiveObjectPacket(24247, 0, 10, -1, 0); // ������ - ������ ���� (������)
				}

				obj.getVar().set_vector(0, 1);
			}
		}
	}
	else if(substate == SUB_STATE_FROZENLAND_1) {
		
		local magicCirclePassiveObj = obj.sq_GetPassiveObject(24247); // po_ATFrozenLandMagicCircle
		local stateChange = true;
		
		if(magicCirclePassiveObj)
		{			
			local magicCirclePassiveState = magicCirclePassiveObj.getState();
			
			if(magicCirclePassiveState == S_PO_FROZENLAND_MC_3)
			{
				stateChange = true;
			}
			else
			{
				stateChange = false;
			}
		}
		
		if(stateChange)
		{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(SUB_STATE_FROZENLAND_2); // substate����
			obj.sq_AddSetStatePacket(STATE_FROZENLAND, STATE_PRIORITY_IGNORE_FORCE, true);
		}
		
	}
	else if(substate == SUB_STATE_FROZENLAND_2) {
		// SUB_STATE_FROZENLAND_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_3) {
		// SUB_STATE_FROZENLAND_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_4) {
		// SUB_STATE_FROZENLAND_4 ���꽺����Ʈ �۾�
	}
	

}

function onEndCurrentAni_FrozenLand(obj)
{

	if(!obj) return;

	if(!obj.isMyControlObject()) {
		return;
	}
	
	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_FROZENLAND_CASTING)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_FROZENLAND_0); // substate����
		obj.sq_AddSetStatePacket(STATE_FROZENLAND, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(substate == SUB_STATE_FROZENLAND_0) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_FROZENLAND_1); // substate����
		obj.sq_AddSetStatePacket(STATE_FROZENLAND, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(substate == SUB_STATE_FROZENLAND_1) {
	}
	else if(substate == SUB_STATE_FROZENLAND_2) {
	}
	else if(substate == SUB_STATE_FROZENLAND_3) {
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
	else if(substate == SUB_STATE_FROZENLAND_4) {
		// SUB_STATE_FROZENLAND_4 ���꽺����Ʈ �۾�
	}
	

}

function onKeyFrameFlag_FrozenLand(obj, flagIndex)
{

	if(!obj) return false;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_FROZENLAND_0) {
		// SUB_STATE_FROZENLAND_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_1) {
		// SUB_STATE_FROZENLAND_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_2) {
		// SUB_STATE_FROZENLAND_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_3) {
		// SUB_STATE_FROZENLAND_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_4) {
		// SUB_STATE_FROZENLAND_4 ���꽺����Ʈ �۾�
	}
	

	return false;

}

function onEndState_FrozenLand(obj, new_state)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_FROZENLAND_0) {
		// SUB_STATE_FROZENLAND_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_1) {
		// SUB_STATE_FROZENLAND_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_2) {
		// SUB_STATE_FROZENLAND_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_3) {
		// SUB_STATE_FROZENLAND_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_4) {
		// SUB_STATE_FROZENLAND_4 ���꽺����Ʈ �۾�
	}
	
	// ������Ʈ ���� Ȥ�� ���?�Ǿ��ٸ� ĳ���� ������ ����
	sq_EndDrawCastGauge(obj);
	
	

}

function onAfterSetState_FrozenLand(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_FROZENLAND_0) {
		// SUB_STATE_FROZENLAND_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_1) {
		// SUB_STATE_FROZENLAND_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_2) {
		// SUB_STATE_FROZENLAND_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_3) {
		// SUB_STATE_FROZENLAND_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_FROZENLAND_4) {
		// SUB_STATE_FROZENLAND_4 ���꽺����Ʈ �۾�
	}
	

}
