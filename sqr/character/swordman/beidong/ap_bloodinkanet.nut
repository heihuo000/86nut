
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_BLOOD_INKANET")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_BLOOD_INKANET")
}

function sq_AddEffect(appendage)
{

}

function proc_appendage_BLOOD_INKANET(appendage)
{
	if(!appendage) {
		return;
	}

}



function onStart_appendage_BLOOD_INKANET(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();	
	
	
}

