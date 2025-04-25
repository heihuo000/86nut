
function setCustomData_po_D_Swordman(obj, receiveData)
{
	local id = receiveData.readDword();
	local targetid = receiveData.readDword();
	
	obj.getVar("id").clear_vector();
    obj.getVar("id").push_vector(id);
	
	local ds_swordman = obj.getTopCharacter();
	if (!ds_swordman)
		return;
	
	if (id == 0)
    {
		local ani = obj.getVar().GetAnimationMap("0", "passiveobject/actionobject/new/demonicswordman/animation/darkwavefall_ds/waveshoot.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
		
		//obj.setTimeEvent(0, 50, 0, true);
		//obj.setTimeEvent(1, 300, 0, false);
	}
	if (id == 1)
    {
		local ani = obj.getVar().GetAnimationMap("1", "passiveobject/actionobject/new/demonicswordman/animation/darkwavefall_ds/darkwavefall_dark_shot_normal.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
		
		sq_SetCustomRotate(obj, -0.288);
	}
	if (id == 2)
    {
		local ani = obj.getVar().GetAnimationMap("2", "passiveobject/actionobject/new/demonicswordman/animation/darkwavefall_ds/darkwavefall_dark_shot_normal.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
		
		sq_SetCustomRotate(obj, 0.288);
	}
	if (id == 3)
    {
		local ani = obj.getVar().GetAnimationMap("3", "passiveobject/actionobject/new/demonicswordman/animation/darkwavefall_ds/darkwavefall_dark_shot_normal.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
	}
	if (id == 4)
    {
		local attackBonusRate = receiveData.readDword();
		
		local ani = obj.getVar().GetAnimationMap("4", "passiveobject/actionobject/new/demonicswordman/animation/darkwavefall_ds/darkwavefall_boom_dodge.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
		
		local skill = sq_GetSkill(ds_swordman, SKILL_DARKWAVEFALL);
		local skillLevel = sq_GetSkillLevel(ds_swordman, SKILL_DARKWAVEFALL);
		attackBonusRate = sq_GetBonusRateWithPassive(ds_swordman, SKILL_DARKWAVEFALL, STATE_DARKWAVEFALL, 0, 1.0);
		sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackBonusRate);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 0);	
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
		sq_SetMyShake(obj,5,120);
		//sq_flashScreen(obj,0,120,200,255, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
	}
	if (id == 5)
    {
		local ani = obj.getVar().GetAnimationMap("5", "character/swordman/effect/animation/darkwavefall_ds/darkwavefall_dust.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
	}
	if (id == 6)
    {
		local ani = obj.getVar().GetAnimationMap("6", "character/swordman/effect/animation/darkwavefall_ds/darkwavefall_crack_normal.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
	}
	if (id == 7)
    {
		local ani = obj.getVar().GetAnimationMap("7", "character/swordman/effect/animation/darkwavefall_ds/darkwavefall_circle__1.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
	}
	if (id == 8)
    {
		local attackBonusRate = receiveData.readDword();
		
		local ani = obj.getVar().GetAnimationMap("8", "passiveobject/actionobject/new/demonicswordman/animation/darkburst_ds/darkburst_smash_front_burst01.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 1);	
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
		//sq_SetMyShake(obj,5,120);
		//sq_flashScreen(obj,0,120,200,255, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
	}
	if (id == 9)
    {
		local ani = obj.getVar().GetAnimationMap("9", "passiveobject/actionobject/new/demonicswordman/animation/darkburst_ds/ground/darkburst_crack.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
	}
	if (id == 10)
    {
		local attackBonusRate = receiveData.readDword();
		
		local ani = obj.getVar().GetAnimationMap("10", "passiveobject/actionobject/new/demonicswordman/animation/chargeexplosion_ds/explosion_front14.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_COVER);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 2);	
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
	}
	if (id == 11)
    {
		local ani = obj.getVar().GetAnimationMap("11", "passiveobject/actionobject/new/demonicswordman/animation/chargeexplosion_ds/explosion_back11.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
	}
	
	if (id == 12)
    {
		local ani = obj.getVar().GetAnimationMap("12", "passiveobject/actionobject/new/demonicswordman/animation/phantomsword/pbfloor.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
	}
	if (id == 13)
    {
		local ani = obj.getVar().GetAnimationMap("13", "passiveobject/actionobject/new/demonicswordman/animation/phantomsword/sword/pbreadya_01.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_COVER);
	}
	if (id == 14)
    {
		local ani = obj.getVar().GetAnimationMap("14", "passiveobject/actionobject/new/demonicswordman/animation/phantomsword/sword/pbreadyb_01.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_COVER);
		
		obj.setTimeEvent(1, 1260, 0, false);
	}
	if (id == 15)
    {
		local ani = obj.getVar().GetAnimationMap("15", "passiveobject/actionobject/new/demonicswordman/animation/phantomsword/sword/pbreadyc_01.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_COVER);
	}
	if (id == 16)
    {
		local attackBonusRate = receiveData.readDword();
		
		local ani = obj.getVar().GetAnimationMap("16", "passiveobject/actionobject/new/demonicswordman/animation/phantomsword/attack/pbatk_slash_00.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_COVER);
		
		local skill = sq_GetSkill(ds_swordman, SKILL_PHANTOMSWORD);
		local skillLevel = sq_GetSkillLevel(ds_swordman, SKILL_PHANTOMSWORD);
		attackBonusRate = sq_GetBonusRateWithPassive(ds_swordman, SKILL_PHANTOMSWORD, STATE_PHANTOMSWORD, 0, 1.0);
		sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackBonusRate);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 3);	
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
		obj.setTimeEvent(0, 160, 0, true);
	}
	if (id == 17)
    {
		local attackBonusRate = receiveData.readDword();
		
		local ani = obj.getVar().GetAnimationMap("17", "passiveobject/actionobject/new/demonicswordman/animation/phantomsword/explosion/pbatkfinish_smoke_00.ani");
        obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
		
		local skill = sq_GetSkill(ds_swordman, SKILL_PHANTOMSWORD);
		local skillLevel = sq_GetSkillLevel(ds_swordman, SKILL_PHANTOMSWORD);
		attackBonusRate = sq_GetBonusRateWithPassive(ds_swordman, SKILL_PHANTOMSWORD, STATE_PHANTOMSWORD, 1, 1.0);
		sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackBonusRate);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 4);	
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
	}
}

function onTimeEvent_po_D_Swordman(obj, timeEventIndex, timeEventCount)
{
	if (obj.getVar("id").get_vector(0) == 14)
	{	
		if (timeEventIndex == 1)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(15);
			sq_SendCreatePassiveObjectPacketPos(obj, 24338, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
			sq_SendDestroyPacketPassiveObject(obj);	
		}
	}
	if (obj.getVar("id").get_vector(0) == 16)
	{	
		if (timeEventIndex == 0)
		{
			if (timeEventCount <= 20)
			{
				obj.resetHitObjectList();
			}
		}
	}
}

function onEndCurrentAni_po_D_Swordman(obj)
{
	if (obj.getVar("id").get_vector(0) == 1)
	{
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(4);
		sq_SendCreatePassiveObjectPacketPos(obj, 24338, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
		
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(5);
		sq_SendCreatePassiveObjectPacketPos(obj, 24338, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
		
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(6);
		sq_SendCreatePassiveObjectPacketPos(obj, 24338, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
		
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(7);
		sq_SendCreatePassiveObjectPacketPos(obj, 24338, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
		sq_SendDestroyPacketPassiveObject(obj);	
	}
	if (obj.getVar("id").get_vector(0) == 2)
	{
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(4);
		sq_SendCreatePassiveObjectPacketPos(obj, 24338, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
		
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(5);
		sq_SendCreatePassiveObjectPacketPos(obj, 24338, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
		
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(6);
		sq_SendCreatePassiveObjectPacketPos(obj, 24338, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
		
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(7);
		sq_SendCreatePassiveObjectPacketPos(obj, 24338, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
		sq_SendDestroyPacketPassiveObject(obj);	
	}
	if (obj.getVar("id").get_vector(0) == 3)
	{
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(4);
		sq_SendCreatePassiveObjectPacketPos(obj, 24338, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
		
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(5);
		sq_SendCreatePassiveObjectPacketPos(obj, 24338, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
		
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(6);
		sq_SendCreatePassiveObjectPacketPos(obj, 24338, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
		
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(7);
		sq_SendCreatePassiveObjectPacketPos(obj, 24338, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
		sq_SendDestroyPacketPassiveObject(obj);		
	}
	if (obj.getVar("id").get_vector(0) == 4)
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}
	if (obj.getVar("id").get_vector(0) == 5)
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}
	if (obj.getVar("id").get_vector(0) == 6)
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}
	if (obj.getVar("id").get_vector(0) == 7)
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}
	if (obj.getVar("id").get_vector(0) == 8)
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}
	if (obj.getVar("id").get_vector(0) == 9)
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}
	if (obj.getVar("id").get_vector(0) == 10)
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}
	if (obj.getVar("id").get_vector(0) == 11)
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}
	if (obj.getVar("id").get_vector(0) == 12)
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}
	if (obj.getVar("id").get_vector(0) == 13)
	{
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(14);
		sq_SendCreatePassiveObjectPacketPos(obj, 24338, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
		sq_SendDestroyPacketPassiveObject(obj);	
	}
	if (obj.getVar("id").get_vector(0) == 15)
	{
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(16);
		sq_SendCreatePassiveObjectPacketPos(obj, 24338, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
		sq_SendDestroyPacketPassiveObject(obj);	
	}
	if (obj.getVar("id").get_vector(0) == 16)
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}
	if (obj.getVar("id").get_vector(0) == 17)
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}
}

function onKeyFrameFlag_po_D_Swordman(obj, flagIndex)
{
	local id = obj.getVar("id").get_vector(0);
	
	if (obj.getVar("id").get_vector(0) == 0)
	{
		local objectManager = obj.getObjectManager();
		
		if (flagIndex == 0)
		{
			if (sq_GetDirection(obj) == ENUM_DIRECTION_LEFT)
			{
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(1);
				sq_SendCreatePassiveObjectPacketPos(obj,24338, 0, obj.getXPos() - 50, obj.getYPos(), obj.getZPos());
			}
			if (sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT)
			{
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(1);
				sq_SendCreatePassiveObjectPacketPos(obj,24338, 0, obj.getXPos() + 50, obj.getYPos(), obj.getZPos());
			}
		}
		if (flagIndex == 1)
		{
			if (sq_GetDirection(obj) == ENUM_DIRECTION_LEFT)
			{
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(2);
				sq_SendCreatePassiveObjectPacketPos(obj,24338, 0, obj.getXPos() - 170, obj.getYPos(), obj.getZPos());
			}
			if (sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT)
			{
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(2);
				sq_SendCreatePassiveObjectPacketPos(obj,24338, 0, obj.getXPos() + 170, obj.getYPos(), obj.getZPos());
			}
		}
		if (flagIndex == 2)
		{
			if (sq_GetDirection(obj) == ENUM_DIRECTION_LEFT)
			{
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(3);
				sq_SendCreatePassiveObjectPacketPos(obj,24338, 0, obj.getXPos() - 240, obj.getYPos(), obj.getZPos());
			}
			if (sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT)
			{
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(3);
				sq_SendCreatePassiveObjectPacketPos(obj,24338, 0, obj.getXPos() + 240, obj.getYPos(), obj.getZPos());
			}
		}
		if (flagIndex == 3)
		{
			if (sq_GetDirection(obj) == ENUM_DIRECTION_LEFT)
			{
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(1);
				sq_SendCreatePassiveObjectPacketPos(obj,24338, 0, obj.getXPos() - 310, obj.getYPos(), obj.getZPos());
			}
			if (sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT)
			{
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(1);
				sq_SendCreatePassiveObjectPacketPos(obj,24338, 0, obj.getXPos() + 310, obj.getYPos(), obj.getZPos());
			}
		}
		if (flagIndex == 4)
		{
			if (sq_GetDirection(obj) == ENUM_DIRECTION_LEFT)
			{
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(3);
				sq_SendCreatePassiveObjectPacketPos(obj,24338, 0, obj.getXPos() - 380, obj.getYPos(), obj.getZPos());
			}
			if (sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT)
			{
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(3);
				sq_SendCreatePassiveObjectPacketPos(obj,24338, 0, obj.getXPos() + 380, obj.getYPos(), obj.getZPos());
			}
		}
		if (flagIndex == 5)
		{
			if (sq_GetDirection(obj) == ENUM_DIRECTION_LEFT)
			{
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(2);
				sq_SendCreatePassiveObjectPacketPos(obj,24338, 0, obj.getXPos() - 450, obj.getYPos(), obj.getZPos());
			}
			if (sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT)
			{
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(2);
				sq_SendCreatePassiveObjectPacketPos(obj,24338, 0, obj.getXPos() + 450, obj.getYPos(), obj.getZPos());
			}
		}
	}
	if (obj.getVar("id").get_vector(0) == 16)
	{
		local objectManager = obj.getObjectManager();
		
		if (flagIndex == 1000)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(17);
			sq_SendCreatePassiveObjectPacketPos(obj,24338, 0, obj.getXPos(), obj.getYPos(), obj.getZPos());
		}
	}
	return true;
}
