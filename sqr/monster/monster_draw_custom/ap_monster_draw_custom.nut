
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_DrawMonsterCustomUI")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_DrawMonsterCustomUI")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_DrawMonsterCustomUI")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_DrawMonsterCustomUI(appendage)
{

	if(!appendage) {
		return;		
	}


}

function proc_appendage_DrawMonsterCustomUI(appendage)
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
	local currentT = appendage.getTimer().Get();
//    if (currentT > 2000)
//    {
//		appendage.setValid(false);
//		return;
//    }
//    sq_AddMessage(29002); 
}



function onStart_appendage_DrawMonsterCustomUI(appendage)
{
	if(!appendage) {
		return;
	}

	local parentObj = appendage.getParent();
    parentObj = sq_GetCNRDObjectToSQRCharacter( parentObj);
	if(!parentObj) 
    {
		appendage.setValid(false);
		return;
	}

    local x = appendage.getVar("parameter").get_vector(0);
    local y = appendage.getVar("parameter").get_vector(1);
    local z = appendage.getVar("parameter").get_vector(2);



}

