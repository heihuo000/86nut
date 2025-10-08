function onSetState_BladeSpirit(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	local subState = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	switch(subState)
	{
		case 44:
			local ani = obj.sq_GetThrowChargeAni(1);
			obj.setCurrentAnimation(ani);
			local skill_level = sq_GetSkillLevel(obj, 44);
			local castTime = sq_GetCastTime(obj, 44, skill_level);
			local animation = sq_GetCurrentAnimation(obj);
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
			local setdelay = animation.getDelaySum(2, 2);
			obj.getVar("throwdelay").clear_vector();
			obj.getVar("throwdelay").push_vector(setdelay);
			if (setdelay != obj.getVar("throwdelay").get_vector(0))
			{
				animation.setFrameDelay(2, setdelay, true);
			}
			local maxTime = castTime - animation.getDelaySum(0, 1);
			animation.setFrameDelay(2, maxTime, true);
			sq_StartDrawCastGauge(obj, castTime, true);
			obj.sq_PlaySound("SM_STONE_SHOWER");
		break;
		case 45:
			local ani = obj.sq_GetThrowShootAni(1);
			obj.setCurrentAnimation(ani);
			obj.sq_StartWrite();
			obj.sq_WriteDword(0);
			obj.sq_SendCreatePassiveObjectPacket(243445, 0, 0, -1, 0);
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.5, 1.5);
			obj.sq_SetSuperArmor(POD_VAR_SUPERARMOR);
		break;
	}
}

function onEndState_BladeSpirit(obj, new_state)
{
	if(!obj) return;
	if(new_state != 101)
	{
		local subState = obj.getSkillSubState();
		if(subState == 44 || subState == 45)
			sq_EndDrawCastGauge(obj);
		if(subState == 45)
			obj.sq_RemoveSuperArmor(POD_VAR_SUPERARMOR);
	}
}

function onEndCurrentAni_BladeSpirit(obj)
{
	if(!obj) return;
	if(!obj.isMyControlObject()) return;
	local subState = obj.getSkillSubState();
	switch(subState)
	{

		case 45:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_IGNORE_FORCE, false);
			obj.sq_RemoveSuperArmor(POD_VAR_SUPERARMOR);
		break;
		case 44:
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(45);
			obj.sq_AddSetStatePacket(101, STATE_PRIORITY_USER, true);//ۡ������
		break;
	}
}