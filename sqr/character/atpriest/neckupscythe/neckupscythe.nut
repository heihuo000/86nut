
function checkExecutableSkill_NeckUpScythe(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_NECK_UP_SCYTHE);

	if (isUseSkill) {
		if (Seducer(obj)) {
			obj.getVar("damaNeckUpScythe").clear_obj_vector();
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 4);
			obj.addSetStatePacket(STATE_NECK_UP_SCYTHE, pIntVec, STATE_PRIORITY_FORCE, false, "");
		} else {
			obj.getVar("damaNeckUpScythe").clear_obj_vector();
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 0);
			obj.addSetStatePacket(STATE_NECK_UP_SCYTHE, pIntVec, STATE_PRIORITY_FORCE, false, "");
		}
	}
}

function checkCommandEnable_NeckUpScythe(obj) {

	return true;
}


function onSetState_NeckUpScythe(obj, state, datas, isResetTimer) {
	if (!obj) return;
	obj.sq_StopMove();
	local state = obj.sq_GetVectorData(datas, 0);
	local id = sq_GetObjectId(obj);
	obj.setSkillSubState(state);
	switch (state) {
		case 0:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_NECKUPSCYTHE_ATTACK1_AWAKE_BODY);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_NECK_UP_SCYTHE_POKE);
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_NECK_UP_SCYTHE, -1, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate);
			break;
		case 1:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_NECKUPSCYTHE_ATTACK1_BODY);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_NECK_UP_SCYTHE_BACK_THROW);
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_NECK_UP_SCYTHE, -1, 1, 1.0);
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate);
			break;
		case 2:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_NECKUPSCYTHE_ATTACK2_BODY);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_NECK_UP_SCYTHE_BACK_THROW);
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_NECK_UP_SCYTHE, -1, 1, 1.0);
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate);
			break;
		case 3:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_NECKUPSCYTHE_ATTACK2_FRONT_BODY);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_NECK_UP_SCYTHE_FRONT_THROW);
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_NECK_UP_SCYTHE, -1, 1, 1.0);
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate);
			break;
		case 4:
			local ani = obj.getVar().GetAnimationMap("Seducer226", "Character/Priest/Seducer/ATAnimation/neckupscythe_attack1_demon.ani");
			obj.setCurrentAnimation(ani);
			
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_NECK_UP_SCYTHE_BACK_THROW);
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_NECK_UP_SCYTHE, -1, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate);
			break;
		case 5:
			local ani = obj.getVar().GetAnimationMap("Seducer227", "Character/Priest/Seducer/ATAnimation/neckupscythe_attack2_demon.ani");
			obj.setCurrentAnimation(ani);
			
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_NECK_UP_SCYTHE_FRONT_THROW);
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_NECK_UP_SCYTHE, -1, 1, 1.0);
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate);
			break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}


function onKeyFrameFlag_NeckUpScythe(obj, flagIndex) {
	if (!obj) return;
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local state = obj.getSkillSubState();
	switch (state) {
		case 2:
			if (flagIndex == 1)
				sq_SetMyShake(obj, 2, 100);
			break;
		case 3:
			if (flagIndex == 1) {
				sq_SetMyShake(obj, 2, 100);
				//obj.resetHitObjectList();
				//sq_SendHitObjectPacket(obj,damager,0,0, damager.getObjectHeight()/2);
			}
			break;
		case 4:
			if (flagIndex == 0)
				sq_SetMyShake(obj, 2, 160);
			break;
		case 5:
			if (flagIndex == 0)
				sq_SetMyShake(obj, 2, 240);
			break;
	}
	return true;
}

function onEndState_NeckUpScythe(obj, new_state) {
	if (!obj) return;

	if (new_state != STATE_NECK_UP_SCYTHE) {
		local sq_var = obj.getVar("damaNeckUpScythe");

		local objectsSize = sq_var.get_obj_vector_size();

		for (local i = 0; i < objectsSize; ++i) {
			local damager = sq_var.get_obj_vector(i);
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/neckupscythe/ap_neckupscythe.nut")) {

				CNSquirrelAppendage.sq_RemoveAppendage(damager, "character/atpriest/neckupscythe/ap_neckupscythe.nut");
			}
		}
	}
}


function onAttack_NeckUpScythe(obj, damager, boundingBox, isStuck) {
	if (!obj) return;
	local state = obj.getSkillSubState();
	switch (state) {
		case 0:
			if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE)) {
				obj.getVar("damaNeckUpScythe").push_obj_vector(damager);
				if (sq_IsHoldable(obj, damager) &&
					sq_IsGrabable(obj, damager) &&
					!sq_IsFixture(damager)) {
					obj.getVar("damaNeckUpScythe").push_obj_vector(damager);
					local damager_obj = obj.getVar("damaNeckUpScythe").get_obj_vector(0);
					local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager_obj, obj, STATE_NECK_UP_SCYTHE, false,
						"character/atpriest/neckupscythe/ap_neckupscythe.nut", true);
					local Srcx = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 150);
					sq_SetCurrentPos(damager_obj, Srcx, obj.getYPos() - 1, 50);
				}
			}
			break;
		case 4:
			if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE)) {
				obj.getVar("damaNeckUpScythe").push_obj_vector(damager);
				if (sq_IsHoldable(obj, damager) &&
					sq_IsGrabable(obj, damager) &&
					!sq_IsFixture(damager)) {
					obj.getVar("damaNeckUpScythe").push_obj_vector(damager);
					local damager_obj = obj.getVar("damaNeckUpScythe").get_obj_vector(0);
					local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager_obj, obj, STATE_NECK_UP_SCYTHE, false,
						"character/atpriest/neckupscythe/ap_neckupscythe.nut", true);
					local Srcx = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 150);
					sq_SetCurrentPos(damager_obj, Srcx, obj.getYPos() - 1, 50);
				}
			}
			break;
	}
}



function onEndCurrentAni_NeckUpScythe(obj) {
	if (!obj) return;
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local state = obj.getSkillSubState();
	switch (state) {
		case 0:
			if (obj.getVar("damaNeckUpScythe").get_obj_vector_size() > 0) {
				if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_RIGHT ||
					sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_LEFT) {
					local pIntVec = sq_GetGlobalIntVector();
					sq_IntVectorClear(pIntVec);
					sq_IntVectorPush(pIntVec, 2);

					obj.addSetStatePacket(STATE_NECK_UP_SCYTHE, pIntVec, STATE_PRIORITY_FORCE, false, "");
				} else {
					local pIntVec = sq_GetGlobalIntVector();
					sq_IntVectorClear(pIntVec);
					sq_IntVectorPush(pIntVec, 3);

					obj.addSetStatePacket(STATE_NECK_UP_SCYTHE, pIntVec, STATE_PRIORITY_FORCE, false, "");
				}
			} else {
				obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);

			}
			break;
		case 1:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
			break;
		case 2:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
			break;
		case 3:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
			break;
		case 4:
			if (obj.getVar("damaNeckUpScythe").get_obj_vector_size() > 0) {
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 5);

				obj.addSetStatePacket(STATE_NECK_UP_SCYTHE, pIntVec, STATE_PRIORITY_FORCE, false, "");
			} else
				obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);

			break;
		case 5:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
			break;
	}
}