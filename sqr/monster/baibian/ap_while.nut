
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_SetWhileHideMonsterEffect")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_SetWhileHideMonsterEffect")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_SetWhileHideMonsterEffect")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_SetWhileHideMonsterEffect(appendage)
{
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj ) 
    {
		appendage.setValid(false);
		return;
	}
}

function proc_appendage_SetWhileHideMonsterEffect(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				

}



function onStart_appendage_SetWhileHideMonsterEffect(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj ) 
    {
		appendage.setValid(false);
		return;
	}
}

