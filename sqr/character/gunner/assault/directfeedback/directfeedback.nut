function checkExecutableSkill_DirectFeedback(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_DIRECTFEEDBACK);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_DIRECTFEEDBACK, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_DirectFeedback(obj) {
	local state = obj.sq_GetState();
	switch (state) {
	case STATE_STAND:
	case STATE_ATTACK:
	case STATE_DASH:
		return true;
	}
	return false;
}

function onSetState_DirectFeedback(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	switch (subState) {
	case 0:
		obj.getVar("DirectFeedback").setInt(0,0);
		if (isAtSOWalkerOnBody(obj)) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(1);
			obj.sq_AddSetStatePacket(STATE_DIRECTFEEDBACK, STATE_PRIORITY_USER, true);
			obj.flushSetStatePacket();
			return;
		}
		local flashScreenObj = sq_flashScreen(obj, 80, 10000, 240, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
		obj.getVar("flashobj").push_obj_vector(flashScreenObj); 
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DIRECTFEEDBACK_START);
		obj.sq_PlaySound("DIRECT_FEEDBACK_RELOAD");
		obj.sq_PlaySound("R_GN_DIRECT_FEEDBACK");
		break;
	case 1:
		if (isAtSOWalkerOnBody(obj)) {
			local flashScreenObj = sq_flashScreen(obj, 80, 10000, 240, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
			obj.getVar("flashobj").push_obj_vector(flashScreenObj); 
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSOWALKERADIRECTFEEDBACK_SCAN);
			CreateAniRate_pooled(obj, "character/gunner/effect/animation/directfeedback/scan/directfeedback_scan_front_00.ani", 60, 0, -30, ENUM_DRAWLAYER_NORMAL, false, false);
			CreateAniRate_pooled(obj, "character/gunner/effect/animation/directfeedback/scan/directfeedback_scan_bottom_00.ani", 60, 0, -30, ENUM_DRAWLAYER_BOTTOM, false, false);
			CreateAniRate_pooled(obj, "character/gunner/effect/animation/directfeedback/scan/directfeedback_scan_back_00.ani", 60, 0, -30, ENUM_DRAWLAYER_BOTTOM, false, false);
		} else {
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DIRECTFEEDBACK_SCAN);
			obj.sq_PlaySound("DIRECT_FEEDBACK_SCAN");
			sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/directfeedback/scan/directfeedback_scan_back_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
			sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/directfeedback/scan/directfeedback_scan_bottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
			sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/directfeedback/scan/directfeedback_scan_front_00.ani", ENUM_DRAWLAYER_NORMAL, true);
		}

		local distance = obj.sq_GetIntData(SKILL_DIRECTFEEDBACK, 0); 
		local Limitypos = obj.sq_GetIntData(SKILL_DIRECTFEEDBACK, 1); 
		local limitzpos = obj.sq_GetIntData(SKILL_DIRECTFEEDBACK, 2); 

		local objectCount = getRangeObject01(obj, distance, 0, 0, 0, limitzpos, Limitypos, obj.getDirection());
		for (local i = 0; i < objectCount; i++) {
			local object = obj.getVar("AllRangeEnemy").get_obj_vector(i);
			local aniPath = "character/gunner/effect/animation/directfeedback/target/target_main_start_00.ani";
			local objectx = sq_GetXPos(object); 
			local objecty = sq_GetYPos(object); 
			local objectz = sq_GetZPos(object); 
			local direction = sq_GetDirection(obj); 
			local pooledObj = createPooledObjEff(obj, aniPath, objectx, objecty, objectz + sq_GetHeightObject(object) / 2, ENUM_DRAWLAYER_NORMAL, direction);
			local pooledObj2 = createPooledObjEff(obj, "character/gunner/effect/animation/directfeedback/target/target_sub_00.ani", objectx, objecty, objectz + sq_GetHeightObject(object) / 2, ENUM_DRAWLAYER_NORMAL, direction);
			sq_moveWithParent(object, pooledObj);
			obj.getVar("aniobj").push_obj_vector(pooledObj);
		}
		break;
	case 2:
		RemoveAllFlash(obj);
		RemoveAllAni(obj);

		local flashScreenObj = sq_flashScreen(obj, 80, 10000, 240, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 

		obj.getVar("flashobj").push_obj_vector(flashScreenObj); 
		if (isAtSOWalkerOnBody(obj)) {
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSOWALKERADIRECTFEEDBACK);
			local pooledObj = sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/at_sowalker/atsowalkeradirectfeedbackeffect_04.ani", ENUM_DRAWLAYER_NORMAL, true);
			obj.getVar("aniobj").push_obj_vector(pooledObj);
		} else {
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DIRECTFEEDBACK_SHOTLOOP);
		}
		
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_DIRECTFEEDBACK, STATE_DIRECTFEEDBACK, 0, 1.0));
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_DIRECTFEEDBACK); 
		obj.sq_SetCurrentAttackBonusRate(attackBonusRate.tointeger()); 
		
		obj.getVar("DirectFeedback").clear_vector(); 
		obj.getVar("DirectFeedback").push_vector(0); 

		for (local i = 0; i < obj.getVar("AllRangeEnemy").get_obj_vector_size(); i++) {
			local object = obj.getVar("AllRangeEnemy").get_obj_vector(i);
			local aniPath = "character/gunner/effect/animation/directfeedback/target/target_main_loop_00.ani";
			local objectx = sq_GetXPos(object); 
			local objecty = sq_GetYPos(object); 
			local objectz = sq_GetZPos(object); 
			local direction = sq_GetDirection(obj); 
			local pooledObj = createPooledObjEff(obj, aniPath, objectx, objecty, objectz + sq_GetHeightObject(object) / 2, ENUM_DRAWLAYER_NORMAL, direction);
			sq_moveWithParent(object, pooledObj);
			obj.getVar("aniobj").push_obj_vector(pooledObj);
		}

		local pooledObj = sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/directfeedback/shotloop/directfeedback_shotloop_bottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
		obj.getVar("aniobj").push_obj_vector(pooledObj);
		break;
	case 3:
		RemoveAllAni(obj);

		for (local i = 0; i < obj.getVar("AllRangeEnemy").get_obj_vector_size(); i++) {
			local object = obj.getVar("AllRangeEnemy").get_obj_vector(i);
			local aniPath = "character/gunner/effect/animation/directfeedback/target/target_main_end_00.ani";
			local objectx = sq_GetXPos(object); 
			local objecty = sq_GetYPos(object); 
			local objectz = sq_GetZPos(object); 
			local direction = sq_GetDirection(obj); 
			local pooledObj = createPooledObjEff(obj, aniPath, objectx, objecty, objectz + sq_GetHeightObject(object) / 2, ENUM_DRAWLAYER_NORMAL, direction);
			sq_moveWithParent(object, pooledObj);
			obj.getVar("aniobj").push_obj_vector(pooledObj);
		}

		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DIRECTFEEDBACK_SHOTLOOPEND);
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/directfeedback/shotloopend/directfeedback_loopend_splitparts_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/directfeedback/shotloopend/directfeedback_shotloopend_front_00.ani", ENUM_DRAWLAYER_NORMAL, true);
		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
}

function onKeyFrameFlag_DirectFeedback(obj, flagIndex) {
	if (!obj) return false;
	local subState = obj.getSkillSubState();

	switch (subState) {
	case 2:
		switch (flagIndex) {
		case 1001:
			if (obj.getVar("ArcDischarge").getInt(0) >= 100) {
				obj.getVar("DirectFeedbackArcDischarge").setBool(0, true);
			}
			local count = obj.getVar("DirectFeedback").getInt(0);
			//print("count:"+count);
			count++;
			local maxCount = obj.sq_GetIntData(SKILL_DIRECTFEEDBACK, 3);
			//print("maxCount:"+maxCount);
			if (count > maxCount) {
				if (isAtSOWalkerOnBody(obj)) {
					RemoveAllAni(obj);
					for (local i = 0; i < obj.getVar("AllRangeEnemy").get_obj_vector_size(); i++) {
						local object = obj.getVar("AllRangeEnemy").get_obj_vector(i);
						local aniPath = "character/gunner/effect/animation/directfeedback/target/target_main_end_00.ani";
						local objectx = sq_GetXPos(object); 
						local objecty = sq_GetYPos(object); 
						local objectz = sq_GetZPos(object); 
						local direction = sq_GetDirection(obj); 
						local pooledObj = createPooledObjEff(obj, aniPath, objectx, objecty, objectz + sq_GetHeightObject(object) / 2, ENUM_DRAWLAYER_NORMAL, direction);
						sq_moveWithParent(object, pooledObj);
					}
					RemoveAllFlash(obj);
					obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
				} else {
					RemoveAllAni(obj);
					obj.sq_IntVectClear();
					obj.sq_IntVectPush(3);
					obj.sq_AddSetStatePacket(STATE_DIRECTFEEDBACK, STATE_PRIORITY_USER, true);
				}
			} else {
				obj.sq_PlaySound("R_DIRECT_FEEDBACK_SHOT");
				for (local i = 0; i < obj.getVar("AllRangeEnemy").get_obj_vector_size(); i++) {
					local object = obj.getVar("AllRangeEnemy").get_obj_vector(i);
					local activeObj = sq_GetCNRDObjectToActiveObject(object); 
					if (activeObj.isDead()) {
						obj.getVar("AllRangeEnemy").remove_obj_vector(object);
						continue;
					}
					local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_DIRECTFEEDBACK, STATE_DIRECTFEEDBACK, 0, 1.0));
					local group = sq_GetGroup(object);
					local uid = sq_GetUniqueId(object);
					
					if(object)
						sq_SendHitObjectPacket(obj,object,0,0, object.getObjectHeight()/2);
					
					sq_BinaryStartWrite();
					sq_BinaryWriteDword(SKILL_DIRECTFEEDBACK);
					sq_BinaryWriteDword(0);
					sq_BinaryWriteDword(attackBonusRate.tointeger());
					sq_BinaryWriteDword(group);
					sq_BinaryWriteDword(uid);
					sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
				}
			}
			obj.getVar("DirectFeedback").setInt(0, count); 
			break;
		}
		break;
	}
	return true;
}

function onEnterFrame_DirectFeedback(obj, frameIndex) {
	if (!obj) return;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 3:
		switch (frameIndex) {
		case 3:
			obj.sq_PlaySound("DIRECT_FEEDBACK_FINISH");
			break;
		}
		break;
	}
}

function onProc_DirectFeedback(obj) {
	if (!obj) return;
	if (obj.getVar("DirectFeedbackArcDischarge").getBool(0)) {
		startArcDischarge(obj, "DirectFeedbackArcDischarge");
	}
	local subState = obj.getSkillSubState(); 
	switch (subState) {
	case 2:
		for (local i = 0; i < obj.getVar("AllRangeEnemy").get_obj_vector_size(); i++) {
			local object = obj.getVar("AllRangeEnemy").get_obj_vector(i);
			local activeObj = sq_GetCNRDObjectToActiveObject(object); 
			if (activeObj.isDead()) {
				obj.getVar("AllRangeEnemy").remove_obj_vector(object);
			}
		}
		break;
	}
}

function onEndCurrentAni_DirectFeedback(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_DIRECTFEEDBACK, STATE_PRIORITY_USER, true);
		break;
	case 1:
		if (obj.getVar("AllRangeEnemy").get_obj_vector_size() < 1) {
			obj.startSkillCoolTime(SKILL_DIRECTFEEDBACK, 1, 5000); 
			if (isAtSOWalkerOnBody(obj)) {
				RemoveAllFlash(obj);
				RemoveAllAni(obj);
				obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			} else {
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(3);
				obj.sq_AddSetStatePacket(STATE_DIRECTFEEDBACK, STATE_PRIORITY_USER, true);
			}
		} else {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(2);
			obj.sq_AddSetStatePacket(STATE_DIRECTFEEDBACK, STATE_PRIORITY_USER, true);
		}
		break;
	case 3:
		RemoveAllFlash(obj);
		RemoveAllAni(obj);
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}