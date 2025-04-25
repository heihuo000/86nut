
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_MoveMonsterEffectWithTimeIgnoreMap")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_MoveMonsterEffectWithTimeIgnoreMap")
//	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_MoveMonsterEffectWithTime");	
}

function sq_AddEffect(appendage)
{
}





/*
function onSourceKeyFrameFlag_MoveMonsterEffectWithTime(appendage,flagIndex)
{
    
    if (appendage.getVar("CurrentFrameSet").size_vector() > 0)
        return false;

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

    local pAni = sq_GetCurrentAnimation(parentObj);
    local frmIndex = sq_GetAnimationFrameIndex( pAni);


    appendage.getVar("CurrentFrameSet").clear_vector();
    appendage.getVar("CurrentFrameSet").push_vector( frmIndex );
    appendage.getVar("CurrentFrameSet").push_vector( flagIndex );


    return true;

}
*/

function proc_appendage_MoveMonsterEffectWithTimeIgnoreMap(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj || !(parentObj.getState() == STATE_ATTACK || parentObj.getState() == 21)) 
    {
		appendage.setValid(false);
		return;
	}

    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

    local startX = appendage.getVar("jumpStartPos").get_vector(0);
    local startY = appendage.getVar("jumpStartPos").get_vector(1);
    local startZ = appendage.getVar("jumpStartPos").get_vector(2);

    local lastX = appendage.getVar("jumpLastPos").get_vector(0);
    local lastY = appendage.getVar("jumpLastPos").get_vector(1);
    local lastZ = appendage.getVar("jumpLastPos").get_vector(2);

    
    local startT = appendage.getVar("jumpStartPos").get_vector(4);
    local delayT = appendage.getVar("jumpLastPos").get_vector(3);

    local pAni = sq_GetCurrentAnimation(parentObj);
    local currentT = sq_GetCurrentTime(pAni);

    currentT = appendage.getTimer().Get();

    if (delayT > currentT)
    {

        local offsetX = sq_GetAccel(startX, lastX, currentT,delayT, true);
        local offsetY = sq_GetAccel(startY, lastY, currentT,delayT, true);
        local offsetZ = sq_GetAccel(startZ, lastZ, currentT,delayT, true);
        parentObj.setCurrentPos(offsetX,offsetY,offsetZ);


    }else{
        

   		appendage.setValid(false);
        return;
    }



}



function onStart_appendage_MoveMonsterEffectWithTimeIgnoreMap(appendage)
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
    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

    local pAni = sq_GetCurrentAnimation(parentObj);
    local currentT = sq_GetCurrentTime(pAni);

    appendage.getVar("jumpStartPos").clear_vector();
    appendage.getVar("jumpStartPos").push_vector( parentObj.getXPos() );
    appendage.getVar("jumpStartPos").push_vector( parentObj.getYPos() );
    appendage.getVar("jumpStartPos").push_vector( parentObj.getZPos() );
    appendage.getVar("jumpStartPos").push_vector( 0 );
    appendage.getVar("jumpStartPos").push_vector( currentT );


    

}

