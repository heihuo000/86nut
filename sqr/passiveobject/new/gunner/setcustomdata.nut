
function setCustomData_po_gunner_assault(obj, receiveData) {
	if (!obj) return;

	sq_IntVectorClear(sq_GetGlobalIntVector()); 
	local skilltype = receiveData.readDword(); 

	obj.getVar("skill").clear_vector(); 
	obj.getVar("skill").push_vector(skilltype);
	switch (skilltype) 
	{
		case SKILL_AIMSHOOT:
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);

			local attackBonusRate = receiveData.readDword(); 
			local attackCount = receiveData.readDword(); 
			local isAtSowalker = receiveData.readBool(); 

			local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/aimshoot/aimshootdummy.ani");

			local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_AIMSHOOTDUMMY); 
			sq_SetCurrentAttackInfo(obj, attackInfo); 
			local curAttackInfo = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
			
			obj.setCurrentAnimation(ani);
			if (!isAtSowalker) {
				
				CreateAniRate_pooled(obj, "passiveobject/new_character/gunner/animation/aimshoot/shot_00.ani", 0, 0, 30, ENUM_DRAWLAYER_NORMAL, false, false);
			} else {
				sq_SetAttackBoundingBoxSizeRate(ani, 2.0, 1.0, 1.0); 
			}
			local delay = ani.getDelaySum(false);
			obj.setTimeEvent(0, delay / attackCount, attackCount, true);
			local chr = obj.getTopCharacter();
			chr = sq_ObjectToSQRCharacter(chr);
			if (!chr)
				break;
			chr.applyBasicAttackUp(sq_GetCurrentAttackInfo(obj),8);
			break;
		case SKILL_BURSTBOMB:
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);

			local attackBonusRate = receiveData.readDword(); 
			local attackRange = receiveData.readDword(); 
			local isAtSowalker = receiveData.readBool(); 
			obj.getVar("data").clear_vector();
			obj.getVar("data").push_vector(attackBonusRate);
			obj.getVar("data").push_vector(attackRange);
			obj.getVar("data").setBool(2, isAtSowalker);

			obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
			break;
		case SKILL_BODYBUNKER:
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);

			local duration = receiveData.readDword(); 
			local damageReduction = receiveData.readDword(); 
			local attackBonusRate = receiveData.readDword(); 
			local sizeRate = receiveData.readDword(); 
			obj.setEnableDamageBox(1);
			obj.getVar("data").clear_vector();
			obj.getVar("data").push_vector(duration);
			obj.getVar("data").push_vector(damageReduction);
			obj.getVar("data").push_vector(attackBonusRate);
			obj.getVar("data").push_vector(sizeRate);

			obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
			break;
		case SKILL_NEODYMIUMFUSEE:
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);
			local AttackCount = receiveData.readDword(); 
			local attackBonusRate = receiveData.readDword(); 
			local sizeRate = receiveData.readDword(); 
			local adsorption = receiveData.readDword(); 
			local metering = receiveData.readDword(); 
			obj.getVar("data").clear_vector();
			obj.getVar("data").push_vector(AttackCount);
			obj.getVar("data").push_vector(attackBonusRate);
			obj.getVar("data").push_vector(sizeRate);
			obj.getVar("data").push_vector(adsorption);
			obj.getVar("data").push_vector(metering);
			switch (subType) {
				case 0:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/neodymiumfusee/startbottom_17.ani");
					obj.setCurrentAnimation(ani);
					local direction = obj.getDirection(); 
					local xPos = sq_GetDistancePos(obj.getXPos(), direction, 200); 
					local yPos = obj.getYPos(); 
					local objectManager = obj.getObjectManager(); 
					for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++) {
						local object = objectManager.getCollisionObject(i); 
						if (object && object.isObjectType(OBJECTTYPE_ACTIVE) && obj.isEnemy(object) && object.isInDamagableState(obj) && sq_Abs(object.getXPos() - xPos) <= 200 && sq_Abs(object.getYPos() - yPos) <= adsorption) {
							local activeObj = sq_GetCNRDObjectToActiveObject(object); 
							
							if (!activeObj.isDead()) {
								local appendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, obj, SKILL_BODYBUNKER, false, "character/gunner/assault/neodymiumfusee/ap_neodymiumfusee.nut", true);
								local moveXpos = direction == ENUM_DIRECTION_LEFT ? obj.getXPos() - object.getXPos() : object.getXPos() - obj.getXPos();
								sq_MoveToAppendage(activeObj, obj, obj, moveXpos, 0, object.getZPos() - obj.getZPos(), 100, true, appendage); 
							}
						}
					}
					obj.setTimeEvent(0, ani.getDelaySum(false) / 2, 1, false);
					break;
				case 1:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/neodymiumfusee/explosion.ani");
					sizeRate = sizeRate.tofloat() / 100.0; 
					ani.setImageRateFromOriginal(sizeRate, sizeRate); 
					ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate); 
					sq_SetAttackBoundingBoxSizeRate(ani, sizeRate, sizeRate, sizeRate); 
					obj.setCurrentAnimation(ani);
					local xPos = obj.getXPos();
					local yPos = obj.getYPos();
					local zPos = obj.getZPos();
					local direction = obj.getDirection();
					local addXpos = 350 / AttackCount * metering;
					xPos = direction == ENUM_DIRECTION_LEFT ? xPos - addXpos : xPos + addXpos;
					if (metering == AttackCount + 1) {
						CreateAniRate(obj, "character/gunner/effect/animation/neodymiumfusee/startboom_00.ani", ENUM_DRAWLAYER_CLOSEBACK, xPos, yPos, zPos, sizeRate, false);
						CreateAniRate(obj, "character/gunner/effect/animation/neodymiumfusee/startboomfinish_01.ani", ENUM_DRAWLAYER_NORMAL, xPos, yPos, zPos, sizeRate, false);
						CreateAniRate(obj, "character/gunner/effect/animation/neodymiumfusee/startboomfinishbottom_00.ani", ENUM_DRAWLAYER_BOTTOM, xPos, yPos, zPos, sizeRate, false);
					} else {
						CreateAniRate(obj, "character/gunner/effect/animation/neodymiumfusee/startboom_00.ani", ENUM_DRAWLAYER_CLOSEBACK, xPos, yPos, zPos, sizeRate * 0.7, false);
						CreateAniRate(obj, "character/gunner/effect/animation/neodymiumfusee/startboomfinish_01.ani", ENUM_DRAWLAYER_NORMAL, xPos, yPos, zPos, sizeRate * 0.7, false);
						CreateAniRate(obj, "character/gunner/effect/animation/neodymiumfusee/startboomfinishbottom_00.ani", ENUM_DRAWLAYER_BOTTOM, xPos, yPos, zPos, sizeRate * 0.7, false);
					}

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_NEODYMIUMFUSEE);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					break;
			}
			break;
		case SKILL_TRIPLEGUNSHOT:
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);

			local attackBonusRate = receiveData.readDword(); 
			local isAtSowalker = receiveData.readBool(); 
			switch (subType) {
				case 0:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/triplegunshot/attack1/projectnovelpartsattack1front_00.ani");
					obj.setCurrentAnimation(ani);
					sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/triplegunshot/attack1/attack1smoke_00.ani", ENUM_DRAWLAYER_NORMAL, true);
					sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/triplegunshot/attack1/attack1bottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_TRIPLEGUNSHOTDUMMY1_NOVELPARTS);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					break;
				case 1:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/triplegunshot/attack2/projectnovelpartsattack2front_00.ani");
					obj.setCurrentAnimation(ani);
					sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/triplegunshot/attack2/attack2smoke_00.ani", ENUM_DRAWLAYER_NORMAL, true);
					sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/triplegunshot/attack2/attack2bottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_TRIPLEGUNSHOTDUMMY2_NOVELPARTS);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					break;
				case 2:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/triplegunshot/attack3/projectnovelpartsattack3front_00.ani");
					obj.setCurrentAnimation(ani);
					sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/triplegunshot/attack3/attack3smoke_00.ani", ENUM_DRAWLAYER_NORMAL, true);
					sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/triplegunshot/attack3/attack3bottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_TRIPLEGUNSHOTDUMMY3_NOVELPARTS);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					break;
			}
			if (isAtSowalker) {
				sq_setCurrentAxisPos(obj, 2, -80); 
			}
			break;
		case SKILL_MCPICE:
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);

			local shockWaveAttackBonusRate = receiveData.readDword(); 
			local AttackCount = receiveData.readDword(); 
			local explodeAttackBonusRate = receiveData.readDword(); 
			local sizeRate = receiveData.readDword(); 
			obj.getVar("data").clear_vector();
			obj.getVar("data").push_vector(shockWaveAttackBonusRate);
			obj.getVar("data").push_vector(AttackCount);
			obj.getVar("data").push_vector(explodeAttackBonusRate);
			obj.getVar("data").push_vector(sizeRate);

			switch (subType) {
				case 0:
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

					obj.setTimeEvent(0, ani.getDelaySum(false) / 2, 1, false);
					break;
				case 1:
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
		case SKILL_BREACHINGDOWN:
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);

			local attackBonusRate = receiveData.readDword(); 
			obj.getVar("data").clear_vector();
			obj.getVar("data").push_vector(attackBonusRate);
			switch (subType) {
				case 0:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/breachingdown/startboomtalisman_05.ani");
					obj.setCurrentAnimation(ani);

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_BREACHINGDOWNIMPACT);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					break;
				case 1:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/breachingdown/endboomfront_01.ani");
					obj.setCurrentAnimation(ani);

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_BREACHINGDOWNIMPACTTALISMAN);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					break;
			}
			break;
		case SKILL_SCORCHTACTICS:
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);

			local AttackCount = receiveData.readDword(); 
			local attackBonusRate = receiveData.readDword(); 
			obj.getVar("data").clear_vector();
			obj.getVar("data").push_vector(AttackCount);
			obj.getVar("data").push_vector(attackBonusRate);
			switch (subType) {
				case 0:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/scorchtactics/attack1_boom/attack1_boom_back_00.ani");
					obj.setCurrentAnimation(ani);

					sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/scorchtactics/attack1_boom/attack1_boom_bottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
					sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/scorchtactics/attack1_boom/attack1_boom_front_00.ani", ENUM_DRAWLAYER_NORMAL, true);

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_SCORCHTACTICSATTACK1);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					obj.setTimeEvent(0, sq_GetDelaySum(ani) / AttackCount, AttackCount, true);
					break;
				case 1:
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/scorchtactics/attack2_boom/attack2_boom_back_00.ani");
					obj.setCurrentAnimation(ani);

					sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/scorchtactics/attack2_boom/attack2_boom_bottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
					sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/scorchtactics/attack2_boom/attack2_boom_front_00.ani", ENUM_DRAWLAYER_NORMAL, true);

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_SCORCHTACTICSATTACK2);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					obj.setTimeEvent(1, ani.getDelaySum(0, 6) / AttackCount, AttackCount, true);
					break;
			}
			break;
		case SKILL_DIRECTFEEDBACK:
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);
			local attackBonusRate = receiveData.readDword(); 
			local group = receiveData.readDword(); 
			local uid = receiveData.readDword(); 
			local object = sq_GetObject(obj, group, uid); 
			local objectx = sq_GetXPos(object); 
			local objecty = sq_GetYPos(object); 
			local objectz = sq_GetZPos(object); 
			sq_SetCurrentPos(obj, objectx, objecty, objectz + sq_GetHeightObject(object) / 2);
			local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/directfeedback/directfeedbackdummy.ani");
			obj.setCurrentAnimation(ani);
			sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/directfeedback/hit/hitmain_00.ani", ENUM_DRAWLAYER_NORMAL, true);
			sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/directfeedback/hit/hitsub_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
			obj.setEnableAttackBox(0);
			local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_DIRECTFEEDBACK);
			sq_SetCurrentAttackInfo(obj, attackInfo); 
			local curAttackInfo = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
			break;
		case SKILL_DYNAMITEKICK:
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);
			local attackBonusRate = receiveData.readDword(); 
			local sizeRate = receiveData.readDword(); 

			local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/dynamitekick/dynamitekick_attack_front_00.ani");

			sizeRate = sizeRate.tofloat() / 100.0; 
			ani.setImageRateFromOriginal(sizeRate, sizeRate); 
			ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate); 
			sq_SetAttackBoundingBoxSizeRate(ani, sizeRate, sizeRate, sizeRate); 
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_DYNAMITEKICK);
			sq_SetCurrentAttackInfo(obj, attackInfo); 
			local curAttackInfo = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
			break;
		case SKILL_FORTRESSBLITZ:
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);
			local damageReduction = receiveData.readDword(); 
			local attackCount = receiveData.readDword(); 
			local attackBonusRate = receiveData.readDword(); 
			local hp = receiveData.readDword(); 
			local defensive = receiveData.readDword(); 
			local sizeRate = receiveData.readDword(); 
			local duration = receiveData.readDword(); 
			
			obj.setEnableDamageBox(1);
			
			obj.getVar("data").clear_vector();
			obj.getVar("data").push_vector(damageReduction);
			obj.getVar("data").push_vector(attackCount);
			obj.getVar("data").push_vector(attackBonusRate);
			obj.getVar("data").push_vector(hp);
			obj.getVar("data").push_vector(defensive);
			obj.getVar("data").push_vector(sizeRate);
			obj.getVar("data").push_vector(duration);

			obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
			obj.setTimeEvent(0, duration, 1, false);
			break;
		case SKILL_RAYTHEONCIRT:
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);
			local attackBonusRate = receiveData.readDword(); 
			local attackRate = receiveData.readDword(); 
			local sizeRate = receiveData.readDword(); 

			attackBonusRate = attackBonusRate.tofloat();

			local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/raytheoncirt/raytheoncirtprojectile_front11.ani");

			sizeRate = sizeRate.tofloat() / 100.0; 
			ani.setImageRateFromOriginal(sizeRate, sizeRate); 
			ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate); 
			sq_SetAttackBoundingBoxSizeRate(ani, sizeRate, sizeRate, sizeRate); 
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_RAYTHEONCIRTEXP);
			sq_SetCurrentAttackInfo(obj, attackInfo); 
			local curAttackInfo = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate.tointeger());
			break;
		case SKILL_DEATHFIELD:
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);
			switch (subType) {
				case 0:
					local grenadeAttackBonusRate = receiveData.readDword(); 
					local handGrenadeAttackCount = receiveData.readDword(); 
					local handGrenadeAttackBonusRate = receiveData.readDword(); 
					local shotgunAttackBonusRate = receiveData.readDword(); 
					obj.getVar("data").clear_vector();
					obj.getVar("data").push_vector(grenadeAttackBonusRate);
					obj.getVar("data").push_vector(handGrenadeAttackCount);
					obj.getVar("data").push_vector(handGrenadeAttackBonusRate);
					obj.getVar("data").push_vector(shotgunAttackBonusRate);
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/deathfield/attack/deathfieldst2front_00.ani");
					obj.setCurrentAnimation(ani);

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_DEATHFIELDSHOTGUN);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, handGrenadeAttackBonusRate);
					local delay = ani.getDelaySum(0, 15);
					obj.setTimeEvent(0, delay, 1, false);
					break;
				case 1:
					local attackBonusRate = receiveData.readDword(); 
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/deathfield/grenade/grenadedummy.ani");
					obj.setCurrentAnimation(ani);

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_DEATHFIELDGRENADE);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					break;
				case 2:
					local attackBonusRate = receiveData.readDword(); 
					local sizeRate = receiveData.readDword(); 
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/deathfield/finish/deathfieldst3front_00.ani");
					sizeRate = sizeRate.tofloat() / 100.0; 
					ani.setImageRateFromOriginal(sizeRate, sizeRate); 
					ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate); 
					sq_SetAttackBoundingBoxSizeRate(ani, sizeRate, sizeRate, sizeRate); 
					obj.setCurrentAnimation(ani);

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_DEATHFIELDSHOTGUN);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					break;
			}
			break;
		case SKILL_EQUALISMR:
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);
			local attackCount = receiveData.readDword(); 
			local attackBonusRate = receiveData.readDword(); 
			local delay = receiveData.readDword(); 

			local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/equalismr/equalismrpush.ani");
			sq_SetFrameDelayTime(ani, 0, delay);
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_EQUALISMRPUSH);
			sq_SetCurrentAttackInfo(obj, attackInfo); 
			local curAttackInfo = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
			obj.setTimeEvent(0, sq_GetDelaySum(ani) / attackCount, attackCount, true);
			break;
		case SKILL_AT_SOWALKER:
			
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);
			switch (subType) {
				case 0:
					local duration = receiveData.readDword(); 
					local searchEnemiesX = receiveData.readDword(); 
					local searchEnemiesY = receiveData.readDword(); 
					local searchEnemiesZ = receiveData.readDword(); 
					local attackInterval = receiveData.readDword(); 
					local attackBonusRate = receiveData.readDword(); 
					local attackCount = receiveData.readDword(); 
					obj.getVar("data").clear_vector();
					obj.getVar("data").push_vector(duration);
					obj.getVar("data").push_vector(searchEnemiesX);
					obj.getVar("data").push_vector(searchEnemiesY);
					obj.getVar("data").push_vector(searchEnemiesZ);
					obj.getVar("data").push_vector(attackInterval);
					obj.getVar("data").push_vector(attackBonusRate);
					obj.getVar("data").push_vector(attackCount);
					local chr = obj.getTopCharacter(); 
					
					obj.setMapFollowParent(chr); 
					
					obj.setMapFollowType(1); 
					obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
					break;
				case 1:
					
					local attackBonusRate = receiveData.readDword(); 
					local group = receiveData.readDword(); 
					local uid = receiveData.readDword(); 
					local object = sq_GetObject(obj, group, uid); 
					local objectx = sq_GetXPos(object); 
					local objecty = sq_GetYPos(object); 
					local objectz = sq_GetZPos(object); 
					sq_SetCurrentPos(obj, objectx, objecty, objectz + sq_GetHeightObject(object) / 2);
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/at_sowalker/aiattack/aiattackdummy.ani");
					obj.setCurrentAnimation(ani);

					createPooledObjEff(obj, "passiveobject/new_character/gunner/animation/at_sowalker/atsowalkernormalattackhiteffect_00.ani", objectx, objecty, objectz + sq_GetHeightObject(object) / 2, ENUM_DRAWLAYER_CONTACT, obj.getDirection());

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_AT_SOWALKERAIATTACK);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					break;
				case 2:
					
					local attackBonusRate = receiveData.readDword(); 
					obj.getVar("data").clear_vector();
					obj.getVar("data").push_vector(attackBonusRate);

					obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
					break;
				case 3:
					
					local attackBonusRate = receiveData.readDword(); 
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/at_sowalker/at_sowalkerjumpshockwave.ani");
					obj.setCurrentAnimation(ani);

					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_AT_SOWALKERNORMALATTACK);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					break;
			}
			break;
		case SKILL_ALTERATION:
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);
			switch (subType) {
				case 0:
					local attackCount = receiveData.readDword(); 
					local isUp = receiveData.readDword(); 
					local attackBonusRate = receiveData.readDword(); 
					switch (isUp) {
						case 0:
							local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/alteration/shotup_00.ani");
							sq_setCurrentAxisPos(obj, 0, obj.getDirection() == ENUM_DIRECTION_LEFT ? obj.getXPos() - 60 : obj.getXPos() + 60);
							sq_setCurrentAxisPos(obj, 2, obj.getZPos() + 110);
							obj.setCurrentAnimation(ani);
							local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_ALTERATIONBULLETUP);
							sq_SetCurrentAttackInfo(obj, attackInfo); 
							local curAttackInfo = sq_GetCurrentAttackInfo(obj);
							sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
							obj.setTimeEvent(0, sq_GetDelaySum(ani) / attackCount, attackCount, true);
							local chr = obj.getTopCharacter();
							chr = sq_ObjectToSQRCharacter(chr);
							if (!chr)
								break;
							chr.applyBasicAttackUp(sq_GetCurrentAttackInfo(obj),8);
							obj.setEnableAttackBox(0);
							break;
						case 1:
							local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/alteration/shotdown_00.ani");
							sq_setCurrentAxisPos(obj, 0, obj.getDirection() == ENUM_DIRECTION_LEFT ? obj.getXPos() - 60 : obj.getXPos() + 60);
							sq_setCurrentAxisPos(obj, 2, obj.getZPos() + 100);
							obj.setCurrentAnimation(ani);
							local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_ALTERATIONBULLETDOWN);
							sq_SetCurrentAttackInfo(obj, attackInfo); 
							local curAttackInfo = sq_GetCurrentAttackInfo(obj);
							sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
							obj.setTimeEvent(0, sq_GetDelaySum(ani) / attackCount, attackCount, true);
							local chr = obj.getTopCharacter();
							chr = sq_ObjectToSQRCharacter(chr);
							if (!chr)
								break;
							chr.applyBasicAttackUp(sq_GetCurrentAttackInfo(obj),8);
							obj.setEnableAttackBox(0);
							break;
					}
					break;
				case 1:
					local attackBonusRate = receiveData.readDword(); 
					local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/alteration/explosionfront_00.ani");
					obj.setCurrentAnimation(ani);
					sq_CreateDrawOnlyObject(obj, "passiveobject/new_character/gunner/animation/alteration/explosionbottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
					local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_ALTERATIONDIEEXP);
					sq_SetCurrentAttackInfo(obj, attackInfo); 
					local curAttackInfo = sq_GetCurrentAttackInfo(obj);
					sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
					break;
			}

			break;
		case SKILL_ARCDISCHARGE:
			local subType = receiveData.readDword(); 
			obj.getVar("subType").clear_vector();
			obj.getVar("subType").push_vector(subType);
			local attackBonusRate = receiveData.readDword(); 
			local ani = sq_CreateAnimation("", "passiveobject/new_character/gunner/animation/arcdischarge/arcdischarge_upeffect_01.ani");
			obj.setCurrentAnimation(ani);

			local attackInfo = sq_GetCustomAttackInfo(obj, PASSIVEOBJ_CUSTOM_ATTACK_ARCDISCHARGE);
			sq_SetCurrentAttackInfo(obj, attackInfo); 
			local curAttackInfo = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackBonusRate(curAttackInfo, attackBonusRate);
			break;
	}
}
