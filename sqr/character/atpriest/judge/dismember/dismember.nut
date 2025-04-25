
function checkExecutableSkill_dismember(obj)
{
	if(!obj)
		return false;

	local isUse = obj.sq_IsUseSkill(SKILL_DISMEMBER);
	if (isUse)
	{
		local zPos = obj.getZPos();
		obj.sq_IntVectClear();
		obj.getVar().clear_vector();
		if(zPos > 30){
			obj.getVar("Dismember").setInt(0, 1);
			obj.getVar().push_vector(6);
		}
		else
		{
			obj.getVar("Dismember").setInt(0, 0);
			obj.getVar().push_vector(0);
		}
		obj.sq_AddSetStatePacket(STATE_DISMEMBER, STATE_PRIORITY_USER, false);
		return true;
	}
	return false;
}


function checkCommandEnable_dismember(obj)
{
	if (!obj)
		return false;
	return true;
}

function onSetState_Dismember(obj, state, datas, isResetTimer)
{
	if(!obj)
		return;
	obj.sq_StopMove();
	local substate = obj.getVar().get_vector(0); 
	local up = obj.getVar("Dismember").getInt(0);
	if(up == 1)
	{
		substate = 6;
		obj.getVar("Dismember").setInt(0, 2);
		obj.getVar("Dismember").setInt(1, 0);
		obj.getVar("Dismember").setInt(2, 0);
		obj.getVar("Dismember").setInt(3, obj.sq_GetIntData(SKILL_DISMEMBER, 0));
	}
	obj.setSkillSubState(substate);
	if(substate == 0)
	{
		
		if(isHolyFlame(obj))
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DISMEMBERHOLYFRAME_1_UPPERHIT_READYBODY);
		}
		else
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DISMEMBER_1_UPPERHIT_READYBODY);
		}
		obj.getVar("Dismember").setInt(1, 0);
		obj.getVar("Dismember").setInt(2, 0);
		obj.getVar("Dismember").setInt(3, obj.sq_GetIntData(SKILL_DISMEMBER, 0) - 1);
	}
	else if(substate == 1)
	{
		if(isHolyFlame(obj))
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DISMEMBERHOLYFRAME_2_UPPERHIT_JUMPBODY);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_DISMEMBER_UPPER);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_DISMEMBER , -1, 2, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
		}
		else
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DISMEMBER_2_UPPERHIT_JUMPBODY);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_DISMEMBER_UPPER);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_DISMEMBER , -1, 2, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
		}
		sq_SetZVelocity(obj,400,200);

	}
	else if(substate == 2)
	{
		obj.sq_ZStop();
		if(isHolyFlame(obj))
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DISMEMBERHOLYFRAME_3_SPINHIT_SPINBODY);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_DISMEMBER_SPINATTACK);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_DISMEMBER , -1, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
		}
		else
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DISMEMBER_3_SPINHIT_SPINBODY);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_DISMEMBER_SPINATTACK);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_DISMEMBER , -1, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
		}
	}
	else if(substate == 3)
	{

		if(isHolyFlame(obj))
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DISMEMBERHOLYFRAME_4_SPINHIT_DROPBODY);
		}
		else
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DISMEMBER_4_SPINHIT_DROPBODY);
		}
		obj.sq_SetStaticMoveInfo(0, 240, 320, false);
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		
	}
	else if(substate == 4)
	{
		if(isHolyFlame(obj))
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DISMEMBERHOLYFRAME_5_DOWNHIT_BODY);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_DISMEMBER_DOWNBLOW);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_DISMEMBER , -1, 3, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
		}
		else
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DISMEMBER_5_DOWNHIT_BODY);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_DISMEMBER_DOWNBLOW);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_DISMEMBER , -1, 3, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
		}
		sq_SetZVelocity(obj,-1000,-300);
		
	}
	else if(substate == 5)
	{
		if(isHolyFlame(obj))
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DISMEMBERHOLYFRAME_6_FINISHHIT_BODY);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_DISMEMBER_FINISHBLOW);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_DISMEMBER , -1, 1, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
		}
		else
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DISMEMBER_6_FINISHHIT_BODY);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_DISMEMBER_FINISHBLOW);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_DISMEMBER , -1, 1, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
		}
	}
	else if(substate == 6)
	{
		obj.sq_ZStop();
		if(isHolyFlame(obj))
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DISMEMBERHOLYFRAME_3_BACKSTEP_BODYSPIN);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_DISMEMBER_SPINATTACK);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_DISMEMBER , -1, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
		}
		else
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DISMEMBER_3_BACKSTEP_BODYSPIN);
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_DISMEMBER_SPINATTACK);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_DISMEMBER , -1, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
		}
	}
	else if(substate == 7)
	{

		if(isHolyFlame(obj))
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DISMEMBERHOLYFRAME_4_BACKSTEP_BODYDROP);
		}
		else
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_DISMEMBER_4_BACKSTEP_BODYDROP);
		}
		obj.sq_SetStaticMoveInfo(0, 240, 320, false);
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		
	}
	if(isHolyFlame(obj))
	{
		local attackinfo = sq_GetCurrentAttackInfo(obj);
		if(attackinfo){
			attackinfo.setElement(ENUM_ELEMENT_LIGHT); 
			attackinfo.setElement(ENUM_ELEMENT_FIRE); 
		}
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onProcCon_Dismember(obj)
{
	if(!obj)
		return false;
/*	local substate = obj.getSkillSubState();
	if(substate == 1)
	{
		
	}*/
	if(isHolyFlame(obj)){
		ATPriestDetonateEssence(obj, obj, 0);
	}
}

function onProc_Dismember(obj)
{
	if(!obj)
		return;
	local substate = obj.getSkillSubState();
	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	obj.setSkillCommandEnable(SKILL_DISMEMBER, true);
	if(substate == 4)
	{
		local down = obj.getVar("Dismember").getInt(1);
		local zPos = obj.getZPos();
		if(down == 0 && zPos < 10)
		{
			obj.getVar("Dismember").setInt(1, 1);
		}
		else if(down == 1)
		{
			sq_AddDrawOnlyAniFromParent(obj,"character/priest/effect/animation/atdismember/downhitfloor_crack.ani", 0, 0, 0);
			sq_AddDrawOnlyAniFromParent(obj,"character/priest/effect/animation/atdismember/downhit_dust01.ani", 0, 0, 0);
			if(isHolyFlame(obj))
			{
				sq_AddDrawOnlyAniFromParent(obj,"character/priest/effect/animation/atdismember/downhitfire_smoke.ani", 0, 1, 0);
			}
			obj.getVar("Dismember").setInt(1, 2);
		}
		local iEnterSkill = obj.sq_IsEnterSkill(SKILL_DISMEMBER);
		if(iEnterSkill != -1 || sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL) ){
			obj.getVar("Dismember").setInt(2, 1);
		}
	}
}

function onKeyFrameFlag_Dismember(obj,flagIndex)
{
	if(!obj)
		return;
	local substate = obj.getSkillSubState();
	local time = obj.getVar("Dismember").getInt(3);
	if(time < 1)
		return;
	if(substate == 2 || substate == 6)
	{
		if (flagIndex == 1)
		{
			obj.resetHitObjectList();
			obj.getVar("Dismember").setInt(3, time - 1);
		}
		else if(flagIndex == 2)
		{
			obj.resetHitObjectList();
			obj.getVar("Dismember").setInt(3, time - 1);
		}
	}
	return true;
}


function onEndCurrentAni_Dismember(obj)
{
	if(!obj)
		return;
	local substate = obj.getSkillSubState();
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	if(substate == 0)
	{
		obj.sq_IntVectClear();
		obj.getVar().clear_vector();
		obj.getVar().push_vector(1);
		obj.sq_AddSetStatePacket(STATE_DISMEMBER ,STATE_PRIORITY_USER, true);
	}
	else if(substate == 1)
	{
		local zPos = obj.getZPos();
			obj.sq_IntVectClear();
			obj.getVar().clear_vector();
			obj.getVar().push_vector(2);
			obj.sq_AddSetStatePacket(STATE_DISMEMBER ,STATE_PRIORITY_USER, true);

	}
	else if(substate == 2)
	{
		local time = obj.getVar("Dismember").getInt(3);
		if(time < 1)
		{
			obj.sq_IntVectClear();
			obj.getVar().clear_vector();
			obj.getVar().push_vector(3);
			obj.sq_AddSetStatePacket(STATE_DISMEMBER ,STATE_PRIORITY_USER, true);
		}
		else
		{
			obj.sq_IntVectClear();
			obj.getVar().clear_vector();
			obj.getVar().push_vector(6);
			obj.sq_AddSetStatePacket(STATE_DISMEMBER ,STATE_PRIORITY_USER, true);
		}
	}
	else if(substate == 3)
	{
		obj.sq_IntVectClear();
		obj.getVar().clear_vector();
		obj.getVar().push_vector(4);
		obj.sq_AddSetStatePacket(STATE_DISMEMBER ,STATE_PRIORITY_USER, true);
	}
	else if(substate == 4)
	{
		local final = obj.getVar("Dismember").getInt(2);
		if(final > 0){
			obj.sq_IntVectClear();
			obj.getVar().clear_vector();
			obj.getVar().push_vector(5);
			obj.sq_AddSetStatePacket(STATE_DISMEMBER ,STATE_PRIORITY_USER, true);
		}
		else
		{
			obj.sq_IntVectClear();
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}
	}
	else if(substate == 5)
	{
		obj.sq_IntVectClear();
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
	else if(substate == 6)
	{
		local time = obj.getVar("Dismember").getInt(3);
		if(time < 1)
		{
			obj.sq_IntVectClear();
			obj.getVar().clear_vector();
			obj.getVar().push_vector(7);
			obj.sq_AddSetStatePacket(STATE_DISMEMBER ,STATE_PRIORITY_USER, true);
		}
		else
		{
			obj.sq_IntVectClear();
			obj.getVar().clear_vector();
			obj.getVar().push_vector(6);
			obj.sq_AddSetStatePacket(STATE_DISMEMBER ,STATE_PRIORITY_USER, true);
		}
	}
	else if(substate == 7)
	{
		obj.sq_IntVectClear();
		obj.getVar().clear_vector();
		obj.getVar().push_vector(4);
		obj.sq_AddSetStatePacket(STATE_DISMEMBER ,STATE_PRIORITY_USER, true);
	}
}

function onAttack_Dismember(obj, damager, boundingBox, isStuck)
{
	if(!obj || isStuck)
		return;
	damager = sq_GetCNRDObjectToActiveObject(damager);
	if(damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(obj, damager) && isHolyFlame(obj))
	{
		local append = "character/atpriest/judge/dismember/ap_dismemberholyflame.nut";
		if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append))
		{
			return;
		}
		local appendex = "character/atpriest/judge/essenceofphlege/ap_essenceofphlegeex.nut";
		if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, appendex))
		{
			return;
		}
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, append, true);
		CNSquirrelAppendage.sq_AppendAppendageID(appendage, damager, obj, APID_RESONANCE, false);
	}
}

function onEndState_Dismember(obj, newState)
{
	if(!obj) return;
	if(newState == STATE_DISMEMBER) return;
	if(isHolyFlame(obj))
	{
		useHolyFlame(obj,1);
	}
}  