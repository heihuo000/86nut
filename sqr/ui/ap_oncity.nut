
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_OnCityAppendage")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_OnCityAppendage")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_OnCityAppendageT")
}

function sq_AddEffect(appendage)
{
	appendage.sq_AddEffectBack("character/mage/animation/ani_als/marionette/buff02_00.ani");
	appendage.sq_AddEffectBack("character/mage/animation/ani_als/marionette/connectwirea_00.ani");
}

function onEnd_appendage_OnCityAppendage(appendage)
{
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
    
}

function proc_appendage_OnCityAppendage(appendage)
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

}



function onStart_appendage_OnCityAppendage(appendage)
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
}

