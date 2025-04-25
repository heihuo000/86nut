function checkExecutableSkill_DepravitySevenSins(obj) {
	if (!obj) return false;
	if (Seducer(obj)){
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 1);
		obj.addSetStatePacket(STATE_DEPRAVITYSEVENSINS, pIntVec, STATE_PRIORITY_FORCE, false, "");
		return true;
	}
	local isUseSkill = obj.sq_IsUseSkill(SKILL_DEPRAVITYSEVENSINS);
	if (isUseSkill) {
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_DEPRAVITYSEVENSINS, pIntVec, STATE_PRIORITY_FORCE, false, "");
		return true;
	}
	return false;
}

function checkCommandEnable_DepravitySevenSins(obj) {
	return true;
}


function onSetState_DepravitySevenSins(obj, state, datas, isResetTimer) {
	if (!obj)
		return false;
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();
	switch (substate) {
		case 0:
			CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/atpriest/seducer/depravitysevensins/ap_depravitysevensins.nut");
			obj.getVar("DepravitySevenSins").clear_obj_vector();
			obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);

			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DEPRAVITYSEVENSINS_CHANGEON_BODY);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_ATDEPRAVITYSEVENSINS);
			sq_StartDrawCastGauge(obj, sq_GetCastTime(obj, SKILL_DEPRAVITYSEVENSINS, sq_GetSkillLevel(obj, SKILL_DEPRAVITYSEVENSINS)), true);
			obj.sq_PlaySound("DSEVENSINS");
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
			obj.getVar("buff").clear_vector();
			obj.getVar("buff").push_vector(0);
			createdemonizationbgblack(obj, 0, 0, 0);
			break;
		case 1:
			obj.sq_PlaySound("PW_NOMANA_DM");
			obj.sq_PlaySound("DSEVENSINS_CHANGE");
			local ani = obj.getVar().GetAnimationMap("turnoff", "character/priest/seducer/atanimation/demonization_turnoff.ani");
			obj.setCurrentAnimation(ani);
			break;
		case 2:
			obj.sq_PlaySound("PW_DIE_DM");
			obj.sq_PlaySound("DSEVENSINS_CHANGE");
			local ani = obj.getVar().GetAnimationMap("turnoff", "character/priest/seducer/atanimation/demonization_defeat.ani");
			obj.setCurrentAnimation(ani);
			break;
	}
}

function onProc_DepravitySevenSins(obj) {
	if (!obj.sq_IsMyControlObject())
		return false;
	local substate = obj.getSkillSubState();

	if (obj.getVar("buff").get_vector(0) == 0 && substate == 0) {
		obj.getVar("buff").clear_vector();
		obj.getVar("buff").push_vector(1);
		SeducerBuffSelf(obj);
	}
	else if(substate == 1 || substate == 2){
		local currentAni = obj.sq_GetCurrentAni();
		local currentFrameIndex = obj.sq_GetCurrentFrameIndex(currentAni);
		local currentTime = sq_GetCurrentTime(currentAni);
		local alpha = currentTime*255/1000;
		alpha = alpha.tointeger();
		if(alpha > 255){
			alpha = 255;
		}
		local pAni = sq_GetCurrentAnimation(obj);
		if(!pAni) {
			return;
		}
		pAni.setEffectLayer(true, GRAPHICEFFECT_MONOCHROME, true, sq_RGB(255,255,255), sq_ALPHA(alpha), true, true)
		local size = sq_AniLayerListSize(pAni);
		if(size > 0) {
			for(local i=0;i<size;i+=1) {
				local aniL = sq_getAniLayerListObject(pAni, i);
				if(aniL) {
					local effect = aniL.GetCurrentFrame().GetGraphicEffect();
					if(effect != GRAPHICEFFECT_LINEARDODGE) {
						aniL.setEffectLayer(true, GRAPHICEFFECT_MONOCHROME, true, sq_RGB(255,255,255), sq_ALPHA(alpha), true, true);
					}
				}
			}
		}
	}
}

function onKeyFrameFlag_DepravitySevenSins(obj, flagIndex) {
	if (!obj)
		return false;
	local substate = obj.getSkillSubState();
	if(substate == 0){
		if (flagIndex == 0) {
			obj.sq_PlaySound("R_PW_DSEVENSINS");
		} else if (flagIndex == 1) {
			sq_SetMyShake(obj, 2, 300);
		} else if (flagIndex == 2) {
			sq_SetMyShake(obj, 10, 160);
		} else if (flagIndex == 3) {
			sq_SetMyShake(obj, 1, 160);
		} else if (flagIndex == 4) {
			
		}
	}
	return true;
}

function SeducerBuffSelf(obj) {
	if (true) {
		if (!Seducer(obj)) {

			local skill_level = sq_GetSkillLevel(obj, SKILL_DEPRAVITYSEVENSINS); //啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧
			local time = sq_GetLevelData(obj, SKILL_DEPRAVITYSEVENSINS, 0 ,skill_level);
			local timebeid = sq_GetLevelData(obj, SKILL_FIRSTPRANA, 2, sq_GetSkillLevel(obj, SKILL_FIRSTPRANA));

			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_DEPRAVITYSEVENSINS, false, "character/atpriest/seducer/depravitysevensins/ap_depravitysevensins.nut", false);
			appendage.sq_SetValidTime(time + timebeid);
			appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_DEPRAVITYSEVENSINS, skill_level);
			
			appendage.getVar("dsevensins").clear_vector();
			appendage.getVar("dsevensins").push_vector(1);
			appendage.getVar("dsevensins").push_vector(obj.getHp());
			
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_DEPRAVITYSEVENSINS, true);
			local yisu = obj.sq_GetIntData(SKILL_DEPRAVITYSEVENSINS, 2);
			local gongsu = obj.sq_GetIntData(SKILL_DEPRAVITYSEVENSINS, 2);
			local yichkangxing = obj.sq_GetIntData(SKILL_DEPRAVITYSEVENSINS, 5);
			local def = sq_GetLevelData(obj, SKILL_DEPRAVITYSEVENSINS, 1, skill_level);
			local rec = sq_GetLevelData(obj, SKILL_DEPRAVITYSEVENSINS, 2, skill_level);
			def = def.tofloat();
			rec = rec.tofloat();
			
			local YiSu = yisu.tofloat();
			local GongSu = gongsu.tofloat();
			local YICHKANGXING = yichkangxing.tofloat();
			local change_appendage = appendage.sq_getChangeStatus("depravitysevensins");
			if (!change_appendage) {
				change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 0, false, 0, APID_COMMON);
			}
			if (change_appendage) {
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, true, YiSu);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, true, GongSu);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ACTIVESTATUS_TOLERANCE_ALL, false, YICHKANGXING);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_DEFENSE, true, def);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_DEFENSE, true, def);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_HP_REGEN_RATE, true, rec);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MP_REGEN_RATE, true, rec);
			}
		}
	}
}

function onEndCurrentAni_DepravitySevenSins(obj) {
	local substate = obj.getSkillSubState();
	if(substate == 0){
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
	else if(substate == 1 || substate == 2){
		CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/atpriest/seducer/depravitysevensins/ap_depravitysevensins.nut");
	}
}

function onEndState_DepravitySevenSins(obj, newState) {
	if(!obj)
		return false;
	if(newState != STATE_DEPRAVITYSEVENSINS)
		sq_EndDrawCastGauge(obj);
}

function setVliadEffectDepravitySevenSins(obj) {

	local var = obj.getVar("DepravitySevenSins");
	local objectsSize = var.get_obj_vector_size();
	for (local i = 0; i < objectsSize; ++i) {
		local effectObj =
			var.get_obj_vector(i);
		if (effectObj) {
			effectObj.setValid(false);
		}
	}
}


function createdemonizationback(obj, disX, disY, disZ) //啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧
{
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atdepravitysevensins/demonization/depravitysevensins_changeloop_back.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_moveWithParent(obj, pooledObj); //啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("DepravitySevenSins").push_obj_vector(pooledObj);
}

function createdemonizationfront01(obj, disX, disY, disZ) //?葞啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧埭
{
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atdepravitysevensins/demonization/depravitysevensins_changeloop_front01.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_moveWithParent(obj, pooledObj); //啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("DepravitySevenSins").push_obj_vector(pooledObj);
}

function createdemonizationeff02(obj, disX, disY, disZ) //啮踝萧啮踝萧雰啮踝萧抰啮踝萧啮踝萧啮踝萧啮踝萧
{
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atdepravitysevensins/demonization/depravitysevensins_changeoff_eff02.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_AddObject(obj, pooledObj, 2, false);

}

function createdemonizationbgblack(obj, disX, disY, disZ) //啮踝萧?
{
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atdepravitysevensins/demonization/depravitysevensins_changeon_bgblack.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_AddObject(obj, pooledObj, 2, false);

}