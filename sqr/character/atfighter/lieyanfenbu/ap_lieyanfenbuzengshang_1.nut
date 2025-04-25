function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_lieyanfenbuzengshang_1")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_lieyanfenbuzengshang_1")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_lieyanfenbuzengshang_1")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_lieyanfenbuzengshang_1(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();

	local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/lieyanfenbu/ap_lieyanfenbutimer.nut");
	if(!isAppend)

		appendage.setValid(false);
}

function onStart_appendage_lieyanfenbuzengshang_1(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onEnd_appendage_lieyanfenbuzengshang_1(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
