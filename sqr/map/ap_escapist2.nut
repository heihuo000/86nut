
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_escapist2")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_escapist2")
}



function sq_AddEffect(appendage)
{
}

function proc_appendage_escapist2(appendage)
{
	if(!appendage) {
		return;		
	}
				
    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();
//    parentObj.setCurrentPos(parentObj.getXPos(),parentObj.getYPos(),0);

	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}

    local size = appendage.getVar("damageNum").size_vector();
    appendage.getVar("damageNum").set_vector(size - 1, damageBounsPoongjintrainingroom );

}



function onStart_appendage_escapist2(appendage)
{


    appendage.getVar("damageNum").clear_vector();
    appendage.getVar("damageNum").push_vector(0);


    mouseFlag = 0;
    UiDisplayFlag = 0;
    monsterId = 0;
    baojiIncrate = 0;
    shuxIncrate = 0;
    shuxBuffIncrate = 0;
    speedIncrate = 0;
    damageBounsPoongjintrainingroom = 0;
    
    isFoldMainScreen = 1;
    isDamageScreen = 0;
}

