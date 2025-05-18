DEBUG <- isDebugMode();
NULL <- null;
isDraw <- 1;

function getCurrentModuleDamageRate_Gunner(obj) {
	local rate = 100;
	if (obj.sq_GetSkillLevel(111) > 0 && sq_getGrowType(obj) == 0) {
		rate = rate * (100 + sq_GetLevelData(obj, 111, 0, obj.sq_GetSkillLevel(111)) / 10) / 100;
	}
	rate = getBaseAttackDamageRate(obj, rate);
	return rate.tofloat() / 100.0;
}

function setZealOfFaithAppend(obj, skill_index) {
	if (!obj) return;
	if (sq_GetCurrentModuleType() != 3) return;
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i += 1) {
		local object = objectManager.getCollisionObject(i);
		if (object && !obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_CHARACTER)) {
			object = sq_GetCNRDObjectToSQRCharacter(object);
			local append = "character/atpriest/appendage/ap_zealoffaith_friend.nut";
			local isAppend = object.IsSquirrelAppendage(append);
			if (isSameObject(obj, object)) {
				local appendageself = obj.GetSquirrelAppendage(append);
				if (!appendageself) {
					isAppend = false;
				}
			}
			local range = sq_GetIntData(obj, skill_index, 0);
			if (isDistanceOfTarget(obj, object, range) && !isAppend) {

				local skill_level = sq_GetSkillLevel(obj, skill_index);
				local physical_magical_attack = sq_GetLevelData(obj, skill_index, 0, skill_level).tofloat();
				local physical_magical_defense = sq_GetLevelData(obj, skill_index, 1, skill_level).tofloat();
				local attackspeed = sq_GetLevelData(obj, skill_index, 2, skill_level).tofloat();
				attackspeed = attackspeed / 10;
				local movespeed = sq_GetLevelData(obj, skill_index, 3, skill_level).tofloat();
				movespeed = movespeed / 10;
				local appendage = CNSquirrelAppendage.sq_AppendAppendage(object, obj, skill_index, false, append, false);
				appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, ENUM_CHARACTERJOB_AT_PRIEST, skill_index, skill_level);
				CNSquirrelAppendage.sq_Append(appendage, object, obj);
				appendage = object.GetSquirrelAppendage(append);
				if (appendage) {
					local change_appendage = appendage.sq_getChangeStatus("zealoffaith");
					if (!change_appendage) {
						change_appendage = appendage.sq_AddChangeStatusAppendageID(object, obj, 0, 34, false, 0, APID_COMMON);
					}
					if (change_appendage) {
						change_appendage.clearParameter();
						change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physical_magical_attack);
						change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, physical_magical_attack);
						change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, false, physical_magical_defense);
						change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, physical_magical_defense);
						change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, true, attackspeed);
						change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, true, movespeed);
					}
				}
			} else if (!isDistanceOfTarget(obj, object, range) && isAppend) {
				CNSquirrelAppendage.sq_RemoveAppendage(object, append);
			}
		}
	}
}

function requestBuy(obj, skill, nIndex, flag, count) {
	if (sq_getJob(obj) == ENUM_CHARACTERJOB_PRIEST && sq_getGrowType(obj) == GROW_TYPE_AVENGER) {
		if (nIndex == SKILL_AVENGER_AWAKENING) {
			sq_requestBuySkill(SKILL_EXECUTION, flag, count);
		}
	}
	else if (sq_getJob(obj) == ENUM_CHARACTERJOB_AT_PRIEST && sq_getGrowType(obj) == 2) {
		if (nIndex == 121) {
			sq_requestBuySkill(134, flag, count);
		}
	}
	return true;
}

function removeEdification(obj) {
	if (!obj) return;
	local append = "character/atpriest/edification/ap_edification.nut";
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, append)) {
		CNSquirrelAppendage.sq_RemoveAppendage(obj, append);
	}
	return;
}

function removeZealOfFaith(obj) {
	if (!obj) return;
	local append = "character/atpriest/appendage/ap_zealoffaith_friend.nut";
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, append)) {
		CNSquirrelAppendage.sq_RemoveAppendage(obj, append);
	}
	return;
}

function IsInterval(obj, interval) {
	if (!obj) return false;
	local t = obj.getVar().get_ct_vector(0);
	if (!t) {
		obj.getVar().clear_ct_vector();
		obj.getVar().push_ct_vector();
		t = obj.getVar().get_ct_vector(0);
		t.Reset();
		t.Start(10000, 0);

		return true;
	}
	local currentT = t.Get();
	if (currentT > interval) {
		t.Reset();
		t.Start(10000, 0);
		return true;
	}
	return false;
}

function getTheSevenDeadlySinsAddDamageBonus(obj) {
	if (!obj) return 0;
	local append = "character/atpriest/seducer/thesevendeadlysins/ap_thesevendeadlysins.nut";
	local appendage = obj.GetSquirrelAppendage(append);
	if (appendage) {
		local isvalid = appendage.isValid();
		if (!isvalid) return 0;
		local damagebonus = appendage.getVar("damagebonus").get_vector(0);
		return damagebonus;
	}
	return 0;
}

function CreateBuffCutin(obj, aniPath) {
	local ani = sq_CreateAnimation("", aniPath)
	local pooledObj = sq_CreatePooledObject(ani, true)
	local objMan = obj.getObjectManager()
	local x = obj.getXPos()
	local y = objMan.getFieldYPos(0, 0, 7)
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM)
	pooledObj.setCurrentPos(x + 480, y, 0)
	sq_AddObject(obj, pooledObj, 2, false)
}

function startSkillCoolTime(obj, skillIndex, skillLevel, currentCoolTime) {
	if (!obj) return -1;
	if (sq_getJob(obj) == ENUM_CHARACTERJOB_AT_GUNNER) {
		local g_zhuzaiLevel = sq_GetSkillLevel(obj, SKILL_G_ZHUZAI);
		local coolTimeRate = sq_GetLevelData(obj, SKILL_G_ZHUZAI, 1, g_zhuzaiLevel);
		if (g_zhuzaiLevel > 0 && skillIndex == 79 && CURRENT_BUFF_COUNT_qianzhi > 2) {
			local newCoolTime = currentCoolTime.tofloat() * (100.0 - coolTimeRate.tofloat()) / 100.0
			return newCoolTime.tointeger();
		}
		else if (g_zhuzaiLevel > 0 && skillIndex == 96 && CURRENT_BUFF_COUNT_qianzhi > 2) {
			local newCoolTime = currentCoolTime.tofloat() * (100.0 - coolTimeRate.tofloat()) / 100.0
			return newCoolTime.tointeger();
		}
		else if (g_zhuzaiLevel > 0 && skillIndex == 246 && CURRENT_BUFF_COUNT_qianzhi > 2) {
			local newCoolTime = currentCoolTime.tofloat() * (100.0 - coolTimeRate.tofloat()) / 100.0
			return newCoolTime.tointeger();
		}

	}
	return -1;
}

function onAttack_PassiveObject(passiveobj, damager, bounding_box, is_stuck) {
	if (!passiveobj) return -1;

	if (passiveobj) {

		setMonsterActAppendageEffect(passiveobj, damager, bounding_box, is_stuck);
		local pChr = passiveobj.getTopCharacter();

		if (!isGrowTypeAvenger(pChr)) return -1;

		if (pChr) {

			if (passiveobj.getPassiveObjectIndex() != 24104 && passiveobj.getPassiveObjectIndex() != 24105 && passiveobj.getPassiveObjectIndex() != 24106) procDevilStrikeGauge(pChr, passiveobj.getPassiveObjectIndex());
		}
	}

	return 1;
}

function drawGrowAvatarAniType(job, growtype, x, y, isOver, is_draw) {
	if (job == ENUM_CHARACTERJOB_PRIEST && growtype == GROW_TYPE_AVENGER) {
		if (isOver == true && is_draw == true) {
			local getvar = CNAvenger.getStaticVar();
			local auraAni = null;
			if (getvar) {
				auraAni = getvar.GetAnimationMap("1_aura_normal", "Character/Priest/Effect/Animation/ScytheMastery/1_aura_normal.ani");
			}
			sq_AnimationProc(auraAni);
			sq_drawCurrentFrame(auraAni, x, y, false);
		}
	}
	else if (job == ENUM_CHARACTERJOB_AT_PRIEST && growtype == 1) {
		if (is_draw == true) {
			if (isOver == false) {
				local getvar = CNAvenger.getStaticVar();
				local auraAni = null;
				if (getvar) {
					auraAni = getvar.GetAnimationMap("atcrusader1st", "character/priest/effect/animation/atcrusader_1st/atcrusader1st_02.ani");
				}
				sq_AnimationProc(auraAni);
				sq_drawCurrentFrame(auraAni, x, y, false);
			}
		}
	}
	else if (job == ENUM_CHARACTERJOB_AT_PRIEST && growtype == 2) {
		if (isOver == true && is_draw == true) {
			local getvar = CNAvenger.getStaticVar();
			local auraAni = null;
			if (getvar) {
				auraAni = getvar.GetAnimationMap("temptress1stf", "character/priest/effect/animation/temptress_1st/temptress_front_loop.ani");
			}
			sq_AnimationProc(auraAni);
			sq_drawCurrentFrame(auraAni, x, y, false);
		}
		if (isOver == false && is_draw == true) {
			local getvar = CNAvenger.getStaticVar();
			local auraAni1 = null;
			local auraAni2 = null;
			if (getvar) {
				auraAni1 = getvar.GetAnimationMap("temptress1stb1", "character/priest/effect/animation/temptress_1st/temptress_back_loop01.ani");
				auraAni1 = getvar.GetAnimationMap("temptress1stb2", "character/priest/effect/animation/temptress_1st/temptress_back_loop02.ani");
			}
			sq_AnimationProc(auraAni1);
			sq_drawCurrentFrame(auraAni1, x, y, false);
			sq_AnimationProc(auraAni2);
			sq_drawCurrentFrame(auraAni2, x, y, false);
		}
	}
	else if (job == ENUM_CHARACTERJOB_AT_PRIEST && growtype == 3) {
		if (isOver == false && is_draw == true) {
			local getvar = CNAvenger.getStaticVar();
			local auraAni = null;
			if (getvar) {
				auraAni = getvar.GetAnimationMap("sorceress1st", "character/priest/effect/animation/sorceress_1st/sorceress_dragon.ani");
			}
			sq_AnimationProc(auraAni);
			sq_drawCurrentFrame(auraAni, x, y, false);
		}
	}
}

function drawAppend_VirtualCharacter(job, growtype, x, y, isOver, is_draw) {
	if (job == ENUM_CHARACTERJOB_PRIEST && growtype == GROW_TYPE_AVENGER) {
		if (isOver == true) {
			local getvar = CNAvenger.getStaticVar();

			local auraAni = null;
			if (getvar) {
				auraAni = getvar.GetAnimationMap("1_aura_normal", "Character/Priest/Effect/Animation/ScytheMastery/1_aura_normal.ani");
			}

			sq_AnimationProc(auraAni);
			sq_drawCurrentFrame(auraAni, x, y, false);
		}
	}
}

function sqr_CreatePooledObject(obj, ani_filename, x, y, z, dir) {
	if (!obj) return;

	local ani = obj.sq_createCNRDAnimation(ani_filename);
	local pooledObj = obj.sq_createCNRDPooledObject(ani, true);
	if (pooledObj) {

		pooledObj.setCurrentDirection(dir);
		pooledObj.setCurrentPos(x, y, z);
		obj.sq_AddObject(pooledObj);
	}
}

function sqr_IsNormalAttack(state) {

	if (state == STATE_ATTACK || state == STATE_JUMP_ATTACK || state == STATE_DASH_ATTACK) {
		return true;
	}

	return false;
}

function CreateAimPointMark(parentObj) {
	local job = sq_getJob(parentObj);
	local ani = null;

	if (job == ENUM_CHARACTERJOB_AT_MAGE) {
		ani = sq_CreateAnimation("", "Common/CommonEffect/Animation/atmage_cussor/AimPointMark.ani");
		ani.setRGBA(0, 78, 255, 255);
	}

	return ani;
}

function CNAimPointMarkCustomAnimation(obj, parentObj) {
	if (!obj) return false;

	local job = sq_getJob(parentObj);

	if (job == ENUM_CHARACTERJOB_AT_MAGE) {
		local ani1 = sq_CreateAnimation("", "Common/CommonEffect/Animation/atmage_cussor/AimPointMarkDisable.ani");
		local ani2 = sq_CreateAnimation("", "Common/CommonEffect/Animation/atmage_cussor/AimPointMarkVanish.ani");
		local ani3 = sq_CreateAnimation("", "Common/CommonEffect/Animation/atmage_cussor/AimPointMarkDisableVanish.ani");
		local ani4 = sq_CreateAnimation("", "Common/CommonEffect/Animation/atmage_cussor/AimPointMarkEnable.ani");

		if (ani1 && ani2 && ani3 && ani4) {
			ani1.setRGBA(0, 78, 255, 255);
			ani2.setRGBA(0, 78, 255, 255);
			ani3.setRGBA(0, 78, 255, 255);
			ani4.setRGBA(0, 78, 255, 255);

			obj.addCustomAnimation(ani1);
			obj.addCustomAnimation(ani2);
			obj.addCustomAnimation(ani3);
			obj.addCustomAnimation(ani4);

			return true;
		}
	}

	return false;
}

function isMovablePos_CNAimPointMark(obj, parentObj, xPos, yPos) {
	if (!obj) return true;

	if (!parentObj) return true;

	local job = sq_getJob(parentObj);

	if (job == ENUM_CHARACTERJOB_AT_MAGE) {
		return sq_IsMovablePosCollisionObject(parentObj, xPos, yPos);
	}

	return true;
}

function isBattleMode() {
	local isPvpMode = checkModuleType(MODULE_TYPE_PVP_TYPE);
	local isDungeonMode = checkModuleType(MODULE_TYPE_DUNGEON_TYPE);

	print(" isPvpMode:" + isPvpMode + " isDungeonMode:" + isDungeonMode);

	if (!isPvpMode && !isDungeonMode) {
		return false;
	}

	return true;
}

SKILL_HARD_ATTACK <- 5;
SKILL_TRIPLE_SLASH <- 8;
SKILL_MOMENTARY_SLASH <- 9;
SKILL_ASHEN_FORK <- 16;
SKILL_JUMP_ATTACK_MULTI <- 17;
SKILL_NORMAL_WAVE <- 20;
SKILL_ICE_WAVE <- 21;
SKILL_DARK_FRIENDSHIP <- 29;
SKILL_GRAB_BLAST_BLOOD <- 31;
SKILL_UPPER_SLASH <- 46;
SKILL_VANE_SLASH <- 58;
SKILL_GHOST_STEP_SLASH <- 60;
SKILL_GORE_CROSS <- 64;
SKILL_HOP_SMASH <- 65;
SKILL_CHARGE_CRASH <- 68;
SKILL_RAPID_MOVE_SLASH <- 72;
SKILL_ILLUSION_SLASH <- 73;
SKILL_WAVE_SPIN_AREA <- 74;
SKILL_MOONLIGHT_SLASH <- 77;
SKILL_BLOODY_RAVE <- 79;
SKILL_OUT_RAGE_BREAK <- 81;
SKILL_KALLA <- 82;
SKILL_FLOW_MIND <- 105;

SKILL_SHOCK_WAVE_AREA <- 57;
SKILL_GRAND_WAVE <- 50;
SKILL_REFLECT_GUARD <- 2;
SKILL_TRIPLE_STAB <- 112;
SKILL_GHOST_SIDE_WIND <- 111;

function sq_LoadSkillEffect_DemonicSwordman(obj, skillIndex) {
	if (skillIndex == SKILL_GHOST_SIDE_WIND) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GhostSideWind_DS/00_sword_normal.ani");
	}
	else if (skillIndex == SKILL_HARD_ATTACK) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/HardAttack1_DS.ani");
	}
	else if (skillIndex == SKILL_ICE_WAVE) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/RapidMoveSlash_DS/Move1.ani");
	}
	else if (skillIndex == SKILL_RAPID_MOVE_SLASH) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/RapidMoveSlash_DS/Move1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/RapidMoveSlash_DS/Move2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/RapidMoveSlash_DS/Slash1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/RapidMoveSlash_DS/Slash2.ani");
	}
	else if (skillIndex == SKILL_GHOST_STEP_SLASH) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GhostStepSlash_DS/Move.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GhostStepSlash_DS/Slash1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GhostStepSlash_DS/Slash2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GhostStepSlash_DS/Skull.ani");
	}
	else if (skillIndex == SKILL_TRIPLE_SLASH) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/TripleSlash_DS/Slash1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/TripleSlash_DS/Slash2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/TripleSlash_DS/Slash3.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/TripleSlash_DS/Slash4.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/TripleSlash_DS/Slash5.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/TripleSlash_DS/Move1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/TripleSlash_DS/Move2.ani");
	}
	else if (skillIndex == SKILL_MOMENTARY_SLASH) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/momentaryslash_none_under.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash_DS/momentaryslash_blue_ldodge_under.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/momentaryslash_none_upper.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash_DS/momentaryslash_blue_ldodge_upper.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/momentaryslash_white_ldodge_under.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/momentaryslash_white_ldodge_upper.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/momentaryslash_red_ldodge_under.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/momentaryslash_red_ldodge_upper.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/Charge1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/Charge2.ani");
	}
	else if (skillIndex == SKILL_ASHEN_FORK) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackHold_DS.ani");
	}
	else if (skillIndex == SKILL_JUMP_ATTACK_MULTI) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti_DS/jumpchainattackslash1_katana_under.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti_DS/jumpchainattackslash1_katana_upper.ani");

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti_DS/jumpchainattackslash2_katana_under.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti_DS/jumpchainattackslash2_katana_upper.ani");

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti_DS/jumpchainattackslash1_under_effect.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti_DS/jumpchainattackslash2_under_effect.ani");

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti_DS/jumpchainattackslash1_upper_effect.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti_DS/jumpchainattackslash2_upper_effect.ani");

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti_DS/jumpchainattacknormal_upper_effect.ani");
	}
	else if (skillIndex == SKILL_NORMAL_WAVE) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/NormalWaveSlash_DS.ani");
	}
	else if (skillIndex == SKILL_GRAB_BLAST_BLOOD) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GrabBlastBlood_DS.ani");
	}
	else if (skillIndex == SKILL_UPPER_SLASH) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/UpperSlash1_DS.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/UpperSlash2_DS.ani");
	}
	else if (skillIndex == SKILL_VANE_SLASH) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/VaneSlash_DS/Upper.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/VaneSlash_DS/Dust.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/VaneSlash_DS/Smash.ani");
	}
	else if (skillIndex == SKILL_GORE_CROSS) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GoreCross_DS/Slash1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GoreCross_DS/Slash2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GoreCross_DS/Slash3.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GoreCross_DS/Slash4.ani");
	}
	else if (skillIndex == SKILL_HOP_SMASH) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/HopSmash_DS/Sword.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/HopSmash_DS/Smash.ani");
	}
	else if (skillIndex == SKILL_MOONLIGHT_SLASH) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MoonlightSlash1_DS.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MoonlightSlash2_DS.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MoonlightSlashFull.ani");
	}
	else if (skillIndex == SKILL_BLOODY_RAVE) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave_DS/Start1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave_DS/Start2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave_DS/Loop1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave_DS/Loop2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave_DS/Line1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave_DS/Line2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave_DS/Typhoon.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave_DS/End.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave_DS/Sword1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave_DS/Sword2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave_DS/Sword3.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave_DS/Sword4.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/(TN)Sword2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/(TN)Sword4.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave_DS/Hit.ani");
	}
	else if (skillIndex == SKILL_OUT_RAGE_BREAK) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/OutRageBreak_DS/sword_ready_ldodge.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/OutRageBreak_DS/sword_ready_none.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/OutRageBreak_DS/sword_slash_ldodge.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/OutRageBreak_DS/sword_slash_none.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/OutRageBreak_DS/sword_slash_impact_ldodge.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/OutRageBreak_DS/sword_slash_impact_none.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/OutRageBreak_DS/sword_slash_stone.ani");
	}
	else if (skillIndex == SKILL_KALLA) {
		local i = 1;
		for (; i <= 4; ++i)
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/Kalla_DS/FinishReady" + i + ".ani");

		for (local j = 1; j <= 3; ++j) {
			for (i = 1; i <= 4; ++i) {
				obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/Kalla_DS/Finish" + j + "-" + i + ".ani");
			}
		}
	}
	else if (skillIndex == SKILL_WAVE_SPIN_AREA) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/WaveSpinArea_DS/Circle.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/WaveSpinArea_DS/CircleFront.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/WaveSpinArea_DS/CircleBack.ani");
	}
	else if (skillIndex == SKILL_CHARGE_CRASH) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ChargeCrash_DS/dash.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ChargeCrash_DS/up-slash.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ChargeCrash_DS/charge.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ChargeCrash_DS/down-slash.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ChargeCrash_DS/dustdash.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ChargeCrash_DS/dustdashlast.ani");
	}
	else if (skillIndex == SKILL_ILLUSION_SLASH) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/IllusionSlash_DS/Upper.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/IllusionSlash_DS/Smash.ani");
	}
	else if (skillIndex == SKILL_SHOCK_WAVE_AREA) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ShockWaveArea_DS/Cast.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ShockWaveArea_DS/Smash.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ShockWaveArea_DS/Area.ani");
	}
	else if (skillIndex == SKILL_GRAND_WAVE) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/grandWaveOnCharge1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/grandWaveOnCharge2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/grandWave_DS.ani");
	}
	else if (skillIndex == SKILL_REFLECT_GUARD) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ReflectGuard_DS/charge.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ReflectGuard_DS/slash.ani");
	}

}

function sq_LoadSkillEffect_Swordman(obj, skillIndex) {
	if (skillIndex == SKILL_GHOST_SIDE_WIND) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GhostSideWind/00_sword_normal.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GhostSideWind/01_sword_dodge.ani");
	}
	else if (skillIndex == SKILL_HARD_ATTACK) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/HardAttack1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/HardAttack2.ani");
	}
	else if (skillIndex == SKILL_RAPID_MOVE_SLASH) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/RapidMoveSlash/Move1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/RapidMoveSlash/Move2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/RapidMoveSlash/Slash1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/RapidMoveSlash/Slash2.ani");
	}
	else if (skillIndex == SKILL_GHOST_STEP_SLASH) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GhostStepSlash/Move.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GhostStepSlash/Slash1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GhostStepSlash/Slash2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GhostStepSlash/Skull.ani");

	}
	else if (skillIndex == SKILL_TRIPLE_SLASH) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/TripleSlash/Slash1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/TripleSlash/Slash2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/TripleSlash/Slash3.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/TripleSlash/Slash4.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/TripleSlash/Slash5.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/TripleSlash/Move1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/TripleSlash/Move2.ani");
	}
	else if (skillIndex == SKILL_MOMENTARY_SLASH) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/momentaryslash_none_under.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/momentaryslash_blue_ldodge_under.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/momentaryslash_none_upper.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/momentaryslash_blue_ldodge_upper.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/momentaryslash_white_ldodge_under.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/momentaryslash_white_ldodge_upper.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/momentaryslash_red_ldodge_under.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/momentaryslash_red_ldodge_upper.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/Charge1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MomentarySlash/Charge2.ani");
	}
	else if (skillIndex == SKILL_ASHEN_FORK) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackHold.ani");
	}
	else if (skillIndex == SKILL_JUMP_ATTACK_MULTI) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti/jumpchainattackslash1_katana_under.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti/jumpchainattackslash1_katana_upper.ani");

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti/jumpchainattackslash2_katana_under.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti/jumpchainattackslash2_katana_upper.ani");

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti/jumpchainattackslash1_under_effect.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti/jumpchainattackslash2_under_effect.ani");

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti/jumpchainattackslash1_upper_effect.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti/jumpchainattackslash2_upper_effect.ani");

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/JumpAttackMulti/jumpchainattacknormal_upper_effect.ani");
	}
	else if (skillIndex == SKILL_NORMAL_WAVE) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/NormalWaveSlash.ani");
	}
	else if (skillIndex == SKILL_GRAB_BLAST_BLOOD) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GrabBlastBlood.ani");
	}
	else if (skillIndex == SKILL_UPPER_SLASH) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/UpperSlash1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/UpperSlash2.ani");
	}
	else if (skillIndex == SKILL_VANE_SLASH) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/VaneSlash/Upper.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/VaneSlash/Dust.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/VaneSlash/Smash.ani");
	}
	else if (skillIndex == SKILL_GORE_CROSS) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GoreCross/Slash1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GoreCross/Slash2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GoreCross/Slash3.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/GoreCross/Slash4.ani");
	}
	else if (skillIndex == SKILL_HOP_SMASH) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/HopSmash/Sword.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/HopSmash/Smash.ani");
	}
	else if (skillIndex == SKILL_MOONLIGHT_SLASH) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MoonlightSlash1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MoonlightSlash2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/MoonlightSlashFull.ani");
	}
	else if (skillIndex == SKILL_BLOODY_RAVE) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/Start1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/Start2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/Loop1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/Loop2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/Line1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/Line2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/Typhoon.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/End.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/Sword1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/Sword2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/Sword3.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/Sword4.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/(TN)Sword2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/(TN)Sword4.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/BloodyRave/Hit.ani");
	}
	else if (skillIndex == SKILL_OUT_RAGE_BREAK) {

		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/OutRageBreak/sword_ready_ldodge.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/OutRageBreak/sword_ready_none.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/OutRageBreak/sword_slash_ldodge.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/OutRageBreak/sword_slash_none.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/OutRageBreak/sword_slash_impact_ldodge.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/OutRageBreak/sword_slash_impact_none.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/OutRageBreak/sword_slash_stone.ani");
	}
	else if (skillIndex == SKILL_KALLA) {
		for (local i = 1; i <= 4; ++i)
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/Kalla/FinishReady" + i + ".ani");

		for (local j = 1; j <= 3; ++j)
		for (local i = 1; i <= 4; ++i)
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/Kalla/Finish" + j + "-" + i + ".ani");
	}
	else if (skillIndex == SKILL_WAVE_SPIN_AREA) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/WaveSpinArea/Circle.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/WaveSpinArea/CircleFront.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/WaveSpinArea/CircleBack.ani");
	}
	else if (skillIndex == SKILL_CHARGE_CRASH) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ChargeCrash/dash.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ChargeCrash/up-slash.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ChargeCrash/charge.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ChargeCrash/down-slash.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ChargeCrash/dustdash.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ChargeCrash/dustdashlast.ani");
	}
	else if (skillIndex == SKILL_ILLUSION_SLASH) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/IllusionSlash/Upper.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/IllusionSlash/Smash.ani");
	}
	else if (skillIndex == SKILL_SHOCK_WAVE_AREA) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ShockWaveArea/Cast.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ShockWaveArea/Smash.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ShockWaveArea/Area.ani");
	}
	else if (skillIndex == SKILL_GRAND_WAVE) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/grandWaveOnCharge1.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/grandWaveOnCharge2.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/grandWave.ani");
	}
	else if (skillIndex == SKILL_REFLECT_GUARD) {
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ReflectGuard/charge.ani");
		obj.sq_LoadSkillEffectAni(skillIndex, "Effect/Animation/ReflectGuard/slash.ani");
	}
}

function getDist2(x1, y1, x2, y2) {
	local i = 0;

	local dx = x1 - x2;

	local dy = y1 - y2;

	local sum = (dx * dx) + (dy * dy);

	if (dx < 0) dx = -dx;

	if (dy < 0) dy = -dy;

	if (dx > dy) i = dx;
	else i = dy;

	while ((i * i) < sum) {
		i = i + 2;
	}

	i = i - 1;

	if ((i * i) < sum) i = i + 1;

	return i;

}

function setState_Priest(obj, state, datas, isResetTimer) {
	if (!obj) return;
	if (state == 0) return;
	useRangeBuff_setState(obj, state, datas); //???FF
	setState_AllGrowJob(obj, state, datas, isResetTimer);
}

function enableClearDeadEnemies(obj, damager) {
	if (obj.isEnemy(damager) && damager.isObjectType(OBJECTTYPE_ACTIVE)) {
		local activeObj = sq_GetCNRDObjectToActiveObject(damager);
		if (activeObj.isDead()) {
			sq_IntVectorClear(sq_GetGlobalIntVector());
			sq_IntVectorPush(sq_GetGlobalIntVector(), 0);
			sq_AddSetStatePacketActiveObject(activeObj, STATE_DIE, sq_GetGlobalIntVector(), STATE_PRIORITY_FORCE);
		}
	}
}

function onAttack_Swordman(obj, damager, bounding_box, is_stuck) {
	if (!obj) return -1;
	enableClearDeadEnemies(obj, damager);
}

function onAttack_Fighter(obj, damager, bounding_box, is_stuck) {
	if (!obj) return -1;
	enableClearDeadEnemies(obj, damager);
}

function onAttack_Gunner(obj, damager, bounding_box, is_stuck) {
	if (!obj) return -1;
	enableClearDeadEnemies(obj, damager);
}

function onAttack_Mage(obj, damager, bounding_box, is_stuck) {
	if (!obj) return -1;
	enableClearDeadEnemies(obj, damager);
}

function onAttack_Priest(obj, damager, bounding_box, is_stuck) {
	if (!obj) return -1;
	enableClearDeadEnemies(obj, damager);
}

function onAttack_ATGunner(obj, damager, bounding_box, is_stuck) {
	if (!obj) return -1;
	enableClearDeadEnemies(obj, damager);
}

function onAttack_Thief(obj, damager, bounding_box, is_stuck) {
	if (!obj) return -1;
	enableClearDeadEnemies(obj, damager);
}

function onAttack_ATPriest(obj, damager, bounding_box, is_stuck) {
	if (!obj) return -1;
	enableClearDeadEnemies(obj, damager);
}