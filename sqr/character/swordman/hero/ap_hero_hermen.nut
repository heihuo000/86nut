
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_HERO_HERMEN")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_HERO_HERMEN")
	appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_HERO_HERMEN")	
}

function sq_AddEffect(appendage)
{
}
function onAttackParent_appendage_HERO_HERMEN(appendage ,damager, boundingBox, isStuck) 
{
	local parentObj = appendage.getParent();	
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);

    parentObj.sq_SendCreatePassiveObjectPacket(12275, 0, 0, -1, 0);
}
function proc_appendage_HERO_HERMEN(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();	
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}
}



function onStart_appendage_HERO_HERMEN(appendage)
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

