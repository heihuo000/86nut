
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_SetMaxHp")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_SetMaxHp")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_SetMaxHp")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_SetMaxHp(appendage)
{
	local parentObj = appendage.getParent();

	if(!appendage) {
		return;		
	}

}

function proc_appendage_SetMaxHp(appendage)
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



function onStart_appendage_SetMaxHp(appendage)
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

