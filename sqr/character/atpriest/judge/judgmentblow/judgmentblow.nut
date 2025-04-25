
function checkExecutableSkill_judgmentblow(obj)
{
	if(!obj)
		return false;

	local isUse = obj.sq_IsUseSkill(SKILL_JUDGMENTBLOW);
	if (isUse)
	{
		obj.sq_AddSetStatePacket(STATE_JUDGMENTBLOW, STATE_PRIORITY_USER, false);
		return true;
	}
	return false;
}


function checkCommandEnable_judgmentblow(obj)
{
	if (!obj)
		return false;

	local state = obj.sq_GetState();
	if (state == STATE_STAND)
	
		return true;

	return true;
}


function onSetState_JudgmentBlow(obj, state, datas, isResetTimer)
{
	if(!obj)
		return false;
	
	local substate = obj.getVar().get_vector(0);
	
	obj.setSkillSubState(substate);
	obj.sq_StopMove();

	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(ANI_AtJudgmentBlow_Body);
		obj.sq_PlaySound("R_PW_JUDGMENT_BLOW");
		
		if(isHolyFlame(obj))
		{
			obj.sq_PlaySound("JUDGMENT_BLOW_FLAME");//啮踝萧啮踝萧啮踝萧啮踝萧
		}
		else
		{
			obj.sq_PlaySound("JUDGMENT_BLOW");
		}
	}
	else if(substate == 1)
	{
		if(isHolyFlame(obj))
		{
			obj.sq_SetCurrentAnimation(ANI_AtJudgmentBlow_Att_Body);
			//obj.sq_SetCurrentAttackInfo(ATK_HolyFlame_JudgmentBlow);
			obj.sq_SetCurrentAttackInfo(ATK_JudgmentBlow);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_JUDGMENTBLOW , -1, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
			local attackInfo = sq_GetCurrentAttackInfo(obj);
			if(attackInfo)
			{
				attackInfo.setElement(ENUM_ELEMENT_LIGHT); 
				attackInfo.setElement(ENUM_ELEMENT_FIRE); 
			}
		}
		else
		{
			obj.sq_SetCurrentAnimation(ANI_HolyFlame_JudgmentBlow);
			obj.sq_SetCurrentAttackInfo(ATK_JudgmentBlow);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_JUDGMENTBLOW , -1, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
		}
		obj.sq_StartWrite();
		obj.sq_WriteDword(101);
		obj.sq_SendCreatePassiveObjectPacket(24240, 0, 200, 0, 0);
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}


function onProc_JudgmentBlow(obj)
{
	if(!obj) return;
	if(isHolyFlame(obj)){
		ATPriestDetonateEssence(obj, obj, 0);
	}
}


function onKeyFrameFlag_JudgmentBlow(obj,flagIndex)
{
	if(!obj)
		return false;

	if (flagIndex == 1)
	{
		if(isHolyFlame(obj))
		{
			sq_AddDrawOnlyAniFromParent(obj,"character/priest/atanimation/holyflameweaponeffect/judgmentblow_body.ani", 0, 0, 0);
		}
	}
	else if (flagIndex == 2)
	{
		if(isHolyFlame(obj))
		{
			sq_AddDrawOnlyAniFromParent(obj,"passiveobject/atpriest/animation/atjudgmentblow/atjudgmentblow_att1_12.ani", 0, 0, 0);
			sq_AddDrawOnlyAniFromParent(obj,"passiveobject/atpriest/animation/atjudgmentblow/atjudgmentblow_att1_13.ani", 0, 0, 0);
		}
		sq_AddDrawOnlyAniFromParent(obj,"character/priest/effect/animation/atjudgmentblow/atjudgmentblow_stone_6.ani", 0, 0, 0);
		obj.sq_SetShake(obj,2,300);
	}
	else if (flagIndex == 3)
	{
		
	}
	else if (flagIndex == 4)
	{
		
	}
	return true;
}


function onEndCurrentAni_JudgmentBlow(obj)
{
	local substate = obj.getSkillSubState();

	if(substate == 0)
	{
		obj.getVar().clear_vector();
		obj.getVar().push_vector(1);
		obj.sq_AddSetStatePacket(STATE_JUDGMENTBLOW ,STATE_PRIORITY_USER, true);
	}
	if(substate == 1)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function onAttack_JudgmentBlow(obj, damager, boundingBox, isStuck)
{
	if(!obj || isStuck)
		return;
	damager = sq_GetCNRDObjectToActiveObject(damager);
	if(damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(obj, damager) && isHolyFlame(obj))
	{
		local append = "character/atpriest/judge/judgmentblow/ap_judgmentblowholyflame.nut";
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

function onEndState_JudgmentBlow(obj, newState)
{
	if(!obj) return;
	if(newState == STATE_JUDGMENTBLOW) return;
	if(isHolyFlame(obj))
	{
		useHolyFlame(obj,1);
	}
}