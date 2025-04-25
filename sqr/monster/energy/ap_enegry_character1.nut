
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
	local sourceObj = appendage.getSource();

	if(!parentObj || !sourceObj) 
    {
		appendage.setValid(false);
		return;
	}

    parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
    local currentT = appendage.getTimer().Get();

    local x = appendage.getVar("Pos").get_vector(0);
    local y = appendage.getVar("Pos").get_vector(1);
    local z = appendage.getVar("Pos").get_vector(2);
    local cancel = appendage.getVar("Pos").get_vector(3);
    local monsterIconID = x;
    local atkID = y;
    local time = z;

    local addtime = appendage.getVar("addtime").get_vector(0);

    local t = appendage.getVar().get_timer_vector(0);

	if (t)
	{
		if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
		{
			if (parentObj.getState() != 0 && parentObj.getState() != 1 && parentObj.getState() != 2 && parentObj.getState() != 3 && parentObj.getState() != 4 && parentObj.getState() != 6 && parentObj.getState() != 9 && parentObj.getState() != 10 && parentObj.getState() != 11 && parentObj.getState() != 12 && parentObj.getState() != 14 && parentObj.getState() != 16 && parentObj.getState() != 17 && parentObj.getState() != 7 && parentObj.getState() != 8 && parentObj.getState() != 15)
			{
				addtime = addtime - 300;
				appendage.getVar("addtime").set_vector(0, addtime);
			}

		}
	}

    if (currentT > (time+addtime) && appendage.getVar().getBool(0) == false)
    {
        appendage.getVar("isOk").clear_vector();
        appendage.getVar("isOk").push_vector( 2 );
        appendage.getVar().setBool(0, true);
        sq_SendCreatePassiveObjectPacketPos(parentObj, 2093581, 0, parentObj.getXPos(), parentObj.getYPos(), parentObj.getZPos());
        appendage.setValid(false);
        return;

    }else
    {  
      
      if (appendage.getVar("castingObj").get_obj_vector_size() <= 0)
      {
          
          local back = sq_AddDrawOnlyAniFromParent(parentObj,  "common/monster/energy/back.ani",0,-1,0);
          local front = sq_AddDrawOnlyAniFromParent(parentObj,  "common/monster/energy/energy_front.ani",0,-1,0);
          
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
          local posZ = parentObj.getZPos() +  parentObj.getObjectHeight() + 65;




          back.setCurrentPos(posX,posY,posZ);
          front.setCurrentPos(posX + 31,posY,posZ - 19);
          icon.setCurrentPos(posX + 4,posY,posZ - 2);
          
          back.setCurrentDirection(1);
          front.setCurrentDirection(1);
          icon.setCurrentDirection(1);
          
          local pAni = sq_GetCurrentAnimation(front);
          pAni.setImageRate(1.0, 1.0);
          pAni.setImageRate( currentT.tofloat() / (time+addtime).tofloat() , 1.0);
      
      
      }
      
    
    }
}



function onStart_appendage_NewStyleEnergyMonster(appendage)
{
	if(!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if(!parentObj || !sourceObj) 
    {
		appendage.setValid(false);
		return;
	}
	
	local addtime = 0;
	appendage.getVar("addtime").clear_vector();
	appendage.getVar("addtime").push_vector(addtime);
	appendage.getVar().setBool(0, false);
    appendage.getVar("cancelClear").clear_vector();
    appendage.getVar("cancelClear").push_vector( -1 );
    appendage.getVar("isOk").clear_vector();
    appendage.getVar("isOk").push_vector( 1 );
    appendage.getVar("castingObj").clear_obj_vector();
	
	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	t.setParameter(100, -1);//參數1：檢查間隔 參數2：限制次數
	t.resetInstant(0);//重置 參數未知
	t.setEventOnStart(false);//為true 一開始就可以觸發
}

