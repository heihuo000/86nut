
SUB_STATE_ELEMENTALSTRIKEEX_0	<- 0
SUB_STATE_ELEMENTALSTRIKEEX_1	<- 1

function checkExecutableSkill_ElementalStrikeEx(obj)
{

	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_ELEMENTAL_STRIKE_EX);

	if(b_useskill)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_ELEMENTALSTRIKEEX_0); // substate����
		obj.sq_AddSetStatePacket(STATE_ELEMENTAL_STRIKE_EX, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}	

	return false;

}

function checkCommandEnable_ElementalStrikeEx(obj)
{

	if(!obj) return false;

	local state = obj.sq_GetState();

	if(state == STATE_ATTACK)
	{
		return obj.sq_IsCommandEnable(SKILL_ELEMENTAL_STRIKE_EX); // �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20] obj.sq_IsCommandEnable(SKILL_BROKENARROW);
	}

	return true;

}

function onSetState_ElementalStrikeEx(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	
	obj.sq_StopMove();

	if(substate == SUB_STATE_ELEMENTALSTRIKEEX_0)
	{
		local expAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_ELEMENTAL_STRIKE_EX, STATE_ELEMENTAL_STRIKE_EX, 0, 1.0); // 0.���߰��ݷ�(%)
		local poleAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_ELEMENTAL_STRIKE_EX, STATE_ELEMENTAL_STRIKE_EX, 1, 1.0); // 1.���?���ݷ� (%)
		local imagePerRate = obj.sq_GetIntData(SKILL_ELEMENTAL_STRIKE_EX, 0); // 0.ũ��						
		local speedRate = obj.sq_GetIntData(SKILL_ELEMENTAL_STRIKE_EX, 1); // 150 // 1.�ִϼӵ�
	
	
		local element = obj.getThrowElement();	
		local passiveObjectIndex = 24310; // 24310	`Character/Mage/ATElementalStrikeFireEx.obj`		// ������Ż ��Ʈ����ũ (Ư��) : ȭ�Ӽ�
		addElementalChain_ATMage(obj, element);
		
		if (element == ENUM_ELEMENT_FIRE)
		{
			obj.sq_PlaySound("EBUSTER_CAST_01");
			passiveObjectIndex = 24310; // 24310	`Character/Mage/ATElementalStrikeFireEx.obj`		// ������Ż ��Ʈ����ũ (Ư��) : ȭ�Ӽ�
		}
		else if(element == ENUM_ELEMENT_WATER)
		{			
			obj.sq_PlaySound("EBUSTER_CAST_02");
			passiveObjectIndex = 24313; // 24313	`Character/Mage/ATElementalStrikeWaterEx.obj`		// ������Ż ��Ʈ����ũ (Ư��) : ���Ӽ�
		}
		else if(element == ENUM_ELEMENT_DARK)
		{			
			obj.sq_PlaySound("EBUSTER_CAST_04");
			passiveObjectIndex = 24311; // 24311	`Character/Mage/ATElementalStrikeDarkEx.obj`		// ������Ż ��Ʈ����ũ (Ư��) : �ϼӼ�
		}
		else if(element == ENUM_ELEMENT_LIGHT)
		{			
			obj.sq_PlaySound("EBUSTER_CAST_03");
			passiveObjectIndex = 24314; // 24314	`Character/Mage/ATElementalStrikeLightEx.obj`		// ������Ż ��Ʈ����ũ (Ư��) : ��Ӽ�?
		}
		else if(element == ENUM_ELEMENT_NONE)
		{			
			obj.sq_PlaySound("EBUSTER_CAST_01");
			passiveObjectIndex = 24312; // 24312	`Character/Mage/ATElementalStrikeNoneEx.obj`		// ������Ż ��Ʈ����ũ (Ư��) : ���Ӽ�
		}

		if(obj.isMyControlObject())
		{
			local distanceL = 200;
			
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(poleAttackRate); // ���?���ݷ�
			sq_BinaryWriteDword(expAttackRate); // ���� ���ݷ�
			sq_BinaryWriteDword(imagePerRate); // �̹��� ����
			sq_BinaryWriteDword(element); // �Ӽ�
			sq_BinaryWriteDword(speedRate); // �ִϼӵ�	
			
			obj.sq_SendCreatePassiveObjectPacket(passiveObjectIndex, 0, distanceL, -30, 0); // 24310	`Character/Mage/ATElementalStrikeFireEx.obj`		// ������Ż ��Ʈ����ũ (Ư��) : ȭ�Ӽ�
		}
	
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ELEMENTAL_STRIKE_EX);
		
		local currentAni = obj.getCurrentAnimation();
		
		if(currentAni)
		{
			currentAni.setSpeedRate(speedRate.tofloat());
		}
		
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local aniStr = "Character/Mage/Effect/Animation/ATElementalStrikeEx/16_0-f-hand_dodge_fire.ani";
		
		local element = obj.getThrowElement();	
		
		if (element == ENUM_ELEMENT_FIRE)
		{
			aniStr = "Character/Mage/Effect/Animation/ATElementalStrikeEx/16_0-f-hand_dodge_fire.ani";
		}
		else if(element == ENUM_ELEMENT_WATER)
		{			
			aniStr = "Character/Mage/Effect/Animation/ATElementalStrikeEx/16_0-f-hand_dodge_water.ani";
		}
		else if(element == ENUM_ELEMENT_DARK)
		{			
			aniStr = "Character/Mage/Effect/Animation/ATElementalStrikeEx/16_0-f-hand_dodge_dark.ani";
		}
		else if(element == ENUM_ELEMENT_LIGHT)
		{			
			aniStr = "Character/Mage/Effect/Animation/ATElementalStrikeEx/16_0-f-hand_dodge_light.ani";
		}
		else if(element == ENUM_ELEMENT_NONE)
		{			
			aniStr = "Character/Mage/Effect/Animation/ATElementalStrikeEx/16_0-f-hand_dodge_nothing.ani";
		}
		local addAni = sq_CreateAnimation("",aniStr);
		currentAni.addLayerAnimation(10001,addAni,true);
		
	}
	else if(substate == SUB_STATE_ELEMENTALSTRIKEEX_1) {
		// SUB_STATE_ELEMENTALSTRIKEEX_1 ���꽺����Ʈ �۾�
	}
	
obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED , SPEED_TYPE_CAST_SPEED , SPEED_VALUE_DEFAULT , SPEED_VALUE_DEFAULT , 1.0 , 1.0);
}

function prepareDraw_ElementalStrikeEx(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ELEMENTALSTRIKEEX_0) {
		// SUB_STATE_ELEMENTALSTRIKEEX_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ELEMENTALSTRIKEEX_1) {
		// SUB_STATE_ELEMENTALSTRIKEEX_1 ���꽺����Ʈ �۾�
	}
	

}

function onProc_ElementalStrikeEx(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);

	if(substate == SUB_STATE_ELEMENTALSTRIKEEX_0) {
		// SUB_STATE_ELEMENTALSTRIKEEX_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ELEMENTALSTRIKEEX_1) {
		// SUB_STATE_ELEMENTALSTRIKEEX_1 ���꽺����Ʈ �۾�
	}
	

}

function onProcCon_ElementalStrikeEx(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ELEMENTALSTRIKEEX_0) {
		// SUB_STATE_ELEMENTALSTRIKEEX_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ELEMENTALSTRIKEEX_1) {
		// SUB_STATE_ELEMENTALSTRIKEEX_1 ���꽺����Ʈ �۾�
	}
	

}

function onEndCurrentAni_ElementalStrikeEx(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
	
	if(!obj.isMyControlObject())
		return;

	if(substate == SUB_STATE_ELEMENTALSTRIKEEX_0)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
	else if(substate == SUB_STATE_ELEMENTALSTRIKEEX_1) {
		// SUB_STATE_ELEMENTALSTRIKEEX_1 ���꽺����Ʈ �۾�
	}
	

}

function onKeyFrameFlag_ElementalStrikeEx(obj, flagIndex)
{

	if(!obj) return false;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ELEMENTALSTRIKEEX_0) {
		// SUB_STATE_ELEMENTALSTRIKEEX_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ELEMENTALSTRIKEEX_1) {
		// SUB_STATE_ELEMENTALSTRIKEEX_1 ���꽺����Ʈ �۾�
	}
	

	return false;

}

function onEndState_ElementalStrikeEx(obj, new_state)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ELEMENTALSTRIKEEX_0) {
	}
	else if(substate == SUB_STATE_ELEMENTALSTRIKEEX_1) {
		// SUB_STATE_ELEMENTALSTRIKEEX_1 ���꽺����Ʈ �۾�
	}
	

}

function onAfterSetState_ElementalStrikeEx(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ELEMENTALSTRIKEEX_0) {
		// SUB_STATE_ELEMENTALSTRIKEEX_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ELEMENTALSTRIKEEX_1) {
		// SUB_STATE_ELEMENTALSTRIKEEX_1 ���꽺����Ʈ �۾�
	}
	

}

