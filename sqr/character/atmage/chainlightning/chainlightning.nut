
SUB_STATE_ATCHAINLIGHTNING_0	<- 0
SUB_STATE_ATCHAINLIGHTNING_1	<- 1
SUB_STATE_ATCHAINLIGHTNING_2	<- 2
SUB_STATE_ATCHAINLIGHTNING_3	<- 3
SUB_STATE_ATCHAINLIGHTNING_4	<- 4

SKL_CL_SD_0 <- 0 //200	// 10.ó�� Ÿ���ý� Y�� ���� (���� ����)
SKL_CL_SD_1 <- 1 //0	// 11.ó�� Ÿ���ý� X�� ���� �Ÿ�
SKL_CL_SD_2 <- 2 //400	// 12.ó�� Ÿ���ý� X�� �� �Ÿ�
SKL_CL_SD_3 <- 3 //320	// 13.ü�ν� ���� Ÿ�ٱ����� �ִ� �Ÿ�
SKL_CL_SD_4 <- 4 //300	// 14.Ÿ���� ���� �ִ� ����

// 0.��ũ �ִ� ���� 1.���ӽð� 2.���ݷ�(%) 3.�ٴ���Ʈ Ƚ�� 4.�ٴ���Ʈ ����
SKL_CL_LI_0 <- 0 // 0.��ũ �ִ� ���� 
SKL_CL_LI_1 <- 1 // 1.���ӽð�
SKL_CL_LI_2 <- 2 // 2.���ݷ�(%)
SKL_CL_LI_3 <- 3 // 3.�ٴ���Ʈ Ƚ��
SKL_CL_LI_4 <- 4 // 4.�ٴ���Ʈ ����

function checkExecutableSkill_ChainLightning(obj)
{

	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_ATCHAINLIGHTNING);
	
	print("b_useskill : %d" + b_useskill);

	if(b_useskill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_ATCHAINLIGHTNING_0); // substate����
		obj.sq_AddSetStatePacket(STATE_CHAINLIGHTNING, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}	

	return false;

}

function checkCommandEnable_ChainLightning(obj)
{

	if(!obj) return false;

	local state = obj.sq_GetState();
	
	if(state == STATE_ATTACK)
	{
		return obj.sq_IsCommandEnable(SKILL_ATCHAINLIGHTNING); // �����忡���� Ư����ų�� ĵ���� �����մϴ�. �۾���:������ [2012.04.20] obj.sq_IsCommandEnable(SKILL_BROKENARROW);
	}

	return true;

}

function onSetState_ChainLightning(obj, state, datas, isResetTimer)
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

	if(substate == SUB_STATE_ATCHAINLIGHTNING_0) {
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_CHAINLIGHTNING_CAST);
		local pAni = obj.sq_GetCurrentAni();
		
		// ĳ���� �ӵ��� ���󰡵��� ����
		// ĳ���� �ӵ��� ����Ǹ�? ���ϸ��̼� �ӵ��� ���� �˴ϴ�.
		// ĳ���� �������� ǥ�ø� ���ݴϴ�.
		local skillLevel = sq_GetSkillLevel(obj, SKILL_ATCHAINLIGHTNING);
		
		local castTime = sq_GetCastTime(obj, SKILL_ATCHAINLIGHTNING, skillLevel);
		local animation = sq_GetCurrentAnimation(obj);
		local startTime = sq_GetFrameStartTime(animation, 16);
		local speedRate = startTime.tofloat() / castTime.tofloat();
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, speedRate, speedRate);

		sq_StartDrawCastGauge(obj, startTime, true);
		addElementalChain_ATMage(obj, ENUM_ELEMENT_LIGHT);
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_1) {
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_CHAINLIGHTNING);		
		obj.sq_PlaySound("MW_CHAINLIGHT");

		if(obj.isMyControlObject()) {
			/////////////////////////////////////////////		
			local firstTargetYRange = obj.sq_GetIntData(SKILL_ATCHAINLIGHTNING, SKL_CL_SD_0); // 0.ó�� Ÿ���ý� Y�� ���� (���� ����)
			local firstTargetXStartRange = obj.sq_GetIntData(SKILL_ATCHAINLIGHTNING, SKL_CL_LI_1); // 1.ó�� Ÿ���ý� X�� ���� �Ÿ�
			local firstTargetXEndRange = obj.sq_GetIntData(SKILL_ATCHAINLIGHTNING, SKL_CL_SD_2); // 2.ó�� Ÿ���ý� X�� �� �Ÿ�
			local nextTargetRange = obj.sq_GetIntData(SKILL_ATCHAINLIGHTNING, SKL_CL_SD_3); // 3.ü�ν� ���� Ÿ�ٱ����� �ִ� �Ÿ�
			local targetMaxHeight = obj.sq_GetIntData(SKILL_ATCHAINLIGHTNING, SKL_CL_SD_4); // 4.Ÿ���� ���� �ִ� ����
			
			local skill_level = obj.sq_GetSkillLevel(SKILL_ATCHAINLIGHTNING);
			
			local link_num = obj.sq_GetLevelData(SKILL_ATCHAINLIGHTNING, SKL_CL_LI_0, skill_level); // 0.��ũ �ִ� ���� 
			local attack_time = obj.sq_GetLevelData(SKILL_ATCHAINLIGHTNING, SKL_CL_LI_1, skill_level);	// 1.���ӽð�
			local firstAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_ATCHAINLIGHTNING, STATE_CHAINLIGHTNING, SKL_CL_LI_2, 1.0); //2.���ݷ�(%)
			local multi_hit_num = obj.sq_GetLevelData(SKILL_ATCHAINLIGHTNING, SKL_CL_LI_3, skill_level);	// 3.�ٴ���Ʈ Ƚ��
			//local multi_hit_term = obj.sq_GetLevelData(SKILL_ATCHAINLIGHTNING, SKL_CL_LI_4, skill_level);	// 4.�ٴ���Ʈ ����
			////////////////////////////////////////////////
			sq_BinaryStartWrite();
			sq_BinaryWriteWord(firstTargetYRange);
			sq_BinaryWriteWord(firstTargetXStartRange);
			sq_BinaryWriteWord(firstTargetXEndRange);
			sq_BinaryWriteWord(nextTargetRange);
			sq_BinaryWriteWord(targetMaxHeight);
    		
			sq_BinaryWriteWord(link_num);
			sq_BinaryWriteWord(attack_time);
			sq_BinaryWriteDword(firstAttackRate);
			sq_BinaryWriteWord(multi_hit_num);
			//sq_BinaryWriteWord(multi_hit_term);
			
			
    		//local ropeX = sq_GetDistancePos(posX, obj.getDirection(), offsetLen);
    		local distanceL = 50;
    		local h = 88;
    		obj.sq_SendCreatePassiveObjectPacket(24241, 0, distanceL, 0, h);
    		
    		obj.sq_PlaySound("CHAINLIGHT_ELEC_LOOP", 7576);
    	}
		
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_2) {
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_CHAINLIGHTNING_END);
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_3) {
		// SUB_STATE_ATCHAINLIGHTNING_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_4) {
		// SUB_STATE_ATCHAINLIGHTNING_4 ���꽺����Ʈ �۾�
	}
	
obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED , SPEED_TYPE_CAST_SPEED , SPEED_VALUE_DEFAULT , SPEED_VALUE_DEFAULT , 1.0 , 1.0);
}

function prepareDraw_ChainLightning(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ATCHAINLIGHTNING_0) {
		// SUB_STATE_ATCHAINLIGHTNING_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_1) {
		// SUB_STATE_ATCHAINLIGHTNING_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_2) {
		// SUB_STATE_ATCHAINLIGHTNING_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_3) {
		// SUB_STATE_ATCHAINLIGHTNING_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_4) {
		// SUB_STATE_ATCHAINLIGHTNING_4 ���꽺����Ʈ �۾�
	}
	

}

function onProc_ChainLightning(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);

	if(substate == SUB_STATE_ATCHAINLIGHTNING_0) {
		// SUB_STATE_ATCHAINLIGHTNING_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_1) {
		// SUB_STATE_ATCHAINLIGHTNING_1 ���꽺����Ʈ �۾�
		if(obj.isMyControlObject()) {
			//if(!obj.sq_GetPassiveObject(24241)) {
			
			local skill_level = obj.sq_GetSkillLevel(SKILL_ATCHAINLIGHTNING);
			local attack_time = obj.sq_GetLevelData(SKILL_ATCHAINLIGHTNING, SKL_CL_LI_1, skill_level);	// 1.���ӽð�
			
			local passiveobj_cl = obj.sq_GetPassiveObject(24241);
			
			
			if(passiveobj_cl) {
				local flag = passiveobj_cl.getVar("nograb").get_vector(0);
				
				if(flag)
				{
					obj.sq_IntVectClear();
					obj.sq_IntVectPush(SUB_STATE_ATCHAINLIGHTNING_2);
					obj.sq_AddSetStatePacket(STATE_CHAINLIGHTNING, STATE_PRIORITY_USER, true);
					return;
				}
				else
				{
					if(obj.getVar().get_vector(0) == 0) {
						obj.sq_SetShake(obj,1,attack_time);
						obj.getVar().set_vector(0, 1);
					}
				}
				
			}
			
			if(currentT > attack_time) {
				//obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(SUB_STATE_ATCHAINLIGHTNING_2);
				obj.sq_AddSetStatePacket(STATE_CHAINLIGHTNING, STATE_PRIORITY_USER, true);
			}
		}
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_2) {
		// SUB_STATE_ATCHAINLIGHTNING_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_3) {
		// SUB_STATE_ATCHAINLIGHTNING_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_4) {
		// SUB_STATE_ATCHAINLIGHTNING_4 ���꽺����Ʈ �۾�
	}
	

}

function onProcCon_ChainLightning(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ATCHAINLIGHTNING_0) {
		// SUB_STATE_ATCHAINLIGHTNING_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_1) {
		// SUB_STATE_ATCHAINLIGHTNING_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_2) {
		// SUB_STATE_ATCHAINLIGHTNING_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_3) {
		// SUB_STATE_ATCHAINLIGHTNING_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_4) {
		// SUB_STATE_ATCHAINLIGHTNING_4 ���꽺����Ʈ �۾�
	}
	

}

function onEndCurrentAni_ChainLightning(obj)
{

	if(!obj) return;
	
	//local pSickleObj = obj.sq_GetPassiveObject(24101); // sickle 

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ATCHAINLIGHTNING_0) {
		if(obj.isMyControlObject()) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(SUB_STATE_ATCHAINLIGHTNING_1);
			obj.sq_AddSetStatePacket(STATE_CHAINLIGHTNING, STATE_PRIORITY_USER, true);
		}
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_1) {
		// SUB_STATE_ATCHAINLIGHTNING_1 ���꽺����Ʈ �۾�
		//if(obj.isMyControlObject()) {
			//obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		//}
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_2) {
		if(obj.isMyControlObject()) {
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_3) {
		// SUB_STATE_ATCHAINLIGHTNING_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_4) {
		// SUB_STATE_ATCHAINLIGHTNING_4 ���꽺����Ʈ �۾�
	}
	

}

function onKeyFrameFlag_ChainLightning(obj, flagIndex)
{

	if(!obj) return false;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ATCHAINLIGHTNING_0) {
		// SUB_STATE_ATCHAINLIGHTNING_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_1) {
		// SUB_STATE_ATCHAINLIGHTNING_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_2) {
		// SUB_STATE_ATCHAINLIGHTNING_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_3) {
		// SUB_STATE_ATCHAINLIGHTNING_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_4) {
		// SUB_STATE_ATCHAINLIGHTNING_4 ���꽺����Ʈ �۾�
	}
	

	return false;

}

function onEndState_ChainLightning(obj, new_state)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ATCHAINLIGHTNING_0) {
		// SUB_STATE_ATCHAINLIGHTNING_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_1) {
		// SUB_STATE_ATCHAINLIGHTNING_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_2) {
		// SUB_STATE_ATCHAINLIGHTNING_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_3) {
		// SUB_STATE_ATCHAINLIGHTNING_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_4) {
		// SUB_STATE_ATCHAINLIGHTNING_4 ���꽺����Ʈ �۾�
	}
	// ������Ʈ ���� Ȥ�� ���?�Ǿ��ٸ� ĳ���� ������ ����
	sq_EndDrawCastGauge(obj);
	obj.stopSound(7576);

}

function onAfterSetState_ChainLightning(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	if(substate == SUB_STATE_ATCHAINLIGHTNING_0) {
		// SUB_STATE_ATCHAINLIGHTNING_0 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_1) {
		// SUB_STATE_ATCHAINLIGHTNING_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_2) {
		// SUB_STATE_ATCHAINLIGHTNING_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_3) {
		// SUB_STATE_ATCHAINLIGHTNING_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ATCHAINLIGHTNING_4) {
		// SUB_STATE_ATCHAINLIGHTNING_4 ���꽺����Ʈ �۾�
	}
	

}

