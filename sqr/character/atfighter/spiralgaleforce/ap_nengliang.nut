
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_nengliang")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_nengliang")
	appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_nengliang")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_nengliang")
}

function sq_AddEffect(appendage)
{
	//appendage.sq_AddEffectBack("character/mage/effect/animation/nengliang/nengliangenchanbuff_roof_00.ani");
}


function onEnd_appendage_nengliang(appendage)
{
	if(!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	
	local newValue = appendage.getVar("num").get_vector(0);
	
	if(newValue > 0)
	{
		appendage.getVar("num").set_vector(0, 0);
	}
}

function onAttackParent_appendage_nengliang(appendage, realAttacker, damager, boundingBox, isStuck)
{
	if(!appendage)
	{
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	
	setNengLiangZeng(parentObj);
}


function proc_appendage_nengliang(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	
	if(!sourceObj || !parentObj) 
	{
		appendage.setValid(false);
		return;
	}
	
	if(appendage.getVar("num").get_vector(0) >= 1000)
	{
		appendage.getVar("num").set_vector(0, 1000);
	}
	
	if(appendage.getVar("num").get_vector(0) <= 0)
	{
		appendage.getVar("num").set_vector(0, 0);
	}
	
	local currentT = appendage.getTimer().Get();
	local t = appendage.sq_var.get_timer_vector(0);
	if (t.isOnEvent(currentT) == true) {
		if (isNengLiangOpen(parentObj) )
		{
			if (getNengLiangNumber(parentObj) < 100)
			{
				setNengLiangNumber(parentObj,-10);
			}
		}
	}
}

function onStart_appendage_nengliang(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	
	appendage.getVar("num").clear_vector();
	appendage.getVar("num").push_vector(0);
	
	appendage.sq_var.clear_timer_vector();
	appendage.sq_var.push_timer_vector();
	
	local t = appendage.sq_var.get_timer_vector(0);
	t.setParameter(1000, -1);
	t.resetInstant(0);
}


function setNengLiangZeng(obj)
{
	local state = obj.getState();
	
	if(state == 8) {
		setNengLiangNumber(obj,25);
	}
	else if(state == 7) {
		setNengLiangNumber(obj,25);
	}
	else if(state == 15) {
		setNengLiangNumber(obj,25);
	}
}
