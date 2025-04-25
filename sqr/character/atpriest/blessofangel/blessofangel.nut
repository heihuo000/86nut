
function checkExecutableSkill_BlessOfAngel(obj) {
	if (!obj) return false;
	
	local append = "character/atpriest/blessofangel/ap_blessofangel.nut";
	local appendage = CNSquirrelAppendage.sq_GetAppendage(obj, append);
	if (appendage) {
		BlessOfAngelbuff(obj);
		return true;
	}
	else if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, append)) 
	{
		BlessOfAngelbuff(obj);
		return true;
	}
	
	local isUse = obj.sq_IsUseSkill(SKILL_BLESS_OF_ANGEL);
	if (isUse) {
		local power = obj.sq_GetPowerWithPassive(SKILL_BLESS_OF_ANGEL, STATE_BLESS_OF_ANGEL, 1, -1, 1.0);
		local size = obj.sq_GetIntData(SKILL_BLESS_OF_ANGEL, 5);
		obj.getVar("BlessOfAngel").clear_vector();
		obj.getVar("BlessOfAngel").push_vector(1);
		obj.getVar("BlessOfAngel").push_vector(power);
		obj.getVar("BlessOfAngel").push_vector(size);
		
		if(obj.sq_GetState() == STATE_ARIA_OF_COURAGE || obj.sq_GetState() == STATE_ARIA_OF_REGENERATION)
		{
			setBlessOfAngelBuff(obj);
		}else{
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 0);
			obj.addSetStatePacket(STATE_BLESS_OF_ANGEL, pIntVec, STATE_PRIORITY_FORCE, false, "");
			return true;
		}
		
		return true;
	}
	return false;
}


function checkCommandEnable_BlessOfAngel(obj) {
	if (!obj) return false;
	return true;
}

function onSetState_BlessOfAngel(obj, state, datas, isResetTimer) {
	if (!obj) return;
	obj.sq_StopMove();
	local state = obj.sq_GetVectorData(datas, 0);
	local id = sq_GetObjectId(obj);
	obj.setSkillSubState(state);
	switch (state) {
		case 0:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_BLESS_OF_ANGEL_PHASE1_BODY);
			creblessofangel_phase1top_sparkle02(obj, 0, 0, 0)
			creblessofangel_phase1bottom_feather02(obj, 0, 0, 0)
			setBlessOfAngelBuff(obj);
			break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function BlessOfAngelbuff(obj) {
	CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/atpriest/blessofangel/ap_blessofangel.nut");
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i += 1) {
		local object = objectManager.getCollisionObject(i);
		local activeObj = sq_GetCNRDObjectToActiveObject(object);
		if (object && object.isObjectType(OBJECTTYPE_CHARACTER) && !obj.isEnemy(object) && !isSameObject(obj, object)) {
			CNSquirrelAppendage.sq_RemoveAppendage(activeObj, "character/atpriest/blessofangel/ap_blessofangel.nut");
		}
	}
}


function onEndCurrentAni_BlessOfAngel(obj) {
	local state = obj.getSkillSubState();
/*	local id = sq_GetObjectId(obj);
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);*/
	switch (state) {
		case 0:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			break;
	}
}

function setBlessOfAngelBuff(obj) {
	
	obj.sq_PlaySound("R_PW_BLESSANGEL");
	local skill_level = sq_GetSkillLevel(obj, SKILL_BLESS_OF_ANGEL);
	local time = sq_GetLevelData(obj, SKILL_BLESS_OF_ANGEL, 0, skill_level);
	local value0 = sq_GetLevelData(obj, SKILL_BLESS_OF_ANGEL, 2, skill_level); //wu def
	local value1 = sq_GetLevelData(obj, SKILL_BLESS_OF_ANGEL, 3, skill_level); //wu def
	local value2 = sq_GetLevelData(obj, SKILL_BLESS_OF_ANGEL, 4, skill_level); //wu def
	
	local power = obj.sq_GetPowerWithPassive(SKILL_BLESS_OF_ANGEL, STATE_BLESS_OF_ANGEL, 1, -1, 1.0);
	local subpower = obj.sq_GetPowerWithPassive(SKILL_BLESS_OF_ANGEL, STATE_BLESS_OF_ANGEL, 5, -1, 1.0);
	local size = obj.sq_GetIntData(SKILL_BLESS_OF_ANGEL, 5);
	

	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_BLESS_OF_ANGEL, false, "character/atpriest/blessofangel/ap_blessofangel.nut", false);
	appendage.sq_SetValidTime(time);
	appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_BLESS_OF_ANGEL, skill_level);
	appendage.getVar("blessofangelbuff").clear_vector();
	appendage.getVar("blessofangelbuff").push_vector(power);
	appendage.getVar("blessofangelbuff").push_vector(size);
	CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_BLESS_OF_ANGEL, false);
	
	appendage.setBuffIconImage(131); //刳?唑窆蒢婩艟BUFF迶爦ㄛNPK礜礗sprite_common_commoneffect
	local change_appendage = appendage.sq_getChangeStatus("BlessOfAngel");
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 0, false, 0, APID_COMMON);
	}
	if (change_appendage) {
		change_appendage.clearParameter();
		change_appendage.addParameter(10, false, value0.tofloat());
		change_appendage.addParameter(11, false, value1.tofloat());
		change_appendage.addParameter(12, false, value2.tofloat());
		creblessofangel_phase2starteffect_shock(obj, 0, 0, 150)
		creblessofangel_phase2start_wingoutglow(obj, 0, 0, 150)
	}
	
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i += 1) {
		local object = objectManager.getCollisionObject(i);
		
		if (object && object.isObjectType(OBJECTTYPE_CHARACTER) && !obj.isEnemy(object) && !isSameObject(obj, object)) {
			object = sq_GetCNRDObjectToSQRCharacter(object);
			local XPos = sq_Abs(object.getXPos() - obj.getXPos());
			local YPos = sq_Abs(object.getYPos() - obj.getYPos());
			if (XPos < (obj.sq_GetIntData(SKILL_BLESS_OF_ANGEL, 1) - 200) && YPos < (obj.sq_GetIntData(SKILL_BLESS_OF_ANGEL, 1) - 200)) {
				local appendage = CNSquirrelAppendage.sq_AppendAppendage(object, obj, SKILL_BLESS_OF_ANGEL, false, "character/atpriest/blessofangel/ap_blessofangel.nut", false);
				
				appendage.sq_SetValidTime(time);
				appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_BLESS_OF_ANGEL, skill_level);
				appendage.getVar("blessofangelbuff").clear_vector();
				appendage.getVar("blessofangelbuff").push_vector(subpower);
				appendage.getVar("blessofangelbuff").push_vector(size);
				CNSquirrelAppendage.sq_AppendAppendageID(appendage, object, obj, SKILL_BLESS_OF_ANGEL, false);
				appendage.setBuffIconImage(131);
				local change_appendage = appendage.sq_getChangeStatus("BlessOfAngel");
				if (!change_appendage) {
					change_appendage = appendage.sq_AddChangeStatusAppendageID(object, object, 0, 0, false, 0, APID_COMMON);
				}
				if (change_appendage) {
					change_appendage.clearParameter();
					change_appendage.addParameter(10, false, value0.tofloat());
					change_appendage.addParameter(11, false, value1.tofloat());
					change_appendage.addParameter(12, false, value2.tofloat());
					creblessofangel_phase2starteffect_shock(object, 0, 0, 150)
					creblessofangel_phase2start_wingoutglow(object, 0, 0, 150)
				}
			}
		}
	}
	obj.sq_PlaySound("BLESSANGEL");
}

function onKeyFrameFlag_BlessOfAngel(obj, flagIndex) {
	if (!obj) return;
	local state = obj.getSkillSubState();
	switch (state) {
		case 0:
			if (flagIndex == 0) {
				
			}
			break;
	}
	return true;
}

function creblessofangel_phase1bottom_feather02(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atblessofangel/blessofangel_phase1bottom_feather02.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj, pooledObj, 2, false);
	sq_moveWithParent(obj, pooledObj);
}

function creblessofangel_phase1top_sparkle02(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atblessofangel/blessofangel_phase1top_sparkle02.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_AddObject(obj, pooledObj, 2, false);
	sq_moveWithParent(obj, pooledObj);
}

function creblessofangel_phase2starteffect_shock(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atblessofangel/blessofangel_phase2starteffect_shock.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_AddObject(obj, pooledObj, 2, false);
	sq_moveWithParent(obj, pooledObj);
}

function creblessofangel_phase2start_wingoutglow(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atblessofangel/blessofangel_phase2start_wingoutglow.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_AddObject(obj, pooledObj, 2, false);
	sq_moveWithParent(obj, pooledObj);
}

function creblessofangel_phase2end_endeffect(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atblessofangel/blessofangel_phase2end_endeffect.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_AddObject(obj, pooledObj, 2, false);
	sq_moveWithParent(obj, pooledObj);
}

function creblessofangel_phase3_sparkle02(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atblessofangel/blessofangel_phase3_sparkle02.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_AddObject(obj, pooledObj, 2, false);
	sq_moveWithParent(obj, pooledObj);
}
 