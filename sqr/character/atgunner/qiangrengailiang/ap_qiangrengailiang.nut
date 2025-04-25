function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_qiangrengailiang")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_qiangrengailiang")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_qiangrengailiang")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_qiangrengailiang(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onStart_appendage_qiangrengailiang(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	if(sqrChr.getWeaponSubType() == 0)
	{
		local skillLevel = sqrChr.sq_GetSkillLevel(SKILL_QIANG_REN_GAI_LIANG);
		local physicalAttackBonus = sq_GetLevelData(sqrChr, SKILL_QIANG_REN_GAI_LIANG, 0, skillLevel);
		local attackSpeed = sq_GetLevelData(sqrChr, SKILL_QIANG_REN_GAI_LIANG, 1, skillLevel);
		local change_appendage = appendage.sq_getChangeStatus("qiangrengailiang");
		if(!change_appendage)
		{
			change_appendage = appendage.sq_AddChangeStatus("qiangrengailiang",obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, true, physicalAttackBonus);
		}
		if(change_appendage)
		{
			change_appendage.clearParameter();
			change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, true, physicalAttackBonus.tofloat());
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, attackSpeed.tofloat());
		}
	}
}

function onEnd_appendage_qiangrengailiang(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
