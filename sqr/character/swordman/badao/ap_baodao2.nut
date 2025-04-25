
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_BADAO2")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_BADAO2")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_BADAO2")
	appendage.sq_AddFunctionName("getImmuneTypeDamageRate", "getImmuneTypeDamageRate_appendage_BAODAO2")
}

function getImmuneTypeDamageRate_appendage_BAODAO2(appendage, damageRate, attacker)
{
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

    if (sourceObj.getState() == 23 && appendage.getVar("f").get_vector(0) == 0)
    {
        appendage.getVar("f").set_vector(0,1);
        local elect = sq_AddDrawOnlyAniFromParent(parentObj,"character/swordman/animation/rorate.ani", 0, 0, 0);	
        appendage.getVar("obj").push_obj_vector(elect);
    }
}

function onEnd_appendage_BADAO2(appendage)
{
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();


    local var = appendage.getVar("obj");  		
    local objectsSize = var.get_obj_vector_size();

    for(local i=0;i<objectsSize;++i)
    {


        local elect = var.get_obj_vector(i);
        if (elect)
            elect.setValid(false);  
    }


}
function sq_AddEffect(appendage)
{
//	appendage.sq_AddEffectFront("character/swordman/animation/rorate.ani");
}

function proc_appendage_BADAO2(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
    local startT = appendage.getVar("t").get_vector(0);
    local startT2 = appendage.getVar("t2").get_vector(0);
	local currentT = appendage.getTimer().Get();
	if( !parentObj) 
    {
		appendage.setValid(false);
		return;
	}

    local damaX = parentObj.getXPos();
    local damaY = parentObj.getYPos();
    local damaZ = parentObj.getZPos();


    local var = appendage.getVar("obj");  		
    local objectsSize = var.get_obj_vector_size();

    if (!CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "character/swordman/badao/ap_badao.nut") )
    {
		appendage.setValid(false);
		return;
    }

    for(local i=0;i<objectsSize;++i)
    {


        local elect = var.get_obj_vector(i);
        if (elect)
            elect.setCurrentPos(damaX,damaY,damaZ);
    }


    if (sourceObj && sourceObj.getState() == STATE_STAND)
    {
        appendage.getVar("f").clear_vector();
        appendage.getVar("f").push_vector( 0 );
    }


}



function onStart_appendage_BADAO2(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}	

   local elect = sq_AddDrawOnlyAniFromParent(parentObj,"character/swordman/animation/rorate.ani", 0, 0, 0);	

	local currentT = appendage.getTimer().Get();
    appendage.getVar("t").clear_vector();
    appendage.getVar("t").push_vector(currentT);
    appendage.getVar("t2").clear_vector();
    appendage.getVar("t2").push_vector(currentT);
    appendage.getVar("xz").clear_vector();
    appendage.getVar("xz").push_vector(0);

    appendage.getVar("hei").clear_vector();
    appendage.getVar("hei").push_vector( parentObj.getZPos() );

    appendage.getVar("f").clear_vector();
    appendage.getVar("f").push_vector( 1 );

    appendage.getVar("obj").clear_obj_vector();
    appendage.getVar("obj").push_obj_vector(elect);

    local damaX = parentObj.getXPos();
    local damaY = parentObj.getYPos();
    local damaZ = parentObj.getZPos();

}

