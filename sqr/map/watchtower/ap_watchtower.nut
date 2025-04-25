
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_WatchTower")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_WatchTower")
}



function sq_AddEffect(appendage)
{
}


function proc_appendage_WatchTower(appendage)
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


    local currT = appendage.getTimer().Get();
    local starT = appendage.getVar("t").get_vector(0);
    if (currT - starT > 2000 )
    {
        appendage.getVar("t").clear_vector();
        appendage.getVar("t").push_vector( appendage.getTimer().Get() );

//        sq_SendCreatePassiveObjectPacketPos(sourceObj, 13099, 0, sourceObj.getXPos() , sourceObj.getYPos() + 1, 200);

    }
}


function onStart_appendage_WatchTower(appendage)
{
        appendage.getVar("t").clear_vector();
        appendage.getVar("t").push_vector( appendage.getTimer().Get() );
}

