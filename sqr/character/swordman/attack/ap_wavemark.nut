
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_wavemark")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_wavemark")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_MONSTERDEADPASSIVEOBJECT")
}

function proc_appendage_wavemark(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
}

function onStart_appendage_wavemark(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}	
}

