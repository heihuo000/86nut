
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_BloodGaugeEffect")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_BloodGaugeEffect")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_BloodGaugeEffect")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_BloodGaugeEffect(appendage)
{

	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

    if (parentObj)
    {
        
        local saveHp = appendage.getVar("saveHp").get_vector(0);
        parentObj.setHp( saveHp, null, true);

    }

}

function proc_appendage_BloodGaugeEffect(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	local var = appendage.getVar("currentHp").get_vector(1);

    if (var <= 0)
    {
        local next = appendage.getVar("MonsterVar").get_vector(1);
        if (next != -1)
        {

            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

//            outPut("dummy/dummy.txt",+"\n");


            if (parentObj.getAttackIndex() != next && (parentObj.getState() == 0 || parentObj.getState() == 8) )
            {

                sq_SendMessage(parentObj,OBJECT_MESSAGE_INVINCIBLE,1,0);
                sq_PostDelayedMessage(parentObj,OBJECT_MESSAGE_INVINCIBLE,0,0,500 );
                local pIntVec = sq_GetGlobalIntVector();
                sq_IntVectorClear(pIntVec);
                sq_IntVectorPush(pIntVec, next);
                parentObj.addSetStatePacket(8 , pIntVec,  STATE_PRIORITY_USER, false, "");
                parentObj.flushSetStatePacket();
                appendage.setValid(false);
                return;
            }else{
                sq_SendMessage(parentObj,OBJECT_MESSAGE_INVINCIBLE,1,0);

            }
        }else{


            appendage.setValid(false);
            return;

        }




    }
}



function onStart_appendage_BloodGaugeEffect(appendage)
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
    appendage.getVar("saveHp").clear_vector();
    appendage.getVar("saveHp").push_vector( parentObj.getHp() );

}


