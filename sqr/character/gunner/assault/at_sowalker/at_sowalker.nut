function checkExecutableSkill_AT_SOWalker(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_AT_SOWALKER);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_AT_SOWALKER, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_AT_SOWalker(obj) {
	return true;
}

function onSetState_AT_SOWalker(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	local ronCount = obj.getVar("RonCount").getInt(0);
	switch (subState) {
	case 0:
		local myObject = onGetMyPassiveObject_My(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, SKILL_AT_SOWALKER, 0);
		if (isAtSOWalkerOnBody(obj)) { 
			switch (myObject.getState()) {
			case 11:
			case 12:
			case 13:
			case 14:
			case 16:
				myObject.getVar("isRide").setBool(0, false);
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(2);
				obj.sq_AddSetStatePacket(STATE_AT_SOWALKER, STATE_PRIORITY_USER, true);
				obj.flushSetStatePacket();
				return;
			}
		}
		if (myObject != null) { 
			switch (myObject.getState()) {
			case 11:
			case 12:
			case 13:
			case 14:
				myObject.addSetStatePacket(16, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(1);
				obj.sq_AddSetStatePacket(STATE_AT_SOWALKER, STATE_PRIORITY_USER, true);
				obj.flushSetStatePacket();
				return;
			}
		}
		if (myObject != null) {
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			obj.flushSetStatePacket();
			return;
		}
		
		obj.getVar("RonCount").setInt(0, 0); 
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSOWALKERSTARTBODY);
		break;
	case 1:
		
		ronCount++;
		obj.getVar("RonCount").setInt(0, ronCount); 
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSOWALKERONBODY);
		sq_SetCustomDamageType(obj, true, 1); 
		//obj.setTimeEvent(0, obj.sq_GetIntData(SKILL_AT_SOWALKER, 31), 1, false); 
		break;
	case 2:
		
		if (ronCount >= 9999) { 
			obj.startSkillCoolTime(SKILL_AT_SOWALKER, 1, obj.sq_GetIntData(SKILL_AT_SOWALKER, 52)); 
		}
		sq_SetCustomDamageType(obj, false, 1);
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSOWALKEROFF);
		break;
	case 3:
		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSOWALKERANORMALATTACK);
		obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/animation/at_sowalker/atsowalkeradirectfeedbackeffect_04.ani"), 0, 0);
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_AT_SOWALKER, STATE_AT_SOWALKER, 2, 1.0));
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_AT_SOWALKER); 
		sq_BinaryWriteDword(2); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 160, 0, 120, obj.getDirection());
		break;
	case 4:
		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSOWALKERAJUMPATTACKREADY);
		break;
	case 5:
		
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_AT_SOWALKER, STATE_AT_SOWALKER, 2, 1.0));
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSOWALKERAJUMPATTACK);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_AT_SOWALKER); 
		sq_BinaryWriteDword(2); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 140, 0, 170, obj.getDirection());
		break;
	}
	
}

function onProc_AT_SOWalker(obj) {
	if (!obj) return;

	local subState = obj.getSkillSubState(); 
	switch (subState) {
	case 4:
	case 5:
		if (obj.getZPos() <= 0) {
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}
		break;
	}
}

function onEndCurrentAni_AT_SOWalker(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		local duration = obj.sq_GetIntData(SKILL_AT_SOWALKER, 0);
		local searchEnemiesX = obj.sq_GetIntData(SKILL_AT_SOWALKER, 1);
		local searchEnemiesY = obj.sq_GetIntData(SKILL_AT_SOWALKER, 2);
		local searchEnemiesZ = obj.sq_GetIntData(SKILL_AT_SOWALKER, 3);
		local attackInterval = obj.sq_GetIntData(SKILL_AT_SOWALKER, 4);
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_AT_SOWALKER, STATE_AT_SOWALKER, 0, 1.0));
		local attackCount = obj.sq_GetIntData(SKILL_AT_SOWALKER, 7);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_AT_SOWALKER); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(duration); 
		sq_BinaryWriteDword(searchEnemiesX); 
		sq_BinaryWriteDword(searchEnemiesY); 
		sq_BinaryWriteDword(searchEnemiesZ); 
		sq_BinaryWriteDword(attackInterval); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_BinaryWriteDword(attackCount); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 250, 0, 0, obj.getDirection());
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	case 1:
		local uiEffect = CreateAniRate_pooled(obj, "ui/character/gunner/atsowalker.ani", obj.getDirection() == ENUM_DIRECTION_LEFT ? -180 : 0, 0, 250, ENUM_DRAWLAYER_CONTACT, false, false);
		sq_moveWithParent(obj, uiEffect);
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_AT_SOWALKER, false, "character/gunner/assault/at_sowalker/ap_at_sowalker.nut", true);
		appendage.getVar().setInt(0, obj.sq_GetIntData(SKILL_AT_SOWALKER, 32));
		local speedAddValue = obj.sq_GetIntData(SKILL_AT_SOWALKER, 26);

		appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_AT_SOWALKER, obj.sq_GetSkillLevel(SKILL_AT_SOWALKER)); 
		CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_AT_SOWALKER, true); 

		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		KeepMaxReduction(obj);
		break;
	case 2:
		local myObject = onGetMyPassiveObject_My(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, SKILL_AT_SOWALKER, 0);
		if (myObject != null && !myObject.getVar("isDestroy").getBool(0)) {
			myObject.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
		}
		CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/gunner/assault/at_sowalker/ap_at_sowalker.nut");
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	case 3:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	case 4:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(5);
		obj.sq_AddSetStatePacket(STATE_AT_SOWALKER, STATE_PRIORITY_USER, true);
		break;
	case 5:
		sq_SetKeyxEnable(obj, E_ATTACK_COMMAND, true); 
		if (sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL) || sq_IsEnterCommand(obj, E_ATTACK_COMMAND)) {
			obj.sq_IntVectClear();
			obj.sq_AddSetStatePacket(7, STATE_PRIORITY_USER, false);
		} else {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(1);
			obj.sq_IntVectPush(0);
			obj.sq_IntVectPush(0);
			obj.sq_AddSetStatePacket(6, STATE_PRIORITY_USER, true);
		}
		break;
	}
}

function onEndState_AT_SOWalker(obj, newState)
{
	if(!obj) return;
	if(newState == STATE_AT_SOWALKER) return;
	sq_SetCustomDamageType(obj, false, 1);
}

function onTimeEvent_AT_SOWalker(obj, timeEventIndex, timeEventCount) {
	if (!obj) return true;
	switch (timeEventIndex) {
	case 0:
		sq_SetCustomDamageType(obj, false, 2);
		sq_SetCustomDamageType(obj, true, 1);
		break;
	}
}