
SUB_STATE_DARKNESSMANTLE_0	<- 0
SUB_STATE_DARKNESSMANTLE_1	<- 1
SUB_STATE_DARKNESSMANTLE_2	<- 2
SUB_STATE_DARKNESSMANTLE_3	<- 3
SUB_STATE_DARKNESSMANTLE_4	<- 4
SUB_STATE_DARKNESSMANTLE_CASTING	<- 5

function checkExecutableSkill_DarknessMantle(obj)
{

	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_DARKNESSMANTLE);

	if(b_useskill)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_DARKNESSMANTLE_CASTING); // substate����
		obj.sq_AddSetStatePacket(STATE_DARKNESSMANTLE, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}	

	return false;

}

function checkCommandEnable_DarknessMantle(obj)
{

	if(!obj) return false;

	local state = obj.sq_GetState();
	
	if(state == STATE_ATTACK)
	{
		// �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20]
		return obj.sq_IsCommandEnable(SKILL_DARKNESSMANTLE); // �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20] obj.sq_IsCommandEnable(SKILL_BROKENARROW);
	}
	

	return true;

}

function onSetState_DarknessMantle(obj, state, datas, isResetTimer)
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
	
	obj.getVar("flag").clear_vector();
	obj.getVar("flag").push_vector(0);
	obj.getVar("flag").push_vector(0);

	if(substate == SUB_STATE_DARKNESSMANTLE_CASTING)
	{
	
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DARKNESSMANTLE_CASTING);
		
		local skillLevel = sq_GetSkillLevel(obj, SKILL_DARKNESSMANTLE);
		// ĳ���� �ӵ��� ���󰡵��� ����
		// ĳ���� �ӵ��� ����Ǹ�? ���ϸ��̼� �ӵ��� ���� �˴ϴ�.
		// ĳ���� �������� ǥ�ø� ���ݴϴ�.
		local castTime = sq_GetCastTime(obj, SKILL_DARKNESSMANTLE, skillLevel);
		local animation = sq_GetCurrentAnimation(obj);
		local startTime = sq_GetFrameStartTime(animation, 16);
		local speedRate = startTime.tofloat() / castTime.tofloat();
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, speedRate, speedRate);

		sq_StartDrawCastGauge(obj, startTime, true);
		
		addElementalChain_ATMage(obj, ENUM_ELEMENT_DARK);
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_0)
	{
		obj.sq_PlaySound("MW_DMANTLE_READY");
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DARKNESSMANTLE);
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_1) {
		// SUB_STATE_DARKNESSMANTLE_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_2) {
		// SUB_STATE_DARKNESSMANTLE_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_3) {
		// SUB_STATE_DARKNESSMANTLE_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_4) {
		// SUB_STATE_DARKNESSMANTLE_4 ���꽺����Ʈ �۾�
	}
	
obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED , SPEED_TYPE_CAST_SPEED , SPEED_VALUE_DEFAULT , SPEED_VALUE_DEFAULT , 1.0 , 1.0);
}

function prepareDraw_DarknessMantle(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_DARKNESSMANTLE_0) {
		// SUB_STATE_DARKNESSMANTLE_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_1) {
		// SUB_STATE_DARKNESSMANTLE_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_2) {
		// SUB_STATE_DARKNESSMANTLE_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_3) {
		// SUB_STATE_DARKNESSMANTLE_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_4) {
		// SUB_STATE_DARKNESSMANTLE_4 ���꽺����Ʈ �۾�
	}
	

}

function onProc_DarknessMantle(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);

	if(substate == SUB_STATE_DARKNESSMANTLE_0) {
		// SUB_STATE_DARKNESSMANTLE_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_1) {
		// SUB_STATE_DARKNESSMANTLE_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_2) {
		// SUB_STATE_DARKNESSMANTLE_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_3) {
		// SUB_STATE_DARKNESSMANTLE_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_4) {
		// SUB_STATE_DARKNESSMANTLE_4 ���꽺����Ʈ �۾�
	}
	

}

function onProcCon_DarknessMantle(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
	
	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);
	

	if(substate == SUB_STATE_DARKNESSMANTLE_0) {
		if(!obj.getVar("flag").get_vector(0))
		{
			if(frmIndex >= 4)
			{
				local skillLevel = obj.sq_GetSkillLevel(SKILL_DARKNESSMANTLE);
				
				local suckVel = obj.sq_GetIntData(SKILL_DARKNESSMANTLE, 0); // 0. �������?��
				// 0.�������?���� (<-100%->) 1.��Ʋ���ݷ�(%) 2.��ȭ���� 3.��ȭ���ӷ���
				local darkCircleRate = obj.sq_GetLevelData(SKILL_DARKNESSMANTLE, SKL_LVL_COLUMN_IDX_0, skillLevel);
				local expAtkRate = obj.sq_GetBonusRateWithPassive(SKILL_DARKNESSMANTLE, STATE_DARKNESSMANTLE, SKL_LVL_COLUMN_IDX_1, 1.0); // 1.��Ʋ���ݷ�(%)
				local slowLevel = obj.sq_GetLevelData(SKILL_DARKNESSMANTLE, SKL_LVL_COLUMN_IDX_2, skillLevel);
				local slowTime = obj.sq_GetLevelData(SKILL_DARKNESSMANTLE, SKL_LVL_COLUMN_IDX_3, skillLevel);
				
				// ũ�δ�Ŭ ������ �߰��۾�
				// ũ�δ�Ŭ������ �߰� ���?��Ҽ��?Ȯ���� (100%)
				local sizeRate = obj.sq_GetIntData(SKILL_DARKNESSMANTLE, 0); // 0. �������?��
			
				if(obj.isMyControlObject())
				{
					local fireOffsetX = 200;
					sq_BinaryStartWrite();
					sq_BinaryWriteDword(suckVel); // 
					sq_BinaryWriteDword(darkCircleRate); // 
					sq_BinaryWriteDword(expAtkRate); // 
					sq_BinaryWriteDword(slowLevel); // 
					sq_BinaryWriteDword(slowTime); // 
					// ũ�δ�Ŭ ������ �߰��۾�
					// ũ�δ�Ŭ������ �߰� ���?��Ҽ��?Ȯ���� (100%)
					local expSizeRate = obj.sq_GetIntData(SKILL_DARKNESSMANTLE, 1); // 1. ũ�δ�Ŭ������ �߰� ���?��Ҽ��?Ȯ���� (100%~)
					sq_BinaryWriteDword(expSizeRate); // 
					obj.sq_SendCreatePassiveObjectPacket(24252, 0, fireOffsetX, 1, 0);
				}
				obj.getVar("flag").set_vector(0, 1);
			}
			
		}
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_1) {
		// SUB_STATE_DARKNESSMANTLE_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_2) {
		// SUB_STATE_DARKNESSMANTLE_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_3) {
		// SUB_STATE_DARKNESSMANTLE_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_4) {
		// SUB_STATE_DARKNESSMANTLE_4 ���꽺����Ʈ �۾�
	}
	

}

function onEndCurrentAni_DarknessMantle(obj)
{

	if(!obj) return;

	if(!obj.isMyControlObject()) {
		return;
	}

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_DARKNESSMANTLE_CASTING)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_DARKNESSMANTLE_0); // substate����
		obj.sq_AddSetStatePacket(STATE_DARKNESSMANTLE, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_0)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_1) {
		// SUB_STATE_DARKNESSMANTLE_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_2) {
		// SUB_STATE_DARKNESSMANTLE_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_3) {
		// SUB_STATE_DARKNESSMANTLE_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_4) {
		// SUB_STATE_DARKNESSMANTLE_4 ���꽺����Ʈ �۾�
	}
	

}

function onKeyFrameFlag_DarknessMantle(obj, flagIndex)
{

	if(!obj) return false;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_DARKNESSMANTLE_0) {
		// SUB_STATE_DARKNESSMANTLE_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_1) {
		// SUB_STATE_DARKNESSMANTLE_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_2) {
		// SUB_STATE_DARKNESSMANTLE_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_3) {
		// SUB_STATE_DARKNESSMANTLE_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_4) {
		// SUB_STATE_DARKNESSMANTLE_4 ���꽺����Ʈ �۾�
	}
	

	return false;

}

function onEndState_DarknessMantle(obj, new_state)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
	if(substate == SUB_STATE_DARKNESSMANTLE_0) {
		// SUB_STATE_DARKNESSMANTLE_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_1) {
		// SUB_STATE_DARKNESSMANTLE_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_2) {
		// SUB_STATE_DARKNESSMANTLE_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_3) {
		// SUB_STATE_DARKNESSMANTLE_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_4) {
		// SUB_STATE_DARKNESSMANTLE_4 ���꽺����Ʈ �۾�
	}
	// ������Ʈ ���� Ȥ�� ���?�Ǿ��ٸ� ĳ���� ������ ����
	sq_EndDrawCastGauge(obj);

}

function onAfterSetState_DarknessMantle(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_DARKNESSMANTLE_0) {
		// SUB_STATE_DARKNESSMANTLE_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_1) {
		// SUB_STATE_DARKNESSMANTLE_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_2) {
		// SUB_STATE_DARKNESSMANTLE_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_3) {
		// SUB_STATE_DARKNESSMANTLE_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_DARKNESSMANTLE_4) {
		// SUB_STATE_DARKNESSMANTLE_4 ���꽺����Ʈ �۾�
	}
	

}
