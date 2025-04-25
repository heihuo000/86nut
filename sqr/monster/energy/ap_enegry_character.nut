
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

        appendage.setValid(false);
        return;

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
          local posZ = parentObj.getZPos() +  parentObj.getObjectHeight() + 65;




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

