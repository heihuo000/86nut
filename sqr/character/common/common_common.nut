increase_damage_rate <- 5 //%
enable_shoucuo_id <- 10001
EMPTY_SLOT_NUMBER <- 0

function getCurrentModuleDamageRate_SwordMan(obj) {
	local rate = 100;
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 0, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 1, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(92) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 92, 1, obj.sq_GetSkillLevel(92)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(250) > 0 && sq_getGrowType(obj) == 4) {
		rate = rate * (100 + sq_GetLevelData(obj, 250, 3, obj.sq_GetSkillLevel(250)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(90) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 90, 4, obj.sq_GetSkillLevel(90)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(117) > 0 && sq_getGrowType(obj) == 3) {
		rate = rate * (100 + sq_GetLevelData(obj, 117, 0, obj.sq_GetSkillLevel(117)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(248) > 0 && sq_getGrowType(obj) == 1) {
		rate = rate * (100 + sq_GetLevelData(obj, 248, 24, obj.sq_GetSkillLevel(248)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(91) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 91, 1, obj.sq_GetSkillLevel(91)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(89) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 89, 2, obj.sq_GetSkillLevel(89)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(10) > 0 && sq_getGrowType(obj) == 2) {
		rate = rate * (100 + sq_GetLevelData(obj, 10, 0, obj.sq_GetSkillLevel(10)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(171) > 0 && sq_getGrowType(obj) == 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 171, 0, obj.sq_GetSkillLevel(171)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_ghoststep.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 18, 10, obj.sq_GetSkillLevel(18)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_wavemark.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 47, 6, obj.sq_GetSkillLevel(47)) / 10) / 100;
	}
	return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_ATFighter(obj) {

	local rate = 100;
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 0, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 1, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/lieyanfenbu/ap_lieyanfenbuzengshang_1.nut")) {

		local skillLevel = sq_GetSkillLevel(obj, 41);
		local addRate = sq_GetLevelData(obj, 41, 9, skillLevel);
		local pSkillIndex = obj.getCurrentSkillIndex();
		if (pSkillIndex == 82) rate = rate * (100 + addRate) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/lieyanfenbu/ap_lieyanfenbuzengshang_2.nut")) {

		local skillLevel = sq_GetSkillLevel(obj, 41);
		local addRate = sq_GetLevelData(obj, 41, 9, skillLevel);
		local pSkillIndex = obj.getCurrentSkillIndex();
		if (pSkillIndex == 224) rate = rate * (100 + addRate) / 100;
	}
	if (obj.sq_GetSkillLevel(237) > 0 && sq_getGrowType(obj) == 2) {
		rate = rate * (100 + sq_GetLevelData(obj, 237, 0, obj.sq_GetSkillLevel(237)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(65) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 65, 2, obj.sq_GetSkillLevel(65)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(253) > 0 && sq_getGrowType(obj) == 1) {
		rate = rate * (100 + sq_GetLevelData(obj, 253, 8, obj.sq_GetSkillLevel(253)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/appendage/ap_attackspeedup.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 31, 3, obj.sq_GetSkillLevel(31)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(114) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 114, 3, obj.sq_GetSkillLevel(114)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(236) > 0 && sq_getGrowType(obj) == 3) {
		rate = rate * (100 + sq_GetLevelData(obj, 236, 1, obj.sq_GetSkillLevel(236)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(116) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 116, 3, obj.sq_GetSkillLevel(116)) / 10) / 100;
	}
	local aotianzhinu = sq_GetSkillLevel(obj, SKILL_AO_TIAN_ZHI_NU);
	if (aotianzhinu > 0) {
		local baseRate = sq_GetLevelData(obj, SKILL_AO_TIAN_ZHI_NU, 0, aotianzhinu);
		local championRate = sq_GetLevelData(obj, SKILL_AO_TIAN_ZHI_NU, 1, aotianzhinu);
		local bossRate = sq_GetLevelData(obj, SKILL_AO_TIAN_ZHI_NU, 2, aotianzhinu);
		if (AO_TIAN_ZHI_NU_SITUATION == 1) return (baseRate.tofloat() + championRate.tofloat() + 100.0) / 100.0;
		if (AO_TIAN_ZHI_NU_SITUATION == 2) return (baseRate.tofloat() + bossRate.tofloat() + 100.0) / 100.0;
	}
	if (obj.sq_GetSkillLevel(235) > 0 && sq_getGrowType(obj) == 4) {
		rate = rate * (100 + sq_GetLevelData(obj, 235, 0, obj.sq_GetSkillLevel(235)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(115) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 115, 1, obj.sq_GetSkillLevel(115)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/appendage/ap_doublethrow.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 43, 6, obj.sq_GetSkillLevel(43)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/appendage/ap_definitegrab.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 50, 4, obj.sq_GetSkillLevel(50)) / 10) / 100;
	}
	return rate.tofloat() / 100.0;

}

function getCurrentModuleDamageRate_ATGunner(obj) {
	local rate = 100;
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 0, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 1, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(18) > 0 && sq_getGrowType(obj) == 2) {
		rate = rate * (100 + sq_GetLevelData(obj, 18, 5, obj.sq_GetSkillLevel(18)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(93) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 93, 2, obj.sq_GetSkillLevel(93)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(64) > 0 && sq_getGrowType(obj) == 1) {
		rate = rate * (100 + sq_GetLevelData(obj, 64, 2, obj.sq_GetSkillLevel(64)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(65) > 0 && sq_getGrowType(obj) == 4) {
		rate = rate * (100 + sq_GetLevelData(obj, 65, 0, obj.sq_GetSkillLevel(65)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atgunner/appendage/ap_stylish.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 250, 4, obj.sq_GetSkillLevel(250)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(94) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 94, 10, obj.sq_GetSkillLevel(94)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(99) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 99, 26, obj.sq_GetSkillLevel(99)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(67) > 0 && sq_getGrowType(obj) == 3) {
		rate = rate * (100 + sq_GetLevelData(obj, 67, 3, obj.sq_GetSkillLevel(67)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(95) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 95, 4, obj.sq_GetSkillLevel(95)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atgunner/appendage/ap_subweaponstuckdown.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 62, 3, obj.sq_GetSkillLevel(62)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atgunner/appendage/ap_robotics.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 46, 5, obj.sq_GetSkillLevel(46)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atgunner/overcharge/ap_overcharge.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 252, 3, obj.sq_GetSkillLevel(252)) / 10) / 100;
	}
	return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_ATMage(obj) {
	local rate = 100;
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 0, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 1, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(50) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 50, 5, obj.sq_GetSkillLevel(50)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(51) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 51, 2, obj.sq_GetSkillLevel(51)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(198) > 0 && sq_getGrowType(obj) == 2) {
		rate = rate * (100 + sq_GetLevelData(obj, 198, 0, obj.sq_GetSkillLevel(198)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(199) > 0 && sq_getGrowType(obj) == 1) {
		rate = rate * (100 + sq_GetLevelData(obj, 199, 0, obj.sq_GetSkillLevel(199)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(34) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 34, 0, obj.sq_GetSkillLevel(34)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "Character/ATMage/ManaBurst/ap_ATMage_ManaBurst.nut")) {
		//atmage delusion character increase attackRate
		local atkRate = sq_GetLevelData(obj, 28, 3, obj.sq_GetSkillLevel(28)) / 10;
		rate = rate * (100 + atkRate) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atmage/delusion/ap_delusion.nut")) {
		//atmage delusion character increase attackRate
		local atkRate = sq_GetLevelData(obj, 158, 1, obj.sq_GetSkillLevel(158));
		rate = rate * (100 + atkRate) / 100;
	}
	if (obj.sq_GetSkillLevel(119) > 0) {
		local atkRate = sq_GetLevelData(obj, 119, 0, obj.sq_GetSkillLevel(119)) / 10;
		rate = rate * (100 + atkRate) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "Character/ATMage/Resonance/ap_ATMage_element_attack_water.nut")) {
		local atkRate = sq_GetLevelData(obj, 31, 3, obj.sq_GetSkillLevel(31)) / 10;
		rate = rate * (100 + atkRate) / 100;
	}
	local voidObj = getParticleVoid(obj);
	if (voidObj && voidObj.getVar("state").get_vector(0) == 0) {
		local atkRate = sq_GetLevelData(obj, 160, 0, obj.sq_GetSkillLevel(160)) / 10;
		rate = rate * (100 + atkRate) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atmage/bloodfire/ap_bloodfire.nut")) {
		//atmage bloodMage character increase attackRate
		local atkRate = sq_GetLevelData(obj, 97, 1, obj.sq_GetSkillLevel(97)) / 10;
		rate = rate * (100 + atkRate) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atmage/bloodone/ap_bloodone2.nut")) {
		local atkRate = sq_GetLevelData(obj, 122, 0, obj.sq_GetSkillLevel(122)) / 10;
		rate = rate * (100 + atkRate) / 100;

	}
	if (obj.sq_GetSkillLevel(170) > 0 && sq_getGrowType(obj) == 4) {
		rate = rate * (1000 + sq_GetLevelData(obj, 170, 3, obj.sq_GetSkillLevel(170))) / 1000;
	}
	if (sq_GetSkillLevel(obj, 162) > 0 && sq_getGrowType(obj) == 0) {
		local stoneNum = getBreakSenseMagicStoneCount(obj);
		local atkRate = sq_GetLevelData(obj, 162, 2, obj.sq_GetSkillLevel(162)) / 10;

		if (stoneNum == 2) {
			atkRate = sq_GetLevelData(obj, 162, 3, obj.sq_GetSkillLevel(162)) / 10;
		}

		else if (stoneNum >= 3) {
			atkRate = sq_GetLevelData(obj, 162, 4, obj.sq_GetSkillLevel(162)) / 10;
		}

		rate = rate * (100 + atkRate) / 100;

	}
	if (sq_GetSkillLevel(obj, 161) > 0) {
		local stoneNum = getBreakSenseMagicStoneCount(obj);
		local atkRate = sq_GetLevelData(obj, 161, 1, obj.sq_GetSkillLevel(161)) / 10;
		if (stoneNum == 2) {
			atkRate = sq_GetLevelData(obj, 161, 3, obj.sq_GetSkillLevel(161)) / 10;
		}
		else if (stoneNum >= 3) {
			atkRate = sq_GetLevelData(obj, 161, 5, obj.sq_GetSkillLevel(161)) / 10;
		}

		rate = rate * (100 + atkRate) / 100;

	}
	if (sq_GetSkillLevel(obj, 164) > 0) {

		local atkRate = sq_GetLevelData(obj, 164, 0, obj.sq_GetSkillLevel(164)) / 10;
		rate = rate * (100 + atkRate) / 100;
	}

	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atmage/windbuff/ap_windbuff.nut")) {
		local atkRate = sq_GetLevelData(obj, 142, 1, obj.sq_GetSkillLevel(142)) / 10;
		rate = rate * (100 + atkRate) / 100;
		if (rate < 100) rate = 100;
	}
	return rate.tofloat() / 100.0;

}

function getCurrentModuleDamageRate_Fighter(obj) {
	local rate = 100;
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 0, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 1, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(123) > 0 && sq_getGrowType(obj) == 3) {
		rate = rate * (100 + sq_GetLevelData(obj, 123, 3, obj.sq_GetSkillLevel(123)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(122) > 0 && sq_getGrowType(obj) == 4) {
		rate = rate * (100 + sq_GetLevelData(obj, 122, 0, obj.sq_GetSkillLevel(122)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(65) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 65, 6, obj.sq_GetSkillLevel(65)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(124) > 0 && sq_getGrowType(obj) == 1) {
		rate = rate * (100 + sq_GetLevelData(obj, 124, 0, obj.sq_GetSkillLevel(124)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(125) > 0 && sq_getGrowType(obj) == 2) {
		rate = rate * (100 + sq_GetLevelData(obj, 125, 0, obj.sq_GetSkillLevel(125)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(66) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 66, 2, obj.sq_GetSkillLevel(66)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(70) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 70, 2, obj.sq_GetSkillLevel(70)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/fighter/appendage/ap_attackspeedup.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 31, 3, obj.sq_GetSkillLevel(31)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(72) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 72, 6, obj.sq_GetSkillLevel(72)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/fighter/appendage/ap_enchantpoison.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 38, 5, obj.sq_GetSkillLevel(38)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/fighter/appendage/ap_definitegrab.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 50, 2, obj.sq_GetSkillLevel(50)) / 10) / 100;
	}
	return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_Gunner(obj) {
	local rate = 100;
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 0, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 1, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/gunner/appendage/ap_stylish.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 248, 4, obj.sq_GetSkillLevel(248)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(126) > 0 && sq_getGrowType(obj) == 1 && obj.getWeaponSubType() == 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 126, 2, obj.sq_GetSkillLevel(126)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(129) > 0 && sq_getGrowType(obj) == 1) {
		rate = rate * (100 + sq_GetLevelData(obj, 129, 0, obj.sq_GetSkillLevel(129)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(66) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 66, 3, obj.sq_GetSkillLevel(66)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(128) > 0 && sq_getGrowType(obj) == 4) {
		rate = rate * (100 + sq_GetLevelData(obj, 128, 0, obj.sq_GetSkillLevel(128)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(69) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 69, 0, obj.sq_GetSkillLevel(69)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(18) > 0 && sq_getGrowType(obj) == 2) {
		rate = rate * (100 + sq_GetLevelData(obj, 18, 5, obj.sq_GetSkillLevel(18)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(65) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 65, 5, obj.sq_GetSkillLevel(65)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(127) > 0 && sq_getGrowType(obj) == 3) {
		rate = rate * (100 + sq_GetLevelData(obj, 127, 0, obj.sq_GetSkillLevel(127)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(111) > 0 && sq_getGrowType(obj) == 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 111, 0, obj.sq_GetSkillLevel(111)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(68) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 68, 6, obj.sq_GetSkillLevel(68)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/gunner/appendage/ap_subweaponstuckdown.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 62, 3, obj.sq_GetSkillLevel(62)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/gunner/appendage/ap_robotics.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 46, 5, obj.sq_GetSkillLevel(46)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/gunner/overcharge/ap_overcharge.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 252, 3, obj.sq_GetSkillLevel(252)) / 10) / 100;
	}
	rate = getBaseAttackDamageRate(obj, rate);
	return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_Mage(obj) {
	local rate = 100;
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 0, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 1, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(84) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 84, 18, obj.sq_GetSkillLevel(84)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(96) > 0 && sq_getGrowType(obj) == 3) {
		rate = rate * (100 + sq_GetLevelData(obj, 96, 4, obj.sq_GetSkillLevel(96)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(167) > 0 && sq_getGrowType(obj) == 1) {
		rate = rate * (100 + sq_GetLevelData(obj, 167, 0, obj.sq_GetSkillLevel(167)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(73) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 73, 3, obj.sq_GetSkillLevel(73)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(110) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 110, 3, obj.sq_GetSkillLevel(110)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(168) > 0 && sq_getGrowType(obj) == 4) {
		rate = rate * (100 + sq_GetLevelData(obj, 168, 0, obj.sq_GetSkillLevel(168)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(75) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 75, 2, obj.sq_GetSkillLevel(75)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(170) > 0 && sq_getGrowType(obj) == 2) {
		rate = rate * (100 + sq_GetLevelData(obj, 170, 0, obj.sq_GetSkillLevel(170)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(48) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 48, 4, obj.sq_GetSkillLevel(48)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/mage/appendage/ap_chaserautocreate.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 40, 6, obj.sq_GetSkillLevel(40)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_mage/sorceressbuff/ap_sorceressbuff_self.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 128, 1, obj.sq_GetSkillLevel(128)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_mage/favorite/ap_favorite.nut") && obj.sq_GetSkillLevel(94) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 94, 7, obj.sq_GetSkillLevel(94)) / 10) / 100;
	}
	return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_Priest(obj) {
	local rate = 100;
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 0, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 1, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(86) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 86, 8, obj.sq_GetSkillLevel(86)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(250) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 250, 6, obj.sq_GetSkillLevel(250)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(95) > 0 && sq_getGrowType(obj) == 2) {
		rate = rate * (100 + sq_GetLevelData(obj, 95, 0, obj.sq_GetSkillLevel(95)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(94) > 0 && sq_getGrowType(obj) == 3) {
		rate = rate * (100 + sq_GetLevelData(obj, 94, 0, obj.sq_GetSkillLevel(94)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(89) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 89, 2, obj.sq_GetSkillLevel(89)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(127) > 0 && sq_getGrowType(obj) == 4) {
		rate = rate * (100 + sq_GetLevelData(obj, 127, 0, obj.sq_GetSkillLevel(127)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(87) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 87, 2, obj.sq_GetSkillLevel(87)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/lanquan/dryout/ap_dryout_buff.nut")) {
		local level = sq_GetSkillLevel(obj, 87);
		local value = obj.sq_GetLevelData(87, 2, level);
		rate = rate * (100 + value) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/lanquan/sway/ap_sway.nut")) {
		local level = sq_GetSkillLevel(obj, 2);
		local value = 20;
		rate = rate * (100 + value) / 100;
	}
	return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_Thief(obj) {
	local rate = 100;
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 0, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 1, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(93) > 0 && sq_getGrowType(obj) == 1) {
		rate = rate * (100 + sq_GetLevelData(obj, 93, 0, obj.sq_GetSkillLevel(93)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(94) > 0 && sq_getGrowType(obj) == 2) {
		rate = rate * (100 + sq_GetLevelData(obj, 94, 4, obj.sq_GetSkillLevel(94)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(58) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 58, 5, obj.sq_GetSkillLevel(58)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(56) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 56, 5, obj.sq_GetSkillLevel(56)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(234) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 234, 1, obj.sq_GetSkillLevel(234)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_thief/wuqi/ap_wuqi.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 230, 4, obj.sq_GetSkillLevel(230)) / 10) / 100;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/thief/3_kunoich/firehide/ap_firehide.nut")) {
		rate = rate * (100 + sq_GetLevelData(obj, 78, 0, obj.sq_GetSkillLevel(78))) / 100;
	}
	return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_ATPriest(obj) {
	local rate = 100;
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 0, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 1, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(18) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 18, 0, obj.sq_GetSkillLevel(18)) / 10) / 100;
	}
	if(obj.sq_GetSkillLevel(82) > 0)
	{
		rate = rate * (100 + sq_GetLevelData(obj, 82, 6, obj.sq_GetSkillLevel(82)) / 10) / 100;
	}
	if(obj.sq_GetSkillLevel(43) > 0)
	{
		rate = rate * (100 + sq_GetLevelData(obj, 43, 4, obj.sq_GetSkillLevel(43)) / 10) / 100;
	}
	if(obj.sq_GetSkillLevel(39) > 0)
	{
		rate = rate * (100 + sq_GetLevelData(obj, 39, 1, obj.sq_GetSkillLevel(39)) / 10) / 100;
	}
	if(obj.sq_GetSkillLevel(73) > 0)
	{
		rate = rate * (100 + sq_GetLevelData(obj, 73, 0, obj.sq_GetSkillLevel(73)) / 10) / 100;
	}
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atpriest/judge/burnatthestake/ap_burnatthestakebuffb.nut"))
	{
		rate = rate * (100 + sq_GetLevelData(obj, 250, 4, obj.sq_GetSkillLevel(250)) / 10) / 100;
	}
/*	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atpriest/3_sorceress/prayfororacle/ap_prayfororacle.nut"))
	{
		rate = rate * (100 + sq_GetLevelData(obj, 10, 0, obj.sq_GetSkillLevel(10)) / 10) / 100;
	}*/
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atpriest/3_sorceress/powerofthedragon/ap_powerofthedragon.nut"))
	{
		rate = rate * (100 + sq_GetLevelData(obj, 20, 0, obj.sq_GetSkillLevel(20)) / 10) / 100;
	}
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atpriest/blessofcourage/ap_blessofcourage.nut"))
	{
		rate = rate * (100 + sq_GetLevelData(obj, 78, 7, obj.sq_GetSkillLevel(78)) / 10) / 100;
	}
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atpriest/seducer/thesevendeadlysins/ap_damathesevendeadlysins.nut"))
	{
		rate = rate * (100 + sq_GetLevelData(obj, 139, 16, obj.sq_GetSkillLevel(139)) / 10) / 100;
	}
	if(obj.sq_GetSkillLevel(135) > 0)
	{
		rate = rate * (100 + sq_GetLevelData(obj, 135, 0, obj.sq_GetSkillLevel(135)) / 10) / 100;
	}
	if(obj.sq_GetSkillLevel(133) > 0)
	{
		rate = rate * (100 + sq_GetLevelData(obj, 133, 2, obj.sq_GetSkillLevel(133)) / 10) / 100;
	}
	return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate_ATSwordMan(obj) {
	local rate = 100;
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 0, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	if (obj.sq_GetSkillLevel(169) > 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 169, 1, obj.sq_GetSkillLevel(169)) / 10) / 100;
	}
	return rate.tofloat() / 100.0;
}

function getCurrentModuleDamageRate(obj) {
	if (!obj) return 1.0;
	setEmptySlotNumber(obj);
	local rate = getSkillDamageRateIncrease(obj);
	rate = (rate + getIncreaseDamageRateByEmptySlotNumber(obj)) * (100 + getEquipmentIncrease(obj)) / 100;

	return rate.tofloat();
}

function getSkillDamageRateIncrease(obj) {
	local rate = 1.0;
	if (sq_getJob(obj) == 0) {
		rate = getCurrentModuleDamageRate_SwordMan(obj);
	}
	else if (sq_getJob(obj) == 1) {
		rate = getCurrentModuleDamageRate_Fighter(obj);
	}
	else if (sq_getJob(obj) == 2) {
		rate = getCurrentModuleDamageRate_Gunner(obj);
	}
	else if (sq_getJob(obj) == 3) {
		rate = getCurrentModuleDamageRate_Mage(obj);
	}
	else if (sq_getJob(obj) == 4) {
		rate = getCurrentModuleDamageRate_Priest(obj);
	}
	else if (sq_getJob(obj) == 5) {
		rate = getCurrentModuleDamageRate_ATGunner(obj);
	}
	else if (sq_getJob(obj) == 6) {
		rate = getCurrentModuleDamageRate_Thief(obj);
	}
	else if (sq_getJob(obj) == 7) {
		rate = getCurrentModuleDamageRate_ATFighter(obj);
	}
	else if (sq_getJob(obj) == 8) {
		rate = getCurrentModuleDamageRate_ATMage(obj);
	}
	else if (sq_getJob(obj) == 9) {
		rate = getCurrentModuleDamageRate_ATPriest(obj);
	}
	else if (sq_getJob(obj) == 10) {
		rate = getCurrentModuleDamageRate_ATSwordMan(obj);
	}
	return rate;
}

function getEquipmentIncrease(obj) {
	local var = obj.sq_GetIntData(169, 18);

	return var.tofloat() / 10.0;
}

function setEmptySlotNumber(obj) {
	local rate = 1.0 + getIncreaseDamageRateByEmptySlotNumber(obj);
	local id = obj.sq_GetIntData(169, 19);

	if (id == enable_shoucuo_id) {
		local skillmgr = obj.getSkillManager();
		local emptySlotNum = 0;
		for (local i = 0; i < 6; ++i) {
			local skill = skillmgr.getSkill(i);
			if (!skill) emptySlotNum += 1;
		}
		for (local i = 198; i < 204; ++i) {
			local skill = skillmgr.getSkill(i);
			if (!skill) emptySlotNum += 1;
		}
		EMPTY_SLOT_NUMBER = emptySlotNum;
	}
	else EMPTY_SLOT_NUMBER = 0;

	return rate;
}

function getIncreaseDamageRateByEmptySlotNumber(obj) {
	local sum = increase_damage_rate * EMPTY_SLOT_NUMBER;
	local addRate = sum.tofloat() / 100.0;
	return addRate;
}

function setMyCharacterNoShake(obj) {
	if (!obj) return;

	if (!obj.isMyControlObject()) return;

	local skill = sq_GetSkill(obj, 182);
	if (skill) {
		if (!skill.isSealFunction()) {
			sq_SetMyShake(obj, 0, 0);
		}
	}
}

function setMyCharacterNoShakeLearn(obj) {
	if (!obj) return;

	if (!obj.isMyControlObject()) return;

	local skill_level = sq_GetSkillLevel(obj, 253);
	if (skill_level > 0) {
		sq_SetMyShake(obj, 0, 0);
	}
}