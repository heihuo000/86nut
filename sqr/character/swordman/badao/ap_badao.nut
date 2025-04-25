SPIN_RATE_BADAO <- 3


function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_BADAO")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_BADAO")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_BADAO")
}


function onEnd_appendage_BADAO(appendage)
{
	local parentObj = appendage.getParent();
    sq_SetCustomRotate(parentObj, 0.0);	

}
function sq_AddEffect(appendage)
{
}



function proc_appendage_BADAO(appendage)
{
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	if(!appendage) {
		return;		
	}
	local currentT = appendage.getTimer().Get();
	local currentZ = appendage.getVar("z").get_vector(0)
	if (currentT < 600)
	{

		local z = sq_GetAccel(appendage.getVar("z").get_vector(0), 
		appendage.getVar("z").get_vector(0) + 100, currentT , 600, true);
		parentObj.setCurrentPos(parentObj.getXPos(),parentObj.getYPos(),z );
	}

	if (currentZ - parentObj.getZPos() <= 0)
	{
		if (appendage.getVar("downTimeCheck").get_vector(0) == -1)
		{
			appendage.getVar("downTimeCheck").set_vector(0,currentT);
		}else{
			local cnt = currentT - appendage.getVar("downTimeCheck").get_vector(0);
			if (cnt > 300)
			{
				appendage.setValid(false);
				return;
			}
		}
	}else{
		local rorateT = (currentT * 2) % 1000;
		if (rorateT < 250)
		{
			sq_SetCustomRotate(parentObj,sq_ToRadian(90.0));
		}else if (rorateT < 500)
		{
			sq_SetCustomRotate(parentObj,sq_ToRadian(180.0));
		}else if (rorateT < 750)
		{
			sq_SetCustomRotate(parentObj,sq_ToRadian(270.0));
		}else if (rorateT < 1000)
		{
			sq_SetCustomRotate(parentObj,sq_ToRadian(360.0));
		}
		appendage.getVar("downTimeCheck").set_vector(0,-1);
	}
}



function onStart_appendage_BADAO(appendage)
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

	local currentT = appendage.getTimer().Get();
   	appendage.getVar("downTimeCheck").clear_vector();
 	appendage.getVar("downTimeCheck").push_vector(-1);
   	appendage.getVar("z").clear_vector();
 	appendage.getVar("z").push_vector( parentObj.getZPos() );
}

