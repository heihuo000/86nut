
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_atmage_reaonance")
	appendage.sq_AddFunctionName("prepareDraw", "prepareDraw_appendage_atmage_reaonance")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_atmage_reaonance")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_atmage_reaonance")
	appendage.sq_AddFunctionName("isEnd", "isEnd_appendage_atmage_reaonance")
}


function sq_AddEffect(appendage)
{
}




function proc_appendage_atmage_reaonance(appendage)
{
	if(!appendage) {
		return;
	}
}


function onStart_appendage_atmage_reaonance(appendage)
{
	if(!appendage) {
		return;
	}
	
}


function prepareDraw_appendage_atmage_reaonance(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();	
}




function onEnd_appendage_atmage_reaonance(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();
	
}


// ��� ���� ������ ���κ�
function isEnd_appendage_atmage_reaonance(appendage)
{	
	return false;
}