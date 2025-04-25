
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_FlashScreenPooledObject")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_FlashScreenPooledObject")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_FlashScreenPooledObject")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_FlashScreenPooledObject(appendage)
{
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

    for (local i = 0;i<= appendage.getVar("DeleteVar").size_vector();i++)
    {
        local flashObjID = appendage.getVar("DeleteVar").get_vector(i);

        local flashObj = appendage.getVar("GlobalflashScreenObj_" + flashObjID).get_obj_vector(0);
        if (flashObj)
            flashObj.fadeOut();
    }
    
}

function proc_appendage_FlashScreenPooledObject(appendage)
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



function onStart_appendage_FlashScreenPooledObject(appendage)
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

