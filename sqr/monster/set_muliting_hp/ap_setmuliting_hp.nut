
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_SetMulitingHpEffect")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_SetMulitingHpEffect")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_SetMulitingHpEffect")
}

function sq_AddEffect(appendage)
{
}



function proc_appendage_SetMulitingHpEffect(appendage)
{

	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

}



function onStart_appendage_SetMulitingHpEffect(appendage)
{

	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

}




function onEnd_appendage_SirocoFaceToFaceMoveEffect(appendage)
{

	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

}