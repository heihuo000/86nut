
function ProcPassiveSkill_ATFighter(obj, skill_index, skill_level)
{
	if (skill_index == 235)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atfighter/aotianzhinu/ap_aotianzhinu.nut", true);
		}
	}
	else if (skill_index == 236)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atfighter/guizhazhidao/ap_guizhazhidao.nut", true);
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
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atfighter/appendage/ap_atfighter_comminterrupt.nut", true);
		}
	}
	return true;
}