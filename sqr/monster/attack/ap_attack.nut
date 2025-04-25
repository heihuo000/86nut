
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_ActAttackSet")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_ActAttackSet")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_ActAttackSet")
    appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_ActAttackSet")	
}

function sq_AddEffect(appendage)
{
}



function onAttackParent_appendage_ActAttackSet(appendage, realAttacker, damager, boundingBox, isStuck)
{

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if(!sourceObj || !parentObj ) 
    {
		appendage.setValid(false);
		return;
	}

	sourceObj = sq_GetCNRDObjectToSQRCharacter(sourceObj);
    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

    local power = sourceObj.sq_GetBonusRateWithPassive(appendage.getVar("parameter").get_vector(0), -1,
    appendage.getVar("parameter").get_vector(1),
    appendage.getVar("parameter").get_vector(2).tofloat() / 100.0 );

    local attackInfo = sq_GetCurrentAttackInfo(parentObj);
    sq_SetCurrentAttackBonusRate(attackInfo, power);

}

function onEnd_appendage_ActAttackSet(appendage)
{

	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();




}

function proc_appendage_ActAttackSet(appendage)
{
	if(!appendage) {
		return;		
	}

				
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj ) 
    {
		appendage.setValid(false);
		return;
	}


    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

    if (parentObj.getState() == 0)
    {
		appendage.setValid(false);
		return;
    }

}



function onStart_appendage_ActAttackSet(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj ) 
    {
		appendage.setValid(false);
		return;
	}


}


