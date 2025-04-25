function checkExecutableSkill_Secondsoul(obj) {
	if (!obj) return false;

	local isUse = obj.sq_IsUseSkill(SKILL_SECONDSOUL);

	if (isUse) {
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_SECONDSOUL, pIntVec, STATE_PRIORITY_FORCE, false, "");
	}
}

function checkCommandEnable_Secondsoul(obj) {

	return true;
}



function onSetState_Secondsoul(obj, state, datas, isResetTimer) {
	if (!obj) return;
	obj.sq_StopMove();
	local state = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(state);
	switch (state) {
		case 0:
			obj.getVar("atsecondsoulsin").clear_obj_vector();
			obj.getVar("damaSecondsoul").clear_obj_vector();
			if (Seducer(obj)){
				local ani = obj.getVar().GetAnimationMap("secondsoul1", "character/priest/seducer/atanimation/demonsecondsoulattack1_03.ani");
				obj.setCurrentAnimation(ani);
			}
			else{
				obj.sq_SetCurrentAnimation(CUSTOM_ANI_SECONDSOULATTACK1_03);
			}
			
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_SECONDSOUL);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_SECONDSOUL, -1, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);

			obj.getVar("guanjian").clear_vector();
			obj.getVar("guanjian").push_vector(0);
			break;
		case 1:
			if (Seducer(obj)){
				local ani = obj.getVar().GetAnimationMap("secondsoul2", "Character/Priest/Seducer/ATAnimation/atlastgenesis_transformation1_body1.ani");
				obj.setCurrentAnimation(ani);
			}
			else{
				obj.sq_SetCurrentAnimation(CUSTOM_ANI_SECONDSOULATTACK2_03);
			}
			
			break;
		case 2:
			if (Seducer(obj)){
				local ani = obj.getVar().GetAnimationMap("secondsoul3", "Character/Priest/Seducer/ATAnimation/atlastgenesis_transformation1_body1.ani");
				obj.setCurrentAnimation(ani);
			}
			else{
				obj.sq_SetCurrentAnimation(CUSTOM_ANI_SECONDSOULATTACK3_02);
			}
			
			obj.getVar("pos").clear_vector();
			obj.getVar("pos").push_vector(obj.getXPos());
			obj.getVar("pos").push_vector(obj.getZPos());
			obj.getVar("pos").push_vector(0);
			obj.getVar("pos").push_vector(sq_GetIntData(obj, SKILL_SECONDSOUL, 2));
			break;
		case 3:
			if (Seducer(obj)){
				local ani = obj.getVar().GetAnimationMap("secondsoul4", "Character/Priest/Seducer/ATAnimation/atlastgenesis_transformation1_body1.ani");
				obj.setCurrentAnimation(ani);
			}
			else{
				obj.sq_SetCurrentAnimation(CUSTOM_ANI_SECONDSOULATTACK4_03);
			}
			
			obj.sq_ZStop();
			break;
		case 4:
			if (Seducer(obj)){
				local ani = obj.getVar().GetAnimationMap("secondsoul5", "Character/Priest/Seducer/ATAnimation/atlastgenesis_transformation1_body1.ani");
				obj.setCurrentAnimation(ani);
			}
			else{
				obj.sq_SetCurrentAnimation(CUSTOM_ANI_SECONDSOULATTACK5_03);
			}

			obj.getVar("pos").clear_vector();
			obj.getVar("pos").push_vector(obj.getXPos());
			obj.getVar("pos").push_vector(obj.getZPos());
			obj.getVar("pos").push_vector(0);
			obj.getVar("pos").push_vector(0);
			break;
		case 5:
			obj.setCurrentPos(obj.getXPos(), obj.getYPos(), 0);
			if (Seducer(obj)){
				local ani = obj.getVar().GetAnimationMap("secondsoul6", "Character/Priest/Seducer/ATAnimation/atlastgenesis_transformation1_body1.ani");
				obj.setCurrentAnimation(ani);
			}
			else{
				obj.sq_SetCurrentAnimation(CUSTOM_ANI_SECONDSOULATTACK6_02);
			}
			obj.sq_StartWrite();
			obj.sq_WriteDword(7);
			obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(SKILL_SECONDSOUL, -1, 1, 1.0));
			obj.sq_WriteDword(sq_GetIntData(obj, SKILL_SECONDSOUL, 4));
			obj.sq_SendCreatePassiveObjectPacket(24384, 0, 200, 0, 0);
			break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}


function onEndCurrentAni_Secondsoul(obj) {
	if (!obj) return;
	local state = obj.getSkillSubState();

	switch (state) {
		case 0:
			if (obj.getVar("damaSecondsoul").get_obj_vector_size() > 0) {
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 1);

				obj.addSetStatePacket(STATE_SECONDSOUL, pIntVec, STATE_PRIORITY_FORCE, false, "");
			} else {
				createSecondSoulOneHitFailExp(obj, 0, 0, 0);
				obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			}
			break;
		case 1:
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 2);

			obj.addSetStatePacket(STATE_SECONDSOUL, pIntVec, STATE_PRIORITY_FORCE, false, "");
			break;
		case 2:
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 3);

			obj.addSetStatePacket(STATE_SECONDSOUL, pIntVec, STATE_PRIORITY_FORCE, false, "");
			break;
		case 3:

			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 4);

			obj.addSetStatePacket(STATE_SECONDSOUL, pIntVec, STATE_PRIORITY_FORCE, false, "");


			break;
		case 4:

			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 5);

			obj.addSetStatePacket(STATE_SECONDSOUL, pIntVec, STATE_PRIORITY_FORCE, false, "");


			break;
		case 5:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			break;
	}
}



function onProc_Secondsoul(obj) {
	if (!obj) return;

	local state = obj.getSkillSubState(); 
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);

	switch (state) {
		case 0:
			if (frmIndex == 4 && obj.getVar("guanjian").get_vector(0) == 0) {
				if (Seducer(obj)) {
					obj.sq_SetShake(obj, 4, 200);
					sq_flashScreen(obj, 0, 0, 320, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK);
				} else {
					obj.sq_SetShake(obj, 2, 150);
					sq_flashScreen(obj, 0, 0, 320, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK);
				}

				obj.getVar("guanjian").clear_vector();
				obj.getVar("guanjian").push_vector(1);
			}

			break;
		case 2:
			local pAni = obj.sq_GetCurrentAni();
			local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);


			local startFrameIndex = 0;
			local endFrameIndex = 2;

			local currentT = sq_GetCurrentTime(pAni);

			if (frmIndex < startFrameIndex) {

			} else if (frmIndex > startFrameIndex && frmIndex <= endFrameIndex) {
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

			if (frmIndex == 0 && obj.getVar("guanjian").get_vector(0) == 1) {
				if (Seducer(obj))
					obj.sq_SetShake(obj, 3, 160);

				else
					obj.sq_SetShake(obj, 3, 160);

				obj.getVar("guanjian").clear_vector();
				obj.getVar("guanjian").push_vector(0);
			}
			break;
		case 4:
			local pAni = obj.sq_GetCurrentAni();
			local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);


			local startFrameIndex = 0;
			local endFrameIndex = 1;

			local currentT = sq_GetCurrentTime(pAni);

			if (frmIndex < startFrameIndex) {

			} else if (frmIndex > startFrameIndex && frmIndex <= endFrameIndex) {
				local startX = obj.getVar("pos").get_vector(0);
				local startZ = obj.getVar("pos").get_vector(1);

				local maxD = obj.getVar("pos").get_vector(2);
				local mazD = obj.getVar("pos").get_vector(3);

				currentT = currentT - pAni.getDelaySum(0, startFrameIndex);
				local maxT = pAni.getDelaySum(startFrameIndex, endFrameIndex);
				if (currentT < maxT) {
					local v = sq_GetAccel(0, maxD, currentT, maxT, true);
					local dstX = sq_GetDistancePos(startX, obj.getDirection(), v);
					local dstZ = sq_GetAccel(startZ, mazD, currentT, maxT, true);
					if (obj.isMovablePos(dstX, obj.getYPos())) {
						sq_setCurrentAxisPos(obj, 0, dstX);
						sq_setCurrentAxisPos(obj, 2, dstZ);
					}

				}
			}

			break;
	}
}


function onAttack_Secondsoul(obj, damager, boundingBox, isStuck) {
	if (!obj) return;

	local state = obj.getSkillSubState(); 
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	switch (state) {
		case 0:
			if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE)) {
				createSecondSoulHitEffect(obj, damager);
				if(sq_IsGrabable(obj, damager) && sq_IsHoldable(obj, damager)){
					local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, "character/atpriest/seducer/secondsoul/ap_secondsoul.nut", true);
					sq_HoldAndDelayDie(damager, obj, true, false, true, 0, 500, ENUM_DIRECTION_NEUTRAL, masterAppendage);
				}
				obj.getVar("damaSecondsoul").push_obj_vector(damager);
			}
			break;
	}
}

function onEndState_Secondsoul(obj, new_state) {
	if (new_state != STATE_SECONDSOUL) {
		setVliadEffectatsecondsoul(obj);
		local sq_var = obj.getVar("damaSecondsoul");

		local objectsSize = sq_var.get_obj_vector_size();

		for (local i = 0; i < objectsSize; ++i) {
			local damager = sq_var.get_obj_vector(i);
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager,
					"character/atpriest/seducer/secondsoul/ap_secondsoul.nut"))
				CNSquirrelAppendage.sq_RemoveAppendage(damager,
					"character/atpriest/seducer/secondsoul/ap_secondsoul.nut");
		}
	}
}




function onKeyFrameFlag_Secondsoul(obj, flagIndex) 
{
	if (!obj) return;


	local state = obj.getSkillSubState(); 

	switch (state) {
		case 1:
			if (flagIndex == 0) {

				sq_CreateDrawOnlyObject(obj, "character/priest/seducer/effect/animation/atsecondsoul/secondsoulattack2_dust1_01.ani", ENUM_DRAWLAYER_NORMAL, true);
				sq_CreateDrawOnlyObject(obj, "character/priest/seducer/effect/animation/atsecondsoul/secondsoulattack2_dust2_02.ani", ENUM_DRAWLAYER_NORMAL, true);

			}

			break;
	}
	return true;
}

function createSecondSoulOneHitFailExp(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atsecondsoul/demonsecondsoulattack1_fail.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
}


function creatsecondsoulboombottom(obj, disX, disY, disZ, size) {

	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atsecondsoul/boombottom_06.ani");

	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj, pooledObj, 2, false);

	local currentAni = sq_GetCurrentAnimation(pooledObj);
	local sizeRate = size.tofloat() / 100.0;
	currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
	currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
	sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
}

function createSecondSoulHitEffect(obj, damager) {
	local ani = null;
	local Rand = sq_getRandom(0, 6).tointeger();
	if (Rand == 0) {
		ani = "character/priest/seducer/effect/animation/atsecondsoul/sin01_loop.ani";
	} else if (Rand == 1) {
		ani = "character/priest/seducer/effect/animation/atsecondsoul/sin02_loop.ani";
	} else if (Rand == 2) {
		ani = "character/priest/seducer/effect/animation/atsecondsoul/sin03_loop.ani";
	} else if (Rand == 3) {
		ani = "character/priest/seducer/effect/animation/atsecondsoul/sin04_loop.ani";
	} else if (Rand == 4) {
		ani = "character/priest/seducer/effect/animation/atsecondsoul/sin05_loop.ani";
	} else if (Rand == 5) {
		ani = "character/priest/seducer/effect/animation/atsecondsoul/sin06_loop.ani";
	} else if (Rand == 6) {
		ani = "character/priest/seducer/effect/animation/atsecondsoul/sin07_loop.ani";
	}
	ani = sq_CreateAnimation("", ani);
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj.setCurrentPos(damager.getXPos(), damager.getYPos() + 1, damager.getZPos() + damager.getObjectHeight() / 2);
	pooledObj.setCurrentDirection(damager.getDirection());
	sq_moveWithParent(damager, pooledObj);
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("atsecondsoulsin").push_obj_vector(pooledObj);
}


function setVliadEffectatsecondsoul(obj) {

	local var = obj.getVar("atsecondsoulsin");
	local objectsSize = var.get_obj_vector_size();
	for (local i = 0; i < objectsSize; ++i) {
		local effectObj =
			var.get_obj_vector(i);
		if (effectObj) {
			effectObj.setValid(false);
		}
	}
}  