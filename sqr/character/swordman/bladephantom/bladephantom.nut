function checkExecutableSkill_swordman_bladephantom(obj)
{
	if(!obj) return false;

	
	local magicBall = onGetMyPassiveObject_My(obj, 24370, 239, 1);
	if(magicBall)
	{
		if(magicBall.getState() == PASSIVEOBJ_SUB_STATE_1)
			magicBall.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2, null, STATE_PRIORITY_AUTO, false, "");
		return false;
	}

	local isUse = obj.sq_IsUseSkill(239);

	if(isUse)
	{
		local state = obj.sq_GetState();
		if (state == 32 || state == 20 || state == 42 || state == 65 || state == 13 || state == 33 || state == 50 || state == 237 || state == 238 || state == 240 || state == 241)
		{
			addObject_swordman_bladephantom(obj,getGhostSoulRelease_Area_Distance(obj,state),obj.getYPos() + 1,0);
		}
		else
		{
			obj.sq_AddSetStatePacket(STATE_SWORDMAN_BLADEPHANTOM, STATE_PRIORITY_USER, false);
			return true;
		}
	}

	return false;
}


function checkCommandEnable_swordman_bladephantom(obj)
{
	if(!obj) return false;

	local state = obj.sq_GetState();

	if(state == STATE_STAND)
		return true;

	if(state == STATE_ATTACK)
	{
		return obj.sq_IsCommandEnable(SKILL_SWORDMAN_BLADEPHANTOM); 
	}

	return true;
}

function addObject_swordman_bladephantom(obj,x,y,z)
{
	if(obj.sq_IsMyControlObject())
	{
		local skill_level = sq_GetSkillLevel(obj, SKILL_SWORDMAN_BLADEPHANTOM);

		local Px = 240;
		local yPx = 70;

		local RangePx = sq_GetLevelData(obj, SKILL_SWORDMAN_BLADEPHANTOM, 5, skill_level);
		local Rate = RangePx.tofloat() / Px.tofloat();
		local SizeRate = (Rate * 100.0).tointeger();
		local yPos = (yPx.tofloat() * Rate).tointeger();

		
		obj.sq_StartWrite();
		obj.sq_WriteDword(SKILL_SWORDMAN_BLADEPHANTOM);
		obj.sq_WriteDword(1);
		obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(SKILL_SWORDMAN_BLADEPHANTOM, STATE_SWORDMAN_BLADEPHANTOM, 1, 1.0));
		obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(SKILL_SWORDMAN_BLADEPHANTOM, STATE_SWORDMAN_BLADEPHANTOM, 2, 1.0));
		obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(SKILL_SWORDMAN_BLADEPHANTOM, STATE_SWORDMAN_BLADEPHANTOM, 3, 1.0));
		obj.sq_WriteDword(sq_GetLevelData(obj, SKILL_SWORDMAN_BLADEPHANTOM, 4, skill_level));
		obj.sq_WriteDword(RangePx);
		obj.sq_WriteDword(sq_GetLevelData(obj, SKILL_SWORDMAN_BLADEPHANTOM, 6, skill_level));
		obj.sq_WriteDword(SizeRate);
		obj.sq_WriteDword(yPos);
		obj.sq_WriteDword(sq_GetLevelData(obj, SKILL_SWORDMAN_BLADEPHANTOM, 0, skill_level));
		obj.sq_SendCreatePassiveObjectPacket(24370, 0, 125, 0, 0);
	}
	obj.sq_PlaySound("SM_PHANTOMBLADE");
}

function onSetState_swordman_bladephantom(obj, state, datas, isResetTimer)
{
	if(!obj) return;

	obj.sq_StopMove();
	obj.sq_SetCurrentAnimation(CUSTOM_ANI_SWORDMAN_GRAB);

	local delay = (obj.getCurrentAnimation()).getDelaySum(0, 7);
	sq_StartDrawCastGauge(obj, delay, true);

	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onKeyFrameFlag_swordman_bladephantom(yM_GsV7BrmV, WFVzbTEymxIXEt1g)
{
 if(!yM_GsV7BrmV) return false;
 if(WFVzbTEymxIXEt1g == 100)
 {
 if(yM_GsV7BrmV.sq_IsMyControlObject())
 {
 local oH6Aol4DqkyWGgGAWNkD = sq_GetSkillLevel(yM_GsV7BrmV, 239); 
 local taDEmEo6e7 = 240; 
 local Dr3AKIraLOdedYD5Z90uQEO = 70; 
 local Qs7AJFUNpsL = sq_GetLevelData(yM_GsV7BrmV, 239, 5, oH6Aol4DqkyWGgGAWNkD); 
 local l4XXS6CpP7hNFvhNwK = Qs7AJFUNpsL.tofloat() / taDEmEo6e7.tofloat(); 
 local uvMtvmxc51hZ1D = (l4XXS6CpP7hNFvhNwK * 100.0).tointeger(); 
 local FHy6vxIhsgV9 = (Dr3AKIraLOdedYD5Z90uQEO.tofloat() * l4XXS6CpP7hNFvhNwK).tointeger(); 
 
 yM_GsV7BrmV.sq_StartWrite();
 yM_GsV7BrmV.sq_WriteDword(239); 
 yM_GsV7BrmV.sq_WriteDword(1); 
 yM_GsV7BrmV.sq_WriteDword(yM_GsV7BrmV.sq_GetBonusRateWithPassive(239, 239, 1, 1.0)); 
 yM_GsV7BrmV.sq_WriteDword(yM_GsV7BrmV.sq_GetBonusRateWithPassive(239, 239, 2, 1.0)); 
 yM_GsV7BrmV.sq_WriteDword(yM_GsV7BrmV.sq_GetBonusRateWithPassive(239, 239, 3, 1.0)); 
 yM_GsV7BrmV.sq_WriteDword(sq_GetLevelData(yM_GsV7BrmV, 239, 4, oH6Aol4DqkyWGgGAWNkD)); 
 yM_GsV7BrmV.sq_WriteDword(Qs7AJFUNpsL); 
 yM_GsV7BrmV.sq_WriteDword(sq_GetLevelData(yM_GsV7BrmV, 239, 6, oH6Aol4DqkyWGgGAWNkD)); 
 yM_GsV7BrmV.sq_WriteDword(uvMtvmxc51hZ1D); 
 yM_GsV7BrmV.sq_WriteDword(FHy6vxIhsgV9); 
 yM_GsV7BrmV.sq_WriteDword(sq_GetLevelData(yM_GsV7BrmV, 239, 0, oH6Aol4DqkyWGgGAWNkD)); 
 yM_GsV7BrmV.sq_SendCreatePassiveObjectPacket(24370, 0, 125, 0, 0); 
 }
 yM_GsV7BrmV.sq_PlaySound("SM_PHANTOMBLADE"); 
 }
 return true;
} ;


function onEndCurrentAni_swordman_bladephantom(obj)
{
	if(!obj) return;
	if(!obj.sq_IsMyControlObject()) return;
	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}

function onEndState_swordman_bladephantom(obj, new_state)
{
	if(!obj) return;

	if(new_state != STATE_SWORDMAN_BLADEPHANTOM)
	{
		sq_EndDrawCastGauge(obj);
	}
}

