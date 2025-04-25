
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_flagellants")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_flagellants")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_flagellants(appendage)
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

function onStart_appendage_flagellants(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	local skillLevel = sqrChr.sq_GetSkillLevel(SKILL_FLAGELLANTS);
	local physicalAttack = sq_GetLevelData(sqrChr, SKILL_FLAGELLANTS, 0, skillLevel);
	local magicalAttack = sq_GetLevelData(sqrChr, SKILL_FLAGELLANTS, 1, skillLevel);
	local physicalAttackBonus = sq_GetLevelData(sqrChr, SKILL_FLAGELLANTS, 2, skillLevel);
	local magicalAttackBonus = sq_GetLevelData(sqrChr, SKILL_FLAGELLANTS, 3, skillLevel);
	local change_appendage = appendage.sq_getChangeStatus("flagellants");
	if(!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("flagellants",obj, obj, 0, 2, false, 0);
	}
	if(change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, physicalAttackBonus.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, false, magicalAttackBonus.tofloat());
	}
}


