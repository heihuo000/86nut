
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_escapist")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_escapist")
}



function sq_AddEffect(appendage)
{
}

function proc_appendage_escapist(appendage)
{
	if(!appendage) {
		return;		
	}
				
    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();
//    parentObj.setCurrentPos(parentObj.getXPos(),parentObj.getYPos(),0);

	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}


    local currT = appendage.getTimer().Get();
    local starT = appendage.getVar("t").get_vector(0);
    if (currT - starT > 200 )
    {
        appendage.getVar("t").clear_vector();
        appendage.getVar("t").push_vector( appendage.getTimer().Get() );
        sendAllMonsterAppend_Poongjintrainingroom(sourceObj);
//        sq_SendCreatePassiveObjectPacketPos(sourceObj, 24357, 0, sourceObj.getXPos() , sourceObj.getYPos() + 1, 0);

    }
}



function onStart_appendage_escapist(appendage)
{
        appendage.getVar("t").clear_vector();
        appendage.getVar("t").push_vector( appendage.getTimer().Get() );
}

