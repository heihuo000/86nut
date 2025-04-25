
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_NewStyleEnergyBall")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_NewStyleEnergyBall")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_NewStyleEnergyBall")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_NewStyleEnergyBall(appendage)
{

	if(!appendage) {
		return;		
	}


    local pChr = sq_GetMyMasterCharacter();
    pChr = sq_GetCNRDObjectToSQRCharacter(pChr);

    local apd = getComboUiAppendage(pChr);
    if (apd)
    {
        apd.getVar("monsterEnergyDrawBallUI").set_vector(0,-1);
        apd.getVar("monsterEnergyDrawBallUI").set_vector(1,-1);
        apd.getVar("monsterEnergyDrawBallUI").set_vector(2,-1);
        apd.getVar("monsterEnergyDrawBallUI").set_vector(3,-1);
    }

}

function proc_appendage_NewStyleEnergyBall(appendage)
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

    local pChr = sq_GetMyMasterCharacter();
    pChr = sq_GetCNRDObjectToSQRCharacter(pChr);
    local apd = getComboUiAppendage(pChr);
    if (apd)
    {

        apd.getVar("monsterEnergyDrawBallUI").set_vector(0,appendage.getVar("Pos").get_vector(0));
        apd.getVar("monsterEnergyDrawBallUI").set_vector(1,appendage.getVar("Pos").get_vector(1));
        apd.getVar("monsterEnergyDrawBallUI").set_vector(2,appendage.getVar("Pos").get_vector(2));

        local curT = appendage.getTimer().Get();
        local t = appendage.getVar("time").get_vector(0);
        if (t > 0 && curT - t <= 1500)
        {
            if (apd.getVar("monsterEnergyDrawBallUI").get_vector(3) != 1)
            {
                local id = appendage.getVar("Pos").get_vector(2);

                local endAni = pChr.getVar().GetAnimationMap("MonsterEnergyBallCustomUI_End" + id,
                    "common/monster/energyball/ball_" + id + "/ball_end.ani");
                endAni.setCurrentFrameWithChildLayer(0);

                apd.getVar("monsterEnergyDrawBallUI").set_vector(3,1);
            }
        }
        else
        {
            if (apd.getVar("monsterEnergyDrawBallUI").get_vector(3) != 0)
            {
                apd.getVar("monsterEnergyDrawBallUI").set_vector(3,0);
            }
        }
    }

    if (parentObj.getState() == 0 && appendage.getVar("Pos").get_vector(0) > 0)
    {
        if (appendage.getVar("Pos").get_vector(1) >= 7 || appendage.getVar("Pos").get_vector(1) <= 0 )
        {
            local pIntVec = sq_GetGlobalIntVector();
            sq_IntVectorClear(pIntVec);
            sq_IntVectorPush(pIntVec, appendage.getVar("Pos").get_vector(0) );
            parentObj.addSetStatePacket(8 , pIntVec,  STATE_PRIORITY_USER, false, "");
            parentObj.flushSetStatePacket();

            appendage.setValid(false);
            return;
        }




    }
}



function onStart_appendage_NewStyleEnergyBall(appendage)
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

    appendage.getVar("time").clear_vector();
    appendage.getVar("time").push_vector(0);



}

