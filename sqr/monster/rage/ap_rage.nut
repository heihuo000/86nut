
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_NewMonsterRageEffect")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_NewMonsterRageEffect")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_NewMonsterRageEffect")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_NewMonsterRageEffect(appendage)
{

	if(!appendage) {
		return;		
	}

    local pChr = sq_GetMyMasterCharacter();
    pChr = sq_GetCNRDObjectToSQRCharacter(pChr);

    local apd = getComboUiAppendage(pChr);

    if (apd)
        apd.getVar("monsterRageUI").set_vector(0, -1 );

}

function proc_appendage_NewMonsterRageEffect(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
	if(!parentObj) 
    {
		appendage.setValid(false);
		return;
	}
    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
	local currentT = appendage.getTimer().Get();
    local pChr = sq_GetMyMasterCharacter();
    pChr = sq_GetCNRDObjectToSQRCharacter(pChr);

    local apd = getComboUiAppendage(pChr);
    local var = appendage.getVar("enegry").get_vector(0);
    if (apd)
        apd.getVar("monsterRageUI").set_vector(0, var );



    local z = appendage.getVar("pos").get_vector(2);
    if (appendage.getVar("Flag").get_vector(0) == 1)
    {
        if (parentObj.getState() == 8 && parentObj.getAttackIndex() == z )
        {
            appendage.getVar("Flag").set_vector(0,0);
        }else if (parentObj.getState() != STATE_HOLD)
        {


            if (z != -1)
            {
                sq_SendMessage(parentObj,OBJECT_MESSAGE_INVINCIBLE,1,0);
                sq_PostDelayedMessage(parentObj,OBJECT_MESSAGE_INVINCIBLE,0,0,500 );
                local pIntVec = sq_GetGlobalIntVector();
                sq_IntVectorClear(pIntVec);
                sq_IntVectorPush(pIntVec, z);
                parentObj.addSetStatePacket(8 , pIntVec,  STATE_PRIORITY_USER, false, "");
                parentObj.flushSetStatePacket();

            }else{


            }
        }
    }


    if (var > 1000 || appendage.getVar("enegryT").get_vector(0) != -1)
    {
        if (appendage.getVar("enegryT").get_vector(0) == -1)
        {
            appendage.getVar("enegryT").set_vector(0,currentT);

            sq_ReleaseActiveStatus(parentObj, ACTIVESTATUS_FREEZE);
            sq_ReleaseActiveStatus(parentObj, ACTIVESTATUS_STONE);
            sq_ReleaseActiveStatus(parentObj, ACTIVESTATUS_SLEEP);
            sq_ReleaseActiveStatus(parentObj, ACTIVESTATUS_HOLD);
            sq_ReleaseActiveStatus(parentObj, ACTIVESTATUS_SLOW);


            if (!CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/ap_set_unhold.nut"))
            {
                local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
                "monster/ap_set_unhold.nut", true);				 
                local change_appendage = masterAppendage.sq_getChangeStatus("setUnHoldAblitily");
                if(!change_appendage)
                {
                    change_appendage = masterAppendage.sq_AddChangeStatusAppendageID(parentObj, parentObj, 0, 
                    CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, 
                    false, 1, APID_COMMON);
                }
                if (change_appendage){
                    change_appendage.clearParameter();
                    change_appendage.addParameter(CHANGE_STATUS_TYPE_ACTIVESTATUS_TOLERANCE_ALL , false, 2000.0);
                }
            }
            appendage.getVar("Flag").clear_vector();
            appendage.getVar("Flag").push_vector(1);

        }else{
            local curT = currentT - appendage.getVar("enegryT").get_vector(0);
            if (curT < 2000)
            {
                appendage.getVar("enegry").set_vector(0, sq_GetAccel(1000, 1, curT , 2000, true) );

            }else{
                appendage.getVar("enegry").set_vector(0, 1);
                appendage.getVar("enegryT").set_vector(0,-1);
            }
        }
    }

}



function onStart_appendage_NewMonsterRageEffect(appendage)
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
	appendage.getVar("enegry").clear_vector();
    appendage.getVar("enegry").push_vector(0);
	appendage.getVar("enegryT").clear_vector();
    appendage.getVar("enegryT").push_vector(-1);
	appendage.getVar("Flag").clear_vector();
    appendage.getVar("Flag").push_vector(0);
}

