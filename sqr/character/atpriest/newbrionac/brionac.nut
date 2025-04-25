FLAG_PASSIVE_CREATE_BRIONAC_A	<- 0
FLAG_PASSIVE_CREATE_BRIONAC_B	<- 0

function checkExecutableSkill_Brionac(obj) {
	if (!obj) return false;

	local isUse = obj.sq_IsUseSkill(SKILL_BRIONAC);
	if (isUse) {
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_BRIONAC, pIntVec, STATE_PRIORITY_FORCE, false, "");
		return true;
	}
	return false;
}

function checkCommandEnable_Brionac(obj) {
	if (!obj) return false;
	return true;
}

function onSetState_Brionac(obj, state, datas, isResetTimer) {
	if (!obj) return;
	obj.sq_StopMove();
	obj.sq_SetCurrentAnimation(CUSTOM_ANI_BRIONAC_BODY_BODY);
	local objectManager = obj.getObjectManager();
	local xPos = objectManager.getFieldXPos(390, ENUM_DRAWLAYER_NORMAL);
	local yPos = objectManager.getFieldYPos(440, 0, ENUM_DRAWLAYER_NORMAL);
	obj.sq_SetCurrentPos(obj, xPos, yPos, 0);
	sq_SetZVelocity(obj, 6, 6);
	obj.getVar("pos").clear_vector();
	obj.getVar("pos").push_vector(obj.getXPos());
	obj.getVar("pos").push_vector(obj.getYPos());
	obj.getVar("pos").push_vector(obj.getZPos());
	sq_StartDrawCastGauge(obj, sq_GetCastTime(obj, SKILL_BRIONAC, sq_GetSkillLevel(obj, SKILL_BRIONAC)), true);
	FLAG_PASSIVE_CREATE_BRIONAC_A = 0;
	FLAG_PASSIVE_CREATE_BRIONAC_B = 0;
}

function onProc_Brionac(obj) {
	if (!obj) return;
	if (FLAG_PASSIVE_CREATE_BRIONAC_A == 1) {
		findAllMonster_brionac(obj);
		local myPObjCount = obj.getMyPassiveObjectCount(24240);
		for (local i = 0; i < myPObjCount; i++) {
			local myPassiveObj = obj.getMyPassiveObject(24240, i);
			if (!myPassiveObj || !myPassiveObj.isMyControlObject()) continue;
			if (myPassiveObj.getVar("id").get_vector(0) == 45) {
				print("Found 45\n\r");
				FLAG_PASSIVE_CREATE_BRIONAC_A = 0;
				return;
			}
		}
		obj.sq_StartWrite();
		obj.sq_WriteDword(45);
		obj.sq_SendCreatePassiveObjectPacket(24240, 0, 0, -180, 0);
		print("Create 45\n\r");
	}
	if (FLAG_PASSIVE_CREATE_BRIONAC_B == 1) {
		local myPObjCount = obj.getMyPassiveObjectCount(24240);
		for (local i = 0; i < myPObjCount; i++) {
			local myPassiveObj = obj.getMyPassiveObject(24240, i);
			if (!myPassiveObj || !myPassiveObj.isMyControlObject()) continue;
			if (myPassiveObj.getVar("id").get_vector(0) == 46) {
				FLAG_PASSIVE_CREATE_BRIONAC_B = 0;
				print("Found 46\n\r");
				return;
			}
		}
		obj.sq_StartWrite();
		obj.sq_WriteDword(46);
		obj.sq_SendCreatePassiveObjectPacket(24240, 0, -340, 0, 100);
		print("Create 46\n\r");
	}
}

function onKeyFrameFlag_Brionac(obj, flagIndex) {
	if (!obj) return;
	if (flagIndex == 0) {
		obj.sq_PlaySound("R_PW_BRUNAQ");

	}
	else if (flagIndex == 2) {
		if (obj.sq_IsMyControlObject()) {
			creatbrionac7(obj); //褁杻
			creatbrionac8(obj); //鳭?
			FLAG_PASSIVE_CREATE_BRIONAC_A = 1;
			/*obj.sq_StartWrite();
			obj.sq_WriteDword(45);
			obj.sq_SendCreatePassiveObjectPacket(24240, 0, 0, -180, 0);*/
		}
	}
	else if (flagIndex == 5) {
		creatbrionac(obj, 0, 0, 0); //恞
	}
	else if (flagIndex == 6) {
		FLAG_PASSIVE_CREATE_BRIONAC_B = 1;
		/*obj.sq_StartWrite();
		obj.sq_WriteDword(46);
		obj.sq_SendCreatePassiveObjectPacket(24240, 0, -340, 0, 100);*/
		sq_SetZVelocity(obj, -20, -20);
		if (obj.sq_IsMyControlObject() && sq_IsMyCharacter(obj)){
			obj.sq_SetXScroll(260, 0, 1600, 0);
		}
	}
	else if (flagIndex == 7) {
		obj.setCurrentPos(obj.getXPos(), obj.getYPos(), 0);
	}
	else if (flagIndex == 20) {
		sq_SetMyShake(obj, 5, 80);
	}
	return true;
}

function onEndCurrentAni_Brionac(obj) {
	if (!obj) return;
	local sq_var = obj.getVar("dama");
	local append = "character/atpriest/newbrionac/ap_brionac.nut";
	local objectsSize = sq_var.get_obj_vector_size();
	for (local i = 0; i < objectsSize; ++i) {
		local damager = sq_var.get_obj_vector(i);
		if(damager)
			CNSquirrelAppendage.sq_RemoveAppendage(damager, append);
	}
	local srcX = obj.getVar("pos").get_vector(0);
	local srcY = obj.getVar("pos").get_vector(1);
	local srcZ = obj.getVar("pos").get_vector(2);
	sq_EndDrawCastGauge(obj);
	obj.sq_SetCurrentPos(obj, srcX, srcY, srcZ);
	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}

function onEndState_Brionac(obj, newState) {
	if(!obj)
		return false;
	if(newState != STATE_BRIONAC)
		sq_EndDrawCastGauge(obj);
}

function creatbrionaclanceeff_eff20(obj, disX, disY, disZ) 
{
	if (!obj) return;
	local ani = sq_CreateAnimation("", "passiveobject/atpriest/animation/atbrionac/brionaclanceeff_eff20.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj, pooledObj, 2, false);
}

function creatbrionaclancefloor_eff01(obj, disX, disY, disZ) 
{
	if (!obj) return;
	local ani = sq_CreateAnimation("", "passiveobject/atpriest/animation/atbrionac/brionaclancefloor_eff01.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj, pooledObj, 2, false);
}

function creatbg02(obj, disX, disY, disZ) 
{
	if (!obj) return;
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atbrionac/cutin/brionaccutina_bg02.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creatbrionac(obj, disX, disY, disZ) 
{
	if (!obj) return;
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atbrionac/spear/brionaclanceeff_eff08.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creatbrionac1(obj, disX, disY, disZ) 
{
	if (!obj) return;
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atbrionac/hold/bbholdaa_eff01.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creatbrionac2(obj, disX, disY, disZ) 
{
	if (!obj) return;
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atbrionac/hold/bbholdab_eff11.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creatbrionac3(obj, disX, disY, disZ) 
{
	if (!obj) return;
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atbrionac/hold/bbholdatkeffa_eff01.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj, pooledObj, 2, false);

}
function creatbrionac4(obj, disX, disY, disZ) 
{
	if (!obj) return;
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atbrionac/hold/bbholdatkeffb_eff01.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj, pooledObj, 2, false);

}
function creatbrionac5(obj, disX, disY, disZ) 
{
	if (!obj) return;
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atbrionac/hold/bbholdb_eff01.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj, pooledObj, 2, false);

}
function creatbrionac6(obj, disX, disY, disZ) 
{
	if (!obj) return;
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atbrionac/hold/bbholdlight_eff01.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creatbrionac7(obj) {
	if (!obj) return;
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atbrionac/cutin/brionaccutinc_bg05.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_CONTACT);
	local objectManager = obj.getObjectManager();
	local objectManager = obj.getObjectManager();
	local xPos = objectManager.getFieldXPos(400, ENUM_DRAWLAYER_CONTACT);
	local yPos = objectManager.getFieldYPos(260, 0, ENUM_DRAWLAYER_CONTACT);
	pooledObj.setCurrentPos(xPos, yPos, 0);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
}

function creatbrionac8(obj) 
{
	if (!obj) return;
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atbrionac/cutin/brionaccutina_eff01.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_CONTACT);
	local objectManager = obj.getObjectManager();
	local objectManager = obj.getObjectManager();
	local xPos = objectManager.getFieldXPos(400, ENUM_DRAWLAYER_CONTACT);
	local yPos = objectManager.getFieldYPos(260, 0, ENUM_DRAWLAYER_CONTACT);
	pooledObj.setCurrentPos(xPos, yPos, 0);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
}

function findAllMonster_brionac(obj) {
	if (!obj) return;
	obj.getVar("dama").clear_obj_vector();
	local time = sq_GetIntData(obj, SKILL_BRIONAC, 0);
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i += 1) {
		local object = objectManager.getCollisionObject(i);
		if (object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_ACTIVE) && object.isInDamagableState(obj)) {
			local activeObj = sq_GetCNRDObjectToActiveObject(object);
			obj.getVar("dama").push_obj_vector(activeObj);
			if (!CNSquirrelAppendage.sq_IsAppendAppendage(activeObj, "character/atpriest/newbrionac/ap_brionac.nut")) {
				local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, obj, SKILL_BRIONAC, false, "character/atpriest/newbrionac/ap_brionac.nut", true);
				masterAppendage.getAppendageInfo().setValidTime(time);
				sq_HoldAndDelayDie(activeObj, obj, true, true, true, 0, 0, ENUM_DIRECTION_DOWN, masterAppendage);
			}
		}
	}
} 