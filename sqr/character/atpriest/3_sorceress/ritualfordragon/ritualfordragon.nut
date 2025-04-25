
function checkCommandEnable_RitualForDragon(obj) {
	return true;
}

function checkExecutableSkill_RitualForDragon(obj) {
	if (!obj) return false;
	local UncleBangValue1 = obj.sq_IsUseSkill(SKILL_RITUALFORDRAGON);
	if (UncleBangValue1) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_RITUALFORDRAGON, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function onSetState_RitualForDragon(obj, state, datas, isResetTimer) {
	if (!obj) return;
	local UncleBangValue1 = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(UncleBangValue1);
	obj.sq_StopMove();
	switch (UncleBangValue1) {
	case 0:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_RITUALFORDRAGON1);
		local UncleBangValue2 = obj.getCurrentAnimation().getDelaySum(false);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		local UncleBangValue3 = obj.getCurrentAnimation().getDelaySum(false);
		local UncleBangValue4 = UncleBangValue2.tofloat() / UncleBangValue3.tofloat();
		obj.getVar("ritualfordragonSpeed").setFloat(0, UncleBangValue4);
		sq_createPooledObject(obj, "character/priest/effect/animation/atritualfordragon/loop/ground/ground01.ani", 0, -1, 0, sq_GetIntData(obj, SKILL_RITUALFORDRAGON, 0), 1.0, 0, 0, 1);
		sq_createPooledObject(obj, "character/priest/effect/animation/atritualfordragon/loop/front01/front01.ani", 0, 1, 0, sq_GetIntData(obj, SKILL_RITUALFORDRAGON, 0), 1.0, 0, 0, 2);
		local skill_level = sq_GetSkillLevel(obj, SKILL_RITUALFORDRAGON);
		local flag1 = sq_GetLevelData(obj, SKILL_RITUALFORDRAGON, 4, skill_level).tofloat();
		if(flag1 > 0){
			obj.setEnableDamageBox(0);
		}
		addRitualForDragonBuff(obj);
		sq_SendMessage(obj, OBJECT_MESSAGE_UNBREAKABLE, 1, 0);
		sq_PostDelayedMessage(obj, OBJECT_MESSAGE_UNBREAKABLE, 0, 0, UncleBangValue3);
		break;
	case 1:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_RITUALFORDRAGON2);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_RITUALFORDRAGON1);
		local UncleBangValue5 = obj.sq_GetBonusRateWithPassive(SKILL_RITUALFORDRAGON, -1, 0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(UncleBangValue5);
		sq_setCurrentAttackBoundingBoxSizeRate(obj, 1.0, sq_GetIntData(obj, SKILL_RITUALFORDRAGON, 0));
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		obj.sq_ZStop();
		local UncleBangValue6 = obj.getCurrentAnimation().getDelaySum(false);
		sq_SendMessage(obj, OBJECT_MESSAGE_UNBREAKABLE, 1, 0);
		sq_PostDelayedMessage(obj, OBJECT_MESSAGE_UNBREAKABLE, 0, 0, UncleBangValue6);
		break;
	case 2:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_RITUALFORDRAGON3);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_RITUALFORDRAGON1);
		local UncleBangValue5 = obj.sq_GetBonusRateWithPassive(SKILL_RITUALFORDRAGON, -1, 0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(UncleBangValue5);
		sq_setCurrentAttackBoundingBoxSizeRate(obj, 1.0, sq_GetIntData(obj, SKILL_RITUALFORDRAGON, 0));
		local UncleBangValue2 = obj.getCurrentAnimation().getDelaySum(false);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		local UncleBangValue3 = obj.getCurrentAnimation().getDelaySum(false);
		local UncleBangValue4 = UncleBangValue2.tofloat() / UncleBangValue3.tofloat();
		obj.getVar("ritualfordragonSpeed").setFloat(1, UncleBangValue4);
		obj.sq_ZStop();
		sq_removePooledObject(obj);
		sq_SendMessage(obj, OBJECT_MESSAGE_UNBREAKABLE, 1, 0);
		sq_PostDelayedMessage(obj, OBJECT_MESSAGE_UNBREAKABLE, 0, 0, UncleBangValue3);
		break;
	case 3:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_RITUALFORDRAGON4);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_RITUALFORDRAGON2);
		local UncleBangValue5 = obj.sq_GetBonusRateWithPassive(SKILL_RITUALFORDRAGON, -1, 1, 1.0);
		obj.sq_SetCurrentAttackBonusRate(UncleBangValue5);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
		sq_setCurrentAttackBoundingBoxSizeRate(obj, 1.0, sq_GetIntData(obj, SKILL_RITUALFORDRAGON, 0));
		sq_createPooledObject(obj, "character/priest/effect/animation/atritualfordragon/finish_b/back01/back01.ani", 0, 0, 0, sq_GetIntData(obj, SKILL_RITUALFORDRAGON, 0), 1.0, 0, 0, 1);
		sq_createPooledObject(obj, "character/priest/effect/animation/atritualfordragon/finish_b/ground00/atritualfordragon_finish_b_ground00.ani", 0, 0, 0, sq_GetIntData(obj, SKILL_RITUALFORDRAGON, 0), 1.0, 0, 0, 1);
		sq_createPooledObject(obj, "character/priest/effect/animation/atritualfordragon/finish_b/front03/atritualfordragon_finish_b_front03.ani", 0, 0, 0, sq_GetIntData(obj, SKILL_RITUALFORDRAGON, 0), 1.0, 0, 0, 1);
		sq_createPooledObject(obj, "character/priest/effect/animation/atritualfordragon/finish_b/front04/atritualfordragon_finish_b_front03.ani", 0, 0, 0, sq_GetIntData(obj, SKILL_RITUALFORDRAGON, 0), 1.0, 0, 0, 1);
		if (obj.isMyControlObject()) {
			sq_SetMyShake(obj, 10, 200);
			sq_flashScreen(obj, 80, 80, 0, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		}
		local UncleBangValue6 = obj.getCurrentAnimation().getDelaySum(false);
		sq_SendMessage(obj, OBJECT_MESSAGE_UNBREAKABLE, 1, 0);
		sq_PostDelayedMessage(obj, OBJECT_MESSAGE_UNBREAKABLE, 0, 0, UncleBangValue6);
		break;
	}
	if(obj.isMyControlObject())
	{
		local flashScreenObj = sq_flashScreen(obj, 80, 60000, 240, 200, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		obj.getVar().setObject(0,flashScreenObj);
	}
}

function onEndCurrentAni_RitualForDragon(obj)

{
	if (!obj || !obj.isMyControlObject()) return;
	local UncleBangValue1 = obj.getSkillSubState();
	switch (UncleBangValue1) {
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_RITUALFORDRAGON, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 2:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(3);
		obj.sq_AddSetStatePacket(STATE_RITUALFORDRAGON, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 3:
		obj.setEnableDamageBox(1);
		obj.sq_IntVectClear();
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}

}

function onKeyFrameFlag_RitualForDragon(obj, flagIndex)

{
	if (!obj) return false;
	local UncleBangValue1 = obj.getSkillSubState();
	switch (UncleBangValue1) {
	case 0:
		switch (flagIndex) {
		case 10001:
			if (obj.isMyControlObject()) {
				obj.sq_StartWrite();
				obj.sq_WriteDword(3);
				obj.sq_WriteDword(10);
				obj.sq_SendCreatePassiveObjectPacket(24338, 0, 0, -1, 0);
			}
			break;
		}
		break;
	}
	return true;

}

function onProc_RitualForDragon(obj)
{
	if (!obj) return;
	local UncleBangValue1 = obj.getSkillSubState();
	local UncleBangValue2 = obj.getCurrentAnimation();
	local UncleBangValue3 = sq_GetCurrentTime(UncleBangValue2);
	switch (UncleBangValue1) {
	case 0:
		local UncleBangValue4 = sq_GetUniformVelocity(sq_GetZPos(obj), 100, UncleBangValue3, 1000);
		sq_MoveToNearMovablePos(obj, sq_GetXPos(obj), sq_GetYPos(obj), UncleBangValue4, sq_GetXPos(obj), sq_GetYPos(obj), sq_GetZPos(obj), 20, -1, 3);
		break;
	case 2:
		local UncleBangValue4 = sq_GetUniformVelocity(sq_GetZPos(obj), 0, UncleBangValue3, 10000);
		sq_MoveToNearMovablePos(obj, sq_GetXPos(obj), sq_GetYPos(obj), UncleBangValue4, sq_GetXPos(obj), sq_GetYPos(obj), sq_GetZPos(obj), 20, -1, 3);
		break;
	}

}

function onProcCon_RitualForDragon(obj)
{
	if (!obj) return;
	local UncleBangValue1 = obj.getSkillSubState();
	local UncleBangValue2 = obj.getCurrentAnimation();
	local UncleBangValue3 = sq_GetCurrentTime(UncleBangValue2);
	local UncleBangValue4 = UncleBangValue2.getDelaySum(false);
	switch (UncleBangValue1) {
	case 1:
		if (sq_isInterval(obj, 1000, "ritualfordragonLightningInterval")) 
			sq_createPooledObject(obj, "character/priest/effect/animation/atritualfordragon/loop/front02/lightinig01.ani", 0, 0, -100, sq_GetIntData(obj, SKILL_RITUALFORDRAGON, 0), 1.0, 0, 0, 1);
	case 2:
		if (sq_isInterval(obj, sq_GetIntData(obj, SKILL_RITUALFORDRAGON, 2), "ritualfordragonInterval")) 
			obj.resetHitObjectList();
		sq_SetKeyxEnable(obj, E_JUMP_COMMAND, true);
		if (UncleBangValue3 >= sq_GetIntData(obj, SKILL_RITUALFORDRAGON, 1) || sq_IsEnterCommand(obj, E_JUMP_COMMAND)) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(2);
			obj.sq_AddSetStatePacket(STATE_RITUALFORDRAGON, STATE_PRIORITY_IGNORE_FORCE, true);
		}
		break;
	}

}

function onEndState_RitualForDragon(obj, newState)

{
	if (!obj) return;
/*	if (newState != SKILL_RITUALFORDRAGON) {
		local UncleBangValue1 = obj.getVar("ritualfordragonFlashObj").get_obj_vector(0);
		UncleBangValue1 = sq_GetCNRDObjectToFlashScreen(UncleBangValue1);
		if (UncleBangValue1) 
			UncleBangValue1.fadeOut();
	}*/
	local flashScreenObj = obj.getVar().getObject(0);
	if(flashScreenObj)
	{
		flashScreenObj = sq_GetCNRDObjectToFlashScreen(flashScreenObj);
		if(flashScreenObj)
			flashScreenObj.fadeOut();
	}
	if (newState != STATE_RITUALFORDRAGON) {
		obj.setEnableDamageBox(1);
	}
	
}

function addRitualForDragonBuff(obj)
{
	if(!obj) return;
	
	local skill_level = sq_GetSkillLevel(obj, SKILL_RITUALFORDRAGON);
	local value0 = sq_GetLevelData(obj, SKILL_RITUALFORDRAGON, 2, skill_level).tofloat();
	
	if(value0 < 1) return; 
	
	local value1 = sq_GetLevelData(obj, SKILL_RITUALFORDRAGON, 5, skill_level).tofloat();
	value1  = value1 / 100;
	local Time1 = sq_GetLevelData(obj, SKILL_RITUALFORDRAGON, 3, skill_level);
	local Time2 = sq_GetLevelData(obj, SKILL_RITUALFORDRAGON, 6, skill_level);
	
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if (object && !obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_CHARACTER) )
		{
			object = sq_GetCNRDObjectToActiveObject(object);
			
			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(object, obj, SKILL_RITUALFORDRAGON, false, "character/atpriest/3_sorceress/ritualfordragon/ap_ritualfordragonbuff.nut", true);
			if(isSameObject(object, obj))
			{
				masterAppendage.sq_SetValidTime(Time2);
			}
			else
			{
				masterAppendage.sq_SetValidTime(Time1);
			}
			masterAppendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_RITUALFORDRAGON, skill_level);
			CNSquirrelAppendage.sq_AppendAppendageID(masterAppendage, object, obj, SKILL_RITUALFORDRAGON, true);
			local change_appendage = masterAppendage.sq_getChangeStatus("ritualfordragon");
			if(!change_appendage)
			{
				change_appendage = masterAppendage.sq_AddChangeStatusAppendageID(object, obj, 0, CHANGE_STATUS_TYPE_STUCK, false, -10, APID_COMMON);
			}
			if(change_appendage)
			{
				change_appendage.clearParameter();
				if(isSameObject(object, obj))
				{
					change_appendage.addParameter(CHANGE_STATUS_TYPE_STUCK, false, -value0);
					if(value1 > 0){
						change_appendage.addParameter(CHANGE_STATUS_TYPE_COOLTIME_DECLINE, false, -value1);
					}
				}
				else
				{
					change_appendage.addParameter(CHANGE_STATUS_TYPE_STUCK, false, -value0);
				}
			}
		}
	}
}  