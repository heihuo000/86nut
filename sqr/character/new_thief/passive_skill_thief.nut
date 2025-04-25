function ProcPassiveSkill_Thief(obj, skill_index, skill_level)
{
	if (skill_index == 94)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/new_thief/huixiejingtong/ap_huixiejingtong.nut", true);
		}
	}
	else if (skill_index == 252)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/new_thief/appendage/ap_thief_comminterrupt.nut", true);
		}
	}
	else if (skill_index == 254)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/gunner/latentability/ap_latentability.nut", true);
		}
	}
	return true;
}




