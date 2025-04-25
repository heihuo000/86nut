
function checkExecutableSkill_burnatthestake(obj)
{
	if(!obj)
		return false;

	local isUse = obj.sq_IsUseSkill(SKILL_BURNATTHESTAKE);
	if (isUse)
	{
		obj.getVar().clear_vector();
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		obj.addSetStatePacket(STATE_BURNATTHESTAKE, pIntVec, STATE_PRIORITY_FORCE, false, "");
		return true;
	}
	return false;
}

function checkCommandEnable_burnatthestake(obj)
{
	if (!obj)
		return false;
	return true;
}

function onSetState_BurnAtThestake(obj, state, datas, isResetTimer)
{
	if(!obj)
		return false;
	local substate = obj.getVar().get_vector(0);
	
	obj.setSkillSubState(substate);
	obj.sq_StopMove();

	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(ANI_BurnAtThestake_A_Start_Body);
		obj.sq_PlaySound("R_PW_BURN_STAKE_01");
		
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		
		
		local skillLevel = obj.sq_GetSkillLevel(SKILL_BURNATTHESTAKE);
		local buffA = sq_GetLevelData(obj, SKILL_BURNATTHESTAKE, 3, skillLevel);
		local buffB = sq_GetLevelData(obj, SKILL_BURNATTHESTAKE, 4, skillLevel);
		local buffC = sq_GetLevelData(obj, SKILL_BURNATTHESTAKE, 5, skillLevel);
		local time = obj.sq_GetIntData(SKILL_BURNATTHESTAKE, 3)
		if(buffA > 0)
		{
			obj.setEnableDamageBox(0);
		}
		if(buffB > 0)
		{
			local loadSlot = obj.sq_GetSkillLoad(SKILL_HOLYFLAME);
			if(loadSlot){
				loadSlot.increaseLoadCount(3);
			}
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_BURNATTHESTAKE, false, "character/atpriest/judge/burnatthestake/ap_burnatthestakebuffb.nut", true);
			appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_BURNATTHESTAKE, skillLevel);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_BURNATTHESTAKE, true);
			appendage.sq_SetValidTime(time);
		}
		if(buffC > 0)
		{
			local coolbonus  = buffC.tofloat();
			coolbonus  = coolbonus / 1000;
			
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_BURNATTHESTAKE, false, "character/atpriest/judge/burnatthestake/ap_burnatthestakebuffc.nut", true);
			appendage.sq_SetValidTime(time);
			local change_appendage = appendage.sq_getChangeStatus("burnstakec");
			if(!change_appendage)
			{
				change_appendage = appendage.sq_AddChangeStatus("burnstakec",obj, obj, 0, 0, true, 0);
			}
			if(change_appendage) 
			{
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_COOLTIME_DECLINE, false, -coolbonus);
			}
		}
	}
	else if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(ANI_BurnAtThestake_B_Move_Body);
		obj.sq_PlaySound("BURN_STAKE_CAST");

		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		obj.sq_SetStaticMoveInfo(0, 300, 150, false);
		sq_SetZVelocity(obj, 240, 320);

		obj.sq_SetCurrentAttackInfo(ATK_BurnAtThestake_First);
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_BURNATTHESTAKE, -1, 0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
		
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	
	}
	else if(substate == 2)
	{
		obj.sq_SetCurrentAnimation(ANI_BurnAtThestake_C_Jump_Body);
		obj.sq_PlaySound("BURN_STAKE_DANCE");
		
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	}
	else if(substate == 3)
	{
		obj.sq_SetCurrentAnimation(ANI_BurnAtThestake_D_Slowjump_Body);
		
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);

	}
	else if(substate == 4)
	{
		obj.sq_SetCurrentAnimation(ANI_BurnAtThestake_E_Fall_Body);
		
		obj.sq_SetCurrentAttackInfo(ATK_BurnAtThestake_Down);
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_BURNATTHESTAKE, -1, 1, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
		
		sq_SetZVelocity(obj, -120, -180);
		
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	}
	else if(substate == 5)
	{
		obj.sq_SetCurrentAnimation(ANI_BurnAtThestake_F_Moveback_Body);
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		obj.sq_SetStaticMoveInfo(0, -600, -500, false);
		
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ATBURNATTHESTAKE);
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_BURNATTHESTAKE, -1, 2, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
	}
	else if(substate == 6)
	{
		obj.sq_PlaySound("R_PW_BURN_STAKE_02");
		obj.sq_SetCurrentAnimation(ANI_BurnAtThestake_Finish_Body);
		
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ATBURNATTHESTAKE);
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_BURNATTHESTAKE, -1, 2, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetAttackInfoForceHitStunTime(attackInfo, 150);
		obj.setTimeEvent(1,120,0,false);
	}
	
	if(isHolyFlame(obj))
	{
		switch(substate)
		{
			case 0:
				obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/burnatthestake_a_start_body.ani"), 0, 0);
			break;
			case 1:
				obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/burnatthestake_b_move_body.ani"), 0, 0);
			break;
			case 2:
				obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/burnatthestake_c_jump_body.ani"), 0, 0);
			break;
			case 3:
				obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/burnatthestake_d_slowjump_body.ani"), 0, 0);
			break;
			case 4:
				obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/burnatthestake_e_fall_body.ani"), 0, 0);
			break;
			case 5:
				obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/burnatthestake_f_moveback_body.ani"), 0, 0);
			break;
			case 6:
				obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/burnatthestake_finish_body.ani"), 0, 0);
			break;
		}
	}
}

function onTimeEvent_BurnAtThestake(obj, timeEventIndex, timeEventCount)
{
	if(!obj) return;
	if (timeEventIndex == 1)
	{
		local maxHitCount = 15;
		if (timeEventCount < maxHitCount) {
			local objectMan = obj.getObjectManager();
			local colObjNumber = objectMan.getCollisionObjectNumber();
			obj.getVar("ShowDown").clear_obj_vector();
			for(local i=0; i<colObjNumber; ++i)
			{
				local damager = objectMan.getCollisionObject(i);
				if(damager && damager.isObjectType(OBJECTTYPE_ACTIVE) && obj.isEnemy(damager) && damager.isInDamagableState(obj) && sq_IsInScreenCollisionObject(damager, true))
				{
					local high = sq_GetHeightObject(damager); 
					high = high / 2 + sq_getRandom(0, (high * 0.25).tointeger()); 
					sq_SendHitObjectPacket(obj, damager, 0, 0, high);
				}
			}
		} 
	}
}

function onAttack_BurnAtThestake(obj, damager, boundingBox, isStuck)
{
	if(!obj || isStuck) return false;
	if(!damager.isObjectType(OBJECTTYPE_ACTIVE)) return false;
	if(isSameObject(obj, damager)) return false;
	damager = sq_GetCNRDObjectToActiveObject(damager);
	local substate = obj.getSkillSubState();
	local append = "character/atpriest/judge/burnatthestake/ap_hestakedummy.nut";
	switch(substate)
	{
		case 1:
			if(sq_IsHoldable(obj,damager) && sq_IsGrabable(obj,damager) && !sq_IsFixture(damager))
			{
				obj.getVar("hestakedummy").push_obj_vector(damager);
				local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, append, true);
				if(appendage)
				{
					sq_HoldAndDelayDie(damager, obj, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL, appendage);
					sq_MoveToAppendageForce(damager, obj, obj, 70, 1, 50, 260, true, appendage,true);
					appendage.getAppendageInfo().setValidTime(10000);
				}
			}
		break;
		case 4:
			
			local sq_var = obj.getVar("hestakedummy");
			local objectsSize = sq_var.get_obj_vector_size();
			for (local i = 0; i < objectsSize; ++i) {
				local targetObj = sq_var.get_obj_vector(i);
				local appendage = CNSquirrelAppendage.sq_GetAppendage(targetObj, append);
				if (appendage) {
					sq_HoldAndDelayDie(targetObj, obj, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL, appendage);
					sq_MoveToAppendageForce(targetObj, obj, obj, 0, 2, 100, 120, true, appendage,true);
				}
			}
		break;
	}
	
	if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/judge/burnatthestake/ap_burnatthestake.nut"))
	{
		return;
	}
	if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/atpriest/judge/essenceofphlege/ap_essenceofphlegeex.nut"))
	{
		return;
	}
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, "character/atpriest/judge/burnatthestake/ap_burnatthestake.nut", true);
	CNSquirrelAppendage.sq_AppendAppendageID(appendage, damager, obj, APID_RESONANCE, false);
}

function onProc_BurnAtThestake(obj)
{
	if(!obj) return;
	local substate = obj.getSkillSubState();
	if(substate == 6)
	{
		ATPriestDetonateEssenceWithoutDistance(obj);
	}
	else
	{
		ATPriestDetonateEssence(obj, obj, 0);
	}
}

function onKeyFrameFlag_BurnAtThestake(obj,flagIndex)
{
	if(!obj)
		return false;

	if (flagIndex == 1)
	{
		local PosX = sq_GetXPos(obj);
		local PosY = sq_GetYPos(obj);
		local PosZ = sq_GetZPos(obj);
		
		obj.sq_SetShake(obj,3,300);
		
		sq_SendCreatePassiveObjectPacketPos(obj,250229, 0, PosX, PosY+1, 0);
		sq_SendCreatePassiveObjectPacketPos(obj,250230, 0, PosX, PosY+1, 0);
		
		//obj.sq_SendCreatePassiveObjectPacket(250229, 0, 0, 1, 0);
		//obj.sq_SendCreatePassiveObjectPacket(250230, 0, 0, 1, 0);
		
		sq_flashScreen(obj, 80, 120, 80, 255, sq_RGB(0,0,0), ENUM_DRAWLAYER_CONTACT, ENUM_DRAWLAYER_NORMAL);
	}
	else if (flagIndex == 2)
	{
		sq_flashScreen(obj, 40, 80, 40, 255, sq_RGB(255,255,255), ENUM_DRAWLAYER_CONTACT, ENUM_DRAWLAYER_NORMAL);
	}
	return true;
}

function onEndCurrentAni_BurnAtThestake(obj)
{
	if(!obj) return;
	local substate = obj.getSkillSubState();

	if(substate == 0)
	{
		obj.getVar().clear_vector();
		obj.getVar().push_vector(1);
		obj.sq_AddSetStatePacket(STATE_BURNATTHESTAKE ,STATE_PRIORITY_USER, true);
	}
	else if(substate == 1)
	{
		obj.getVar().clear_vector();
		obj.getVar().push_vector(2);
		obj.sq_AddSetStatePacket(STATE_BURNATTHESTAKE, STATE_PRIORITY_USER, true);
	}
	else if(substate == 2)
	{
		obj.getVar().clear_vector();
		obj.getVar().push_vector(3);
		obj.sq_AddSetStatePacket(STATE_BURNATTHESTAKE, STATE_PRIORITY_USER, true);
	}
	else if(substate == 3)
	{
		obj.getVar().clear_vector();
		obj.getVar().push_vector(4);
		obj.sq_AddSetStatePacket(STATE_BURNATTHESTAKE, STATE_PRIORITY_USER, true);
	}
	else if(substate == 4)
	{
		obj.getVar().clear_vector();
		obj.getVar().push_vector(5);
		obj.sq_AddSetStatePacket(STATE_BURNATTHESTAKE, STATE_PRIORITY_USER, true);
	}
	else if(substate == 5)
	{
		obj.getVar().clear_vector();
		obj.getVar().push_vector(6);
		obj.sq_AddSetStatePacket(STATE_BURNATTHESTAKE, STATE_PRIORITY_USER, true);
	}
	else if(substate == 6)
	{
		obj.setEnableDamageBox(1);
		obj.sq_IntVectClear();
		obj.getVar().clear_vector();
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function onEndState_BurnAtThestake(obj, new_state) {
	if(!obj) return;
	if (new_state != STATE_BURNATTHESTAKE) {
		obj.setEnableDamageBox(1);
		local sq_var = obj.getVar("hestakedummy");
		local append = "character/atpriest/judge/burnatthestake/ap_hestakedummy.nut";
		local objectsSize = sq_var.get_obj_vector_size();
		for (local i = 0; i < objectsSize; ++i) {
			local damager = sq_var.get_obj_vector(i);
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append)) {
				CNSquirrelAppendage.sq_RemoveAppendage(damager, append);
			}
		}
	}
}

   