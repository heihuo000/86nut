
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_GlobalMonsterSuperArmor")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_GlobalMonsterSuperArmor")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_GlobalMonsterSuperArmor")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_GlobalMonsterSuperArmor(appendage)
{
	local parentObj = appendage.getParent();

	if(!appendage) {
		return;		
	}

	sq_SetCustomDamageType(parentObj, false, 0);
}

function proc_appendage_GlobalMonsterSuperArmor(appendage)
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

	sq_SetCustomDamageType(parentObj, true, 1);
}



function onStart_appendage_GlobalMonsterSuperArmor(appendage)
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

