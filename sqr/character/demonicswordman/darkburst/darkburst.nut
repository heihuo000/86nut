
function checkExecutableSkill_DarkBurst(obj)
{
	if (!obj) return false;
	
	local isUse = obj.sq_IsUseSkill(SKILL_DARKBURST);

	if (isUse)
	{
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(0);
		obj.sq_AddSetStatePacket(STATE_DARKBURST, STATE_PRIORITY_USER, false);
		return true;
	}
	return false;
}

function checkCommandEnable_DarkBurst(obj)
{
	return true;
}

function onSetState_DarkBurst(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	
	local state = obj.getVar("state").get_vector(0);
	
	local id = sq_GetObjectId(obj);
	
	obj.sq_StopMove();
	
	if(state == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DARKBURST_READY_BODY);
		obj.sq_AddStateLayerAnimation(0, obj.sq_CreateCNRDAnimation("Effect/Animation/DarkBurst_DS/1_Ready/Back/DarkBurst_Ready_Back.ani"), 0, 0);
		obj.sq_AddStateLayerAnimation(0, obj.sq_CreateCNRDAnimation("Effect/Animation/DarkBurst_DS/1_Ready/Front/DarkBurst_Ready_Front.ani"), 0, 0);
	}
	if(state == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DARKBURST_SWING_BODY);
		
		obj.sq_AddStateLayerAnimation(0, obj.sq_CreateCNRDAnimation("Effect/Animation/DarkBurst_DS/2_Swing/Back/DarkBurst_Swing_Back.ani"), 0, 0);
		obj.sq_AddStateLayerAnimation(0, obj.sq_CreateCNRDAnimation("Effect/Animation/DarkBurst_DS/2_Swing/Front/DarkBurst_Swing_Front.ani"), 0, 0);
		
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_DARKBURSTPUSH);
		
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_DARKBURST, STATE_DARKBURST, 0, 0.1);
		obj.sq_SetCurrentAttackBonusRate(damage);
	}
	if(state == 2)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DARKBURST_SMASH_BODY);
		obj.sq_AddStateLayerAnimation(0, obj.sq_CreateCNRDAnimation("Effect/Animation/DarkBurst_DS/3_Smash/Back/DarkBurst_Smash_Back.ani"), 0, 0);
		obj.sq_AddStateLayerAnimation(0, obj.sq_CreateCNRDAnimation("Effect/Animation/DarkBurst_DS/3_Smash/Front/DarkBurst_Smash_Blade01.ani"), 0, 0);
		obj.sq_AddStateLayerAnimation(0, obj.sq_CreateCNRDAnimation("Effect/Animation/DarkBurst_DS/DarkBurst_Smash_Back_ScreenGlow.ani"), 0, 0);
	
		local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_DARKBURST, STATE_DARKBURST, 0, 1.0);
		
		obj.sq_StartWrite();
		obj.sq_WriteDword(8);
		obj.sq_WriteDword(id);
		obj.sq_WriteDword(attackBonusRate);
		obj.sq_SendCreatePassiveObjectPacket(24338, 0, 0, 0, 0);
	}
	if(state == 3)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DARKBURST_FINISH_BODY);
		obj.sq_AddStateLayerAnimation(0, obj.sq_CreateCNRDAnimation("Effect/Animation/DarkBurst_DS/4_Finish/DarkBurst_Finish_Front_Glow01.ani"), 0, 0);
		obj.sq_AddStateLayerAnimation(0, obj.sq_CreateCNRDAnimation("Effect/Animation/DarkBurst_DS/4_Finish/DarkBurst_Finish_Front_Glow02.ani"), 0, 0);
	}	
}

function onEndCurrentAni_DarkBurst(obj)
{
	local state = obj.getVar("state").get_vector(0);
	
	if (state == 0)
	{
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(1);
		obj.sq_AddSetStatePacket(STATE_DARKBURST, STATE_PRIORITY_USER, false);
	}
	if (state == 1)
	{
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(2);
		obj.sq_AddSetStatePacket(STATE_DARKBURST, STATE_PRIORITY_USER, false);
	}
	if (state == 2)
	{
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(3);
		obj.sq_AddSetStatePacket(STATE_DARKBURST, STATE_PRIORITY_USER, false);
	}
	if (state == 3)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function onKeyFrameFlag_DarkBurst(obj,flagIndex)
{
	local state = obj.getVar("state").get_vector(0);
	
	local id = sq_GetObjectId(obj);
	
	if (state == 1)
	{
		if (flagIndex == 0)
		{
			obj.sq_StartWrite();
			obj.sq_WriteDword(9);
			obj.sq_WriteDword(id);
			obj.sq_SendCreatePassiveObjectPacket(24338, 0, 0, 0, 0);
		}
	}
	return true;
}
