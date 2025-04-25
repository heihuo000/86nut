function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_huixiejingtong_buff")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_huixiejingtong_buff")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_huixiejingtong_buff")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_huixiejingtong_buff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onStart_appendage_huixiejingtong_buff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local magicalCritical = appendage.getVar("skillData").get_vector(0);
	local darkElement = appendage.getVar("skillData").get_vector(1);
	local change_appendage = appendage.sq_getChangeStatus("huixiejingtong_buff");
	if(!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("huixiejingtong_buff",obj, obj, 0, CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, magicalCritical);
	}
	if(change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, magicalCritical.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, false, darkElement.tofloat());
	}
}

function onEnd_appendage_huixiejingtong_buff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	CURRENT_BUFF_COUNT_HUI_XIE_JING_TONG = 0;
}
