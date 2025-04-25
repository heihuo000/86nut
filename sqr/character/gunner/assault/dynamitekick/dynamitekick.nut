function checkExecutableSkill_DynamiteKick(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_DYNAMITEKICK);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_DYNAMITEKICK, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_DynamiteKick(obj) {
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

function onSetState_DynamiteKick(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	switch (subState) {
	case 0:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DYNAMITEKICK_START);
		obj.sq_PlaySound("R_GN_DYNAMITE_KICK_01");
		obj.sq_PlaySound("DYNAMITEKICK_READY");
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/dynamitekick/start/dynamitekick_start_front_00.ani", ENUM_DRAWLAYER_NORMAL, true);
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/dynamitekick/start/dynamitekick_start_04.ani", ENUM_DRAWLAYER_NORMAL, true);
		break;
	case 1:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DYNAMITEKICK_ATTACK);
		obj.sq_PlaySound("DYNAMITEKICK_KICK");
		obj.sq_PlaySound("R_GN_DYNAMITE_KICK_02");
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/dynamitekick/attack/dynamitekick_attack_bottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/dynamitekick/attack/dynamitekickattackback_00.ani", ENUM_DRAWLAYER_NORMAL, true);

		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_DYNAMITEKICK, STATE_DYNAMITEKICK, 0, 1.0));
		local sizeRate = obj.sq_GetIntData(SKILL_DYNAMITEKICK, 0);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_DYNAMITEKICK); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_BinaryWriteDword(sizeRate); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
}

function onEnterFrame_DynamiteKick(obj, frameIndex) {
	if (!obj) return;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		switch (frameIndex) {
		case 3:
			obj.sq_PlaySound("RG_GN_DYNAMITE_KICK_02");
			break;
		}
		break;
	}
}

function onKeyFrameFlag_DynamiteKick(obj, flagIndex) {
	if (!obj) return false;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 1:
		if (obj.getVar("ArcDischarge").getInt(0) >= 100) {
			obj.getVar("DynamiteKickIsArcDischarge").setBool(0, true);
		}
		break;
	}
	return true;
}

function onProcCon_DynamiteKick(obj) {
	if (!obj) return;
	if (obj.getVar("DynamiteKickIsArcDischarge").getBool(0)) {
		startArcDischarge(obj, "DynamiteKickIsArcDischarge");
	}
}

function onEndCurrentAni_DynamiteKick(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_DYNAMITEKICK, STATE_PRIORITY_USER, true);
		break;
	case 1:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}