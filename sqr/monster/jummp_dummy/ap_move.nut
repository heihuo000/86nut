
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_MoveMonsterEffect")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_MoveMonsterEffect")
	appendage.sq_AddFunctionName("onChangeState", "onChangeState_MoveMonsterEffect");
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_MoveMonsterEffect")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_MoveMonsterEffect(appendage)
{

	local parentObj = appendage.getParent();
    local curX = appendage.getVar("curVar").get_vector(0);
    local curY = appendage.getVar("curVar").get_vector(1);

    parentObj.setCurrentPos(curX,curY,parentObj.getZPos() );

}

function onChangeState_MoveMonsterEffect(appendage, oldState, newState, datas)
{	

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj ) 
    {
		appendage.setValid(false);
		return;
	}

	appendage.setValid(false);
	return;

}

function proc_appendage_MoveMonsterEffect(appendage)
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
    local startZ = appendage.getVar("jumpStartPos").get_vector(2);

    local lastX = appendage.getVar("jumpLastPos").get_vector(0);
    local lastY = appendage.getVar("jumpLastPos").get_vector(1);
    local lastZ = appendage.getVar("jumpLastPos").get_vector(2);

    local ani = sq_GetCurrentAnimation(parentObj);
    local delayT = ani.getDelaySum(false) - 60;

	local currentT = appendage.getTimer().Get();

    if (currentT < appendage.getVar("t").get_vector(0))
    {
		appendage.setValid(false);
		return;
    }

    if (currentT < delayT)
    {
        local v1 = sq_GetUniformVelocity(startX, lastX, currentT, delayT);
        local v2 = sq_GetUniformVelocity(startY, lastY, currentT, delayT);
        local v3 = sq_GetUniformVelocity(startZ, lastZ, currentT, delayT);

        if (parentObj.isMovablePos(v1, v2) && appendage.getVar("jumpStartPos").get_vector(3) == 0 )
        {
            parentObj.setCurrentPos( v1,v2,parentObj.getZPos() );
            appendage.getVar("curVar").set_vector(0,v1);
            appendage.getVar("curVar").set_vector(1,v2);

        }
        else
            appendage.getVar("jumpStartPos").set_vector(3,1);


        parentObj.setCurrentPos(parentObj.getXPos(),parentObj.getYPos(),v3 );

    }else{




		appendage.setValid(false);
		return;
    }

    appendage.getVar("t").set_vector(0,currentT);


}



function onStart_appendage_MoveMonsterEffect(appendage)
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
    appendage.getVar("jumpStartPos").push_vector( parentObj.getZPos() );
    appendage.getVar("jumpStartPos").push_vector( 0 );

    appendage.getVar("curVar").clear_vector();
    appendage.getVar("curVar").push_vector( parentObj.getXPos() );
    appendage.getVar("curVar").push_vector( parentObj.getYPos() );
    appendage.getVar("curVar").push_vector( parentObj.getZPos() );
    appendage.getVar("curVar").push_vector( 0 );

}

