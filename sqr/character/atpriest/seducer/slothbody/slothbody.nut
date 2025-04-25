FLAG_SKILL_KEY_SLOTHBODY	<- 0

function checkExecutableSkill_Slothbody(obj) {
	if (!obj) return false;

	local isUse = obj.sq_IsUseSkill(SKILL_SLOTHBODY);

	if (isUse) {
		obj.getVar("effectObj").clear_obj_vector();
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_SLOTHBODY, pIntVec, STATE_PRIORITY_FORCE, false, "");
	}
}

function checkCommandEnable_Slothbody(obj) {
	return true;
}


function onSetState_Slothbody(obj, state, datas, isResetTimer) {
	if (!obj) return;
	local state = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(state);
	obj.sq_StopMove();
	switch (state) {
		case 0:
			if(sq_IsKeyDown(OPTION_HOTKEY_SKILL, ENUM_SUBKEY_TYPE_ALL))
			{
				FLAG_SKILL_KEY_SLOTHBODY = 1;
			}
			sq_StartDrawCastGauge(obj, sq_GetCastTime(obj, SKILL_SLOTHBODY, sq_GetSkillLevel(obj, SKILL_SLOTHBODY)), true);
			createslothbodyStarExp(obj, 0, 0, 0);
			createslothbodyCircleExp(obj, 0, 1, 0);
			createslothbodyfloorExp(obj, 0, 0, 0);
			addSlothbodyBuffSelf(obj)
			local ani = obj.getVar().GetAnimationMap("Seducer139", "Character/Priest/Seducer/ATAnimation/slothbodystep1_body.ani");
			obj.setCurrentAnimation(ani);
			
			local skill_level = 0;
			if (skill_level > 0) {
				local fanwei = sq_GetIntData(obj, SKILL_SLOTHBODY, 0) + sq_GetIntData(obj, SKILL_ORIGINALSIN, 4);
				local sudu = sq_GetIntData(obj, SKILL_SLOTHBODY, 1) + sq_GetIntData(obj, SKILL_ORIGINALSIN, 3);
				local appendage = sq_AttractToMe(obj, fanwei, 0, sudu);
				obj.getVar().setAppendage(0, appendage);
			} else {
				local fanwei = sq_GetIntData(obj, SKILL_SLOTHBODY, 0);
				local sudu = sq_GetIntData(obj, SKILL_SLOTHBODY, 1);
				local appendage = sq_AttractToMe(obj, fanwei, 0, sudu);
				obj.getVar().setAppendage(0, appendage);
			}
			break;
		case 1:
			local skill_level = 0;
			if (skill_level > 0) {
				if (!Seducer(obj)) {
					local ani = obj.getVar().GetAnimationMap("atoriginalsinattackbody", "character/priest/seducer/atanimation/atslothbodylv95atoriginalsinattackbody_00.ani");
					obj.setCurrentAnimation(ani);
				} else {
					local ani = obj.getVar().GetAnimationMap("atoriginalsinattackbodydemon", "character/priest/seducer/atanimation/atslothbodylv95atoriginalsinattackbodydemon_00.ani");
					obj.setCurrentAnimation(ani);
				}
				obj.sq_StartWrite();
				obj.sq_WriteDword(2);
				obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(SKILL_SLOTHBODY, -1, 2, 1.0));
				obj.sq_WriteDword(sq_GetIntData(obj, SKILL_SLOTHBODY, 4));
				obj.sq_SendCreatePassiveObjectPacket(24384, 0, 0, 1, 0);
			} else {
				local ani = obj.getVar().GetAnimationMap("Seducer140", "Character/Priest/Seducer/ATAnimation/slothbodyfinish_body.ani");
				obj.setCurrentAnimation(ani);
				
				obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_SLOTHBODYATTACK);
				local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_SLOTHBODY, -1, 2, 1.0);
				obj.sq_SetCurrentAttackBonusRate(attackBonusRate); 
			}
			obj.getVar("jineng").clear_vector();
			obj.getVar("jineng").push_vector(0);
			break;
		case 2:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSLOTHBODYLV95ATORIGINALSINATTACKBODY_LAST); //
			break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onEndState_Slothbody(obj, new_state) {
	if (!obj) return;
	if (new_state != STATE_SLOTHBODY) {
		sq_EndDrawCastGauge(obj);
		setVliadEffectslothbodyPassiveObject(obj)
		local appendage = obj.getVar().getAppendage(0);
		if (appendage)
			appendage.setValid(false);
	}
}


function onProc_Slothbody(obj) {
	if (!obj) return;

	local state = obj.getSkillSubState(); 
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	switch (state) {
		case 0:
			local skill_level = 0;
			obj.setSkillCommandEnable(SKILL_SLOTHBODY, true);
			local iEnterSkill = obj.sq_IsEnterSkill(SKILL_SLOTHBODY);
			local skillKey = false;
			if(!sq_IsKeyDown(OPTION_HOTKEY_SKILL, ENUM_SUBKEY_TYPE_ALL))
			{
				FLAG_SKILL_KEY_SLOTHBODY = 0;
			}
			if(FLAG_SKILL_KEY_SLOTHBODY == 0 && sq_IsKeyDown(OPTION_HOTKEY_SKILL, ENUM_SUBKEY_TYPE_ALL))
			{
				skillKey = true;
			}
			if (skill_level > 0) {
				if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL) && iEnterSkill != -1) {
					setVliadEffectslothbodyPassiveObject(obj)
					local pIntVec = sq_GetGlobalIntVector();
					sq_IntVectorClear(pIntVec);
					sq_IntVectorPush(pIntVec, 1);
					obj.addSetStatePacket(STATE_SLOTHBODY, pIntVec, STATE_PRIORITY_FORCE, false, "");
				}
				if (sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL)) {
					setVliadEffectslothbodyPassiveObject(obj)
					obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
				}
			} else {
				if (iEnterSkill != -1 || skillKey) {
					setVliadEffectslothbodyPassiveObject(obj)
					local pIntVec = sq_GetGlobalIntVector();
					sq_IntVectorClear(pIntVec);
					sq_IntVectorPush(pIntVec, 1);
					obj.addSetStatePacket(STATE_SLOTHBODY, pIntVec, STATE_PRIORITY_FORCE, false, "");
				}
				if (sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL)) {
					setVliadEffectslothbodyPassiveObject(obj)
					obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
				}
			}
			break;
		case 1:
			local skill_level = 0;
			if (skill_level > 0 && frmIndex == 1 && obj.getVar("jineng").get_vector(0) == 0) {
				sq_SetMyShake(obj, 7, 340);
				sq_flashScreen(obj, 20, 160, 40, 134, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
				obj.getVar("jineng").clear_vector();
				obj.getVar("jineng").push_vector(1);
			} else {
				if (frmIndex == 4 && obj.getVar("jineng").get_vector(0) == 0) {
					sq_SetMyShake(obj, 4, 300);
					sq_flashScreen(obj, 10, 80, 100, 102, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
					obj.getVar("jineng").clear_vector();
					obj.getVar("jineng").push_vector(1);
				}
			}
			break;
	}
}

function addSlothbodyBuffSelf(obj) {
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "character/atpriest/seducer/Slothbody/ap_slothbody.nut", true);

	local huo = obj.sq_GetIntData(SKILL_SLOTHBODY, 2);
	local change_appendage = appendage.sq_getChangeStatus("Slothbody");

	if (!change_appendage)
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_ACTIVESTATUS_TOLERANCE_ALL, false, huo, APID_COMMON);
	if (change_appendage) {
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ACTIVESTATUS_TOLERANCE_ALL, false, huo.tofloat());
	}
}


function onAttack_Slothbody(obj, damager, boundingBox, isStuck) {
	if (!obj) return;

	local state = obj.getSkillSubState(); 
	switch (state) {
		case 1:
			createAttackCutExp(obj, damager);
			damager.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));
			break;
	}
}




function onEndCurrentAni_Slothbody(obj) {
	if (!obj) return;

	local state = obj.getSkillSubState(); 
	switch (state) {
		case 0:
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 1);
			obj.addSetStatePacket(STATE_SLOTHBODY, pIntVec, STATE_PRIORITY_FORCE, false, "");
			setVliadEffectslothbodyPassiveObject(obj);
			local appendage = obj.getVar().getAppendage(0);
			if (appendage)
				appendage.setValid(false);
			break;
		case 1:
			local skill_level = 0;
			if (skill_level > 0) {
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 2);
				obj.addSetStatePacket(STATE_SLOTHBODY, pIntVec, STATE_PRIORITY_FORCE, false, "");
			} else {
				obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
				setVliadEffectslothbodyPassiveObject(obj);
			}
			break;
		case 2:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);

			break;
	}

}


function setVliadEffectslothbodyPassiveObject(obj) {
	local objectsSize = obj.getVar("effectObj").get_obj_vector_size();
	for (local i = 0; i < objectsSize; ++i) {
		local effectObj =
			obj.getVar("effectObj").get_obj_vector(i);
		if (effectObj) {
			effectObj.setValid(false);
		}
	}
}

function createslothbodyStarExp(obj, disX, disY, disZ) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atslothbody/slothbodystep1effect_roseleaf.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
}

function createslothbodyCircleExp(obj, disX, disY, disZ) {
	local ani = null;
	local skill_level = 0;
	if (skill_level > 0) {
		ani = "character/priest/seducer/effect/animation/atslothbody/lv95atoriginalsin/atslothbodylv95atoriginalsinpullfront_07.ani";
	} else {
		ani = "character/priest/seducer/effect/animation/atslothbody/slothbodypull_01.ani";
	}
	ani = sq_CreateAnimation("", ani);
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("effectObj").push_obj_vector(pooledObj);
}

function createslothbodyfloorExp(obj, disX, disY, disZ) {
	local ani = null;
	local skill_level = 0;
	if (skill_level > 0) {
		ani = "character/priest/seducer/effect/animation/atslothbody/lv95atoriginalsin/atslothbodylv95atoriginalsinpullbottom_05.ani";
	} else {
		ani = "character/priest/seducer/effect/animation/atslothbody/slothbodypull_floor.ani";
	}
	ani = sq_CreateAnimation("", ani);
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("effectObj").push_obj_vector(pooledObj);
}


function createslothbodyBottomBoomEffect(obj, disX, disY, disZ, size) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atslothbody/lv95atoriginalsin/atslothbodylv95atoriginalsinattackbottom_13.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);

	local currentAni = sq_GetCurrentAnimation(pooledObj);
	local sizeRate = size.tofloat() / 100.0;
	currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
	currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
	sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
}