
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_OutBreak")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_OutBreak")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_OutBreak")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_OutBreak(appendage)
{
}

function proc_appendage_OutBreak(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

				
	if(!sourceObj || !parentObj  || parentObj.getState() != 45) 
    {
		appendage.setValid(false);
		return;
	}
    local startX = appendage.getVar().get_vector(0);
    local startY = appendage.getVar().get_vector(1);
//    parentObj.setCurrentPos(startX,startY,0);

}


function onStart_appendage_OutBreak(appendage)
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

    appendage.getVar().clear_vector();
    appendage.getVar().push_vector( parentObj.getXPos() );
    appendage.getVar().push_vector( parentObj.getYPos() );

}
