
function checkExecutableSkill_overcharge(obj)  
{
	if (!obj) return false;
	
	local isUse = obj.sq_IsUseSkill(252);
	
	if (isUse) 
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(252 , STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_overcharge(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	
	if (state == STATE_STAND)
	
		return true;
	
	return true;
}

function onSetState_overcharge(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();

	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_OVERCHARGE);

		local skill_level = sq_GetSkillLevel(obj, 252);
		local change_time = sq_GetLevelData(obj, 252, SKL_STATIC_INT_IDX_0, skill_level);
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 252, false,"character/gunner/overcharge/ap_overcharge.nut", false);
		appendage.sq_SetValidTime(change_time);
		appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), 252, skill_level);
		CNSquirrelAppendage.sq_Append(appendage, obj, obj);
		appendage.setEnableIsBuff(true);
		appendage.setBuffIconImage(116);
		local PHYSICAL= sq_GetLevelData(obj, 252, SKL_STATIC_INT_IDX_1, skill_level);
		local MAGICAL= sq_GetLevelData(obj, 252, SKL_STATIC_INT_IDX_2, skill_level);

		appendage = obj.GetSquirrelAppendage("character/gunner/overcharge/ap_overcharge.nut");
		if(appendage)
		{
			local change_appendage = appendage.sq_getChangeStatus("overcharge");
			if(!change_appendage)
			{
				change_appendage = appendage.sq_AddChangeStatus("overcharge",obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, PHYSICAL);
			}
			if(change_appendage) 
			{
				change_appendage.clearParameter();

				change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, 	PHYSICAL.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, 	MAGICAL.tofloat());
			}
		}
	}
}

function onEndCurrentAni_overcharge(obj)
{
	if(!obj) return;
	local substate = obj.getSkillSubState();//üòö¢Ó×îñÐüÒöîÜSUBßÒ÷¾

	if(substate == 0)//Ó×àâöÇÐüÒöîÜ¡°substate¡±ßÒ÷¾ ÔõéÍ = 0 ãÁ£¬òûú¼ù»Öªú¾ÕáÞÐìý
	{
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);//æÑõóÌ¿áÖý¨£¬üáÜÖó×Ø¡¡£
	}
}