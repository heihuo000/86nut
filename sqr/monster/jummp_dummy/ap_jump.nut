
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_JumpMonsterEffect")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_JumpMonsterEffect")
	appendage.sq_AddFunctionName("onChangeState", "onChangeState_JumpMonsterEffect");
}

function sq_AddEffect(appendage)
{
}

function onChangeState_JumpMonsterEffect(appendage, oldState, newState, datas)
{	

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj ) 
    {
		appendage.setValid(false);
		return;
	}

    if (newState == STATE_STAND)
    {
        parentObj.setCurrentPos(parentObj.getXPos(),parentObj.getYPos(),0 );
    }
	appendage.setValid(false);
	return;

}

function proc_appendage_JumpMonsterEffect(appendage)
{
	if(!appendage) {
		return;		
	}

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

    local lastX = appendage.getVar("jumpLastPos").get_vector(0);
    local lastY = appendage.getVar("jumpLastPos").get_vector(1);
    local jumpZ = appendage.getVar("jumpLastPos").get_vector(2);

    local ani = sq_GetCurrentAnimation(parentObj);
    local delayT = ani.getDelaySum(false) - 60;

//	local currentT = appendage.getTimer().Get();
	local currentT = sq_GetCurrentTime(ani);

    if (currentT < appendage.getVar("t").get_vector(0))
    {
		appendage.setValid(false);
		return;
    }else
    {

        if (currentT < delayT)
        {
            local v1 = sq_GetUniformVelocity(startX, lastX, currentT, delayT);
            local v2 = sq_GetUniformVelocity(startY, lastY, currentT, delayT);
            local v3 = getQuadraticFunction(parentObj,currentT,jumpZ,delayT);
            //getQuadraticFunction(obj,x,b,c)

            if (parentObj.isMovablePos(v1, v2) && appendage.getVar("jumpStartPos").get_vector(2) == 0 )
                parentObj.setCurrentPos( v1,v2,parentObj.getZPos() );
            else
                appendage.getVar("jumpStartPos").set_vector(2,1);
            parentObj.setCurrentPos(parentObj.getXPos(),parentObj.getYPos(),v3.tointeger() );
        }else{

            if (parentObj.isMovablePos(lastX, lastY) && appendage.getVar("jumpStartPos").get_vector(2) == 0 )
                parentObj.setCurrentPos( lastX,lastY,0 );


            appendage.setValid(false);
            return;
        }
    }

    appendage.getVar("t").set_vector(0,currentT);

//    parentObj.setCurrentPos( lastX,lastY,0 );

//    parentObj.setCurrentPos( parentObj.getXPos(),parentObj.getYPos(),0 );


}



function onStart_appendage_JumpMonsterEffect(appendage)
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

    appendage.getVar("t").clear_vector();
    appendage.getVar("t").push_vector( 0 );

    appendage.getVar("jumpStartPos").clear_vector();
    appendage.getVar("jumpStartPos").push_vector( parentObj.getXPos() );
    appendage.getVar("jumpStartPos").push_vector( parentObj.getYPos() );
    appendage.getVar("jumpStartPos").push_vector( 0 );
}

