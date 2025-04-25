
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_HoldMonsterEffect")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_HoldMonsterEffect")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_HoldMonsterEffect")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_HoldMonsterEffect(appendage)
{

	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	sq_SetGrabable(parentObj, false);

    local next = appendage.getVar("jumpLastPos").get_vector(0);
    if (next != -1)
    {
        local pIntVec = sq_GetGlobalIntVector();
        sq_IntVectorClear(pIntVec);
        sq_IntVectorPush(pIntVec, next);
        parentObj.addSetStatePacket(8 , pIntVec,  STATE_PRIORITY_USER, false, "");
        parentObj.flushSetStatePacket();
    }else{
        parentObj.addSetStatePacket(STATE_STAND, null, STATE_PRIORITY_FORCE, false, "");
        parentObj.flushSetStatePacket();
    }
}

function proc_appendage_HoldMonsterEffect(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	local currentT = appendage.getTimer().Get();
    local maxT = appendage.getVar("holdTime").get_vector(0);

	if(!sourceObj || !parentObj || maxT < currentT ) 
    {
		appendage.setValid(false);
		return;
	}
    local obj = sq_GetCNRDObjectToActiveObject(parentObj);




    if (obj.getState() != STATE_HOLD)
    {
		if (obj.isMyControlObject())
		{
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, Z_ACCEL_TYPE_CONST);
			obj.addSetStatePacket(STATE_HOLD, pIntVec, STATE_PRIORITY_FORCE, false, "");
			obj.flushSetStatePacket();
		}
	sq_SetGrabable(obj, true);
    }
	local animation = sq_GetCurrentAnimation(obj);



}



function onStart_appendage_HoldMonsterEffect(appendage)
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

}

