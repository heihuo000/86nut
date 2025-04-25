function ProcPassiveSkill_ATPriest(obj, skill_index, skill_level)
{
	if (skill_index == 254)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/gunner/latentability/ap_latentability.nut", true);
		}
	}
	if(skill_index == SKILL_WILLOFINQUISITOR)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atpriest/appendage/ap_willofinquisitor.nut", true);
			local change_appendage = appendage.sq_getChangeStatus("willofinquisitor");
			
			local firebonus = sq_GetIntData(obj, SKILL_WILLOFINQUISITOR, 0).tofloat();
			firebonus		= firebonus/10;
			local lightbonus	  = sq_GetIntData(obj, SKILL_WILLOFINQUISITOR, 1).tofloat();
			lightbonus		  = lightbonus/10;
			local movespd	  = sq_GetIntData(obj, SKILL_WILLOFINQUISITOR, 2).tofloat();
			movespd		  = (movespd/10);
			
			if(!change_appendage)
			{
				change_appendage = appendage.sq_AddChangeStatus("willofinquisitor",obj, obj, 0, 0, true, 0);
			}
			if(change_appendage) 
			{
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED,true, movespd);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_FIRE, true, firebonus);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT,true, lightbonus); 
			}
		}
	}
	if(skill_index == SKILL_MALLEUSMALEFICARUM)
	{
		local append = "character/atpriest/appendage/ap_malleusmaleficarum.nut";
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, append, true);
			local change_appendage = appendage.sq_getChangeStatus("malleusmaleficarum");
			
			local coolbonus  = sq_GetLevelData(obj, SKILL_MALLEUSMALEFICARUM, 2, skill_level).tofloat();
			coolbonus  = (coolbonus/1000);
			
			if(!change_appendage)
			{
				change_appendage = appendage.sq_AddChangeStatus("malleusmaleficarum",obj, obj, 0, 0, true, 0);
			}
			if(change_appendage) 
			{
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_COOLTIME_DECLINE, false, -coolbonus);
			}
		}
		else
		{
			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, append)) 
			{
				CNSquirrelAppendage.sq_RemoveAppendage(obj, append);
			}
		}
	}
	if(skill_index == SKILL_CRUSADE)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atpriest/appendage/ap_crusade.nut", true);
			if(appendage)
			{
				local attackspeedex = sq_GetLevelData(obj, skill_index, 5, skill_level).tofloat();
				attackspeedex = attackspeedex / 10;
				local change_appendage = appendage.sq_getChangeStatus("crusade");
				if(!change_appendage)
				{
					change_appendage = appendage.sq_AddChangeStatus("crusade",obj, obj, 0, 0, true, 0);
				}
				if(change_appendage)
				{
					change_appendage.clearParameter();
					change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, true, attackspeedex);
				}
			}
		}
	}
	else if(skill_index == SKILL_FLAGELLANTS)
	{
		local append = "character/atpriest/appendage/ap_flagellants.nut";
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, append, true);
		}
		else
		{
			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, append)) 
			{
				CNSquirrelAppendage.sq_RemoveAppendage(obj, append);
			}
		}
	}
	else if(skill_index == SKILL_CROSS_MASTERY)
	{
		local append = "character/atpriest/appendage/ap_crossmastery.nut";
		if(skill_level > 0 && isWeaponCrossc(obj))
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, append, true);
			if(appendage)
			{
				local castspeedex = sq_GetLevelData(obj, skill_index, 1, skill_level).tofloat();
				castspeedex = castspeedex / 10;
				local magicalcriticalex = sq_GetLevelData(obj, skill_index, 2, skill_level).tofloat();
				magicalcriticalex = magicalcriticalex / 10;
				local atkex = sq_GetLevelData(obj, skill_index, 0, skill_level).tofloat();
				atkex = atkex / 10;
				local change_appendage = appendage.sq_getChangeStatus("crossmastery");
				if(!change_appendage)
				{
					change_appendage = appendage.sq_AddChangeStatus("crossmastery",obj, obj, 0, 0, true, 0);
				}
				if(change_appendage)
				{
					change_appendage.clearParameter();
					change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, true, atkex);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK, true, atkex);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_CAST_SPEED, true, castspeedex);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, magicalcriticalex);
				}
			}
		}
		else
		{
			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, append)) 
			{
				CNSquirrelAppendage.sq_RemoveAppendage(obj, append);
			}
		}
	}
	else if(skill_index == SKILL_ARIA)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atpriest/appendage/ap_aria.nut", true);
			if(appendage)
			{
				local new = 1;
				local magicalattack = sq_GetLevelData(obj, skill_index, 0, skill_level);
				local phydef = sq_GetLevelData(obj, skill_index, 4, skill_level);
				local magdef = sq_GetLevelData(obj, skill_index, 5, skill_level);
				local change_appendage = appendage.sq_getChangeStatus("aria");
				if(!change_appendage)
				{
					change_appendage = appendage.sq_AddChangeStatus("aria",obj, obj, 0, 0, true, 0);
				}
				if(change_appendage)
				{
					change_appendage.clearParameter();
					change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicalattack.tofloat());
					change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, phydef.tofloat());
					change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, false, magdef.tofloat());
				}
			}
		}
	}
	else if(skill_index == SKILL_BLESS_OF_RAPHAEL)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, 
				"character/atpriest/appendage/ap_blessofraphael.nut", true);
			if(appendage)
			{
				local magicalattackex = sq_GetLevelData(obj, skill_index, 0, skill_level);
				local magicalcritical = sq_GetLevelData(obj, skill_index, 1, skill_level) / 10;
				local magicalcriticaldamage = sq_GetLevelData(obj, skill_index, 2, skill_level) / 10;
				local change_appendage = appendage.sq_getChangeStatus("blessofraphaelex");
				if(!change_appendage)
				{
					change_appendage = appendage.sq_AddChangeStatus("blessofraphaelex",obj, obj, 0, 
						CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicalattackex);
				}
				if(change_appendage)
				{
					change_appendage.clearParameter();
					change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicalattackex.tofloat());
					change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, magicalcritical.tofloat());
					change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, magicalcriticaldamage.tofloat());
				}
			}
		}
	}
	else if(skill_index == SKILL_GRACE_OF_DEVINE)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atpriest/appendage/ap_graceofdevine.nut", true);
			if(appendage)
			{
				local new = 1;
				local lightelement = sq_GetIntData(obj, skill_index, 2);
				local activestatus = sq_GetIntData(obj, skill_index, 3);
				local change_appendage = appendage.sq_getChangeStatus("graceofdevine");
				if(!change_appendage)
				{
					change_appendage = appendage.sq_AddChangeStatus("graceofdevine",obj, obj, 0, 
						CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, new );
				}
				if(change_appendage)
				{
					change_appendage.clearParameter();
					change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_LIGHT, false, lightelement.tofloat());
					change_appendage.addParameter(CHANGE_STATUS_TYPE_ACTIVESTATUS_TOLERANCE_ALL, false, activestatus.tofloat());
				}
			}
		}
	}
	else if(skill_index == SKILL_ZEAL_OF_FAITH)
	{
		local append = "character/atpriest/appendage/ap_zealoffaith.nut";
		if(skill_level > 0 && sq_IsInBattle())
		{
			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, append, true);
		}
		else
		{
			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, append)) 
			{
				CNSquirrelAppendage.sq_RemoveAppendage(obj, append);
			}
			CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/atpriest/appendage/ap_zealoffaith_friend.nut");
		}
	}
	else if(skill_index == SKILL_MIKOMASTERY)
	{
		local append = "character/atpriest/3_sorceress/mikomastery/ap_mikomastery.nut";
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, append, true);
			if(appendage)
			{
				local crtRate = sq_GetLevelData(obj, SKILL_MIKOMASTERY, 0, skill_level);
				crtRate = crtRate.tofloat();
				local crtProb = sq_GetLevelData(obj, SKILL_MIKOMASTERY, 1, skill_level);
				crtProb = crtProb.tofloat();
				local stuck = sq_GetLevelData(obj, SKILL_MIKOMASTERY, 2, skill_level);
				stuck = stuck.tofloat();
				local castSpeed = sq_GetLevelData(obj, SKILL_MIKOMASTERY, 3, skill_level);
				castSpeed = castSpeed.tofloat();
				local change_appendage = appendage.sq_getChangeStatus("mikomastery");
				if(!change_appendage)
				{
					change_appendage = appendage.sq_AddChangeStatus("mikomastery", obj, obj, 0, 0, true, 0);
				}
				if(change_appendage)
				{
					change_appendage.clearParameter();
					change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE,false, crtRate);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, crtRate);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE,false, crtProb);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, crtProb);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_STUCK, false, -stuck);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_CAST_SPEED, true, castSpeed/10);
				}
			}
		}
		else
		{
			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, append)) 
			{
				CNSquirrelAppendage.sq_RemoveAppendage(obj, append);
			}
		}
	}
	else if(skill_index == SKILL_CINTAMANI)
	{
		local append = "character/atpriest/3_sorceress/cintamani/ap_cintamani.nut";
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, append, true);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, APID_COMMON, true);
		}
		else
		{
			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, append)) 
			{
				CNSquirrelAppendage.sq_RemoveAppendage(obj, append);
			}
		}
	}
	else if(skill_index == SKILL_POWEROFDRAGON)
	{
		local append = "character/atpriest/3_sorceress/powerofthedragon/ap_powerofthedragon.nut";
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, append, true);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, skill_index, true);
		}
		else
		{
			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, append)) 
			{
				CNSquirrelAppendage.sq_RemoveAppendage(obj, append);
			}
		}
	}
	else if(skill_index == SKILL_BRANDOFHERESY)
	{
		local append = "character/atpriest/judge/brandofheresy/ap_brandofheresy.nut";
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, append, true);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, APID_COMMON, true);
		}
		else
		{
			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, append)) 
			{
				CNSquirrelAppendage.sq_RemoveAppendage(obj, append);
			}
		}
	}
	else if(skill_index == SKILL_BATTLEAXEMASTERY)
	{ 
		local append = "character/atpriest/appendage/ap_battleaxemastery.nut";
		if(skill_level > 0 && obj.getWeaponSubType()==4)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, append, true);
			local change_appendage = appendage.sq_getChangeStatus("battleaxemastery");
			
			local atkbonus= sq_GetLevelData(obj, SKILL_BATTLEAXEMASTERY, 2, skill_level).tofloat();
			atkbonus		= atkbonus/10;
			local aimbonus	  = sq_GetLevelData(obj, SKILL_BATTLEAXEMASTERY, 1, skill_level).tofloat();
			aimbonus		  = aimbonus/10;
			local spdbonus	  = sq_GetLevelData(obj, SKILL_BATTLEAXEMASTERY, 0, skill_level).tofloat();
			spdbonus		  = (spdbonus/10);
			
			if(!change_appendage)
			{
				change_appendage = appendage.sq_AddChangeStatus("battleaxemastery",obj, obj, 0, 0, true, 0);
			}
			if(change_appendage) 
			{
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED,true, spdbonus);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_STUCK, false, -aimbonus);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK_BONUS,true, atkbonus); 
			}
		}
		else
		{
			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, append)) 
			{
				CNSquirrelAppendage.sq_RemoveAppendage(obj, append);
			}
		}
	}
	else if(skill_index == SKILL_SCYTHEMASTERY)
	{ 
		local append = "character/atpriest/appendage/ap_scythemastery.nut";
		if(skill_level > 0 && obj.getWeaponSubType()==3)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, append, true);
			local change_appendage = appendage.sq_getChangeStatus("scythemastery");
			
			local atkbonus= sq_GetLevelData(obj, SKILL_SCYTHEMASTERY, 2, skill_level).tofloat();
			atkbonus		= atkbonus/10;
			local aimbonus	  = sq_GetLevelData(obj, SKILL_SCYTHEMASTERY, 1, skill_level).tofloat();
			aimbonus		  = aimbonus/10;
			local spdbonus	  = sq_GetLevelData(obj, SKILL_SCYTHEMASTERY, 0, skill_level).tofloat();
			spdbonus		  = (spdbonus/10);
			local movebonus	  = sq_GetLevelData(obj, SKILL_SCYTHEMASTERY, 4, skill_level).tofloat();
			movebonus		  = (movebonus/10);
			
			if(!change_appendage)
			{
				change_appendage = appendage.sq_AddChangeStatus("scythemastery",obj, obj, 0, 0, true, 0);
			}
			if(change_appendage) 
			{
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED,true, spdbonus);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_STUCK, false, -aimbonus);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK_BONUS,true, atkbonus); 
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED,true, movebonus);
			}
		}
		else
		{
			if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, append)) 
			{
				CNSquirrelAppendage.sq_RemoveAppendage(obj, append);
			}
		}
	}
	return true;
}




  