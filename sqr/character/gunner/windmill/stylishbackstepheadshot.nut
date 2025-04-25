
function onProcCon_step_headshot(obj)
{
	if (!obj) return;

	if(obj.sq_GetState() == 169)
	{
		if(obj.getZPos()==0 )
		{
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}
	}
}

function onSetState_step_headshot(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	local substate = obj.getVar().get_vector(0);

	obj.setSkillSubState(substate);
	
	local attackBonusRate =  obj.sq_GetBonusRateWithPassive(5, -1, 0, 1.0);
	obj.getVar().clear_vector(); 
	obj.getVar().push_vector(substate); 
	obj.getVar().push_vector(attackBonusRate); 
	
	obj.sq_StopMove();
	obj.sq_PlaySound("R_GN_HEAD_SHOT");
	obj.sq_SetCurrentAnimation(159);
	return;
	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(160);
		obj.sq_SetStaticMoveInfo(0, -400, -500, false);
		obj.sq_SetStaticMoveInfo(1, 0, 0, false);
		sq_SetZVelocity(obj, 300, 800);
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
	}
	if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_GUNNER_DEADLYAPPROACH_AIR_BODY);
		obj.sq_SetStaticMoveInfo(0, -200, -300, false);
		obj.sq_SetStaticMoveInfo(1, 0, 0, false);
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
	}	
	if(substate == 2)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_GUNNER_DEADLYAPPROACH_FALL_BODY);
	}
	else if(substate == 3)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_GUNNER_DEADLYAPPROACH_END_BODY);
	}	
}

function onEnterFrame_step_headshot(obj, frameIndex)
{

	if(frameIndex == 0)
	{
		
		obj.sq_SetStaticMoveInfo(0, -400, -500, false);
		obj.sq_SetStaticMoveInfo(1, 0, 0, false);
		sq_SetZVelocity(obj, 300, 300);
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
	}
	if(frameIndex == 5)
	{
		obj.sq_SetStaticMoveInfo(0, -500, -500, false);
		obj.sq_SetStaticMoveInfo(1, 0, 0, false);
		sq_SetZVelocity(obj, -400, -400);
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		local WeaponSubType = obj.getWeaponSubType();
		obj.sq_StartWrite();
		obj.sq_WriteDword(169); 
		obj.sq_WriteDword(obj.getVar().get_vector(1));
		obj.sq_WriteDword(WeaponSubType);
		obj.sq_SendCreatePassiveObjectPacket(24368, 0, -10, -2, 59); 
		if(WeaponSubType == 0)//ñ§×Ç
		{
			local particleCreater = obj.getVar().GetparticleCreaterMap("revolverTail", "character/gunner/particle/hsdownattackrevolver.ptl", obj);
			particleCreater.Restart(0);
			particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),-10),obj.getYPos()-2, obj.getZPos()+60);
			sq_AddParticleObject(obj, particleCreater);
			obj.sq_PlaySound("R_PANING");
		}
		else if(WeaponSubType == 1)//í»ÔÑ
		{
			local particleCreater = obj.getVar().GetparticleCreaterMap("automaticTail", "character/gunner/particle/hsdownattackautomatic.ptl", obj);
			particleCreater.Restart(0);
			particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),-10),obj.getYPos()-2, obj.getZPos()+60);
			sq_AddParticleObject(obj, particleCreater);
		}
		else if(WeaponSubType == 2)//ÜÆóæ
		{
			local particleCreater = obj.getVar().GetparticleCreaterMap("musketTail", "character/gunner/particle/hsdownattackmusket.ptl", obj);
			particleCreater.Restart(0);
			particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),-10),obj.getYPos()-2, obj.getZPos()+60);
			sq_AddParticleObject(obj, particleCreater);
		}
		else if(WeaponSubType == 3)//â¢?
		{
			local particleCreater = obj.getVar().GetparticleCreaterMap("cannonTail", "character/gunner/particle/hsdownattackhandcannon.ptl", obj);
			particleCreater.Restart(0);
			particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),-10),obj.getYPos()-2, obj.getZPos()+60);
			sq_AddParticleObject(obj, particleCreater);
		}
		else if(WeaponSubType == 4)//â¢ÒÀ
		{
			local particleCreater = obj.getVar().GetparticleCreaterMap("bowgunTail", "character/gunner/particle/hsdownattackbowgun.ptl", obj);
			particleCreater.Restart(0);
			particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),-10),obj.getYPos()-2, obj.getZPos()+60);
			sq_AddParticleObject(obj, particleCreater);
		}

	}

}
