
function checkExecutableSkill_HolyLight(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_HOLY_LIGHT);
	if (isUse)
	{
		local state = obj.sq_GetState();
		if(state == STATE_ARIA_OF_COURAGE || state == STATE_ARIA_OF_REGENERATION)
		{
			addHolyLightBuff(obj);
		}else{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(0);
			obj.sq_AddSetStatePacket(STATE_HOLY_LIGHT, STATE_PRIORITY_IGNORE_FORCE, true);
			return true;
		}
	}
	return false;
}

function checkCommandEnable_HolyLight(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	if (state == STATE_STAND || state == STATE_DASH || state == STATE_ARIA_OF_COURAGE || state == STATE_ARIA_OF_REGENERATION){
		return true;
	}
	else{
		return false;
	}
}

function onSetState_HolyLight(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	if(substate == 0)
	{
		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_HOLY_LIGHT_CAST_BODY);
		sq_StartDrawCastGauge(obj, sq_GetCastTime(obj, SKILL_HOLY_LIGHT, sq_GetSkillLevel(obj, SKILL_HOLY_LIGHT)), true);
		addHolyLightBuff(obj);
	}
	else if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_HOLY_LIGHT_START_BODY);
	}
}

function onEndCurrentAni_HolyLight(obj)
{
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_HOLY_LIGHT, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(substate == 1)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function onEndState_HolyLight(obj, newState) {
	if(!obj)
		return false;
	if(newState != STATE_HOLY_LIGHT)
		sq_EndDrawCastGauge(obj);
}

function addHolyLightBuff(obj) {
	if(!obj) return;
	obj.sq_PlaySound("PW_HOLYLIGHT");
	local skill_level = sq_GetSkillLevel(obj, SKILL_HOLY_LIGHT);
	local time = sq_GetLevelData(obj, SKILL_HOLY_LIGHT, 0, skill_level);
	local value2 = sq_GetLevelData(obj, SKILL_HOLY_LIGHT, 2, skill_level);
	local value3 = sq_GetLevelData(obj, SKILL_HOLY_LIGHT, 3, skill_level);
	local power =  obj.sq_GetPowerWithPassive(SKILL_HOLY_LIGHT, STATE_HOLY_LIGHT, 1, -1,1.0);
	local size = obj.sq_GetIntData(SKILL_HOLY_LIGHT, 6);

/*	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_HOLY_LIGHT, false, "character/atpriest/crusade/holylight/ap_holylight.nut", false);
	appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_HOLY_LIGHT, skill_level);
	CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_HOLY_LIGHT, false);
	appendage.sq_SetValidTime(time);
	appendage.setBuffIconImage(44);*/

	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i += 1) {
		local tar = objectManager.getCollisionObject(i);
		if (tar && tar.isObjectType(OBJECTTYPE_CHARACTER) && !obj.isEnemy(tar)) {
			tar = sq_GetCNRDObjectToSQRCharacter(tar);
			local XPos = sq_Abs(tar.getXPos() - obj.getXPos());
			local YPos = sq_Abs(tar.getYPos() - obj.getYPos());
			if (XPos < (obj.sq_GetIntData(SKILL_HOLY_LIGHT, 0) - 200) && YPos < (obj.sq_GetIntData(SKILL_HOLY_LIGHT, 0) - 200)) {
				
				//CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/atpriest/holylight/ap_holylight.nut");
				
				local appendage = CNSquirrelAppendage.sq_AppendAppendage(tar, obj, SKILL_HOLY_LIGHT, false, "character/atpriest/holylight/ap_holylight.nut", false);
				appendage.sq_SetValidTime(time);
				appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_HOLY_LIGHT, skill_level);
				appendage.getVar("holylightbuff").clear_vector();
				appendage.getVar("holylightbuff").push_vector(value2);
				appendage.getVar("holylightbuff").push_vector(value3);
				appendage.getVar("holylightbuff").push_vector(power);
				appendage.getVar("holylightbuff").push_vector(size);
				
				CNSquirrelAppendage.sq_AppendAppendageID(appendage, tar, obj, APID_COMMON, false);
				appendage.setBuffIconImage(44);
				
			}
		}
	}
}

/*function addHolyLightBuff(obj)
{
	local skill_level = sq_GetSkillLevel(obj, SKILL_HOLY_LIGHT);
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if (object && !obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_ACTIVE) && 
			isDistanceOfTarget(obj,object,sq_GetIntData(obj, SKILL_HOLY_LIGHT, 0)))
		{
			object = sq_GetCNRDObjectToSQRCharacter(object);
			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(object, obj, SKILL_HOLY_LIGHT, false, 
				"character/atpriest/holylight/ap_holylight.nut", true);

			local barrierstart = "character/priest/effect/animation/atholylight/barrier/barrierstart.ani";
			ATPriest_Create(object,barrierstart,ENUM_DRAWLAYER_NORMAL,0,-60,0,0,100,0,100,"barrierstart");

			local holylightaria_effectcast = "character/priest/effect/animation/atholylight/holylightaria_effectcast.ani";
			ATPriest_Create(object,holylightaria_effectcast,ENUM_DRAWLAYER_NORMAL,0,-60,0,0,100,0,100,"holylightaria_effectcast");

			local holylightaria_effecthand = "character/priest/effect/animation/atholylight/holylightaria_effecthand.ani";
			ATPriest_Create(object,holylightaria_effecthand,ENUM_DRAWLAYER_NORMAL,0,-60,0,0,100,0,100,"holylightaria_effecthand");

			local barrierloop_omen = "character/priest/effect/animation/atholylight/barrier/barrierend_barrierend.ani";
			ATPriest_Create(object,barrierloop_omen,ENUM_DRAWLAYER_BOTTOM,0,-60,0,0,100,0,100,"barrierloop_omen");

			masterAppendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_HOLY_LIGHT, skill_level);
			CNSquirrelAppendage.sq_AppendAppendageID(masterAppendage, object, object, SKILL_HOLY_LIGHT, true);

			local Time = sq_GetLevelData(obj, SKILL_HOLY_LIGHT, 0, skill_level);//啮踝萧啮踝萧啮踝萧啮?
			masterAppendage.sq_SetValidTime(Time);
		}
	}
}*/   