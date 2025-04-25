function drawCustomUI_AllGrowJob(obj)
{
	if(!obj) return;
	SkillCoolTimeUI (obj); //–¸“ˆ‘¡ı©
	NewRankSystem (obj); //¯ƒ›¬
	if(USING_CRI_COUNT > 0 || USING_ACTIVE_COUNT > 0 || 
	   USING_SPECIAL_COUNT > 0 || USING_MAX_COUNT > 0)
	{
		drawDamageNumber(obj);
	}
	drawTrainingroomMainUi(obj); //·Û÷°Ìﬁ
	gal_DrawMonsterToSetCustomUIEffect(obj);
	gal_DrawMonsterEnergyCustomUIEffect(obj);
	gal_DrawMonsterEnergyCustomUIEffectSecond(obj);
	gal_DrawMonsterRedEnergyCustomUIEffect(obj);
	gal_DrawMonsterEnergyBallCustomUIEffect(obj);
	setCharacterComboUiAppendage(obj);
	return;
}


function SkillIcon(obj)
{
	if (!obj)
		return;     
	local sq_var = obj.getVar();
	local Skill_Q = sq_var.GetAnimationMap("Skill_Q", "ui/hud/animation/skillkey/skill_q.ani");
	local Skill_W = sq_var.GetAnimationMap("Skill_W", "ui/hud/animation/skillkey/skill_w.ani");
	local Skill_E = sq_var.GetAnimationMap("Skill_E", "ui/hud/animation/skillkey/skill_e.ani");
	local Skill_R = sq_var.GetAnimationMap("Skill_R", "ui/hud/animation/skillkey/skill_r.ani");
	local Skill_T = sq_var.GetAnimationMap("Skill_T", "ui/hud/animation/skillkey/skill_t.ani");
	local Skill_Y = sq_var.GetAnimationMap("Skill_Y", "ui/hud/animation/skillkey/skill_y.ani");


	sq_AnimationProc(Skill_Q);
	sq_AnimationProc(Skill_W);
	sq_AnimationProc(Skill_E);
	sq_AnimationProc(Skill_R);
	sq_AnimationProc(Skill_T);
	sq_AnimationProc(Skill_Y);

	sq_drawCurrentFrame(Skill_Q, 538, 519, false);
	sq_drawCurrentFrame(Skill_W, 568, 519, false);
	sq_drawCurrentFrame(Skill_E, 598, 519, false);
	sq_drawCurrentFrame(Skill_R, 628, 519, false);
	sq_drawCurrentFrame(Skill_T, 658, 519, false);
	sq_drawCurrentFrame(Skill_Y, 688, 519, false);

}

function drawCustomUI_ATSwordman(obj)
{
	if(!obj) return;
	SkillIcon(obj)
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	drawCustomSkillani_ATSwordman(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawATSwordmanCutinUI(obj);
	return;
}





function drawCustomUI_Swordman(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawHeroGhostIcon(obj);
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawSwordmanCutinUI(obj);
	return;
}

function drawCustomUI_ATFighter(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	drawNengLiangUi(obj); //˘¨‘—
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawATFightCutinUI(obj);
	return;
}

function drawCustomUI_Fighter(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawFightCutinUI(obj);
	return;
}

function drawCustomUI_ATGunner(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawATGunnerCutinUI(obj);
	return;
}

function drawCustomUI_Gunner(obj)
{
	if(!obj) return;
	drawCustomUI_At_Sowalker_Energy_Bar(obj);
	assult_drawArcDischarge(obj);
	if (obj.getVar("sensibility").getBool(0) && sq_GetCurrentModuleType() != 2) 
	{
		sq_setFullScreenEffect(obj, "character/gunner/effect/animation/sensibility/scanlline_00.ani");
		obj.getVar("sensibility").setBool(0, false);
	}
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);


	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawGunnerCutinUI(obj);
	return;
}

function drawCustomUI_ATMage(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawATMageCutinUI(obj);
	return;
}

function drawCustomUI_Mage(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawMageCutinUI(obj);
	return;
}

function drawCustomUI_Priest(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawPriestCutinUI(obj);
	return;
}

function drawCustomUI_Thief(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawThiefCutinUI(obj);
	return;
}

function drawCustomUI_ATPriest(obj)
{
	if(!obj) return;
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawATPriestCutinUI(obj);
	return;
}




