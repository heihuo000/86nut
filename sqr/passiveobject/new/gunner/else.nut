
function onAttack_po_gunner_assault(obj, damager, boundingBox, isStuck) {
	if (!obj) return 0;
	local skilltype = obj.getVar("skill").get_vector(0);
	local subType = obj.getVar("subType").get_vector(0); 
	local state = obj.getVar("state").get_vector(0);
	switch (skilltype) {
		case SKILL_BURSTBOMB:
			switch (state) {
				case 10:
					obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
					break;
			}
			break;
	}
}
function onAfterAttack_po_gunner_assault(obj, damager, boundingBox, isStuck) {
	if (!obj) return 0;
	local skilltype = obj.getVar("skill").get_vector(0);
	local subType = obj.getVar("subType").get_vector(0); 
	local state = obj.getVar("state").get_vector(0);
	switch (skilltype) {
		case SKILL_BODYBUNKER:
			local chr = obj.getTopCharacter(); 
			if (!chr.getVar("BodyBunkerIsAttack").getBool(0) && !isStuck) {
				chr.getVar("ArcDischarge").setInt(0, chr.getVar("ArcDischarge").getInt(0) + 30);
				chr.getVar("BodyBunkerIsAttack").setBool(0, true);
			}
			break;
		case SKILL_BREACHINGDOWN:
			local chr = obj.getTopCharacter(); 
			if (!chr.getVar("BreachingDownIsAttack").getBool(0) && !isStuck) {
				chr.getVar("ArcDischarge").setInt(0, chr.getVar("ArcDischarge").getInt(0) + 30);
				chr.getVar("BreachingDownIsAttack").setBool(0, true);
			}
			break;
		case SKILL_DYNAMITEKICK:
			local chr = obj.getTopCharacter(); 
			if (!chr.getVar("DynamiteKickIsAttack").getBool(0) && !isStuck) {
				chr.getVar("ArcDischarge").setInt(0, chr.getVar("ArcDischarge").getInt(0) + 50);
				chr.getVar("DynamiteKickIsAttack").setBool(0, true);
			}
			break;
		case SKILL_DEATHFIELD:
			local chr = obj.getTopCharacter(); 
			if (!chr.getVar("DeathFieldIsAttack").getBool(0) && !isStuck) {
				chr.getVar("ArcDischarge").setInt(0, 100);
				chr.getVar("DeathFieldIsAttack").setBool(0, true);
			}
			break;
		case SKILL_EQUALISMR:
			local chr = obj.getTopCharacter(); 
			if (!chr.getVar("EqualisMRIsAttack").getBool(0) && !isStuck) {
				chr.getVar("ArcDischarge").setInt(0, 100);
				chr.getVar("EqualisMRIsAttack").setBool(0, true);
			}
			break;
	}
	return 0;
}
function onKeyFrameFlag_po_gunner_assault(obj, flagIndex) {
	if (!obj) return false;
	local skilltype = obj.getVar("skill").get_vector(0);
	local subType = obj.getVar("subType").get_vector(0);
	local state = obj.getVar("state").get_vector(0);
	switch (skilltype) {
		case SKILL_DEATHFIELD:
			local grenadeAttackBonusRate = obj.getVar("data").get_vector(0);
			local handGrenadeAttackCount = obj.getVar("data").get_vector(1);
			local handGrenadeAttackBonusRate = obj.getVar("data").get_vector(2);
			local shotgunAttackBonusRate = obj.getVar("data").get_vector(3);
			switch (flagIndex) {
				case 1001:
					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_DEATHFIELDFINISH);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, shotgunAttackBonusRate);
					obj.resetHitObjectList();
					break;
				case 1002:
				case 1003:
				case 1004:
					obj.resetHitObjectList();
					break;
			}
			break;
		case SKILL_AT_SOWALKER:
			switch (state) {
				case 12:
					switch (flagIndex) {
						case 1001:
							local chr = obj.getTopCharacter(); 
							local chrX = sq_GetXPos(chr);
							local chrY = sq_GetYPos(chr);
							local chrZ = sq_GetZPos(chr);
							local objX = sq_GetXPos(obj);
							local objY = sq_GetYPos(obj);
							local objZ = sq_GetZPos(obj);
							local distance = sq_GetDistance(chrX, chrY, objX, objY, true);

							if (distance <= 150 && objY == chrY) {
								obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
							}
							break;
					}
					break;
			}
			break;
	}
	return true;
}

function onTimeEvent_po_gunner_assault(obj, timeEventIndex, timeEventCount) {
	if (!obj) return false;
	local skilltype = obj.getVar("skill").get_vector(0);
	local subType = obj.getVar("subType").get_vector(0);
	local state = obj.getVar("state").get_vector(0);
	switch (skilltype) {
		case SKILL_AIMSHOOT:
			switch (timeEventIndex) {
				case 0:
					obj.resetHitObjectList();
					break;
			}
			break;
		case SKILL_BODYBUNKER:
			switch (timeEventIndex) {
				case 0:
					RemoveAllAni(obj);
					obj.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
					break;
			}
			break;
		case SKILL_NEODYMIUMFUSEE:
			switch (subType) {
				case 0:
					local AttackCount = obj.getVar("data").get_vector(0); 
					local attackBonusRate = obj.getVar("data").get_vector(1); 
					local sizeRate = obj.getVar("data").get_vector(2); 
					local adsorption = obj.getVar("data").get_vector(3); 
					local metering = obj.getVar("data").get_vector(4); 
					for (local i = 1; i <= AttackCount + 1; i++) {
						sq_BinaryStartWrite();
						sq_BinaryWriteDword(SKILL_NEODYMIUMFUSEE); 
						sq_BinaryWriteDword(1); 
						sq_BinaryWriteDword(AttackCount); 
						sq_BinaryWriteDword(attackBonusRate); 
						sq_BinaryWriteDword(sizeRate); 
						sq_BinaryWriteDword(adsorption); 
						sq_BinaryWriteDword(metering + i); 
						sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
					}
					break;
			}
			break;
		case SKILL_MCPICE:
			switch (subType) {
				case 0:
					local shockWaveAttackBonusRate = obj.getVar("data").get_vector(0);
					local AttackCount = obj.getVar("data").get_vector(1);
					local explodeAttackBonusRate = obj.getVar("data").get_vector(2);
					local sizeRate = obj.getVar("data").get_vector(3);
					for (local i = 0; i <= AttackCount; i++) {
						sq_BinaryStartWrite();
						sq_BinaryWriteDword(SKILL_MCPICE); 
						sq_BinaryWriteDword(1); 
						sq_BinaryWriteDword(shockWaveAttackBonusRate); 
						sq_BinaryWriteDword(AttackCount); 
						sq_BinaryWriteDword(explodeAttackBonusRate); 
						sq_BinaryWriteDword(sizeRate); 
						sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
					}
					break;
			}
			break;
		case SKILL_SCORCHTACTICS:
			switch (timeEventIndex) {
				case 0:
					obj.resetHitObjectList();
					break;
				case 1:
					obj.resetHitObjectList();
					break;
			}
			break;
		case SKILL_FORTRESSBLITZ:
			local attackCount = obj.getVar("data").get_vector(1);
			local sizeRate = obj.getVar("data").get_vector(5);
			sizeRate = sizeRate.tofloat() / 1000.0; 
			switch (timeEventIndex) {
				case 0:
					sq_SendDestroyPacketPassiveObject(obj);
					break;
				case 1:
					if (timeEventCount > attackCount / 2) {
						obj.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
					}
					obj.resetHitObjectList();
					break;
				case 2:
					if (timeEventCount > attackCount / 2) {
						RemoveAllAni(obj);
						CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/shield/shieldend_bottom_00.ani", 0, 0, 0, ENUM_DRAWLAYER_BOTTOM, sizeRate, false);
						CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/gunfire/gunfire_end_bottom_00.ani", 0, 0, 0, ENUM_DRAWLAYER_BOTTOM, sizeRate, false);
						CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/gunfire/gunfire_end_front_00.ani", 0, 0, 0, ENUM_DRAWLAYER_NORMAL, sizeRate, false);
						CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/gunfire/gunfire_end_front_destroy_00.ani", 0, 0, 0, ENUM_DRAWLAYER_NORMAL, sizeRate, false);
					}
					obj.resetHitObjectList();
					break;
			}
			break;
		case SKILL_DEATHFIELD:
			local grenadeAttackBonusRate = obj.getVar("data").get_vector(0);
			local handGrenadeAttackCount = obj.getVar("data").get_vector(1);
			local handGrenadeAttackBonusRate = obj.getVar("data").get_vector(2);
			local shotgunAttackBonusRate = obj.getVar("data").get_vector(3);
			switch (timeEventIndex) {
				case 0:
					sq_BinaryStartWrite();
					sq_BinaryWriteDword(SKILL_DEATHFIELD); 
					sq_BinaryWriteDword(1); 
					sq_BinaryWriteDword(grenadeAttackBonusRate); 
					sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
					local ani = sq_GetCurrentAnimation(obj);
					local delay = ani.getDelaySum(15, 21);
					obj.setTimeEvent(1, delay / handGrenadeAttackCount, handGrenadeAttackCount, false);
					break;
				case 1:
					obj.resetHitObjectList();
					break;
			}
			break;
		case SKILL_EQUALISMR:
			switch (timeEventIndex) {
				case 0:
					obj.resetHitObjectList();
					break;
			}
			break;
		case SKILL_AT_SOWALKER:
			switch (subType) {
				case 0:
					switch (timeEventIndex) {
						case 0:
							obj.getVar("isDestroy").setBool(0, true); 
							local chr = obj.getTopCharacter(); 
							local chr = sq_GetCNRDObjectToSQRCharacter(chr); 
							switch (state) {
								case 16:
									CNSquirrelAppendage.sq_RemoveAppendage(chr, "character/gunner/assault/at_sowalker/ap_at_sowalker.nut");
									chr.sq_IntVectClear();
									chr.sq_IntVectPush(2);
									chr.sq_AddSetStatePacket(STATE_AT_SOWALKER, STATE_PRIORITY_USER, true);
									
									break;
							}
							chr.startSkillCoolTime(SKILL_AT_SOWALKER, 1, chr.sq_GetIntData(SKILL_AT_SOWALKER, 52)); 
							obj.addSetStatePacket(15, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
							break;
						case 1:
							if (obj.getVar("onAttack").getBool(0) && !obj.getVar("isDestroy").getBool(0) && !obj.getVar("isRide").getBool(0)) {
								switch (state) {
									case 11:
									case 12:
									case 13:
									case 14:
										obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
										break;
								}
							}
							break;
						case 2:
							if (obj.getVar("onAttack").getBool(0) && !obj.getVar("isDestroy").getBool(0) && !obj.getVar("isRide").getBool(0)) {
								switch (state) {
									case 11:
									case 12:
									case 13:
									case 14:
										obj.addSetStatePacket(14, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
										break;
								}
							}
							break;
						case 3:
							if (!obj.getVar("isDestroy").getBool(0) && !obj.getVar("isRide").getBool(0)) {
								switch (state) {
									case 14:
										local searchEnemiesX = obj.getVar("data").get_vector(1);
										local searchEnemiesY = obj.getVar("data").get_vector(2);
										local searchEnemiesZ = obj.getVar("data").get_vector(3);
										local attackBonusRate = obj.getVar("data").get_vector(5);
										local count = getRangeObject(obj, searchEnemiesX, 0, 0, 0, searchEnemiesZ, searchEnemiesY, obj.getDirection());
										for (local i = 0; i < count; i++) {
											local object = obj.getVar("AllRangeEnemy").get_obj_vector(i);
											local activeObj = sq_GetCNRDObjectToActiveObject(object); 
											if (!activeObj || activeObj.isDead()) {
												obj.getVar("AllRangeEnemy").remove_obj_vector(object);
												continue;
											}
											local group = sq_GetGroup(object); 
											local uniqueId = sq_GetUniqueId(object); 
											sq_BinaryStartWrite();
											sq_BinaryWriteDword(SKILL_AT_SOWALKER); 
											sq_BinaryWriteDword(1); 
											sq_BinaryWriteDword(attackBonusRate); 
											sq_BinaryWriteDword(group); 
											sq_BinaryWriteDword(uniqueId); 
											sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
										}
										break;
								}
							}
							break;
					}
					break;
			}
			break;
		case SKILL_ALTERATION:
			//obj.resetHitObjectList();
			break;
	}
}

function getCustomHitEffectFileName_po_gunner_assault(obj, isAttachOnDamager) {
	if (!obj) return "";
}

function onChangeSkillEffect_po_gunner_assault(obj, skillIndex, reciveData) {
	if (!obj) return;
}

function destroy_po_gunner_assault(obj) {
	if (!obj) return;
	local skilltype = obj.getVar("skill").get_vector(0);
	local subType = obj.getVar("skill").get_vector(1);
}