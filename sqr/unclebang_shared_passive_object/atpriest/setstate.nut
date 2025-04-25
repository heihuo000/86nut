function setState_po_atpriest_shared(obj, state, datas) {
	if (!obj) return;
	local type = obj.getVar("type").get_vector(0);
	local id = obj.getVar("id").get_vector(0);
	local posX = sq_GetXPos(obj);
	local posY = sq_GetYPos(obj);
	local posZ = sq_GetZPos(obj);
	local chr = sq_ObjectToSQRCharacter(obj.getTopCharacter());
	switch (type) {
	case 3:
		switch (id) {
		case 0:
			switch (state) {
			case 10:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(10);
				sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atprayfororacle/prayfororacle_dragonstart_summoneffect.ani");
				ani.addLayerAnimation(-2, sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atprayfororacle/prayfororacle_startcircle_1.ani"), true);
				obj.setCurrentAnimation(ani);
				break;
			case 11:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(11);
				sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atprayfororacle/prayfororacle_dragonloop_shinea.ani");
				ani.addLayerAnimation(-2, sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atprayfororacle/prayfororacle_loopcircle_1.ani"), true);
				obj.setCurrentAnimation(ani);
				break;
			case 12:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(12);
				sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atprayfororacle/prayfororacle_dragonend_disappear.ani");
				obj.setCurrentAnimation(ani);
				break;
			}
			break;
		case 1:
			local UncleBangValue10 = obj.getVar("rosarybeadIndex").get_vector(0);
			switch (state) {
			case 10:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(10);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atrosarybead/create/createeffect.ani");
				obj.setCurrentAnimation(ani);
				break;
			case 11:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(11);
				local ani = null;
				local UncleBangValue13 = CUSTOM_ANI_ROSARYBEAD1 - 1;
				if(!chr){
					sq_SendDestroyPacketPassiveObject(obj);
					break;
				}
				if (chr.getWeaponSubType() == 1) {
					ani = chr.sq_GetCustomAni(UncleBangValue13 + UncleBangValue10);
				}
				else{
					ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atrosarybead/stand/stand_" + UncleBangValue10 + ".ani");
				}
				obj.setCurrentAnimation(ani);
				break;
			case 12:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(12);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atrosarybead/dummy.ani");
				obj.setCurrentAnimation(ani);
				break;
			}
			break;
		case 3:
			switch (state) {
			case 10:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(10);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/attalismanofoppression/attalismanofoppression_loop_talisman.ani");
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 1));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_TALISMANOFOPPRESSION, -1, 0, 1.0);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate);
				local UncleBangValue17 = 350;
				local UncleBangValue18 = 400;
				local UncleBangValue19 = (UncleBangValue17 * 800) / (UncleBangValue18);
				obj.getVar("talismanofoppressionMove").clear_vector();
				obj.getVar("talismanofoppressionMove").push_vector(posX);
				obj.getVar("talismanofoppressionMove").push_vector(UncleBangValue17);
				obj.getVar("talismanofoppressionMove").push_vector(UncleBangValue19);
				break;
			case 20:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(20);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/attalismanofoppression/attalismanofoppression_loop_talisman.ani");
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 1));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_TALISMANOFOPPRESSION, -1, 0, 1.0);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate);
				obj.sq_SetMoveParticle("Particle/3_sorceress/atrosarystrike/atrosarystrike1.ptl", 0.0, -45.0);
				obj.setCustomRotate(true, -sq_ToRadian(45.0));
				
				local UncleBangValue17 = 350;
				local UncleBangValue18 = 400;
				local UncleBangValue19 = (UncleBangValue17 * 800) / (UncleBangValue18);
				obj.getVar("talismanofoppressionMove").clear_vector();
				obj.getVar("talismanofoppressionMove").push_vector(posX);
				obj.getVar("talismanofoppressionMove").push_vector(UncleBangValue17);
				obj.getVar("talismanofoppressionMove").push_vector(UncleBangValue19);
				break;
			case 11:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(11);
				obj.sq_RemoveMoveParticle();
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/attalismanofoppression/attalismanofoppression_explosion_bomb.ani");
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 2));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_TALISMANOFOPPRESSION, -1, 0, 1.0);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate);
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_TALISMANOFOPPRESSION, 0));
				break;
			}
			break;
		case 5:
			switch (state) {
			case 10:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(10);
				local UncleBangValue22 = sq_GetVectorData(datas, 0);
				obj.getVar("effortsphereDamageBonus").clear_vector();
				obj.getVar("effortsphereDamageBonus").push_vector(UncleBangValue22);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/ateffortsphere/effortsphere_rosary.ani");
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 4));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_EFFORTSPHERE, -1, 0, 1.0);
				bonusRate = bonusRate * (1 + UncleBangValue22.tofloat() / 100);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate.tointeger());
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_EFFORTSPHERE, 0));
				local UncleBangValue17 = 400;
				local UncleBangValue18 = 600;
				local UncleBangValue19 = (UncleBangValue17 * 800) / (UncleBangValue18);
				obj.getVar("talismanofoppressionMove").clear_vector();
				obj.getVar("talismanofoppressionMove").push_vector(posX);
				obj.getVar("talismanofoppressionMove").push_vector(UncleBangValue17);
				obj.getVar("talismanofoppressionMove").push_vector(UncleBangValue19);
				break;
			case 11:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(11);
				local UncleBangValue22 = sq_GetVectorData(datas, 0);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/ateffortsphere/effortsphere_rosary.ani");
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 4));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_EFFORTSPHERE, -1, 0, 1.0);
				bonusRate = bonusRate * (1 + UncleBangValue22.tofloat() / 100);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate.tointeger());
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_EFFORTSPHERE, 0));
				sq_CreateParticle("passiveobject/unclebang_shared_passive_object/atpriest/particle/3_sorceress/attalismanofoppression/attalismanofoppression.ptl", obj, 0, 0, 30, false, 200, 0, 1);
				obj.sq_PlaySound("EFFORT_SPHERE_RETURN");
				break;
			}
			break;
		case 6:
			switch (state) {
			case 10:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(10);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/attalismanofsoulsteal/startsphere_14.ani");
				obj.setCurrentAnimation(ani);
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_TALISMANOFSOULSTEAL, 0));
				local UncleBangValue17 = 400;
				local UncleBangValue18 = 1000;
				local UncleBangValue19 = (UncleBangValue17 * 800) / (UncleBangValue18);
				obj.getVar("talismanofsoulstealMove").clear_vector();
				obj.getVar("talismanofsoulstealMove").push_vector(posX);
				obj.getVar("talismanofsoulstealMove").push_vector(UncleBangValue17);
				obj.getVar("talismanofsoulstealMove").push_vector(UncleBangValue19);
				break;
			case 11:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(11);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/attalismanofsoulsteal/sphereloop_08.ani");
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 5));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_TALISMANOFSOULSTEAL, -1, 1, 1.0);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate);
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_TALISMANOFSOULSTEAL, 0));
				sq_SetMyShake(obj, 3, sq_GetLevelData(chr, SKILL_TALISMANOFSOULSTEAL, 3, sq_GetSkillLevel(chr, SKILL_TALISMANOFSOULSTEAL)));
				break;
			case 12:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(12);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/attalismanofsoulsteal/sphereend_06.ani");
				obj.setCurrentAnimation(ani);
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_TALISMANOFSOULSTEAL, 0));
				break;
			}
			break;
		case 9:
			switch (state) {
			case 10:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(10);
				local UncleBangValue22 = sq_GetVectorData(datas, 0);
				obj.getVar("immobilitymagiclineDamageBonus").clear_vector();
				obj.getVar("immobilitymagiclineDamageBonus").push_vector(UncleBangValue22);
				local size = sq_GetIntData(chr, SKILL_IMMOBILITYMAGICLINE, 1);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atimmobilitymagicline/rosary/throw/atimmobilitymagicline_casting_eff_ball_eff_05.ani");
				obj.setCurrentAnimation(ani);
				sq_setCurrentAnimationSizeRate(obj, 1.0, size);
				sq_createPooledObject(obj, "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atimmobilitymagicline/circle/atimmobilitymagicline_magic_circle_start_00.ani", 0, 0, 0, size, 1.0, 0, 0, 1);
				break;
			case 11:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(11);
				local UncleBangValue22 = sq_GetVectorData(datas, 0);
				obj.getVar("immobilitymagiclineDamageBonus").clear_vector();
				obj.getVar("immobilitymagiclineDamageBonus").push_vector(UncleBangValue22);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atimmobilitymagicline/rosary/loop/atimmobilitymagicline_att_eff_rosary_eff.ani");
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 9));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_IMMOBILITYMAGICLINE, -1, 0, 1.0);
				bonusRate = bonusRate * (1 + UncleBangValue22.tofloat() / 100);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate.tointeger());
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_IMMOBILITYMAGICLINE, 1));
				obj.setTimeEvent(9, sq_GetIntData(chr, SKILL_IMMOBILITYMAGICLINE, 2), 0, true);
				break;
			case 12:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(12);
				local UncleBangValue22 = sq_GetVectorData(datas, 0);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atimmobilitymagicline/rosary/exp/atimmobilitymagicline_finish_eff.ani");
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 10));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_IMMOBILITYMAGICLINE, -1, 1, 1.0);
				bonusRate = bonusRate * (1 + UncleBangValue22.tofloat() / 100);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate.tointeger());
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_IMMOBILITYMAGICLINE, 1));
				sq_SetMyShake(obj, 10, 200);
				break;
			}
			break;
		case 10:
			switch (state) {
			case 10:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(10);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atritualfordragon/start/atritualfordragon_ready_dragon.ani");
				obj.setCurrentAnimation(ani);
				ani.setSpeedRate(100.0 * chr.getVar("ritualfordragonSpeed").getFloat(0));
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_RITUALFORDRAGON, 0));
				break;
			case 11:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(11);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atritualfordragon/loop/atritualfordragon_loop_dragon.ani");
				obj.setCurrentAnimation(ani);
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_RITUALFORDRAGON, 0));
				break;
			case 12:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(12);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atritualfordragon/finish/atritualfordragon_finish_a_dragon.ani");
				obj.setCurrentAnimation(ani);
				ani.setSpeedRate(100.0 * chr.getVar("ritualfordragonSpeed").getFloat(1));
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_RITUALFORDRAGON, 0));
				sq_SetMyShake(obj, 12, 200);
				break;
			}
			break;
		case 11:
			switch (state) {
			case 10:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(10);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/attalismanoftimebomb/talisman_loop_talisman.ani");
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 11));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_TALISMANOFTIMEBOMB, -1, 0, 1.0);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate);
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_TALISMANOFTIMEBOMB, 0));
				local UncleBangValue17 = 200;
				local UncleBangValue18 = 600;
				local UncleBangValue19 = (UncleBangValue17 * 800) / (UncleBangValue18);
				obj.getVar("talismanoftimebombMove").clear_vector();
				obj.getVar("talismanoftimebombMove").push_vector(posX);
				obj.getVar("talismanoftimebombMove").push_vector(UncleBangValue17);
				obj.getVar("talismanoftimebombMove").push_vector(UncleBangValue19);
				break;
			case 20:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(20);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/attalismanoftimebomb/talisman_loop_talisman.ani");
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 11));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_TALISMANOFTIMEBOMB, -1, 0, 1.0);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate);
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_TALISMANOFTIMEBOMB, 0));
				obj.sq_SetMoveParticle("Particle/3_sorceress/atrosarystrike/atrosarystrike1.ptl", 0.0, -45.0);
				obj.setCustomRotate(true, -sq_ToRadian(45.0));
				
				local UncleBangValue17 = 200;
				local UncleBangValue18 = 600;
				local UncleBangValue19 = (UncleBangValue17 * 800) / (UncleBangValue18);
				obj.getVar("talismanoftimebombMove").clear_vector();
				obj.getVar("talismanoftimebombMove").push_vector(posX);
				obj.getVar("talismanoftimebombMove").push_vector(UncleBangValue17);
				obj.getVar("talismanoftimebombMove").push_vector(UncleBangValue19);
				break;
			case 11:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(11);
				sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/attalismanoftimebomb/loop/talismanbomb_talismannormal.ani");
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 12));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_TALISMANOFTIMEBOMB, -1, 0, 1.0);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate);
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_TALISMANOFTIMEBOMB, 0));
				obj.setCurrentPos(posX, posY, 0);
				break;
			case 12:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(12);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/attalismanoftimebomb/finish/finish_explosion.ani");
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 13));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_TALISMANOFTIMEBOMB, -1, 3, 1.0);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate);
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_TALISMANOFTIMEBOMB, 0));
				sq_SetMyShake(obj, 12, 200);
				break;
			}
			break;
		case 12:
			switch (state) {
			case 10:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(10);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atrosarywildshot/first/atrosarywildshot_talismancall.ani");
				ani.addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atrosarywildshot/first/back_talisman09loopnormal.ani"), true);
				ani.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atrosarywildshot/first/front_talisman04loopnormal.ani"), true);
				obj.setCurrentAnimation(ani);
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_ROSARYWILDSHOT, 0));
				break;
			case 11:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(11);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atrosarywildshot/second/effect_firetalismanbye10.ani");
				ani.addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atrosarywildshot/second/back_talisman09loopnormal.ani"), true);
				ani.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atrosarywildshot/second/front_talisman04loopnormal.ani"), true);
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(chr, CUSTOM_ATTACK_INFO_ROSARYWILDSHOT));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_ROSARYWILDSHOT, -1, 1, 1.0);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate);
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_ROSARYWILDSHOT, 0));
				break;
			}
			break;
		case 13:
			switch (state) {
			case 10:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(10);
				local UncleBangValue22 = sq_GetVectorData(datas, 0);
				obj.getVar("bigrosaryDamageBonus").clear_vector();
				obj.getVar("bigrosaryDamageBonus").push_vector(UncleBangValue22);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atbigrosary/bigrosary_falling_bigbead01.ani");
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 14));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_BIGROSARY, -1, 0, 1.0);
				bonusRate = bonusRate * (1 + UncleBangValue22.tofloat() / 100);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate.tointeger());
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_BIGROSARY, 1));
				break;
			case 11:
				obj.getVar("state").clear_vector();
				obj.getVar("state").push_vector(11);
				local UncleBangValue22 = sq_GetVectorData(datas, 0);
				local ani = sq_CreateAnimation("", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atbigrosary/bigrosary_explosion_front02.ani");
				obj.setCurrentAnimation(ani);
				sq_SetCurrentAttackInfo(obj, sq_GetCustomAttackInfo(obj, 15));
				local bonusRate = chr.sq_GetBonusRateWithPassive(SKILL_BIGROSARY, -1, 1, 1.0);
				bonusRate = bonusRate * (1 + UncleBangValue22.tofloat() / 100);
				sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(obj), bonusRate.tointeger());
				sq_setCurrentAnimationSizeRate(obj, 1.0, sq_GetIntData(chr, SKILL_BIGROSARY, 1));
				if (obj.isMyControlObject()) {
					sq_SetMyShake(obj, 10, 200);
					sq_flashScreen(obj, 80, 80, 0, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
				}
				break;
			}
			break;
		}
		break;
	}

}