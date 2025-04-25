
function checkExecutableSkill_WuQi(obj)  
{
	if (!obj) return false;
	
	local isUse = obj.sq_IsUseSkill(SKILL_WUQI);
	
	if (isUse) 
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_WUQI , STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_WuQi(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	
	if (state == STATE_STAND)
	
		return true;
	
	return true;
}

function onSetState_WuQi(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	
	local substate = obj.sq_GetVectorData(datas, 0);
	
	obj.setSkillSubState(substate);
	
	obj.sq_StopMove();
	
	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_AccelLinksA_body);

	}



	local skill_level = sq_GetSkillLevel(obj, SKILL_WUQI);
	local change_time = sq_GetLevelData(obj, SKILL_WUQI, SKL_STATIC_INT_IDX_0, skill_level);
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_WUQI, false,"character/new_thief/wuqi/ap_wuqi.nut", false);
	appendage.sq_SetValidTime(change_time);
	appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_WUQI, skill_level);
	CNSquirrelAppendage.sq_Append(appendage, obj, obj);
	appendage.setEnableIsBuff(true);
	appendage.setBuffIconImage(136); //sprite_common_commoneffect
	local ATTACK_SPEED = sq_GetLevelData(obj, SKILL_WUQI, SKL_STATIC_INT_IDX_1, skill_level);
	local MOVE_SPEED = sq_GetLevelData(obj, SKILL_WUQI, SKL_STATIC_INT_IDX_2, skill_level);

	local CRITICAL_HIT_RATE = sq_GetLevelData(obj, SKILL_WUQI, SKL_STATIC_INT_IDX_3, skill_level);

	appendage = obj.GetSquirrelAppendage("character/new_thief/wuqi/ap_wuqi.nut");
	if(appendage)
	{
		local change_appendage = appendage.sq_getChangeStatus("ele_atk_water");
		if(!change_appendage)
		{
			change_appendage = appendage.sq_AddChangeStatus("ele_atk_water",obj, obj, 0, CHANGE_STATUS_TYPE_ATTACK_SPEED, false, ATTACK_SPEED);
		}
		if(change_appendage) 
		{
			change_appendage.clearParameter();
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, ATTACK_SPEED.tofloat());
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, MOVE_SPEED.tofloat());

			change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, CRITICAL_HIT_RATE.tofloat());

		}
	}

}

function onEndCurrentAni_WuQi(obj)
{
	
	local substate = obj.getSkillSubState();
	
	local HitCount = obj.getVar().getInt(0);
	
	obj.getVar().setInt(0,HitCount + 1);
	
	if(substate == 0)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
	}
}