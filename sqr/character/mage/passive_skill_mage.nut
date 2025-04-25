function ProcPassiveSkill_Mage(obj, skill_index, skill_level)
{
	if (skill_index == 96)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/mage/zhanlingqianneng/ap_zhanlingqianneng.nut", true);
		}
	}
	else if (skill_index == 248)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/mage/dragondance/ap_dragondance_proc_skill.nut", true);
		}
	}
	else if (skill_index == 254)
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
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/mage/appendage/ap_mage_comminterrupt.nut", true);
		}
	}
	return true;
}


