
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_JumpMonsterEffectEXP")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_JumpMonsterEffectEXP")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_JumpMonsterEffectEXP");	
}

function sq_AddEffect(appendage)
{
}




function onSourceKeyFrameFlag_JumpMonsterEffectEXP(appendage,flagIndex)
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



function proc_appendage_JumpMonsterEffectEXP(appendage)
{
	//outPut("dummy/dummy.txt","www\n");
	
		local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();
	
		if(!sourceObj || !parentObj || parentObj.getState() != STATE_ATTACK) 
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
    

    if (appendage.getVar("CurrentFrameSet").size_vector() > 0)
    {
    
        local startFrame = appendage.getVar("CurrentFrameSet").get_vector(0);
        local endFrame = appendage.getVar("CurrentFrameSet").get_vector(1);
        //outPut("dummy/dummy.txt","sF = " + startFrame + "\neF = " + endFrame + "\n");
        
        if ( startFrame <= frmIndex && frmIndex < endFrame)
        {
            local startDelay = pAni.getDelaySum(0,startFrame - 1);
            currentT = currentT - startDelay;
            local moveT = pAni.getDelaySum(startFrame ,endFrame - 1);
            if (currentT < moveT)
            {
              
              local vx = sq_GetUniformVelocity(startX, lastX, currentT,moveT);
              local vy = sq_GetUniformVelocity(startY, lastY, currentT,moveT);
              local vz = getQuadraticFunction(parentObj,currentT,lastZ,moveT).tointeger();
              if (parentObj.isMovablePos(lastX,lastY ))
                parentObj.setCurrentPos(vx,vy,parentObj.getZPos() );
              parentObj.setCurrentPos(parentObj.getXPos(),parentObj.getYPos(),vz);
            
            
            }else{
              appendage.setValid(false);
              return;

            }
        
        
        }else if (frmIndex > endFrame){
              appendage.setValid(false);
              return;
        }
    
    }
	
	
}



function onStart_appendage_JumpMonsterEffectEXP(appendage)
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

