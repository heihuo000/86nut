
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_NearDistanceEffect")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_NearDistanceEffect")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_NearDistanceEffect")
}

function sq_AddEffect(appendage)
{
}

function onStart_appendage_NearDistanceEffect(appendage)
{
	local parentObj = appendage.getParent();

	if(!appendage) {
		return;		
	}


}

function proc_appendage_NearDistanceEffect(appendage)
{
	if(!appendage) {
		return;		
	}

	local chrObj = appendage.getParent();
    chrObj = sq_GetCNRDObjectToSQRCharacter(chrObj);

	if(!chrObj) 
    {
		appendage.setValid(false);
		return;
	}


    if (chrObj.isInDamagableState(chrObj) )
    {
        sq_SendMessage(chrObj,OBJECT_MESSAGE_INVINCIBLE,1,0);
        sq_PostDelayedMessage(chrObj, OBJECT_MESSAGE_INVINCIBLE, 0, 0, 500);
    }

}



function onEnd_appendage_NearDistanceEffect(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();

	if(!parentObj) 
    {
		appendage.setValid(false);
		return;
	}


}

