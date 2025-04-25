
function isEnableDrawCutscene(obj,skillIndex)
{
	local skill = sq_GetSkill(obj, skillIndex);
	return skill && !skill.isInCoolTime() && obj.getMp() >= skill.getSpendMp(obj, -1);
}

//Ð¡ËüÞÍ
function useSkill_before_Swordman(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;

	if(!sq_IsMyCharacter(obj) || sq_isPVPMode()) return true;

	if(skillIndex == 47)
	{
		if(SPECIAL_SKILL_FLAG == 0)
		{
			SPECIAL_SKILL_FLAG = 1;
			drawSwordmanBuffUI(obj,skillIndex);
		}else
			SPECIAL_SKILL_FLAG = 0;
	}else if(skillIndex == 18 || skillIndex == 38 || skillIndex == 40)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			drawSwordmanBuffUI(obj,skillIndex);
	}else if(skillIndex == 86 || skillIndex == 88 || skillIndex == 85 || skillIndex == 87)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			ULTIMATE_SKILL_ID = skillIndex;
	}else if(skillIndex == 231 || skillIndex == 241 || skillIndex == 244 || skillIndex == 246)	
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			AWAKE_SKILL_ID = skillIndex;
	}
	return true;
}

//Ò³Ì«Ôà
function useSkill_before_Fighter(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;

	if(!sq_IsMyCharacter(obj) || sq_isPVPMode()) return true;

	if(skillIndex == 37 || skillIndex == 38 || skillIndex == 50 || skillIndex == 30)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			drawFightBuffUI(obj,skillIndex);
	}else if(skillIndex == 67 || skillIndex == 71 || skillIndex == 64 || skillIndex == 63)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			ULTIMATE_SKILL_ID = skillIndex;
	}else if(skillIndex == 232 || skillIndex == 239 || skillIndex == 228 || skillIndex == 235)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			AWAKE_SKILL_ID = skillIndex;
	}
	return true;
}

//ÑûÌ«Ôà
function useSkill_before_ATFighter(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;

	if(!sq_IsMyCharacter(obj) || sq_isPVPMode()) return true;

	if(skillIndex == 31 || skillIndex == 43 || skillIndex == 50 || skillIndex == 37)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			drawATFighterBuffUI(obj,skillIndex);
	}else if(skillIndex == 67 || skillIndex == 41 || skillIndex == 105 || skillIndex == 63)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			ULTIMATE_SKILL_ID = skillIndex;
	}else if(skillIndex == 225 || skillIndex == 222 || skillIndex == 228 || skillIndex == 231)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			AWAKE_SKILL_ID = skillIndex;
	}
	return true;
}

//Ñûóæâ¢
function useSkill_before_Gunner(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;

	if(!sq_IsMyCharacter(obj) || sq_isPVPMode()) return true;

	if(skillIndex == 46 || skillIndex == 60 || skillIndex == 62 || skillIndex == 252 || skillIndex == 112)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			drawGunnerBuffUI(obj,skillIndex);
	}else if(skillIndex == 64 || skillIndex == 54 || skillIndex == 70 || skillIndex == 67 || skillIndex == 118)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			ULTIMATE_SKILL_ID = skillIndex;
	}else if(skillIndex == 235 || skillIndex == 240 || skillIndex == 245 || skillIndex == 247 || skillIndex == 133)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			AWAKE_SKILL_ID = skillIndex;
	}
	return true;
}

//Ò³óæâ¢
function useSkill_before_ATGunner(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;

	if(!sq_IsMyCharacter(obj) || sq_isPVPMode()) return true;

	if(skillIndex == 46 || skillIndex == 60 || skillIndex == 62 || skillIndex == 252)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			drawATGunnerBuffUI(obj,skillIndex);
	}else if(skillIndex == 100 || skillIndex == 96 || skillIndex == 97 || skillIndex == 98)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			ULTIMATE_SKILL_ID = skillIndex;
	}else if(skillIndex == 235 || skillIndex == 239 || skillIndex == 244 || skillIndex == 249)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			AWAKE_SKILL_ID = skillIndex;
	}
	return true;
}

//Ò³ØªÛö
function useSkill_before_Mage(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;

	if(!sq_IsMyCharacter(obj) || sq_isPVPMode()) return true;

	if(skillIndex == 29 || skillIndex == 81 || skillIndex == 40 || skillIndex == 41)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			drawMageBuffUI(obj,skillIndex);
	}else if(skillIndex == 74 || skillIndex == 82 || skillIndex == 83 || skillIndex == 109)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			ULTIMATE_SKILL_ID = skillIndex;
	}else if(skillIndex == 253 || skillIndex == 139 || skillIndex == 245 || skillIndex == 134)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			AWAKE_SKILL_ID = skillIndex;
	}
	return true;
}

//ÑûØªÛö
function useSkill_before_ATMage(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;

	if(!sq_IsMyCharacter(obj) || sq_isPVPMode()) return true;

	if(skillIndex == 28 || skillIndex == 31)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			drawATMageBuffUI(obj,skillIndex);
	}else if(skillIndex == 49 || skillIndex == 48)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			ULTIMATE_SKILL_ID = skillIndex;

	}else if(skillIndex == 245 || skillIndex == 248)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			AWAKE_SKILL_ID = skillIndex;
	}
	return true;
}

//?òÅíº
function useSkill_before_Priest(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;

	if(!sq_IsMyCharacter(obj) || sq_isPVPMode()) return true;

	if(skillIndex == 35 || skillIndex == 45 || skillIndex == 47 || skillIndex == 48 || skillIndex == 131)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			drawPriestBuffUI(obj,skillIndex);
	}else if(skillIndex == 84 || skillIndex == 90 || skillIndex == 93 || skillIndex == 119 || skillIndex == 120)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			ULTIMATE_SKILL_ID = skillIndex;
	}else if(skillIndex == 245 || skillIndex == 241 || skillIndex == 251 || skillIndex == 138)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			AWAKE_SKILL_ID = skillIndex;
	}
	return true;
}

//äÞå¨ÞÅíº
function useSkill_before_Thief(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;

	if(!sq_IsMyCharacter(obj) || sq_isPVPMode()) return true;

	if(skillIndex == 230 || skillIndex == 50)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			drawThiefBuffUI(obj,skillIndex);
	}else if(skillIndex == 57 || skillIndex == 59)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			ULTIMATE_SKILL_ID = skillIndex;
	}else if(skillIndex == 222 || skillIndex == 225)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			AWAKE_SKILL_ID = skillIndex;
	}
	return true;
}

function useSkill_before_ATSwordman(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;

	if(!sq_IsMyCharacter(obj) || sq_isPVPMode()) return true;

	if(skillIndex == 246 || skillIndex == 142 || skillIndex == 221 || skillIndex == 160|| skillIndex == 74)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			ULTIMATE_SKILL_ID = skillIndex;
	}
	if(skillIndex == 166)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			AWAKE_SKILL_ID = skillIndex;
	}
	return true;
}

function useSkill_before_ATPriest(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;

	if(!sq_IsMyCharacter(obj) || sq_isPVPMode()) return true;

	if(skillIndex == 78 || skillIndex == 139 || skillIndex == 217)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			drawATPriestBuffUI(obj,skillIndex);
	}
	else if(skillIndex == 151 || skillIndex == 121 || skillIndex == 134 || skillIndex == 244 || skillIndex == 250)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			ULTIMATE_SKILL_ID = skillIndex;
	}
	else if(skillIndex == 113 || skillIndex == 136 || skillIndex == 249 || skillIndex == 164)
	{
		if(isEnableDrawCutscene(obj,skillIndex))
			AWAKE_SKILL_ID = skillIndex;
	}
	return true;
}