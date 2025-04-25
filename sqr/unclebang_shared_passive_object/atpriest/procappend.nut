function procAppend_po_atpriest_shared(obj) {
	if (!obj) return;
	local type = obj.getVar("type").get_vector(0);
	local id = obj.getVar("id").get_vector(0);
	local posX = sq_GetXPos(obj);
	local posY = sq_GetYPos(obj);
	local posZ = sq_GetZPos(obj);
	local chr = sq_ObjectToSQRCharacter(obj.getTopCharacter());
	if(!chr) return;
	local chrMainState = obj.sq_GetParentState();
	switch (type) {
	case 3:
		switch (id) {
		case 0:
			local state = obj.getVar("state").get_vector(0);
			switch (state) {
			case 11:
				local currentAni = obj.getCurrentAnimation();
				local UncleBangValue10 = sq_GetCurrentTime(currentAni);
				if (UncleBangValue10 >= 1000) {
					obj.sendStateOnlyPacket(12);
					obj.flushSetStatePacket();
				}
				break;
			}
			break;
		case 1:
			local UncleBangValue11 = obj.getVar("rosarybeadIndex").get_vector(0);
			local state = obj.getVar("state").get_vector(0);
			if(!chr){
				sq_SendDestroyPacketPassiveObject(obj);
				break;
			}
			if(chr.getState() == STATE_DIE)
			{
				sq_SendDestroyPacketPassiveObject(obj);
				break;
			}
			switch (state) {
			case 11:
				local UncleBangValue13 = chr.sq_GetSkillLoad(234);
				local UncleBangValue14 = UncleBangValue13.getRemainLoadNumber();
				switch (UncleBangValue11) {
				case 1:
					if (UncleBangValue14 == 0) {
						obj.sendStateOnlyPacket(12);
						obj.flushSetStatePacket();
					}
					break;
				case 2:
					if (UncleBangValue14 == 1) {
						obj.sendStateOnlyPacket(12);
						obj.flushSetStatePacket();
					}
					break;
				case 3:
					if (UncleBangValue14 == 2) {
						obj.sendStateOnlyPacket(12);
						obj.flushSetStatePacket();
					}
					break;
				case 4:
					if (UncleBangValue14 == 3) {
						obj.sendStateOnlyPacket(12);
						obj.flushSetStatePacket();
					}
					break;
				case 5:
					if (UncleBangValue14 == 4) {
						obj.sendStateOnlyPacket(12);
						obj.flushSetStatePacket();
					}
					break;
				case 6:
					if (UncleBangValue14 == 5) {
						obj.sendStateOnlyPacket(12);
						obj.flushSetStatePacket();
					}
					break;
				}
				if (UncleBangValue11 > 0) {
					switch (chrMainState) {
					case STATE_ROSARYSTRIKE:
					case STATE_ROSARYOF108BEADS:
						obj.sendStateOnlyPacket(12);
						obj.flushSetStatePacket();
						break;
					case STATE_IMMOBILITYMAGICLINE:
					case STATE_BIGROSARY:
						if (chr.getSkillSubState() == 0) {
							obj.sendStateOnlyPacket(12);
							obj.flushSetStatePacket();
						}
						break;
					case STATE_EFFORTSPHERE:
					case STATE_LIFEDEPRIVEDISPOSITION:
					case STATE_ROSARYWILDSHOT:
						if (chr.getSkillSubState() == 1) {
							obj.sendStateOnlyPacket(12);
							obj.flushSetStatePacket();
						}
						break;
					}
				}
				break;
			case 12:
				local UncleBangValue13 = chr.sq_GetSkillLoad(234);
				local UncleBangValue14 = UncleBangValue13.getRemainLoadNumber();
				if (UncleBangValue11 == UncleBangValue14) {
					chr.sq_StartWrite();
					chr.sq_WriteDword(3);
					chr.sq_WriteDword(1);
					chr.sq_WriteDword(UncleBangValue11);
					sq_SendCreatePassiveObjectPacketPos(obj, 24338, 0, posX, posY, posZ);
					sq_SendDestroyPacketPassiveObject(obj);
				}
				break;
			}
			if (UncleBangValue11 > 0) {
				obj.setMapFollowParent(chr);
				obj.setMapFollowType(1);
				sq_SetCurrentDirection(obj, sq_GetDirection(chr));
				switch (UncleBangValue11) {
				case 1:
					obj.setCurrentPos(sq_GetDistancePos(sq_GetXPos(chr), obj.getDirection(), -40), sq_GetYPos(chr) - 1, sq_GetZPos(chr) + 90);
					break;
				case 2:
					obj.setCurrentPos(sq_GetDistancePos(sq_GetXPos(chr), obj.getDirection(), -60), sq_GetYPos(chr) - 1, sq_GetZPos(chr) + 80);
					break;
				case 3:
					obj.setCurrentPos(sq_GetDistancePos(sq_GetXPos(chr), obj.getDirection(), -65), sq_GetYPos(chr) - 1, sq_GetZPos(chr) + 60);
					break;
				case 4:
					obj.setCurrentPos(sq_GetDistancePos(sq_GetXPos(chr), obj.getDirection(), -25), sq_GetYPos(chr) - 1, sq_GetZPos(chr) + 70);
					break;
				case 5:
					obj.setCurrentPos(sq_GetDistancePos(sq_GetXPos(chr), obj.getDirection(), -30), sq_GetYPos(chr) - 1, sq_GetZPos(chr) + 50);
					break;
				case 6:
					obj.setCurrentPos(sq_GetDistancePos(sq_GetXPos(chr), obj.getDirection(), -50), sq_GetYPos(chr) - 1, sq_GetZPos(chr) + 40);
					break;
				}
			}
			break;
		case 2:
			if (posZ <= 0 && obj.isMyControlObject()) {
				sq_createPooledObject(obj, "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atrosarystrike/rosarystrikeend.ani", 0, 0, 0, 100, 1.0, 0, 0, 1);
				sq_SendDestroyPacketPassiveObject(obj);
			}
			break
		case 3:
			local state = obj.getVar("state").get_vector(0);
			switch (state) {
			case 10:
				local currentAni = obj.getCurrentAnimation();
				local UncleBangValue10 = sq_GetCurrentTime(currentAni);
				local UncleBangValue20 = obj.getVar("talismanofoppressionMove").get_vector(0);
				local UncleBangValue21 = obj.getVar("talismanofoppressionMove").get_vector(1);
				local UncleBangValue22 = obj.getVar("talismanofoppressionMove").get_vector(2);
				local UncleBangValue23 = sq_GetAccel(0, UncleBangValue21, UncleBangValue10, UncleBangValue22, false);
				local UncleBangValue24 = sq_GetDistancePos(UncleBangValue20, obj.getDirection(), UncleBangValue23);
				sq_setCurrentAxisPos(obj, 0, UncleBangValue24);
				if (UncleBangValue23 >= UncleBangValue21) {
					obj.sendStateOnlyPacket(11);
					obj.flushSetStatePacket();
				}
				break;
			case 20:
				if (posZ < 5) {
					obj.sq_RemoveMoveParticle();
					obj.setCustomRotate(true, sq_ToRadian(0.0));
					obj.sendStateOnlyPacket(11);
					obj.flushSetStatePacket();
				}
				break;
			}
			break;
		case 5:
			local state = obj.getVar("state").get_vector(0);
			switch (state) {
			case 10:
				local currentAni = obj.getCurrentAnimation();
				local UncleBangValue10 = sq_GetCurrentTime(currentAni);
				local UncleBangValue20 = obj.getVar("talismanofoppressionMove").get_vector(0);
				local UncleBangValue21 = obj.getVar("talismanofoppressionMove").get_vector(1);
				local UncleBangValue22 = obj.getVar("talismanofoppressionMove").get_vector(2);
				local UncleBangValue23 = sq_GetAccel(0, UncleBangValue21, UncleBangValue10, UncleBangValue22, true);
				local UncleBangValue24 = sq_GetDistancePos(UncleBangValue20, obj.getDirection(), UncleBangValue23);
				sq_setCurrentAxisPos(obj, 0, UncleBangValue24);
				local UncleBangValue33 = obj.getVar("effortsphereDamageBonus").get_vector(0);
				if (UncleBangValue23 >= UncleBangValue21) {
					sq_IntVectorClear(sq_GetGlobalIntVector());
					sq_IntVectorPush(sq_GetGlobalIntVector(), UncleBangValue33);
					obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
				}
				break;
			case 11:
				local currentAni = obj.getCurrentAnimation();
				local UncleBangValue10 = sq_GetCurrentTime(currentAni);
				local UncleBangValue23 = sq_GetAccel(posX, sq_GetXPos(chr), UncleBangValue10, 2000, false);
				local UncleBangValue37 = sq_GetAccel(posY, sq_GetYPos(chr), UncleBangValue10, 1000, false);
				sq_setCurrentAxisPos(obj, 0, UncleBangValue23);
				sq_setCurrentAxisPos(obj, 1, UncleBangValue37);
				if (sq_GetDistanceObject(obj, chr, false) <= 20 || UncleBangValue10 > 2000) {
					sq_SendDestroyPacketPassiveObject(obj);
				}
				break;
			}
			break;
		case 6:
			local state = obj.getVar("state").get_vector(0);
			switch (state) {
			case 10:
				local currentAni = obj.getCurrentAnimation();
				local UncleBangValue10 = sq_GetCurrentTime(currentAni);
				local UncleBangValue20 = obj.getVar("talismanofsoulstealMove").get_vector(0);
				local UncleBangValue21 = obj.getVar("talismanofsoulstealMove").get_vector(1);
				local UncleBangValue22 = obj.getVar("talismanofsoulstealMove").get_vector(2);
				local UncleBangValue23 = sq_GetAccel(0, UncleBangValue21, UncleBangValue10, UncleBangValue22, true);
				local UncleBangValue24 = sq_GetDistancePos(UncleBangValue20, obj.getDirection(), UncleBangValue23);
				sq_setCurrentAxisPos(obj, 0, UncleBangValue24);
				if (UncleBangValue23 >= UncleBangValue21) {
					obj.sendStateOnlyPacket(11);
					obj.flushSetStatePacket();
				}
				break;
			case 11:
				local currentAni = obj.getCurrentAnimation();
				local UncleBangValue10 = sq_GetCurrentTime(currentAni);
				if (UncleBangValue10 >= sq_GetLevelData(chr, SKILL_TALISMANOFSOULSTEAL, 3, sq_GetSkillLevel(chr, SKILL_TALISMANOFSOULSTEAL))) {
					obj.sendStateOnlyPacket(12);
					obj.flushSetStatePacket();
				}
				if (sq_isInterval(obj, sq_GetLevelData(chr, SKILL_TALISMANOFSOULSTEAL, 2, sq_GetSkillLevel(chr, SKILL_TALISMANOFSOULSTEAL)), "exorcismusInterval")) obj.resetHitObjectList();
				local UncleBangValue48 = sq_GetIntData(chr, SKILL_TALISMANOFSOULSTEAL, 1);
				local objMan = obj.getObjectManager();
				for (local i = 0; i < objMan.getCollisionObjectNumber(); i++) {
					local UncleBangValue50 = objMan.getCollisionObject(i);
					if (UncleBangValue50 && obj.isEnemy(UncleBangValue50) && UncleBangValue50.isObjectType(OBJECTTYPE_ACTIVE) && !sq_IsFixture(UncleBangValue50) && sq_GetDistance(posX, posY, sq_GetXPos(UncleBangValue50), sq_GetYPos(UncleBangValue50), true) <= UncleBangValue48) {
						local UncleBangValue23 = sq_GetAccel(sq_GetXPos(UncleBangValue50), posX, UncleBangValue10, 100000, true);
						local UncleBangValue37 = sq_GetAccel(sq_GetYPos(UncleBangValue50), posY, UncleBangValue10, 100000, true);
						sq_setCurrentAxisPos(UncleBangValue50, 0, UncleBangValue23);
						sq_setCurrentAxisPos(UncleBangValue50, 1, UncleBangValue37);
					}
				}
				break;
			}
			break;
		case 8:
			local currentAni = obj.getCurrentAnimation();
			local UncleBangValue54 = currentAni.getDelaySum(false);
			local UncleBangValue55 = UncleBangValue54 / sq_GetLevelData(chr, SKILL_ROSARYOF108BEADS, 2, sq_GetSkillLevel(chr, SKILL_ROSARYOF108BEADS));
			if (sq_isInterval(obj, UncleBangValue55, "rosaryof108beadsInterval")) obj.resetHitObjectList();
			break;
		case 10:
			local state = obj.getVar("state").get_vector(0);
			switch (state) {
			case 10:
				if (chrMainState == STATE_RITUALFORDRAGON && chr.getSkillSubState() == 1) {
					obj.sendStateOnlyPacket(11);
					obj.flushSetStatePacket();
				}
				break;
			case 11:
				if (chrMainState == STATE_RITUALFORDRAGON && chr.getSkillSubState() == 2) {
					obj.sendStateOnlyPacket(12);
					obj.flushSetStatePacket();
				}
				break;
			case 12:
				if (chrMainState == STATE_RITUALFORDRAGON && chr.getSkillSubState() == 3) {
					sq_SendDestroyPacketPassiveObject(obj);
				}
				break;
			}
			break;
		case 11:
			local state = obj.getVar("state").get_vector(0);
			switch (state) {
			case 10:
				local currentAni = obj.getCurrentAnimation();
				local currentTime = sq_GetCurrentTime(currentAni);
				local UncleBangValue20 = obj.getVar("talismanoftimebombMove").get_vector(0);
				local maxDistance = obj.getVar("talismanoftimebombMove").get_vector(1);
				local time = obj.getVar("talismanoftimebombMove").get_vector(2);
				local xPos = sq_GetAccel(0, maxDistance, currentTime, time, true);
				local UncleBangValue24 = sq_GetDistancePos(UncleBangValue20, obj.getDirection(), xPos);
				sq_setCurrentAxisPos(obj, 0, UncleBangValue24);
				if (xPos >= maxDistance) {
					obj.sendStateOnlyPacket(11);
					obj.flushSetStatePacket();
				}
				break;
			case 20:
				if (posZ < 5) {
					obj.sq_RemoveMoveParticle();
					obj.setCustomRotate(true, sq_ToRadian(0.0));
					obj.sendStateOnlyPacket(11);
					obj.flushSetStatePacket();
				}
				break;
			case 11:
				local currentAni = obj.getCurrentAnimation();
				local currentTime = sq_GetCurrentTime(currentAni);
				local UncleBangValue55 = sq_GetIntData(chr, SKILL_TALISMANOFTIMEBOMB, 4) / sq_GetIntData(chr, SKILL_TALISMANOFTIMEBOMB, 1);
				if (currentTime >= sq_GetIntData(chr, SKILL_TALISMANOFTIMEBOMB, 4) || chr.sq_IsEnterSkill(SKILL_TALISMANOFTIMEBOMB) != -1) {
					obj.sendStateOnlyPacket(12);
					obj.flushSetStatePacket();
				}
				if (sq_isInterval(obj, UncleBangValue55, "talismanoftimebombInterval")) {
					obj.resetHitObjectList();
					sq_createPooledObject(obj, "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/attalismanoftimebomb/exp/talismanbomb_explosion.ani", 0, 0, 0, sq_GetIntData(chr, SKILL_TALISMANOFTIMEBOMB, 0), 1.0, 0, 0, 0);
				}
				local objMan = obj.getObjectManager();
				for (local i = 0; i < objMan.getCollisionObjectNumber(); i++) {
					local UncleBangValue50 = objMan.getCollisionObject(i);
					local UncleBangValue74 = sq_GetDistanceObject(UncleBangValue50, obj, false);
					if (UncleBangValue50 && obj.isEnemy(UncleBangValue50) && UncleBangValue50.isObjectType(OBJECTTYPE_ACTIVE) && UncleBangValue74 <= 2 * sq_GetIntData(chr, SKILL_TALISMANOFTIMEBOMB, 0)) {
						if (!CNSquirrelAppendage.sq_IsAppendAppendage(UncleBangValue50, "character/atpriest/3_sorceress/talismanoftimebomb/ap_talismanoftimebomb.nut")) {
							local UncleBangValue75 = CNSquirrelAppendage.sq_AppendAppendage(UncleBangValue50, chr, SKILL_TALISMANOFTIMEBOMB, false, "character/atpriest/3_sorceress/talismanoftimebomb/ap_talismanoftimebomb.nut", true);
							if (UncleBangValue75) {
								UncleBangValue75.sq_SetValidTime(1000);
							}
						}
					}
				}
				break;
			}
			break;
		case 12:
			local state = obj.getVar("state").get_vector(0);
			switch (state) {
			case 11:
				local currentAni = obj.getCurrentAnimation();
				local UncleBangValue54 = currentAni.getDelaySum(false);
				local UncleBangValue55 = UncleBangValue54 / sq_GetIntData(chr, SKILL_ROSARYWILDSHOT, 1);
				if (sq_isInterval(obj, UncleBangValue55, "rosarywildshotInterval")) {
					obj.resetHitObjectList();
				}
				break;
			}
			break;
		case 13:
			local state = obj.getVar("state").get_vector(0);
			switch (state) {
			case 10:
				local currentAni = obj.getCurrentAnimation();
				local UncleBangValue54 = currentAni.getDelaySum(false);
				local UncleBangValue55 = UncleBangValue54 / sq_GetIntData(chr, SKILL_BIGROSARY, 0);
				if (sq_isInterval(obj, UncleBangValue55, "bigrosaryInterval")) {
					obj.resetHitObjectList();
				}
				break;
			}
			break;
		case 14:
			local UncleBangValue84 = obj.getVar("swallowskydrgonDistinguish").get_vector(0);
			if (UncleBangValue84 == 0) {
				local currentAni = obj.getCurrentAnimation();
				local UncleBangValue54 = currentAni.getDelaySum(false);
				local UncleBangValue55 = UncleBangValue54 / sq_GetIntData(chr, SKILL_SWALLOWSKYDRAGON, 1);
				if (sq_isInterval(obj, UncleBangValue55, "swallowskydrgonInterval")) {
					sq_SetMyShake(obj, 4, 100);
					obj.resetHitObjectList();
				}
			}
			break;
		}
		break;
	}

}  