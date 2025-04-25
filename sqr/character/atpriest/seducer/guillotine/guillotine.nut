function checkExecutableSkill_Guillotine(obj) {
	if (!obj) return false;

	local isUse = obj.sq_IsUseSkill(SKILL_GUILLOTINE);

	if (isUse) {
		obj.getVar("flag_20").setInt(0, 0);
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_GUILLOTINE, pIntVec, STATE_PRIORITY_FORCE, false, "");
	}
}

function checkCommandEnable_Guillotine(obj) {

	return true;
}

function onSetState_Guillotine(obj, state, datas, isResetTimer) {
	if (!obj) return;
	local state = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(state);
	obj.sq_StopMove();
	switch (state) {
	case 0:
		obj.getVar("dama").clear_obj_vector();
		if (Seducer(obj)) {
			local ani = obj.getVar().GetAnimationMap("Seducer110", "Character/Priest/Seducer/ATAnimation/guillotine_ready_demonization.ani");
			obj.setCurrentAnimation(ani);
			
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_GUILLOTINE_GRAB_FIRST);

			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_GUILLOTINE, -1, 1, 1.0);
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate); 
		}
		else {
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_GUILLOTINE_READY_BODY);//
			
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_GUILLOTINE_GRAB_FIRST);
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_GUILLOTINE, -1, 1, 1.0); 
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate);
		}
		break;
	case 1:
		createguillotineSoilExp(obj, -150, 0, obj.getZPos() / -1);
		if (Seducer(obj)) {
			local ani = obj.getVar().GetAnimationMap("Seducer111", "Character/Priest/Seducer/ATAnimation/guillotine_grab_demonization.ani");
			obj.setCurrentAnimation(ani);
			
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_GUILLOTINE_GRAB_SECOND);
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_GUILLOTINE, -1, 2, 1.0);
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate);
		}
		else {
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_GUILLOTINE_GRAB);
			
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_GUILLOTINE_GRAB_SECOND);
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_GUILLOTINE, -1, 2, 1.0);
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate);

		}
		obj.getVar().clear_vector();
		obj.getVar().push_vector(obj.getXPos());
		obj.getVar().push_vector(obj.getYPos());
		obj.getVar().push_vector(obj.getZPos());
		obj.getVar().push_vector(0);
		obj.sq_ZStop();
		break;
	case 2:

		if (Seducer(obj)) {
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_GUILLOTINE_SMASH_DEMONIZATION); 
			local ani = obj.getVar().GetAnimationMap("SmashD", "character/priest/seducer/atanimation/guillotine_smash_demonization.ani");
			obj.setCurrentAnimation(ani);
		}
		else {
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_GUILLOTINE_SMASH);
		}

		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onProc_Guillotine(obj) {
	if (!obj) return;
	local state = obj.getSkillSubState(); //啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧SUB啮踝萧啮踝萧
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	switch (state) {

	case 1:
		local tar = obj.getVar("dama").get_obj_vector(0);
		if (tar) {
			local startFrameIndex = 0;
			local endFrameIndex = 3;
			local currentT = sq_GetCurrentTime(pAni);
			if (frmIndex <= startFrameIndex) 
			{
				
			} 
			else if (frmIndex >= startFrameIndex && frmIndex <= endFrameIndex) {
				local startX = obj.getVar().get_vector(0);
				local startY = obj.getVar().get_vector(1);
				local startZ = obj.getVar().get_vector(2);
				currentT = currentT - pAni.getDelaySum(0, startFrameIndex);
				local maxT = pAni.getDelaySum(startFrameIndex, endFrameIndex);

				local lastX = sq_GetDistancePos(tar.getXPos(), obj.getDirection(), tar.getObjectHeight() / 2 - 50);
				local lastY = tar.getYPos() + 1;
				local lastZ = tar.getZPos() + tar.getObjectHeight() / 2 + 10;
				if (Seducer(obj)) 
					lastZ = tar.getZPos() + tar.getObjectHeight() / 2 + 50;

				if (currentT < maxT && obj.getVar().get_vector(3) == 0) {
					local v = sq_GetAccel(startX, lastX, currentT, 200, true);
					local v2 = sq_GetAccel(startY, lastY, currentT, 200, true);
					local v3 = sq_GetAccel(startZ, lastZ, currentT, 200, true);
					if (obj.isMovablePos(v, v2)) {
						sq_setCurrentAxisPos(obj, 0, v);
						sq_setCurrentAxisPos(obj, 1, v2);
						sq_setCurrentAxisPos(obj, 2, v3);
					} else {
						obj.getVar().set_vector(2, 1);
					}

				}
			}
		}
		break;
	}
}

function onAttack_Guillotine(obj, damager, boundingBox, isStuck) {
	if (!obj) return;
	if (!damager) return;
	local state = obj.getSkillSubState();
	switch (state) {
	case 0:
		if (damager.isObjectType(OBJECTTYPE_ACTIVE) && sq_IsHoldable(obj, damager)) {
			obj.getVar("flag_20").setInt(0, 1);
			obj.getVar("dama").push_obj_vector(damager);
			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, "character/atpriest/seducer/guillotine/ap_guillotine.nut", true);
			sq_HoldAndDelayDie(damager, obj, true, false, false, 0, 0, ENUM_DIRECTION_NEUTRAL, masterAppendage);
		}
		break;
	case 1:
		createguillotinebloodoneExp(obj, 0, 0, 0);
		createAttackCutExp(obj, damager);
		if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/seducer/guillotine/ap_guillotine.nut")) {
			CNSquirrelAppendage.sq_RemoveAppendage(damager, "character/atpriest/seducer/guillotine/ap_guillotine.nut");
		}
		break;
	}
}

function onEndState_Guillotine(obj, new_state) {
	if (new_state != STATE_GUILLOTINE) {
		local sq_var = obj.getVar("dama");
		local objectsSize = sq_var.get_obj_vector_size();
		for (local i = 0; i < objectsSize; ++i) {
			local damager = sq_var.get_obj_vector(i);
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/seducer/guillotine/ap_guillotine.nut")) {
				CNSquirrelAppendage.sq_RemoveAppendage(damager, "character/atpriest/seducer/guillotine/ap_guillotine.nut");
			}
		}
	}
}

function onEndCurrentAni_Guillotine(obj) {
	if (!obj) return;
	local state = obj.getSkillSubState();
	switch (state) {
	case 0:
		local flag = obj.getVar("flag_20").getInt(0);
		if (flag == 1) {
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 1);
			obj.addSetStatePacket(STATE_GUILLOTINE, pIntVec, STATE_PRIORITY_FORCE, false, "");
		}
		else {
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
		}
		break;
	case 1:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_IntVectPush(0);
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
		break;
	case 2:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
		break;
	}
}

function onKeyFrameFlag_Guillotine(obj, flagIndex) //啮踝萧啮踝萧弮啮踝萧啮踝萧啮踝萧啮踝萧
{
	if (!obj) return;

	local state = obj.getSkillSubState(); //啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧sub state啮踝萧啮踝萧

	switch (state) {
	case 1:
		if (flagIndex == 1) {
			obj.sq_SetShake(obj, 2, 100);
			sq_flashScreen(obj, 10, 100, 20, 51, sq_RGB(255, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		}
		break;
	}
	return true;
}

function createguillotineSoilExp(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atguillotine/guillotine_ready_smoke.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_COVER);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
}

function createguillotinebloodoneExp(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atguillotine/ggceff_a.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
	sq_SetCustomRotate(pooledObj, 2.0);

}

function createguillotinebloodtwoExp(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atguillotine/gokeff_a.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
}   