function checkExecutableSkill_EqualisMR(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_EQUALISMR);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_EQUALISMR, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_EqualisMR(obj) {
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

function onSetState_EqualisMR(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	switch (subState) {
	case 0:
		obj.getVar("ArcDischarge").setInt(0, 100);
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_EQUALISMR);
		obj.sq_PlaySound("EQUALIS_MR_START");
		obj.sq_PlaySound("R_GN_EQUALIS_MR_01");
		CreateAniRate_pooled(obj, "character/gunner/effect/animation/equalismr/back/equalismrback_62.ani", 0, 0, 0, ENUM_DRAWLAYER_BOTTOM, 1.0, false);
		CreateAniRate_pooled(obj, "character/gunner/effect/animation/equalismr/bottom/equalismrbottom_21.ani", 0, 0, 0, ENUM_DRAWLAYER_CLOSEBACK, 1.0, false);
		CreateAniRate_pooled(obj, "character/gunner/effect/animation/equalismr/cover/equalismrcover_327.ani", 0, 0, 0, ENUM_DRAWLAYER_CONTACT, 1.0, false);
		CreateAniRate_pooled(obj, "character/gunner/effect/animation/equalismr/front/equalismrfront_115.ani", 0, 0, 0, ENUM_DRAWLAYER_NORMAL, 1.0, false);
		CreateAniRate_pooled(obj, "character/gunner/effect/animation/equalismr/speedline/equalismrspeedline_00.ani", 500, 0, 0, ENUM_DRAWLAYER_NORMAL, 1.0, false);
		local flashScreenObj = sq_flashScreen(obj, 10, 99990, 240, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
		obj.getVar("flashobj").clear_obj_vector(); 
		obj.getVar("flashobj").push_obj_vector(flashScreenObj); 
		obj.sq_SetXScroll(-180, 0, 0, 160);
		obj.setTimeEvent(0, 340, 1, false);
		obj.setTimeEvent(1, 1000, 1, false);
		break;
	}
}

function onEnterFrame_EqualisMR(obj, frameIndex) {
	if (!obj) return;
	switch (frameIndex) {
	case 16:
		obj.sq_PlaySound("R_GN_EQUALIS_MR_02");
		break;
	case 29:
		obj.sq_PlaySound("EQUALIS_MR_BURST");
		obj.sq_PlaySound("R_GN_EQUALIS_MR_04");
		local ani = obj.getCurrentAnimation();
		local delay = ani.getDelaySum(29, 50);
		local attackCount = obj.sq_GetIntData(SKILL_EQUALISMR, 0);
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_EQUALISMR, STATE_EQUALISMR, 0, 1.0));
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_EQUALISMR); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(attackCount); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_BinaryWriteDword(delay); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
		break;
	}
}

function onKeyFrameFlag_EqualisMR(obj, flagIndex) {
	if (!obj) return false;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		if (obj.getVar("ArcDischarge").getInt(0) >= 100) {
			obj.getVar("EqualisMRIsArcDischarge").setBool(0, true);
		}
		break;
	}
	return true;
}

function onProcCon_EqualisMR(obj) {
	if (!obj) return;
	if (obj.getVar("EqualisMRIsArcDischarge").getBool(0)) {
		startArcDischarge(obj, "EqualisMRIsArcDischarge");
	}
}

function onTimeEvent_EqualisMR(obj, timeEventIndex, timeEventCount) {
	if (!obj) return true;
	switch (timeEventIndex) {
	case 0:
		sq_SendCreatePassiveObjectPacket(obj, 62108, 0, 0, 0, 0, obj.getDirection());
		break;
	case 1:
		obj.sq_SetXScroll(360, 2000, 99990, 0);
		break;
	}
}

function onAfterAttack_EqualisMR(obj, damager, boundingBox, isStuck) {
	if (!obj) return 0;
	if (!obj.getVar("EqualisMRIsAttack").getBool(0) && !isStuck) {
		obj.getVar("ArcDischarge").setInt(0, obj.getVar("ArcDischarge").getInt(0) + 50);
		obj.getVar("EqualisMRIsAttack").setBool(0, true);
	}
	return 1;
}

function onEndCurrentAni_EqualisMR(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		RemoveAllFlash(obj);
		obj.sq_SetXScrollStop(500);
		obj.getVar("EqualisMRIsAttack").setBool(0, false);
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}