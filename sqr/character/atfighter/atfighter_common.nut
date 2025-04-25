


 
function setEnableCancelSkill_ATFighter(b5auQt29ZJBGNtERo, WCDjwRh3IWyTM_NtayN5VXM)
{
 if(!b5auQt29ZJBGNtERo)
 return false;
 
 if(!b5auQt29ZJBGNtERo.isMyControlObject())
 return false;
 if(!WCDjwRh3IWyTM_NtayN5VXM)
 return true;
 b5auQt29ZJBGNtERo.setSkillCommandEnable(220, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(221, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(222, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(223, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(224, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(225, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(226, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(227, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(228, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(229, WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.setSkillCommandEnable(230, WCDjwRh3IWyTM_NtayN5VXM); 
 
 return true;
} ;


function onChangeSkillEffect_ATFighter(Lmb1IBm0hXY6DPN, YpaXlNk63NMAawV1szMUwYl, o5VdaHELFpH1U9ZZ)
{
 if(!Lmb1IBm0hXY6DPN) return;
 switch(YpaXlNk63NMAawV1szMUwYl)
 {
 case 50: 
 local vMANHUtMTDpA = o5VdaHELFpH1U9ZZ.readWord(); 
 switch(vMANHUtMTDpA)
 {
 case 1:
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Lmb1IBm0hXY6DPN, "character/atfighter/appendage/ap_definitegrab.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(Lmb1IBm0hXY6DPN, "character/atfighter/appendage/ap_definitegrab.nut");
 local FVKCAd14Dts6N1 = Lmb1IBm0hXY6DPN.sq_GetLevelData(YpaXlNk63NMAawV1szMUwYl, 0, sq_GetSkillLevel(Lmb1IBm0hXY6DPN, YpaXlNk63NMAawV1szMUwYl)); 
 local CdeQ5bSIOksjOgU = CNSquirrelAppendage.sq_AppendAppendage(Lmb1IBm0hXY6DPN, Lmb1IBm0hXY6DPN, YpaXlNk63NMAawV1szMUwYl, false, "character/atfighter/appendage/ap_definitegrab.nut", false);
 CdeQ5bSIOksjOgU.sq_SetValidTime(FVKCAd14Dts6N1); 
 CNSquirrelAppendage.sq_Append(CdeQ5bSIOksjOgU, Lmb1IBm0hXY6DPN, Lmb1IBm0hXY6DPN, false);
 break;
 }
 break;
 }
} ;





function isNengLiangOpen(obj)
{
	return CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/spiralgaleforce/ap_spiralgaleforce.nut");
}

function drawNengLiangUi(obj)
{
	if ( CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/spiralgaleforce/ap_nengliang.nut") )
	{
		local x = 155;
		local y = 500;
		local sq_var = obj.getVar();
		local bottom = sq_var.GetAnimationMap("bottom", "character/fighter/effect/animation/atspiralinhale/spiralinhalebottom.ani");
		local yellow = sq_var.GetAnimationMap("yellow", "character/fighter/effect/animation/atspiralinhale/gaugebaryellow.ani");
		local blue = sq_var.GetAnimationMap("blue", "character/fighter/effect/animation/atspiralinhale/gaugebarblue.ani");
		local white = sq_var.GetAnimationMap("white", "character/fighter/effect/animation/atspiralinhale/gaugebarwhite.ani");
		local line = sq_var.GetAnimationMap("line", "character/fighter/effect/animation/atspiralinhale/spiralinhale_gaugeline.ani");
		local body = sq_var.GetAnimationMap("body", "character/fighter/effect/animation/atspiralinhale/spiralinhale_body.ani");
		local glowblue = sq_var.GetAnimationMap("glowblue", "character/fighter/effect/animation/atspiralinhale/spiralinhale_glowblue.ani");
		local glowyellow = sq_var.GetAnimationMap("glowyellow", "character/fighter/effect/animation/atspiralinhale/spiralinhale_glowyellow.ani");
		local fullgaugeeffect = sq_var.GetAnimationMap("fullgaugeeffect", "character/fighter/effect/animation/atspiralinhale/fullgaugeeffect.ani");
		local spiralinhale_bodyshadow = sq_var.GetAnimationMap("spiralinhale_bodyshadow", "character/fighter/effect/animation/atspiralinhale/spiralinhale_bodyshadow.ani");
		local max = sq_var.GetAnimationMap("max", "character/fighter/effect/animation/atspiralinhale/max.ani");
		
		local gaugeValue = getNengLiangNumber(obj);
		local max_gaugeValue = 1000;
		local rate = gaugeValue.tofloat() / max_gaugeValue.tofloat();
		
		if(gaugeValue < max_gaugeValue)
		{
			sq_AnimationProc(bottom);
			sq_drawCurrentFrame(bottom, x, y, false);
			sq_AnimationProc(yellow);
			yellow.setImageRate(rate, 1.0);
			sq_drawCurrentFrame(yellow, x - 55, y + 5, false);
			sq_AnimationProc(blue);
			blue.setImageRate(rate, 1.0);
			sq_drawCurrentFrame(blue, x - 55, y + 5, false);
			sq_AnimationProc(white);
			white.setImageRate(rate, 1.0);
			sq_drawCurrentFrame(white, x - 55, y + 5, false);
			sq_AnimationProc(line);
			sq_drawCurrentFrame(line, x, y, false);
			sq_AnimationProc(body);
			sq_drawCurrentFrame(body, x, y, false);
			sq_AnimationProc(glowblue);
			sq_drawCurrentFrame(glowblue, x, y, false);
			sq_AnimationProc(glowyellow);
			sq_drawCurrentFrame(glowyellow, x, y, false);
			sq_AnimationProc(fullgaugeeffect);
			sq_drawCurrentFrame(fullgaugeeffect, x, y, false);
			
			
			local ge = gaugeValue % 10;
			local len = (gaugeValue - ge) / 10;
			local shi = len % 10;
			local len1 = gaugeValue - (shi*10 + ge);
			local bai = (len1 / 100) % 10;
			
			local geani = getATFighterNengLiangIndexNum(obj, ge);
			local shiani = getATFighterNengLiangIndexNum(obj, shi);
			local baiani = getATFighterNengLiangIndexNum(obj, bai);
			
			sq_AnimationProc(geani);
			sq_drawCurrentFrame(geani, x - 60, y - 3, false);
			sq_AnimationProc(shiani);
			sq_drawCurrentFrame(shiani, x - 65, y - 3, false);
			sq_AnimationProc(baiani);
			sq_drawCurrentFrame(baiani, x - 70, y - 3, false);
		} else {
			sq_AnimationProc(spiralinhale_bodyshadow);
			sq_drawCurrentFrame(spiralinhale_bodyshadow, x, y, false);
			sq_AnimationProc(fullgaugeeffect);
			sq_drawCurrentFrame(fullgaugeeffect, x, y, false);
			sq_AnimationProc(max);
			sq_drawCurrentFrame(max, x - 70, y - 3, false);
		}
	}
}

function getNengLiangNumber(obj)
{
	local apd = obj.GetSquirrelAppendage("character/atfighter/spiralgaleforce/ap_nengliang.nut");
	return apd.getVar("num").get_vector(0);
}

function setNengLiangNumber(obj,value)
{
	local apd = obj.GetSquirrelAppendage("character/atfighter/spiralgaleforce/ap_nengliang.nut");
	apd.getVar("num").set_vector(0, getNengLiangNumber(obj) + value);
}

function getATFighterNengLiangIndexNum(obj, num)
{
	local numImage = null;
	local sq_var = obj.getVar();
	if (num == 0)
	{
		numImage = sq_var.GetAnimationMap("number0", "character/fighter/effect/animation/atspiralinhale/0.ani");
	}else if (num == 1){
		numImage = sq_var.GetAnimationMap("number1", "character/fighter/effect/animation/atspiralinhale/1.ani");
	}else if (num == 2){
		numImage = sq_var.GetAnimationMap("number2", "character/fighter/effect/animation/atspiralinhale/2.ani");
	}else if (num == 3){
		numImage = sq_var.GetAnimationMap("number3", "character/fighter/effect/animation/atspiralinhale/3.ani");
	}else if (num == 4){
		numImage = sq_var.GetAnimationMap("number4", "character/fighter/effect/animation/atspiralinhale/4.ani");
	}else if (num == 5){
		numImage = sq_var.GetAnimationMap("number5", "character/fighter/effect/animation/atspiralinhale/5.ani");
	}else if (num == 6){
		numImage = sq_var.GetAnimationMap("number6", "character/fighter/effect/animation/atspiralinhale/6.ani");
	}else if (num == 7){
		numImage = sq_var.GetAnimationMap("number7", "character/fighter/effect/animation/atspiralinhale/7.ani");
	}else if (num == 8){
		numImage = sq_var.GetAnimationMap("number8", "character/fighter/effect/animation/atspiralinhale/8.ani");
	}else if (num == 9){
		numImage = sq_var.GetAnimationMap("number9", "character/fighter/effect/animation/atspiralinhale/9.ani");
	}
	return numImage;
}


function useSkill_after_ATFighter(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;

	if(skillIndex == 41)
	{
		local skillLevel = obj.sq_GetSkillLevel(41);
		if(skillLevel > 0)
		{
			local time = sq_GetLevelData(obj, 41, 0, skillLevel);
			local lieyanfenbuzhuijia = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 41, false, "character/atfighter/lieyanfenbu/ap_lieyanfenbuzhuijia.nut", false);
			lieyanfenbuzhuijia.sq_SetValidTime(time);
			CNSquirrelAppendage.sq_Append(lieyanfenbuzhuijia, obj, obj);

			local lieyanfenbutimer = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 41, false, "character/atfighter/lieyanfenbu/ap_lieyanfenbutimer.nut", false);
			lieyanfenbutimer.sq_SetValidTime(time);
			CNSquirrelAppendage.sq_Append(lieyanfenbutimer, obj, obj);
		}
	}
	return true;
}



function onEndState_atfighter_atomiccannon(obj, new_state)
{
	if(!obj || new_state == STATE_ATFIGHTER_ATOMICCANNON) return;
	local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/lieyanfenbu/ap_lieyanfenbuzengshang_2.nut");
	if(isAppend)
	{
		local zengshang_2 = obj.GetSquirrelAppendage("character/atfighter/lieyanfenbu/ap_lieyanfenbuzengshang_2.nut");
		zengshang_2.setValid(false);
	}
}

