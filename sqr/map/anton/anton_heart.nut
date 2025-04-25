
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_Anton_Heart")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_Anton_Heart")
}



function sq_AddEffect(appendage)
{
}


function proc_appendage_Anton_Heart(appendage)
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

    }
}


function onStart_appendage_Anton_Heart(appendage)
{
        appendage.getVar("t").clear_vector();
        appendage.getVar("t").push_vector( appendage.getTimer().Get() );

	local parentObj = appendage.getParent();
	
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(parentObj);

    sqrChr.setCurrentPos(sqrChr.getXPos(),sqrChr.getYPos(),1000);


			sqrChr.sq_IntVectClear();
			sqrChr.sq_IntVectPush(1);
			sqrChr.sq_IntVectPush(0);
			sqrChr.sq_IntVectPush(0);
			sqrChr.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);

}

