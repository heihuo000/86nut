
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_chargeexplosion")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_chargeexplosion")
}

function proc_appendage_chargeexplosion(appendage)
{
	if(!appendage)
	{
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

function onStart_appendage_chargeexplosion(appendage)
{
	if(!appendage)
	{
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
