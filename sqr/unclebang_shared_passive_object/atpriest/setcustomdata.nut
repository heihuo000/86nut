function setCustomData_po_atpriest_shared(obj, receiveData)

{
	if (!obj) return;
	local type = receiveData.readDword();
	local id = receiveData.readDword();
	local posX = sq_GetXPos(obj);
	local posY = sq_GetYPos(obj);
	local posZ = sq_GetZPos(obj);
	obj.getVar("type").clear_vector();
	obj.getVar("type").push_vector(type);
	obj.getVar("id").clear_vector();
	obj.getVar("id").push_vector(id);
	local chr = sq_ObjectToSQRCharacter(obj.getTopCharacter());
	switch (type) {
	case 3:
		switch (id) {
		case 0:
			obj.sendStateOnlyPacket(10);
			obj.flushSetStatePacket();
			break;
		case 1:
			local state = receiveData.readDword();
			if (state == 0) {
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atrosarybead/shooting/shooting_shot.ani");
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 0));
				local skill_level = sq_GetSkillLevel(chr, 174);
				local bonusRate = sq_GetLevelData(chr, 174, 0, skill_level) * 0.141;
				local attackInfo = sq_GetCurrentAttackInfo(obj);
				sq_SetCurrentAttackBonusRate(attackInfo, bonusRate.tointeger());
			}
			if (state > 0) {
				obj.getVar("rosarybeadIndex").clear_vector();
				obj.getVar("rosarybeadIndex").push_vector(state);
				obj.sendStateOnlyPacket(10);
				obj.flushSetStatePacket();
			}
			break;
		case 2:
			local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atrosarystrike/rosaryjumpshooting.ani");
			obj.setCurrentAnimation(ani);
			sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 0));
			local UncleBangValue11 = receiveData.readDword();
			local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_ROSARYSTRIKE, -1, 0, 1.0);
			bonusRate = bonusRate * (1 + UncleBangValue11.tofloat() / 100);
			sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate.tointeger());
			local UncleBangValue13 = receiveData.readDword();
			UncleBangValue13 = UncleBangValue13.tofloat();
			obj.sq_SetMoveParticle("Particle/3_sorceress/atrosarystrike/atrosarystrike.ptl", 0.0, -UncleBangValue13);
			obj.setCustomRotate(true, -sq_ToRadian(UncleBangValue13));
			break;
		case 3:
			local jumpflag = receiveData.readDword();
			if(jumpflag > 0)
			{
				obj.sendStateOnlyPacket(20);
				obj.flushSetStatePacket();
			}else{
				obj.sendStateOnlyPacket(10);
				obj.flushSetStatePacket();
			}
			break;
		case 4:
			local ani = sq_CreateAnimation("", EXORCISMUS_ANI_PATH[sq_getRandom(0, 5)]);
			obj.setCurrentAnimation(ani);
			sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 3));
			local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_EXORCISMUS, -1, 0, 1.0);
			sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate);
			obj.sq_SetMoveParticle("Particle/3_sorceress/exorcismus/exorcismus.ptl", 0.0, 0.0);
			break;
		case 5:
			local UncleBangValue11 = receiveData.readDword();
			sq_IntVectorClear(sq_GetGlobalIntVector());
			sq_IntVectorPush(sq_GetGlobalIntVector(), UncleBangValue11);
			obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
			break;
		case 6:
			obj.sendStateOnlyPacket(10);
			obj.flushSetStatePacket();
			break;
		case 7:
			local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atdragonwrath/atdragonwrath_finish_boom.ani");
			ani.addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atdragonwrath/atdragonwrath_dragon_down_dodge.ani"), true);
			ani.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atdragonwrath/atdragonwrath_dragon_up_paticle.ani"), true);
			obj.setCurrentAnimation(ani);
			sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 6));
			local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_DRAGONWRATH, -1, 0, 1.0);
			sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate);
			sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_DRAGONWRATH, 1));
			break;
		case 8:
			local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atrosaryof108beads/rosaryof108beads_newb_explosion.ani");
			obj.setCurrentAnimation(ani);
			sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 8));
			local UncleBangValue11 = receiveData.readDword();
			local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_ROSARYOF108BEADS, -1, 1, 1.0);
			bonusRate = bonusRate * (1 + UncleBangValue11.tofloat() / 100);
			sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate.tointeger());
			sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_ROSARYOF108BEADS, 0));
			break;
		case 9:
			local UncleBangValue11 = receiveData.readDword();
			sq_IntVectorClear(sq_GetGlobalIntVector());
			sq_IntVectorPush(sq_GetGlobalIntVector(), UncleBangValue11);
			obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
			break;
		case 10:
			obj.sendStateOnlyPacket(10);
			obj.flushSetStatePacket();
			break;
		case 11:
			local jumpflag = receiveData.readDword();
			if(jumpflag > 0)
			{
				obj.sendStateOnlyPacket(20);
				obj.flushSetStatePacket();
			}else{
				obj.sendStateOnlyPacket(10);
				obj.flushSetStatePacket();
			}
			break;
		case 12:
			obj.sendStateOnlyPacket(10);
			obj.flushSetStatePacket();
			break;
		case 13:
			local UncleBangValue11 = receiveData.readDword();
			sq_IntVectorClear(sq_GetGlobalIntVector());
			sq_IntVectorPush(sq_GetGlobalIntVector(), UncleBangValue11);
			obj.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
			break;
		case 14:
			local UncleBangValue24 = receiveData.readDword();
			obj.getVar("swallowskydrgonDistinguish").clear_vector();
			obj.getVar("swallowskydrgonDistinguish").push_vector(UncleBangValue24);
			if (UncleBangValue24 == 0) {
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atswallowskydragon/dragonbeam/dragonbeam_front_00.ani");
				ani.addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atswallowskydragon/dragonbeam/dragonbeam_back_00.ani"), true);
				obj.setCurrentAnimation(ani);
				local UncleBangValue26 = receiveData.readFloat();
				ani.setSpeedRate(100.0 * UncleBangValue26);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 0));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_SWALLOWSKYDRAGON, -1, 0, 1.0);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate);
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_SWALLOWSKYDRAGON, 0));
			}
			if (UncleBangValue24 == 1) {
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atswallowskydragon/explosion/explosion_front_02.ani");
				ani.addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atswallowskydragon/explosion/explosion_bottom_00.ani"), true);
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 15));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_SWALLOWSKYDRAGON, -1, 1, 1.0);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate);
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_SWALLOWSKYDRAGON, 0));
				sq_SetMyShake(obj, 10, 500);
			}
			break;
		}
		break;
	}

}