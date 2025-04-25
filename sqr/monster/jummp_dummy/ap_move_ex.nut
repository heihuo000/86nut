
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_MoveMonsterEffectEX")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_MoveMonsterEffectEX")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_MoveMonsterEffectEX");	
}

function sq_AddEffect(appendage)
{
}






function onSourceKeyFrameFlag_MoveMonsterEffectEX(appendage,flagIndex)
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


function proc_appendage_MoveMonsterEffectEX(appendage)
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

    local pAni = sq_GetCurrentAnimation(parentObj);
    local frmIndex = sq_GetAnimationFrameIndex( pAni);
    local currentT = sq_GetCurrentTime(pAni);
    
    local recodeT = appendage.getVar("currentTime").get_vector(0);
    if (currentT < recodeT)
    {
      appendage.setValid(false);
      return;
    }else{
      appendage.getVar("currentTime").set_vector(0,currentT);
    }
    
    if (appendage.getVar("CurrentFrameSet").size_vector() <= 0)
    {

    }else{
        local startFrame = appendage.getVar("CurrentFrameSet").get_vector(0);
        local endFrame = appendage.getVar("CurrentFrameSet").get_vector(1);
    
        if (frmIndex < startFrame)
        {
            appendage.getVar("jumpStartPos").clear_vector();
            appendage.getVar("jumpStartPos").push_vector( parentObj.getXPos() );
            appendage.getVar("jumpStartPos").push_vector( parentObj.getYPos() );
            appendage.getVar("jumpStartPos").push_vector( parentObj.getZPos() );
            appendage.getVar("jumpStartPos").push_vector( 0 );
        
        
        }else if (frmIndex < endFrame)
        {
            local delayT = pAni.getDelaySum(startFrame,endFrame - 1);
            currentT = currentT - pAni.getDelaySum(0,startFrame - 1);
            local offsetX = sq_GetAccel(startX, lastX, currentT,delayT, true);
            local offsetY = sq_GetAccel(startY, lastY, currentT,delayT, true);
            local offsetZ = sq_GetAccel(startZ, lastZ, currentT,delayT, true);
            if (parentObj.isMovablePos(offsetX,offsetY ))
              parentObj.setCurrentPos(offsetX,offsetY,offsetZ);
          
        
        }else{
        
            if (parentObj.isMovablePos(lastX,lastY ))
              parentObj.setCurrentPos(lastX,lastY,lastZ);
              
        		appendage.setValid(false);
            return;
        }

    }


}



function onStart_appendage_MoveMonsterEffectEX(appendage)
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

    appendage.getVar("jumpStartPos").clear_vector();
    appendage.getVar("jumpStartPos").push_vector( parentObj.getXPos() );
    appendage.getVar("jumpStartPos").push_vector( parentObj.getYPos() );
    appendage.getVar("jumpStartPos").push_vector( parentObj.getZPos() );
    appendage.getVar("jumpStartPos").push_vector( 0 );

    appendage.getVar("CurrentFrameSet").clear_vector();
    appendage.getVar("currentTime").clear_vector();
    appendage.getVar("currentTime").push_vector(-1);
}

