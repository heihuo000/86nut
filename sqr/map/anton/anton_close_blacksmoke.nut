
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_Anton_Close_BlackSmoke")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_Anton_Close_BlackSmoke")
}



function sq_AddEffect(appendage)
{
}


function proc_appendage_Anton_Close_BlackSmoke(appendage)
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
    if (currT - starT > 1000 )
    {
        if ( ANTON_SCHEDULE_TIME <= 0 && ANTON_SCHEDULE_TIME >= -99 )
        {
            
        }else{
            ANTON_SCHEDULE_TIME = ANTON_SCHEDULE_TIME - 1;
        }
        appendage.getVar("t").clear_vector();
        appendage.getVar("t").push_vector( appendage.getTimer().Get() );

    }
}


function onStart_appendage_Anton_Close_BlackSmoke(appendage)
{
    if (ANTON_SCHEDULE_TIME == -100)
        ANTON_SCHEDULE_TIME =  30 * 60;

    appendage.getVar("t").clear_vector();
    appendage.getVar("t").push_vector( appendage.getTimer().Get() );
	local parentObj = appendage.getParent();
	
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(parentObj);


}

