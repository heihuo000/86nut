function onSetState_AssaultAttack(obj, state, datas, isResetTimer) {
	if (!obj) return;
	local subState = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	local count = obj.sq_GetIntData(SKILL_ALTERATION, 2);
	obj.getVar("AssaultAttackData").clear_vector();
	obj.getVar("AssaultAttackData").push_vector(0);
	obj.getVar("AssaultAttackData").push_vector(count);
	switch (subState) {
		case 0:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_ASSAULTATTACKSTART);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_AIMSHOOTPUSH);
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
			break;
		case 1:
			for (local i = 1; i < 256; i++) {
				local skillTemp = sq_GetSkill(obj, i);
				if (skillTemp && !skillTemp.isInCoolTime()) {
					obj.setSkillCommandEnable(i, true);
				}
			}
			local isUp = obj.sq_GetVectorData(datas, 1);
			obj.getVar("AssaultAttackData").clear_vector();
			obj.getVar("AssaultAttackData").push_vector(isUp);
			obj.getVar("AssaultAttackData").push_vector(count);
			switch (isUp) {
				case 0:
					obj.sq_SetCurrentAnimation(CUSTOM_ANI_ASSAULTATTACKUP);
					break;
				case 1:
					obj.sq_SetCurrentAnimation(CUSTOM_ANI_ASSAULTATTACKDOWN);
					break;
			}
			obj.sq_PlaySound("AIMSHOOT");
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_ALTERATION, STATE_ASSAULTATTACK, 0, 1.0);
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(SKILL_ALTERATION);
			sq_BinaryWriteDword(0);
			sq_BinaryWriteDword(count);
			sq_BinaryWriteDword(isUp);
			sq_BinaryWriteDword(attackBonusRate);
			sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);

			local ani = obj.sq_GetCurrentAni();
			local delay = ani.getDelaySum(0, 8);
			obj.getVar().clear_timer_vector();
			obj.getVar().push_timer_vector();
			local t = obj.getVar().get_timer_vector(0);
			t.setParameter((delay - 200) / count, -1);
			t.resetInstant(0);

			break;
	}
}

function onProcCon_AssaultAttack(obj) {
	if (!obj) return;
	local subState = obj.getSkillSubState();
	
	EnableSoften(obj,3,19);
	SetSkillState(obj,3,19,[0,3]);
	EnableSoften(obj,47,8);
	SetSkillState(obj,47,8,[1,47]);
	EnableSoften(obj,6,21);
	SetSkillState(obj,6,21,[0]);
	EnableSoften(obj,14,20);
	SetSkillState(obj,14,20,[14]);
	EnableSoften(obj,4,20);
	SetSkillState(obj,4,20,[4]);
	EnableSoften(obj,40,26);
	SetSkillState(obj,40,26,[40,0,0]);
	EnableSoften(obj,7,23);
	SetSkillState(obj,7,23,[]);
	EnableSoften(obj,12,26);
	SetSkillState(obj,12,26,[12,0]);
	
	AssaultAttack_setCommandEnable(obj, 169, 6);
	AssaultAttack_setState(obj, 169, [1, 1, obj.sq_GetIntData(169, 0)], 6);
	setSkillAttackEnable_Assault(obj);
	if (subState == 1)
		createAssaultAttackObj(obj);
}

function onEndCurrentAni_AssaultAttack(obj) {
	if (!obj) return;
	local subState = obj.getSkillSubState();
	switch (subState) {
		case 0:
			local isVertical = sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL);
			if (isVertical) {
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(1);
				obj.sq_IntVectPush(1);
				obj.sq_AddSetStatePacket(STATE_ASSAULTATTACK, STATE_PRIORITY_USER, true);
			} else {
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(1);
				obj.sq_IntVectPush(0);
				obj.sq_AddSetStatePacket(STATE_ASSAULTATTACK, STATE_PRIORITY_USER, true);
			}
			break;
		case 1:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			break;
	}
}

ASSAULTNORMALATTACKCASTSKILLTABLE <- {
	[0] = [SKILL_SUPPRESS, 0, STATE_SUPPRESS],
	[1] = [SKILL_AIMSHOOT, 0, STATE_AIMSHOOT],
	[2] = [SKILL_BASHSTOCK, 0, STATE_BASHSTOCK],
	[3] = [SKILL_BURSTBOMB, 0, STATE_BURSTBOMB],
	[4] = [SKILL_BODYBUNKER, 0, STATE_BODYBUNKER],
	[5] = [SKILL_NEODYMIUMFUSEE, 0, STATE_NEODYMIUMFUSEE],
	[6] = [SKILL_TRIPLEGUNSHOT, 0, STATE_TRIPLEGUNSHOT],
	[7] = [SKILL_MCPICE, 0, STATE_MCPICE],
	[8] = [SKILL_SCORCHTACTICS, 0, STATE_SCORCHTACTICS],
	[9] = [SKILL_DIRECTFEEDBACK, 0, STATE_DIRECTFEEDBACK],
	[10] = [SKILL_DYNAMITEKICK, 0, STATE_DYNAMITEKICK],
	[11] = [SKILL_FORTRESSBLITZ, 0, STATE_FORTRESSBLITZ],
	[12] = [SKILL_AT_SOWALKER, 0, STATE_AT_SOWALKER],
	[13] = [SKILL_RAYTHEONCIRT, 0, STATE_RAYTHEONCIRT],
	[14] = [SKILL_DEATHFIELD, 0, STATE_DEATHFIELD],
	[15] = [SKILL_EQUALISMR, 0, STATE_EQUALISMR],
	[16] = [4, 0, 20]
}

function setSkillAttackEnable_Assault(obj) {
	for (local i = 0; i < ASSAULTNORMALATTACKCASTSKILLTABLE.len(); i++) {
		local skillIndex = ASSAULTNORMALATTACKCASTSKILLTABLE[i][0];
		local skill_level = sq_GetSkillLevel(obj, skillIndex);
		if (skill_level > 0 && !sq_GetSkill(obj, skillIndex).isInCoolTime()) {
			obj.setSkillCommandEnable(skillIndex, true);
			if (obj.sq_IsEnterSkill(skillIndex) != -1) {
				local isUse = obj.sq_IsUseSkill(skillIndex);
				if (isUse) {
					local subState = ASSAULTNORMALATTACKCASTSKILLTABLE[i][1];
					local state = ASSAULTNORMALATTACKCASTSKILLTABLE[i][2];
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

function createAssaultAttackObj(obj) {
	if (!obj) return;
	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local isUp = obj.getVar("AssaultAttackData").get_vector(0);
	local count = obj.getVar("AssaultAttackData").get_vector(1);
	if (frmIndex >= 3 && frmIndex < 10 && count > 0) {
		local t = obj.getVar().get_timer_vector(0);
		if (t) {
			if (t.isOnEvent(obj.sq_GetStateTimer()) == true) {
				local particleCreater = obj.getVar("assaultattack").GetparticleCreaterMap("assaultattack", "character/gunner/particle/assaultattack.ptl", obj);
				particleCreater.Restart(0);
				particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 0), obj.getYPos() - 1, obj.getZPos());
				sq_AddParticleObject(obj, particleCreater);
				obj.getVar("AssaultAttackData").set_vector(1,count - 1);
			}
		}
	}

	local Count = obj.getMyPassiveObjectCount(22004);
	for (local i = 0; i < Count; ++i) {
		local object = obj.getMyPassiveObject(22004, i);
		if (object) {
			
			switch (isUp) {
				case 0:
					sq_setCurrentAxisPos(object, 0, object.getDirection() == ENUM_DIRECTION_LEFT ? object.getXPos() - 60 : object.getXPos() + 60);
					sq_setCurrentAxisPos(object, 2, object.getZPos() + 110);
					setCurrentAnimationFromCutomIndex(object, 0);
					break;
				case 1:
					sq_setCurrentAxisPos(object, 0, object.getDirection() == ENUM_DIRECTION_LEFT ? object.getXPos() - 60 : object.getXPos() + 60);
					sq_setCurrentAxisPos(object, 2, object.getZPos() + 100);
					setCurrentAnimationFromCutomIndex(object, 1);
					break;
			}
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_ALTERATION, STATE_ASSAULTATTACK, 0, 1.0);
			local attackInfo = sq_GetCurrentAttackInfo(object);
			sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate + 10);
			obj.applyBasicAttackUp(sq_GetCurrentAttackInfo(object), 8);
		}
	}
}

function AssaultAttack_setCommandEnable(obj, skillIndex, skillState) {
	if (obj.sq_GetState() == skillState) return false;
	local currentMp = obj.getMp();
	local skill = sq_GetSkill(obj, skillIndex);
	local consumeMp = skill.getSpendMp(obj, -1);
	if (!skill.isInCoolTime() && currentMp > consumeMp) {
		obj.setSkillCommandEnable(skillIndex, true);
		return true;
	}
}

function AssaultAttack_setState(obj, skillIndex, Arr, skillState) {
	if (obj.sq_GetState() == skillState) return false;
	local currentMp = obj.getMp();
	local skill = sq_GetSkill(obj, skillIndex);
	local consumeMp = skill.getSpendMp(obj, -1);
	if (obj.sq_IsEnterSkill(skillIndex) != -1) {
		obj.sendSetMpPacket(currentMp - consumeMp);
		obj.startSkillCoolTime(skillIndex, 1, -1);
		obj.sq_IntVectClear();
		if (Arr.len() < 1) {
			obj.sq_AddSetStatePacket(skillState, STATE_PRIORITY_IGNORE_FORCE, true);
			return true;
		}
		else {
			foreach(skillSubState in Arr)
			obj.sq_IntVectPush(skillSubState);
			obj.sq_AddSetStatePacket(skillState, STATE_PRIORITY_IGNORE_FORCE, true);
			return true;
		}
	}
}
