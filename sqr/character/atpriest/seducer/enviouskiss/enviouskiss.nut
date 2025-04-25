
function checkExecutableSkill_EnviousKiss(obj) {
	if (!obj) return false;
	
	local state = obj.getState();
	if(state == STATE_ENVIOUSKISS){
		return false;
	}
	
	if (obj.getVar("damaEnviousKiss").get_obj_vector_size() > 0) {
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 2);
		obj.addSetStatePacket(STATE_ENVIOUSKISS, pIntVec, STATE_PRIORITY_FORCE, false, "");
		return true;
	}

	local isUseSkill = obj.sq_IsUseSkill(SKILL_ENVIOUSKISS);
	if (isUseSkill) {
		obj.getVar("damaEnviousKiss").clear_obj_vector();
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_ENVIOUSKISS, pIntVec, STATE_PRIORITY_FORCE, false, "");
		return true;
	}

	return false;
}

function checkCommandEnable_EnviousKiss(obj) {

	return true;
}


function onSetState_EnviousKiss(obj, state, datas, isResetTimer) {
	if (!obj) return;
	obj.sq_StopMove();
	local state = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(state);
	switch (state) {
		case 0:
			sq_StartDrawCastGauge(obj, sq_GetCastTime(obj, SKILL_ENVIOUSKISS, sq_GetSkillLevel(obj, SKILL_ENVIOUSKISS)), true);
			local ani = obj.getVar().GetAnimationMap("Seducer183", "Character/Priest/Seducer/ATAnimation/enviouskissthrow.ani");
			obj.setCurrentAnimation(ani);
			
			if (!Seducer(obj)) {
				obj.sq_PlaySound("R_PW_ENVIOUSKISS");
				cratenviouskisseheartstart_02(obj, 0, 0, 0, "character/priest/seducer/effect/animation/atenviouskiss/humancast_bodyeffect01.ani")
			} else
				obj.sq_PlaySound("R_PW_ENVIOUSKISS_DM_01");

			obj.sq_StartWrite();
			obj.sq_WriteDword(10);
			obj.sq_WriteDword(0);
			obj.sq_WriteDword(sq_GetIntData(obj, SKILL_ENVIOUSKISS, 11));
			obj.sq_SendCreatePassiveObjectPacket(24384, 0, 0, 0, 80);
			cratenviouskisseheartstart_02(obj, 0, 0, 0, "passiveobject/zrr_skill/atpriest/animation/atenviouskiss/heartstart_02.ani")

			break;
		case 1:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_ENVIOUSKISSTHROWHUMAN);
			cratenviouskisseheartstart_02(obj, 0, 0, 0, "character/priest/seducer/effect/animation/atenviouskiss/throwhumaneffect_rose.ani")

			break;

		case 2:
			local ani = obj.getVar().GetAnimationMap("Seducer185", "Character/Priest/Seducer/ATAnimation/enviouskissdash.ani");
			obj.setCurrentAnimation(ani);
			cratenviouskisseheartstart_02(obj, 0, 0, 0, "character/priest/seducer/effect/animation/atenviouskiss/dashhuman_rose01.ani")
			cratenviouskisseheartstart_02(obj, 0, 0, 0, "character/priest/seducer/effect/animation/atenviouskiss/dash_02.ani")

			obj.getVar("pos").clear_vector();
			obj.getVar("pos").push_vector(obj.getXPos());
			obj.getVar("pos").push_vector(obj.getYPos());
			obj.getVar("pos").push_vector(0);
			break;
		case 3:
			cratenviouskisseheartstart_02(obj, 0, 0, 0, "character/priest/seducer/effect/animation/atenviouskiss/holddust_01.ani")
			
			local ani = obj.getVar().GetAnimationMap("Seducer186", "Character/Priest/Seducer/ATAnimation/enviouskisshold.ani");
			obj.setCurrentAnimation(ani);
			break;
		case 4:
			local ani = obj.getVar().GetAnimationMap("Seducer187", "Character/Priest/Seducer/ATAnimation/enviouskissfinish.ani");
			obj.setCurrentAnimation(ani);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_ENBIOUSKISS);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_ENVIOUSKISS, -1, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);

			obj.sq_StartWrite();
			obj.sq_WriteDword(11);
			obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(SKILL_ENVIOUSKISS, -1, 0, 1.0));
			obj.sq_WriteDword(sq_GetIntData(obj, SKILL_ENVIOUSKISS, 12));
			obj.sq_SendCreatePassiveObjectPacket(24384, 0, 0, 0, 0);


			local CruxOfShapielObjCount = obj.getMyPassiveObjectCount(24384);
			for (local i = 0; i < CruxOfShapielObjCount; ++i) {
				local CruxOfShapielObj = obj.getMyPassiveObject(24384, i);
				if (CruxOfShapielObj && CruxOfShapielObj.getVar("id").get_vector(0) == 12) {
					sq_SendDestroyPacketPassiveObject(CruxOfShapielObj);
					obj.getVar("damaEnviousKiss").clear_obj_vector();
				}
			}
			break;
		case 5:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_ENVIOUSKISSFINISHHUMAN);
			cratenviouskisseheartstart_02(obj, 0, 0, 0, "character/priest/seducer/effect/animation/atenviouskiss/changehumaneffect_rose02.ani")
			break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}



function cratenviouskisseheartstart_02(obj, disX, disY, disZ, img) {

	local ani = sq_CreateAnimation("", img);

	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_AddObject(obj, pooledObj, 2, false);

}


function onEndCurrentAni_EnviousKiss(obj) {
	if (!obj) return;
	local state = obj.getSkillSubState();

	switch (state) {
		case 0:
			if (Seducer(obj))
				obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			else {
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 1);

				obj.addSetStatePacket(STATE_ENVIOUSKISS, pIntVec, STATE_PRIORITY_FORCE, false, "");
			}

			break;
		case 1:

			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			break;
		case 2:

			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 3);

			obj.addSetStatePacket(STATE_ENVIOUSKISS, pIntVec, STATE_PRIORITY_FORCE, false, "");

			break;
		case 3:

			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 4);

			obj.addSetStatePacket(STATE_ENVIOUSKISS, pIntVec, STATE_PRIORITY_FORCE, false, "");

			break;
		case 4:
			if (Seducer(obj))
				obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			else {

				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 5);

				obj.addSetStatePacket(STATE_ENVIOUSKISS, pIntVec, STATE_PRIORITY_FORCE, false, "");
			}
			break;
		case 5:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			break;
	}
}


function onProc_EnviousKiss(obj) {
	if (!obj) return;

	local state = obj.getSkillSubState(); //啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧SUB啮踝萧啮踝萧
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);

	switch (state) {
		case 2:
			local tar = obj.getVar("damaEnviousKiss").get_obj_vector(0);
			if (tar) {
				local startFrameIndex = 0;
				local endFrameIndex = 3;
				local currentT = sq_GetCurrentTime(pAni);
				if (frmIndex <= startFrameIndex) {} else if (frmIndex >= startFrameIndex && frmIndex <= endFrameIndex) {
					local startX = obj.getVar("pos").get_vector(0);
					local startY = obj.getVar("pos").get_vector(1);

					currentT = currentT - pAni.getDelaySum(0, startFrameIndex);
					local maxT = pAni.getDelaySum(startFrameIndex, endFrameIndex);

					local lastX = sq_GetDistancePos(tar.getXPos(), obj.getDirection(), tar.getObjectHeight() / 2 + 50);
					local lastY = tar.getYPos() + 1;

					if (currentT < maxT && obj.getVar("pos").get_vector(2) == 0) {
						local v = sq_GetAccel(startX, lastX, currentT, 200, true);
						local v2 = sq_GetAccel(startY, lastY, currentT, 200, true);
						if (obj.isMovablePos(v, v2)) {
							sq_setCurrentAxisPos(obj, 0, v);
							sq_setCurrentAxisPos(obj, 1, v2);
						} else {
							obj.getVar().set_vector(2, 1);
						}

					}
				}
			}
			break;
	}
}


function onKeyFrameFlag_EnviousKiss(obj, flagIndex) //啮踝萧啮踝萧弮啮踝萧啮踝萧啮踝萧啮踝萧
{
	if (!obj) return;


	local state = obj.getSkillSubState(); //啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧sub state啮踝萧啮踝萧

	switch (state) {
		case 3:
			if (flagIndex == 0) {
				sq_SetMyShake(obj, 3, 300);
			}
			break;
		case 4:
			if (flagIndex == 0) {
				sq_SetMyShake(obj, 3, 500);
				sq_flashScreen(obj, 0, 80, 350, 255, sq_RGB(255, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
			} else if (flagIndex == 1) {
				obj.sq_PlaySound("PW_ENVIOUSKISS_DM_03_1");
			}
			break;
	}
	return true;
}

function onEndState_EnviousKiss(obj, new_state) {
	if (new_state != STATE_ENVIOUSKISS) {
		sq_EndDrawCastGauge(obj);
	}
}
   