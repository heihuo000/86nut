
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_mysticequip")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_mysticequip")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_mysticequip")
}

function sq_AddEffect(appendage)
{
}

function onAttackParent_appendage_mysticequip(appendage)
{
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
}

function proc_appendage_mysticequip(appendage)
{
	if(!appendage) {
		return;
	}

	local parentObj = appendage.getParent();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);


	if (appendage.getVar("weapon").get_vector(0) != parentObj.getWeaponSubType() )
	{
		local appendage2 = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, SKILL_MYSTICEQUIP, false,
            "Character/Swordman/MysticEquip/Buff_MysticEquip.nut", false);

		local skill_level = sq_GetSkillLevel(parentObj, SKILL_MYSTICEQUIP);
		appendage2.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(parentObj), SKILL_MYSTICEQUIP, skill_level);
		CNSquirrelAppendage.sq_AppendAppendageID(appendage2, parentObj, parentObj, SKILL_MYSTICEQUIP, true);

		local change_time = parentObj.sq_GetIntData(SKILL_MYSTICEQUIP, 0);
		appendage2.sq_SetValidTime(change_time);

		local value0 = sq_GetLevelData(parentObj, SKILL_MYSTICEQUIP, 1, skill_level); 
		local value1 = sq_GetLevelData(parentObj, SKILL_MYSTICEQUIP, 2, skill_level); 

		local change_appendage = appendage2.sq_getChangeStatus("MySticEquip");

		if(!change_appendage)
		{
			change_appendage = appendage2.sq_AddChangeStatusAppendageID(parentObj, parentObj, 0, CHANGE_STATUS_TYPE_ATTACK_SPEED, false, value0, APID_COMMON);
		}
		if (change_appendage){
			change_appendage.clearParameter();
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, value0.tofloat() );
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, value1.tofloat() );
		}
		
		local power = parentObj.sq_GetPowerWithPassive(SKILL_MYSTICEQUIP, -1, SKL_LVL_COLUMN_IDX_0, -1, 1.0);

		local id = sq_GetObjectId(parentObj);
		
		parentObj.sq_StartWrite();
		parentObj.sq_WriteDword(25);
		parentObj.sq_WriteDword(id);
		parentObj.sq_WriteDword(power);
		parentObj.sq_SendCreatePassiveObjectPacket(224302, 0, 0, 0, 0);
		
		appendage.getVar("weapon").clear_vector();
		appendage.getVar("weapon").push_vector(parentObj.getWeaponSubType() );
	}
}

function onStart_appendage_mysticequip(appendage)
{
	if(!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);

	appendage.getVar("weapon").clear_vector();
	appendage.getVar("weapon").push_vector(parentObj.getWeaponSubType() );

}

function onEnd_appendage_mysticequip(appendage)
{
	if(!appendage) {
		return;
	}
}
