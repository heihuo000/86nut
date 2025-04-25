function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_Gunner_HS1")
}

function onStart_appendage_Gunner_HS1(appendage)
{
	if(!appendage)
	{
		return;
	}

	if(!appendage.getParent())
	{
		appendage.setValid(false);
		return;
	}
	local obj = appendage.getParent();
	local obj = sq_GetCNRDObjectToSQRCharacter(obj);
	local skill_level = sq_GetSkillLevel(obj, 119);
	local DOUBLE_SPEED = obj.sq_GetLevelData(119, 0, skill_level)*10;
	
	local change_appendage = appendage.sq_getChangeStatus("Gunner_HS1");
	if(!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("Gunner_HS1",obj, obj, 0, 12, false, DOUBLE_SPEED);
	}
	if(change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(12, false, DOUBLE_SPEED.tofloat());
	}
	
}
