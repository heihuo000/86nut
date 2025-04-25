/////////////////////////////////////////////////////////
//
// �нú� ��ųó��
// �ش� ��ų�� �нú� ��ų�� Appendage���/���� ���
//
/////////////////////////////////////////////////////////


function ProcPassiveSkill_CreatorMage(obj, skill_index, skill_level)
{
	if (skill_index == SKILL_FIREWALL || skill_index == SKILL_FIREMETEO)
	{ // firewall
		if (skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, 
			"Character/CreatorMage/ap_creatormage_flame.nut", true);

			if (appendage)
			{
				local attributeSkill = SKILL_CREATORFLAME;				
				local level = sq_GetSkillLevel(obj, attributeSkill);
				// 0.�ƽ� ������ ��ġ
				local maxCnt = sq_GetLevelData(obj, attributeSkill, 0, level);

				if (appendage.sq_var.size_vector() == 0)
				{
					for (local i = 0; i < I_SIZE; i++)
						appendage.sq_var.push_vector(0);

					appendage.sq_var.set_vector(I_REMAIN_COUNT, maxCnt);
				}
				
				local beforeMaxCnt = appendage.sq_var.get_vector(I_MAX_COUNT);
				appendage.sq_var.set_vector(I_MAX_COUNT, maxCnt);

				
				if (appendage.sq_var.get_vector(I_REMAIN_COUNT) > appendage.sq_var.get_vector(I_MAX_COUNT) || sq_GetCurrentModuleType() == MODULE_TYPE_ROOM_LIST)
				{	
					// ���� �������� �ƽ�ġ���� ũ�ٸ� �ƽ�ġ ��ŭ�� ������ŵ�ϴ�.
					appendage.sq_var.set_vector(I_REMAIN_COUNT, maxCnt);
				}
				else if (beforeMaxCnt > 0 && beforeMaxCnt != maxCnt)
				{
					setCreatorSkillStateSkillIndex(obj, -1);
					onAllChargeCreatorMageGauge(obj);
				}

				// 0. �� ä���������� �ɸ��� �ð� (ms)
				local chargeTime = sq_GetIntData(obj, attributeSkill, 0);
				appendage.sq_var.set_vector(I_CHARGE_TIME, chargeTime);

				local chargeMode = appendage.sq_var.get_vector(l_CHARGE_ON);

				if (chargeMode)
				{
					local remainCnt = appendage.sq_var.get_vector(I_REMAIN_COUNT);
					appendage.sq_var.set_vector(I_CHARGE_INIT_COUNT, remainCnt);
					local time = appendage.sq_var.get_vector(I_CURRENT_CHARGE_TIME);

					if ((chargeTime - time) > 0)
						appendage.sq_var.set_vector(I_CHARGE_TIME, chargeTime - time);
				}
				else
				{
					appendage.sq_var.set_vector(I_CHARGE_INIT_COUNT, 0);
					appendage.sq_var.set_vector(I_CURRENT_CHARGE_TIME, 0);
					//appendage.sq_var.set_vector(I_REMAIN_COUNT, maxCnt);
				}

			}
		}
	}
	else if (skill_index == SKILL_ICEROCK || skill_index == SKILL_ICEPLATE)
	{
		if (skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, 
			"Character/CreatorMage/ap_creatormage_ice.nut", true);

			if (appendage)
			{
				local attributeSkill = SKILL_CREATORICE;				
				local level = sq_GetSkillLevel(obj, attributeSkill);
				// 0.�ƽ� ������ ��ġ
				local maxCnt = sq_GetLevelData(obj, attributeSkill, 0, level);

				if (appendage.sq_var.size_vector() == 0)
				{
					for (local i = 0; i < I_SIZE; i++)
						appendage.sq_var.push_vector(0);

					appendage.sq_var.set_vector(I_REMAIN_COUNT, maxCnt);
				}
				
				local beforeMaxCnt = appendage.sq_var.get_vector(I_MAX_COUNT);
				appendage.sq_var.set_vector(I_MAX_COUNT, maxCnt);

				if (appendage.sq_var.get_vector(I_REMAIN_COUNT) > appendage.sq_var.get_vector(I_MAX_COUNT) || sq_GetCurrentModuleType() == MODULE_TYPE_ROOM_LIST)
				{	
					// ���� �������� �ƽ�ġ���� ũ�ٸ� �ƽ�ġ ��ŭ�� ������ŵ�ϴ�.
					appendage.sq_var.set_vector(I_REMAIN_COUNT, maxCnt);
				}
				else if (beforeMaxCnt > 0 && beforeMaxCnt != maxCnt)
				{
					setCreatorSkillStateSkillIndex(obj, -1);
					onAllChargeCreatorMageGauge(obj);
				}

				
				// 0. �� ä���������� �ɸ��� �ð� (ms)
				local chargeTime = sq_GetIntData(obj, attributeSkill, 0);
				appendage.sq_var.set_vector(I_CHARGE_TIME, chargeTime);

				local chargeMode = appendage.sq_var.get_vector(l_CHARGE_ON);

				if (chargeMode)
				{
					local remainCnt = appendage.sq_var.get_vector(I_REMAIN_COUNT);
					appendage.sq_var.set_vector(I_CHARGE_INIT_COUNT, remainCnt);
					local time = appendage.sq_var.get_vector(I_CURRENT_CHARGE_TIME);

					print(" chargeMode:" + chargeMode);
					print(" delayTime:" + time);

					if ((chargeTime - time) > 0)
						appendage.sq_var.set_vector(I_CHARGE_TIME, chargeTime - time);
				}
				else
				{
					appendage.sq_var.set_vector(I_CHARGE_INIT_COUNT, 0);
					appendage.sq_var.set_vector(I_CURRENT_CHARGE_TIME, 0);
					//appendage.sq_var.set_vector(I_REMAIN_COUNT, maxCnt);
				}

			}
		}
	}
	else if (skill_index == SKILL_WOODFENCE || skill_index == SKILL_MGRAB)
	{
		if (skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, 
			"Character/CreatorMage/ap_creatormage_disturb.nut", true);

			if (appendage)
			{
				local attributeSkill = SKILL_CREATORDISTURB;				
				local level = sq_GetSkillLevel(obj, attributeSkill);
				// 0.�ƽ� ������ ��ġ
				local maxCnt = sq_GetLevelData(obj, attributeSkill, 0, level);

				if (appendage.sq_var.size_vector() == 0)
				{
					for (local i = 0; i < I_SIZE; i++)
						appendage.sq_var.push_vector(0);

					appendage.sq_var.set_vector(I_REMAIN_COUNT, maxCnt);
				}
				
				local beforeMaxCnt = appendage.sq_var.get_vector(I_MAX_COUNT);
				appendage.sq_var.set_vector(I_MAX_COUNT, maxCnt);

				if (appendage.sq_var.get_vector(I_REMAIN_COUNT) > appendage.sq_var.get_vector(I_MAX_COUNT) || sq_GetCurrentModuleType() == MODULE_TYPE_ROOM_LIST)
				{	
					// ���� �������� �ƽ�ġ���� ũ�ٸ� �ƽ�ġ ��ŭ�� ������ŵ�ϴ�.
					appendage.sq_var.set_vector(I_REMAIN_COUNT, maxCnt);
				}
				else if (beforeMaxCnt > 0 && beforeMaxCnt != maxCnt)
				{
					setCreatorSkillStateSkillIndex(obj, -1);
					onAllChargeCreatorMageGauge(obj);
				}

				//appendage.sq_var.set_vector(I_REMAIN_COUNT, maxCnt);
				//appendage.sq_var.set_vector(l_CHARGE_ON, 0);
				
				// 0. �� ä���������� �ɸ��� �ð� (ms)
				local chargeTime = sq_GetIntData(obj, attributeSkill, 0);
				appendage.sq_var.set_vector(I_CHARGE_TIME, chargeTime);

				local chargeMode = appendage.sq_var.get_vector(l_CHARGE_ON);

				if (chargeMode)
				{
					local remainCnt = appendage.sq_var.get_vector(I_REMAIN_COUNT);
					appendage.sq_var.set_vector(I_CHARGE_INIT_COUNT, remainCnt);
					local time = appendage.sq_var.get_vector(I_CURRENT_CHARGE_TIME);

					print(" chargeMode:" + chargeMode);
					print(" delayTime:" + time);

					if ((chargeTime - time) > 0)
						appendage.sq_var.set_vector(I_CHARGE_TIME, chargeTime - time);
				}
				else
				{
					appendage.sq_var.set_vector(I_CHARGE_INIT_COUNT, 0);
					appendage.sq_var.set_vector(I_CURRENT_CHARGE_TIME, 0);
					//appendage.sq_var.set_vector(I_REMAIN_COUNT, maxCnt);
				}
			}
		}
	}
	else if (skill_index == SKILL_FIREHURRICANE || skill_index == SKILL_ICESHIELD)
	{
		if (skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, 
			"Character/CreatorMage/ap_creatormage_guardian.nut", true);

			if (appendage)
			{
				local attributeSkill = SKILL_CREATORGUARDIAN;				
				local level = sq_GetSkillLevel(obj, attributeSkill);
				// 0.�ƽ� ������ ��ġ
				local maxCnt = sq_GetLevelData(obj, attributeSkill, 0, level);

				if (appendage.sq_var.size_vector() == 0)
				{
					for (local i = 0; i < I_SIZE; i++)
						appendage.sq_var.push_vector(0);

					appendage.sq_var.set_vector(I_REMAIN_COUNT, maxCnt);
				}
				
				local beforeMaxCnt = appendage.sq_var.get_vector(I_MAX_COUNT);
				appendage.sq_var.set_vector(I_MAX_COUNT, maxCnt);
				
				if (appendage.sq_var.get_vector(I_REMAIN_COUNT) > appendage.sq_var.get_vector(I_MAX_COUNT) || sq_GetCurrentModuleType() == MODULE_TYPE_ROOM_LIST)
				{	
					// ���� �������� �ƽ�ġ���� ũ�ٸ� �ƽ�ġ ��ŭ�� ������ŵ�ϴ�.
					appendage.sq_var.set_vector(I_REMAIN_COUNT, maxCnt);
				}
				else if (beforeMaxCnt > 0 && beforeMaxCnt != maxCnt)
				{
					setCreatorSkillStateSkillIndex(obj, -1);
					onAllChargeCreatorMageGauge(obj);
				}


				// 0. �� ä���������� �ɸ��� �ð� (ms)
				local chargeTime = sq_GetIntData(obj, attributeSkill, 0);
				appendage.sq_var.set_vector(I_CHARGE_TIME, chargeTime);

				local chargeMode = appendage.sq_var.get_vector(l_CHARGE_ON);

				if (chargeMode)
				{
					local remainCnt = appendage.sq_var.get_vector(I_REMAIN_COUNT);
					appendage.sq_var.set_vector(I_CHARGE_INIT_COUNT, remainCnt);
					local time = appendage.sq_var.get_vector(I_CURRENT_CHARGE_TIME);

					print(" chargeMode:" + chargeMode);
					print(" delayTime:" + time);

					if ((chargeTime - time) > 0)
						appendage.sq_var.set_vector(I_CHARGE_TIME, chargeTime - time);
				}
				else
				{
					appendage.sq_var.set_vector(I_CHARGE_INIT_COUNT, 0);
					appendage.sq_var.set_vector(I_CURRENT_CHARGE_TIME, 0);
					//appendage.sq_var.set_vector(I_REMAIN_COUNT, maxCnt);
				}

			}
		}
	}
	else if (skill_index == SKILL_WINDPRESS || skill_index == SKILL_WINDSTORM)
	{
		// ���� �Ӽ�
		if (skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, 
			"Character/CreatorMage/ap_creatormage_wind.nut", true);

			if (appendage)
			{
				local attributeSkill = SKILL_CREATORWIND;				
				local level = sq_GetSkillLevel(obj, attributeSkill);
				// 0.�ƽ� ������ ��ġ
				local maxCnt = sq_GetLevelData(obj, attributeSkill, 0, level);

				if (appendage.sq_var.size_vector() == 0)
				{
					for (local i = 0; i < I_SIZE; i++)
						appendage.sq_var.push_vector(0);

					appendage.sq_var.set_vector(I_REMAIN_COUNT, maxCnt);
				}
				
				local beforeMaxCnt = appendage.sq_var.get_vector(I_MAX_COUNT);
				appendage.sq_var.set_vector(I_MAX_COUNT, maxCnt);
				
				if (appendage.sq_var.get_vector(I_REMAIN_COUNT) > appendage.sq_var.get_vector(I_MAX_COUNT) || sq_GetCurrentModuleType() == MODULE_TYPE_ROOM_LIST)
				{	
					// ���� �������� �ƽ�ġ���� ũ�ٸ� �ƽ�ġ ��ŭ�� ������ŵ�ϴ�.
					appendage.sq_var.set_vector(I_REMAIN_COUNT, maxCnt);
				}
				else if (beforeMaxCnt > 0 && beforeMaxCnt != maxCnt)
				{
					setCreatorSkillStateSkillIndex(obj, -1);
					onAllChargeCreatorMageGauge(obj);
				}


				// 0. �� ä���������� �ɸ��� �ð� (ms)
				local chargeTime = sq_GetIntData(obj, attributeSkill, 0);
				appendage.sq_var.set_vector(I_CHARGE_TIME, chargeTime);

				local chargeMode = appendage.sq_var.get_vector(l_CHARGE_ON);

				if (chargeMode)
				{
					local remainCnt = appendage.sq_var.get_vector(I_REMAIN_COUNT);
					appendage.sq_var.set_vector(I_CHARGE_INIT_COUNT, remainCnt);
					local time = appendage.sq_var.get_vector(I_CURRENT_CHARGE_TIME);

					print(" chargeMode:" + chargeMode);
					print(" delayTime:" + time);

					if ((chargeTime - time) > 0)
						appendage.sq_var.set_vector(I_CHARGE_TIME, chargeTime - time);
				}
				else
				{
					appendage.sq_var.set_vector(I_CHARGE_INIT_COUNT, 0);
					appendage.sq_var.set_vector(I_CURRENT_CHARGE_TIME, 0);
					//appendage.sq_var.set_vector(I_REMAIN_COUNT, maxCnt);
				}

			}
		}
	}
	
	return true;
}


function onUseSkillPassiveSkill_CreatorMage(obj,skillIndex, skillLevel)
{
	if(!obj)
		return;		

}




