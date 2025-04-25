function checkExecutableSkill_BashStock(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_BASHSTOCK);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_BASHSTOCK, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_BashStock(obj) {
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

function onSetState_BashStock(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	switch (subState) {
	case 0:
		obj.getVar().setBool(0, true);
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_BASHSTOCKSTART);
		obj.sq_PlaySound("R_GN_BASH_STOCK");
		break;
	case 1:
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_BASHSTOCK, STATE_BASHSTOCK, 0, 1.0));
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_BASHSTOCKATTACK);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_BASHSTOCKATTACK); 
		obj.sq_SetCurrentAttackBonusRate(attackBonusRate.tointeger()); 
		obj.sq_PlaySound("BASHSTOCK_SWISH");

		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
}

function onKeyFrameFlag_BashStock(obj, flagIndex) {
	if (!obj) return false;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 1:
		if (obj.getVar("ArcDischarge").getInt(0) >= 100) {
			obj.getVar("BashStockIsArcDischarge").setBool(0, true);
		}
		break;
	}
	return true;
}

function onProcCon_BashStock(obj) {
	if (!obj) return;
	if (obj.getVar("BashStockIsArcDischarge").getBool(0)) {
		startArcDischarge(obj, "BashStockIsArcDischarge");
	}
}

function onAttack_BashStock(obj, damager, boundingBox, isStuck) {
	if (!obj) return;
	local subState = obj.getSkillSubState();
	local activeObj = sq_GetCNRDObjectToActiveObject(damager);
	if (!isStuck && activeObj) {
		if (obj.getVar().getBool(0)) {
			sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/bashstock/attack/bashstockattack_04.ani", ENUM_DRAWLAYER_NORMAL, true);
			sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/bashstock/attack/dust_00.ani", ENUM_DRAWLAYER_NORMAL, true);
			obj.getVar().setBool(0, false);
		}

		local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, SKILL_BASHSTOCK, true, "character/gunner/assault/bashstock/ap_bashstock.nut", true);
		appendage.sq_SetValidTime(obj.sq_GetIntData(SKILL_BASHSTOCK, 0));
		sq_HoldAndDelayDie(damager, obj, true, false, false, 0, 0, ENUM_DIRECTION_NEUTRAL, appendage);
	}
}

function onEndCurrentAni_BashStock(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_BASHSTOCK, STATE_PRIORITY_USER, true);
		break;
	case 1:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}