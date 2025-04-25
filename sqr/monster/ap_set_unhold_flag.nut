
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_GlobalMonsterUnHoldFlag")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_GlobalMonsterUnHoldFlag")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_GlobalMonsterUnHoldFlag")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_GlobalMonsterUnHoldFlag(appendage)
{
	local parentObj = appendage.getParent();

	if(!appendage) {
		return;		
	}
	parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/ap_set_superarmor.nut") )
        sq_SetCustomDamageType(parentObj, false, 0);
}

function proc_appendage_GlobalMonsterUnHoldFlag(appendage)
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

//	sq_SetCustomDamageType(parentObj, true, 1);
}



function onStart_appendage_GlobalMonsterUnHoldFlag(appendage)
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

