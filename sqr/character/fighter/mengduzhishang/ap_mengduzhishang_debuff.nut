function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_mengduzhishang_debuff")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_mengduzhishang_debuff")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_mengduzhishang_debuff")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_mengduzhishang_debuff(appendage)
{
	if(!appendage) return;
}

function onStart_appendage_mengduzhishang_debuff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local defenseDecrease = appendage.getVar("skillData").get_vector(0);
	local change_appendage = appendage.sq_getChangeStatus("mengduzhishang_debuff");
	if(!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("mengduzhishang_debuff",obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_DEFENSE, false, defenseDecrease);
	}
	if(change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_DEFENSE, false, defenseDecrease.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_DEFENSE, false, defenseDecrease.tofloat());
	}
}

function onEnd_appendage_mengduzhishang_debuff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
