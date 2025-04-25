
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_GlobalMonsterFalseState")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_GlobalMonsterFalseState")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_GlobalMonsterFalseState")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_GlobalMonsterFalseState(appendage)
{
	local parentObj = appendage.getParent();

	if(!appendage) {
		return;		
	}

}

function proc_appendage_GlobalMonsterFalseState(appendage)
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
    parentObj.setEnableChangeState(false);
	local T = appendage.getTimer().Get();
    if (T > appendage.getVar("damaID").get_vector(1) )
    {
        parentObj.setEnableChangeState(true);
        local state = appendage.getVar("damaID").get_vector(0);
        if (state > 0)
        {
            local pIntVec = sq_GetGlobalIntVector();
            sq_IntVectorClear(pIntVec);
            sq_IntVectorPush(pIntVec, state );
            parentObj.addSetStatePacket(8 , pIntVec,  STATE_PRIORITY_USER, false, "");
            parentObj.flushSetStatePacket();

            appendage.setValid(false);
            return;
        }

    }

}



function onStart_appendage_GlobalMonsterFalseState(appendage)
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


    parentObj.setEnableChangeState(false);
	sq_ReleaseActiveStatus(parentObj, ACTIVESTATUS_FREEZE);
	sq_ReleaseActiveStatus(parentObj, ACTIVESTATUS_STUN);
	sq_ReleaseActiveStatus(parentObj, ACTIVESTATUS_BLIND);
	sq_ReleaseActiveStatus(parentObj, ACTIVESTATUS_STONE);
	sq_ReleaseActiveStatus(parentObj, ACTIVESTATUS_SLEEP);
	sq_ReleaseActiveStatus(parentObj, ACTIVESTATUS_WEAPON_BREAK);
	sq_ReleaseActiveStatus(parentObj, ACTIVESTATUS_HASTE);
	sq_ReleaseActiveStatus(parentObj, ACTIVESTATUS_CONFUSE);
	sq_ReleaseActiveStatus(parentObj, ACTIVESTATUS_HOLD);


}

