
function setState_po_gunner_assault(obj, state, datas) {
	if (!obj) return;

	sq_IntVectorClear(sq_GetGlobalIntVector()); 
	obj.getVar("state").clear_vector(); 
	obj.getVar("state").push_vector(state);

	local skilltype = obj.getVar("skill").get_vector(0);
	local subType = obj.getVar("subType").get_vector(0);
	switch (skilltype) {
		case SKILL_BURSTBOMB:
			local attackBonusRate = obj.getVar("data").get_vector(0);
			local attackRange = obj.getVar("data").get_vector(1);
			local isAtSowalker = obj.getVar("data").getBool(2);
			switch (state) {
				case 10:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/burstbomb/shot.ani");
					obj.setCurrentAnimation(ani);
					if (isAtSowalker) {
						obj.sq_SetMoveParticle("Particle/at_sowalkerbullet.ptl", 0.0, -20.0);
						sq_SetfRotateAngle(ani, sq_ToRadian(-20.0));
					} else {
						obj.sq_SetMoveParticle("particle/burstbomb.ptl", 0.0, 0.0);
					}
					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_BURSTBOMB); 
					sq_SetCurrentAttackInfo(obj, attackInfo); 

					break;
				case 11:
					obj.sq_RemoveMoveParticle();
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/burstbomb/boom_11.ani");
					local sizeRate = attackRange.tofloat() / 100.0; 
					ani.setImageRateFromOriginal(sizeRate, sizeRate); 
					ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate); 
					sq_SetAttackBoundingBoxSizeRate(ani, sizeRate, sizeRate, sizeRate); 
					obj.setCurrentAnimation(ani);
					sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/burstbomb/boom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_BURSTBOMBEXPLOSION);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					break;
			}
			break;
		case SKILL_BODYBUNKER:
			local duration = obj.getVar("data").get_vector(0);
			local damageReduction = obj.getVar("data").get_vector(1);
			local attackBonusRate = obj.getVar("data").get_vector(2);
			local sizeRate = obj.getVar("data").get_vector(3);
			local xPos = obj.getXPos();
			local yPos = obj.getYPos();
			local zPos = obj.getZPos();
			local direction = obj.getDirection();
			switch (state) {
				case 10:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/BodyBunker/StartShield_00.ani");
					sizeRate = sizeRate.tofloat() / 1000.0; 
					ani.setImageRateFromOriginal(sizeRate, sizeRate); 
					ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate); 
					sq_SetAttackBoundingBoxSizeRate(ani, sizeRate, sizeRate, sizeRate); 
					obj.setCurrentAnimation(ani);

					CreateAniRate(obj, "character/gunner/effect/animation/bodybunker/gridstart_00.ani", ENUM_DRAWLAYER_CLOSEBACK, xPos, yPos, zPos, sizeRate, false);
					CreateAniRate(obj, "character/gunner/effect/animation/bodybunker/bottomstart_00.ani", ENUM_DRAWLAYER_BOTTOM, xPos, yPos, zPos, sizeRate, false);
					local xPos2 = direction == ENUM_DIRECTION_LEFT ? xPos + 60 : xPos - 60;
					CreateAniRate(obj, "character/gunner/effect/animation/bodybunker/boomback_01.ani", ENUM_DRAWLAYER_BOTTOM, xPos2, yPos, zPos, sizeRate, false);
					CreateAniRate(obj, "character/gunner/effect/animation/bodybunker/boomfront_00.ani", ENUM_DRAWLAYER_NORMAL, xPos2, yPos, zPos, sizeRate, false);

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_BODYBUNKER);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					break;
				case 11:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/BodyBunker/Shield_00.ani");
					sizeRate = sizeRate.tofloat() / 1000.0; 
					ani.setImageRateFromOriginal(sizeRate, sizeRate); 
					ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate); 
					obj.setCurrentAnimation(ani);

					local gridloopObj = CreateAniRate(obj, "character/gunner/effect/animation/bodybunker/gridloop_00.ani", ENUM_DRAWLAYER_CLOSEBACK, xPos, yPos, zPos, sizeRate, false);
					local bottomloopObj = CreateAniRate(obj, "character/gunner/effect/animation/bodybunker/bottomloop_00.ani", ENUM_DRAWLAYER_BOTTOM, xPos, yPos, zPos, sizeRate, false);

					obj.getVar("aniobj").clear_obj_vector();
					obj.getVar("aniobj").push_obj_vector(gridloopObj);
					obj.getVar("aniobj").push_obj_vector(bottomloopObj);

					obj.setTimeEvent(0, duration, 1, false);
					break;
				case 12:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/BodyBunker/LightEnd_00.ani");
					obj.setCurrentAnimation(ani);

					sizeRate = sizeRate.tofloat() / 1000.0; 
					ani.setImageRateFromOriginal(sizeRate, sizeRate); 
					ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate); 

					CreateAniRate(obj, "character/gunner/effect/animation/bodybunker/gridend_00.ani", ENUM_DRAWLAYER_CLOSEBACK, xPos, yPos, zPos, sizeRate, false);
					CreateAniRate(obj, "character/gunner/effect/animation/bodybunker/bottomend_00.ani", ENUM_DRAWLAYER_BOTTOM, xPos, yPos, zPos, sizeRate, false);
					break;
			}
			break;
		case SKILL_MCPICE:
			local shockWaveAttackBonusRate = obj.getVar("data").get_vector(0);
			local AttackCount = obj.getVar("data").get_vector(1);
			local explodeAttackBonusRate = obj.getVar("data").get_vector(2);
			local sizeRate = obj.getVar("data").get_vector(3);
			switch (state) {
				case 10:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/mcpice/attack/attack_body.ani");
					sizeRate = sizeRate.tofloat() / 100.0; 
					ani.setImageRateFromOriginal(sizeRate, sizeRate); 
					ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate); 
					sq_SetAttackBoundingBoxSizeRate(ani, sizeRate, sizeRate, sizeRate); 
					obj.setCurrentAnimation(ani);

					sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/mcpice/attack/attack_bottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
					sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/mcpice/attack/attack_front_00.ani", ENUM_DRAWLAYER_NORMAL, true);

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_MCPICEATTACK);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, shockWaveAttackBonusRate);
					break;
				case 11:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/mcpice/explosion/explosion_back_00.ani");
					sizeRate = sizeRate.tofloat() / 100.0; 
					ani.setImageRateFromOriginal(sizeRate, sizeRate); 
					ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate); 
					sq_SetAttackBoundingBoxSizeRate(ani, sizeRate, sizeRate, sizeRate); 
					obj.setCurrentAnimation(ani);
					sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/mcpice/explosion/explosion_bottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
					sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/mcpice/explosion/explosion_front_00.ani", ENUM_DRAWLAYER_NORMAL, true);

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_MCPICEEXPLOSION);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, explodeAttackBonusRate);
					break;
			}
			break;
		case SKILL_FORTRESSBLITZ:
			local damageReduction = obj.getVar("data").get_vector(0);
			local attackCount = obj.getVar("data").get_vector(1);
			local attackBonusRate = obj.getVar("data").get_vector(2);
			local hp = obj.getVar("data").get_vector(3);
			local defensive = obj.getVar("data").get_vector(4);
			local sizeRate = obj.getVar("data").get_vector(5);
			local duration = obj.getVar("data").get_vector(6);
			sizeRate = sizeRate.tofloat() / 1000.0; 
			switch (state) {
				case 10:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/fortressblitz/shieldstart_shieldbody_00.ani");

					ani.setImageRateFromOriginal(sizeRate, sizeRate); 
					ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate); 
					sq_SetAttackBoundingBoxSizeRate(ani, sizeRate, sizeRate, sizeRate); 
					obj.setCurrentAnimation(ani);

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_FORTRESSBLITZPUSH);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					break;
				case 11:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/fortressblitz/shieldloop_shieldbody_00.ani");
					ani.setImageRateFromOriginal(sizeRate, sizeRate); 
					ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate); 
					sq_SetAttackBoundingBoxSizeRate(ani, sizeRate, sizeRate, sizeRate); 
					obj.setCurrentAnimation(ani);

					local shieldBottomObj = CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/shield/shieldloop_bottom_00.ani", 0, 0, 0, ENUM_DRAWLAYER_BOTTOM, sizeRate, false);
					local fireLineBack = CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/gunfire/fireline_back_00.ani", 0, 0, 0, ENUM_DRAWLAYER_NORMAL, sizeRate, false);
					local fireLineFront = CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/gunfire/fireline_front_00.ani", 0, 0, 0, ENUM_DRAWLAYER_NORMAL, sizeRate, false);
					local gunFireLoopBottom = CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/gunfire/gunfire_loop_bottom_00.ani", 0, 0, 0, ENUM_DRAWLAYER_BOTTOM, sizeRate, false);
					local gunFireLoopFront = CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/gunfire/gunfire_loop_front_01.ani", 0, 0, 0, ENUM_DRAWLAYER_NORMAL, sizeRate, false);
					obj.getVar("aniobj").clear_obj_vector();
					obj.getVar("aniobj").push_obj_vector(shieldBottomObj);
					obj.getVar("aniobj").push_obj_vector(fireLineBack);
					obj.getVar("aniobj").push_obj_vector(fireLineFront);
					obj.getVar("aniobj").push_obj_vector(gunFireLoopBottom);
					obj.getVar("aniobj").push_obj_vector(gunFireLoopFront);

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_FORTRESSBLITZ);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);

					obj.setTimeEvent(1, sq_GetDelaySum(ani) / (attackCount / 2 + 1), attackCount / 2 + 1, false);
					break;
				case 12:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/fortressblitz/shieldend_shieldbody_00.ani");
					ani.setImageRateFromOriginal(sizeRate, sizeRate); 
					ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate); 
					sq_SetAttackBoundingBoxSizeRate(ani, sizeRate, sizeRate, sizeRate); 
					obj.setCurrentAnimation(ani);

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_FORTRESSBLITZ);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate); 

					obj.setTimeEvent(2, (sq_GetDelaySum(ani) / 2) / (attackCount / 2 + 1), attackCount / 2 + 1, false);
					break;
				case 13:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/fortressblitz/shieldexplosion_front_00.ani");
					ani.setImageRateFromOriginal(sizeRate, sizeRate); 
					ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate); 
					sq_SetAttackBoundingBoxSizeRate(ani, sizeRate, sizeRate, sizeRate); 
					obj.setCurrentAnimation(ani);

					CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/shield/shielddestroystartback_00.ani", 0, 0, 0, ENUM_DRAWLAYER_BOTTOM, sizeRate, false);
					CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/shield/shielddestroystartfront_00.ani", 0, 0, 0, ENUM_DRAWLAYER_NORMAL, sizeRate, false);
					CreateAniRate_pooled(obj, "character/gunner/effect/animation/fortressblitz/shield/shieldexplosion_bottom_00.ani", 0, 0, 0, ENUM_DRAWLAYER_BOTTOM, sizeRate, false);

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_FORTRESSBLITZEXPLOSION);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					break;
			}
			break;
		case SKILL_AT_SOWALKER:
			switch (subType) {
				case 0:
					local duration = obj.getVar("data").get_vector(0);
					local searchEnemiesX = obj.getVar("data").get_vector(1);
					local searchEnemiesY = obj.getVar("data").get_vector(2);
					local searchEnemiesZ = obj.getVar("data").get_vector(3);
					local attackInterval = obj.getVar("data").get_vector(4);
					local attackBonusRate = obj.getVar("data").get_vector(5);
					local attackCount = obj.getVar("data").get_vector(6);
					switch (state) {
						case 10:
							
							local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/at_sowalker/atsowalkerstartwalkerbody_00.ani");
							obj.setCurrentAnimation(ani);

							sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/at_sowalker/atsowalkerstartbottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
							sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/at_sowalker/atsowalkerstartwalkersmokeback_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
							sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/at_sowalker/atsowalkerstartwalkersmokefront_00.ani", ENUM_DRAWLAYER_NORMAL, true);
							local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_AT_SOWALKERNORMALATTACK);
							sq_SetCurrentAttackInfo(obj, attackInfo); 
							local curAttackInfo = sq_GetCurrentAttackInfo(obj);
							sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
							obj.getVar("isDestroy").setBool(0, false);
							obj.getVar("isRide").setBool(0, false);
							break;
						case 11:
							
							local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/at_sowalker/atsowalkerbstand_00.ani");
							obj.setCurrentAnimation(ani);
							break;
						case 12:
							
							local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/at_sowalker/atsowalkerbwalk_00.ani");
							obj.setCurrentAnimation(ani);
							break;
						case 13:
							
							local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/at_sowalker/atsowalkerbdash_00.ani");
							obj.setCurrentAnimation(ani);
							break;
						case 14:
							
							local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/at_sowalker/atsowalkerbnormalattack_00.ani");
							obj.setCurrentAnimation(ani);

							obj.setTimeEvent(3, sq_GetDelaySum(ani) / attackCount, attackCount, true); 
							obj.setTimeEvent(1, sq_GetDelaySum(ani), 1, false); 
							obj.setTimeEvent(2, sq_GetDelaySum(ani) + attackInterval, 1, false); 
							break;
						case 15:
							
							local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/at_sowalker/atsowalkerend_03.ani");
							obj.setCurrentAnimation(ani);
							break;
						case 16:
							
							local chr = obj.getTopCharacter(); 
							sq_SetCurrentDirection(obj, sq_GetOppositeDirection(chr.getDirection()));
							local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/at_sowalker/talisman/atsowalkerbtalismanbody_00.ani");
							sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/at_sowalker/talisman/atsowalkerbtalismansmoke_00.ani", ENUM_DRAWLAYER_NORMAL, true);
							sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/at_sowalker/atsowalkeronsmoke_04.ani", ENUM_DRAWLAYER_NORMAL, true);
							obj.setCurrentAnimation(ani);
							break;
					}
					break;
				case 2:
					switch (state) {
						case 10:
							local attackBonusRate = obj.getVar("data").get_vector(0);
							local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/at_sowalker/atsowalkeranormalattackbullet_00.ani");
							obj.setCurrentAnimation(ani);
							obj.sq_SetMoveParticle("Particle/at_sowalkerbullet.ptl", 0.0, -25.0);
							sq_SetfRotateAngle(ani, sq_ToRadian(-25.0));
							local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_AT_SOWALKERNORMALATTACK);
							sq_SetCurrentAttackInfo(obj, attackInfo); 
							local curAttackInfo = sq_GetCurrentAttackInfo(obj);
							sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
							break;
						case 11:
							local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/at_sowalker/atsowalkeranormalattacksmoke_00.ani");
							obj.setCurrentAnimation(ani);
							break;
					}
					break;
			}
			break;
	}
}
