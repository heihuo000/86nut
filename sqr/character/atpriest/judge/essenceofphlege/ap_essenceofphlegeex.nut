function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_EssenceOfPhlegeEx")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_EssenceOfPhlegeEx")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_EssenceOfPhlegeEx")
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_EssenceOfPhlegeEx")
}


function sq_AddEffect(appendage)
{
	if(!appendage) {
		return;
	}
}
function drawAppend_appendage_EssenceOfPhlegeEx(appendage, isOver, x, y, isFlip)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}	
	
	if(isOver) 
	{
 		local ani = appendage.getVar().GetAnimationMap("essenceofphlegeex", "character/priest/effect/animation/atessenceofphlege/incinerationloop_03.ani");
		sq_AnimationProc(ani);
		sq_drawCurrentFrame(ani, x, y, isFlip);
	}
}
function proc_appendage_EssenceOfPhlegeEx(appendage)
{
	if(!appendage) {
		return;
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
	local obj = sq_GetCNRDObjectToSQRCharacter(sourceObj);
	if(!obj) {
		return;
	}
	local currTime = appendage.getTimer().Get();
	local timeMax = obj.sq_GetIntData(SKILL_ESSENCEOFPHLEGE, 4);
	if (currTime - appendage.getVar("monsterTime").getInt(0) > timeMax)
	{
		appendage.getVar("monsterTime").setInt(0,currTime);
		appendage.setValid(false);
	}
	
	local damager = sq_GetCNRDObjectToActiveObject(parentObj);
	local append = "character/atpriest/judge/essenceofphlege/ap_essenceofphlege.nut";
	if (damager.IsSquirrelAppendage(append) && damager)
	{
		CNSquirrelAppendage.sq_RemoveAppendage(damager, append);
		local PosX = sq_GetXPos(damager);
		local PosY = sq_GetYPos(damager);
		local PosZ = sq_GetZPos(damager);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(110);
		sq_BinaryWriteDword(0);
		sq_SendCreatePassiveObjectPacketPos(obj,24240, 0, PosX, PosY, PosZ);
	}
	
	local pAni = sq_GetCurrentAnimation(parentObj);
	if(!pAni) {
		appendage.setValid(false);
		return;
	}

	local effectType = GRAPHICEFFECT_DARK;
	local rgb = sq_RGB(0, 0, 0);
	local alpha = sq_ALPHA(255);
	
	pAni.setEffectLayer(true, effectType, true, rgb, alpha, true, false);
	
	local size = sq_AniLayerListSize(pAni);
	if(size > 0) {
		for(local i=0;i<size;i+=1) {
			local aniL = sq_getAniLayerListObject(pAni, i);
			
			if(aniL) {
				local effect = aniL.GetCurrentFrame().GetGraphicEffect();
				
				if(effect != GRAPHICEFFECT_LINEARDODGE) {
					aniL.setEffectLayer(true, effectType, true, rgb, alpha, true, false);
				}
			}
		}
	}
}


function onStart_appendage_EssenceOfPhlegeEx(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}	
	parentObj.sq_PlaySound("FLAME_BAPTISM_FIRE");
	local currTime = appendage.getTimer().Get();
	appendage.getVar("monsterTime").setInt(0,currTime);

}



function onEnd_appendage_EssenceOfPhlegeEx(appendage)
{
	if (!appendage) {
		return;
	}	
		
	local parentObj = appendage.getParent();
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}	
}


