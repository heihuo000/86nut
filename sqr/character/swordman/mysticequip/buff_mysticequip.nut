
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_buff_mysticequip")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_buff_mysticequip")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_buff_mysticequip(appendage)
{
	if(!appendage) {
		return;
	}

	local parentObj = appendage.getParent();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
}

function onStart_appendage_buff_mysticequip(appendage)
{
	if(!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
}
