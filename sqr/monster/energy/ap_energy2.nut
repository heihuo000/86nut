
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_NewStyleEnergy2")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_NewStyleEnergy2")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_NewStyleEnergy2")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_NewStyleEnergy2(appendage)
{

	if(!appendage) {
		return;		
	}
	local parentObj = appendage.getParent();
    if (appendage.getVar("isOk").get_vector(0) == 1)
    {
        local cancel = appendage.getVar("cancelClear").get_vector(0);
        if (cancel != -1)
        {
//            local pIntVec = sq_GetGlobalIntVector();
//            sq_IntVectorClear(pIntVec);
//            sq_IntVectorPush(pIntVec, cancel);
//            parentObj.addSetStatePacket(8 , pIntVec,  STATE_PRIORITY_USER, false, "");
//            parentObj.flushSetStatePacket();
        }
    }


    local pChr = sq_GetMyMasterCharacter();
    pChr = sq_GetCNRDObjectToSQRCharacter(pChr);

    local apd = getComboUiAppendage(pChr);
    if (apd)
    {
        apd.getVar("monsterEnergyDrawUI2").set_vector(0,-1);
        apd.getVar("monsterEnergyDrawUI2").set_vector(1,-1);
        apd.getVar("monsterEnergyDrawUI2").set_vector(2,-1);
        apd.getVar("monsterEnergyDrawUI2").set_vector(3,-1);
    }

}

function proc_appendage_NewStyleEnergy2(appendage)
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
    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
	local currentT = appendage.getTimer().Get();




    local x = appendage.getVar("Pos").get_vector(0);
    local y = appendage.getVar("Pos").get_vector(1);
    local z = appendage.getVar("Pos").get_vector(2);
    local cancel = appendage.getVar("Pos").get_vector(3);
    local monsterIconID = x;
    local atkID = y;
    local time = z;

    local pChr = sq_GetMyMasterCharacter();
    if (pChr)
    {
        pChr = sq_GetCNRDObjectToSQRCharacter(pChr);
        local apd = getComboUiAppendage(pChr);
        apd.getVar("monsterEnergyDrawUI2").set_vector(0,monsterIconID);
        apd.getVar("monsterEnergyDrawUI2").set_vector(1,atkID);
        apd.getVar("monsterEnergyDrawUI2").set_vector(2,time);
        apd.getVar("monsterEnergyDrawUI2").set_vector(3,currentT);
    }


    if (currentT > time)
    {
        appendage.getVar("isOk").clear_vector();
        appendage.getVar("isOk").push_vector( 2 );

        if (atkID != -1)
        {

            if (parentObj.getState() == 8 && parentObj.getAttackIndex() == atkID )
            {

//                if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/ap_set_unhold.nut"))
//                {
//                    CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/ap_set_unhold.nut");
//                }

                appendage.setValid(false);
                return;

            }else{

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


                local pIntVec = sq_GetGlobalIntVector();
                sq_IntVectorClear(pIntVec);
                sq_IntVectorPush(pIntVec, atkID);
                parentObj.addSetStatePacket(8 , pIntVec,  STATE_PRIORITY_USER, false, "");
                parentObj.flushSetStatePacket();

            }

        }else{

            appendage.setValid(false);
            return;
        }


    }
    if ( cancel == 1)
    {
        if (parentObj.getState() != 8)
        {
            appendage.setValid(false);
            return;
        }
    }
}



function onStart_appendage_NewStyleEnergy2(appendage)
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
    appendage.getVar("cancelClear").clear_vector();
    appendage.getVar("cancelClear").push_vector( -1 );
    appendage.getVar("isOk").clear_vector();
    appendage.getVar("isOk").push_vector( 1 );
}

