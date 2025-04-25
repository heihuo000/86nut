
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_HERO")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_HERO")
}

function sq_AddEffect(appendage)
{
}
function proc_appendage_HERO(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();	
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}
}



function onStart_appendage_HERO(appendage)
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
    appendage.getVar("effectObj").clear_vector();
    appendage.getVar("effectObj").push_vector(0);
    appendage.getVar("effectObj").push_vector(0);
    appendage.getVar("effectObj").push_vector(0);
    appendage.getVar("effectObj").push_vector(0);


}

