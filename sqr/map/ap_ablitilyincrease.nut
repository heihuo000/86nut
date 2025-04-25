
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_AblitilyIncrease")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_AblitilyIncrease")
}



function sq_AddEffect(appendage)
{
}

function proc_appendage_AblitilyIncrease(appendage)
{
	if(!appendage) {
		return;		
	}
				
    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();
    parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);

//    parentObj.setCurrentPos(parentObj.getXPos(),parentObj.getYPos(),0);

	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}
}



function onStart_appendage_AblitilyIncrease(appendage)
{

    appendage.getVar().clear_vector();
    appendage.getVar().push_vector(0);
    appendage.getVar().push_vector(0);
}

