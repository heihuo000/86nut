

function setCustomData_po_swordman_baynk(obj, receiveData)
{
	if(!obj) return;

	local id = receiveData.readDword();
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	obj.getVar("id").clear_vector();
	obj.getVar("id").push_vector(id);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());
	switch(id)
	{
		case 1://ğ¯ìéù»÷×éÄ
			local ani = sq_CreateAnimation("","passiveobject/baynk/swordman/animation/momentaryslash/drawingsword_none_under.ani");
			SMals_ani(obj, "passiveobject/baynk/swordman/animation/momentaryslash/drawingsword_blue_ldodge_under.ani", 0, 0, 0, sq_GetIntData(parentChr, 9, 6), 1.0, 0, 0, 0);
			obj.sq_PlaySound("SWD_BAL_END");
			obj.setCurrentAnimation(ani);

			sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 1));
			local targetCount = receiveData.readDword();
			local damageBonus = 0;
			if(targetCount > 0 && targetCount <= 5)
				damageBonus = sq_GetIntData(parentChr, 9, targetCount)/10.0;
			else
				damageBonus = 0;
			local attackBonusRate = parentChr.sq_GetBonusRateWithPassive(9, -1, 0, 1.0);
			attackBonusRate = attackBonusRate / 100.0 * (100 + damageBonus.tofloat());
			sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackBonusRate.tointeger());

			local size = 1.0;
			local sizeRate = sq_GetIntData(parentChr, 9, 6);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);
		break;
		case 2://÷¼Óï÷åüù
			local ani = sq_CreateAnimation("","passiveobject/baynk/swordman/animation/momentaryslash/drawingsword_none_under.ani");
			SMals_ani(obj, "passiveobject/baynk/swordman/animation/momentaryslash/drawingsword_red_ldodge_under.ani", 0, 0, 0, sq_GetIntData(parentChr, 9, 6), 1.0, 0, 0, 0);
			obj.sq_PlaySound("SWD_BAL_END");
			obj.setCurrentAnimation(ani);

			sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 2));
			local attackBonusRate = parentChr.sq_GetBonusRateWithPassive(13, -1, 4, 1.0);
			sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackBonusRate);

			local size = 1.0;
			local sizeRate = sq_GetIntData(parentChr, 9, 6);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);
		break;
		case 3://?????? ????
			local ani = sq_CreateAnimation("","passiveobject/baynk/swordman/animation/momentaryslash/drawingsword_none_under.ani");
			SMals_ani(obj, "passiveobject/baynk/swordman/animation/momentaryslash/drawingsword_white_ldodge_under.ani", 0, 0, 0, sq_GetIntData(parentChr, 9, 6), 1.0, 0, 0, 0);
			obj.sq_PlaySound("SWD_BAL_END");
			obj.setCurrentAnimation(ani);

			sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 2));
			local attackBonusRate = parentChr.sq_GetBonusRateWithPassive(4, -1, 8, 1.0);
			sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackBonusRate);

			local size = 1.0;
			local sizeRate = sq_GetIntData(parentChr, 9, 6);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			local skill_level = sq_GetSkillLevel(parentChr, 4);
			local act_rate = sq_GetLevelData(parentChr, 4, 9, skill_level);
			local act_level = sq_GetLevelData(parentChr, 4, 10, skill_level);
			local act_time = sq_GetLevelData(parentChr, 4, 11, skill_level);
			local act_damage = sq_GetLevelData(parentChr, 4, 12, skill_level);
			sq_SetChangeStatusIntoAttackInfo(sq_GetCurrentAttackInfo(obj), 0, ACTIVESTATUS_LIGHTNING, act_rate, act_level, act_time, act_damage);
		break;
		case 4://Ó­Ëü÷åüù
			local ani = sq_CreateAnimation("","passiveobject/character/swordman/animation/momentaryslash/start.ani");
			obj.setCurrentAnimation(ani);

			sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 1));
			local attackPower = parentChr.sq_GetPowerWithPassive(9, -1, 1, -1, 1.0);
			sq_SetCurrentAttackPower(sq_GetCurrentAttackInfo(obj), attackPower);

			local size = 1.0;
			local sizeRate = sq_GetIntData(parentChr, 9, 6);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);

			if(obj.getDirection() == ENUM_DIRECTION_LEFT)
				sq_SetVelocity(obj, 0, -sq_GetIntData(parentChr, 12, 4).tofloat());
			if(obj.getDirection() == ENUM_DIRECTION_RIGHT)
				sq_SetVelocity(obj, 0, sq_GetIntData(parentChr, 12, 4).tofloat());
		break;
		case 5://?????? ????
			local ani = sq_CreateAnimation("","passiveobject/baynk/swordman/animation/momentaryslash/drawingsword_none_under.ani");
			SMals_ani(obj, "passiveobject/baynk/swordman/animation/momentaryslash/drawingsword_blue_ldodge_under.ani", 0, 0, 0, sq_GetIntData(parentChr, 9, 6), 1.0, 0, 0, 0);
			obj.sq_PlaySound("SWD_BAL_END");
			obj.setCurrentAnimation(ani);

			sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 1));

			local targetCount = receiveData.readDword();
			local damageBonus = 0;
			if(targetCount > 0 && targetCount <= 5)
				damageBonus = sq_GetIntData(parentChr, 9, targetCount)/10;
			else
				damageBonus = 0;

			local stateTime = receiveData.readDword();
			stateTime = stateTime - sq_GetIntData(parentChr, 9, 0);
			local heavySwordDamageBonus = sq_GetIntData(parentChr, 14, 7);
			print( " heavySwordDamageBonus:" + heavySwordDamageBonus);
			local finalDamageBonus = sq_GetUniformVelocity(0, heavySwordDamageBonus, stateTime, sq_GetIntData(parentChr, 14, 8));
			print( " finalDamageBonus:" + finalDamageBonus);
			local attackBonusRate = parentChr.sq_GetBonusRateWithPassive(9, -1, 0, 1.0);
			attackBonusRate = attackBonusRate / 100.0 * (100 + damageBonus.tofloat() + finalDamageBonus.tofloat());
			print( " attackBonusRate:" + attackBonusRate);
			sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), attackBonusRate.tointeger());

			local size = 1.0;
			local sizeRate = sq_GetIntData(parentChr, 9, 6);
			sizeRate = sizeRate.tofloat() / 100.0;
			ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
			ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
			sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);
		break;
	}
}