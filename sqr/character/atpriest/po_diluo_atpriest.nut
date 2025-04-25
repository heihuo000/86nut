SKL_INT_LV_0	<- 0
SKL_INT_LV_1	<- 1
SKL_INT_LV_2	<- 2
SKL_INT_LV_3	<- 3
SKL_INT_LV_4	<- 4
SKL_INT_LV_5	<- 5
SKL_INT_LV_6	<- 6
SKL_INT_LV_7	<- 7
SKL_INT_LV_8	<- 8
SKL_INT_LV_9	<- 9
SKL_INT_LV_10	<- 10
FLAG_PASSIVE_CREATE_BRIONAC_C	<- 0

function setCustomData_po_diluo_atpriest(obj, receiveData)
{
	if(!obj) return;
	
	local id = receiveData.readDword();
	local chr = obj.getTopCharacter();
	chr = sq_ObjectToSQRCharacter(chr);
	
	if (!chr) return;
	
	obj.getVar("id").clear_vector();
	obj.getVar("id").push_vector(id);
	
	local PosX = sq_GetXPos(obj);
	local PosY = sq_GetYPos(obj);
	local PosZ = sq_GetZPos(obj);
	//print("==============\n\r");
	//print("id : " + id +"\n\r");
	if (id == 1)
	{
		local ani = obj.getCustomAnimation(0);
		obj.setCurrentAnimation(ani);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 0);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local level = sq_GetSkillLevel(chr, SKILL_RISING_SLASH);
		local LevelData = sq_GetLevelData(chr, SKILL_RISING_SLASH, 1, level);
		local UpForce = sq_GetLevelData(chr , SKILL_RISING_SLASH, 0, level);
		local AttackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(AttackInfo, LevelData);
		sq_SetCurrentAttacknUpForce(AttackInfo, UpForce);
		
		local sizeRate = sq_GetIntData(chr, SKILL_WILLOFINQUISITOR, 2);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 2)
	{
		local ani = obj.getCustomAnimation(1);
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 1);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local level = sq_GetSkillLevel(chr, SKILL_VIOLENT_ASSAULT);
		local LevelData = sq_GetLevelData(chr, SKILL_VIOLENT_ASSAULT, 1, level);
		local AttackInfo = sq_GetCurrentAttackInfo(obj);
		
		if(isHolyFlame(chr))
		{
			if(AttackInfo)
			{
				AttackInfo.setElement(ENUM_ELEMENT_LIGHT); 
				AttackInfo.setElement(ENUM_ELEMENT_FIRE); 
			}
		}
		
		sq_SetCurrentAttackBonusRate(AttackInfo, LevelData);
		
		local sizeRate = sq_GetIntData(chr, SKILL_VIOLENT_ASSAULT, SKL_INT_LV_0);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 3)
	{
		local ani = obj.getCustomAnimation(2);
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);

		local attackInfo = sq_GetCustomAttackInfo(obj, 2);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local level = sq_GetSkillLevel(chr, SKILL_HEAVY_SIN);
		local LevelData = sq_GetLevelData(chr, SKILL_HEAVY_SIN, 0, level);
		local AttackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(AttackInfo, LevelData);
		
		local sizeRate = sq_GetIntData(chr, SKILL_HEAVY_SIN, SKL_INT_LV_0);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 4)
	{
		local ani = obj.getCustomAnimation(3);
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
		
		local sizeRate = sq_GetIntData(chr, SKILL_HEAVY_SIN, SKL_INT_LV_0);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 5)
	{
		local ani = obj.getCustomAnimation(4);
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 3);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local level = sq_GetSkillLevel(chr, SKILL_TALISMAN_OF_LIGHTNING);
		local LevelData = sq_GetLevelData(chr, SKILL_TALISMAN_OF_LIGHTNING, 0, level);
		local AttackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(AttackInfo, LevelData);
		sq_SetShake(chr,20,100);
		
		local sizeRate = sq_GetIntData(chr, SKILL_TALISMAN_OF_LIGHTNING, SKL_INT_LV_2);
		local imageRate = sizeRate.tofloat() / 100.0;
		if(sq_GetSkillLevel(chr, SKILL_ROSARYSHOOTING) > 0)
		{
			local sizeBonusRate = sq_GetIntData(chr, SKILL_TALISMAN_OF_LIGHTNING, 3).tofloat();
			sizeBonusRate = sizeBonusRate/100 + 1.0;
			imageRate = imageRate * sizeBonusRate;
		}
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 6)
	{
		local ani = obj.getCustomAnimation(5);
		obj.setCurrentAnimation(ani);
		
		local sizeRate = sq_GetIntData(chr, SKILL_HOLY_FLASH, SKL_INT_LV_0);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 7)
	{
		local ani = obj.getCustomAnimation(6);
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 5);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_HOLY_FLASH, STATE_HOLY_FLASH, 0, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
		
		local sizeRate = sq_GetIntData(chr, SKILL_HOLY_FLASH, SKL_INT_LV_0);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 8)
	{
		local ani = obj.getCustomAnimation(7);
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 6);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_LIGHT_OF_HAPTISM, STATE_LIGHT_OF_HAPTISM, 0, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
		sq_SetShake(chr,10,100);
		
		local sizeRate = sq_GetIntData(chr, SKILL_LIGHT_OF_HAPTISM, SKL_INT_LV_0);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 9)
	{
		local ani = obj.getCustomAnimation(9);
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 7);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_SPEAR_OF_VICTORY, STATE_SPEAR_OF_VICTORY, 0, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
	}
	else if (id == 10)
	{
		local ani = obj.getCustomAnimation(11);
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 7);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_SPEAR_OF_VICTORY, STATE_SPEAR_OF_VICTORY, 1, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
	}
	else if (id == 11)
	{
		local ani = obj.getCustomAnimation(12);
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 8);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_SPEAR_OF_VICTORY, STATE_SPEAR_OF_VICTORY, 2, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
	}
	else if (id == 12)
	{
		local ani = obj.getCustomAnimation(13);
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
	}
	else if (id == 13)
	{
		local ani = obj.getCustomAnimation(14);
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
	}
	else if (id == 14)
	{
		local ani = obj.getCustomAnimation(15);
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
	}
	else if (id == 15)
	{
		local ani = obj.getCustomAnimation(16);
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
		sq_SetShake(chr,10,200);
		local attackInfo = sq_GetCustomAttackInfo(obj, 10);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_GRAND_CROSS_CRASH, STATE_GRAND_CROSS_CRASH, 0, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
	}
	else if (id == 16)
	{
		local ani = obj.getCustomAnimation(17);
		obj.setCurrentAnimation(ani);
		
		local sizeRate = sq_GetIntData(chr, SKILL_SAINT_FLASH, SKL_INT_LV_5);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 17)
	{
		local ani = obj.getCustomAnimation(18);
		obj.setCurrentAnimation(ani);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 12);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_SAINT_FLASH, STATE_SAINT_FLASH, 4, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
		
		local sizeRate = sq_GetIntData(chr, SKILL_SAINT_FLASH, SKL_INT_LV_5);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 18)
	{
		local ani = obj.getCustomAnimation(19);
		obj.setCurrentAnimation(ani);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 13);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_SAINT_FLASH, STATE_SAINT_FLASH, 0, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
		sq_SetShake(chr,5,100);
		local sizeRate = sq_GetIntData(chr, SKILL_SAINT_FLASH, SKL_INT_LV_0);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}

	else if (id == 19)
	{
		local ani = obj.getCustomAnimation(20);
		obj.setCurrentAnimation(ani);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 14);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_HOLY_CIRCLET, STATE_HOLY_CIRCLET, 0, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
		local sizeRate = sq_GetIntData(chr, SKILL_HOLY_CIRCLET, SKL_INT_LV_10);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 20)
	{
		local ani = obj.getCustomAnimation(21);
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_COVER);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 14);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_HOLY_CIRCLET, STATE_HOLY_CIRCLET, 0, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
		obj.setTimeEvent(0, sq_GetIntData(chr, SKILL_HOLY_CIRCLET, SKL_INT_LV_6), 0, true);
	}
	else if (id == 21)
	{
		local ani = obj.getCustomAnimation(21);
		obj.setCurrentAnimation(ani);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 14);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_HOLY_CIRCLET, STATE_HOLY_CIRCLET, 0, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
		sq_SetCustomRotate(obj, 3.14);
	}
	else if (id == 22)
	{
		local ani = obj.getCustomAnimation(22);
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_COVER);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 15);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_HOLY_CIRCLET, STATE_HOLY_CIRCLET, 1, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
		local sizeRate = sq_GetIntData(chr, SKILL_HOLY_CIRCLET, SKL_INT_LV_9);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 23)
	{
		local ani = obj.getCustomAnimation(23);
		obj.setCurrentAnimation(ani);
		obj.setTimeEvent(1, sq_GetIntData(chr, SKILL_THUNDER_OF_CLEANS, SKL_INT_LV_5), 0, true);
	}
	else if (id == 24)
	{
		local ani = obj.getCustomAnimation(24);
		obj.setCurrentAnimation(ani);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 18);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_THUNDER_OF_CLEANS, STATE_THUNDER_OF_CLEANS, 0, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
		local sizeRate = sq_GetIntData(chr, SKILL_THUNDER_OF_CLEANS, SKL_INT_LV_1) + 20;
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 25)
	{
		local ani = obj.getCustomAnimation(25);
		obj.setCurrentAnimation(ani);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 16);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_THUNDER_OF_CLEANS, STATE_THUNDER_OF_CLEANS, 3, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
		local sizeRate = sq_GetIntData(chr, SKILL_THUNDER_OF_CLEANS, SKL_INT_LV_1) -10;
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 26)
	{
		local ani = obj.getCustomAnimation(26);
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
	}
	else if (id == 27)
	{
		local ani = obj.getCustomAnimation(27);
		obj.setCurrentAnimation(ani);
	}
	else if (id == 28)
	{
		local power = receiveData.readDword();
		local eventTime = receiveData.readDword();
		local ani = obj.getCustomAnimation(28);
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 20);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		
		sq_SetCurrentAttackPower(sq_GetCurrentAttackInfo(obj), power);
		
		if(eventTime < 1)
		{
			obj.setEnableAttackBox(0);
		}
	}
	else if (id == 29)
	{
		local ani = obj.getCustomAnimation(29);
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 21);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_PROTECTION_OF_URIEL, STATE_PROTECTION_OF_URIEL, 0, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
		local sizeRate = sq_GetIntData(chr, SKILL_PROTECTION_OF_URIEL, SKL_INT_LV_4);
		local ImgRate = sizeRate.tofloat() / 7.2;
		local imageRate = sizeRate.tofloat() / 720;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
		
		ATPriest_Als_Ani(obj,"character/priest/effect/animation/atprotectionofuriel/cast_startora.ani", 0, 0, 0, 0, ImgRate, 0, 1.0);
		ATPriest_Als_Ani(obj,"character/priest/effect/animation/atprotectionofuriel/castfloor_1.ani", 0, 0, 0, 0, ImgRate, 0, 1.0);
	}
	else if (id == 30)
	{
		local ani = obj.getCustomAnimation(30);
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 22);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_PROTECTION_OF_URIEL, STATE_PROTECTION_OF_URIEL, 0, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
		local sizeRate = sq_GetIntData(chr, SKILL_PROTECTION_OF_URIEL, SKL_INT_LV_4);
		local imageRate = sizeRate.tofloat() / 720;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 31)
	{
		local ani = obj.getCustomAnimation(31);
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
		local sizeRate = sq_GetIntData(chr, SKILL_PROTECTION_OF_URIEL, SKL_INT_LV_4);
		local imageRate = sizeRate.tofloat() / 720;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 32)
	{
		local ani = obj.getCustomAnimation(32);
		obj.setCurrentAnimation(ani);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 23);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_BRIONAC, STATE_BRIONAC, 0, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
	}
	else if (id == 33)
	{
		local ani = obj.getCustomAnimation(33);
		obj.setCurrentAnimation(ani);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 24);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_BRIONAC, STATE_BRIONAC, 1, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
	}
	else if (id == 34)
	{
		local ani = obj.getCustomAnimation(34);
		obj.setCurrentAnimation(ani);
		local crossreadytop = "passiveobject/character/atpriest/animation/atcruxofshapiel/cross/ready/cruxofshapielcrossreadytop_00.ani";
		ATPriest_Create(obj,crossreadytop,ENUM_DRAWLAYER_NORMAL,0,-2,0,0,100,0,100,"crossreadytop");
	}
	else if (id == 35)
	{
		local ani = obj.getCustomAnimation(35);
		obj.setCurrentAnimation(ani);
		local fire_crossfireback = "passiveobject/character/atpriest/animation/atcruxofshapiel/cross/fire/cruxofshapielcrossfireback_00.ani";
		ATPriest_Create(obj,fire_crossfireback,ENUM_DRAWLAYER_DISTANTBACK,0,0,0,0,100,0,100,"fire_crossfireback");
		local fire_crossfirebottom = "passiveobject/character/atpriest/animation/atcruxofshapiel/cross/fire/cruxofshapielcrossfirebottom_00.ani";
		ATPriest_Create(obj,fire_crossfirebottom,ENUM_DRAWLAYER_BOTTOM,0,0,0,0,100,0,100,"fire_crossfirebottom");
		local fire_crossfirefront = "passiveobject/character/atpriest/animation/atcruxofshapiel/cross/fire/cruxofshapielcrossfirefront_00.ani";
		ATPriest_Create(obj,fire_crossfirefront,ENUM_DRAWLAYER_CONTACT,0,0,0,0,100,0,100,"fire_crossfirefront");
		local fire_crossfiretop = "passiveobject/character/atpriest/animation/atcruxofshapiel/cross/fire/cruxofshapielcrossfiretop_00.ani";
		ATPriest_Create(obj,fire_crossfiretop,ENUM_DRAWLAYER_NORMAL,0,0,0,0,100,0,100,"fire_crossfiretop");
	}
	else if (id == 36)
	{
		local ani = obj.getCustomAnimation(36);
		obj.setCurrentAnimation(ani);
		local loop_crossfirebottom = "passiveobject/character/atpriest/animation/atcruxofshapiel/cross/loop/cruxofshapielcrossloopbottom_00.ani";
		ATPriest_Create(obj,loop_crossfirebottom,ENUM_DRAWLAYER_BOTTOM,0,0,0,0,100,0,100,"loop_crossfirebottom");
		local loop_crossfirefront = "passiveobject/character/atpriest/animation/atcruxofshapiel/cross/loop/cruxofshapielcrossloopfront_00.ani";
		ATPriest_Create(obj,loop_crossfirefront,ENUM_DRAWLAYER_NORMAL,0,0,0,0,100,0,100,"loop_crossfirefront");
		local loop_crossfiretop = "passiveobject/character/atpriest/animation/atcruxofshapiel/cross/loop/cruxofshapielcrosslooptop_00.ani";
		ATPriest_Create(obj,loop_crossfiretop,ENUM_DRAWLAYER_NORMAL,0,0,0,0,100,0,100,"loop_crossfiretop");
	}
	else if (id == 37)
	{
		local ani = obj.getCustomAnimation(37);
		obj.setCurrentAnimation(ani);
		local end_crossfireback = "passiveobject/character/atpriest/animation/atcruxofshapiel/cross/end/cruxofshapielendback_00.ani";
		ATPriest_Create(obj,end_crossfireback,ENUM_DRAWLAYER_DISTANTBACK,0,0,0,0,100,0,100,"end_crossfireback");
		local end_crossfirebottom = "passiveobject/character/atpriest/animation/atcruxofshapiel/cross/end/cruxofshapielendbottom_00.ani";
		ATPriest_Create(obj,end_crossfirebottom,ENUM_DRAWLAYER_BOTTOM,0,0,0,0,100,0,100,"end_crossfirebottom");
		local end_crossfirefront = "passiveobject/character/atpriest/animation/atcruxofshapiel/cross/end/cruxofshapielendfront_00.ani";
		ATPriest_Create(obj,end_crossfirefront,ENUM_DRAWLAYER_CONTACT,0,0,0,0,100,0,100,"end_crossfirefront");
		local end_crossfiretop = "passiveobject/character/atpriest/animation/atcruxofshapiel/cross/end/cruxofshapielendtop_00.ani";
		ATPriest_Create(obj,end_crossfiretop,ENUM_DRAWLAYER_NORMAL,0,0,0,0,100,0,100,"end_crossfiretop");
	}
	else if (id == 38)
	{
		local ani = obj.getCustomAnimation(38);
		obj.setCurrentAnimation(ani);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 27);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_CRUX_OF_SHAPIEL, STATE_CRUX_OF_SHAPIEL, 2, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
	}
	else if (id == 39)
	{
		local ani = obj.getCustomAnimation(39);
		obj.setCurrentAnimation(ani);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 25);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_CRUX_OF_SHAPIEL, STATE_CRUX_OF_SHAPIEL, 0, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
	}
	else if (id == 40)
	{
		local ani = obj.getCustomAnimation(40);
		obj.setCurrentAnimation(ani);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 26);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_CRUX_OF_SHAPIEL, STATE_CRUX_OF_SHAPIEL, 1, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
		local Attack_Interval = sq_GetIntData(chr, SKILL_CRUX_OF_SHAPIEL, SKL_INT_LV_5);
		local Attack_Number = sq_GetIntData(chr, SKILL_CRUX_OF_SHAPIEL, SKL_INT_LV_6);
		obj.setTimeEvent(2, Attack_Interval, Attack_Number, true);
	}
	else if (id == 41)
	{
		local ani = obj.getCustomAnimation(41);
		obj.setCurrentAnimation(ani);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 28);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_LAUS_DE_ANGELUS, STATE_LAUS_DE_ANGELUS, 0, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
	}
	else if (id == 42)
	{
		local ani = obj.getCustomAnimation(42);
		obj.setCurrentAnimation(ani);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 29);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_LAUS_DE_ANGELUS, STATE_LAUS_DE_ANGELUS, 1, -1,1.0);
		sq_SetCurrentAttackPower(Atk, power);
	}
	else if (id == 43)
	{
		local power = receiveData.readDword();
		local eventTime = receiveData.readDword();
		local powerFinal = receiveData.readDword();
		
		local ani = obj.getCustomAnimation(43);
		obj.setCurrentAnimation(ani);
		local AttackInfo = sq_GetCustomAttackInfo(obj, 30);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		
		sq_SetCurrentAttackPower(sq_GetCurrentAttackInfo(obj), power);
		
		if(eventTime < 1)
		{
			eventTime = 100;
			obj.setEnableAttackBox(0);
		}
		obj.setTimeEvent(0, eventTime, 30, true);
		obj.setTimeEvent(3, 400, 6, false);
		
		obj.getVar("data").clear_vector();
		obj.getVar("data").push_vector(powerFinal);
		obj.getVar("data").push_vector(eventTime);
	}
	else if (id == 45)
	{
		if(chr.sq_IsMyControlObject())
		{
			chr = sq_GetCNRDObjectToSQRCharacter(chr);
			if(!chr)
				return;
			local ani = chr.sq_GetCustomAni(CUSTOM_ANI_BRIONAC_ADD_BODY04);
			sq_Rewind(ani);
			obj.setCurrentAnimation(ani);
			sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_CONTACT);
		}
	}
	else if (id == 46)
	{
		FLAG_PASSIVE_CREATE_BRIONAC_C = 0;
		local ani = obj.getVar().GetAnimationMap("46", "passiveobject/atpriest/animation/atbrionac/brionaclanceeff_eff27c.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
		
		obj.sq_SetMoveParticle("Particle/lance1.ptl", 0.0, 0.0);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 23);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local power = sq_GetPowerWithPassive(chr, SKILL_BRIONAC, STATE_BRIONAC, 0, -1,1.0);
		sq_SetCurrentAttackPower(sq_GetCurrentAttackInfo(obj), power);
	}
	else if (id == 47)
	{
		local ani = obj.getVar().GetAnimationMap("47", "passiveobject/atpriest/animation/atbrionac/explosion/brionaclanceeff_eff01.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
		local attackInfo = sq_GetCustomAttackInfo(obj, 24);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local power = sq_GetPowerWithPassive(chr, SKILL_BRIONAC, STATE_BRIONAC, 1, -1,1.0);
		sq_SetCurrentAttackPower(sq_GetCurrentAttackInfo(obj), power);
	}
	else if (id == 49)
	{
		local ani = obj.getVar().GetAnimationMap("spearnochargeloop", "character/priest/effect/animation/atspearofvictory/spearnochargeloop_01.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_COVER);
		local size = sq_GetIntData(chr, SKILL_SPEAR_OF_VICTORY, 4);
		local currentAni = sq_GetCurrentAnimation(obj);
		local sizeRate = size.tofloat()/100.0;
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
	else if (id == 50)
	{
		local ani = obj.getVar().GetAnimationMap("spearchargeokloop", "character/priest/effect/animation/atspearofvictory/spearchargeokloop.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_COVER);
		local size = sq_GetIntData(chr, SKILL_SPEAR_OF_VICTORY, 4);
		local currentAni = sq_GetCurrentAnimation(obj);
		local sizeRate = size.tofloat()/100.0;
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
	else if (id == 51)
	{
		local ani = obj.getVar().GetAnimationMap("spearshotcharge", "character/priest/effect/animation/atspearofvictory/shot_charge.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);//

		local size = sq_GetIntData(chr, SKILL_SPEAR_OF_VICTORY, 4);
		local currentAni = sq_GetCurrentAnimation(obj);
		local sizeRate = size.tofloat()/100.0;
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
	else if (id ==52)
    {
		local ani = obj.getVar().GetAnimationMap("spearshotnormal", "character/priest/effect/animation/atspearofvictory/shot_normal.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);//

		local size = sq_GetIntData(chr, SKILL_SPEAR_OF_VICTORY, 4);
		local currentAni = sq_GetCurrentAnimation(obj);
		local sizeRate = size.tofloat()/100.0;
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
	else if (id == 53)
	{
		local ani = obj.getVar().GetAnimationMap("spear53", "passiveobject/atpriest/animation/atspearofvictory/spear.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 7);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local pAttack = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_SPEAR_OF_VICTORY, STATE_SPEAR_OF_VICTORY, 0, -1,1.0);
		sq_SetCurrentAttackPower(pAttack, power);
		
		obj.sq_SetMoveParticle("Particle/lance.ptl", 0.0, 0.0);
		
		local size = sq_GetIntData(chr, SKILL_SPEAR_OF_VICTORY, 4);
		local currentAni = sq_GetCurrentAnimation(obj);
		local sizeRate = size.tofloat()/100.0;
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(1);
	}
	else if (id == 54)	
	{
		local ani = obj.getVar().GetAnimationMap("spearchargeshot", "passiveobject/atpriest/animation/ATSpearOfVictory/SpearChargeOKShot.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 7);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local pAttack = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_SPEAR_OF_VICTORY, STATE_SPEAR_OF_VICTORY, 1, -1,1.0);
		sq_SetCurrentAttackPower(pAttack, power);

		obj.sq_SetMoveParticle("Particle/lance.ptl", 0.0, 0.0);

		local size = sq_GetIntData(chr, SKILL_SPEAR_OF_VICTORY, 4);
		local currentAni = sq_GetCurrentAnimation(obj);
		local sizeRate = size.tofloat()/100.0;
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(1);
	}
	else if (id == 55)	
	{
		local ani = obj.getVar().GetAnimationMap("landspear", "passiveobject/atpriest/animation/atspearofvictory/landspear.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 7);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local pAttack = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_SPEAR_OF_VICTORY, STATE_SPEAR_OF_VICTORY, 0, -1,1.0);
		sq_SetCurrentAttackPower(pAttack, power);

		local size = sq_GetIntData(chr, SKILL_SPEAR_OF_VICTORY, 4);
		local currentAni = sq_GetCurrentAnimation(obj);
		local sizeRate = size.tofloat()/100.0;
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
	else if (id == 56)	
	{
		local ani = obj.getVar().GetAnimationMap("spearchargeokhit", "passiveobject/atpriest/animation/atspearofvictory/spearchargeokhit.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 7);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local pAttack = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_SPEAR_OF_VICTORY, STATE_SPEAR_OF_VICTORY, 1, -1,1.0);
		sq_SetCurrentAttackPower(pAttack, power);

		local size = sq_GetIntData(chr, SKILL_SPEAR_OF_VICTORY, 4);
		local currentAni = sq_GetCurrentAnimation(obj);
		local sizeRate = size.tofloat()/100.0;
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		//豇鎏?礜葞
	}
	else if (id == 57)
	{

		local ani = obj.getVar().GetAnimationMap("landeffect57", "passiveobject/atpriest/animation/atspearofvictory/landeffect.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);//礜惎𨉗?

	}
	else if (id == 58)
	{
		local ani = obj.getVar().GetAnimationMap("spearboom1", "passiveobject/atpriest/animation/atspearofvictory/boom_normal.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 8);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local pAttack = sq_GetCurrentAttackInfo(obj);
		local power = sq_GetPowerWithPassive(chr, SKILL_SPEAR_OF_VICTORY, STATE_SPEAR_OF_VICTORY, 2, -1,1.0);
		sq_SetCurrentAttackPower(pAttack, power);

		local size = sq_GetIntData(chr, SKILL_SPEAR_OF_VICTORY, 4);
		local currentAni = sq_GetCurrentAnimation(obj);
		local sizeRate = size.tofloat()/100.0;
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);//攮𥮾

	}
	else if (id == 59)
    {

		local ani = obj.getVar().GetAnimationMap("landeffect", "passiveobject/atpriest/animation/atspearofvictory/landeffect.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);//礜惎𨉗?

	}
	else if (id == 60) {
		local firstTargetYRange = receiveData.readWord();
		local firstTargetXStartRange = receiveData.readWord();
		local firstTargetXEndRange = receiveData.readWord();
		local nextTargetRange = receiveData.readWord();
		local targetMaxHeight = receiveData.readWord();

		local link_sum_num = receiveData.readWord() + 1;
		local attack_time = receiveData.readWord();
		local firstAttackRate = receiveData.readDword();
		local multi_hit_num = receiveData.readWord();

		obj.getVar("skl").clear_vector(); 
		obj.getVar("skl").push_vector(firstTargetYRange); 
		obj.getVar("skl").push_vector(firstTargetXStartRange);
		obj.getVar("skl").push_vector(firstTargetXEndRange);
		obj.getVar("skl").push_vector(nextTargetRange);
		obj.getVar("skl").push_vector(targetMaxHeight);

		obj.getVar("skl").push_vector(link_sum_num);
		obj.getVar("skl").push_vector(attack_time);
		obj.getVar("skl").push_vector(firstAttackRate);
		obj.getVar("skl").push_vector(multi_hit_num);

		obj.getVar("nograb").clear_vector();
		obj.getVar("nograb").push_vector(0);

		local link_num = link_sum_num;

		obj.sq_var.clear_vector();
		obj.sq_var.push_vector(link_num);

		local x = obj.getXPos();
		local y = obj.getYPos();
		local z = obj.getZPos();

		obj.sq_var.push_vector(0);
		obj.getVar("cl").clear_obj_vector();

		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(0);

		obj.getVar("cl").clear_vector();
		obj.getVar("target").clear_vector();

		local i = 0;
		for (i = 0; i < link_num; i++) {
			obj.getVar("cl").push_vector(0);
			obj.getVar("target").push_vector(-1);
			obj.getVar("target").push_vector(-1);
			obj.getVar("target").push_vector(-1);
		}

		local isMyControl = obj.isMyControlObject();

		if (isMyControl) {
			local pIntVec = sq_GetGlobalIntVector();

			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, x);
			sq_IntVectorPush(pIntVec, y);
			sq_IntVectorPush(pIntVec, z);

			local start_x = obj.getVar("skl").get_vector(1);
			local start_end_x = obj.getVar("skl").get_vector(2);

			local y_range = obj.getVar("skl").get_vector(0);
			local z_range = obj.getVar("skl").get_vector(4);

			local pTargetChr = obj.sq_FindFirstTarget(start_x, start_end_x, y_range, z_range);
			local id = sq_GetObjectId(pTargetChr);
			sq_IntVectorPush(pIntVec, id);
			if (id == -1) {
				obj.getVar("nograb").set_vector(0, 1);
			}
			obj.addSetStatePacket(10, pIntVec, STATE_PRIORITY_AUTO, false, "");
		}
	}
	else if (id == 61) {
		local targetId = receiveData.readDword();
		local attack_time = receiveData.readDword();
		local attack_power = receiveData.readDword();
		local multi_hit_num = receiveData.readDword();
		local hitCnt = multi_hit_num;
		local object = sq_GetObjectByObjectId(obj, targetId);
		obj.sq_var.clear_obj_vector();
		obj.sq_var.push_obj_vector(object);
		
		local ani = obj.getVar().GetAnimationMap("miraclechineattack", "character/priest/effect/animation/atmiracleshine/enemyattack01_loop06.ani");
		obj.setCurrentAnimation(ani);
		local pAni = obj.getCurrentAnimation();
		
		local initDelay = 0;
		local term = attack_time / hitCnt;
		obj.timer_.setParameter(term, -1);
		obj.timer_.resetInstant(initDelay);
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(0);
		obj.getVar("hitCnt").clear_vector();
		obj.getVar("hitCnt").push_vector(hitCnt);
		obj.getVar("hitCnt").push_vector(1);
		obj.getVar("end").clear_vector();
		obj.getVar("end").push_vector(0);
		
		sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 47));
		local pAttack = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackPower(pAttack, attack_power);
		
		obj.getVar("state").clear_ct_vector();
		obj.getVar("state").push_ct_vector();
		local t = obj.getVar("state").get_ct_vector(0);
		t.Reset();
		t.Start(100000, 0);
		if (obj.isMyControlObject()) {
			sq_SendHitObjectPacket(obj, object, 0, 0, (sq_GetObjectHeight(object) / 2));
		}
		local currentT = 0;
		local isMyControl = obj.isMyControlObject();
		if (isMyControl) {
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 0);
			obj.addSetStatePacket(10, pIntVec, STATE_PRIORITY_AUTO, false, "");
		}
	}
	else if (id == 62) {
		local attackPower = receiveData.readDword();
		local size = receiveData.readDword();

		local ani = obj.getVar().GetAnimationMap("62", "passiveobject/atpriest/animation/atholylight/barrierend_explosion.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);

		sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 48));
		local pAttack = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackPower(pAttack, attackPower);
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local sizeRate = size.tofloat() / 100.0;
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
	else if (id == 63) {
		local attackPower = receiveData.readDword();
		local size = receiveData.readDword();
		obj.sq_PlaySound("BLESSANGEL_SHIELD");
		local ani = obj.getVar().GetAnimationMap("63", "character/priest/effect/animation/atblessofangel/blessofangel_phase3_sparkle02.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);

		sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 48));
		local pAttack = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackPower(pAttack, attackPower);
		
		local maxNum = chr.sq_GetIntData(SKILL_BLESS_OF_ANGEL, 3);
		local nowNum = chr.getVar("BlessOfAngel").get_vector(0);
		if (nowNum > maxNum) {
			nowNum = maxNum;
		}
		size = nowNum*10 + size;
		local currentAni = sq_GetCurrentAnimation(obj);
		local sizeRate = size.tofloat() / 100.0;
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		obj.sq_PlaySound("FG_EXPLOSION");
	}
	else if (id == 101)
	{
		if(isHolyFlame(chr))
		{
			local ani = obj.getVar().GetAnimationMap("judgmentblow", "passiveobject/character/atpriest/animation/atjudgmentblow/fireconfession/startbottom_04.ani"); 
			obj.setCurrentAnimation(ani);
		}
		else
		{
			local ani = obj.getVar().GetAnimationMap("judgmentblow", "passiveobject/character/atpriest/animation/atjudgmentblow/atjudgmentblow_att1_12.ani"); 
			obj.setCurrentAnimation(ani);
		}

		
		local AttackInfo = sq_GetCustomAttackInfo(obj, 31);
		sq_SetCurrentAttackInfo(obj, AttackInfo);
		local Atk = sq_GetCurrentAttackInfo(obj);
		
		local attackBonusRate = chr.sq_GetBonusRateWithPassive(SKILL_JUDGMENTBLOW , -1, 1, 1.0);
		sq_SetCurrentAttackBonusRate(Atk, attackBonusRate );
		if(isHolyFlame(chr))
		{
			if(Atk)
			{
				Atk.setElement(ENUM_ELEMENT_LIGHT); 
				Atk.setElement(ENUM_ELEMENT_FIRE); 
			}
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(1);
		}
		else
		{
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(0);
		}
		local currentAni = sq_GetCurrentAnimation(obj);
		local size = chr.sq_GetIntData(SKILL_JUDGMENTBLOW, 0);
		local sizeRate = size / 100.0 ;
		sizeRate = sizeRate.tofloat();
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		
	}
	else if (id == 102)
	{
		local ani = obj.getVar().GetAnimationMap("petrolbomb", "passiveobject/atpriest/animation/atpatrolbomb/atpetrolbomb_throwbottle_bottlenormal.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 32);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		obj.sq_SetMoveParticle("Particle/bomb.ptl", 0.0, 0.0);
	}
	else if (id == 103)
	{
		local ani = obj.getVar().GetAnimationMap("petrolexplosiona", "passiveobject/atpriest/animation/atpatrolbomb/atpetrolbomb_airexplosion_normal.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 33);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		attackInfo = sq_GetCurrentAttackInfo(obj);
		local attackBonusRate = chr.sq_GetBonusRateWithPassive(SKILL_PATROLBOMB , -1, 0, 1.0);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local size = chr.sq_GetIntData(SKILL_PATROLBOMB, 5);
		local sizeRate = size / 100.0 ;
		sizeRate = sizeRate.tofloat();
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
	else if (id == 104)
	{
		local ani = obj.getVar().GetAnimationMap("petrolexplosionb", "passiveobject/atpriest/animation/atpatrolbomb/atpetrolbomb_explosionfloor_explosion_floor.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 33);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		attackInfo = sq_GetCurrentAttackInfo(obj);
		local attackBonusRate = chr.sq_GetBonusRateWithPassive(SKILL_PATROLBOMB , -1, 0, 1.0);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local size = chr.sq_GetIntData(SKILL_PATROLBOMB, 5);
		local sizeRate = size / 100.0 ;
		sizeRate = sizeRate.tofloat();
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		
	}
	else if (id == 105)
	{
		local ani = obj.getVar().GetAnimationMap("willofinquisitora", "passiveobject/character/priest/animation/atwillofinquisitor/attack1_holyflamea_1hitsmokea.ani"); 
		obj.setCurrentAnimation(ani);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 34);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		chr.applyBasicAttackUp(sq_GetCurrentAttackInfo(obj),8);
		
		local sizeRate = sq_GetIntData(chr, SKILL_WILLOFINQUISITOR, 2);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 106)
	{
		local ani = obj.getVar().GetAnimationMap("willofinquisitorb", "passiveobject/character/priest/animation/atwillofinquisitor/attack2_holyflame_2hitsmoke.ani"); 
		obj.setCurrentAnimation(ani);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 35);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		chr.applyBasicAttackUp(sq_GetCurrentAttackInfo(obj),8);
		
		local sizeRate = sq_GetIntData(chr, SKILL_WILLOFINQUISITOR, 2);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 107)
	{
		local ani = obj.getVar().GetAnimationMap("willofinquisitorc", "passiveobject/character/priest/animation/atwillofinquisitor/attack3_holyflame_3hitsmoke.ani"); 
		obj.setCurrentAnimation(ani);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 36);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		chr.applyBasicAttackUp(sq_GetCurrentAttackInfo(obj),8);
		
		local sizeRate = sq_GetIntData(chr, SKILL_WILLOFINQUISITOR, 2);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 108)
	{
		local ani = obj.getVar().GetAnimationMap("willofinquisitord", "passiveobject/character/priest/animation/atwillofinquisitor/dashattack_holyflamea_dashsmokea.ani"); 
		obj.setCurrentAnimation(ani);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 37);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		chr.applyBasicAttackUp(sq_GetCurrentAttackInfo(obj),8);
		
		local sizeRate = sq_GetIntData(chr, SKILL_WILLOFINQUISITOR, 2);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 109)
	{
		local ani = obj.getVar().GetAnimationMap("willofinquisitorj", "passiveobject/character/priest/animation/atwillofinquisitor/jumpattack_holyflame_jumpsmoke.ani"); 
		obj.setCurrentAnimation(ani);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 38);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		chr.applyBasicAttackUp(sq_GetCurrentAttackInfo(obj),7);
		
		local sizeRate = sq_GetIntData(chr, SKILL_WILLOFINQUISITOR, 2);
		local imageRate = sizeRate.tofloat() / 100.0;
		local currentAni = obj.getCurrentAnimation();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(imageRate, imageRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, imageRate, imageRate, imageRate);
	}
	else if (id == 110)
	{
		local type= receiveData.readDword();
		local ani = obj.getVar().GetAnimationMap("essenceofphlegeex", "passiveobject/atpriest/animation/atpatrolbomb/atpetrolbomb_explosionfloor_explosion_floor.ani"); 
		local anibig = obj.getVar().GetAnimationMap("essenceofphlegeexb", "passiveobject/character/priest/animation/atessenceofphlege/largeexp/largeboom2_07.ani"); 
		if(type > 0)
		{
			obj.setCurrentAnimation(anibig);
		}
		else
		{
			obj.setCurrentAnimation(ani);
		}
		local attackInfo = sq_GetCustomAttackInfo(obj, 39);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		attackInfo = sq_GetCurrentAttackInfo(obj);
		local attackBonusRate = chr.sq_GetBonusRateWithPassive(SKILL_ESSENCEOFPHLEGE , -1, 1, 1.0);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local size = chr.sq_GetIntData(SKILL_ESSENCEOFPHLEGE, 8);
		local sizeRate = size / 100.0 ;
		sizeRate = sizeRate.tofloat();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		
	}
	else if (id == 111)
	{
		local ani = obj.getVar().GetAnimationMap("phlegebottle", "passiveobject/character/priest/animation/atessenceofphlege/phlegemove_03.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 40);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		obj.sq_SetMoveParticle("Particle/bomb.ptl", 0.0, 0.0);
	}
	else if (id == 112)
	{
		local ani = obj.getVar().GetAnimationMap("phlege", "passiveobject/character/priest/animation/atessenceofphlege/phlegeboombottom_01.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 40);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local size = chr.sq_GetIntData(SKILL_ESSENCEOFPHLEGE, 7);
		local sizeRate = size / 100.0 ;
		sizeRate = sizeRate.tofloat();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		
	}
	else if (id == 113)
	{
		local ani = obj.getVar().GetAnimationMap("scatter", "passiveobject/character/priest/animation/atpouressence/scatter_02.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 40);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local size = chr.sq_GetIntData(SKILL_POURESSENCE, 1);
		local sizeRate = size / 100.0 ;
		sizeRate = sizeRate.tofloat();
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
	else if (id == 114)
	{
		local ani = obj.getVar().GetAnimationMap("essence", "passiveobject/character/priest/animation/atessenceofphlege/bottom/essencebottom_03.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 41);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local size = chr.sq_GetIntData(SKILL_ESSENCEOFPHLEGE, 7);
		local sizeRate = size / 100.0 ;
		sizeRate = sizeRate.tofloat();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		obj.setEnableDamageBox(1);
		
	}
	else if (id == 115)
	{
		local ani = obj.getVar().GetAnimationMap("purificationex", "passiveobject/character/priest/animation/atpurification/atpurification_step2_explosion_smoke2.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 39);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		attackInfo = sq_GetCurrentAttackInfo(obj);
		local attackBonusRate = chr.sq_GetBonusRateWithPassive(SKILL_PURIFICATION , -1, 0, 1.0);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		sq_SetCurrentAttacknUpForce(attackInfo, 300);
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local size = chr.sq_GetIntData(SKILL_PURIFICATION, 2);
		local sizeRate = size / 100.0 ;
		sizeRate = sizeRate.tofloat();
		currentAni.Proc();
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		
	}
	else if (id == 116)
	{
		local ani = obj.getVar().GetAnimationMap("baptism", "passiveobject/atpriest/animation/atflameofbaptism/flameofbaptismfront_03.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 42);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		attackInfo = sq_GetCurrentAttackInfo(obj);
		local attackBonusRate = chr.sq_GetBonusRateWithPassive(SKILL_FLAMEOFBAPTISM , -1, 0, 1.0);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local size = chr.sq_GetIntData(SKILL_FLAMEOFBAPTISM, 2);
		local sizeRate = size / 100.0 ;
		sizeRate = sizeRate.tofloat();
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
	else if (id == 117)
	{
		local ani = obj.getVar().GetAnimationMap("wheel", "passiveobject/character/priest/animation/atwheelofpunishment/wheel_start/wheelofpunishment_start_wheel.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 43);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		attackInfo = sq_GetCurrentAttackInfo(obj);
		local attackBonusRate = chr.sq_GetBonusRateWithPassive(SKILL_WHEELOFPUNISHMENT , -1, 1, 1.0);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local size = chr.sq_GetIntData(SKILL_WHEELOFPUNISHMENT, 5);
		local sizeRate = size / 100.0 ;
		sizeRate = sizeRate.tofloat();
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		
		obj.getVar("wheelstate").clear_vector();
		obj.getVar("wheelstate").push_vector(0);
		obj.getVar("wheelcount").setInt(0,chr.sq_GetIntData(SKILL_WHEELOFPUNISHMENT, 8) + 1);
		obj.getVar("wheelsize").setFloat(0,sizeRate);
	}
	else if (id == 118)
	{
		local ani = obj.getVar().GetAnimationMap("wheelexp", "passiveobject/character/priest/animation/atwheelofpunishment/wheel/explosion/wheelendback_a.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 44);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		attackInfo = sq_GetCurrentAttackInfo(obj);
		local attackBonusRate = chr.sq_GetBonusRateWithPassive(SKILL_WHEELOFPUNISHMENT , -1, 2, 1.0);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local size = chr.sq_GetIntData(SKILL_WHEELOFPUNISHMENT, 5);
		local sizeRate = size / 100.0 ;
		sizeRate = sizeRate.tofloat();
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
	else if (id == 119)
	{
		local ani = obj.getVar().GetAnimationMap("malleusmaleficarum", "passiveobject/character/priest/animation/atmalleusmaleficarum/2ndeff_eff01.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 46);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		
		attackInfo = sq_GetCurrentAttackInfo(obj);
		local attackBonusRate = chr.sq_GetBonusRateWithPassive(SKILL_PATROLBOMB , -1, 0, 1.0);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local size = chr.sq_GetIntData(SKILL_PATROLBOMB, 5);
		local sizeRate = size / 100.0 ;
		sizeRate = sizeRate.tofloat();
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}
	else if (id == 200)
	{
		local ani = obj.getVar().GetAnimationMap("jumprosary", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atrosarystrike/rosaryjumpshooting.ani");
		
		obj.setCurrentAnimation(ani);
		sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 45));
		local attackBonusRate = chr.sq_GetBonusRateWithPassive(174, -1, 0, 0.25);
		sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackBonusRate);
		
		local currentAni = sq_GetCurrentAnimation(obj);
		local sizeRate = 1.66 ;
		sizeRate = sizeRate.tofloat();
		currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
		currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
		sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		
		local random = sq_getRandom(40, 50);
		random = random.tofloat();
		obj.sq_SetMoveParticle("Particle/atrosarystrike.ptl", 0.0, -random);
		obj.setCustomRotate(true, -sq_ToRadian(random));
		
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(1);
	}
	else if (id == 201)
	{
		local targetId = receiveData.readDword();
		
		sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 49));
		
		local object = sq_GetObjectByObjectId(obj, targetId);
		if (obj.isMyControlObject()) {
			sq_SendHitObjectPacketWithNoStuck(obj, object, 0, 0, 0);
		}
	}
}

function onAttack_po_diluo_atpriest(obj, damager, boundingBox, isStuck)
{
	if(!obj)
		return false;
	local id = obj.getVar("id").get_vector(0);
	local parentChr = obj.getTopCharacter();
	local chr = sq_ObjectToSQRCharacter(parentChr);
	if (!chr) return;
	
	local pAni = obj.getCurrentAnimation();
	local currentT = sq_GetCurrentTime(pAni);
	local PosX = sq_GetXPos(obj);
	local PosY = sq_GetYPos(obj);
	local PosZ = sq_GetZPos(obj);
	local damageX = sq_GetXPos(damager);
	local damageY = sq_GetYPos(damager);
	local damageZ = sq_GetZPos(damager);
	if (id == 5 && !isStuck)
	{
		if(damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(chr, damager) && sq_GetSkillLevel(chr, SKILL_ROSARYSHOOTING) > 0)
		{
			local append = "character/atpriest/talismanoflightning/ap_talismanoflightning.nut";
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append))
			{
				return;
			}
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, chr, -1, false, append, true);
		}
	}
	if(id == 6)
	{
		ATPriestTurnPoSkill(obj, 7, 24240, PosX + 20, PosY, PosZ)
	}
	if((id == 10 || id == 9) && !isStuck)
	{
		if(damager.isObjectType(OBJECTTYPE_ACTIVE) && sq_IsHoldable(chr,damager) && sq_IsGrabable(chr,damager) && !sq_IsFixture(damager) && !isSameObject(chr, damager))
		{
			obj.getVar("spearofvictory_damager").push_obj_vector(damager);
			local append = "character/atpriest/spearofvictory/ap_spearofvictoryb.nut";
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, chr, -1, false, append, true);
			if(appendage)
			{
				local timeMax = sq_GetIntData(chr, SKILL_SPEAR_OF_VICTORY, SKL_INT_LV_2);
				sq_HoldAndDelayDie(damager, chr, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL, appendage);
				sq_MoveToAppendageForce(damager, obj, obj, 30, 48, 0, 200, true, appendage,true);
				appendage.getAppendageInfo().setValidTime(timeMax);
			}
		}
	}
	if(id == 17)
	{
		if(sq_IsHoldable(chr,damager) && sq_IsGrabable(chr,damager) && !sq_IsFixture(damager) && damager.isObjectType(OBJECTTYPE_ACTIVE))
			obj.getVar("saint_damager").push_obj_vector(damager);
	}
	if(id == 18 || id == 19)
	{
		if(sq_IsHoldable(chr,damager) && sq_IsGrabable(chr,damager) && !sq_IsFixture(damager) && damager.isObjectType(OBJECTTYPE_ACTIVE))
			obj.getVar("solycirclet_damager").push_obj_vector(damager);
	}
	if(id == 20 || id == 21)
	{
		if(sq_IsHoldable(chr,damager) && sq_IsGrabable(chr,damager) && !sq_IsFixture(damager) && damager.isObjectType(OBJECTTYPE_ACTIVE))
			obj.getVar("solycirclet_damager").push_obj_vector(damager);
	}
	if(id == 24 && !isStuck)
	{
		if(damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(chr, damager))
		{
			local rand = sq_getRandom(0,100);
			local level = sq_GetSkillLevel(chr, SKILL_THUNDER_OF_CLEANS);
			local prob = sq_GetLevelData(chr, SKILL_THUNDER_OF_CLEANS, 1, level) / 10;
			local time = sq_GetLevelData(chr, SKILL_THUNDER_OF_CLEANS, 2, level);
			if( rand > prob.tofloat() )
				return;
			local append = "character/atpriest/appendage/ap_contrition.nut";
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append))
			{
				return;
			}
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, chr, -1, false, append, true);
			if(appendage)
			{
				appendage.getAppendageInfo().setValidTime(time);
			}
		}
	}
	if (id == 53 && !isStuck)
	{
		if(damager && damager.isObjectType(OBJECTTYPE_ACTIVE) && sq_IsHoldable(chr, damager) && sq_IsGrabable(chr, damager) && !sq_IsFixture(damager))
		{
			damager.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));
			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, chr, SKILL_SPEAR_OF_VICTORY, false, "character/atpriest/newspearofvictory/ap_spearofvictorynew.nut", true);
			if(masterAppendage)
			{
				sq_MoveToAppendageForce(damager, chr, chr, 340, -1, -sq_GetZPos(chr), 100, true, masterAppendage);//罿膧AP爦礞鎏茪糔ㄛ桼髍迼𪥰琲阒菾15px鎏糔鷍
				sq_HoldAndDelayDie(damager, chr, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL, masterAppendage);
				masterAppendage.getAppendageInfo().setValidTime(chr.sq_GetIntData(SKILL_SPEAR_OF_VICTORY, 2));
			}
		}
	}
	if (id == 54 && !isStuck)
	{
		if(damager && damager.isObjectType(OBJECTTYPE_ACTIVE) && sq_IsHoldable(chr, damager) && sq_IsGrabable(chr, damager) && !sq_IsFixture(damager))
		{
			damager.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));
			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, chr, SKILL_SPEAR_OF_VICTORY, false, "character/atpriest/newspearofvictory/ap_spearofvictorynew.nut", true);
			if(masterAppendage)
			{
				
				sq_MoveToAppendageForce(damager, chr, chr, 340, -1, -sq_GetZPos(chr), 100, true, masterAppendage);//罿膧AP爦礞鎏茪糔ㄛ桼髍迼𪥰琲阒菾15px鎏糔鷍
				sq_HoldAndDelayDie(damager, chr, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL, masterAppendage);
				masterAppendage.getAppendageInfo().setValidTime(chr.sq_GetIntData(SKILL_SPEAR_OF_VICTORY, 3));
			}
		}
	}
	if (id == 58)
	{
		local apPath = "character/atpriest/newspearofvictory/ap_spearofvictorynew.nut";
		if(CNSquirrelAppendage.sq_IsAppendAppendage(damager, apPath)) 
		{
			CNSquirrelAppendage.sq_RemoveAppendage(damager, apPath);
		}
	}
	if(id == 102)
	{
		sq_BinaryStartWrite();
		
		if(PosZ > 20)
		{
			sq_BinaryWriteDword(103);
			sq_SendCreatePassiveObjectPacketPos(chr,24240, 0, PosX, PosY, PosZ);
		}
		else if(PosZ != 0)
		{
			sq_BinaryWriteDword(104);
			sq_SendCreatePassiveObjectPacketPos(chr,24240, 0, PosX, PosY, 0);
		}
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 103 || id == 104 || id == 119)
	{
		if(damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(chr, damager))
		{
			local append = "character/atpriest/judge/patrolbomb/ap_patrolbomb.nut";
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append))
			{
				return;
			}
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/judge/essenceofphlege/ap_essenceofphlegeex.nut"))
			{
				return;
			}
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, chr, -1, false, append, true);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, damager, chr, APID_RESONANCE, false);
		}
	}
	if (id == 110 || id == 115)
	{
		if(damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(chr, damager))
		{
			local append = "character/atpriest/judge/essenceofphlege/ap_essenceofphlegeex.nut";
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append))
			{
				return;
			}
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, chr, -1, false, append, true);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, damager, chr, APID_RESONANCE, false);
			if(appendage)
			{
				local timeMax = chr.sq_GetIntData(SKILL_ESSENCEOFPHLEGE, 4);
				if(sq_IsHoldable(chr,damager) && !sq_IsFixture(damager))
				{
					sq_HoldAndDelayDie(damager, chr, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL, appendage);
				}
				appendage.getAppendageInfo().setValidTime(timeMax);
			}
		}
	}
	if(id == 111)
	{
		if(PosZ != 0)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(112);
			sq_SendCreatePassiveObjectPacketPos(chr,24240, 0, PosX, PosY, PosZ);
		}
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 112)
	{
		if(damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(chr, damager))
		{
			local append = "character/atpriest/judge/essenceofphlege/ap_essenceofphlege.nut";
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append))
			{
				return;
			}
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, chr, -1, false, append, true);
			if(appendage)
			{
				local timeMax = chr.sq_GetIntData(SKILL_ESSENCEOFPHLEGE, 3);
				appendage.getAppendageInfo().setValidTime(timeMax);
			}
		}
	}
	if (id == 113)
	{
		if(damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(chr, damager))
		{
			local append = "character/atpriest/judge/essenceofphlege/ap_essenceofphlege.nut";
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append))
			{
				return;
			}
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, chr, -1, false, append, true);
			if(appendage)
			{
				local timeMax = chr.sq_GetIntData(SKILL_ESSENCEOFPHLEGE, 3);
				appendage.getAppendageInfo().setValidTime(timeMax);
			}
		}
	}
	if (id == 114)
	{
		if(damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(chr, damager))
		{
			local append = "character/atpriest/judge/essenceofphlege/ap_essenceofphlege.nut";
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append))
			{
				return;
			}
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, chr, -1, false, append, true);
			//CNSquirrelAppendage.sq_AppendAppendageID(appendage, damager, chr, APID_RESONANCE, false);
			if(appendage)
			{
				local timeMax = chr.sq_GetIntData(SKILL_ESSENCEOFPHLEGE, 3);
				appendage.getAppendageInfo().setValidTime(timeMax);
			}
		}
	}
	if (id == 116)
	{
		if(damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(chr, damager))
		{
			local append = "character/atpriest/judge/flameofbaptism/ap_flameofbaptism.nut";
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append))
			{
				return;
			}
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/judge/essenceofphlege/ap_essenceofphlegeex.nut"))
			{
				return;
			}
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, chr, -1, false, append, true);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, damager, chr, APID_RESONANCE, false);
		}
	}
	if (id == 117)
	{
		if(damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(chr, damager))
		{
			local append = "character/atpriest/judge/wheelofpunishment/ap_wheelofpunishment.nut";
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append))
			{
				return;
			}
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/judge/wheelofpunishment/ap_wheelofpunishment.nut"))
			{
				return;
			}
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, chr, -1, false, append, true);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, damager, chr, APID_RESONANCE, false);
		}
		
		if(!sq_IsFixture(damager) && damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(chr, damager))
		{
			obj.getVar("wheeldummy").push_obj_vector(damager);
			local append = "character/atpriest/judge/wheelofpunishment/ap_wheeldummy.nut";
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, damager, -1, false, append, true);
			if(appendage)
			{
				local atkRange = sq_GetBoundingBoxXSize(sq_GetAttackBoundRect(obj.getCurrentAnimation()));
				atkRange = atkRange * 0.6;
				sq_MoveToAppendageForce(damager, obj, obj, atkRange.tointeger(), 1, 0, 500, true, appendage,true);
				appendage.getAppendageInfo().setValidTime(1000);
			}
		}
	}
	if (id == 118)
	{
		if(damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(chr, damager))
		{
			local append = "character/atpriest/judge/wheelofpunishment/ap_wheelofpunishment.nut";
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append))
			{
				return;
			}
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/judge/essenceofphlege/ap_essenceofphlegeex.nut"))
			{
				return;
			}
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, chr, -1, false, append, true);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, damager, chr, APID_RESONANCE, false);
		}
	}
}

function procAppend_po_diluo_atpriest(obj)
{
	if(!obj) return;

	local state = obj.getVar("state").get_vector(0);
	local passiveState = state;

	local pAni = obj.getCurrentAnimation();
	local frmIndex = sq_GetAnimationFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);
	local objX = sq_GetXPos(obj);
	local objY = sq_GetYPos(obj);
	local id = obj.getVar("id").get_vector(0);
	
	local parentChr = obj.getTopCharacter();
	local chr = sq_ObjectToSQRCharacter(parentChr);
	if(!chr) return;
	local State = parentChr.getVar("state").get_vector(0);
	local State_Sub0 = parentChr.getVar("substate").get_vector(0);
	
	local chrState = chr.sq_GetState();
	local chrSubState = chr.getSkillSubState();
	
	local chr_pAni = parentChr.getCurrentAnimation();
	local chr_frmIndex = sq_GetAnimationFrameIndex(chr_pAni);
	local PosX = objX;
	local PosY = objY;
	local PosZ = sq_GetZPos(obj);
	if (id == 6)
	{
		local UV = sq_GetUniformVelocity(0, 300, currentT, 2000);
		local Dist = sq_GetDistancePos(PosX, obj.getDirection(), UV);
		sq_setCurrentAxisPos(obj, 0, Dist);
	}
	if (id == 9)
	{
		local UV = sq_GetUniformVelocity(0, 300, currentT, 800);
		local UVNew = sq_GetUniformVelocity(0, 120, currentT, 800);
		local dstX = sq_GetDistancePos(PosX, obj.getDirection(), UV);
		local dstY = sq_GetDistancePos(PosY, 1, UVNew);
		sq_setCurrentAxisPos(obj, 0, dstX);
		sq_setCurrentAxisPos(obj, 1, dstY);
	}
	if (id == 10)
	{
		local Time = sq_GetIntData(parentChr, SKILL_SPEAR_OF_VICTORY, SKL_INT_LV_1);
		if (currentT >= Time)
		{
			ATPriestTurnPoSkill(obj, 11, 24240, PosX, PosY, PosZ)
		}
		local size = obj.getVar("spearofvictory_damager").get_obj_vector_size();
		for (local i = 0;i < size ;i++)
		{
			local target = obj.getVar("spearofvictory_damager").get_obj_vector(i);
			local gdpX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), -70);
			target.setCurrentPos(gdpX,obj.getYPos() + 10,obj.getZPos() );
			target.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));
		}
	}
	if (id == 13)
	{
		if (currentT >= 8000)
		{
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (id == 16)
	{
		if (currentT >= 800)
		{
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (id == 17)
	{
		local Time = sq_GetIntData(parentChr, SKILL_SAINT_FLASH, SKL_INT_LV_1);
		local UV = sq_GetUniformVelocity(0, 200, currentT, 3000);
		local Dist = sq_GetDistancePos(PosX, obj.getDirection(), UV);
		sq_setCurrentAxisPos(obj, 0, Dist);
		if (currentT >= Time)
		{
			ATPriestTurnPoSkill(obj, 18, 24240, PosX, PosY, PosZ)
		}
		local size = obj.getVar("saint_damager").get_obj_vector_size();
		for (local i = 0;i < size ;i++)
		{
			local target = obj.getVar("saint_damager").get_obj_vector(i);
			local gdpX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 30);
			target.setCurrentPos(gdpX,obj.getYPos(),obj.getZPos() );
			target.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));
		}
	}
	if (id == 19)
	{
		if (currentT >= 800)
		{
			ATPriestTurnPoSkillNew(obj, 20, 21, 24240, PosX, PosY, PosZ);
			local size = obj.getVar("solycirclet_damager").get_obj_vector_size();
			for (local i = 0;i < size ;i++)
			{
				local target = obj.getVar("solycirclet_damager").get_obj_vector(i);
				local gdpX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 0);
				target.setCurrentPos(gdpX,obj.getYPos(),obj.getZPos() );
				target.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));
			}
		}
	}
	if (id == 20 || id == 21)
	{
		local Time = sq_GetIntData(parentChr, SKILL_HOLY_CIRCLET, SKL_INT_LV_1);
		if (currentT >= Time)
		{
			ATPriestTurnPoSkill(obj, 22, 24240, PosX, PosY, PosZ)
		}
		local size = obj.getVar("solycirclet_damager").get_obj_vector_size();
		for (local i = 0;i < size ;i++)
		{
			local target = obj.getVar("solycirclet_damager").get_obj_vector(i);
			local gdpX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 0);
			target.setCurrentPos(gdpX,obj.getYPos() + 30,obj.getZPos() );
			target.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));
		}
	}
	if (id == 36)
	{
		if (currentT >= 4000)
		{
			local loop_crossfirebottom = obj.getVar("loop_crossfirebottom").get_obj_vector(0);
			local loop_crossfirefront = obj.getVar("loop_crossfirefront").get_obj_vector(0);
			local loop_crossfiretop = obj.getVar("loop_crossfiretop").get_obj_vector(0);
			if (loop_crossfirebottom || loop_crossfirefront || loop_crossfiretop)
			{
				loop_crossfirebottom.setValid(false);
				loop_crossfirefront.setValid(false);
				loop_crossfiretop.setValid(false);
			}
			ATPriestTurnPoSkill(obj, 37, 24240, PosX, PosY, PosZ)
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (id == 40)
	{
		if (currentT >= 4000)
		{
			ATPriestTurnPoSkill(obj, 38, 24240, PosX, PosY, PosZ)
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (id == 46)
	{
		if(FLAG_PASSIVE_CREATE_BRIONAC_C == 1){
			local myPObjCount = chr.getMyPassiveObjectCount(24240);
			for (local i = 0; i < myPObjCount; i++) {
				local myPassiveObj = chr.getMyPassiveObject(24240, i);
				if (!myPassiveObj || !myPassiveObj.isMyControlObject()) continue;
				if (myPassiveObj.getVar("id").get_vector(0) == 47) {
					FLAG_PASSIVE_CREATE_BRIONAC_C = 2;
					print("Found 47\n\r");
				}
			}
		}
		if(FLAG_PASSIVE_CREATE_BRIONAC_C == 1){
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(47);
			sq_SendCreatePassiveObjectPacketPos(chr, 24240, 0, PosX, PosY, PosZ);
			print("Create 47\n\r");
		}
		else if(FLAG_PASSIVE_CREATE_BRIONAC_C == 2){
			sq_SendDestroyPacketPassiveObject(obj);
			print("Destroy 46\n\r");
		}
	}
	if (id == 49)
	{
		local pAni = obj.getCurrentAnimation();
		local currentT = sq_GetCurrentTime(pAni);
		if (chrState == STATE_SPEAR_OF_VICTORY && chrSubState == 1)
		{
			if (currentT >= chr.sq_GetIntData(SKILL_SPEAR_OF_VICTORY, 0))
			{
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(50);
				sq_SendCreatePassiveObjectPacketPos(obj, 24240, 0, PosX, PosY, PosZ);
				sq_SendDestroyPacketPassiveObject(obj);
				creatspearofvictory(obj, 0, 0, 0);
			}
		}
		else
		{
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (id == 50)
	{
		local pAni = obj.getCurrentAnimation();
		local currentT = sq_GetCurrentTime(pAni);
		if (chrState == STATE_SPEAR_OF_VICTORY && chrSubState == 2)
		{
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (id == 53 && state == 1)
	{
		if (PosZ <= 0)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(55);
			sq_SendCreatePassiveObjectPacketPos(obj, 24240, 0, PosX, PosY, PosZ);
			obj.getVar("state").clear_vector();
			obj.getVar("state").push_vector(2);
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (id == 54 && state == 1)
	{
		if (PosZ <= 0)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(56);
			sq_SendCreatePassiveObjectPacketPos(obj, 24240, 0, PosX, PosY, PosZ);
			obj.getVar("state").clear_vector();
			obj.getVar("state").push_vector(2);
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (id == 55)
	{
		local pAni = obj.getCurrentAnimation();
		local currentT = sq_GetCurrentTime(pAni);
		if (currentT >= chr.sq_GetIntData(SKILL_SPEAR_OF_VICTORY, 2))
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(58);
			sq_SendCreatePassiveObjectPacketPos(obj, 24240, 0, PosX, PosY, PosZ);
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (id == 56 )
	{
		local pAni = obj.getCurrentAnimation();
		local currentT = sq_GetCurrentTime(pAni);
		if (currentT >= chr.sq_GetIntData(SKILL_SPEAR_OF_VICTORY, 3))
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(58);
			sq_SendCreatePassiveObjectPacketPos(obj, 24240, 0, PosX, PosY, PosZ);
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (id == 57 )
	{
		local pAni = obj.getCurrentAnimation();
		local currentT = sq_GetCurrentTime(pAni);
		if (currentT >= chr.sq_GetIntData(SKILL_SPEAR_OF_VICTORY, 2))
		{
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (id == 59 )
	{
		local pAni = obj.getCurrentAnimation();
		local currentT = sq_GetCurrentTime(pAni);
		if (currentT >= chr.sq_GetIntData(SKILL_SPEAR_OF_VICTORY, 3))
		{
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	
	if (id == 60) {
		local pChr = obj.getTopCharacter();
		if (!pChr) {
			if (state == 10) {
				if (obj.isMyControlObject()) {
					local pIntVec = sq_GetGlobalIntVector();
					sq_IntVectorClear(pIntVec);
					sq_IntVectorPush(pIntVec, 0);
					obj.addSetStatePacket(11, pIntVec, STATE_PRIORITY_AUTO, false, "");
				}
				return;
			} else {
				if (obj.isMyControlObject())
					sq_SendDestroyPacketPassiveObject(obj);
				return;
			}
		}
		local lightNum = obj.getVar("cl").get_obj_vector_size();
		if (pChr.getState() != STATE_MIRACLE_CHINE) {
			if (state == 10) {
				if (obj.isMyControlObject()) {
					local pIntVec = sq_GetGlobalIntVector();
					sq_IntVectorClear(pIntVec);
					sq_IntVectorPush(pIntVec, 0);
					obj.addSetStatePacket(11, pIntVec, STATE_PRIORITY_AUTO, false, "");
				}
				return;
			} else if (state == 11) {
				local clNum = obj.getVar("cl").get_obj_vector_size();
				if (clNum == 0) {
					if (obj.isMyControlObject()) {
						sq_SendDestroyPacketPassiveObject(obj);
						return;
					}
				} else {
					setAnimationEmptyMiracleLightning(obj);
				}
			}
		}
		local i = 0;
		local object_num = obj.getVar("cl").get_obj_vector_size();
		for (i = 0; i < object_num; i++) {
			local pObj = obj.getVar("cl").get_obj_vector(i);
			local target_obj_num = obj.sq_var.get_obj_vector_size();
			if (target_obj_num > i) {
				local pTargetObj = obj.sq_var.get_obj_vector(i);
				local pActiveTarget = sq_GetCNRDObjectToActiveObject(pTargetObj);
				local target_x = sq_GetXPos(pActiveTarget);
				local target_y = sq_GetYPos(pActiveTarget) + 5;
				local target_z = sq_GetZPos(pActiveTarget) + (sq_GetObjectHeight(pActiveTarget) / 2);
				if ((i + 1) < object_num) {
					local next_obj = obj.getVar("cl").get_obj_vector(i + 1);
					sq_SetCurrentPos(next_obj, target_x, target_y, target_z);
				}
				local pAni = pObj.getCurrentAnimation();
				if (state == 10) {
					procMiracleChain(obj, pObj, pActiveTarget, i);
					if (pAni.GetCurrentFrameIndex() >= 2) { 
						if (obj.getVar("cl").get_vector(i) == 0) { 
							if (obj.isMyControlObject()) {
								local targetId = sq_GetObjectId(pTargetObj);
								if (targetId != -1) {
									local attack_time = obj.getVar("skl").get_vector(6);
									local attack_rate = obj.getVar("skl").get_vector(7);
									local multi_hit_num = obj.getVar("skl").get_vector(8);
									sq_BinaryStartWrite();
									sq_BinaryWriteDword(61);
									sq_BinaryWriteDword(targetId);
									sq_BinaryWriteDword(attack_time);
									sq_BinaryWriteDword(attack_rate);
									sq_BinaryWriteDword(multi_hit_num);
									sq_SendCreatePassiveObjectPacketFromPassivePos(obj, 24240, 0, target_x, target_y - 1, target_z);
								}
								local pIntVec = sq_GetGlobalIntVector();
								sq_IntVectorClear(pIntVec);
								sq_IntVectorPush(pIntVec, target_x);
								sq_IntVectorPush(pIntVec, target_y + 1);
								sq_IntVectorPush(pIntVec, target_z);
								local next_x_range = obj.getVar("skl").get_vector(3);
								local z_range = obj.getVar("skl").get_vector(4);
								local pTargetChr = obj.sq_FindNextTarget(pActiveTarget, next_x_range, z_range);
								local targetId = sq_GetObjectId(pTargetChr);
								sq_IntVectorPush(pIntVec, targetId);
								obj.addSetStatePacket(10, pIntVec, STATE_PRIORITY_AUTO, false, "");
							}
							obj.getVar("cl").set_vector(i, 1); //
							return;
						}
					}
				} else if (state == 11) {
					procMiracleChain(obj, pObj, pActiveTarget, i);
				}
			} else {
				if (state == 11) {
					procMiracleChain(obj, pObj, null, i);
				}
			}
		}
		if (pChr.getState() != STATE_MIRACLE_CHINE) {
			if (state == 10) {
				if (obj.isMyControlObject()) {
					local pIntVec = sq_GetGlobalIntVector();
					sq_IntVectorClear(pIntVec);
					sq_IntVectorPush(pIntVec, 0);
					obj.addSetStatePacket(11, pIntVec, STATE_PRIORITY_AUTO, false, "");
				}
				return;
			}
		}
		if (object_num <= 0) {
			if (obj.sq_var.get_vector(1) > 0) {
				if (obj.getVar("cl").get_obj_vector_size() == 0) {
					if (obj.isMyControlObject()) {
						sq_SendDestroyPacketPassiveObject(obj);
					}
				}
			}
		}
	}
	if (id == 61) {
		local pChr = obj.getTopCharacter();
		if (state != 10 && state != 11)
			return;
		if (!pChr || obj.sq_var.get_obj_vector_size() != 1) {
			if (obj.isMyControlObject()) {
				if (state != 11) {
					local pIntVec = sq_GetGlobalIntVector();
					sq_IntVectorClear(pIntVec);
					sq_IntVectorPush(pIntVec, 0);
					obj.addSetStatePacket(11, pIntVec, STATE_PRIORITY_AUTO, false, "");
					return;
				}
			}
		}
		if (!pChr) {
			if (obj.isMyControlObject())
				sq_SendDestroyPacketPassiveObject(obj);
			return;
		}
		local pTargetChr = obj.sq_var.get_obj_vector(0);
		if (pChr.getState() != STATE_MIRACLE_CHINE || !pTargetChr) {
			if (obj.isMyControlObject()) {
				if (state != 11) {
					local pIntVec = sq_GetGlobalIntVector();

					sq_IntVectorClear(pIntVec);
					sq_IntVectorPush(pIntVec, 0);
					obj.addSetStatePacket(11, pIntVec, STATE_PRIORITY_AUTO, false, "");
					return;
				}
			}
		}

		if (pTargetChr) {
			local posX = pTargetChr.getXPos();
			local posY = pTargetChr.getYPos();
			local posZ = pTargetChr.getZPos() + (sq_GetObjectHeight(pTargetChr) / 2) - 25;

			sq_SetCurrentPos(obj, posX, posY, posZ);
		}

		local pObjAni = obj.getCurrentAnimation();

		if (pTargetChr) {
			local multiHitCnt = obj.getVar("hitCnt").get_vector(VECTOR_FLAG_0);
			local cnt = obj.getVar("hitCnt").get_vector(VECTOR_FLAG_1);

			if (cnt < multiHitCnt) {
				local t = obj.getVar("state").get_ct_vector(0);
				local time = 0;

				if (t)
					time = t.Get();

				if (obj.timer_.isOnEvent(time) == true) {
					local value = obj.getVar("hitCnt").get_vector(VECTOR_FLAG_1);
					value = value + 1;
					obj.getVar("hitCnt").set_vector(VECTOR_FLAG_1, value);
					if (obj.isMyControlObject()) {
						sq_SendHitObjectPacket(obj, pTargetChr, 0, 0, (sq_GetObjectHeight(pTargetChr) / 2));
					}
				}
			}
		}

		if (state == 11) {
			if (obj.isMyControlObject()) {
				local isend = obj.getVar("end").get_vector(0);
				if (obj.getVar("end").get_vector(0)) {
					local multiHitCnt = obj.getVar("hitCnt").get_vector(VECTOR_FLAG_0);
					local cnt = obj.getVar("hitCnt").get_vector(VECTOR_FLAG_1);
					if (multiHitCnt <= cnt || obj.sq_var.get_obj_vector_size(0) == 0) {
						if (obj.isMyControlObject()) {
							sq_SendDestroyPacketPassiveObject(obj);
						}
					}
				}
			}
		}
	}
//==========================================================
	if (id == 102)
	{
		if(PosZ==0)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(104);
			sq_SendCreatePassiveObjectPacketPos(chr,24240, 0, PosX, PosY, PosZ);
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (id == 103 || id == 104 || id == 116 || id == 117 || id == 118 || id == 119)
	{
		ATPriestDetonateEssence(chr,obj,1);
	}
	if (id == 111)
	{
		if(PosZ==0)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(112);
			sq_SendCreatePassiveObjectPacketPos(chr,24240, 0, PosX, PosY, 0);
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(114);
			sq_SendCreatePassiveObjectPacketPos(chr,24240, 0, PosX, PosY, 0);
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (id == 114)
	{
		
		local timeMax = chr.sq_GetIntData(SKILL_ESSENCEOFPHLEGE, 9);
		if (currentT >= timeMax)
		{
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (id == 200)
	{
		if(PosZ < 1 && state == 1)
		{
			sq_SendDestroyPacketPassiveObject(obj);
			sq_createPooledObject(obj, "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atrosarystrike/rosarystrikeend.ani", 0, 0, 0, 160, 1.0, 0, 0, 1);
			obj.getVar("state").clear_vector();
			obj.getVar("state").push_vector(2);
		}
	}
}

function onKeyFrameFlag_po_diluo_atpriest(obj,flagIndex)
{
	if(!obj)
		return false;
	local id = obj.getVar("id").get_vector(0);
	local PosX = sq_GetXPos(obj);
	local PosY = sq_GetYPos(obj);
	local PosZ = sq_GetZPos(obj);
	local chr = obj.getTopCharacter();
	chr = sq_ObjectToSQRCharacter(chr);
	if (id == 19 || id == 20 || id == 21 || id == 22)
	{
		if (flagIndex == 0)
		{
			sq_SetShake(chr,4,100);
		}
		else if (flagIndex == 1)
		{
		}
		else if (flagIndex == 2)
		{
			sq_SetShake(chr,3,250);
		}
	}
	if (id == 23 || id == 24 || id == 25)
	{
		if (flagIndex == 6)
		{
			sq_flashScreen(obj, 0, 60, 0, 127, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK);
		}
		else if (flagIndex == 7)
		{
			sq_SetShake(chr,5,180);
		}
		else if (flagIndex == 9)
		{
			sq_flashScreen(obj, 0, 120, 0, 178, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER);
			sq_SetShake(chr,10,280);
		}
	}
	if (id == 26 || id == 27 || id == 28)
	{
		if (flagIndex == 0)
		{
			sq_SetShake(chr,20,300);
		}
	}
	if (id == 32 || id == 33)
	{
		if (flagIndex == 0)
		{
			sq_SetShake(chr,24,300);
		}
		if (flagIndex == 1)
		{
			sq_SetShake(chr,6,300);
		}
	}
	if (id == 35)
	{
		if (flagIndex == 0)
		{
			sq_SetShake(chr,24,300);
		}
	}
	if (id == 35)
	{
		if (flagIndex == 0)
		{
			sq_SetShake(chr,20,200);
		}
	}
	if (id == 40)
	{
		if (flagIndex == 3)
		{
			sq_SetShake(chr,25,200);
		}
	}
	if (id == 43)
	{
		if (flagIndex == 0)
		{
			sq_SetShake(chr,5,320);
		}
		if (flagIndex == 1)
		{
			sq_SetShake(chr,1,2400);
		}
		if (flagIndex == 2)
		{
			sq_SetShake(chr,5,400);
		}
		if (flagIndex == 7)
		{
			local power = obj.getVar("data").get_vector(0);
			local eventTime = obj.getVar("data").get_vector(1);
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(28);
			sq_BinaryWriteDword(power);
			sq_BinaryWriteDword(eventTime);
			sq_SendCreatePassiveObjectPacketPos(obj, 24240, 0, PosX, PosY, PosZ);
		}
	}
	if (id == 46 && flagIndex == 0)
	{
		creatbrionaclanceeff_eff20(obj, 0 ,0 ,0);
		creatbrionaclancefloor_eff01(obj, 0 ,0 ,0);
		sq_SetMyShake(obj,6,300);
	}
	if (id == 47 && flagIndex == 0)
	{
		sq_SetMyShake(obj,24,600);
	}
	if(id == 117)
	{
		local state = obj.getVar("wheelstate").get_vector(0);
		local sizeRate = obj.getVar("wheelsize").getFloat(0);
		if (flagIndex == 1)
		{
			local ani = obj.getVar().GetAnimationMap("wheel1s", "passiveobject/character/priest/animation/atwheelofpunishment/wheel/wheelstart_wheel.ani"); 
			obj.setCurrentAnimation(ani);
			local currentAni = obj.getCurrentAnimation();
			currentAni.Proc();
			currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
			currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
			sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
			
			obj.getVar("wheelstate").clear_vector();
			obj.getVar("wheelstate").push_vector(10);
		}
		else if(flagIndex == 2)
		{
			local ani = obj.getVar().GetAnimationMap("wheelloop", "passiveobject/character/priest/animation/atwheelofpunishment/wheel/wheelloop_wheel.ani"); 
			obj.setCurrentAnimation(ani);
			
			local currentAni = obj.getCurrentAnimation();
			currentAni.Proc();
			currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
			currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
			sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
			
			obj.getVar("wheelstate").clear_vector();
			obj.getVar("wheelstate").push_vector(11);
			obj.setTimeEvent(11, sq_GetIntData(chr, SKILL_WHEELOFPUNISHMENT, 1), 0, true);
			
		}
	}

	return true;
}

function onTimeEvent_po_diluo_atpriest(obj, timeEventIndex, timeEventCount)
{
	if(!obj)
		return false;
	local parentChr = obj.getTopCharacter();
	local PosX = sq_GetXPos(obj);
	local PosY = sq_GetYPos(obj);
	local PosZ = sq_GetZPos(obj);
	if(timeEventIndex == 0)
	{
		obj.resetHitObjectList();
	}
	if(timeEventIndex == 1)
	{
		local RangeX = sq_GetIntData(parentChr, SKILL_THUNDER_OF_CLEANS, SKL_INT_LV_3);
		local RangeY = sq_GetIntData(parentChr, SKILL_THUNDER_OF_CLEANS, SKL_INT_LV_4);
		local RanX = sq_getRandom(-RangeX,RangeX);
		local RanY = sq_getRandom(-RangeY,RangeY);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(25);
		sq_SendCreatePassiveObjectPacketPos(obj, 24240, 0, PosX + RanX, PosY + RanY, PosZ);
	}
	if(timeEventIndex == 2)
	{
		obj.sq_PlaySound("CRUXOFSHAPIEL_HIT");
		obj.resetHitObjectList();
	}
	if(timeEventIndex == 3)
	{
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(26);
		sq_SendCreatePassiveObjectPacketPos(obj, 24240, 0, PosX, PosY, PosZ);
	}
	if(timeEventIndex == 11)
	{
		local wheelCount = obj.getVar("wheelcount").getInt(0);
		if (timeEventCount < wheelCount) {
			obj.resetHitObjectList();
		} 
		else {
			local parentChr = obj.getTopCharacter();
			local chr = sq_ObjectToSQRCharacter(parentChr);
			obj.sq_PlaySound("WHEEL_PUNISHMENT_APPEAR");
			chr.sq_SetShake(chr,2,100);
			
			local atkRange = sq_GetBoundingBoxXSize(sq_GetAttackBoundRect(obj.getCurrentAnimation()));
			atkRange = atkRange * 0.6;
			atkRange = atkRange.tointeger();
			local particleCreater = obj.getVar().GetparticleCreaterMap("wheeldisappear","passiveobject/character/priest/animation/atwheelofpunishment/particle/wheelofpunishment.ptl", obj);
			particleCreater.Restart(0);
			particleCreater.SetPos( sq_GetDistancePos( obj.getXPos(), obj.getDirection(), atkRange ), obj.getYPos() + 1, obj.getZPos() + 100);
			sq_AddParticleObject(obj, particleCreater);
			
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(118);
			sq_SendCreatePassiveObjectPacketPos(obj, 24240, 0, PosX, PosY+2, PosZ);
			
			local sq_var = obj.getVar("wheeldummy");
			local objectsSize = sq_var.get_obj_vector_size();
			for (local i = 0; i < objectsSize; ++i) {
				local damager = sq_var.get_obj_vector(i);
				if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/judge/wheelofpunishment/ap_wheeldummy.nut")) 
				{
					CNSquirrelAppendage.sq_RemoveAppendage(damager, "character/atpriest/judge/wheelofpunishment/ap_wheeldummy.nut");
				}
			}
			
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
}

function setState_po_diluo_atpriest(obj, state, datas) {

	if (!obj) return;
	local id = obj.getVar("id").get_vector(0);
	if (id == 60) {
		local passiveState = state;
		obj.getVar("state").set_vector(0, passiveState);
		if (passiveState == 10) {
			local cnt = obj.sq_var.get_vector(1);
			cnt = cnt + 1;
			obj.sq_var.set_vector(1, cnt); 
			if (obj.sq_var.get_vector(0) > obj.sq_var.get_vector(1)) 
			{
				local x = sq_GetVectorData(datas, 0); // x pos
				local y = sq_GetVectorData(datas, 1); // y pos
				local z = sq_GetVectorData(datas, 2); // z pos
				local id = sq_GetVectorData(datas, 3); // id
				local target_chr = sq_GetObjectByObjectId(obj, id);
				if (target_chr) {
					
					local ani = sq_CreateAnimation("", "character/priest/effect/animation/atmiracleshine/line04_userenemyloop02.ani");
					local lightObj = sq_CreatePooledObject(ani, true);
					lightObj.setCurrentPos(x, y + 5, z);
					lightObj.setCurrentDirection(obj.getDirection());
					obj.getVar("cl").push_obj_vector(lightObj);
					sq_AddObject(obj, lightObj, OBJECTTYPE_DRAWONLY, false);
					
					obj.sq_var.remove_obj_vector(target_chr);
					obj.sq_var.push_obj_vector(target_chr);

					local pActiveTarget = sq_GetCNRDObjectToActiveObject(target_chr);

					procMiracleChain(obj, lightObj, pActiveTarget, obj.sq_var.get_vector(1));
				} else { 
					if (obj.sq_var.get_vector(1) == 1) {
						local ani = sq_CreateAnimation("", "character/priest/effect/animation/atmiracleshine/line01_castfail.ani");
						local lightObj = sq_CreatePooledObject(ani, true);
						lightObj.setCurrentPos(x, y + 5, z);
						lightObj.setCurrentDirection(obj.getDirection());
						obj.getVar("cl").push_obj_vector(lightObj);
						sq_AddObject(obj, lightObj, OBJECTTYPE_DRAWONLY, false);
					}
				}
			}
		} else if (passiveState == 11) {
			local object_num = obj.getVar("cl").get_obj_vector_size();
			local i = 0;
			for (i = 0; i < object_num; i++) { 
				local pObj = obj.getVar("cl").get_obj_vector(i);
				local ani = sq_CreateAnimation("", "character/priest/effect/animation/atmiracleshine/line01_castfail.ani");
				pObj.setCurrentAnimation(ani);
			}
			for (i = 0; i < object_num; i++) {
				local target_obj_num = obj.sq_var.get_obj_vector_size();
				local pObj = obj.getVar("cl").get_obj_vector(i);
				if (target_obj_num > i) {
					local pTargetObj = obj.sq_var.get_obj_vector(i);
					local pActiveTarget = sq_GetCNRDObjectToActiveObject(pTargetObj);
					local target_x = sq_GetXPos(pActiveTarget);
					local target_y = sq_GetYPos(pActiveTarget) + 5;
					local target_z = sq_GetZPos(pActiveTarget) + (sq_GetObjectHeight(pActiveTarget) / 2);
					if ((i + 1) < object_num) {
						local next_obj = obj.getVar("cl").get_obj_vector(i + 1);
						sq_SetCurrentPos(next_obj, target_x, target_y, target_z);
					}
					procMiracleChain(obj, pObj, pActiveTarget, i);
				} else {
					procMiracleChain(obj, pObj, null, i);
				}
			}
		}
	}
	else if(id == 61){
		local passiveState = state;

		obj.getVar("state").set_vector(0, passiveState);

		if (passiveState == 10) {

		} else if (passiveState == 11) {
			
			local ani = obj.getVar().GetAnimationMap("miraclechineend", "character/priest/effect/animation/atmiracleshine/enemyattack02_end02.ani");
			obj.setCurrentAnimation(ani);
		}
	}
}

function onEndCurrentAni_po_diluo_atpriest(obj)
{
	if(!obj) return;
	local id = obj.getVar("id").get_vector(0);
	local parentChr = obj.getTopCharacter();
	local chr = sq_ObjectToSQRCharacter(parentChr);
	local PosX = sq_GetXPos(obj);
	local PosY = sq_GetYPos(obj);
	local PosZ = sq_GetZPos(obj);
	if (id == 1 || id == 5 || id == 103 || id == 104 || id == 106 || id == 107 || id == 108 || id == 109 || id == 119)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 9)
	{
		ATPriestTurnPoSkill(obj, 10, 24240, PosX, PosY, PosZ)
	}
	if (id == 12)
	{
		ATPriestTurnPoSkill(obj, 13, 24240, PosX, PosY, PosZ)
	}
	if (id == 18)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 22)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 23 || id == 24 || id == 25)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 26)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 28)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 29)
	{
		ATPriestTurnPoSkill(obj, 30, 24240, PosX, PosY, PosZ)
	}
	if (id == 30)
	{
		ATPriestTurnPoSkill(obj, 31, 24240, PosX, PosY, PosZ)
	}
	if (id == 31)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 32)
	{
		ATPriestTurnPoSkill(obj, 33, 24240, PosX, PosY + 150, PosZ)
	}
	if (id == 33)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 34)
	{
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(35);
		sq_SendCreatePassiveObjectPacketPos(obj, 24240, 0, PosX, PosY, PosZ);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(39);
		sq_SendCreatePassiveObjectPacketPos(obj, 24240, 0, PosX, PosY, PosZ);
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 35)
	{
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(36);
		sq_SendCreatePassiveObjectPacketPos(obj, 24240, 0, PosX, PosY, PosZ);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(40);
		sq_SendCreatePassiveObjectPacketPos(obj, 24240, 0, PosX, PosY, PosZ);
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 37)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 38)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 39)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 41)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 42)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 43)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 45)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 46)
	{
		FLAG_PASSIVE_CREATE_BRIONAC_C = 1;
		print("Over 46\n\r");
	}
	if (id == 47)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 51)
	{
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(54);
		sq_SendCreatePassiveObjectPacketPos(obj, 24240, 0, PosX, PosY, PosZ);
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 52)
	{
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(53);
		sq_SendCreatePassiveObjectPacketPos(obj, 24240, 0, PosX, PosY, PosZ);
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 58)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 61) {
		local state = obj.getVar("state").get_vector(0);

		if (state == 11) {
			obj.getVar("end").set_vector(0, 1);
		}

	}
	if (id == 62)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 63)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 101)
	{
		local holyFlame = obj.getVar("subType").get_vector(0);
		if(holyFlame > 0)
		{
			local ani = sq_CreateAnimation("", "passiveobject/character/atpriest/animation/atjudgmentblow/fireconfession/endbottom_02.ani");
			local pooledObj = sq_CreatePooledObject(ani, true);
			pooledObj.setCurrentPos(PosX, PosY - 1, 0);
			pooledObj.setCurrentDirection(obj.getDirection());
			sq_AddObject(obj, pooledObj, 2, false);
		}
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 110 || id == 115)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 112)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 113)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 116)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 117)
	{
		local state = obj.getVar("wheelstate").get_vector(0);
		
		if(state == 11)
		{
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}
	if (id == 118)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
	if (id == 200 || id == 201)
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
}

function destroy_po_diluo_atpriest(obj) {
	if(!obj) return;
	local id = obj.getVar("id").get_vector(0);
	if (id == 60) {
		setAnimationDiableMiracleLightning(obj);
	}
}

function onDestroyObject_po_diluo_atpriest(obj, object) {
	if (!obj) return;
	local id = obj.getVar("id").get_vector(0);
	if (id == 60) {
		if (!obj.isValid())
			return;
		local state = obj.getVar("state").get_vector(0);
		if (state != 11 && state != 10) {
			return;
		}
		if (obj.getVar("cl").get_obj_vector_size() == 0) {
			obj.getVar("nograb").set_vector(0, 1);
		}
		local index = getDestroyObjectByCIObjectIndex(obj, object);
		if (index != -1) {
			setDiableAnimationCIObject(obj, index);
		}
		obj.sq_var.remove_obj_vector(object);
		obj.getVar("cl").remove_obj_vector(object);
		if (obj.isMyControlObject()) {
			if (state == 10) {
				if (!obj.sq_var.get_obj_vector_size()) {
					local pIntVec = sq_GetGlobalIntVector();
					sq_IntVectorClear(pIntVec);
					sq_IntVectorPush(pIntVec, 0);
					obj.addSetStatePacket(11, pIntVec, STATE_PRIORITY_AUTO, false, "");
				}
			}
		}
	}
	else if(id == 61){
		obj.sq_var.remove_obj_vector(object);
	}
}

/*function onChangeSkillEffect_po_diluo_atpriest(obj, skillIndex, receiveData)
{
	if(!obj) return;
	local id = receiveData.readWord();
	if(id == 0)
	{

	}
}*/  