
function checkExecutableSkill_AriaOfRegeneration(obj) {
	if (!obj) return false;

	local isUse = obj.sq_IsUseSkill(SKILL_ARIA_OF_REGENERATION);

	if (isUse) {
		obj.getVar("AriaOfRegeneration").clear_vector();
		obj.getVar("AriaOfRegeneration").push_vector(1500);
		obj.getVar("AriaOfRegeneration").push_vector(250);
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_ARIA_OF_REGENERATION, pIntVec, STATE_PRIORITY_FORCE, false, "");
	}
}

function checkCommandEnable_AriaOfRegeneration(obj) {
	if (!obj)
		return false;

	return true;
}

function onSetState_AriaOfRegeneration(obj, state, datas, isResetTimer) {
	if (!obj) return;
	obj.sq_StopMove();
	local state = obj.sq_GetVectorData(datas, 0);
	local id = sq_GetObjectId(obj);
	obj.setSkillSubState(state);
	local ariaSize = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5) * isStudyBlessOfRaphael_AriaOfRegeneration(obj) / 100;
	obj.getVar("AriaOfRegeneration").set_vector(1, ariaSize);
	switch (state) {
		case 0:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_ARIA_OF_REGENERATION_START_BODY); //
			obj.sq_PlaySound("R_PW_ARIAREGENERATION");
			obj.sq_PlaySound("ARIAREGENERATION", 8887);
			obj.sq_StopMove();
			break;
		case 1:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_ARIA_OF_REGENERATION_LOOP_BODY); //
			//creeariaofregenerationloop_body(obj, 0, 0, 0, ariaSize);//嫄?鶔

			//creeurielloop_body(obj, 0, 0, 0, 250);//茏畷
			obj.setTimeEvent(1, 0, 0, true);
			break;
		case 2:
			setVliadEffectoraloopfront_1(obj);
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_ARIA_OF_REGENERATION_END_BODY); //
			obj.sq_PlaySound("ARIACOURAGE_END");
			creeariaofregenerationend_body(obj, 0, 0, 0, ariaSize);
			creatariaofregenerationfloorend_1(obj, 0, 0, 0, ariaSize);
			creatariaofregenerationlightend_1(obj, 0, 0, 0, ariaSize);
			//creeurielend_body(obj, 0, 0, 0, 250);//茏畷
			break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}


function onTimeEvent_AriaOfRegeneration(obj, timeEventIndex, timeEventCount) {
	if (!obj) return;
	local id = sq_GetObjectId(obj);
	local state = obj.getSkillSubState();
	switch (state) {
		case 1:
			if (timeEventIndex == 1) {
				if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_RIGHT ||
					sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_LEFT)
				{
					local X = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 1);
					local Accel = 0;
					obj.sq_SetStaticMoveInfo(0, X, X, true, Accel, true);
					obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
				} else {
					obj.sq_StopMove();
				}
				if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_LEFT ||
					sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_RIGHT)
				{
					local X = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 1);
					local Accel = 0;
					obj.sq_SetStaticMoveInfo(0, X, X, true, Accel, true);
					obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
				}
				if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)) {
					local Y = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 2);
					local Accel = 0;
					obj.sq_SetStaticMoveInfo(1, Y, Y, true, Accel, true);
					obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
				}
				if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) {
					local Y = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 2);
					local Accel = 0;
					obj.sq_SetStaticMoveInfo(1, Y, Y, true, Accel, true);
					obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
				}
			}
			break;
	}
}


function onProc_AriaOfRegeneration(obj) {
	if (!obj) return;
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local state = obj.getSkillSubState();
	local id = sq_GetObjectId(obj);
	switch (state) {
		case 1:
			if (sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL)) {
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 2);
				obj.addSetStatePacket(STATE_ARIA_OF_REGENERATION, pIntVec, STATE_PRIORITY_FORCE, false, "");
			}
			if (currentT >= 1000) {
				addAriaOfRegenerationBuff(obj)
			}
			break;
	}
}


function onEndState_AriaOfRegeneration(obj, new_state) {
	if (new_state != STATE_ARIA_OF_REGENERATION) {
		obj.getVar("AriaOfRegeneration").clear_vector();
		setVliadEffectoraloopfront_1(obj);
		obj.stopSound(8887);
	}
}


function onEndCurrentAni_AriaOfRegeneration(obj) {
	if (!obj) return;
	local state = obj.getSkillSubState();
	local id = sq_GetObjectId(obj);
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	switch (state) {
		case 0:
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 1);

			obj.addSetStatePacket(STATE_ARIA_OF_REGENERATION, pIntVec, STATE_PRIORITY_FORCE, false, "");
			break;
		case 1:
			if (obj.getVar("AriaOfRegeneration").get_vector(0) >= obj.sq_GetIntData(SKILL_ARIA_OF_REGENERATION, 0)) {
				obj.stopSound(8887);
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 2);

				obj.addSetStatePacket(STATE_ARIA_OF_REGENERATION, pIntVec, STATE_PRIORITY_FORCE, false, "");

			} else {
				local currSize = obj.getVar("AriaOfRegeneration").get_vector(0);
				obj.getVar("AriaOfRegeneration").set_vector(0, currSize + 1500);

				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 1);

				obj.addSetStatePacket(STATE_ARIA_OF_REGENERATION, pIntVec, STATE_PRIORITY_FORCE, false, "");

			}
			break;
		case 2:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			break;
	}
}

function onKeyFrameFlag_AriaOfRegeneration(obj, flagIndex) {
	if (!obj) return;
	local state = obj.getSkillSubState();
	local id = sq_GetObjectId(obj);
	local ariaSize = obj.getVar("AriaOfRegeneration").get_vector(1);
	switch (state) {
		case 0:
			if (flagIndex == 1) {
				creeariaofregenerationstart_body(obj, 0, 0, 0, ariaSize);
				creelightstart_lineglow_02(obj, 0, 0, 0, ariaSize);
				creatariaofregenerationfloorstart_1(obj, 0, 0, 0, ariaSize);
				//creeurielstart_body(obj, 0, 0, 0, 250);//茏畷
			}
			break;
		case 1:
			if (flagIndex == 1) {
				setVliadEffectoraloopfront_1(obj);
				creeoraloopfront_1(obj, 0, 0, 0, ariaSize);
				creeoraloopback_glow(obj, 0, 0, 0, ariaSize);
				creatariaofregenerationline_red_in(obj, 0, 0, 0, ariaSize);
				creefloorloop_1(obj, 0, 0, 0, ariaSize);
				creelightloop_a1(obj, 0, 0, 0, ariaSize);
			}
			break;
	}
	return true;
}

function addAriaOfRegenerationBuff(obj) {
	local skill_level = sq_GetSkillLevel(obj, SKILL_BLESS_OF_COURAGE);
	local time = obj.sq_GetIntData(SKILL_ARIA_OF_REGENERATION, 0);
	local value0 = obj.sq_GetIntData(SKILL_ARIA_OF_REGENERATION, 6);
	local ariaSize = obj.getVar("AriaOfRegeneration").get_vector(1);
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_ARIA_OF_REGENERATION, false, "character/atpriest/newariaofregeneration/ap_ariaofregeneration.nut", false);
	appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_ARIA_OF_REGENERATION, skill_level);
	CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_ARIA_OF_REGENERATION, false);
	appendage.sq_SetValidTime(time);
	local change_appendage = appendage.sq_getChangeStatus("ariaofregeneration");
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 26, false, value0, APID_COMMON);

	}
	if (change_appendage) {
		change_appendage.clearParameter();
		change_appendage.addParameter(26, false, value0.tofloat());
	}
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i += 1) {
		local object = objectManager.getCollisionObject(i);
		object = sq_GetCNRDObjectToActiveObject(object);
		if (object && !obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_CHARACTER)) {
			local distance = sq_GetDistanceObject(obj, object, false);
			if (ariaSize >= distance) {
				for (local i = 0; i <= 17; i++) {
					sq_ReleaseActiveStatus(obj, i);
					sq_ReleaseActiveStatus(object, i);
				}
				local Skill = obj.sq_GetSkillLevel(SKILL_ARIA_OF_REGENERATION);
				local recoverypercentage = obj.sq_GetLevelData(SKILL_ARIA_OF_REGENERATION, 0, Skill) / 300;
				obj.setHp(obj.getHp() + recoverypercentage, null, true);
				object.setHp(object.getHp() + recoverypercentage, null, true);
			}
		}
	}
}



function setVliadEffectoraloopfront_1(obj) {

	local var = obj.getVar("oraloopfront_1");
	local objectsSize = var.get_obj_vector_size();
	for (local i = 0; i < objectsSize; ++i) {
		local effectObj =
			var.get_obj_vector(i);
		if (effectObj) {
			effectObj.setValid(false);
		}
	}
}



function creeariaofregenerationstart_body(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofregeneration/ariaofregenerationstart_body.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creeariaofregenerationloop_body(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofregeneration/ariaofregenerationloop_body.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	obj.getVar("oraloopfront_1").push_obj_vector(pooledObj);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creeariaofregenerationend_body(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofregeneration/ariaofregenerationend_body.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creeoraloopfront_1(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofregeneration/ora/oraloopfront_1.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	obj.getVar("oraloopfront_1").push_obj_vector(pooledObj);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creeoraloopback_glow(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofregeneration/ora/oraloopback_glow.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	obj.getVar("oraloopfront_1").push_obj_vector(pooledObj);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creatariaofregenerationline_red_in(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofregeneration/musicpaper/line_red_in.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	obj.getVar("oraloopfront_1").push_obj_vector(pooledObj);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creefloorloop_1(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofregeneration/floor/floorloop_1.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	obj.getVar("oraloopfront_1").push_obj_vector(pooledObj);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creelightloop_a1(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofregeneration/floor/lightloop_a1.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	obj.getVar("oraloopfront_1").push_obj_vector(pooledObj);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creelightstart_lineglow_02(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofregeneration/floor/lightstart_lineglow_02.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creatariaofregenerationfloorstart_1(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofregeneration/floor/floorstart_1.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creatariaofregenerationfloorend_1(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofregeneration/floor/floorend_1.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creatariaofregenerationlightend_1(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofregeneration/floor/lightend_1.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

//茏畷
function creeurielloop_body(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofregeneration/uriel/urielloop_body.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	obj.getVar("oraloopfront_1").push_obj_vector(pooledObj);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creeurielend_body(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofregeneration/uriel/urielend_body.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creeurielstart_body(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofregeneration/uriel/urielstart_body.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

} 