
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_overflow")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_overflow")
}

function sq_AddEffect(appendage)
{

}

function proc_appendage_overflow(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();

}



function onStart_appendage_overflow(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

