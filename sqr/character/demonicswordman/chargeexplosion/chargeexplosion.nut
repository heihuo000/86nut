
function checkExecutableSkill_ChargeExplosion(obj)
{
	if (!obj) return false;
	
	local isUse = obj.sq_IsUseSkill(SKILL_CHARGEEXPLOSION);

	if (isUse)
	{
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(0);
		obj.sq_AddSetStatePacket(STATE_CHARGEEXPLOSION, STATE_PRIORITY_USER, false);
		return true;
	}
	return false;
}

function checkCommandEnable_ChargeExplosion(obj)
{
	return true;
}

function onSetState_ChargeExplosion(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	
	local state = obj.getVar("state").get_vector(0);
	
	obj.sq_StopMove();
	
	if(state == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_CHARGEEXPLOSIONDASH01);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_CHARGEEXPLOSIONATTACK1);
		
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_CHARGEEXPLOSION, STATE_CHARGEEXPLOSION, 0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
		obj.sq_AddStateLayerAnimation(0, obj.sq_CreateCNRDAnimation("Effect/Animation/ChargeExplosion_DS/Move03.ani"), 0, 0);
		
		local len = 400;
		local ani = obj.sq_GetCurrentAni();
		local delay = ani.getDelaySum(false);

		obj.getVar("len").clear_vector();
		obj.getVar("len").push_vector(len);//0
		obj.getVar("len").push_vector(delay);//1
		obj.getVar("len").push_vector(obj.getXPos() );//2
	}
	if(state == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_CHARGEEXPLOSIONDASH02);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_CHARGEEXPLOSIONATTACK2);
		
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_CHARGEEXPLOSION, STATE_CHARGEEXPLOSION, 1, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
		obj.sq_AddStateLayerAnimation(0, obj.sq_CreateCNRDAnimation("Effect/Animation/ChargeExplosion_DS/Move03.ani"), 0, 0);
		obj.sq_SetCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));
		
		local len = 400;
		local ani = obj.sq_GetCurrentAni();
		local delay = ani.getDelaySum(false);

		obj.getVar("len").clear_vector();
		obj.getVar("len").push_vector(len);//0
		obj.getVar("len").push_vector(delay);//1
		obj.getVar("len").push_vector(obj.getXPos() );//2
	}
	if(state == 2)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_CHARGEEXPLOSIONUPPER);
		obj.sq_SetCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));
	}	
}

function onAttack_ChargeExplosion(obj, damager, boundingBox, isStuck)
{
	local state = obj.getVar("state").get_vector(0);
	
	if (state == 1)
	{
		local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, SKILL_CHARGEEXPLOSION, false, "character/demonicswordman/chargeexplosion/ap_chargeexplosion.nut", true);
		
		if(masterAppendage) 
		{
			sq_HoldAndDelayDie(damager, obj, true, true, true, 0, 300, ENUM_DIRECTION_NEUTRAL , masterAppendage);
			masterAppendage.sq_SetValidTime(obj.sq_GetIntData(SKILL_CHARGEEXPLOSION, 0));
		}
	}
}

function onProc_ChargeExplosion(obj)
{
	local state = obj.getVar("state").get_vector(0);
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);

	if (state == 0)	//根據len進行位移
	{
		local posX = obj.getVar("len").get_vector(2);
		local delayT = obj.getVar("len").get_vector(1);
		local len = obj.getVar("len").get_vector(0);

		local v = sq_GetAccel(0, len, currentT, delayT, true);
		local srcX = posX;
		
		local dstX = sq_GetDistancePos(srcX, obj.getDirection(), v);
		 
		if(obj.isMovablePos(dstX, obj.getYPos() ))
		{
			sq_setCurrentAxisPos(obj, 0, dstX);	//進行位移
		}
	}
	if (state == 1)	//根據len進行位移
	{
		local posX = obj.getVar("len").get_vector(2);
		local delayT = obj.getVar("len").get_vector(1);
		local len = obj.getVar("len").get_vector(0);

		local v = sq_GetAccel(0, len, currentT, delayT, true);
		local srcX = posX;
		
		local dstX = sq_GetDistancePos(srcX, obj.getDirection(), v);
		 
		if(obj.isMovablePos(dstX, obj.getYPos() ))
		{
			sq_setCurrentAxisPos(obj, 0, dstX);	//進行位移
		}
	}
}

function onEndCurrentAni_ChargeExplosion(obj)
{
	local state = obj.getVar("state").get_vector(0);
	
	if (state == 0)
	{
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(1);
		obj.sq_AddSetStatePacket(STATE_CHARGEEXPLOSION, STATE_PRIORITY_USER, false);
	}
	if (state == 1)
	{
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(2);
		obj.sq_AddSetStatePacket(STATE_CHARGEEXPLOSION, STATE_PRIORITY_USER, false);
	}
	if (state == 2)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function onKeyFrameFlag_ChargeExplosion(obj,flagIndex)
{
	local state = obj.getVar("state").get_vector(0);
	
	local id = sq_GetObjectId(obj);
	
	if (state == 2)
	{
		local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_CHARGEEXPLOSION, STATE_CHARGEEXPLOSION, 2, 1.0);
		
		if (flagIndex == 0)
		{
			obj.sq_StartWrite();
			obj.sq_WriteDword(10);
			obj.sq_WriteDword(id);
			obj.sq_WriteDword(attackBonusRate);
			obj.sq_SendCreatePassiveObjectPacket(24338, 0, 0, 0, 50);
		
			obj.sq_StartWrite();
			obj.sq_WriteDword(11);
			obj.sq_WriteDword(id);
			obj.sq_SendCreatePassiveObjectPacket(24338, 0, 0, 0, 50);
		}
	}
	return true;
}
