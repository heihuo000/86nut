function checkExecutableSkill_Thirdrib(obj) {
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_THIRDRIB);
	if (isUse) {
		if (Seducer(obj)) {
			obj.getVar("damaThirdrib").clear_obj_vector();
			obj.getVar("effectObj").clear_obj_vector();
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 1);
			obj.addSetStatePacket(STATE_THIRDRIB, pIntVec, STATE_PRIORITY_FORCE, false, "");
		}
		else {
			obj.getVar("damaThirdrib").clear_obj_vector();
			obj.getVar("effectObj").clear_obj_vector();
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 0);
			obj.addSetStatePacket(STATE_THIRDRIB, pIntVec, STATE_PRIORITY_FORCE, false, "");
		}
	}
}

function checkCommandEnable_Thirdrib(obj) {

	return true;
}

function onSetState_Thirdrib(obj, state, datas, isResetTimer) {
	if (!obj) return;
	obj.sq_StopMove();
	local state = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(state);
	switch (state) {
	case 0:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_THIRDRIB_TRANS_START_BODY);
		if (!Seducer(obj)) 
		{
			playThirdribSound(obj);
		}
			break;
	case 1:
		local skill_level = sq_GetSkillLevel(obj, SKILL_THESEVENDEADLYSINS);
		local cishu = 0;
		if(skill_level > 0){
			local loadSlot = obj.sq_GetSkillLoad(SKILL_THESEVENDEADLYSINS);
			cishu = loadSlot.getRemainLoadNumber();
			cishu = (cishu * obj.sq_GetIntData(SKILL_THIRDRIB, 0)) / 100;
			loadSlot.decreaseLoadCount(obj.sq_GetLevelData(SKILL_THESEVENDEADLYSINS, 0, sq_GetSkillLevel(obj, SKILL_THESEVENDEADLYSINS)));
		}
		obj.getVar("cishu").clear_vector();
		obj.getVar("cishu").push_vector(cishu);
		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_THIRDRIB_A_BODY);
		local ani = obj.getVar().GetAnimationMap("thirdriba", "character/priest/seducer/atanimation/thirdrib_a_body.ani");
		obj.setCurrentAnimation(ani);
		
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_THIRDRIB);
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_THIRDRIB, -1, 0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
		obj.getVar("guanjian").clear_vector();
		obj.getVar("guanjian").push_vector(0);
		
		if (Seducer(obj)) {
			playThirdribdmSound(obj); 
		}
		
		break;
	case 2:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_THIRDRIB_B_BODY);
		local ani = obj.getVar().GetAnimationMap("thirdribb", "character/priest/seducer/atanimation/thirdrib_b_body.ani");
		obj.setCurrentAnimation(ani);
		
		if (obj.isMyControlObject()) {
			createThirdribBlackTwoLoopExp(obj, 0, 0, 0);
			createThirdribSpearRedLightSUB2LoopExp(obj, 0, 0, 0);
		}
		break;
	case 3:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_THIRDRIB_C_BODY);
		local ani = obj.getVar().GetAnimationMap("thirdribc", "character/priest/seducer/atanimation/thirdrib_c_body.ani");
		obj.setCurrentAnimation(ani);
		
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_THIRDRIBFINSH);
		local cishu = obj.getVar("cishu").get_vector(0);
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_THIRDRIB, -1, 2, 1.0 + cishu);
		obj.sq_SetCurrentAttackBonusRate(damage);

		if (obj.isMyControlObject()) 
			createThirdribbgblackplayer(obj, 0, 0, 0);

		createThirdribSpearRedLightSUB3Exp(obj, 0, 0, 0);
		createThirdribBlackThreeExp(obj, 0, 0, 0);
		createThirdribbgblackuser(obj, 0, 0, 0);
		createThirdribRoseExp(obj, 0, 0, 0);
		break;
	case 4:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_THIRDRIB_TRANS_END_BODY);

		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onEndCurrentAni_Thirdrib(obj) {
	if (!obj) return;
	local state = obj.getSkillSubState();

	switch (state) {
	case 0:
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 1);

		obj.addSetStatePacket(STATE_THIRDRIB, pIntVec, STATE_PRIORITY_FORCE, false, "");
		break;
	case 1:
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 2);

		obj.addSetStatePacket(STATE_THIRDRIB, pIntVec, STATE_PRIORITY_FORCE, false, "");
		break;
	case 2:
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 3);

		obj.addSetStatePacket(STATE_THIRDRIB, pIntVec, STATE_PRIORITY_FORCE, false, "");
		break;
	case 3:
		if (Seducer(obj)) {
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}
		else {
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 4);

			obj.addSetStatePacket(STATE_THIRDRIB, pIntVec, STATE_PRIORITY_FORCE, false, "");
		}

		break;
	case 4:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}

function playThirdribSound(obj) {
	if (!obj) return;
	local rand = sq_getRandom(0, 100).tointeger();
	if (rand <= 50) 
		obj.sq_PlaySound("PW_THIRDRIB_01");
	else if (rand <= 100) 
		obj.sq_PlaySound("PW_THIRDRIB_02");
}

function playThirdribdmSound(obj) {
	if (!obj) return;

	local rand = sq_getRandom(0, 100).tointeger();
	if (rand <= 50) 
		obj.sq_PlaySound("PW_THIRDRIB_DM_01");
	else if (rand <= 100) 
		obj.sq_PlaySound("PW_THIRDRIB_DM_02");
}

function onProc_Thirdrib(obj) {
	if (!obj) return;

	local state = obj.getSkillSubState(); //啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧SUB啮踝萧啮踝萧
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);

	switch (state) {
	case 1:
		if (frmIndex == 7 && obj.getVar("guanjian").get_vector(0) == 0) {
			if (obj.isMyControlObject()) {
				createThirdribBlackOneExp(obj, 0, 0, 0);
				createThirdribSpearRedLightSUB1Exp(obj, 0, 0, 0);

			}
			obj.getVar("guanjian").clear_vector();
			obj.getVar("guanjian").push_vector(1);
		}
		break;
	case 2:
		if (currentT >= sq_GetIntData(obj, SKILL_THIRDRIB, 7)) {
			setVliadEffectthirdribPassiveObject(obj);
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 3);

			obj.addSetStatePacket(STATE_THIRDRIB, pIntVec, STATE_PRIORITY_FORCE, false, "");
		}

		break;
	}
}

//2啮踝萧啮踝萧啮踝萧5啮踝萧啮?
function onAttack_Thirdrib(obj, damager, boundingBox, isStuck) {
	if (!obj) return;

	local state = obj.getSkillSubState(); //啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧SUB啮踝萧啮踝萧
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	switch (state) {
	case 1:
		if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE) && sq_IsHoldable(obj, damager)) {
			obj.getVar("damaThirdrib").push_obj_vector(damager);
			damager.setCurrentDirection(sq_GetDirection(obj));
			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, "character/atpriest/seducer/thirdrib/ap_thirdrib.nut", true);
			sq_HoldAndDelayDie(damager, obj, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL, masterAppendage);
		}
		break;
	case 3:
		if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE)) {
			createAttackCutExp(obj, damager);
			createThirdribRose_thirdrib(obj, damager);
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/seducer/thirdrib/ap_thirdrib.nut")) 
				CNSquirrelAppendage.sq_RemoveAppendage(damager, "character/atpriest/seducer/thirdrib/ap_thirdrib.nut");
		}
		break;
	}
}

function onEndState_Thirdrib(obj, new_state) {
	if (new_state != STATE_THIRDRIB) {
		local sq_var = obj.getVar("damaThirdrib");

		local objectsSize = sq_var.get_obj_vector_size();

		for (local i = 0; i < objectsSize; ++i) {
			local damager = sq_var.get_obj_vector(i);
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/seducer/thirdrib/ap_thirdrib.nut")) 
				CNSquirrelAppendage.sq_RemoveAppendage(damager, "character/atpriest/seducer/thirdrib/ap_thirdrib.nut");
		}
	}
}

function onKeyFrameFlag_Thirdrib(obj, flagIndex) //啮踝萧啮踝萧弮啮踝萧啮踝萧啮踝萧啮踝萧
{
	if (!obj) return;

	local state = obj.getSkillSubState(); //啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧sub state啮踝萧啮踝萧

	switch (state) {
	case 3:
		if (flagIndex == 1) {
			obj.sq_SetShake(obj, 4, 80);
			sq_flashScreen(obj, 0, 80, 0, 127, sq_RGB(255, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		}
		if (flagIndex == 2) {
			obj.sq_SetShake(obj, 2, 60);
			sq_flashScreen(obj, 0, 80, 0, 127, sq_RGB(255, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		}
		if (flagIndex == 3) {
			obj.sq_SetShake(obj, 1, 40);
		}
		break;
	}
	return true;
}

function setVliadEffectthirdribPassiveObject(obj) {
	local var = obj.getVar("effectObj");
	local objectsSize = var.get_obj_vector_size();
	for (local i = 0; i < objectsSize; ++i) {
		local effectObj = var.get_obj_vector(i);
		if (effectObj) {
			effectObj.setValid(false);
		}
	}
}

function createThirdribBlackOneExp(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atthirdrib/thirdrib_a_bg_black_all.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
}

function createThirdribSpearRedLightSUB1Exp(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atthirdrib/thirdrib_a_bg_eff_all01.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
}

function createThirdribSpearRedLightSUB2LoopExp(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atthirdrib/thirdrib_b_bg_eff_all02.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("effectObj").push_obj_vector(pooledObj);
}

function createThirdribBlackTwoLoopExp(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atthirdrib/thirdrib_b_bg_black_all.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("effectObj").push_obj_vector(pooledObj);
}

function createThirdribRoseExp(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atthirdrib/thirdrib_c_back_rose01.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	//pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
}

function createThirdribRose_thirdrib(obj, damager) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atthirdrib/lasthit_eff03.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj.setCurrentPos(damager.getXPos(), damager.getYPos() + 1, damager.getZPos() + damager.getObjectHeight() / 2);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
}

function createThirdribSpearRedLightSUB3Exp(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atthirdrib/thirdrib_c_bg_eff_all01.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
}

function createThirdribBlackThreeExp(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atthirdrib/thirdrib_c_bg_black_all.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
}

function createThirdribbgblackuser(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atthirdrib/thirdrib_c_bg_black_user.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
}

function createThirdribbgblackplayer(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atthirdrib/thirdrib_c_bg_black_player01.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
} 