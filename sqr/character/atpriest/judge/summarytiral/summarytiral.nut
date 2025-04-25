
function checkExecutableSkill_summarytiral(obj)
{
	if(!obj)
		return false;

	local isUse = obj.sq_IsUseSkill(SKILL_SUMMARYTIRAL);
	if (isUse)
	{
		obj.sq_IntVectClear();
		obj.sq_AddSetStatePacket(STATE_SUMMARYTIRAL, STATE_PRIORITY_USER, false);
		return true;
	}
	return false;
}


function checkCommandEnable_summarytiral(obj)
{
	if (!obj)
		return false;
	return true;
}


function onSetState_SummaryTiral(obj, state, datas, isResetTimer)
{
	if(!obj)
		return false;
	
	local substate = obj.getVar().get_vector(0);
	
	obj.setSkillSubState(substate);
	obj.sq_StopMove();

	if(substate == 0)
	{
		obj.getVar("Incineration").clear_vector(); 
		obj.getVar("Incineration").push_vector(0); 
		obj.sq_SetCurrentAnimation(ANI_SummaryTiral_Body_Pierce_Atk1);
		obj.sq_SetCurrentAttackInfo(ATK_SummaryTiralPierce);
		obj.sq_PlaySound("PW_SUMMARY_TIRAL_01");
		obj.sq_PlaySound("SUMMARY_TIRAL_STAB");
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_SUMMARYTIRAL , -1, 0, 1.0);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
		if(isHolyFlame(obj))
		{
			obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/summarytiral_body_pierce_atk1.ani"), 0, 0);
			local attackInfo = sq_GetCurrentAttackInfo(obj);
			if(attackInfo)
			{
				attackInfo.setElement(ENUM_ELEMENT_LIGHT); 
				attackInfo.setElement(ENUM_ELEMENT_FIRE); 
			}
		}
	}
	else if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(ANI_SummaryTiral_Body_Nomal_Attack2);
		obj.sq_SetCurrentAttackInfo(ATK_SummaryTiralNomalSwing);
		obj.sq_PlaySound("PW_SUMMARY_TIRAL_02");
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_SUMMARYTIRAL , STATE_SUMMARYTIRAL, 1, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
		if(isHolyFlame(obj))
		{
			obj.sq_AddStateLayerAnimation(9998, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/summarytiral_body_nomal_attack2.ani"), 0, 0);
			obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("effect/animation/atsummarytiral/normal/statk1fire_firedodge.ani"), 0, 0);
			local attackInfo = sq_GetCurrentAttackInfo(obj);
			if(attackInfo)
			{
				attackInfo.setElement(ENUM_ELEMENT_LIGHT); 
				attackInfo.setElement(ENUM_ELEMENT_FIRE); 
			}
			obj.sq_PlaySound("SUMMARY_TIRAL_SWISH_FLAME");
		}
		else
		{
			obj.sq_PlaySound("SUMMARY_TIRAL_SWISH");
		}
	}
	else if(substate == 2)
	{
		obj.sq_SetCurrentAnimation(ANI_SummaryTiral_Body_IncinerAtion_Attack2);
		obj.sq_AddStateLayerAnimation(9998, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/summarytiral_body_incineration_attack2.ani"), 0, 0);
		obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("effect/animation/atsummarytiral/incineration/statk2fire_fire01.ani"), 0, 0);
		obj.sq_SetCurrentAttackInfo(ATK_SummaryTiralIncinerAtionSwing);
		obj.sq_PlaySound("PW_SUMMARY_TIRAL_02");
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_SUMMARYTIRAL , STATE_SUMMARYTIRAL, 2, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		if(attackInfo)
		{
			attackInfo.setElement(ENUM_ELEMENT_LIGHT); 
			attackInfo.setElement(ENUM_ELEMENT_FIRE); 
		}
		obj.sq_PlaySound("SUMMARY_TIRAL_DOWN_FLAME");
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}


function onProc_SummaryTiral(obj)
{
	if(!obj) return;
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
	}
	else if(substate == 1 || substate == 2)
	{
		if(isHolyFlame(obj)){
			ATPriestDetonateEssence(obj, obj, 0);
		}
	}
}

function onKeyFrameFlag_SummaryTiral(obj,flagIndex)
{
	if(!obj)
		return false;

	if (flagIndex == 1)
	{
		if(isHolyFlame(obj))
		{
			
			sq_AddDrawOnlyAniFromParent(obj,"character/priest/effect/animation/atsummarytiral/normal/statk1endfire_01.ani", 0, 0, 0);
		}

	}
	else if (flagIndex == 2)
	{

/*		if(isHolyFlame(obj))
		{
			
			sq_AddDrawOnlyAniFromParent(obj,"character/priest/effect/animation/atsummarytiral/normal/statk1fire_firedodge.ani", 0, 0, 0);
		}*/
		obj.sq_SetShake(obj,1,200);

	}
	else if (flagIndex == 3)
	{

		
		//sq_AddDrawOnlyAniFromParent(obj,"character/priest/effect/animation/atsummarytiral/incineration/statk2fire_fire01.ani", 0, 0, 0);
		obj.sq_SetShake(obj,1,200);
	}
	else if (flagIndex == 11)
	{
		local incineration = obj.getVar("Incineration").get_vector(0);
		if(incineration > 0)
		{
			return true;
		}
		local sq_var = obj.getVar("SummaryTiral");
		local objectsSize = sq_var.get_obj_vector_size();
		for (local i = 0; i < objectsSize; ++i) {
			local damager = sq_var.get_obj_vector(i);
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/judge/summarytiral/ap_summarytiral.nut")) {
				CNSquirrelAppendage.sq_RemoveAppendage(damager, "character/atpriest/judge/summarytiral/ap_summarytiral.nut");
			}
		}
	}
	return true;
}

function onEndCurrentAni_SummaryTiral(obj)
{
	local substate = obj.getSkillSubState();

	if(substate == 0)
	{
		local incineration = obj.getVar("Incineration").get_vector(0);
		if(incineration > 0 && isHolyFlame(obj))
		{
			obj.getVar().clear_vector();
			obj.getVar().push_vector(2);
			obj.sq_AddSetStatePacket(STATE_SUMMARYTIRAL ,STATE_PRIORITY_USER, true);
		}
		else
		{
			obj.getVar().clear_vector();
			obj.getVar().push_vector(1);
			obj.sq_AddSetStatePacket(STATE_SUMMARYTIRAL ,STATE_PRIORITY_USER, true);
		}
	}
	else if(substate == 1)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
	else if(substate == 2)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function onAttack_SummaryTiral(obj, damager, boundingBox, isStuck)
{
	if(!obj || isStuck)
		return false;
	damager = sq_GetCNRDObjectToActiveObject(damager);
	local substate = obj.getSkillSubState();
	local incineration = obj.getVar("Incineration").get_vector(0);
	if(damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(obj, damager) && isHolyFlame(obj))
	{
		if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/judge/essenceofphlege/ap_essenceofphlege.nut"))
		{
			obj.getVar("Incineration").clear_vector(); 
			obj.getVar("Incineration").push_vector(1); 
		}
		if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/judge/essenceofphlege/ap_essenceofphlegeex.nut"))
		{
			obj.getVar("Incineration").clear_vector(); 
			obj.getVar("Incineration").push_vector(1); 
			return;
		}
		local append = "character/atpriest/judge/summarytiral/ap_summarytiralholyflame.nut";
		if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append))
		{
			return;
		}
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, append, true);
		CNSquirrelAppendage.sq_AppendAppendageID(appendage, damager, obj, APID_RESONANCE, false);
	}
	switch(substate)
	{
		case 0:
			if(sq_IsHoldable(obj,damager) && sq_IsGrabable(obj,damager) && !sq_IsFixture(damager) && damager.isObjectType(OBJECTTYPE_ACTIVE) )
			{
				obj.getVar("SummaryTiral").push_obj_vector(damager);
				local append = "character/atpriest/judge/summarytiral/ap_summarytiral.nut";
				local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, append, true);
				if(appendage)
				{
					sq_HoldAndDelayDie(damager, obj, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL, appendage);
					if(incineration > 0)
					{
						sq_MoveToAppendageForce(damager, obj, obj, 150, 0, 50, 260, true, appendage,true);
					}
					appendage.getAppendageInfo().setValidTime(3000);
				}
			}
			break;
		case 2:
			
			break;
	}
}

function onEndState_SummaryTiral(obj, new_state) {
	if (new_state != STATE_SUMMARYTIRAL) {
		if(isHolyFlame(obj))
		{
			useHolyFlame(obj,1);
		}
		local sq_var = obj.getVar("SummaryTiral");
		local objectsSize = sq_var.get_obj_vector_size();
		for (local i = 0; i < objectsSize; ++i) {
			local damager = sq_var.get_obj_vector(i);
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/judge/summarytiral/ap_summarytiral.nut")) {
				CNSquirrelAppendage.sq_RemoveAppendage(damager, "character/atpriest/judge/summarytiral/ap_summarytiral.nut");
			}
		}
	}
}
