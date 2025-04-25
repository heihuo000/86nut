function ProcPassiveSkill_Priest(obj, skill_index, skill_level)
{
	 if (skill_index == 254)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/gunner/latentability/ap_latentability.nut", true);
		}
	}
    else if (skill_index == 171)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/new_priest/appendage/ap_priest_comminterrupt.nut", true);
		}
	}
	return true;
}

function procSkill_Priest(obj)
{
	if(!obj) return;
	local Skill = null;
	if(sq_GetSkillLevel(obj, 253) >0)
	{
		Skill = sq_GetSkill(obj, 45);
		if(Skill) Skill.setCommandEnable(false);
		Skill = sq_GetSkill(obj, 21);
		if(Skill) Skill.setCommandEnable(false);
		return 2;
	}

	return;
}

