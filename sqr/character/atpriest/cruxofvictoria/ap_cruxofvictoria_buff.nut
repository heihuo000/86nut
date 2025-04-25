function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_cruxofvictoria_buff")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_cruxofvictoria_buff")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_cruxofvictoria_buff")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_cruxofvictoria_buff(appendage)
{
	if(!appendage) {
		return;
	}
	local obj = appendage.getParent();
}

function onStart_appendage_cruxofvictoria_buff(appendage)
{
	if(!appendage)
	{
		return;
	}
	local obj = appendage.getParent();
}

function onEnd_appendage_cruxofvictoria_buff(appendage)
{
	if(!appendage) {
		return;
	}
	local obj = appendage.getParent();
}

