function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_alteration")
	appendage.sq_AddFunctionName("proc", "proc_appendage_alteration")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_alteration")
}

function onStart_appendage_alteration(appendage) {
	if (!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
}

function proc_appendage_alteration(appendage) {
	if (!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
	//??˜î—ap????îºï’ƒ??
	switch (parentObj.getState()) {
	case 15:
		if (appendage.getVar().getInt(0) != 2) {
			appendage.getVar().setInt(0, 2);
			appendage.sq_DeleteEffectFront(); //?îº?¨’?¨æ€?ani
			appendage.sq_AddEffectFront("character/gunner/effect/animation/alteration/dash/thunder_001_00.ani"); //?¨æ€?
			appendage.sq_AddEffectFront("character/gunner/effect/animation/alteration/dash/thunder_002_00.ani"); //?¨æ€?
			appendage.sq_AddEffectFront("character/gunner/effect/animation/alteration/dash/thunder_003_00.ani"); //?¨æ€?
		}
		local ani = appendage.sq_GetFrontAnimation(0); //?ºî¤™?‘é ¨????°ni
		local isEnd = sq_IsEnd(ani);
		if (isEnd) {
			sq_Rewind(ani);
		}
		break;
	default:
		if (appendage.getVar().getInt(0) != 1) {
			appendage.getVar().setInt(0, 1);
			appendage.sq_DeleteEffectFront(); //?îº?¨’?¨æ€?ani
			appendage.sq_AddEffectFront("character/gunner/effect/animation/alteration/blood/bloodlightning_00.ani"); //?¨æ€?
		}
		local ani = appendage.sq_GetFrontAnimation(0); //?ºî¤™?‘é ¨????°ni
		local isEnd = sq_IsEnd(ani);
		if (isEnd) {
			sq_Rewind(ani);
		}
		break;
	}
	RemoveActiveStatusBleeding(parentObj); //ap?˜é§î¨’æ’–å¯¡æƒ…?¨æ€???’ïŠ¾?µÂ€?˜î¿˜?œæ’…îµ¥Â€?
	//UpdataProperty_alteration(appendage); //ap?“îµ¤??…îµ¥??
	setSkillSoften_Assault(appendage);
}

function onSetHp_appendage_alteration(appendage, hp, attacker) {
	if (!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
	//??‡ï”·?????£ç¬†??
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	if (hp <= 10) {
		local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_ALTERATION, STATE_ASSAULTATTACK, 1, 1.0);
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_ALTERATION); //??????è³œæ¥Š??
		sq_BinaryWriteDword(1); //????‹ï£??é¤ƒ?
		sq_BinaryWriteDword(attackBonusRate);
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
	}
	return hp;
}

//ap?˜é§î¨’æ’–å¯¡æƒ…?¨æ€???’ïŠ¾?µÂ€?˜î¿˜?œæ’…îµ¥Â€?
function RemoveActiveStatusBleeding(obj) {
	if (!obj) return;
	obj = sq_GetCNRDObjectToSQRCharacter(obj);
	sq_ReleaseActiveStatus(obj, ACTIVESTATUS_BLEEDING);
}

//ap?“îµ¤??…îµ¥??
function UpdataProperty_alteration(appendage) {
	local parentObj = appendage.getParent();
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}
	//??‡ï”·?????£ç¬†?Šâˆª????è³???
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local skill_level = obj.sq_GetSkillLevel(SKILL_ALTERATION);
	local chrLevel = obj.sq_GetSkillLevel(174);

	//?è¸¹ï‘???è³???
	local equipmentPhysicalAttack = obj.sq_GetLevelData(SKILL_ALTERATION, 1, skill_level).tofloat();
	equipmentPhysicalAttack = equipmentPhysicalAttack / 100;
	local phyBonus = sq_GetIntData(obj, SKILL_ALTERATION, 4);
	local physicalAttack = sq_GetIntData(obj, SKILL_ALTERATION, 2) + chrLevel * phyBonus;
	local attackSpeed = obj.sq_GetLevelData(SKILL_ALTERATION, 2, skill_level);
	local moveSpeed = obj.sq_GetLevelData(SKILL_ALTERATION, 3, skill_level);

	//?ˆæ›„?­AP?“îµ¤??…îµ¥??
	local change_appendage = appendage.sq_getChangeStatus("alteration"); //?ºî¤™?‘æ•¶????†Â€?
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatus("alteration", obj, obj, 0, 0, false, 0); //?“îµ¤??Â€?èŠ¸???™ï’‘??
	}
	if (change_appendage) {
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, attackSpeed.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, moveSpeed.tofloat());
		if (obj.getWeaponSubType() == 1) {
			
			change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, true, equipmentPhysicalAttack);
			change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physicalAttack.tofloat());
		}
	}
}

//???‘‰??”ï’‘?î¼¾â€? 2=sub
ASSAULTGROWSTATETABLE <- {
	[0] = [STATE_SUPPRESS, 1],
	//?ï†³? : ??ï—
	[1] = [STATE_AIMSHOOT, 1],
	//???? ï„’??
	[2] = [STATE_BASHSTOCK, 1],
	//????˜ç®??
	[3] = [STATE_BURSTBOMB, 1],
	//?å¯??éŠ??
	[4] = [STATE_BODYBUNKER, 1],
	//?ï†³? : ??™î??½î³‡??
	[5] = [STATE_TRIPLEGUNSHOT, 3],
	//?ï¦???£æ’•
	[6] = [STATE_MCPICE, 1],
	//????Œîµ§??
	[7] = [STATE_SCORCHTACTICS, 3],
	//?î¦¸îŸ?§å•î¾?
	[8] = [STATE_DIRECTFEEDBACK, 3],
	//??å™¢???
	[9] = [STATE_DYNAMITEKICK, 1],
	//?ï†³? : ?????¾è…º
	[10] = [STATE_RAYTHEONCIRT, 0] //????é¤???
}

//?ï†³????è³ªâ€?
ASSAULTOVERCLOCKSKILLTABLE <- {
	[0] = [SKILL_SUPPRESS, 0, STATE_SUPPRESS],
	//?ï†³? : ??ï—
	[1] = [SKILL_BODYBUNKER, 0, STATE_BODYBUNKER],
	//?ï†³? : ??™î??½î³‡??
	[2] = [SKILL_DYNAMITEKICK, 0, STATE_DYNAMITEKICK],
	//?ï†³? : ?????¾è…º
	[3] = [SKILL_DEATHFIELD, 0, STATE_DEATHFIELD],
	//?ï†³? : ????î¸‚îœ˜??
	[4] = [SKILL_EQUALISMR, 0, STATE_EQUALISMR],
	//?ï†³? : ?¡ï????‡î¡†-MR
	[5] = [SKILL_BREACHINGDOWN, 0, STATE_BREACHINGDOWN] //?ï†³? : ?ç®¸ï¼‘???
}

function setSkillSoften_Assault(appendage) {
	local parentObj = appendage.getParent();
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}
	//??‡ï”·?????£ç¬†??
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/gunner/assault/at_sowalker/ap_at_sowalker.nut")) return;
	for (local i = 0; i < ASSAULTGROWSTATETABLE.len(); i++) {
		local growState = ASSAULTGROWSTATETABLE[i][0];
		local growSubState = ASSAULTGROWSTATETABLE[i][1];
		local state = obj.getState();
		local subState = obj.getSkillSubState();
		//print(growState == state);
		if (state == growState && subState == growSubState) {
			for (local j = 0; j < ASSAULTOVERCLOCKSKILLTABLE.len(); j++) {
				local skillIndex = ASSAULTOVERCLOCKSKILLTABLE[j][0];
				if (skillIndex == SKILL_BREACHINGDOWN) {
					local distance = obj.sq_GetIntData(SKILL_BREACHINGDOWN, 8);
					local haveAttackSign = getRangeObjectAttackSignBoss(obj, distance, "character/gunner/assault/breachingdown/ap_breachingdown.nut");
					if (!haveAttackSign) {
						continue;
					}
				}
				local skill_level = sq_GetSkillLevel(obj, skillIndex);
				if (skill_level > 0 && !sq_GetSkill(obj, skillIndex).isInCoolTime()) {
					obj.setSkillCommandEnable(skillIndex, true);
					if (obj.sq_IsEnterSkill(skillIndex) != -1) {
						local isUse = obj.sq_IsUseSkill(skillIndex);
						if (isUse) {
							RemoveAllFlash(obj);
							local subState = ASSAULTOVERCLOCKSKILLTABLE[j][1];
							local state = ASSAULTOVERCLOCKSKILLTABLE[j][2];
							obj.sq_IntVectClear();
							obj.sq_IntVectPush(subState);
							obj.sq_AddSetStatePacket(state, STATE_PRIORITY_USER, true);
							obj.flushSetStatePacket();
							continue;
						}
					}
				}
			}
		}
	}
}