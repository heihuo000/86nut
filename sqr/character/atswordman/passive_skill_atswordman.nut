
function ProcPassiveSkill_ATSwordman(obj, skill_index, skill_level)
{
	switch(skill_index)
	{
	case 4:
		local apPath = "character/atswordman/1_swordmaster/shortswordmastery/ap_shortswordmastery.nut";
		local ap = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
		if(skill_level>0)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, true);
		break;
	case 11:
		local apPath = "character/atswordman/1_swordmaster/blademastery/ap_blademastery.nut";
		local ap = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
		if(skill_level>0)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, true);
		break;
	case 12:
		local apPath = "character/atswordman/1_swordmaster/heavyswordmastery/ap_heavyswordmastery.nut";
		local ap = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
		if(skill_level>0)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, true);
		break;
	case 13:
		local apPath = "character/atswordman/1_swordmaster/bluntmastery/ap_bluntmastery.nut";
		local ap = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
		if(skill_level>0)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, true);
		break;
	case 15:
		local apPath = "character/atswordman/1_swordmaster/bladesoul/ap_bladesoul.nut";
		local ap = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
		if(skill_level>0)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, true);
		break;
	case 16:
		local apPath = "character/atswordman/1_swordmaster/promiseofantiquity/ap_promiseofantiquity.nut";
		local ap = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
		if(skill_level>0)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, true);
		break;
	case 148:
		local apPath = "character/atswordman/2_demonslayer/calldaimus/ap_calldaimus.nut";
		local ap = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
		if(skill_level>0)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, true);
		break;
	case 154:
		local apPath = "character/atswordman/2_demonslayer/controldemonsword/ap_controldemonsword.nut";
		local ap = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
		if(skill_level>0)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, true);
		break;
	case 159:
		local apPath = "character/atswordman/2_demonslayer/greed/ap_atgreed.nut";
		local ap = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
		if(skill_level>0)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, true);
		break;
	case 65:
		local apPath = "character/atswordman/4_darktempler/evolve/ap_evolve.nut";
		local ap = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
		if(skill_level>0)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, true);
		break;
	case 40:
		local apPath = "character/atswordman/4_darktempler/loyalslave/ap_loyalslavebuff.nut";
		local ap = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
		if(skill_level>0)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, true);
		break;
	case 104:
		local apPath = "character/atswordman/2_vegabond/threeflower/ap_threeflower.nut";
		local ap = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
		if(skill_level>0)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, true);
		break;
	case 121:
		local apPath = "character/atswordman/5_bladeshadows/appendage/ap_vintage.nut";
		local ap = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
		if(skill_level>0)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, true);
		break;
	case 122:
		local apPath = "character/atswordman/5_bladeshadows/appendage/ap_oldfashioned.nut";
		local ap = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
		if(skill_level>0)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, true);
		break;
	case 123:
		local apPath = "character/atswordman/5_bladeshadows/appendage/ap_license.nut";
		local ap = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
		if(skill_level>0)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, true);
		break;
	case 254:
		local apPath = "character/latentability/ap_latentability.nut";
		local ap = CNSquirrelAppendage.sq_IsAppendAppendage(obj, apPath);
		if(skill_level>0)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, apPath, true);
		break;
	}
	return true;
}
