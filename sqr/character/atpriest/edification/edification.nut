
function checkExecutableSkill_Edification(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_EDIFICATION);
	if (isUse)
	{
		if(obj.sq_GetState() == STATE_ARIA_OF_COURAGE || obj.sq_GetState() == STATE_ARIA_OF_REGENERATION)
		{
			addEdificationBuff(obj);
		}else{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(0);
			obj.sq_AddSetStatePacket(STATE_EDIFICATION, STATE_PRIORITY_IGNORE_FORCE, true);
			return true;
		}
	}
	return false;
}

function checkCommandEnable_Edification(obj)
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

function onSetState_Edification(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
		SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_EDIFICATION_CAST_BODY);
		local edification_bottom_glow = "character/priest/effect/animation/atedification/edification_bottom_glow.ani";
		ATPriest_Create(obj,edification_bottom_glow,ENUM_DRAWLAYER_NORMAL,0,0,0,0,100,0,100,"edification_bottom_glow");
	}
	if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_EDIFICATION_START_BODY);
		addEdificationBuff(obj);
	}
}

function onKeyFrameFlag_Edification(obj,flagIndex)
{
	if(!obj)
		return false;
	if (flagIndex == 0)
	{
		
	}
	return true;
}

function onEndCurrentAni_Edification(obj)
{
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_EDIFICATION, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(substate == 1)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function addEdificationBuff(obj)
{
	obj.sq_PlaySound("EDIFICATION_CAST");
	local skill_level = sq_GetSkillLevel(obj, SKILL_EDIFICATION);
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if (object && !obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_CHARACTER) && 
			isDistanceOfTarget(obj,object,sq_GetIntData(obj, SKILL_EDIFICATION, 0)))
		{
			object = sq_GetCNRDObjectToActiveObject(object);

			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(object, object, SKILL_EDIFICATION, false, 
				"character/atpriest/edification/ap_edification.nut", true);

			masterAppendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_EDIFICATION, skill_level);
			CNSquirrelAppendage.sq_AppendAppendageID(masterAppendage, object, object, SKILL_EDIFICATION, true);

			local Time = sq_GetLevelData(obj, SKILL_EDIFICATION, 0, skill_level);//啮踝萧啮踝萧啮踝萧啮?
			local value0 = sq_GetLevelData(obj, SKILL_EDIFICATION, 1, skill_level);//啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮褊伐萧啮?

			masterAppendage.sq_SetValidTime(Time);
			masterAppendage.setEnableIsBuff(true);
			masterAppendage.setBuffIconImage(128);
			masterAppendage.setEnableIsBuff(false);
			local change_appendage = masterAppendage.sq_getChangeStatus("EdificationBuff");
			if(!change_appendage)
			{
				change_appendage = masterAppendage.sq_AddChangeStatusAppendageID(object, object, 0, 
					CHANGE_STATUS_TYPE_MP_MAX, false, value0, APID_COMMON);
			}
			if(change_appendage)
			{
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, value0.tofloat());
			}
		}
	}
}

