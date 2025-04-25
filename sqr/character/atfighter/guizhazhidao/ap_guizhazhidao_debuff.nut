function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_guizhazhidao_debuff")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_guizhazhidao_debuff")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_guizhazhidao_debuff")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_guizhazhidao_debuff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onStart_appendage_guizhazhidao_debuff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local tolerance = appendage.getVar("skillData").get_vector(0);
	local change_appendage = appendage.sq_getChangeStatus("guizhazhidao");
	if(!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("guizhazhidao",obj, obj, 0, CHANGE_STATUS_TYPE_ACTIVESTATUS_TOLERANCE_ALL, false, -tolerance);
	}
	if(change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ACTIVESTATUS_TOLERANCE_ALL, false, -tolerance.tofloat());
	}
}

function onEnd_appendage_guizhazhidao_debuff(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
