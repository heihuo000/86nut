
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_GlobalMonsterSDBM")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_GlobalMonsterSDBM")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_GlobalMonsterSDBM")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_GlobalMonsterSDBM(appendage)
{

	if(!appendage) {
		return;		
	}


}

function proc_appendage_GlobalMonsterSDBM(appendage)
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
	
	parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

	
	
}



function onStart_appendage_GlobalMonsterSDBM(appendage)
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
}

