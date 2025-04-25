
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_SirocoFaceToFaceMoveEffect")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_SirocoFaceToFaceMoveEffect")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_SirocoFaceToFaceMoveEffect")
}

function sq_AddEffect(appendage)
{
}



function onEnd_appendage_SirocoFaceToFaceMoveEffect(appendage)
{

	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();




}

function proc_appendage_SirocoFaceToFaceMoveEffect(appendage)
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

    sourceObj = sq_GetCNRDObjectToActiveObject(sourceObj);
    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

    local ani = sq_GetCurrentAnimation(sourceObj);
    local state = sourceObj.getState();
	local frmIndex = sq_GetAnimationFrameIndex(ani);
    if (state != 8 || frmIndex >= 55)
    {
		appendage.setValid(false);
		return;
    }
    local currT = appendage.getTimer().Get();
    if (currT < 250)
    {
        local z = sq_GetAccel(appendage.getVar("pos").get_vector(2), 50, currT, 250, true);
        parentObj.setCurrentPos(parentObj.getXPos(),parentObj.getYPos(),z);
    }else if (currT < 1200){
        currT = currT - 250;
        local startX = appendage.getVar("pos").get_vector(0);
        local startY = appendage.getVar("pos").get_vector(1);
        local startZ = 50;
        
        local lastX = sq_GetDistancePos(sourceObj.getXPos(), sourceObj.getDirection(), 150);
        local lastY = sourceObj.getYPos() + 1;
        local lastZ = sourceObj.getZPos() + 180;

        local x = sq_GetAccel( startX , lastX , currT, 950, true);
        local y = sq_GetAccel( startY , lastY , currT, 950, true);
        local z = sq_GetAccel( startZ , lastZ , currT, 950, true);

        parentObj.setCurrentPos(x,y,z);

    }
}



function onStart_appendage_SirocoFaceToFaceMoveEffect(appendage)
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

    appendage.getVar("pos").clear_vector();
    appendage.getVar("pos").push_vector( parentObj.getXPos() );
    appendage.getVar("pos").push_vector( parentObj.getYPos() );
    appendage.getVar("pos").push_vector( parentObj.getZPos() );

}


