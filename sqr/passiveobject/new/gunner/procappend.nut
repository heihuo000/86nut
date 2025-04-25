
function procAppend_po_gunner_assault(obj) {
	if (!obj) return;

	local skilltype = obj.getVar("skill").get_vector(0);
	local subType = obj.getVar("subType").get_vector(0);
	local state = obj.getVar("state").get_vector(0);
	switch (skilltype) {
		case SKILL_BURSTBOMB:
			switch (state) {
				case 10:
					if (sq_GetZPos(obj) <= 10) {
						obj.sq_RemoveMoveParticle();
						obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
					}
					break;
			}
			break;
		case SKILL_BODYBUNKER:
			local damageReduction = obj.getVar("data").get_vector(1);
			local sizeRate = obj.getVar("data").get_vector(3);
			sizeRate = sizeRate.tofloat() / 1000.0; 
			local ani = obj.getCurrentAnimation(); 
			local radiusSize = sq_GetAniRealImageSize(ani, 0);
			local upDown = radiusSize * 0.5;
			local around = 350 * sizeRate;
			local xPos = obj.getXPos();
			local yPos = obj.getYPos();
			local direction = obj.getDirection();

			local objectManager = obj.getObjectManager();
			for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++) {
				local object = objectManager.getCollisionObject(i);
				if (object && object.isObjectType(OBJECTTYPE_ACTIVE) && !obj.isEnemy(object)) {
					local deltaX = object.getXPos();
					local deltaY = object.getYPos();
					local activeObj = sq_GetCNRDObjectToActiveObject(object); 
					local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(activeObj, "character/gunner/assault/bodybunker/ap_bodybunker.nut");
					switch (direction) {
						case ENUM_DIRECTION_LEFT:
							if (deltaX > xPos && deltaX < xPos + around && deltaY > yPos - upDown && deltaY < yPos + upDown) {
								if (!isAppend) {
									local appendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, obj, SKILL_BODYBUNKER, false, "character/gunner/assault/bodybunker/ap_bodybunker.nut", true);
									appendage.getVar().setInt(0, damageReduction);
									sq_SetCustomDamageType(activeObj, true, 1);
									KeepMaxReduction(activeObj);
								}
							} else {
								if (isAppend) {
									CNSquirrelAppendage.sq_RemoveAppendage(activeObj, "character/gunner/assault/bodybunker/ap_bodybunker.nut");
									sq_SetCustomDamageType(activeObj, true, 0);
								}
							}
							break;
						case ENUM_DIRECTION_RIGHT:
							if (deltaX < xPos && deltaX > xPos - around && deltaY > yPos - upDown && deltaY < yPos + upDown) {
								if (!isAppend) {
									local appendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, obj, SKILL_BODYBUNKER, false, "character/gunner/assault/bodybunker/ap_bodybunker.nut", true);
									appendage.getVar().setInt(0, damageReduction);
									sq_SetCustomDamageType(activeObj, true, 1);
									KeepMaxReduction(activeObj);
								}
							} else {
								if (isAppend) {
									CNSquirrelAppendage.sq_RemoveAppendage(activeObj, "character/gunner/assault/bodybunker/ap_bodybunker.nut");
									sq_SetCustomDamageType(activeObj, true, 0);
								}
							}
							break;
					}
				}
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

			local ani = obj.getCurrentAnimation(); 
			local radiusSize = sq_GetAniRealImageSize(ani, 0);
			local yzDistance = radiusSize * sizeRate + radiusSize * 0.2;
			local distance = 450 * sizeRate + 350 * 0.2;
			local xPos = obj.getXPos();
			local yPos = obj.getYPos();
			local direction = obj.getDirection();

			local objectManager = obj.getObjectManager();
			for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++) {
				local object = objectManager.getCollisionObject(i);
				if (object && object.isObjectType(OBJECTTYPE_ACTIVE) && !obj.isEnemy(object)) {
					local deltaX = object.getXPos();
					local deltaY = object.getYPos();
					local activeObj = sq_GetCNRDObjectToActiveObject(object); 
					local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(activeObj, "character/gunner/assault/fortressblitz/ap_fortressblitz.nut");
					switch (direction) {
						case ENUM_DIRECTION_LEFT:
							if (deltaX > xPos && deltaX < xPos + distance && deltaY > yPos - yzDistance && deltaY < yPos + yzDistance) {
								if (!isAppend) {
									local appendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, obj, SKILL_BODYBUNKER, false, "character/gunner/assault/fortressblitz/ap_fortressblitz.nut", true);
									appendage.getVar().setInt(0, damageReduction);
									sq_SetCustomDamageType(activeObj, true, 1);
									KeepMaxReduction(activeObj);
								}
							} else {
								if (isAppend) {
									CNSquirrelAppendage.sq_RemoveAppendage(activeObj, "character/gunner/assault/fortressblitz/ap_fortressblitz.nut");
									sq_SetCustomDamageType(activeObj, true, 0);
								}
							}
							break;
						case ENUM_DIRECTION_RIGHT:
							if (deltaX < xPos && deltaX > xPos - distance && deltaY > yPos - yzDistance && deltaY < yPos + yzDistance) {
								if (!isAppend) {
									local appendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, obj, SKILL_BODYBUNKER, false, "character/gunner/assault/fortressblitz/ap_fortressblitz.nut", true);
									appendage.getVar().setInt(0, damageReduction);
									sq_SetCustomDamageType(activeObj, true, 1);
									KeepMaxReduction(activeObj);
								}
							} else {
								if (isAppend) {
									CNSquirrelAppendage.sq_RemoveAppendage(activeObj, "character/gunner/assault/fortressblitz/ap_fortressblitz.nut");
									sq_SetCustomDamageType(activeObj, true, 0);
								}
							}
							break;
					}
				}
			}
			break;
		case SKILL_AT_SOWALKER:
			switch (subType) {
				case 0:
					local searchEnemiesX = obj.getVar("data").get_vector(1);
					local searchEnemiesY = obj.getVar("data").get_vector(2);
					local searchEnemiesZ = obj.getVar("data").get_vector(3);

					local chr = obj.getTopCharacter(); 
					local chrX = sq_GetXPos(chr);
					local chrY = sq_GetYPos(chr);
					local chrZ = sq_GetZPos(chr);
					local objX = sq_GetXPos(obj);
					local objY = sq_GetYPos(obj);
					local objZ = sq_GetZPos(obj);
					local distance = sq_GetDistance(chrX, chrY, objX, objY, true);
					local count = getRangeObject(obj, searchEnemiesX, 0, 0, 0, searchEnemiesZ, searchEnemiesY, 5);
					if (!chr || chr.isDead()) {
						obj.getVar("isDestroy").setBool(0, true); 
						sq_SendDestroyPacketPassiveObject(obj); 
						return;
					}
					if (!obj.getVar("isDestroy").getBool(0)) {
						if (count > 0) {
							switch (state) {
								case 11:
								case 12:
								case 13:
									if (!obj.getVar("onAttack").getBool(0) && !obj.getVar("isRide").getBool(0)) {
										obj.addSetStatePacket(14, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
										obj.getVar("onAttack").setBool(0, true);
									}
									local object = obj.getVar("AllRangeEnemy").get_obj_vector(0);
									local activeObj = sq_GetCNRDObjectToActiveObject(object); 
									if (activeObj.isDead()) {
										obj.getVar("AllRangeEnemy").remove_obj_vector(object);
									}
									local objectx = sq_GetXPos(object); 
									if (objectx > objX) {
										obj.setDirection(ENUM_DIRECTION_RIGHT);
									} else {
										obj.setDirection(ENUM_DIRECTION_LEFT);
									}
									break;
								case 16:
									if (sq_IsEnd(obj.getCurrentAnimation())) {
										obj.getVar("onAttack").setBool(0, false);
										sq_setCurrentAxisPos(obj, 0, chrX);
										sq_setCurrentAxisPos(obj, 1, chrY);
										sq_setCurrentAxisPos(obj, 2, chrZ);
										obj.setDirection(sq_GetDirection(chr));
									}
									break;
							}
						} else {
							obj.getVar("onAttack").setBool(0, false);
							switch (state) {
								case 11:
									
									if ((distance > 150 || objY != chrY) && !obj.getVar("isRide").getBool(0)) {
										obj.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
									}
									break;
								case 12:
									
									if (chrX < objX) {
										obj.setDirection(ENUM_DIRECTION_LEFT);
									} else {
										obj.setDirection(ENUM_DIRECTION_RIGHT);
									}

									if (objY > chrY) {
										sq_setCurrentAxisPos(obj, 1, objY - 1);
									} else {
										sq_setCurrentAxisPos(obj, 1, objY + 1);
									}

									if (distance > 150 && distance <= 500) {
										local dstX = sq_GetDistancePos(objX, obj.getDirection(), 1); 
										sq_setCurrentAxisPos(obj, 0, dstX);

									} else if (distance > 500 && !obj.getVar("isRide").getBool(0)) {
										obj.addSetStatePacket(13, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
									}
									break;
								case 13:
									
									if (distance > 500) {
										local dstX = sq_GetDistancePos(objX, obj.getDirection(), 2); 
										sq_setCurrentAxisPos(obj, 0, dstX);
									} else {
										if (!obj.getVar("isRide").getBool(0)) {
											obj.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
										}
									}
									break;
								case 14:
									if (!obj.getVar("isRide").getBool(0)) {
										obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
									}
									break;
								case 16:
									if (sq_IsEnd(obj.getCurrentAnimation())) {
										sq_setCurrentAxisPos(obj, 0, chrX);
										sq_setCurrentAxisPos(obj, 1, chrY);
										sq_setCurrentAxisPos(obj, 2, chrZ);
										obj.setDirection(sq_GetDirection(chr));
									}
									break;
							}
						}
					}
					break;
				case 2:
					switch (state) {
						case 10:
							if (sq_GetZPos(obj) <= 10) {
								obj.sq_RemoveMoveParticle();
								obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
							}
							break;
					}
					break;
			}
			break;
	}
}
