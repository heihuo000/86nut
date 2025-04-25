
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_HERO_SAYA")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_HERO_SAYA")
}

function sq_AddEffect(appendage)
{
}
function proc_appendage_HERO_SAYA(appendage)
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
    local skill_level = sq_GetSkillLevel(parentObj, SKILL_HERO);
	local value0 = sq_GetLevelData(parentObj, SKILL_HERO, 3, skill_level); 
	local value1 = sq_GetLevelData(parentObj, SKILL_HERO, 4, skill_level); 
	local value2 = sq_GetLevelData(parentObj, SKILL_HERO, 5, skill_level); 
    local attackInfo = sq_GetCurrentAttackInfo(parentObj);

    sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_FREEZE, value0, value1,value2);
}



function onStart_appendage_HERO_SAYA(appendage)
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

