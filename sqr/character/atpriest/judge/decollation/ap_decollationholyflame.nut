function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_DecollAtionHolyFlame")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_DecollAtionHolyFlame")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_DecollAtionHolyFlame")
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_DecollAtionHolyFlame")
}


function sq_AddEffect(appendage)
{
	if(!appendage) {
		return;
	}
}

function drawAppend_appendage_DecollAtionHolyFlame(appendage, isOver, x, y, isFlip)
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
		local ani = appendage.getVar().GetAnimationMap("dot", "character/priest/effect/animation/atdot/dot1.ani");
		sq_AnimationProc(ani);
		sq_drawCurrentFrame(ani, x, y - sq_GetObjectHeight(parentObj)/2, isFlip);
	}
}

function proc_appendage_DecollAtionHolyFlame(appendage)
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
	local damager = sq_GetCNRDObjectToActiveObject(parentObj);
	if(!obj || !damager) {
		return;
	}
	
	local skillLevel = obj.sq_GetSkillLevel(SKILL_HOLYFLAME);
	if(skillLevel < 1)
	{
		appendage.setValid(false);
	}
	local time = obj.sq_GetIntData(SKILL_HOLYFLAME, 2);
	local timeMax = obj.sq_GetIntData(SKILL_HOLYFLAME, 1);
	local currTime = appendage.getTimer().Get();
	local append = "character/atpriest/judge/essenceofphlege/ap_essenceofphlege.nut";
	if (damager.IsSquirrelAppendage(append))
	{
		local remainder = timeMax - currTime;
		local timeBonus = 0;
		if(remainder > 0)
		{
			timeBonus = remainder.tofloat() / time;
		}
		
		local holyFlameRate = sq_GetLevelData(obj, SKILL_HOLYFLAME, 0, skillLevel).tofloat();
		holyFlameRate = timeBonus * holyFlameRate / 1000.0;
		local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_DECOLLATION, STATE_DECOLLATION, 0, holyFlameRate);
		local attackInfo = sq_getNewAttackInfoPacket();
		attackInfo.useWeapon = true;
		attackInfo.powerRate = attackBonusRate;
		attackInfo.element = ENUM_ELEMENT_NONE;
		attackInfo.eType = ATTACKTYPE_PHYSICAL;

		sq_SendHitObjectPacketByAttackInfo(obj, damager, attackInfo);
		
		local PosX = sq_GetXPos(damager);
		local PosY = sq_GetYPos(damager);
		local PosZ = sq_GetZPos(damager);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(110);
		sq_BinaryWriteDword(0);
		CNSquirrelAppendage.sq_RemoveAppendage(damager, append);
		sq_SendCreatePassiveObjectPacketPos(obj,24240, 0, PosX, PosY, PosZ);
		appendage.setValid(false);
		return;
	}
	if (currTime - appendage.getVar("monsterTime").getInt(0) > time)
	{
		appendage.getVar("monsterTime").setInt(0,currTime);
		local holyFlameRate = sq_GetLevelData(obj, SKILL_HOLYFLAME, 0, skillLevel).tofloat();
		holyFlameRate = holyFlameRate / 1000.0;
		local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_DECOLLATION, STATE_DECOLLATION, 0, holyFlameRate); 
		local attackInfo = sq_getNewAttackInfoPacket();
		attackInfo.useWeapon = true;
		attackInfo.powerRate = attackBonusRate;
		attackInfo.element = ENUM_ELEMENT_NONE;
		attackInfo.eType = ATTACKTYPE_PHYSICAL;
		sq_SendHitObjectPacketByAttackInfo(obj, damager, attackInfo);
	}
	if (currTime > timeMax)
	{
		appendage.getVar("monsterTime").setInt(0,currTime);
		appendage.setValid(false);
	}

}


function onStart_appendage_DecollAtionHolyFlame(appendage)
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
	appendage.getVar("monsterTime").setInt(0,currTime);
	
}



function onEnd_appendage_DecollAtionHolyFlame(appendage)
{
	if (!appendage) {
		return;
	}	
		
	local parentObj = appendage.getParent();	
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);		
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}
}

