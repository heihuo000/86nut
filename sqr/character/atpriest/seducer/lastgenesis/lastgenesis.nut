function checkExecutableSkill_LastGenesis(obj) {
	if (!obj) return false;

	local isUse = obj.sq_IsUseSkill(SKILL_LASTGENESIS);

	if (isUse) {
		obj.getVar("atlastgenesis_finish1_ball").clear_obj_vector();
		obj.getVar("atlastgenesis").clear_obj_vector();
		obj.getVar("damaLastGenesis").clear_obj_vector();
		obj.getVar("atlastgenesisatt1").clear_obj_vector();
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_LASTGENESIS, pIntVec, STATE_PRIORITY_FORCE, false, "");
	}
}

function checkCommandEnable_LastGenesis(obj) {

	return true;
}

function setVliadEffectatlastgenesis(obj) {

	local var = obj.getVar("atlastgenesis");
	local objectsSize = var.get_obj_vector_size();

	for (local i = 0; i < objectsSize; ++i) {
		local effectObj =
			var.get_obj_vector(i);
		if (effectObj) {
			effectObj.setValid(false);
		}
	}
}

function setVliadEffectatlastgenesisatt1(obj) {

	local var = obj.getVar("atlastgenesisatt1");
	local objectsSize = var.get_obj_vector_size();
	for (local i = 0; i < objectsSize; ++i) {
		local effectObj =
			var.get_obj_vector(i);
		if (effectObj) {
			effectObj.setValid(false);
		}
	}
}


function creatlastgenesis(obj) {
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atlastgenesis/bg/atlastgenesis_bg_1.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local objectManager = obj.getObjectManager();

	if (obj.getDirection() == ENUM_DIRECTION_LEFT) {
		local xPos = objectManager.getFieldXPos(280, ENUM_DRAWLAYER_NORMAL);
		local yPos = objectManager.getFieldYPos(0, 0, ENUM_DRAWLAYER_NORMAL);
		pooledObj.setCurrentPos(xPos, yPos, 0);
		pooledObj.setCurrentDirection(obj.getDirection());
	}
	if (obj.getDirection() == ENUM_DIRECTION_RIGHT) {
		local xPos = objectManager.getFieldXPos(540, ENUM_DRAWLAYER_NORMAL);
		local yPos = objectManager.getFieldYPos(0, 0, ENUM_DRAWLAYER_NORMAL);
		pooledObj.setCurrentPos(xPos, yPos, 0);
		pooledObj.setCurrentDirection(obj.getDirection());
	}
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("atlastgenesis").push_obj_vector(pooledObj);
}

function createatlastgenesis_att1_scythe_weapon_normal(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atlastgenesis/att1/atlastgenesis_att1_scythe_weapon_normal.ani");

	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("atlastgenesisatt1").push_obj_vector(pooledObj);
}

function createatlastgenesis_shockwave_crack(obj, disX, disY, disZ) 
{
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atlastgenesis/att1/atlastgenesis_shockwave_crack.ani");

	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("atlastgenesisatt1").push_obj_vector(pooledObj);
}


function createatlastgenesis_shockwave_crack_01(obj, disX, disY, disZ) 
{
	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atlastgenesis/att1/atlastgenesis_shockwave_crack_01.ani");

	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("atlastgenesisatt1").push_obj_vector(pooledObj);
}


function onSetState_LastGenesis(obj, state, datas, isResetTimer) {
	if (!obj) return;
	obj.sq_StopMove();
	local state = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(state);
	switch (state) {
		case 0:
			local ani = obj.getVar().GetAnimationMap("Seducer177", "Character/Priest/Seducer/ATAnimation/atlastgenesis_transformation1_body1.ani");
			obj.setCurrentAnimation(ani);
			
			if (obj.isMyControlObject()) {
				creatlastgenesis(obj); 
			}
			obj.getVar("guanjian").clear_vector();
			obj.getVar("guanjian").push_vector(0);
			obj.getVar("guanjian").push_vector(0);
			obj.getVar("anjian").clear_vector();
			obj.getVar("anjian").push_vector(0);
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
			break;
		case 1:
			local ani = obj.getVar().GetAnimationMap("Seducer178", "Character/Priest/Seducer/ATAnimation/atlastgenesis_casting_body1.ani");
			obj.setCurrentAnimation(ani);
			
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
			break;
		case 2:
			local ani = obj.getVar().GetAnimationMap("Seducer179", "Character/Priest/Seducer/ATAnimation/atlastgenesis_att1_body.ani");
			obj.setCurrentAnimation(ani);
			
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_LASTGENESISSWING);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_LASTGENESIS, -1, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);

			obj.getVar("pos").clear_vector();
			obj.getVar("pos").push_vector(obj.getXPos());
			obj.getVar("pos").push_vector(obj.getZPos());
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
			break;
		case 3:
			local ani = obj.getVar().GetAnimationMap("finish1", "Character/Priest/Seducer/ATAnimation/ATLastGenesis_finish1_body.ani");
			obj.setCurrentAnimation(ani);
			
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_LASTGENESISFINSH);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_LASTGENESIS, -1, 2, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
			obj.getVar("pos").clear_vector();
			obj.getVar("pos").push_vector(obj.getXPos());
			obj.getVar("pos").push_vector(obj.getZPos());
			obj.getVar("pos").push_vector(0);
			obj.getVar("pos").push_vector(290);
			break;
		case 4:
			local ani = obj.getVar().GetAnimationMap("finish2", "Character/Priest/Seducer/ATAnimation/ATLastGenesis_finish2_body.ani");
			obj.setCurrentAnimation(ani);
			
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_LASTGENESISFINSH);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_LASTGENESIS, -1, 2, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
			obj.getVar("pos").clear_vector();
			obj.getVar("pos").push_vector(obj.getXPos());
			obj.getVar("pos").push_vector(obj.getZPos());
			obj.getVar("pos").push_vector(0);
			break;
		case 5:
			setVliadEffectatlastgenesis(obj);
			local ani = obj.getVar().GetAnimationMap("Seducer182", "Character/Priest/Seducer/ATAnimation/atlastgenesis_transformation2_body1.ani");
			obj.setCurrentAnimation(ani);
			
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
			break;
	}
}

function onEndCurrentAni_LastGenesis(obj) {
	if (!obj) return;
	local state = obj.getSkillSubState();

	switch (state) {
		case 0:
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 1);

			obj.addSetStatePacket(STATE_LASTGENESIS, pIntVec, STATE_PRIORITY_FORCE, false, "");


			break;
		case 1:
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 2);

			obj.addSetStatePacket(STATE_LASTGENESIS, pIntVec, STATE_PRIORITY_FORCE, false, "");
			break;
		case 2:
			if (obj.getVar("guanjian").get_vector(1) == 2) {
			
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 3);
				obj.addSetStatePacket(STATE_LASTGENESIS, pIntVec, STATE_PRIORITY_FORCE, false, "");
				
			} else if (obj.getVar("guanjian").get_vector(0) == 1) {
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 4);

				obj.addSetStatePacket(STATE_LASTGENESIS, pIntVec, STATE_PRIORITY_FORCE, false, "");
			} else {
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 3);

				obj.addSetStatePacket(STATE_LASTGENESIS, pIntVec, STATE_PRIORITY_FORCE, false, "");

			}
			break;
		case 3:
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 5);

			obj.addSetStatePacket(STATE_LASTGENESIS, pIntVec, STATE_PRIORITY_FORCE, false, "");
			break;
		case 4:
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 5);

			obj.addSetStatePacket(STATE_LASTGENESIS, pIntVec, STATE_PRIORITY_FORCE, false, "");
			break;
		case 5:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			break;
	}
}


function onProc_LastGenesis(obj) {
	if (!obj) return;

	local state = obj.getSkillSubState();
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);

	switch (state) {
		case 2:
			if (frmIndex == 5 && obj.getVar("anjian").get_vector(0) == 0) {
				createatlastgenesis_shockwave_crack(obj, 0, 0, 0);
				sq_SetMyShake(obj, 5, 60);
				obj.getVar("anjian").clear_vector();
				obj.getVar("anjian").push_vector(1);
			} else if (frmIndex == 10 && obj.getVar("anjian").get_vector(0) == 1) {
				createatlastgenesis_att1_scythe_weapon_normal(obj, 0, 0, 0)
				createatlastgenesis_shockwave_crack_01(obj, 0, 0, 0)
				sq_SetMyShake(obj, 13, 320);
				sq_flashScreen(obj, 0, 100, 0, 153, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER);

				obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_LASTGENESISSMASH);
				local damage = obj.sq_GetBonusRateWithPassive(SKILL_LASTGENESIS, -1, 1, 1.0);
				obj.sq_SetCurrentAttackBonusRate(damage);

				local sq_var = obj.getVar("damaLastGenesis");

				local objectsSize = sq_var.get_obj_vector_size();

				for (local i = 0; i < objectsSize; ++i) {
					local damager = sq_var.get_obj_vector(i);

					local startX = obj.getVar("pos").get_vector(0);
					local startZ = obj.getVar("pos").get_vector(1);

					local damaX = damager.getXPos();
					local damaY = damager.getYPos();
					local damaZ = damager.getZPos();

					local v = sq_GetAccel(0, 290, currentT, 440, true);
					local dstX = sq_GetDistancePos(startX, obj.getDirection(), v);


					sq_MoveToNearMovablePos(damager, dstX, damaY, damaZ, damaX, damaY, damaZ, 20, -1, 3); 

					if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE) &&
						!sq_IsFixture(damager) &&
						sq_IsHoldable(obj, damager) &&
						sq_IsGrabable(obj, damager))
						sq_SetCustomRotate(damager, 1.3); 
				}

				obj.getVar("anjian").clear_vector();
				obj.getVar("anjian").push_vector(0);
			}

			break;

		case 3:
			local tar = obj.getVar("damaLastGenesis").get_obj_vector(0);
			if (tar) {
				local startFrameIndex = 0;
				local endFrameIndex = 6;
				local currentT = sq_GetCurrentTime(pAni);
				if (frmIndex <= startFrameIndex) {} else if (frmIndex >= startFrameIndex && frmIndex <= endFrameIndex) {
					local startX = obj.getVar("pos").get_vector(0);
					local startY = obj.getVar("pos").get_vector(1);

					currentT = currentT - pAni.getDelaySum(0, startFrameIndex);
					local maxT = pAni.getDelaySum(startFrameIndex, endFrameIndex);

					local lastX = sq_GetDistancePos(tar.getXPos(), obj.getDirection(), tar.getObjectHeight() / 2);
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
			} else {
				local startFrameIndex = 0;
				local endFrameIndex = 6;

				local currentT = sq_GetCurrentTime(pAni);

				if (frmIndex < startFrameIndex) {} else if (frmIndex > startFrameIndex && frmIndex <= endFrameIndex) {
					local startX = obj.getVar("pos").get_vector(0);
					local startZ = obj.getVar("pos").get_vector(1);

					local maxD = obj.getVar("pos").get_vector(3);

					currentT = currentT - pAni.getDelaySum(0, startFrameIndex);
					local maxT = pAni.getDelaySum(startFrameIndex, endFrameIndex);
					if (currentT < maxT) {
						local v = sq_GetAccel(0, maxD, currentT, maxT, true);
						local dstX = sq_GetDistancePos(startX, obj.getDirection(), v);
						if (obj.isMovablePos(dstX, obj.getYPos())) {
							sq_setCurrentAxisPos(obj, 0, dstX);
						}

					}
				}

			}
			break;
		case 4:
			local tar = obj.getVar("damaLastGenesis").get_obj_vector(0);
			if (tar) {
				local startFrameIndex = 0;
				local endFrameIndex = 4;
				local currentT = sq_GetCurrentTime(pAni);
				if (frmIndex <= startFrameIndex) {} else if (frmIndex >= startFrameIndex && frmIndex <= endFrameIndex) {
					local startX = obj.getVar("pos").get_vector(0);
					local startY = obj.getVar("pos").get_vector(1);

					currentT = currentT - pAni.getDelaySum(0, startFrameIndex);
					local maxT = pAni.getDelaySum(startFrameIndex, endFrameIndex);

					local lastX = sq_GetDistancePos(tar.getXPos(), obj.getDirection(), tar.getObjectHeight() / 2 - 200);
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

function onAttack_LastGenesis(obj, damager, boundingBox, isStuck) {
	if (!obj) return;

	local state = obj.getSkillSubState();
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	if (state == 2) {
		if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE)) {
			obj.getVar("damaLastGenesis").push_obj_vector(damager);
			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, "character/atpriest/seducer/lastgenesis/ap_lastgenesis.nut", true);
			if (sq_IsFixture(damager) || !sq_IsHoldable(obj, damager) || !sq_IsGrabable(obj, damager)) {
				obj.getVar("guanjian").set_vector(0, 1);
				if(masterAppendage){
					masterAppendage.getAppendageInfo().setValidTime(5000);
				}
			} 
			else
			{
				obj.getVar("guanjian").set_vector(1, 2);
				if(masterAppendage){
					sq_HoldAndDelayDie(damager, obj, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL, masterAppendage);
					masterAppendage.getAppendageInfo().setValidTime(5000);
				}
				
			}
		}
	}
}

function onEndState_LastGenesis(obj, new_state) {
	if (new_state != STATE_LASTGENESIS) {
		setVliadEffectatlastgenesisball(obj);
		setVliadEffectatlastgenesis(obj);
		setVliadEffectatlastgenesisatt1(obj);
		local sq_var = obj.getVar("damaLastGenesis");
		local objectsSize = sq_var.get_obj_vector_size();
		for (local i = 0; i < objectsSize; ++i) {
			local damager = sq_var.get_obj_vector(i);
			if(damager){
				sq_SetCustomRotate(damager, 0.0);
				CNSquirrelAppendage.sq_RemoveAppendage(damager, "character/atpriest/seducer/lastgenesis/ap_lastgenesis.nut");
			}
		}
		obj.getVar("damaLastGenesis").clear_obj_vector();
	}
}

function creatlastgenesisfinish(obj, disX, disY, disZ, img, ENUM) {

	local ani = sq_CreateAnimation("", img);

	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM);
	sq_AddObject(obj, pooledObj, 2, false);

}

function creatlastgenesisfinishball(obj, disX, disY, disZ) {

	local ani = sq_CreateAnimation("", "character/priest/seducer/effect/animation/atlastgenesis/atlastgenesis_finish1_ball.ani");

	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("atlastgenesis_finish1_ball").push_obj_vector(pooledObj);

}

function setVliadEffectatlastgenesisball(obj) {

	local var = obj.getVar("atlastgenesis_finish1_ball");
	local objectsSize = var.get_obj_vector_size();
	for (local i = 0; i < objectsSize; ++i) {
		local effectObj =
			var.get_obj_vector(i);
		if (effectObj) {
			effectObj.setValid(false);
		}
	}
}

function onKeyFrameFlag_LastGenesis(obj, flagIndex) 
{
	if (!obj) return;


	local state = obj.getSkillSubState(); 

	switch (state) {
		case 3:
			if (flagIndex == 0) {

			} else if (flagIndex == 1) {

				sq_SetMyShake(obj, 7, 100);

			} else if (flagIndex == 2) {
				playLastGenesisSound(obj);
			} else if (flagIndex == 3) {
				creatlastgenesisfinishball(obj, 0, 0, 0)

			} else if (flagIndex == 4) {
				sq_SetMyShake(obj, 2, 1600);
				creatlastgenesisfinish(obj, 0, 0, 0,
					"character/priest/seducer/effect/animation/atlastgenesis/finish1/atlastgenesis_finish_boom_1.ani", ENUM_DRAWLAYER_NORMAL);

			} else if (flagIndex == 5) {
			} else if (flagIndex == 6) {
				creatlastgenesisfinish(obj, 0, 0, 0,
					"character/priest/seducer/effect/animation/atlastgenesis/finish1/atlastgenesis_finish_boom_leaf_start.ani", ENUM_DRAWLAYER_NORMAL);
				sq_SetMyShake(obj, 10, 720);
				setVliadEffectatlastgenesisball(obj)
			} else if (flagIndex == 7) {
			} else if (flagIndex == 8) {
				sq_flashScreen(obj, 0, 160, 0, 178, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER);
			}
			break;

		case 4:
			if (flagIndex == 0) {
				creatlastgenesisfinish(obj, 5, 0, 46,
					"character/priest/seducer/effect/animation/atlastgenesis/finish2/atlastgenesis_finish2_body_21.ani", ENUM_DRAWLAYER_NORMAL);
			} else if (flagIndex == 1) {

			} else if (flagIndex == 2) {
				sq_SetMyShake(obj, 7, 160);
				creatlastgenesisfinish(obj, 0, 0, 0,
					"character/priest/seducer/effect/animation/atlastgenesis/finish2/atlastgenesis_circle_finish2_body_2.ani", ENUM_DRAWLAYER_NORMAL);

				sq_flashScreen(obj, 0, 100, 0, 178, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER);
			} else if (flagIndex == 3) {
				creatlastgenesisfinishball(obj, 155, 0, 72)
			} else if (flagIndex == 4) {
				sq_SetMyShake(obj, 3, 1600);

			} else if (flagIndex == 5) {
				creatlastgenesisfinish(obj, 155, 0, 72,
					"character/priest/seducer/effect/animation/atlastgenesis/finish1/atlastgenesis_finish1_shock_crack_02.ani", ENUM_DRAWLAYER_NORMAL);
			} else if (flagIndex == 6) {
			} else if (flagIndex == 7) {
				sq_SetMyShake(obj, 15, 800);

				setVliadEffectatlastgenesisball(obj)
			} else if (flagIndex == 8) {
				creatlastgenesisfinish(obj, 155, 0, 72,
					"character/priest/seducer/effect/animation/atlastgenesis/finish1/atlastgenesis_finish_boom_leaf3.ani", ENUM_DRAWLAYER_NORMAL);
				sq_flashScreen(obj, 0, 240, 0, 178, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER);
			}

			break;
	}
	return true;
}

function playLastGenesisSound(obj) {

	if (Seducer(obj)) {
		local rand = sq_getRandom(0, 15).tointeger();
		if (rand <= 5)
			obj.sq_PlaySound("PW_LASTGENESIS_DM_01");
		else if (rand <= 10)
			obj.sq_PlaySound("PW_LASTGENESIS_DM_02");
		else if (rand <= 15)
			obj.sq_PlaySound("PW_LASTGENESIS_DM_03");
	} else {
		local rand = sq_getRandom(0, 15).tointeger();
		if (rand <= 5)
			obj.sq_PlaySound("PW_LASTGENESIS_01");
		else if (rand <= 10)
			obj.sq_PlaySound("PW_LASTGENESIS_02");
		else if (rand <= 15)
			obj.sq_PlaySound("PW_LASTGENESIS_03");
	}
}