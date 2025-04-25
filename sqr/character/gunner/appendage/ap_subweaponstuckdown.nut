
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_subweaponstuckdown")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_subweaponstuckdown")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_subweaponstuckdown")
}

function proc_appendage_subweaponstuckdown(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}

}


function onStart_appendage_subweaponstuckdown(appendage)
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


function onEnd_appendage_subweaponstuckdown(appendage)
{
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
    
}
