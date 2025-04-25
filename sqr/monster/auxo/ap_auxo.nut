
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_AuxoTeleport")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_AuxoTeleport")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_AuxoTeleport")
    appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_AuxoTeleport")	
}

function sq_AddEffect(appendage)
{
}


function onAttackParent_appendage_AuxoTeleport(appendage, realAttacker, damager, boundingBox, isStuck)
{

    if (!damager || !damager.isObjectType(OBJECTTYPE_ACTIVE))
        return ;


}

function onEnd_appendage_AuxoTeleport(appendage)
{

	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();




}

function proc_appendage_AuxoTeleport(appendage)
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


	sourceObj = sq_GetCNRDObjectToSQRCharacter(sourceObj);
    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

    local offsetX = sourceObj.getXPos() - parentObj.getXPos();
    local offsetY = sourceObj.getYPos() - parentObj.getYPos();


    
    if (parentObj.getState() == 0)
    {
        local distance = offsetX * offsetX + offsetY * offsetY;
        appendage.getVar("var").set_vector(0,0);
        if (distance >= 300 * 300)
        {
            local pIntVec = sq_GetGlobalIntVector();
            sq_IntVectorClear(pIntVec);
            sq_IntVectorPush(pIntVec, 3);
            parentObj.addSetStatePacket(8 , pIntVec,  STATE_PRIORITY_USER, false, "");
            parentObj.flushSetStatePacket();



        }
    }else if (parentObj.getState() == 8)
    {

        if (parentObj.getAttackIndex() == 3)
        {

            local currentAni = sq_GetCurrentAnimation(parentObj);
            local frmIndex = sq_GetAnimationFrameIndex(currentAni);
            if (frmIndex >= 6)
            {



                local pIntVec = sq_GetGlobalIntVector();
                sq_IntVectorClear(pIntVec);
                sq_IntVectorPush(pIntVec, 4);
                parentObj.addSetStatePacket(8 , pIntVec,  STATE_PRIORITY_USER, false, "");
                parentObj.flushSetStatePacket();
            }
        }else if (parentObj.getAttackIndex() == 4)
        {
            if (appendage.getVar("var").get_vector(0) == 0)
            {
                appendage.getVar("var").set_vector(0,1);
                parentObj.setCurrentPos( sourceObj.getXPos() + sq_getRandom(-100,100).tointeger(),sourceObj.getYPos()
                + sq_getRandom(-50,50).tointeger(),0 );
                parentObj.setCurrentDirection(sourceObj.getDirection());

            }
        }
    }

    
//sq_AddMessage(29002); 

}



function onStart_appendage_AuxoTeleport(appendage)
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
    appendage.getVar("var").clear_vector();
    appendage.getVar("var").push_vector(0);
}


