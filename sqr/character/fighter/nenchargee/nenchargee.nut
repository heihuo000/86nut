

function checkExecutableSkill_NenChargee(obj)
{
	if (!obj) return false;

	local isUse = obj.sq_IsUseSkill(SKILL_NENCHARGEE);
	if (isUse) {
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(0);
		obj.sq_IsEnterSkillLastKeyUnits(SKILL_NENCHARGEE);
		obj.sq_AddSetStatePacket(STATE_NENCHARGEE, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_NenChargee(obj)
{
	return true;
}

function onSetState_NenChargee(obj, state, datas, isResetTimer)
{	
	local state = obj.getVar("state").get_vector(0);
	local SkilLv = sq_GetSkillLevel(obj , SKILL_NENCHARGEE);
	local Casttime = sq_GetCastTime(obj , SKILL_NENCHARGEE , SkilLv);
	
	if(state == 0)
	{
		obj.sq_StopMove();
		obj.getVar("isOk").clear_vector();
		obj.getVar("isOk").push_vector(0);
		obj.getVar("isEnd").clear_vector();
		obj.getVar("isEnd").push_vector(0);
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_NENPRISON_LOOP_BODY);
		sq_StartDrawCastGauge(obj , Casttime , true);
		obj.setTimeEvent(0, obj.sq_GetIntData(SKILL_NENCHARGEE,0), 1, false);		
		obj.setTimeEvent(1, obj.sq_GetIntData(SKILL_NENCHARGEE,1), 1, false);
	}
	if(state == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_NENPRISON_SHOT_BODY);

		local id = sq_GetObjectId(obj);

		local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_NENCHARGEE, STATE_NENCHARGEE, 0, 1.0);

		obj.sq_StartWrite();
		obj.sq_WriteDword(9);
		obj.sq_WriteDword(id);
		obj.sq_WriteDword(attackBonusRate);
		obj.sq_SendCreatePassiveObjectPacket(24397, 0, 0, 0, 60);
	}
}

function onTimeEvent_NenChargee(obj, timeEventIndex, timeEventCount)
{
	local state = obj.getVar("state").get_vector(0);
	if (state == 0)
	{
		if (timeEventIndex == 0)
		{
			obj.getVar("isOk").clear_vector();
			obj.getVar("isOk").push_vector(1);
		}
		if (timeEventIndex == 1)
		{
			obj.getVar("state").clear_vector();
			obj.getVar("state").push_vector(1);
			obj.sq_AddSetStatePacket(STATE_NENCHARGEE, STATE_PRIORITY_USER, true);
		}
	}
}

function onProc_NenChargee(obj)
{
	local state = obj.getVar("state").get_vector(0);
	
	if (state == 0)
	{
		if(obj.isDownSkillLastKey())
		{
			pass;

		}else{
					obj.getVar("state").clear_vector();
					obj.getVar("state").push_vector(1);
					obj.sq_AddSetStatePacket(STATE_NENCHARGEE, STATE_PRIORITY_USER, true);
		}
	}
	
}

function onEndCurrentAni_NenChargee(obj)
{
//xieguangzhan_24397(obj);
	local state = obj.getVar("state").get_vector(0);
	if(state == 0)
	{
		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(1);
		obj.sq_AddSetStatePacket(STATE_NENCHARGEE, STATE_PRIORITY_USER, true);
	}
	if(state == 1)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
	}
}











function xieguangzhan_24397(obj)
{
	//23020
	local count = obj.getMyPassiveObjectCount(24397);
	for(local i=0;i<count;++i)
	{
		local object = obj.getMyPassiveObject(24397, i);
		if(!object) continue;
		if(!object.getVar("isLimit").getBool(0))
		{
			object.getVar("isLimit").setBool(0,true);

			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, object, 55, false, "Character/ATMage/DarknessMantle/ap_ATDarknessMantle_suck.nut", false);

			local range = 300;
			local suckVel = 300;
			if(appendage)
			{
				CNSquirrelAppendage.sq_Append(appendage, obj, object);
				local auraAppendage = appendage.sq_getAuraMaster("auraMaster");
				if(!auraAppendage)
					auraAppendage = appendage.sq_AddAuraMaster("auraMaster", obj, object, 1200, 18, 5, 0);
				if(auraAppendage)
					auraAppendage.setAttractionInfo(suckVel, suckVel, range, 100);
			}
		}
	}
}

ADDEXTRANUT <- 0 