
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_TayberrsMonsterMove")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_TayberrsMonsterMove")
}



function sq_AddEffect(appendage)
{
}


function proc_appendage_TayberrsMonsterMove(appendage)
{
	if(!appendage) {
		return;		
	}
				
    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();

	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}
    setTayberrsMonsterMoveEffectProcAppend(appendage);

}


function onStart_appendage_TayberrsMonsterMove(appendage)
{
    setTayberrsMonsterMoveEffectStartAppend(appendage);
}

