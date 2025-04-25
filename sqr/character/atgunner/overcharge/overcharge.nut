
function checkExecutableSkill_atovercharge(obj)  
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

function checkCommandEnable_atovercharge(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	
	if (state == STATE_STAND)
	
		return true;
	
	return true;
}

function onSetState_atovercharge(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();

	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATOVERCHARGE);

		local skill_level = sq_GetSkillLevel(obj, 252);
		local change_time = sq_GetLevelData(obj, 252, SKL_STATIC_INT_IDX_0, skill_level);
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 252, false,"character/atgunner/overcharge/ap_overcharge.nut", false);
		appendage.sq_SetValidTime(change_time);
		appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), 252, skill_level);
		CNSquirrelAppendage.sq_Append(appendage, obj, obj);
		appendage.setEnableIsBuff(true);
		appendage.setBuffIconImage(116);
		local PHYSICAL= sq_GetLevelData(obj, 252, SKL_STATIC_INT_IDX_1, skill_level);
		local MAGICAL= sq_GetLevelData(obj, 252, SKL_STATIC_INT_IDX_2, skill_level);

		appendage = obj.GetSquirrelAppendage("character/atgunner/overcharge/ap_overcharge.nut");
		if(appendage)
		{
			local change_appendage = appendage.sq_getChangeStatus("atovercharge");
			if(!change_appendage)
			{
				change_appendage = appendage.sq_AddChangeStatus("atovercharge",obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, PHYSICAL);
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

function onEndCurrentAni_atovercharge(obj)
{
	if(!obj) return;
	local substate = obj.getSkillSubState();

	if(substate == 0)
	{
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
	}
}