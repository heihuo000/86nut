function checkExecutableSkill_Activation(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_ACTIVATION);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_ACTIVATION, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_Activation(obj) {
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/gunner/assault/at_sowalker/ap_at_sowalker.nut")) {
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

function onSetState_Activation(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	switch (subState) {
	case 0:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ACTIVATIONCAST);
		obj.sq_PlaySound("ACTIVATION_CAST");
		obj.sq_PlaySound("R_GN_ACTIVATION");
		break;
	case 1:
		local level = sq_GetSkillLevel(obj, SKILL_ACTIVATION);
		local duration = obj.sq_GetIntData(SKILL_ACTIVATION, 0);
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, obj.sq_GetSkillLevel(SKILL_ACTIVATION), false, "character/gunner/assault/activation/ap_activation.nut", false);
		if (appendage) {
			appendage.sq_SetValidTime(duration);
			appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_ACTIVATION, level); 
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_ACTIVATION, true);
			appendage.setBuffIconImage(152);
		}
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ACTIVATIONSTART);
		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
}

function onEndCurrentAni_Activation(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_ACTIVATION, STATE_PRIORITY_USER, true);
		break;
	case 1:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}