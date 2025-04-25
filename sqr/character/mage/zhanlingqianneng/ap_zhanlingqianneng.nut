function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_zhanlingqianneng")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_zhanlingqianneng")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_zhanlingqianneng")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_zhanlingqianneng(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onStart_appendage_zhanlingqianneng(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	local skillLevel = sqrChr.sq_GetSkillLevel(SKILL_ZHAN_LING_QIAN_NENG);
	local physicalAttack = sq_GetLevelData(sqrChr, SKILL_ZHAN_LING_QIAN_NENG, 0, skillLevel);
	local magicalAttack = sq_GetLevelData(sqrChr, SKILL_ZHAN_LING_QIAN_NENG, 1, skillLevel);
	local physicalAttackBonus = sq_GetLevelData(sqrChr, SKILL_ZHAN_LING_QIAN_NENG, 2, skillLevel);
	local magicalAttackBonus = sq_GetLevelData(sqrChr, SKILL_ZHAN_LING_QIAN_NENG, 3, skillLevel);
	local change_appendage = appendage.sq_getChangeStatus("zhanlingqianneng");
	if(!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("zhanlingqianneng",obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physicalAttack);
	}
	if(change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, physicalAttackBonus.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, magicalAttackBonus.tofloat());
	}
}

function onEnd_appendage_zhanlingqianneng(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
