
function checkExecutableSkill_AriaOfCourage(obj) {
	if (!obj) return false;

	local isUse = obj.sq_IsUseSkill(SKILL_ARIA_OF_COURAGE);

	if (isUse) {
		obj.getVar("AriaOfCourage").clear_vector();
		obj.getVar("AriaOfCourage").push_vector(1500);
		obj.getVar("AriaOfCourage").push_vector(250);
		obj.getVar("AriaOfCourage").setFloat(0,0.01);
		obj.getVar("AriaOfCourage_skill").clear_vector();
		obj.getVar("AriaOfCourage_skill").push_vector(1);
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_ARIA_OF_COURAGE, pIntVec, STATE_PRIORITY_FORCE, false, "");
	}
}

function checkCommandEnable_AriaOfCourage(obj) {
	if (!obj)
		return false;

	return true;
}

function onSetState_AriaOfCourage(obj, state, datas, isResetTimer) {
	if (!obj) return;
	obj.sq_StopMove();
	local state = obj.sq_GetVectorData(datas, 0);
	local id = sq_GetObjectId(obj);
	obj.setSkillSubState(state);
	local AriaOfCourage_skill = obj.getVar("AriaOfCourage_skill").get_vector(0);
	local HitCoun1 = sq_GetIntData(obj, SKILL_ARIA_OF_COURAGE, 5);
	local ariaSize = sq_GetIntData(obj, SKILL_ARIA_OF_COURAGE, 7) * isStudyBlessOfRaphael_AriaOfCourage(obj) / 100;
	obj.getVar("AriaOfCourage").set_vector(1, ariaSize);
	switch (state) {
		case 0:
			creelightstart_lineglow(obj, 0, 0, 0, ariaSize);
			creefloorstart_magicc_01(obj, 0, 0, 0, ariaSize);
			obj.getVar("oraloopback_1").clear_obj_vector();
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_ARIA_OF_COURAGE_START_BODY);
			obj.sq_PlaySound("R_PW_ARIACOURAGE");
			obj.sq_PlaySound("ARIACOURAGE", 8825);
			setAriaOfCourageBuff0(obj)
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
			break;
		case 1:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_ARIA_OF_COURAGE_LOOP_BODY);
			local currentAni = sq_GetCurrentAnimation(obj);
			if(obj.getVar("AriaOfCourage").getFloat(0) < 0.1)
			{
				local sizeRate = ariaSize.tofloat()/250.0;
				sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, 1.0);
				obj.getVar("AriaOfCourage").setFloat(0,sizeRate);
			}
			
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_ARIA_OF_COURAGE_ATTACK);
			local Power =  obj.sq_GetPowerWithPassive(SKILL_ARIA_OF_COURAGE, STATE_ARIA_OF_COURAGE, 0, -1,1.0);
			obj.sq_SetCurrentAttackPower(Power);
			local HitCoun1 = sq_GetIntData(obj, SKILL_ARIA_OF_COURAGE, 5);
			if (AriaOfCourage_skill >= 4)
				HitCoun1 = (sq_GetIntData(obj, SKILL_ARIA_OF_COURAGE, 5) / 2) - 10;
			obj.setTimeEvent(0, HitCoun1, 20, false);
			obj.setTimeEvent(1, 0, 0, true);
			break;
		case 2:
			setVliadEffectoraloopback_1(obj);
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_ARIA_OF_COURAGE_END_BODY); 
			obj.sq_PlaySound("ARIACOURAGE_END");
			creelightend_lineglow(obj, 0, 0, 0, ariaSize);
			creefloorend_magicc_01(obj, 0, 0, 0, ariaSize);
			//creeenemysingle02_end11(obj, 0, 0, 0, ariaSize);
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
			break;
	}

}


function onTimeEvent_AriaOfCourage(obj, timeEventIndex, timeEventCount) {
	if (!obj) return;
	local id = sq_GetObjectId(obj);
	local state = obj.getSkillSubState();
	switch (state) {
		case 1:
			if (timeEventIndex == 0) {
				obj.resetHitObjectList();
			} else if (timeEventIndex == 1) {
				if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_RIGHT ||
					sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_LEFT) //𣸣咥餂棂韺坫?韟𪥰琲蒻橔靮鎏簅餂棂橔坫?韟𪥰琲蒻韺靮鎏
				{
					local X = sq_GetIntData(obj, SKILL_ARIA_OF_COURAGE, 1);
					local Accel = 0;
					obj.sq_SetStaticMoveInfo(0, X, X, true, Accel, true);
					obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
				} else {
					obj.sq_StopMove();
				}
				if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_LEFT ||
					sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_RIGHT) //𣸣咥餂棂韺坫?韟𪥰琲蒻韺靮鎏簅餂棂橔坫?韟𪥰琲蒻橔靮鎏
				{
					local X = sq_GetIntData(obj, SKILL_ARIA_OF_COURAGE, 1);
					local Accel = 0;
					obj.sq_SetStaticMoveInfo(0, X, X, true, Accel, true);
					obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
				}
				if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)) {
					local Y = sq_GetIntData(obj, SKILL_ARIA_OF_COURAGE, 2);
					local Accel = 0;
					obj.sq_SetStaticMoveInfo(1, Y, Y, true, Accel, true);
					obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
				}
				if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) {
					local Y = sq_GetIntData(obj, SKILL_ARIA_OF_COURAGE, 2);
					local Accel = 0;
					obj.sq_SetStaticMoveInfo(1, Y, Y, true, Accel, true);
					obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
				}
			}
			break;
	}
}


function onProc_AriaOfCourage(obj) {
	if (!obj) return;
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local state = obj.getSkillSubState();
	local id = sq_GetObjectId(obj);
	local AriaOfCourage_skill = obj.getVar("AriaOfCourage_skill").get_vector(0);
	switch (state) {
		case 0:
			sq_SetKeyxEnable(obj, E_ATTACK_COMMAND, true);
			if (sq_IsEnterCommand(obj, E_ATTACK_COMMAND)) {
				local count = obj.getVar("AriaOfCourage_skill").get_vector(0);
				obj.getVar("AriaOfCourage_skill").set_vector(0, count + 1);
			}
			break;
		case 1:
			//ATPriestAriaBuffCast(obj);
			if (sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL)) {
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 2);

				obj.addSetStatePacket(STATE_ARIA_OF_COURAGE, pIntVec, STATE_PRIORITY_FORCE, false, "");
			}
			sq_SetKeyxEnable(obj, E_ATTACK_COMMAND, true);
			if (sq_IsEnterCommand(obj, E_ATTACK_COMMAND)) {
				local count = obj.getVar("AriaOfCourage_skill").get_vector(0);
				obj.getVar("AriaOfCourage_skill").set_vector(0, count + 1);
			}
			if (AriaOfCourage_skill >= 4) {
				pAni.setSpeedRate(220.0);
			} else
				pAni.setSpeedRate(100.0);
			break;
	}
}



function onEndState_AriaOfCourage(obj, new_state) {
	if (new_state != STATE_ARIA_OF_COURAGE) {
		obj.getVar("AriaOfCourage").clear_vector();
		obj.getVar("AriaOfCourage_skill").clear_vector();
		setVliadEffectoraloopback_1(obj);
	}
}


function onEndCurrentAni_AriaOfCourage(obj) {
	if (!obj) return;
	local state = obj.getSkillSubState();
	local id = sq_GetObjectId(obj);
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local ariaSize = obj.getVar("AriaOfCourage").get_vector(1);
	switch (state) {
		case 0:
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 1);

			obj.addSetStatePacket(STATE_ARIA_OF_COURAGE, pIntVec, STATE_PRIORITY_FORCE, false, "");
			creeoraloopback_1(obj, 0, 0, 0, ariaSize);
			creeoraloopfront_5(obj, 0, 0, 0, ariaSize);
			creelightloop_lineglow(obj, 0, 0, 0, ariaSize);
			creefloorloop_magicc_01(obj, 0, 0, 0, ariaSize);
			creeline_red_in(obj, 0, 0, 0, ariaSize);
			break;
		case 1:
			if (obj.getVar("AriaOfCourage").get_vector(0) >= obj.sq_GetIntData(SKILL_ARIA_OF_COURAGE, 0)) {
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 2);

				obj.addSetStatePacket(STATE_ARIA_OF_COURAGE, pIntVec, STATE_PRIORITY_FORCE, false, "");

			} else {

				local maxTime = obj.getVar("AriaOfCourage").get_vector(0);
				obj.getVar("AriaOfCourage").set_vector(0, maxTime + 1500);

				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 1);

				obj.addSetStatePacket(STATE_ARIA_OF_COURAGE, pIntVec, STATE_PRIORITY_FORCE, false, "");

			}
			break;
		case 2:
			obj.stopSound(8825);
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			break;
	}
}

function onKeyFrameFlag_AriaOfCourage(obj, flagIndex) {
	if (!obj) return;
	local state = obj.getSkillSubState();
	local id = sq_GetObjectId(obj);
	local ariaSize = obj.getVar("AriaOfCourage").get_vector(1);
	switch (state) {
		case 0:
			break;
		case 1:
			if (flagIndex == 1) {
				setVliadEffectoraloopback_1(obj);
				creeoraloopback_1(obj, 0, 0, 0, ariaSize);
				creeoraloopfront_5(obj, 0, 0, 0, ariaSize);
				creelightloop_lineglow(obj, 0, 0, 0, ariaSize);
				creefloorloop_magicc_01(obj, 0, 0, 0, ariaSize);
				creeline_red_in(obj, 0, 0, 0, ariaSize);
			}
			break;
	}
	return true;
}

function onAttack_AriaOfCourage(obj, damager, boundingBox, isStuck) {
	if (!obj) return;
	if (!obj.sq_IsMyControlObject()) return;
	local state = obj.getSkillSubState(); //髍唑窆鎏sub state荭鷑
	local id = sq_GetObjectId(obj);
	if (state == 1) {
		if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE))
		{
			sq_CreateParticle("character/priest/effect/animation/atariaofcourage/buffexplosion/ariaofcourage.ptl", damager, 0, 0, 50, true, 30, 0, 1);
		}
	}
}

function setVliadEffectoraloopback_1(obj) {

	local var = obj.getVar("oraloopback_1");
	local objectsSize = var.get_obj_vector_size();
	for (local i = 0; i < objectsSize; ++i) {
		local effectObj =
			var.get_obj_vector(i);
		if (effectObj) {
			effectObj.setValid(false);
		}
	}
}

function setAriaOfCourageBuff0(obj) {
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_ARIA_OF_COURAGE, false, "character/atpriest/newariaofcourage/ap_AriaOfCourage.nut", false);

	local skill_level = sq_GetSkillLevel(obj, SKILL_ARIA_OF_COURAGE);
	local time = obj.sq_GetIntData(SKILL_ARIA_OF_COURAGE, 12);

	local value0 = obj.sq_GetIntData(SKILL_ARIA_OF_COURAGE, 9); //wu def

	appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_ARIA_OF_COURAGE, skill_level);
	CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_ARIA_OF_COURAGE, false);
	appendage.sq_SetValidTime(time);

	local change_appendage = appendage.sq_getChangeStatus("AriaOfCourage");
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 26, false, value0, APID_COMMON);
	}
	if (change_appendage) {
		change_appendage.addParameter(26, false, value0.tofloat());
	}
}

function crebuffend_back(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofcourage/buffeffect/buffend_back.ani");
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

function crebuffend_front(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofcourage/buffeffect/buffend_front.ani");
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

function crebuffstart_back(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofcourage/buffeffect/buffloop_back.ani");
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

function crebuffstart_front(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofcourage/buffeffect/buffloop_front.ani");
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

function creelightstart_lineglow(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofcourage/floor/lightstart_lineglow.ani");
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

function creefloorstart_magicc_01(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofcourage/floor/floorstart_magicc_01.ani");
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

function creelightend_lineglow(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofcourage/floor/lightend_lineglow.ani");
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

function creefloorend_magicc_01(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofcourage/floor/floorend_magicc_01.ani");
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

function creeoraloopfront_5(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofcourage/ora/oraloopfront_5.ani");
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

function creeoraloopback_1(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofcourage/ora/oraloopback_1.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	obj.getVar("oraloopback_1").push_obj_vector(pooledObj);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creelightloop_lineglow(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofcourage/floor/lightloop_lineglow.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	obj.getVar("oraloopback_1").push_obj_vector(pooledObj);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creefloorloop_magicc_01(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofcourage/floor/floorloop_magicc_01.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	obj.getVar("oraloopback_1").push_obj_vector(pooledObj);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}


function creeline_red_in(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofcourage/musicpaper/line_red_in.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	obj.getVar("oraloopback_1").push_obj_vector(pooledObj);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creeenemysingle01_loop19(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofcourage/michael/enemysingle01_loop19.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	
	local imageAni = pooledObj.getCurrentAnimation();
	local size = sizeRate.tofloat() / 250.0;
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	obj.getVar("oraloopback_1").push_obj_vector(pooledObj);
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creeenemysingle02_end11(obj, disX, disY, disZ, sizeRate) {
	local ani = sq_CreateAnimation("", "character/priest/effect/animation/atariaofcourage/michael/enemysingle02_end12.ani");
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