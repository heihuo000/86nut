function checkExecutableSkill_CrossOfPunishment(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_CROSS_OF_PUNISHMENT);
	if (isUse)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_CROSS_OF_PUNISHMENT, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_CrossOfPunishment(obj)
{
	if (!obj) return false;
	return true;
}

function onSetState_CrossOfPunishment(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();

	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_CROSS_OF_PUNISHMENT_A_BODY);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_CROSS_OF_PUNISHMENT_A);
		local BonusRate = obj.sq_GetBonusRateWithPassive(SKILL_CROSS_OF_PUNISHMENT, STATE_CROSS_OF_PUNISHMENT, 0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(BonusRate);
		ATPriest_Als_Ani(obj, "character/priest/effect/animation/atcrossofpunishment/crossofpunishment_a_basic_slash02.ani", 0, 2, 0, 0, 100, 1, 1.0);
		if(isHolyFlame(obj))
		{
			//useHolyFlame(obj,1);
			local attackinfo = sq_GetCurrentAttackInfo(obj);
			if(attackinfo){
				attackinfo.setElement(ENUM_ELEMENT_LIGHT); 
				attackinfo.setElement(ENUM_ELEMENT_FIRE); 
			}
			obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/crossofpunishment_a_body.ani"), 0, 0);
			ATPriest_Als_Ani(obj, "character/priest/effect/animation/atcrossofpunishment/crossofpunishment_a_holyflame_smoke.ani", 0, 3, 0, 0, 100, 1, 1.0);
		}
	}
	if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_CROSS_OF_PUNISHMENT_B_BODY);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_CROSS_OF_PUNISHMENT_B);
		local BonusRate = obj.sq_GetBonusRateWithPassive(SKILL_CROSS_OF_PUNISHMENT, STATE_CROSS_OF_PUNISHMENT, 1, 1.0);
		obj.sq_SetCurrentAttackBonusRate(BonusRate);
		ATPriest_Als_Ani(obj, "character/priest/effect/animation/atcrossofpunishment/crossofpunishment_b_basic_slash02.ani", 0, 2, 0, 0, 100, 1, 1.0);
		if(isHolyFlame(obj))
		{
			local attackinfo = sq_GetCurrentAttackInfo(obj);
			if(attackinfo){
				attackinfo.setElement(ENUM_ELEMENT_LIGHT); 
				attackinfo.setElement(ENUM_ELEMENT_FIRE); 
			}
			obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/crossofpunishment_a_body.ani"), 0, 0);
			ATPriest_Als_Ani(obj, "character/priest/effect/animation/atcrossofpunishment/crossofpunishment_b_holyflame_backeff02.ani", 0, 3, 0, 0, 100, 1, 1.0);
			ATPriest_Als_Ani(obj, "character/priest/effect/animation/atcrossofpunishment/crossofpunishment_b_holyflame_endfire01.ani", 0, 3, 0, 0, 100, 1, 1.0);
		}
		
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onProc_CrossOfPunishment(obj)
{
	if(!obj) return;
	if(isHolyFlame(obj)){
		ATPriestDetonateEssence(obj, obj, 0);
	}
}

function onEndCurrentAni_CrossOfPunishment(obj)
{
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_CROSS_OF_PUNISHMENT, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(substate == 1)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function onAttack_CrossOfPunishment(obj, damager, boundingBox, isStuck)
{
	if(!obj || isStuck)
		return;
	damager = sq_GetCNRDObjectToActiveObject(damager);
	if(damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(obj, damager) && isHolyFlame(obj))
	{
		local append = "character/atpriest/crossofpunishment/ap_crossofpunishmentholyflame.nut";
		if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append))
		{
			return;
		}
		if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/judge/essenceofphlege/ap_essenceofphlegeex.nut"))
		{
			return;
		}
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, append, true);
		CNSquirrelAppendage.sq_AppendAppendageID(appendage, damager, obj, APID_RESONANCE, false);
	}
}

function onEndState_CrossOfPunishment(obj, newState)
{
	if(!obj) return;
	if(newState == STATE_CROSS_OF_PUNISHMENT) return;
	if(isHolyFlame(obj))
	{
		useHolyFlame(obj,1);
	}
}