function checkExecutableSkill_inferno(obj)
{
	if(!obj)
		return false;

	local isUse = obj.sq_IsUseSkill(SKILL_INFERNO);
	if (isUse)
	{
		obj.getVar().clear_vector();
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		obj.addSetStatePacket(STATE_INFERNO, pIntVec, STATE_PRIORITY_FORCE, false, "");
		return true;
	}
	return false;
}

function checkCommandEnable_inferno(obj)
{
	if (!obj)
		return false;
	return true;
}

function onSetState_ATInferno(obj, state, datas, isResetTimer)
{
	if(!obj)
		return false;
	local substate = obj.getVar().get_vector(0);
	obj.setSkillSubState(substate);
	
	obj.sq_StopMove();
	local damage = obj.sq_GetBonusRateWithPassive(SKILL_INFERNO, -1, 0, 1.0);
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_INFERNO_START1_BODY);
		if(isHolyFlame(obj))
		{
			obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/inferno_start1_body.ani"), 0, 0);
		}
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ATINFERNO_ATK);
		obj.sq_SetCurrentAttackBonusRate(damage);
		obj.sq_ZStop();
		sq_SetCurrentPos(obj,obj.getXPos(),obj.getYPos(),35);
		obj.sq_SetShake(obj,3,300);
		if(sq_IsMyCharacter(obj))
		{
			userCreatePooledObjectSimple(obj, "character/priest/effect/animation/atinferno/1start/inferno_start2_ground.ani", posX, posY-1, 0, 0, ENUM_DRAWLAYER_BOTTOM);
		}
		sq_createPooledObject(obj, "character/priest/effect/animation/atinferno/groundcrack/inferno_smallcracka_start_crack.ani", 0, 100, 0, 100, 1.0, 0, 0, 0);
		sq_createPooledObject(obj, "character/priest/effect/animation/atinferno/groundcrack/inferno_smallcrackb_start_crack.ani", 0, -100, 0, 100, 1.0, 0, 0, 0);
		
		sq_createPooledObject(obj, "character/priest/effect/animation/atinferno/groundcrack/inferno_smallcrackb_start_crack.ani", -180, -1, 0, 100, 1.0, 0, 0, 0);
		sq_createPooledObject(obj, "character/priest/effect/animation/atinferno/groundcrack/inferno_smallcrackc_start_crack.ani", -180, -100, 0, 100, 1.0, 0, 0, 0);
		sq_createPooledObject(obj, "character/priest/effect/animation/atinferno/groundcrack/inferno_smallcracka_start_crack.ani", -260, 100, 0, 100, 1.0, 0, 0, 0);
		
		sq_createPooledObject(obj, "character/priest/effect/animation/atinferno/groundcrack/inferno_smallcrackc_start_crack.ani", 180, -1, 0, 100, 1.0, 0, 0, 0);
		sq_createPooledObject(obj, "character/priest/effect/animation/atinferno/groundcrack/inferno_smallcracka_start_crack.ani", 180, -100, 0, 100, 1.0, 0, 0, 0);
		sq_createPooledObject(obj, "character/priest/effect/animation/atinferno/groundcrack/inferno_smallcrackb_start_crack.ani", 260, 100, 0, 100, 1.0, 0, 0, 0);
		
		
		obj.sq_PlaySound("R_PW_INFERNO");
		

	}
	else if(substate == 1)
	{
		obj.sq_ZStop();
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_INFERNO_ATTACK3_BODY);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ATINFERNO_ATK);
		obj.sq_SetCurrentAttackBonusRate(damage);
		obj.sq_SetShake(obj,3,300);
		if(sq_IsMyCharacter(obj))
		{
			userCreatePooledObjectSimple(obj, "character/priest/effect/animation/atinferno/2attack/inferno_attack7_ground.ani", posX, posY-1, 0, 0, ENUM_DRAWLAYER_BOTTOM);
			userCreatePooledObjectSimple(obj, "character/priest/effect/animation/atinferno/2attack/inferno_attack5_bgfire1.ani", posX, posY-1, 0, 0, ENUM_DRAWLAYER_NORMAL);
			userCreatePooledObjectSimple(obj, "character/priest/effect/animation/atinferno/2attack/inferno_attack2_rock1.ani", posX - 30, 250, 0, 0, ENUM_DRAWLAYER_NORMAL);
		}
		sq_AddDrawOnlyAniFromParent(obj,"character/priest/effect/animation/atinferno/2attack/inferno_attack4_stake1.ani", 0, 1, 0);
	}
	else if(substate == 2)
	{
		obj.sq_ZStop();
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_INFERNO_FINISH3_BODY);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ATINFERNO_ATK);
		damage = obj.sq_GetBonusRateWithPassive(SKILL_INFERNO, -1, 1, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
		if(sq_IsMyCharacter(obj))
		{
			userCreatePooledObjectSimple(obj, "character/priest/effect/animation/atinferno/3finish/inferno_finish5_ground.ani", posX, posY-1, 0, 0, ENUM_DRAWLAYER_BOTTOM);
			userCreatePooledObjectSimple(obj, "character/priest/effect/animation/atinferno/3finish/inferno_finish6_bgfire1.ani", posX, posY-1, 0, 0, ENUM_DRAWLAYER_NORMAL);
			userCreatePooledObjectSimple(obj, "character/priest/effect/animation/atinferno/3finish/inferno_finish2_rock1.ani", posX - 30, 251, 0, 0, ENUM_DRAWLAYER_NORMAL);
		}
		sq_AddDrawOnlyAniFromParent(obj,"character/priest/effect/animation/atinferno/3finish/inferno_finish4_fire1.ani", 0, 1, 0);
		sq_AddDrawOnlyAniFromParent(obj,"character/priest/effect/animation/atinferno/3finish/inferno_finish1_fire1.ani", 0, 2, 0);
	}
	else if(substate == 3)
	{
		obj.sq_ZStop();
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_INFERNO_LANDING_BODY);
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	
}

function onAttack_ATInferno(obj, damager, boundingBox, isStuck)
{
	if(!obj || isStuck)	return false;
	if(!damager.isObjectType(OBJECTTYPE_ACTIVE)) return false;
	if(isSameObject(obj, damager)) return false;
	damager = sq_GetCNRDObjectToActiveObject(damager);
	local substate = obj.getSkillSubState();
	local append = "character/atpriest/judge/inferno/ap_infernodummy.nut";
	if(substate == 0)
	{
		if(sq_IsHoldable(obj,damager) && sq_IsGrabable(obj,damager) && !sq_IsFixture(damager))
		{
			obj.getVar("infernodummy").push_obj_vector(damager);
				
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, append, true);
			if(appendage)
			{
				sq_HoldAndDelayDie(damager, obj, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL, appendage);
				sq_MoveToAppendageForce(damager, obj, obj, 70, 1, 50, 260, true, appendage,true);
				appendage.getAppendageInfo().setValidTime(10000);
			}
		}
	}
	
	if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/judge/inferno/ap_inferno.nut"))
	{
		return;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/judge/essenceofphlege/ap_essenceofphlegeex.nut"))
	{
		return;
	}
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, "character/atpriest/judge/inferno/ap_inferno.nut", true);
	CNSquirrelAppendage.sq_AppendAppendageID(appendage, damager, obj, APID_RESONANCE, false);
}

function onProc_ATInferno(obj)
{
	if(!obj) return;
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
		ATPriestDetonateEssence(obj, obj, 0);
	}
	else if(substate == 1 || substate == 2)
	{
		ATPriestDetonateEssenceWithoutDistance(obj);
	}
}


function onKeyFrameFlag_ATInferno(obj,flagIndex)
{
	if(!obj)
		return false;

	if (flagIndex == 1)
	{
		obj.resetHitObjectList();
		obj.sq_SetShake(obj,3,300);
	}
	return true;
}

function onEndCurrentAni_ATInferno(obj)
{
	if(!obj) return;
	local substate = obj.getSkillSubState();

	if(substate == 0)
	{
		obj.getVar().clear_vector();
		obj.getVar().push_vector(1);
		obj.sq_AddSetStatePacket(STATE_INFERNO ,STATE_PRIORITY_USER, true);
	}
	else if(substate == 1)
	{
		obj.getVar().clear_vector();
		obj.getVar().push_vector(2);
		obj.sq_AddSetStatePacket(STATE_INFERNO, STATE_PRIORITY_USER, true);
	}
	else if(substate == 2)
	{
		obj.getVar().clear_vector();
		obj.getVar().push_vector(3);
		obj.sq_AddSetStatePacket(STATE_INFERNO, STATE_PRIORITY_USER, true);
	}
	else if(substate == 3)
	{
		sq_removePooledObject(obj);
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 1);
		sq_IntVectorPush(pIntVec, 0);
		sq_IntVectorPush(pIntVec, 1);
		obj.addSetStatePacket(STATE_JUMP, pIntVec, STATE_PRIORITY_FORCE, false, "");
		obj.flushSetStatePacket();
	}
}

function onEndState_ATInferno(obj, new_state) {
	if(!obj) return;
	if (new_state != STATE_INFERNO) {
		obj.setEnableDamageBox(1);
		local sq_var = obj.getVar("infernodummy");
		local append = "character/atpriest/judge/inferno/ap_infernodummy.nut";
		local objectsSize = sq_var.get_obj_vector_size();
		for (local i = 0; i < objectsSize; ++i) {
			local damager = sq_var.get_obj_vector(i);
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append)) {
				CNSquirrelAppendage.sq_RemoveAppendage(damager, append);
			}
		}
	}
} 