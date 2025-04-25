function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_mengduzhishang_buff")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_mengduzhishang_buff")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_mengduzhishang_buff")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_mengduzhishang_buff(appendage)
{
	if(!appendage) return;
}

function onStart_appendage_mengduzhishang_buff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local magicalAttackBonus = appendage.getVar("skillData").get_vector(0);
	local pmAdd = appendage.getVar("skillData").get_vector(1);
	local change_appendage = appendage.sq_getChangeStatus("mengduzhishang_buff");
	if(!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("mengduzhishang_buff",obj, obj, 0, CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, magicalAttackBonus);
	}
	if(change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, magicalAttackBonus.tofloat());

	}
}

function onEnd_appendage_mengduzhishang_buff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
