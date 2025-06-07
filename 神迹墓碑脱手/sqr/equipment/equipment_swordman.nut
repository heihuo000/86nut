function isUsableItem_Swordman(obj, itemIndex) {
	if (!sq_IsInBattle()) {
		isUsableItem_AllGrowJob(obj, itemIndex);
	}
	local size = obj.getVar("itemIndex").size_vector();
	for (local i = 0; i < size; ++i) {
		local isSaved = false;
		for (local i = 0; i < size; ++i) {
			local index = obj.getVar("itemIndex").get_vector(i);
			if (index == itemIndex) {
				isSaved = true;
			}
		}
		local index = obj.getVar("itemIndex").get_vector(i);
		if (index == i && !isSaved) {
			obj.getVar("itemIndex").set_vector(i, itemIndex);
		}
	}
	return duegonUsableItem(itemIndex);
}

function drawMainCustomUI_Swordman(obj) {
	if (!obj) return;
	obj.getVar("itemIndex").clear_vector();
	local slotNum = 6;
	for (local i = 0; i < slotNum; ++i) {
		obj.getVar("itemIndex").push_vector(i);
	}

	drawNewDamageUI_AllGrowJob(obj);

}

function procAppend_Swordman(obj) {
	if (!obj) return 0;

	procAppend_AllGrowJob(obj);
	
	setMyCharacterNoShake(obj);
	
	procAppend_Flowmind_Comminterrupt(obj);

	if (sq_GetSkillLevel(obj, 123) > 0 && sq_getGrowType(obj) == 0) {
		//obj.setSkillCommandEnable(69,true);
		procAppend_SwordGhostBackstepCut(obj);
		procSKILL_SWORD_GHOST_7(obj);
		procSKILL_SWORD_BACKJUMP(obj);
		procSKILL_SWORD_10_ONE_ATTACK(obj);
		procSKILL_SWORD_12_ONE_ATTACK1(obj);
		procSKILL_SWORD_12_ONE_ATTACK2(obj);
		procSKILL_SWORD_12_ONE_ATTACK3(obj);
		procSKILL_SWORD_12_ONE_ATTACK4(obj);
		procSKILL_SWORD_15_ATTACK(obj);
		procSKILL_SWORD_16_ATTACK(obj);
		procSKILL_SWORD_17_ATTACK1(obj);
		procSKILL_SWORD_17_ATTACK2(obj);
		procSKILL_SWORD_20_ATTACK(obj);
		procSKILL_SWORD_21_ATTACK1(obj);
		procSKILL_SWORD_21_ATTACK2(obj);
		procSKILL_SWORD_21_ATTACK3(obj);
		procSKILL_SWORD_14_ATTACK1(obj);
		procSKILL_SWORD_14_ATTACK2(obj);
		procSKILL_SWORD_13_ATTACK1(obj);
		procSKILL_SWORD_13_ATTACK2(obj);
		procSKILL_SWORD_13_ATTACK3(obj);
		procSKILL_SWORD_13_ATTACK4(obj);
		procSKILL_SWORD_11_GHOST_ATTACK(obj);
	}
	local isAppend1;
	local isAppend2;
	local isAppend3;
	local isAppend4;

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000101.nut");
	if (!isAppend1) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for (local i = 0; i < size; ++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if (itemIndex == 100000101) {
				isInQuickSlot = true;
			}
		}
		if (isInQuickSlot) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000101.nut", true);
		}
	}
	else if (isAppend1) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for (local i = 0; i < size; ++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if (itemIndex == 100000101) {
				isInQuickSlot = true;
			}
		}
		if (!isInQuickSlot) {
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000101.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000102.nut");
	if (!isAppend1) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for (local i = 0; i < size; ++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if (itemIndex == 100000102) {
				isInQuickSlot = true;
			}
		}
		if (isInQuickSlot) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000102.nut", true);
		}
	}
	else if (isAppend1) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for (local i = 0; i < size; ++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if (itemIndex == 100000102) {
				isInQuickSlot = true;
			}
		}
		if (!isInQuickSlot) {
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000102.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000103.nut");
	if (!isAppend1) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for (local i = 0; i < size; ++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if (itemIndex == 100000103) {
				isInQuickSlot = true;
			}
		}
		if (isInQuickSlot) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000103.nut", true);
		}
	}
	else if (isAppend1) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for (local i = 0; i < size; ++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if (itemIndex == 100000103) {
				isInQuickSlot = true;
			}
		}
		if (!isInQuickSlot) {
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000103.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000104.nut");
	if (!isAppend1) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for (local i = 0; i < size; ++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if (itemIndex == 100000104) {
				isInQuickSlot = true;
			}
		}
		if (isInQuickSlot) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000104.nut", true);
		}
	}
	else if (isAppend1) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for (local i = 0; i < size; ++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if (itemIndex == 100000104) {
				isInQuickSlot = true;
			}
		}
		if (!isInQuickSlot) {
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000104.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000105.nut");
	if (!isAppend1) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for (local i = 0; i < size; ++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if (itemIndex == 100000105) {
				isInQuickSlot = true;
			}
		}
		if (isInQuickSlot) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000105.nut", true);
		}
	}
	else if (isAppend1) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for (local i = 0; i < size; ++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if (itemIndex == 100000105) {
				isInQuickSlot = true;
			}
		}
		if (!isInQuickSlot) {
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000105.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000106.nut");
	if (!isAppend1) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for (local i = 0; i < size; ++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if (itemIndex == 100000106) {
				isInQuickSlot = true;
			}
		}
		if (isInQuickSlot) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000106.nut", true);
		}
	}
	else if (isAppend1) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for (local i = 0; i < size; ++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if (itemIndex == 100000106) {
				isInQuickSlot = true;
			}
		}
		if (!isInQuickSlot) {
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000106.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000107.nut");
	if (!isAppend1) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for (local i = 0; i < size; ++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if (itemIndex == 100000107) {
				isInQuickSlot = true;
			}
		}
		if (isInQuickSlot) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000107.nut", true);
		}
	}
	else if (isAppend1) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for (local i = 0; i < size; ++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if (itemIndex == 100000107) {
				isInQuickSlot = true;
			}
		}
		if (!isInQuickSlot) {
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000107.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000108.nut");
	if (!isAppend1) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for (local i = 0; i < size; ++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if (itemIndex == 100000108) {
				isInQuickSlot = true;
			}
		}
		if (isInQuickSlot) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000108.nut", true);
		}
	}
	else if (isAppend1) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for (local i = 0; i < size; ++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if (itemIndex == 100000108) {
				isInQuickSlot = true;
			}
		}
		if (!isInQuickSlot) {
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000108.nut");
			appendage.setValid(false);
		}
	}
	
	local iEnterSkill = obj.sq_IsEnterSkill(44);
	if(iEnterSkill != -1 && obj.sq_GetSkillLevel(SKILL_MONARCH) > 0)
	{
		local UseSkill = obj.sq_IsUseSkill(44);
		if(UseSkill)
		{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(44);
			obj.sq_AddSetStatePacket(101, STATE_PRIORITY_IGNORE_FORCE, true);
		}
	}
}