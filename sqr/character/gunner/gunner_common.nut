function setEnableCancelSkill_Gunner(obj, isEnable) {
	if (!obj)
		return false;

	if (!obj.isMyControlObject())
		return false;

	if (!isEnable)
		return true;

	obj.setSkillCommandEnable(232, isEnable);
	obj.setSkillCommandEnable(233, isEnable);
	obj.setSkillCommandEnable(234, isEnable);
	obj.setSkillCommandEnable(235, isEnable);
	obj.setSkillCommandEnable(236, isEnable);
	obj.setSkillCommandEnable(237, isEnable);
	obj.setSkillCommandEnable(238, isEnable);
	obj.setSkillCommandEnable(239, isEnable);
	obj.setSkillCommandEnable(240, isEnable);
	obj.setSkillCommandEnable(241, isEnable);
	obj.setSkillCommandEnable(242, isEnable);
	obj.setSkillCommandEnable(243, isEnable);
	obj.setSkillCommandEnable(244, isEnable);
	obj.setSkillCommandEnable(245, isEnable);
	obj.setSkillCommandEnable(246, isEnable);
	obj.setSkillCommandEnable(247, isEnable);

	obj.setSkillCommandEnable(SKILL_SUPPRESS, isEnable); //?? : ??
	obj.setSkillCommandEnable(SKILL_AIMSHOOT, isEnable); //????
	obj.setSkillCommandEnable(SKILL_BASHSTOCK, isEnable); //????
	obj.setSkillCommandEnable(SKILL_BURSTBOMB, isEnable); //????
	obj.setSkillCommandEnable(SKILL_BODYBUNKER, isEnable); //?? : ????
	obj.setSkillCommandEnable(SKILL_NEODYMIUMFUSEE, isEnable); //????
	obj.setSkillCommandEnable(SKILL_TRIPLEGUNSHOT, isEnable); //????
	obj.setSkillCommandEnable(SKILL_MCPICE, isEnable); //????
	obj.setSkillCommandEnable(SKILL_BREACHINGDOWN, isEnable); //?? : ????
	obj.setSkillCommandEnable(SKILL_SCORCHTACTICS, isEnable); //????
	obj.setSkillCommandEnable(SKILL_DIRECTFEEDBACK, isEnable); //????
	obj.setSkillCommandEnable(SKILL_DYNAMITEKICK, isEnable); //?? : ????
	obj.setSkillCommandEnable(SKILL_FORTRESSBLITZ, isEnable); //ôÒ???
	obj.setSkillCommandEnable(SKILL_AT_SOWALKER, isEnable); //AT-SO ?Éû?
	obj.setSkillCommandEnable(SKILL_RAYTHEONCIRT, isEnable); //?????
	obj.setSkillCommandEnable(SKILL_DEATHFIELD, isEnable); //?? : ?????
	obj.setSkillCommandEnable(SKILL_EQUALISMR, isEnable); //?? : ????-MR
	return true;
}



function onChangeSkillEffect_Gunner(obj, skillIndex, reciveData)
{
	if(!obj) return;
	switch(skillIndex)
	{
       case 248:
            local appendage = CNSquirrelAppendage.sq_GetAppendage(obj, "character/gunner/appendage/ap_stylish_buff.nut");
            if(appendage)
            {
                local isSetState = reciveData.readWord();
                if(isSetState == 1)
                    appendage.getVar().set_vector(0,appendage.getVar().get_vector(0)-1);
                onStartGhost_My_gunner_stylish(obj);
            }
            break;
	}
}

function addSetStatePacket_Gunner(obj, state, datas) {
	if (!obj) return -1;
	switch (state) {
		case STATE_STAND:
			switch (obj.getState()) {
				case STATE_AT_SOWALKER:
					switch (obj.getSkillSubState()) {
						case 4:
							break;
						case 5:
							break;
						default:
							return 1;
					}
				case 6:
					if (isAtSOWalkerOnBody(obj)) {
						obj.sq_PlaySound("WALKER_RIDE_JUMP");
						sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/at_sowalker/atsowalkeralandingbottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
						sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/at_sowalker/atsowalkeralandingeffect_00.ani", ENUM_DRAWLAYER_NORMAL, true);
						sq_BinaryStartWrite();
						sq_BinaryWriteDword(SKILL_AT_SOWALKER);
						sq_BinaryWriteDword(3);
						sq_BinaryWriteDword(obj.sq_GetBonusRateWithPassive(SKILL_AT_SOWALKER, STATE_AT_SOWALKER, 2, 1.0)); //???
						sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
					}
					break;
			}
			break;
		case STATE_JUMP_ATTACK:
			if (isAtSOWalkerOnBody(obj)) {
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(5);
				obj.sq_AddSetStatePacket(STATE_AT_SOWALKER, STATE_PRIORITY_USER, true);
				return -1;
			}
			break;
		case STATE_ATTACK:
			local skillIndex = obj.getCurrentSkillIndex();
			if (isAtSOWalkerOnBody(obj)) {
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(3);
				obj.sq_AddSetStatePacket(STATE_AT_SOWALKER, STATE_PRIORITY_USER, true);
				return -1;
			} else if (sq_GetSkillLevel(obj, SKILL_ALTERATION) > 0 && obj.sq_GetVectorData(datas, 0) == 1 && skillIndex < 0 && obj.getWeaponSubType() == 1) {
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(0);
				obj.sq_AddSetStatePacket(STATE_ASSAULTATTACK, STATE_PRIORITY_USER, true);
			}
			break;
		case STATE_DASH_ATTACK:
			if (isAtSOWalkerOnBody(obj)) {
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(3);
				obj.sq_AddSetStatePacket(STATE_AT_SOWALKER, STATE_PRIORITY_USER, true);
				return -1;
			}
			break;
		case STATE_CROUCH_ATTACK:
			if (isAtSOWalkerOnBody(obj)) {
				return -1;
			}
			break;
	}
	return 1;
}

function getStayAni_Gunner(obj) {
	if (!obj) return null;
	local ani = obj.sq_GetStayAni();
	if (isAtSOWalkerOnBody(obj)) {
		ani = sq_GetCustomAni(obj, CUSTOM_ANI_ATSOWALKERASTAND);
	}
	return ani;
}

function getRestAni_Gunner(obj) {
	if (!obj) return null;
	local ani = obj.sq_GetRestAni();
	if (isAtSOWalkerOnBody(obj)) {
		ani = sq_GetCustomAni(obj, CUSTOM_ANI_ATSOWALKERASIT);
	}
	return ani;
}

function getMoveAni_Gunner(obj) {
	if (!obj) return null;
	local ani = obj.sq_GetMoveAni();
	if (isAtSOWalkerOnBody(obj)) {
		ani = sq_GetCustomAni(obj, CUSTOM_ANI_ATSOWALKERAWALK);
	}
	return ani;
}

function getDashAni_Gunner(obj) {
	if (!obj) return null;
	local ani = obj.sq_GetDashAni();
	if (isAtSOWalkerOnBody(obj)) {
		ani = sq_GetCustomAni(obj, CUSTOM_ANI_ATSOWALKERADASHLOOP);
		obj.sq_PlaySound("WALKER_DASH");
	}
	return ani;
}

function getJumpAni_Gunner(obj) {
	if (!obj) return null;
	local ani = obj.sq_GetJumpAni();
	if (isAtSOWalkerOnBody(obj)) {
		ani = sq_GetCustomAni(obj, CUSTOM_ANI_ATSOWALKERAJUMP);
	}
	return ani;
}

function getGetItemAni_Gunner(obj) {
	if (!obj) return null;
	local ani = obj.sq_GetGetItemAni();
	if (isAtSOWalkerOnBody(obj)) {
		ani = sq_GetCustomAni(obj, CUSTOM_ANI_ATSOWALKERAGETITEM);
	}
	return ani;
}

function getAttackAni_Gunner(obj, index) {
	if (!obj) return null;
	local ani = obj.sq_GetAttackAni(index);
	if (isAtSOWalkerOnBody(obj)) {
		ani = obj.sq_GetCustomAni(CUSTOM_ANI_ATSOWALKERANORMALATTACK);
	}
	return ani;
}

function getDownAni_Gunner(obj)
{
	if(!obj)
		return false;
	local ani = obj.sq_GetDownAni();
	local var = obj.getVar();
	if (isAtSOWalkerOnBody(obj))
	{
		ani = obj.sq_GetCustomAni(CUSTOM_ANI_ATSOWALKERADOWN );
	}
	return ani;
}

function getDamageAni_Gunner(obj, index)
{
	if(!obj)
		return false;

	local ani = obj.sq_GetDamageAni(index);
	local var = obj.getVar();
	if (isAtSOWalkerOnBody(obj))
	{
		ani = obj.sq_GetCustomAni(CUSTOM_ANI_ATSOWALKERADOWN );
	}
	return ani;
}

function isAtSOWalkerOnBody(obj) {
	if (!obj) return false;
	return CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/gunner/assault/at_sowalker/ap_at_sowalker.nut");
}

function BreachingDown_AttackSign(obj) {
	if (!obj) return;
	local state = obj.getState();
	switch (state) {
	case 0:
	case 8:
	case 14:
	case STATE_ASSAULTATTACK:
		if (isAtSOWalkerOnBody(obj) || sq_GetSkill(obj, SKILL_BREACHINGDOWN).isInCoolTime()) {
			return false;
		}
		local distance = obj.sq_GetIntData(SKILL_BREACHINGDOWN, 8);
		local haveAttackSign = getRangeObjectAttackSignBoss(obj, distance, "character/gunner/assault/breachingdown/ap_breachingdown.nut");
		obj.setSkillCommandEnable(SKILL_BREACHINGDOWN, haveAttackSign);
		if (state == STATE_ASSAULTATTACK && haveAttackSign) {
			if (obj.sq_IsEnterSkill(SKILL_BREACHINGDOWN) != -1) {
				local isUse = obj.sq_IsUseSkill(SKILL_BREACHINGDOWN);
				if (isUse) {
					obj.sq_IntVectClear();
					obj.sq_IntVectPush(0);
					obj.sq_AddSetStatePacket(STATE_BREACHINGDOWN, STATE_PRIORITY_USER, true);
					obj.flushSetStatePacket();
					return;
				}
			}
		}
	}
}

function CalculateRotationAngle(playerX, playerY, enemyX, enemyY) {
	local deltaX = enemyX - playerX
	local deltaY = playerY - enemyY

	local angle = atan2(deltaY, deltaX) * (180.0 / PI)

	if (playerX > enemyX) {
		angle = -angle - 180.0;
	}

	angle = (angle + 360) % 360

	return angle
}

function getRangeObjectAttackSignBoss(obj, Distance, apPath) {
	if (!obj) return;

	local MaxDistance = Distance;

	if (Distance == -1) MaxDistance = 9999;

	obj.getVar("AttackSign").clear_obj_vector();
	local RangeEyVar = obj.getVar("AttackSign");

	local objectManager = obj.getObjectManager();

	local objectcount = objectManager.getCollisionObjectNumber();

	local count = 0;

	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);

	local maxlevel = -1;

	for (local i = 0; i < objectcount; i++) {

		local object = objectManager.getCollisionObject(i);

		if (!object || !obj.isEnemy(object) || !object.isObjectType(OBJECTTYPE_ACTIVE)) continue;

		local objectx = sq_GetXPos(object);
		local objecty = sq_GetYPos(object);
		local objectz = sq_GetZPos(object);

		if (objectz > Distance) continue;
		if (Distance != 0) if (sq_Abs(y - objecty) > Distance) continue;

		local EnemyDistance = sq_GetDistance(x, y, objectx, objecty, true);

		if (EnemyDistance <= MaxDistance && EnemyDistance > 0 && CNSquirrelAppendage.sq_IsAppendAppendage(object, apPath)) {
			local activeObj = sq_GetCNRDObjectToActiveObject(object);
			local nowLevel = 0;
			if (sq_IsBoss(activeObj)) {
				nowLevel = 7;
			} else if (sq_IsNamed(activeObj)) {
				nowLevel = 6;
			} else if (sq_IsAiCharacter(activeObj)) {
				nowLevel = 5;
			} else if (sq_IsHellMonster(activeObj)) {
				nowLevel = 4;
			} else if (activeObj.isSuperChampion()) {
				nowLevel = 3;
			} else if (activeObj.isChampion()) {
				nowLevel = 2;
			} else if (activeObj.isCommonChampion()) {
				nowLevel = 1;
			} else {
				nowLevel = 0;
			}
			if (nowLevel > maxlevel) {
				maxlevel = nowLevel;
				RangeEyVar.clear_obj_vector()
				RangeEyVar.push_obj_vector(object);
			}
			count++;
		}
	}
	return count > 0;
}

function KeepMaxReduction(obj) {
	if (!obj) return;
	local atSOWalkerAP = CNSquirrelAppendage.sq_GetAppendage(obj, "character/gunner/assault/at_sowalker/ap_at_sowalker.nut");
	local bodyBunkerAP = CNSquirrelAppendage.sq_GetAppendage(obj, "character/gunner/assault/bodybunker/ap_bodybunker.nut");
	local fortRessblitzAP = CNSquirrelAppendage.sq_GetAppendage(obj, "character/gunner/assault/fortressblitz/ap_fortressblitz.nut");

	local atSOWalkerReduction = atSOWalkerAP ? atSOWalkerAP.getVar().getInt(0) : 0;
	local bodyBunkerReduction = bodyBunkerAP ? bodyBunkerAP.getVar().getInt(0) : 0;
	local fortRessblitzReduction = fortRessblitzAP ? fortRessblitzAP.getVar().getInt(0) : 0;

	if (atSOWalkerReduction >= fortRessblitzReduction && atSOWalkerReduction >= bodyBunkerReduction) {

		if (bodyBunkerAP)
			bodyBunkerAP.getVar().setInt(0, 0);
		if (fortRessblitzAP)
			fortRessblitzAP.getVar().setInt(0, 0);
	} else if (fortRessblitzReduction >= atSOWalkerReduction && fortRessblitzReduction >= bodyBunkerReduction) {

		if (atSOWalkerAP)
			atSOWalkerAP.getVar().setInt(0, 0);
		if (bodyBunkerAP)
			bodyBunkerAP.getVar().setInt(0, 0);
	} else {

		if (atSOWalkerAP)
			atSOWalkerAP.getVar().setInt(0, 0);
		if (fortRessblitzAP)
			fortRessblitzAP.getVar().setInt(0, 0);
	}
}

function drawCustomUI_At_Sowalker_Energy_Bar(obj) {
	if (!obj) return;
	local myObject = onGetMyPassiveObject_My(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, SKILL_AT_SOWALKER, 0);

	if (myObject != null && myObject.getState() != 15) {
		local screenXPos = sq_GetScreenXPos(myObject);
		local screenYPos = sq_GetScreenYPos(myObject);

		local energyBarBoxXPos = screenXPos - 50;
		local energyBarBoxYPos = screenYPos - 230;
		local energyBarBoxAni = obj.getVar().GetAnimationMap("energyBarBoxAni", "ui/character/gunner/atsowalker_energy_bar_box.ani");
		sq_AnimationProc(energyBarBoxAni);
		sq_drawCurrentFrame(energyBarBoxAni, energyBarBoxXPos, energyBarBoxYPos, false);

		local duration = myObject.getVar("data").get_vector(0);
		local nowTime = sq_GetObjectTime(myObject);
		local passTimeRate = nowTime.tofloat() / duration.tofloat();
		local timeRemainingRate = 1.0 - passTimeRate;

		local energyBarXPos = screenXPos - 34;
		local energyBarYPos = screenYPos - 220;
		local clipXPos = (90.0 * timeRemainingRate).tointeger();
		if (clipXPos <= 1) {
			clipXPos = 1;
		}

		if (timeRemainingRate > 0.8) {

			setClip(energyBarXPos, energyBarYPos, energyBarXPos + clipXPos, energyBarYPos + 3);
			local energyBarYellowAni = obj.getVar().GetAnimationMap("energyBarYellowAni", "ui/character/gunner/atsowalker_energy_bar_yellow.ani");
			sq_AnimationProc(energyBarYellowAni);
			sq_drawCurrentFrame(energyBarYellowAni, energyBarXPos, energyBarYPos, false);
			releaseClip();

		} else if (timeRemainingRate < 0.8 && timeRemainingRate > 0.2) {

			setClip(energyBarXPos, energyBarYPos, energyBarXPos + clipXPos, energyBarYPos + 3);
			local energyBarWhiteAni = obj.getVar().GetAnimationMap("energyBarWhiteAni", "ui/character/gunner/atsowalker_energy_bar_white.ani");
			sq_AnimationProc(energyBarWhiteAni);
			sq_drawCurrentFrame(energyBarWhiteAni, energyBarXPos, energyBarYPos, false);
			releaseClip();

			local whiteEffectAni = obj.getVar().GetAnimationMap("whiteEffectAni", "ui/character/gunner/atsowalker_dodge_white.ani");
			sq_AnimationProc(whiteEffectAni);
			sq_drawCurrentFrame(whiteEffectAni, energyBarBoxXPos, energyBarBoxYPos, false);
		} else {

			setClip(energyBarXPos, energyBarYPos, energyBarXPos + clipXPos, energyBarYPos + 3);
			local energyBarRedAni = obj.getVar().GetAnimationMap("energyBarRedAni", "ui/character/gunner/atsowalker_energy_bar_red.ani");
			sq_AnimationProc(energyBarRedAni);
			sq_drawCurrentFrame(energyBarRedAni, energyBarXPos, energyBarYPos, false);
			releaseClip();

			local redEffectAni = obj.getVar().GetAnimationMap("redEffectAni", "ui/character/gunner/atsowalker_dodge_red.ani");
			sq_AnimationProc(redEffectAni);
			sq_drawCurrentFrame(redEffectAni, energyBarBoxXPos, energyBarBoxYPos, false);
		}
	}
}

function startArcDischarge(obj, varName) {
	if (!obj) return;
	local skillIndex = SKILL_ARCDISCHARGE;
	local skill_level = sq_GetSkillLevel(obj, skillIndex);
	local arcDischarge = obj.getVar("ArcDischarge").getInt(0);
	if (skill_level > 0 && !sq_GetSkill(obj, skillIndex).isInCoolTime() && arcDischarge >= 100) {
		obj.setSkillCommandEnable(skillIndex, true);
		if (obj.sq_IsEnterSkill(skillIndex) != -1) {
			local isUse = obj.sq_IsUseSkill(skillIndex);
			if (isUse) {
				sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/arcdischarge/arcdischarge_bodyeffect_00.ani", ENUM_DRAWLAYER_NORMAL, true);
				sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/arcdischarge/arcdischarge_charging_01.ani", ENUM_DRAWLAYER_NORMAL, true);
				sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/arcdischarge/arcdischarge_flooreffect_back_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
				sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/arcdischarge/arcdischarge_flooreffect_bottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
				sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/arcdischarge/arcdischarge_upeffect_00.ani", ENUM_DRAWLAYER_NORMAL, true);
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(SKILL_ARCDISCHARGE);
				sq_BinaryWriteDword(0);
				sq_BinaryWriteDword(addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_RETROFIT, 0, 2, 1.0)));
				sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
				obj.getVar(varName).setBool(0, false);
				obj.getVar("ArcDischarge").setInt(0, 0);
			}
		}
	} else {
		obj.setSkillCommandEnable(skillIndex, false);
	}
}

function addGrowSkillDamage(obj, attackBonusRate) {
	if (!obj) return;
	local skill_level = obj.sq_GetSkillLevel(SKILL_ACTIVATION);
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/gunner/assault/activation/ap_activation.nut")) {
		local value1 = obj.sq_GetLevelData(SKILL_ACTIVATION, 0, skill_level);
		attackBonusRate = attackBonusRate.tofloat() * (1 + value1.tofloat() / 1000);
	}

	skill_level = obj.sq_GetSkillLevel(SKILL_RETROFIT);
	if (skill_level > 0) {
		local value1 = obj.sq_GetLevelData(SKILL_RETROFIT, 0, skill_level);
		attackBonusRate = attackBonusRate.tofloat() * (1 + value1.tofloat() / 1000);
	}

	skill_level = obj.sq_GetSkillLevel(SKILL_RECONSTRUCTIONBODY);
	if (skill_level > 0) {
		local value1 = obj.sq_GetLevelData(SKILL_RECONSTRUCTIONBODY, 0, skill_level);
		attackBonusRate = attackBonusRate.tofloat() * (1 + value1.tofloat() / 1000);
	}
	return attackBonusRate.tointeger();
}

function getBaseAttackDamageRate(obj, rate) {
	if (!obj) return;
	local state = obj.getState();
	if (state == STATE_ATTACK || state == STATE_DASH_ATTACK || state == STATE_JUMP_ATTACK || state == STATE_ASSAULTATTACK || state == STATE_AIMSHOOT) {
		local skill_level = obj.sq_GetSkillLevel(SKILL_ACTIVATION);
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/gunner/assault/activation/ap_activation.nut")) {
			local value1 = obj.sq_GetLevelData(SKILL_ACTIVATION, 0, skill_level);
			rate = rate * (100 + value1 / 10) / 100;
		}

		skill_level = obj.sq_GetSkillLevel(SKILL_RETROFIT);
		if (skill_level > 0) {
			local value1 = obj.sq_GetLevelData(SKILL_RETROFIT, 0, skill_level);
			rate = rate * (100 + value1 / 10) / 100;
		}

		skill_level = obj.sq_GetSkillLevel(SKILL_RECONSTRUCTIONBODY);
		if (skill_level > 0) {
			local value1 = obj.sq_GetLevelData(SKILL_RECONSTRUCTIONBODY, 0, skill_level);
			rate = rate * (100 + value1 / 10) / 100;
		}
	}
	return rate;
}

function assult_drawArcDischarge(obj) {
	if (!obj) return;
	if (obj.sq_GetSkillLevel(SKILL_ARCDISCHARGE) > 0) {
		local arcDischarge = obj.getVar("ArcDischarge").getInt(0);
		if (arcDischarge > 100) {
			arcDischarge = 100;
			obj.getVar("ArcDischarge").setInt(0, 100);
		} else if (arcDischarge < 0) {
			arcDischarge = 0;
			obj.getVar("ArcDischarge").setInt(0, 0);
		}

		local arcDischargeAni;
		if (arcDischarge <= 0) {
			arcDischargeAni = obj.getVar().GetAnimationMap("ArcDischargeAni0", "character/gunner/effect/animation/retrofit/assultbuster_step_000.ani");
		} else if (arcDischarge > 0 && arcDischarge <= 50) {
			arcDischargeAni = obj.getVar().GetAnimationMap("ArcDischargeAni1", "character/gunner/effect/animation/retrofit/assultbuster_step_001.ani");
		} else if (arcDischarge > 50 && arcDischarge <= 99) {
			arcDischargeAni = obj.getVar().GetAnimationMap("ArcDischargeAni2", "character/gunner/effect/animation/retrofit/assultbuster_step_002.ani");
		} else if (arcDischarge >= 100) {
			arcDischargeAni = obj.getVar().GetAnimationMap("ArcDischargeAni3", "character/gunner/effect/animation/retrofit/assultbuster_step_003.ani");
		}
		sq_AnimationProc(arcDischargeAni);
		sq_drawCurrentFrame(arcDischargeAni, 150, 380, false);
		if (arcDischarge > 0 && arcDischarge < 99) {
			local value = arcDischarge.tostring();
			local len = value.len();

			for (local i = 0; i < len; i++) {
				local num = value.slice(i, i + 1);
				local uipath = assult_getNumAnis(obj, num);
				sq_AnimationProc(uipath);
				sq_drawCurrentFrame(uipath, 150 + i * 12, 378, false);
			}
		}
	}
}

function assult_getNumAnis(obj, num) {
	if (!obj) return;
	local uipath = "character/gunner/effect/animation/retrofit/";
	switch (num) {
	case "0":
		uipath = obj.getVar().GetAnimationMap("assultbuster_numset_00", uipath + "assultbuster_numset_00.ani");
		break;
	case "1":
		uipath = obj.getVar().GetAnimationMap("assultbuster_numset_01", uipath + "assultbuster_numset_01.ani");
		break;
	case "2":
		uipath = obj.getVar().GetAnimationMap("assultbuster_numset_02", uipath + "assultbuster_numset_02.ani");
		break;
	case "3":
		uipath = obj.getVar().GetAnimationMap("assultbuster_numset_03", uipath + "assultbuster_numset_03.ani");
		break;
	case "4":
		uipath = obj.getVar().GetAnimationMap("assultbuster_numset_04", uipath + "assultbuster_numset_04.ani");
		break;
	case "5":
		uipath = obj.getVar().GetAnimationMap("assultbuster_numset_05", uipath + "assultbuster_numset_05.ani");
		break;
	case "6":
		uipath = obj.getVar().GetAnimationMap("assultbuster_numset_06", uipath + "assultbuster_numset_06.ani");
		break;
	case "7":
		uipath = obj.getVar().GetAnimationMap("assultbuster_numset_07", uipath + "assultbuster_numset_07.ani");
		break;
	case "8":
		uipath = obj.getVar().GetAnimationMap("assultbuster_numset_08", uipath + "assultbuster_numset_08.ani");
		break;
	case "9":
		uipath = obj.getVar().GetAnimationMap("assultbuster_numset_09", uipath + "assultbuster_numset_09.ani");
		break;
	}
	return uipath;
}

function getRangeObjectEx(obj, Distance, offsetx, offsety, LimitDistance, Limitzpos, Limitypos) {
	if (!obj) return;

	local MaxDistance = Distance;

	if (Distance == -1) MaxDistance = 9999;

	obj.getVar("AllRangeEnemy").clear_obj_vector();
	local RangeEyVar = obj.getVar("AllRangeEnemy");

	local objectManager = obj.getObjectManager();

	local objectcount = objectManager.getCollisionObjectNumber();

	local count = 0;

	local x = sq_GetXPos(obj) + offsetx;
	local y = sq_GetYPos(obj) + offsety;

	for (local i = 0; i < objectcount; i++) {

		local object = objectManager.getCollisionObject(i);

		if (!object || !obj.isEnemy(object) || !object.isObjectType(OBJECTTYPE_ACTIVE)) continue;

		local objectx = sq_GetXPos(object);
		local objecty = sq_GetYPos(object);
		local objectz = sq_GetZPos(object);

		if (objectz > Limitzpos) continue;
		if (Limitypos != 0) {
			if (sq_Abs(y - objecty) > Limitypos) {
				continue;
			}
		}

		local EnemyDistance = sq_GetDistance(x, y, objectx, objecty, true);

		if (EnemyDistance <= MaxDistance && EnemyDistance > LimitDistance) {
			if (RangeEyVar.get_obj_vector_size() > 0) {
				local lastObj = RangeEyVar.get_obj_vector(0);
				local lastObjDistance = sq_GetDistance(x, y, sq_GetXPos(lastObj), sq_GetYPos(lastObj), true);
				if (EnemyDistance < lastObjDistance) {
					RangeEyVar.clear_obj_vector();
					RangeEyVar.push_obj_vector(object);
				}
			} else {
				RangeEyVar.push_obj_vector(object);
			}
			count++;
		}
	}
	return count;
}

function getRangeObject01(obj, Distance, offsetx, offsety, LimitDistance, Limitzpos, Limitypos, Direction) {
	if (!obj) return;

	local MaxDistance = Distance;

	if (Distance == -1) MaxDistance = 9999;

	obj.getVar("AllRangeEnemy").clear_obj_vector();
	local RangeEyVar = obj.getVar("AllRangeEnemy");

	local objectManager = obj.getObjectManager();

	local objectcount = objectManager.getCollisionObjectNumber();

	local count = 0;

	local x = sq_GetXPos(obj) + offsetx;
	local y = sq_GetYPos(obj) + offsety;

	for (local i = 0; i < objectcount; i++) {

		local object = objectManager.getCollisionObject(i);

		if (!object || !obj.isEnemy(object) || !object.isObjectType(OBJECTTYPE_ACTIVE)) continue;

		local objectx = sq_GetXPos(object);
		local objecty = sq_GetYPos(object);
		local objectz = sq_GetZPos(object);

		if (objectz > Limitzpos) continue;
		if (Limitypos != 0) if (sq_Abs(y - objecty) > Limitypos) continue;

		switch (Direction) {
		case ENUM_DIRECTION_LEFT:

			if (x < objectx) continue;
			break;
		case ENUM_DIRECTION_RIGHT:

			if (x > objectx) continue;
			break;
		case ENUM_DIRECTION_UP:

			if (y < objecty) continue;
			break;
		case ENUM_DIRECTION_DOWN:

			if (y > objecty) continue;
			break;
		}

		local EnemyDistance = sq_GetDistance(x, y, objectx, objecty, true);

		if (EnemyDistance <= MaxDistance && EnemyDistance > LimitDistance) {
			RangeEyVar.push_obj_vector(object);
			count++;
		}
	}
	return count;
}

function CreateAniRate_pooled(obj, AniPath, offsetX, offsetY, offsetZ, layer, SizeRate, SpeedRate) {
	if (!obj) return;
	local ani = sq_CreateAnimation("", AniPath);

	local direction = obj.getDirection();
	local x = sq_GetDistancePos(sq_GetXPos(obj), direction, offsetX);
	local y = sq_GetYPos(obj) + offsetY;
	local z = sq_GetZPos(obj) + offsetZ;

	if (SizeRate != false) {
		ani.setImageRateFromOriginal(SizeRate, SizeRate);
		ani.setAutoLayerWorkAnimationAddSizeRate(SizeRate);
	}

	if (SpeedRate != false) ani.setSpeedRate(SpeedRate);

	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, layer);
	sq_SetCurrentDirection(pooledObj, direction);
	pooledObj.setCurrentPos(x, y, z);
	sq_AddObject(obj, pooledObj, OBJECTTYPE_DRAWONLY, false);

	return pooledObj;
}

function createPooledObjEff(obj, aniPath, x, y, z, layer, direction) {
	if (!obj) return null;

	local ani = sq_CreateAnimation("", aniPath);
	local pooledObj = sq_CreatePooledObject(ani, true);
	sq_SetCurrentDirection(pooledObj, direction);
	pooledObj.setCurrentPos(x, y, z);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, layer);
	sq_AddObject(obj, pooledObj, OBJECTTYPE_DRAWONLY, false);

	return pooledObj;
}
