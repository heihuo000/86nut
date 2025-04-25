function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_HolyMace")
	appendage.sq_AddFunctionName("onVaildTimeEnd", "onVaildTimeEnd_appendage_HolyMace")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_HolyMace")
}

function onStart_appendage_HolyMace(appendage)
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
	local skill_level = sq_GetSkillLevel(obj, 253);
	local CRITICAL_DAMAGE_RATE = obj.sq_GetLevelData(253, 23, skill_level);
	local MOVE_SPEED = obj.sq_GetLevelData(253, 5, skill_level);
	local ATK_SPEED = obj.sq_GetLevelData(253, 21, skill_level);
	local CAST_SPEED = obj.sq_GetLevelData(253, 22, skill_level);
	local STUCK_RATE = obj.sq_GetLevelData(253, 20, skill_level);
	local COOLTIME_DECLINE = obj.sq_GetLevelData(253, 6, skill_level);


	local change_appendage = appendage.sq_getChangeStatus("HolyMace");
	if(!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("HolyMace",obj, obj, 0, 16, false, CRITICAL_DAMAGE_RATE);
		change_appendage = appendage.sq_AddChangeStatus("HolyMace",obj, obj, 0, 11, false, MOVE_SPEED);
		change_appendage = appendage.sq_AddChangeStatus("HolyMace",obj, obj, 0, 10, false, ATK_SPEED);
		change_appendage = appendage.sq_AddChangeStatus("HolyMace",obj, obj, 0, 12, false, CAST_SPEED);
		change_appendage = appendage.sq_AddChangeStatus("HolyMace",obj, obj, 0, 33, false, -STUCK_RATE);
			change_appendage = appendage.sq_AddChangeStatus("HolyMace",obj, obj, 0, 49, true, -COOLTIME_DECLINE);



	}
	else
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(16, false, CRITICAL_DAMAGE_RATE.tofloat());
		change_appendage.addParameter(11, false, MOVE_SPEED.tofloat());
		change_appendage.addParameter(10, false, ATK_SPEED.tofloat());
		change_appendage.addParameter(12, false, CAST_SPEED.tofloat());
		change_appendage.addParameter(33, false, -STUCK_RATE.tofloat());
		change_appendage.addParameter(49, true, -COOLTIME_DECLINE.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK_BONUS, true, PHYSICAL_ATTACK_BONUS.tofloat());

	}
}

function onVaildTimeEnd_appendage_HolyMace(appendage)
{
	if(!appendage) return;
	local parobj = appendage.getParent();
	if(!parobj)
	{
		appendage.setValid(false);
		return;
	}
	local sqrChr = sq_GetCNRDObjectToCharacter(parobj);
	sqrChr.setShowEquipmentLayer(10,true);
}

function onEnd_appendage_HolyMace(appendage)
{
	if(!appendage) return;
	local parobj = appendage.getParent();
	if(!parobj)
	{
		appendage.setValid(false);
		return;
	}
	local sqrChr = sq_GetCNRDObjectToCharacter(parobj);
	sqrChr.setShowEquipmentLayer(10,true);
}
