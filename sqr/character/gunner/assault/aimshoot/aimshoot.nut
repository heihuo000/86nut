function checkExecutableSkill_AimShoot(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_AIMSHOOT);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_AIMSHOOT, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_AimShoot(obj) {
	local state = obj.sq_GetState();
	switch (state) {
	case STATE_STAND:
	case STATE_ATTACK:
	case STATE_DASH:
		return true;
	}
	return false;
}

function onSetState_AimShoot(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	switch (subState) {
	case 0:
		if (isAtSOWalkerOnBody(obj)) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(2);
			obj.sq_AddSetStatePacket(STATE_AIMSHOOT, STATE_PRIORITY_USER, true);
			obj.flushSetStatePacket();
			return;
		}
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_AIMSHOOTCAST);
		obj.sq_PlaySound("R_GN_AIM_SHOOT");
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_AIMSHOOTPUSH);
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttacknBackForce(attackInfo, obj.sq_GetIntData(SKILL_AIMSHOOT, 3)); 
		break;
	case 1:
		obj.sq_PlaySound("AIMSHOOT");
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_AIMSHOOTSTART);
		break;
	case 2:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSOWALKERAAIMSHOOT);
		obj.sq_PlaySound("AIMSHOOT");
		CreateAniRate_pooled(obj, "character/gunner/effect/animation/at_sowalker/atsowalkeraaimshootbacksmoke_00.ani", 0, 0, 0, ENUM_DRAWLAYER_BOTTOM, false, false);
		CreateAniRate_pooled(obj, "character/gunner/effect/animation/at_sowalker/atsowalkeraaimshooteffect_00.ani", 0, 0, 0, ENUM_DRAWLAYER_NORMAL, false, false);
		CreateAniRate_pooled(obj, "character/gunner/effect/animation/at_sowalker/atsowalkeraaimshooteffect_03.ani", 0, 0, 0, ENUM_DRAWLAYER_NORMAL, false, false);
		CreateAniRate_pooled(obj, "character/gunner/effect/animation/at_sowalker/atsowalkeraaimshooteffectbottom_00.ani", 0, 0, 0, ENUM_DRAWLAYER_NORMAL, false, false);
		CreateAniRate_pooled(obj, "character/gunner/effect/animation/at_sowalker/atsowalkeraaimshootfrontsmoke_00.ani", 0, 0, 0, ENUM_DRAWLAYER_NORMAL, false, false);
		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
}

function onKeyFrameFlag_AimShoot(obj, flagIndex) {
	if (!obj) return false;
	local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_AIMSHOOT, STATE_AIMSHOOT, 0, 1.0));
	local attackCount = obj.sq_GetIntData(SKILL_AIMSHOOT, 2);
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		break;
	case 1:
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_AIMSHOOT); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(attackBonusRate.tointeger() + 100); 
		sq_BinaryWriteDword(attackCount); 
		sq_BinaryWriteBool(false); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
		if (obj.getVar("ArcDischarge").getInt(0) >= 100) {
			obj.getVar("AimShootIsArcDischarge").setBool(0, true);
			obj.getVar("AimShootIsArcDischarge").setInt(1, attackBonusRate.tointeger());
		}
		break;
	case 2:
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_AIMSHOOT); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_BinaryWriteDword(attackCount); 
		sq_BinaryWriteBool(true); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, 0, obj.getDirection());
		if (obj.getVar("ArcDischarge").getInt(0) >= 100) {
			obj.getVar("AimShootIsArcDischarge").setBool(0, true);
		}
		break;
	}
	return true;
}

function onProcCon_AimShoot(obj) {
	if (!obj) return;
	if (obj.getVar("AimShootIsArcDischarge").getBool(0)) {
		startArcDischarge(obj, "AimShootIsArcDischarge");
	}
}

function onEndCurrentAni_AimShoot(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_AIMSHOOT, STATE_PRIORITY_USER, true);
		break;
	case 1:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	case 2:
		obj.getVar("AimShootIsArcDischarge").setBool(0, false);
		obj.getVar("AimShootIsArcDischarge").setInt(1, 0);
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}

function onEndState_AimShoot(obj, newState)
{
	if(!obj) return;
	if(newState == STATE_AIMSHOOT) return;
	obj.sq_PlaySound("GUN_CARTRIDGE_DROP");
	obj.sq_PlaySound("SUBWEAPON_CARTRIDGE_DROP");
}