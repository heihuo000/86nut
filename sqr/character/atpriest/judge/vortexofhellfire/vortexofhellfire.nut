
function checkExecutableSkill_vortexofhellfire(obj)
{
	if(!obj)
		return false;

	local isUse = obj.sq_IsUseSkill(SKILL_VORTEXOFHELLFIRE);
	if (isUse)
	{
		obj.sq_IntVectClear();
		obj.getVar().clear_vector();
		obj.getVar().push_vector(0);
		obj.sq_AddSetStatePacket(STATE_VORTEXOFHELLFIRE, STATE_PRIORITY_USER, false);
		return true;
	}
	return false;
}


function checkCommandEnable_vortexofhellfire(obj)
{
	if (!obj)
		return false;
	return true;
}

function onSetState_VortExOfHellFire(obj, state, datas, isResetTimer)
{
	if(!obj)
		return false;
	
	local substate = obj.getVar().get_vector(0); 
	obj.setSkillSubState(substate);
	obj.sq_StopMove();
	local speed = 1000;
	local speedMax = obj.sq_GetIntData(SKILL_VORTEXOFHELLFIRE, 2);
	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(ANI_VortExOfHellFireBodyReady_00);
		obj.getVar("VortExOfHellFire").clear_vector(); 
		obj.getVar("VortExOfHellFire").push_vector(obj.sq_GetIntData(SKILL_VORTEXOFHELLFIRE, 0)); 
		obj.getVar("VortExOfHellFire").push_vector(obj.sq_GetIntData(SKILL_VORTEXOFHELLFIRE, 1)); 
		obj.getVar("VortExOfHellFire").push_vector(obj.sq_GetIntData(SKILL_VORTEXOFHELLFIRE, 2)); 
		obj.getVar("VortExOfHellFire").push_vector(obj.sq_GetIntData(SKILL_VORTEXOFHELLFIRE, 3));
		obj.getVar("VortExOfHellFire").push_vector(0);
		obj.getVar("VortExOfHellFire").setInt(0, 0);
	}
	else if(substate == 1)
	{
		speed = obj.getVar("VortExOfHellFire").get_vector(0);
		speedMax = obj.getVar("VortExOfHellFire").get_vector(2);
		
		if(isHolyFlame(obj))
		{
			obj.sq_SetCurrentAnimation(ANI_VortExOfHellFireBodyLoop_00_HolyFrame);
			obj.sq_PlaySound("VORTEX_HELL_FIRE_SPIN_FLAME");
			
			obj.sq_SetCurrentAttackInfo(ATK_VortExOfHellFireLoop_holyframe);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_VORTEXOFHELLFIRE , -1, 0, 1.0);
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
			obj.sq_SetCurrentAnimation(ANI_VortExOfHellFireBodyLoop_00);
			obj.sq_PlaySound("VORTEX_HELL_FIRE_SPIN");
			
			obj.sq_SetCurrentAttackInfo(ATK_VortExOfHellFireLoop);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_VORTEXOFHELLFIRE , -1, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
		}
		//local move = obj.getVar("move_VortExOfHellFire").get_vector(0);
		//local damage = obj.getVar("move_VortExOfHellFire").get_vector(1);
		//obj.sq_SetStaticMoveInfo(0, move + 150, -1300, false);
		//obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);

	}
	else if(substate == 2)
	{

		if(isHolyFlame(obj))
		{
			obj.sq_SetCurrentAnimation(ANI_VortExOfHellFireBodyEnd_00_HolyFrame);
			obj.sq_PlaySound("VORTEX_HELL_FIRE_FINISH_FLAME");
			obj.sq_PlaySound("PW_VORTEX_HELL_FIRE");
			
			obj.sq_SetCurrentAttackInfo(ATK_VortExOfHellFireEnd_holyframe);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_VORTEXOFHELLFIRE , -1, 1, 1.0);
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
			obj.sq_SetCurrentAnimation(ANI_VortExOfHellFireBodyEnd_00);
			obj.sq_PlaySound("VORTEX_HELL_FIRE_FINISH");
			obj.sq_PlaySound("PW_VORTEX_HELL_FIRE");
			
			obj.sq_SetCurrentAttackInfo(ATK_VortExOfHellFireEnd);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_VORTEXOFHELLFIRE , -1, 1, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
		}
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, speed, speed, 1.0, 1.0);
}

function onProc_VortExOfHellFire(obj)
{
	if(!obj) return;
	if(isHolyFlame(obj)){
		ATPriestDetonateEssence(obj, obj, 0);
	}
}

function onProcCon_VortExOfHellFire(obj)
{
	local substate = obj.getSkillSubState();

	if(substate == 1)
	{
		if(sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL))
		{
			obj.sq_IntVectClear();
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}
		local iX = obj.getXPos();
		local iY = obj.getYPos();
		/*local pAni = obj.getCurrentAnimation();
		local frmIndex = sq_GetAnimationFrameIndex(pAni);*/
		local xMove = 0;
		local yMove = 0;
		obj.setSkillCommandEnable(SKILL_VORTEXOFHELLFIRE ,  true);
		local iEnterSkill = obj.sq_IsEnterSkill(SKILL_VORTEXOFHELLFIRE);
		if(iEnterSkill != -1 || sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL) ){
			obj.getVar("VortExOfHellFire").setInt(0,obj.getVar("VortExOfHellFire").getInt(0) + 1); 
		}
		if (sq_IsKeyDown(0, ENUM_SUBKEY_TYPE_ALL))
		{
			yMove = -1;
		}
		else if (sq_IsKeyDown(2, ENUM_SUBKEY_TYPE_ALL))
		{
			yMove = 1;
		}
		
		if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL))
		{
			xMove = -2;
		}
		else if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
		{
			xMove = 2;
		}
		sq_MoveToNearMovablePos(obj,iX + xMove,iY + yMove, 0, iX, iY, 0, 4, -1, 3);
		/*local pAni = obj.getCurrentAnimation();//啮踝萧啮踝萧ani
		local currentT = sq_GetCurrentTime(pAni);//啮踝萧啮踝萧啮踝萧啮踝萧
		local fireT = pAni.getDelaySum(0, 0);//啮踝萧啮踝萧啮踝萧
		local totalT = fireT*13;
		
		if(currentT >= totalT)
		{
			obj.sq_IntVectClear();
			obj.getVar().clear_vector();
			obj.getVar().push_vector(1);
			obj.sq_AddSetStatePacket(STATE_VORTEXOFHELLFIRE, STATE_PRIORITY_USER, true);
		}*/
	}
}

function onKeyFrameFlag_VortExOfHellFire(obj,flagIndex)
{
	if(!obj)
		return false;

	if (flagIndex == 1)
	{
		if(isHolyFlame(obj))
		{
			sq_AddDrawOnlyAniFromParent(obj,"character/priest/atanimation/holyflameweaponeffect/vortexofhellfirebodyready_00.ani", 0, 0, 0);
		}
	}
	else if (flagIndex == 2)
	{
		sq_AddDrawOnlyAniFromParent(obj,"character/priest/atanimation/holyflameweaponeffect/vortexofhellfirebodyloop_00_holyframe.ani", 0, 0, 0);
	}
	else if (flagIndex == 3)
	{
		sq_AddDrawOnlyAniFromParent(obj,"character/priest/atanimation/holyflameweaponeffect/vortexofhellfirebodyend_00_holyframe.ani", 0, 0, 0);
	}
	else if (flagIndex == 4)
	{
		obj.sq_SetShake(obj,3,200);
	}
	return true;
}


function onEndCurrentAni_VortExOfHellFire(obj)
{
	local substate = obj.getSkillSubState();

	if(substate == 0)
	{
		obj.sq_IntVectClear();
		obj.getVar().clear_vector();
		obj.getVar().push_vector(1);
		obj.sq_AddSetStatePacket(STATE_VORTEXOFHELLFIRE ,STATE_PRIORITY_USER, true);
	}
	else if(substate == 1)
	{
		local speed = obj.getVar("VortExOfHellFire").get_vector(0);
		local count = obj.getVar("VortExOfHellFire").get_vector(1);
		local speedMax = obj.getVar("VortExOfHellFire").get_vector(2);
		local countMax = obj.getVar("VortExOfHellFire").get_vector(3);
		local time = obj.getVar("VortExOfHellFire").get_vector(4);
		if(count>0)
		{
			count = count - 1;
			countMax = countMax - 1;
			if((obj.getVar("VortExOfHellFire").getInt(0)>time) && (speed < speedMax))
			{
				speed = speed + 1000;
			}
			obj.getVar("VortExOfHellFire").clear_vector(); 
			obj.getVar("VortExOfHellFire").push_vector(speed); 
			obj.getVar("VortExOfHellFire").push_vector(count); 
			obj.getVar("VortExOfHellFire").push_vector(speedMax); 
			obj.getVar("VortExOfHellFire").push_vector(countMax);
			obj.getVar("VortExOfHellFire").push_vector(time + 1);
			
			obj.sq_IntVectClear();
			obj.getVar().clear_vector();
			obj.getVar().push_vector(1);
			obj.sq_AddSetStatePacket(STATE_VORTEXOFHELLFIRE ,STATE_PRIORITY_USER, true);

		}
		else if(countMax > 0 && (obj.getVar("VortExOfHellFire").getInt(0)>time) )
		{
			countMax = countMax - 1;
			if(speed < speedMax)
			{
				speed = speed + 1000;
			}
			obj.getVar("VortExOfHellFire").clear_vector(); 
			obj.getVar("VortExOfHellFire").push_vector(speed); 
			obj.getVar("VortExOfHellFire").push_vector(0); 
			obj.getVar("VortExOfHellFire").push_vector(speedMax); 
			obj.getVar("VortExOfHellFire").push_vector(countMax);
			obj.getVar("VortExOfHellFire").push_vector(time + 1);
			
			obj.sq_IntVectClear();
			obj.getVar().clear_vector();
			obj.getVar().push_vector(1);
			obj.sq_AddSetStatePacket(STATE_VORTEXOFHELLFIRE ,STATE_PRIORITY_USER, true);
		}
		else{
			obj.sq_IntVectClear();
			obj.getVar().clear_vector();
			obj.getVar().push_vector(2);
			obj.sq_AddSetStatePacket(STATE_VORTEXOFHELLFIRE ,STATE_PRIORITY_USER, true);
		}
	}
	else if(substate == 2)
	{
		obj.sq_IntVectClear();
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function onAttack_VortExOfHellFire(obj, damager, boundingBox, isStuck)
{
	if(!obj || isStuck)
		return;
	damager = sq_GetCNRDObjectToActiveObject(damager);
	if(damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(obj, damager) && isHolyFlame(obj))
	{
		local append = "character/atpriest/judge/vortexofhellfire/ap_vortexofhellfireholyflame.nut";
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

function onEndState_VortExOfHellFire(obj, newState)
{
	if(!obj) return;
	if(newState == STATE_VORTEXOFHELLFIRE) return;
	if(isHolyFlame(obj))
	{
		useHolyFlame(obj,1);
	}
}