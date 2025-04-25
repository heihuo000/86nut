function checkExecutableSkill_RaytheonCIRT(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_RAYTHEONCIRT);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_RAYTHEONCIRT, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_RaytheonCIRT(obj) {
	if (isAtSOWalkerOnBody(obj)) {
		return false;
	} else {
		local state = obj.sq_GetState();
		switch (state) {
		case STATE_STAND:
		case STATE_ATTACK:
		case STATE_DASH:
			return true;
		}
	}
	return false;
}

function onSetState_RaytheonCIRT(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	switch (subState) {
	case 0:
		obj.getVar("RaytheonCIRT").clear_vector(); 
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_RAYTHEONCIRT);
		obj.sq_PlaySound("R_GN_RAYTHEON_CIRT");
		local pooledObj = sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/raytheoncirt/raytheoncirt_back09.ani", ENUM_DRAWLAYER_BOTTOM, true);
		local pooledObj2 = sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/raytheoncirt/raytheoncirt_back13.ani", ENUM_DRAWLAYER_BOTTOM, true);
		local pooledObj3 = sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/raytheoncirt/raytheoncirt_front16.ani", ENUM_DRAWLAYER_NORMAL, true);
		sq_moveWithParent(obj, pooledObj);
		sq_moveWithParent(obj, pooledObj2);
		sq_moveWithParent(obj, pooledObj3);
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_RAYTHEONCIRT, STATE_RAYTHEONCIRT, 1, 1.0));

		local attackRate = obj.sq_GetIntData(SKILL_RAYTHEONCIRT, 0);
		//attackBonusRate = attackBonusRate.tofloat() * (attackRate.tofloat() / 100.0);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_RAYTHEONCIRTBODY); 
		obj.sq_SetCurrentAttackBonusRate(attackBonusRate.tointeger()); 
		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
}

function onEnterFrame_RaytheonCIRT(obj, frameIndex) {
	if (!obj) return;
	local subState = obj.getSkillSubState(); 
	switch (subState) {
	case 0:
		if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_LEFT || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_RIGHT) {
			if (frameIndex != 10) {
				return;
			}
		}
		switch (frameIndex) {
		case 9:
			//obj.sq_PlaySound("RG_GN_RAYTHEON_CIRT_02");
			obj.sq_PlaySound("R_MISSILEA_HIT");
			break;
		case 10:
			sq_SetShake(obj, 12, 1000);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_RAYTHEONCIRTARROW); 
			local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_RAYTHEONCIRT, STATE_RAYTHEONCIRT, 0, 1.0));

			local attackRate = obj.sq_GetIntData(SKILL_RAYTHEONCIRT, 0);
			local sizeRate = obj.sq_GetIntData(SKILL_RAYTHEONCIRT, 1);
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(SKILL_RAYTHEONCIRT); 
			sq_BinaryWriteDword(0); 
			sq_BinaryWriteDword(attackBonusRate.tointeger()); 
			sq_BinaryWriteDword(attackRate); 
			sq_BinaryWriteDword(sizeRate); 

			obj.getVar("RaytheonCIRT").clear_vector(); 
			obj.getVar("RaytheonCIRT").push_vector(obj.getXPos()); 
			if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_LEFT || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_RIGHT) {
				sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 110, 0, 80, obj.getDirection());
				obj.getVar("RaytheonCIRT").push_vector(0); 
			} else {
				sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 80, 0, 80, obj.getDirection());
				obj.getVar("RaytheonCIRT").push_vector(obj.sq_GetIntData(SKILL_RAYTHEONCIRT, 2)); 
			}

			break;
		}
		break;
	}
}

function onKeyFrameFlag_RaytheonCIRT(obj, flagIndex) {
	if (!obj) return false;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		if (obj.getVar("ArcDischarge").getInt(0) >= 100) {
			obj.getVar("RaytheonCIRTIsArcDischarge").setBool(0, true);
		}
		break;
	}
	return true;
}

function onProc_RaytheonCIRT(obj) {
	if (!obj) return;
	if (obj.getVar("RaytheonCIRTIsArcDischarge").getBool(0)) {
		startArcDischarge(obj, "RaytheonCIRTIsArcDischarge");
	}
	local subState = obj.getSkillSubState(); 
	switch (subState) {
	case 0:
		if (obj.getVar("RaytheonCIRT").size_vector() > 0) {
			local pAni = obj.getCurrentAnimation(); 
			local currentT = sq_GetCurrentTime(pAni); 
			local fireT = pAni.getDelaySum(10, 13); 
			local xPos = obj.getVar("RaytheonCIRT").get_vector(0);
			local distance = obj.getVar("RaytheonCIRT").get_vector(1);

			local v = sq_GetUniformVelocity(0, distance, currentT, fireT);
			local dstX = sq_GetDistancePos(xPos, obj.getDirection() == ENUM_DIRECTION_LEFT ? ENUM_DIRECTION_RIGHT : ENUM_DIRECTION_LEFT, v); 

			if (obj.isMovablePos(dstX, obj.getYPos())) { 
				sq_setCurrentAxisPos(obj, 0, dstX);
			} else { 
				obj.getVar("RaytheonCIRT").clear_vector(); 
			}
		}
		break;
	}
}

function onEndCurrentAni_RaytheonCIRT(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}