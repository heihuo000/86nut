
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_GlobalMonsterCNUE")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_GlobalMonsterCNUE")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_GlobalMonsterCNUE")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_GlobalMonsterCNUE(appendage)
{

	if(!appendage) {
		return;		
	}


}

function proc_appendage_GlobalMonsterCNUE(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();

	if(!parentObj) 
    {
		appendage.setValid(false);
		return;
	}
}



function onStart_appendage_GlobalMonsterCNUE(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();

	if(!parentObj) 
    {
		appendage.setValid(false);
		return;
	}
}

