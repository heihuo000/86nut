
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_GlobalMonsterUnHold")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_GlobalMonsterUnHold")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_GlobalMonsterUnHold")
//	appendage.sq_AddFunctionName("procStatus", "procStatus_appendage_GlobalMonsterUnHold")
}

function sq_AddEffect(appendage)
{
}
/*
function procStatus_appendage_GlobalMonsterUnHold(appendage)
{
	if(!appendage)
		return;

	local obj = appendage.getParent();
	
	if(!obj)
	{
		appendage.setValid(false);
		return;
	}
	outPut("dummy/dummy.txt","sswww\n");
	// ???h ???h (??v?? 1000)
	sq_SetActiveStatusImmune(obj, ACTIVEPROPERTY_TOLERANCE_FREEZE);
}
*/

function onEnd_appendage_GlobalMonsterUnHold(appendage)
{
	local parentObj = appendage.getParent();

	if(!appendage) {
		return;		
	}

	sq_SetGrabable(parentObj, true);

	parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/ap_set_superarmor.nut") )
        sq_SetCustomDamageType(parentObj, false, 0);

}

function proc_appendage_GlobalMonsterUnHold(appendage)
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
	sq_SetGrabable(parentObj, false);
	sq_SetCustomDamageType(parentObj, true, 1);

    local isAttackCancel = appendage.getVar("isAttackCancel").get_vector(0);
    if (isAttackCancel == 1)
    {
        local state = parentObj.getState();
        if (state != 8 && state < 20)
        {
            appendage.setValid(false);
            return;


        }
    }

}



function onStart_appendage_GlobalMonsterUnHold(appendage)
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

	sq_SetGrabable(parentObj, false);
	sq_SetCustomDamageType(parentObj, true, 1);

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

