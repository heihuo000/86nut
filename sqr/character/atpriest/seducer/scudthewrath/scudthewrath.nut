function checkExecutableSkill_Scudthewrath(obj) {
	if (!obj) return false;

	local isUse = obj.sq_IsUseSkill(SKILL_SCUDTHEWRATH);

	if (isUse) {
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_SCUDTHEWRATH, pIntVec, STATE_PRIORITY_FORCE, false, "");
	}
}

function checkCommandEnable_Scudthewrath(obj) {

	return true;
}


function onSetState_Scudthewrath(obj, state, datas, isResetTimer) {
	if (!obj) return;
	obj.sq_StopMove();
	local state = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(state);
	switch (state) {
		case 0:
			obj.getVar("dama").clear_obj_vector()
			local ani = obj.getVar().GetAnimationMap("Seducer150", "Character/Priest/Seducer/ATAnimation/atscudthewrath_transform_body.ani");
			obj.setCurrentAnimation(ani);
			
			if (Seducer(obj))
				obj.sq_PlaySound("R_PW_SCUDWRATH_DM");
			else
				obj.sq_PlaySound("R_PW_SCUDWRATH");
			break;
		case 1:
			local ani = obj.getVar().GetAnimationMap("Seducer151", "Character/Priest/Seducer/ATAnimation/atscudthewrath_dash_01.ani");
			obj.setCurrentAnimation(ani);
			
			obj.getVar("pos").clear_vector();
			obj.getVar("pos").push_vector(obj.getXPos());
			obj.getVar("pos").push_vector(obj.getZPos());
			if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_LEFT ||
				sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && obj.getDirection() == ENUM_DIRECTION_RIGHT) {
				obj.getVar("pos").push_vector(sq_GetIntData(obj, SKILL_SCUDTHEWRATH, 0)); //x
				obj.getVar("pos").push_vector(0); //z
			} else {
				obj.getVar("pos").push_vector(sq_GetIntData(obj, SKILL_SCUDTHEWRATH, 1)); //x
				obj.getVar("pos").push_vector(0); //z
			}

			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_SCYTHEMSSACRE_LOOP);

			local damage = obj.sq_GetBonusRateWithPassive(SKILL_SCUDTHEWRATH, STATE_SCUDTHEWRATH, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);

			break;
		case 2:
			local ani = obj.getVar().GetAnimationMap("Seducer152", "Character/Priest/Seducer/ATAnimation/atscudthewrath_stop_01.ani");
			obj.setCurrentAnimation(ani);
			
			if (obj.isMyControlObject()) {
				creatscudthewrathscreen(obj, 0, 0, 0)
			}
			obj.getVar("guanjian").clear_vector();
			obj.getVar("guanjian").push_vector(0);
			break;
		case 3:
			local ani = obj.getVar().GetAnimationMap("Seducer153", "Character/Priest/Seducer/ATAnimation/atscudthewrath_end_body.ani");
			obj.setCurrentAnimation(ani);
			break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
		SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}



function onEndCurrentAni_Scudthewrath(obj) {
	if (!obj) return;
	local state = obj.getSkillSubState();

	switch (state) {
		case 0:
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 1);

			obj.addSetStatePacket(STATE_SCUDTHEWRATH, pIntVec, STATE_PRIORITY_FORCE, false, "");
			break;
		case 1:
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 2);

			obj.addSetStatePacket(STATE_SCUDTHEWRATH, pIntVec, STATE_PRIORITY_FORCE, false, "");
			break;
		case 2:
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 3);

			obj.addSetStatePacket(STATE_SCUDTHEWRATH, pIntVec, STATE_PRIORITY_FORCE, false, "");
			break;
		case 3:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			break;
	}
}


function creatscudthewrathhit(obj, disX, disY, disZ) {

	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atscudthewrath/atscudthewrath_hit_01.ani");

	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_AddObject(obj, pooledObj, 2, false);

}



function creatscudthewrathscreen(obj, disX, disY, disZ) {

	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atscudthewrath/atscudthewrath_screen.ani");

	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_AddObject(obj, pooledObj, 2, false);

}

function onProc_Scudthewrath(obj) {
	if (!obj) return;

	local state = obj.getSkillSubState(); 
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);

	switch (state) {
		case 1:

			local pAni = obj.sq_GetCurrentAni();
			local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);


			local startFrameIndex = 0;
			local endFrameIndex = 3;

			local currentT = sq_GetCurrentTime(pAni);

			if (frmIndex < startFrameIndex) {} else if (frmIndex > startFrameIndex && frmIndex <= endFrameIndex) {
				local startX = obj.getVar("pos").get_vector(0);
				local startZ = obj.getVar("pos").get_vector(1);

				local maxD = obj.getVar("pos").get_vector(2);
				local mazD = obj.getVar("pos").get_vector(3);

				currentT = currentT - pAni.getDelaySum(0, startFrameIndex);
				local maxT = pAni.getDelaySum(startFrameIndex, endFrameIndex);
				if (currentT < maxT) {
					local v = sq_GetAccel(0, maxD, currentT, maxT, true);
					local dstX = sq_GetDistancePos(startX, obj.getDirection(), v);
					local dstZ = startZ + sq_GetAccel(0, mazD, currentT, maxT, true);
					if (obj.isMovablePos(dstX, obj.getYPos())) {
						sq_setCurrentAxisPos(obj, 0, dstX);
						sq_setCurrentAxisPos(obj, 2, dstZ);
					}

				}
			}
			break;
		case 2:
			if (frmIndex == 11 && obj.getVar("guanjian").get_vector(0) == 0) {
				if (obj.isMyControlObject()) {
					creatscudthewrathhit(obj, -250, 0, 82);
					local damager = obj.getVar("dama").get_obj_vector(0);
					sq_SendHitObjectPacket(obj, damager, 0, 0, 0 + damager.getObjectHeight() / 2);
					obj.resetHitObjectList();

					local sq_var = obj.getVar("dama");

					local objectsSize = sq_var.get_obj_vector_size();

					for (local i = 0; i < objectsSize; ++i) {
						local damager = sq_var.get_obj_vector(i);
						if (CNSquirrelAppendage.sq_IsAppendAppendage(damager,
								"character/atpriest/seducer/scudthewrath/ap_scudthewrath.nut"))
							CNSquirrelAppendage.sq_RemoveAppendage(damager,
								"character/atpriest/seducer/scudthewrath/ap_scudthewrath.nut");
					}
				}
				sq_SetMyShake(obj, 10, 300);
				obj.getVar("guanjian").clear_vector();
				obj.getVar("guanjian").push_vector(1);
			}
			if (frmIndex == 16 && obj.getVar("guanjian").get_vector(0) == 1) {
				sq_flashScreen(obj, 1, 25, 110, 127, sq_RGB(255, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
				obj.getVar("guanjian").clear_vector();
				obj.getVar("guanjian").push_vector(0);
			}
			break;
	}
}


function onAttack_Scudthewrath(obj, damager, boundingBox, isStuck) {
	if (!obj) return;

	local state = obj.getSkillSubState(); 
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	switch (state) {
		case 1:
			if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE) && sq_IsHoldable(obj, damager)) {
				local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false,
					"character/atpriest/seducer/scudthewrath/ap_scudthewrath.nut", true);
				sq_HoldAndDelayDie(damager, obj, true, false, true, 0, 500, ENUM_DIRECTION_NEUTRAL, masterAppendage);

				obj.getVar("dama").push_obj_vector(damager);
			}
			break;
	}
}

function onEndState_Scudthewrath(obj, new_state) {
	if (new_state != STATE_SCUDTHEWRATH) {
		local sq_var = obj.getVar("dama");

		local objectsSize = sq_var.get_obj_vector_size();

		for (local i = 0; i < objectsSize; ++i) {
			local damager = sq_var.get_obj_vector(i);
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager,
					"character/atpriest/seducer/scudthewrath/ap_scudthewrath.nut"))
				CNSquirrelAppendage.sq_RemoveAppendage(damager,
					"character/atpriest/seducer/scudthewrath/ap_scudthewrath.nut");
		}
	}
}   