
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_spiralgaleforce")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_spiralgaleforce")
}

function sq_AddEffect(appendage)
{
	//appendage.sq_AddEffectBack("character/mage/effect/animation/hotlove/hotloveenchanbuff_roof_00.ani");
}

function proc_appendage_spiralgaleforce(appendage)
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
	local sqrObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	
	if(sqrObj)
	{
		sqrObj.sq_RemovePassiveSkillAttackBonusRate(SKILL_spiralgaleforce);
		sqrObj.sq_AddPassiveSkillAttackBonusRate(SKILL_spiralgaleforce, 8);
	}
	getCurrentModuleDamageRate(parentObj);
}

function onStart_appendage_spiralgaleforce(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
}



function isEnableBursterSkill(chr, skillIndex)
{
	if (!chr)
		return false;
	local bursterSkill = sq_GetSkill(chr, SKILL_spiralgaleforce);
	if (!bursterSkill)
		return false;
	
	local size = sq_GetCustomIntDataSize(bursterSkill, chr);
	for (local i = 0; i < size; i++)
	{
		local disableSkillIndex = sq_GetIntData(chr, SKILL_spiralgaleforce, i);
		if (disableSkillIndex == skillIndex)
		{
			return false;
		}
	}
	return true;
}
