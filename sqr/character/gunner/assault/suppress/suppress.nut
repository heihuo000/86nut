function checkExecutableSkill_Suppress(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_SUPPRESS);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_SUPPRESS, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_Suppress(obj) {
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

function onSetState_Suppress(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	switch (subState) {
	case 0:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_SUPPRESSCASTING);
		obj.sq_PlaySound("SUPPRESS_CAST"); 
		obj.sq_PlaySound("R_GN_SUPPRESS"); 
		break;
	case 1:
		local displacement = obj.sq_GetIntData(SKILL_SUPPRESS, 1); 
		local xPos = obj.getXPos(); 
		local endPoint = obj.getDirection() == ENUM_DIRECTION_LEFT ? xPos - displacement : xPos + displacement; 
		
		if (obj.isMovablePos(endPoint, obj.getYPos())) {
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_SUPPRESSEND);
			local sparkback = sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/suppress/sparkback_07.ani", ENUM_DRAWLAYER_NORMAL, true);
			local sparkfront = sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/suppress/sparkfront_02.ani", ENUM_DRAWLAYER_CONTACT, true);
			local speedlinebottom = sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/suppress/speedlinebottom_05.ani", ENUM_DRAWLAYER_BOTTOM, true);
		} else {
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_SUPPRESSENDSHORTDASH);
		}
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_SUPPRESS, STATE_SUPPRESS, 0, 1.0));

		local ani = obj.getCurrentAnimation(); 
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_SUPPRESSATTACK); 
		obj.sq_SetCurrentAttackBonusRate(attackBonusRate.tointeger()); 
		obj.getVar("Suppress").clear_vector(); 
		obj.getVar("Suppress").push_vector(xPos); 
		obj.getVar("Suppress").push_vector(displacement); 
		obj.getVar("Suppress").push_vector(endPoint); 
		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
}

function onKeyFrameFlag_Suppress(obj, flagIndex) {
	if (!obj) return false;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 1:
		if (obj.getVar("ArcDischarge").getInt(0) >= 100) {
			obj.getVar("SuppressIsArcDischarge").setBool(0, true);
		}
		break;
	}
	return true;
}

function onAfterAttack_Suppress(obj, damager, boundingBox, isStuck) {
	if (!obj) return 0;
	if (!obj.getVar("SuppressIsAttack").getBool(0) && !isStuck) {
		obj.getVar("ArcDischarge").setInt(0, obj.getVar("ArcDischarge").getInt(0) + 20);
		obj.getVar("SuppressIsAttack").setBool(0, true);
	}
	return 1;
}

function onProc_Suppress(obj) {
	if (!obj) return;
	if (obj.getVar("SuppressIsArcDischarge").getBool(0)) {
		startArcDischarge(obj, "SuppressIsArcDischarge");
	}
	local subState = obj.getSkillSubState(); 
	switch (subState) {
	case 1:
		if (obj.getVar("Suppress").size_vector() > 0) {
			local pAni = obj.getCurrentAnimation(); 
			local currentT = sq_GetCurrentTime(pAni); 
			local fireT = pAni.getDelaySum(0, 3); 
			local dstX = sq_GetDistancePos(obj.getVar("Suppress").get_vector(0), obj.getDirection(), sq_GetUniformVelocity(0, obj.getVar("Suppress").get_vector(1), currentT, fireT)); 
			local endPoint = obj.getVar("Suppress").get_vector(2);
			if (obj.isMovablePos(dstX, obj.getYPos())) { 
				sq_setCurrentAxisPos(obj, 0, dstX);
			} else if (!obj.isMovablePos(endPoint, obj.getYPos())) { 
				obj.getVar("Suppress").clear_vector(); 
			}
			
			
			
		}
		break;
	}
}

function onEndCurrentAni_Suppress(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_SUPPRESS, STATE_PRIORITY_USER, true);
		break;
	case 1:
		obj.getVar("SuppressIsAttack").setBool(0, false);
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}