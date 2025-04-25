
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_NewStyleEnergyMonster")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_NewStyleEnergyMonster")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_NewStyleEnergyMonster")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_NewStyleEnergyMonster(appendage)
{

	if(!appendage) {
		return;		
	}
	
	local obj1 = appendage.getVar("castingObj").get_obj_vector(0);
	if (obj1)
    obj1.setValid(false);
	local obj2 = appendage.getVar("castingObj").get_obj_vector(1);
	if (obj2)
    obj2.setValid(false);
	local obj3 = appendage.getVar("castingObj").get_obj_vector(2);
	if (obj3)
    obj3.setValid(false);
  
}

function proc_appendage_NewStyleEnergyMonster(appendage)
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
//	  outPut("dummy/dummy.txt","10");
    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
    local currentT = appendage.getTimer().Get();

    local x = appendage.getVar("Pos").get_vector(0);
    local y = appendage.getVar("Pos").get_vector(1);
    local z = appendage.getVar("Pos").get_vector(2);
    local cancel = appendage.getVar("Pos").get_vector(3);
    local monsterIconID = x;
    local atkID = y;
    local time = z;
    
    if (currentT > time)
    {
        appendage.getVar("isOk").clear_vector();
        appendage.getVar("isOk").push_vector( 2 );

        if (atkID != -1)
        {

            if (parentObj.getState() == 8 && parentObj.getAttackIndex() == atkID )
            {

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


    }else
    {  
      
      if (appendage.getVar("castingObj").get_obj_vector_size() <= 0)
      {
          
          local back = sq_AddDrawOnlyAniFromParent(parentObj,  "common/monster/energy/back.ani",0,-1,0);
          local front = sq_AddDrawOnlyAniFromParent(parentObj,  "common/monster/energy/energy_front.ani",0,-1,0);
          
          //lcoal front = sq_AddDrawOnlyAniFromParent(parentObj,  "common/monster/energy/energy_front.ani",0,-1,0);
          local icon = sq_AddDrawOnlyAniFromParent(parentObj,  "common/monster/energy/icon/" + monsterIconID + ".ani",0,-1,0);
          
          appendage.getVar("castingObj").push_obj_vector(back);
          appendage.getVar("castingObj").push_obj_vector(front);
          appendage.getVar("castingObj").push_obj_vector(icon);
          
          
      }else{
          
          local back = appendage.getVar("castingObj").get_obj_vector(0);
          local front = appendage.getVar("castingObj").get_obj_vector(1);
          local icon = appendage.getVar("castingObj").get_obj_vector(2);
          
          local posX = parentObj.getXPos() - 50;
          local posY = parentObj.getYPos() + 1;
          local posZ = parentObj.getZPos() +  parentObj.getObjectHeight() + 38;
          
          back.setCurrentPos(posX,posY,posZ);
          front.setCurrentPos(posX + 31,posY,posZ - 19);
          icon.setCurrentPos(posX + 4,posY,posZ - 2);
          
          back.setCurrentDirection(1);
          front.setCurrentDirection(1);
          icon.setCurrentDirection(1);
          
          local pAni = sq_GetCurrentAnimation(front);
          pAni.setImageRate(1.0, 1.0);
          pAni.setImageRate( currentT.tofloat() / time.tofloat() , 1.0);
      
      
      }
      
    
    }
}



function onStart_appendage_NewStyleEnergyMonster(appendage)
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
    appendage.getVar("castingObj").clear_obj_vector();
}

