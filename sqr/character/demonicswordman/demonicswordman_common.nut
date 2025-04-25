
function procSkill_DemonicSwordman(obj)
{

	procSkill_overflow(obj);

}






function procSkill_overflow(obj)
{
    local skill_level = sq_GetSkillLevel(obj, SKILL_overflow);
	if(skill_level > 0)
	{
        if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/DemonicSwordman/overflow/ap_overflow.nut") )
        {
            local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_overflow, false, 
				"character/DemonicSwordman/overflow/ap_overflow.nut", true);

            appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_overflow, skill_level);
            CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_overflow, true);

			local value0 = sq_GetLevelData(obj, SKILL_overflow, 0, skill_level); 
			local value1 = sq_GetLevelData(obj, SKILL_overflow, 1, skill_level); 
			local value3 = sq_GetLevelData(obj, SKILL_overflow, 2, skill_level); 
			local change_appendage = appendage.sq_getChangeStatus("overflow");

			if(!change_appendage)
            {
				change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 
				CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, 
				false, value0, APID_COMMON);
			}
            if (change_appendage){
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, value0.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, value1.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_ALL, false, value2.tofloat());
			}

        }

    }

}

