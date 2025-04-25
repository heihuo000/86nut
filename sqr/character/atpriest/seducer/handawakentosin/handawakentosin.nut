function checkExecutableSkill_HandAwakenToSin(obj) {
	if (!obj) return false;

	local isUse = obj.sq_IsUseSkill(SKILL_HANDAWAKENTOSIN);

	if (isUse) {
		if (Seducer(obj)) {
			obj.getVar("damaHandAwakenToSin").clear_obj_vector();
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 1);
			obj.addSetStatePacket(STATE_HANDAWAKENTOSIN, pIntVec, STATE_PRIORITY_FORCE, false, "");
		} else {
			obj.getVar("damaHandAwakenToSin").clear_obj_vector();
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 0);
			obj.addSetStatePacket(STATE_HANDAWAKENTOSIN, pIntVec, STATE_PRIORITY_FORCE, false, "");
		}
	}
}

function checkCommandEnable_HandAwakenToSin(obj) {
	return true;
}

function onSetState_HandAwakenToSin(obj, state, datas, isResetTimer) {
	if (!obj) return;
	obj.sq_StopMove();
	local state = obj.sq_GetVectorData(datas, 0);

	obj.setSkillSubState(state);
	switch (state) {
		case 0:
			local ani = obj.getVar().GetAnimationMap("Seducer199", "Character/Priest/Seducer/ATAnimation/handawakentosin_human2devil_body.ani");
			obj.setCurrentAnimation(ani);
			break;
		case 1:
			local ani = obj.getVar().GetAnimationMap("Seducer200", "Character/Priest/Seducer/ATAnimation/handawakentosin_skill_body_a.ani");
			obj.setCurrentAnimation(ani);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_HANDAWAKENTOSIN);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_HANDAWAKENTOSIN, -1, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
			break;

		case 2:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_HANDAWAKENTOSIN_SKILL_BODY_B);
			local ani = obj.getVar().GetAnimationMap("Seducer201", "Character/Priest/Seducer/ATAnimation/handawakentosin_skill_body_b.ani");
			obj.setCurrentAnimation(ani);
			break;
		case 3:
			local ani = obj.getVar().GetAnimationMap("Seducer202", "Character/Priest/Seducer/ATAnimation/handawakentosin_devil2human_body.ani");
			obj.setCurrentAnimation(ani);
			break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
		SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}


function cratHandAwakenToSin(obj, disX, disY, disZ, img) {

	local ani = sq_CreateAnimation("", img);

	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_AddObject(obj, pooledObj, 2, false);

}

function onEndCurrentAni_HandAwakenToSin(obj) {
	if (!obj) return;
	local state = obj.getSkillSubState();

	switch (state) {
		case 0:
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 1);

			obj.addSetStatePacket(STATE_HANDAWAKENTOSIN, pIntVec, STATE_PRIORITY_FORCE, false, "");

			break;
		case 1:
			if (obj.getVar("damaHandAwakenToSin").get_obj_vector_size() > 0) {
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 2);

				obj.addSetStatePacket(STATE_HANDAWAKENTOSIN, pIntVec, STATE_PRIORITY_FORCE, false, "");
			} else
				obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);

			break;
		case 2:
			if (Seducer(obj)) {
				obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);

			} else {
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 3);

				obj.addSetStatePacket(STATE_HANDAWAKENTOSIN, pIntVec, STATE_PRIORITY_FORCE, false, "");
			}

			break;
		case 3:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			break;
	}
}


function onKeyFrameFlag_HandAwakenToSin(obj, flagIndex) 
{
	if (!obj) return;


	local state = obj.getSkillSubState(); 

	switch (state) {
		case 1:
			if (flagIndex == 0) {
				if (Seducer(obj))
					obj.sq_PlaySound("PW_HANDAWAKENTOSIN_DM");
				else
					obj.sq_PlaySound("PW_HANDAWAKENTOSIN");
			}
			break;
		case 2:
			if (flagIndex == 0) {
				obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_HANDAWAKENTOSINEXPLOSION);
				local damage = obj.sq_GetBonusRateWithPassive(SKILL_HANDAWAKENTOSIN, -1, 1, 1.0);
				obj.sq_SetCurrentAttackBonusRate(damage);

				obj.sq_PlaySound("SCUDWRATH_END");
				obj.sq_SetShake(obj, 6, 300);
				sq_flashScreen(obj, 0, 80, 160, 107, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
				//`create explosion`60	0	144	
			}

			break;


	}
	return true;
}


function createhandawakentosinAExp(obj, damager) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/athandawakentosin/handawakentosin_explosion_a.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj.setCurrentPos(damager.getXPos(), damager.getYPos() + 1, damager.getZPos() + damager.getObjectHeight() / 2);
	pooledObj.setCurrentDirection(damager.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
}

function createhandawakentosinBExp(obj, damager) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/athandawakentosin/handawakentosin_explosion_b.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj.setCurrentPos(damager.getXPos(), damager.getYPos() + 1, damager.getZPos() + damager.getObjectHeight() / 2);
	pooledObj.setCurrentDirection(damager.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
}

function createhandawakentosinCExp(obj, damager) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/athandawakentosin/handawakentosin_explosion_c.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj.setCurrentPos(damager.getXPos(), damager.getYPos() + 1, damager.getZPos() + damager.getObjectHeight() / 2);
	pooledObj.setCurrentDirection(damager.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
}


function onAttack_HandAwakenToSin(obj, damager, boundingBox, isStuck) {
	if (!obj)
		return false;
	local state = obj.getSkillSubState();

	switch (state) {
		case 1:
			if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE)) {
				damager.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));

				local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false,
					"character/atpriest/seducer/handawakentosin/ap_handawakentosin.nut", true);
				obj.getVar("damaHandAwakenToSin").push_obj_vector(damager);
				createAttackCutExp(obj, damager);
				if (sq_IsGrabable(obj, damager) &&
					sq_IsHoldable(obj, damager) &&
					!sq_IsFixture(damager)) {
					damager.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));

					local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false,
						"character/atpriest/seducer/handawakentosin/ap_handawakentosin.nut", true);
					sq_HoldAndDelayDie(damager, obj, true, false, true, 0, 300, ENUM_DIRECTION_NEUTRAL, masterAppendage);
					obj.getVar("damaHandAwakenToSin").push_obj_vector(damager);
					createAttackCutExp(obj, damager);
				}
			}
			break;
		case 2:
			if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE)) {
				createhandawakentosinAExp(obj, damager);
				createhandawakentosinBExp(obj, damager);
				createhandawakentosinCExp(obj, damager);
				local sq_var = obj.getVar("damaHandAwakenToSin");

				local objectsSize = sq_var.get_obj_vector_size();

				for (local i = 0; i < objectsSize; ++i) {
					local damager = sq_var.get_obj_vector(i);
					if (CNSquirrelAppendage.sq_IsAppendAppendage(damager,
							"character/atpriest/seducer/handawakentosin/ap_handawakentosin.nut"))
						CNSquirrelAppendage.sq_RemoveAppendage(damager,
							"character/atpriest/seducer/handawakentosin/ap_handawakentosin.nut");
				}
			}
			break;

	}
}


function onEndState_HandAwakenToSin(obj, new_state) {
	if (new_state != STATE_HANDAWAKENTOSIN) {
		local sq_var = obj.getVar("damaHandAwakenToSin");

		local objectsSize = sq_var.get_obj_vector_size();

		for (local i = 0; i < objectsSize; ++i) {
			local damager = sq_var.get_obj_vector(i);
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager,
					"character/atpriest/seducer/handawakentosin/ap_handawakentosin.nut"))
				CNSquirrelAppendage.sq_RemoveAppendage(damager,
					"character/atpriest/seducer/handawakentosin/ap_handawakentosin.nut");
		}
	}
}   