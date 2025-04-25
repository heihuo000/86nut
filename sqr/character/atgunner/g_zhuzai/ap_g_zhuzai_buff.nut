function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_g_zhuzai")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_g_zhuzai")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_g_zhuzai")
}

function sq_AddEffect(appendage)
{

}

function proc_appendage_g_zhuzai(appendage)
{
	if(!appendage) return;
}

function onStart_appendage_g_zhuzai(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local magical_atk = appendage.getVar("skillData").get_vector(0);
	local change_appendage = appendage.sq_getChangeStatus("g_zhuzai");
	if(!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("g_zhuzai",obj, obj, 0, CHANGE_STATUS_TYPE_MAGICAL_ATTACK, true, magical_atk);
	}
	if(change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, true, magical_atk.tofloat());
	}
}

function onEnd_appendage_g_zhuzai(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	CURRENT_BUFF_COUNT_qianzhi = 0;
}
