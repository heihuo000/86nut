function checkExecutableSkill_TheSevenDeadlySins(obj) {
	if (!obj) return false;

	local isUse = obj.sq_IsUseSkill(SKILL_THESEVENDEADLYSINS);

	if (isUse) {
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_THESEVENDEADLYSINS, pIntVec, STATE_PRIORITY_FORCE, false, "");
	}
}

function checkCommandEnable_TheSevenDeadlySins(obj) {

	return true;
}


function onSetState_TheSevenDeadlySins(obj, state, datas, isResetTimer) {
	if (!obj) return;
	obj.sq_StopMove();
	local state = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(state);
	switch (state) {
		case 0:
			CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/atpriest/seducer/thesevendeadlysins/ap_thesevendeadlysins.nut");
			CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/atpriest/seducer/thesevendeadlysins/ap_damathesevendeadlysins.nut");
			obj.sq_PlaySound("PCHANGE");
			if (Seducer(obj)) {

				obj.getVar("TheSevenDeadlySinsObj").clear_obj_vector();
				local ani = obj.getVar().GetAnimationMap("Seducer198", "Character/Priest/Seducer/ATAnimation/thedeadlysinsdemon_05.ani");
				obj.setCurrentAnimation(ani);
				
				creatTheSevenDeadlySins(obj, 50, -20, 0, "character/priest/seducer/effect/animation/atthedeadlysins/selecticon_up.ani", ENUM_DRAWLAYER_COVER);
				creatTheSevenDeadlySins(obj, 50, 50, 0, "character/priest/seducer/effect/animation/atthedeadlysins/selecticon_down.ani", ENUM_DRAWLAYER_COVER);
				creatTheSevenDeadlySins(obj, 15, 15, 0, "character/priest/seducer/effect/animation/atthedeadlysins/selecticon_left.ani", ENUM_DRAWLAYER_COVER);
				creatTheSevenDeadlySins(obj, 85, 15, 0, "character/priest/seducer/effect/animation/atthedeadlysins/selecticon_right.ani", ENUM_DRAWLAYER_COVER);
				creatTheSevenDeadlySins(obj, 55, 20, 0, "character/priest/seducer/effect/animation/atthedeadlysins/atskillicon.ani", ENUM_DRAWLAYER_COVER);

				local animation = sq_GetCurrentAnimation(obj);
				obj.sq_Rewind(animation);
				sq_SetFrameDelayTime(animation, 0, 300000);

				obj.getVar("TheSevenDeadlySinsguanj").clear_vector();
				obj.getVar("TheSevenDeadlySinsguanj").push_vector(0);
			} else {
				obj.getVar("TheSevenDeadlySinsObj").clear_obj_vector();
				obj.sq_SetCurrentAnimation(CUSTOM_ANI_THEDEADLYSINS_START);
				creatTheSevenDeadlySins(obj, 50, -20, 0, "character/priest/seducer/effect/animation/atthedeadlysins/selecticon_up.ani", ENUM_DRAWLAYER_COVER);
				creatTheSevenDeadlySins(obj, 50, 50, 0, "character/priest/seducer/effect/animation/atthedeadlysins/selecticon_down.ani", ENUM_DRAWLAYER_COVER);
				creatTheSevenDeadlySins(obj, 15, 15, 0, "character/priest/seducer/effect/animation/atthedeadlysins/selecticon_left.ani", ENUM_DRAWLAYER_COVER);
				creatTheSevenDeadlySins(obj, 85, 15, 0, "character/priest/seducer/effect/animation/atthedeadlysins/selecticon_right.ani", ENUM_DRAWLAYER_COVER);
				creatTheSevenDeadlySins(obj, 55, 20, 0, "character/priest/seducer/effect/animation/atthedeadlysins/atskillicon.ani", ENUM_DRAWLAYER_COVER);
				
			}
			break;
		case 1:
			setVliadEffectTheSevenDeadlySins(obj)
			creatTheSevenDeadlySins(obj, 0, 0, 0, "character/priest/seducer/effect/animation/atthedeadlysins/thedeadlysins_02.ani", ENUM_DRAWLAYER_NORMAL)

			obj.sq_SetCurrentAnimation(CUSTOM_ANI_THEDEADLYSINS_CAST);
			break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function creatTheSevenDeadlySins(obj, disX, disY, disZ, img, ENUM) {
	local ani = sq_CreateAnimation("", img);
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM);
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("TheSevenDeadlySinsObj").push_obj_vector(pooledObj);
}

function setVliadEffectTheSevenDeadlySins(obj) {
	local objectsSize = obj.getVar("TheSevenDeadlySinsObj").get_obj_vector_size();
	for (local i = 0; i < objectsSize; ++i) {
		local effectObj = obj.getVar("TheSevenDeadlySinsObj").get_obj_vector(i);
		if (effectObj) {
			effectObj.setValid(false);
		}
	}
}


function onEndCurrentAni_TheSevenDeadlySins(obj) {
	if (!obj) return;
	local state = obj.getSkillSubState();

	switch (state) {
		case 0:
			if (Seducer(obj)) {
				setVliadEffectTheSevenDeadlySins(obj)
				obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			} else {
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 1);

				obj.addSetStatePacket(STATE_THESEVENDEADLYSINS, pIntVec, STATE_PRIORITY_FORCE, false, "");
			}
			break;
		case 1:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);

			break;
	}
}



function onProc_TheSevenDeadlySins(obj) {
	if (!obj) return;

	local state = obj.getSkillSubState();
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local state = obj.getSkillSubState();
	local up = 0;
	local down = 0;
	local left = 0;
	local right = 0;
	local space = 0;
	if (currentT > 1100) {
		up = sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL);
		down = sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL);
		left = sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL);
		right = sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL);
		space = sq_IsKeyDown(OPTION_HOTKEY_SKILL2, ENUM_SUBKEY_TYPE_ALL);
	}
	switch (state) {

		case 0:

			if (space) {
				setVliadEffectTheSevenDeadlySins(obj)
				CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/atpriest/seducer/thesevendeadlysins/ap_thesevendeadlysins.nut");
				
				obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			}


			if (!Seducer(obj)) {
				if (up) {

					addthesevendeadlysinsBuffRed(obj);
					local pIntVec = sq_GetGlobalIntVector();
					sq_IntVectorClear(pIntVec);
					sq_IntVectorPush(pIntVec, 1);

					obj.addSetStatePacket(STATE_THESEVENDEADLYSINS, pIntVec, STATE_PRIORITY_FORCE, false, "");
				}
				if (down) {
					addthesevendeadlysinsBuffViolet(obj);
					local pIntVec = sq_GetGlobalIntVector();
					sq_IntVectorClear(pIntVec);
					sq_IntVectorPush(pIntVec, 1);

					obj.addSetStatePacket(STATE_THESEVENDEADLYSINS, pIntVec, STATE_PRIORITY_FORCE, false, "");
				}
				if (left) {
					if (sq_GetDirection(obj) == ENUM_DIRECTION_LEFT) {
						addthesevendeadlysinsBuffYellow(obj);
					} else {
						addthesevendeadlysinsBuffWhite(obj);
					}
					local pIntVec = sq_GetGlobalIntVector();
					sq_IntVectorClear(pIntVec);
					sq_IntVectorPush(pIntVec, 1);

					obj.addSetStatePacket(STATE_THESEVENDEADLYSINS, pIntVec, STATE_PRIORITY_FORCE, false, "");
				}
				if (right) {
					if (sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT) {
						addthesevendeadlysinsBuffYellow(obj);
					} else {

						addthesevendeadlysinsBuffWhite(obj);
					}
					local pIntVec = sq_GetGlobalIntVector();
					sq_IntVectorClear(pIntVec);
					sq_IntVectorPush(pIntVec, 1);

					obj.addSetStatePacket(STATE_THESEVENDEADLYSINS, pIntVec, STATE_PRIORITY_FORCE, false, "");
				}
			} else {
				if (up && obj.getVar("TheSevenDeadlySinsguanj").get_vector(0) == 0) {
					if (Seducer(obj)) {
						obj.getVar("TheSevenDeadlySinsguanj").clear_vector();
						obj.getVar("TheSevenDeadlySinsguanj").push_vector(1);
						addthesevendeadlysinsBuffRed(obj);
						local animation = sq_GetCurrentAnimation(obj);
						obj.sq_Rewind(animation);
						sq_SetFrameDelayTime(animation, 0, 160);
					}
				}
				if (down && obj.getVar("TheSevenDeadlySinsguanj").get_vector(0) == 0) {
					addthesevendeadlysinsBuffViolet(obj);
					obj.getVar("TheSevenDeadlySinsguanj").clear_vector();
					obj.getVar("TheSevenDeadlySinsguanj").push_vector(1);
					local animation = sq_GetCurrentAnimation(obj);
					obj.sq_Rewind(animation);
					sq_SetFrameDelayTime(animation, 0, 160);
				}
				if (left && obj.getVar("TheSevenDeadlySinsguanj").get_vector(0) == 0) {
					if (sq_GetDirection(obj) == ENUM_DIRECTION_LEFT) {
						addthesevendeadlysinsBuffYellow(obj);
					} else {
						addthesevendeadlysinsBuffWhite(obj);
					}
					obj.getVar("TheSevenDeadlySinsguanj").clear_vector();
					obj.getVar("TheSevenDeadlySinsguanj").push_vector(1);
					local animation = sq_GetCurrentAnimation(obj);
					obj.sq_Rewind(animation);
					sq_SetFrameDelayTime(animation, 0, 160);
				}
				if (right && obj.getVar("TheSevenDeadlySinsguanj").get_vector(0) == 0) {
					if (sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT) {
						addthesevendeadlysinsBuffYellow(obj);
					} else {
						addthesevendeadlysinsBuffWhite(obj);
					}
					obj.getVar("TheSevenDeadlySinsguanj").clear_vector();
					obj.getVar("TheSevenDeadlySinsguanj").push_vector(1);
					local animation = sq_GetCurrentAnimation(obj);
					obj.sq_Rewind(animation);
					sq_SetFrameDelayTime(animation, 0, 160);
				}
			}
			break;

	}

}

function onEndState_TheSevenDeadlySins(obj, new_state) {
	if (new_state != STATE_THESEVENDEADLYSINS) {
		setVliadEffectTheSevenDeadlySins(obj)
	}
}

function onKeyFrameFlag_TheSevenDeadlySins(obj, flagIndex)
{
	if (!obj) return;


	local state = obj.getSkillSubState();
	if (!obj.isMyControlObject()) return;
	switch (state) {
		case 0:
			if (flagIndex == 0) {
				if (Seducer(obj)) {
					obj.sq_PlaySound("R_PW_SEVENSINS_DM");

				}
			}
			break;
		case 1:
			if (flagIndex == 0) {
				if (!Seducer(obj)) {
					obj.sq_PlaySound("R_PW_SEVENSINS");
				}
			}
			break;
	}
	return true;
}

function addthesevendeadlysinsBuffRed(obj) {
	local skill_level = sq_GetSkillLevel(obj, SKILL_THESEVENDEADLYSINS);
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "character/atpriest/seducer/thesevendeadlysins/ap_thesevendeadlysins.nut", true);

	local change_time = sq_GetLevelData(obj, SKILL_THESEVENDEADLYSINS, 21, skill_level);
	appendage.sq_SetValidTime(change_time);
	appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_THESEVENDEADLYSINS, skill_level);
	appendage.getVar("damagebonus").clear_vector();
	appendage.getVar("damagebonus").push_vector(0);
	
	CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_THESEVENDEADLYSINS, true);
	appendage.setBuffIconImage(123);
	appendage.setEnableIsBuff(true);

	local zjkangxing = sq_GetLevelData(obj, SKILL_THESEVENDEADLYSINS, 23, skill_level).tofloat();
	local jskangxing = sq_GetLevelData(obj, SKILL_THESEVENDEADLYSINS, 2, skill_level);
	local rate = 0.1;
	local sxshanghai = sq_GetLevelData(obj, SKILL_THESEVENDEADLYSINS, 24, skill_level).tofloat();
	local shanghai = rate * sxshanghai;
	local change_appendage = appendage.sq_getChangeStatus("thesevendeadlysins");
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_ALL, false, -jskangxing, APID_COMMON);
	}
	if (change_appendage) {
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_ALL, false, -jskangxing.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_ALL, false, zjkangxing);
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_ALL, true, shanghai);
	}
	obj.sq_PlaySound("PCHANGE_SELECT");
}

function addthesevendeadlysinsBuffViolet(obj) {
	local skill_level = sq_GetSkillLevel(obj, SKILL_THESEVENDEADLYSINS);
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "character/atpriest/seducer/thesevendeadlysins/ap_thesevendeadlysins.nut", true);

	local change_time = sq_GetLevelData(obj, SKILL_THESEVENDEADLYSINS, 21, skill_level);
	appendage.sq_SetValidTime(change_time);
	appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_THESEVENDEADLYSINS, skill_level);
	appendage.getVar("damagebonus").clear_vector();
	appendage.getVar("damagebonus").push_vector(0);
	CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_THESEVENDEADLYSINS, true);
	appendage.setBuffIconImage(123);
	appendage.setEnableIsBuff(true);

	local mofang = sq_GetLevelData(obj, SKILL_THESEVENDEADLYSINS, 4, skill_level).tofloat();
	local mofabaoji = sq_GetLevelData(obj, SKILL_THESEVENDEADLYSINS, 22, skill_level).tofloat();
	local MoFang = -mofang/10;
	local TiLi = -MoFang;
	local mmofabaoji = mofabaoji/10;
	local change_appendage = appendage.sq_getChangeStatus("thesevendeadlysins");
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_DEFENSE, false, MoFang.tointeger(), APID_COMMON);
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, TiLi.tointeger(), APID_COMMON);
	}
	if (change_appendage) {
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, mmofabaoji);
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_DEFENSE, true, MoFang);
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, TiLi);
	}
	obj.sq_PlaySound("PCHANGE_SELECT");
}


function addthesevendeadlysinsBuffWhite(obj) {
	local skill_level = sq_GetSkillLevel(obj, SKILL_THESEVENDEADLYSINS);
	local wuqi = sq_GetLevelData(obj, SKILL_THESEVENDEADLYSINS, 12, skill_level);
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "character/atpriest/seducer/thesevendeadlysins/ap_thesevendeadlysins.nut", true);
	local change_time = sq_GetLevelData(obj, SKILL_THESEVENDEADLYSINS, 21, skill_level);
	appendage.sq_SetValidTime(change_time);
	appendage.getVar("damagebonus").clear_vector();
	appendage.getVar("damagebonus").push_vector(wuqi);
	appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_THESEVENDEADLYSINS, skill_level);
	CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_THESEVENDEADLYSINS, true);
	appendage.setBuffIconImage(123);
	appendage.setEnableIsBuff(true);
	
	local hpmax = sq_GetLevelData(obj, SKILL_THESEVENDEADLYSINS, 6, skill_level);
	local huifu = sq_GetLevelData(obj, SKILL_THESEVENDEADLYSINS, 10, skill_level);
	wuqi = wuqi.tofloat() / 10;
	local HP = -hpmax;
	local MP = -hpmax;
	local change_appendage = appendage.sq_getChangeStatus("thesevendeadlysins");
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_HP_REGEN_RATE, true, huifu, APID_COMMON);
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_MP_REGEN_RATE, true, huifu, APID_COMMON);
	}
	if (change_appendage) {
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_HP_REGEN_RATE, true, huifu.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MP_REGEN_RATE, true, huifu.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_HP_MAX, false, HP.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MP_MAX, false, MP.tofloat());
		//change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, true, wuqi);
	}
	obj.sq_PlaySound("PCHANGE_SELECT");
}

function addthesevendeadlysinsBuffYellow(obj) {
	local skill_level = sq_GetSkillLevel(obj, SKILL_THESEVENDEADLYSINS);
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "character/atpriest/seducer/thesevendeadlysins/ap_damathesevendeadlysins.nut", true);

	local change_time = sq_GetLevelData(obj, SKILL_THESEVENDEADLYSINS, 21, skill_level);
	appendage.sq_SetValidTime(change_time);

	appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_THESEVENDEADLYSINS, skill_level);
	CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_THESEVENDEADLYSINS, true);
	appendage.setBuffIconImage(123);
	appendage.setEnableIsBuff(true);

	local yisu = sq_GetLevelData(obj, SKILL_THESEVENDEADLYSINS, 8, skill_level);
	local gongsu = sq_GetLevelData(obj, SKILL_THESEVENDEADLYSINS, 8, skill_level);
	local YiSu = -yisu;
	local GongSu = -gongsu;
	local change_appendage = appendage.sq_getChangeStatus("thesevendeadlysins");
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_MOVE_SPEED, false, YiSu, APID_COMMON);
	}
	if (change_appendage) {
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, YiSu.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, GongSu.tofloat());
	}
	obj.sq_PlaySound("PCHANGE_SELECT");
}  