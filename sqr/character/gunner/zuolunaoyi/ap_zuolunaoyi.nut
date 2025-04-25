function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_zuolunaoyi")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_zuolunaoyi")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_zuolunaoyi")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_zuolunaoyi(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onStart_appendage_zuolunaoyi(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	if(sqrChr.getWeaponSubType() == 0)
	{
		local skillLevel = sqrChr.sq_GetSkillLevel(SKILL_ZUO_LUN_AO_YI);
		local physicalAttackBonus = sq_GetLevelData(sqrChr, SKILL_ZUO_LUN_AO_YI, 0, skillLevel);
		local attackSpeed = sq_GetLevelData(sqrChr, SKILL_ZUO_LUN_AO_YI, 1, skillLevel);
		local change_appendage = appendage.sq_getChangeStatus("zuolunaoyi");
		if(!change_appendage)
		{
			change_appendage = appendage.sq_AddChangeStatus("zuolunaoyi",obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, true, physicalAttackBonus);
		}
		if(change_appendage)
		{
			change_appendage.clearParameter();
			change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, true, physicalAttackBonus.tofloat());
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, attackSpeed.tofloat());
		}
	}
}

function onEnd_appendage_zuolunaoyi(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
