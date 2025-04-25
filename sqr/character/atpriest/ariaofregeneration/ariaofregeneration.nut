
function checkExecutableSkill_AriaOfRegeneration(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_ARIA_OF_REGENERATION);
	if (isUse)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_ARIA_OF_REGENERATION, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_AriaOfRegeneration(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	if (state == STATE_STAND)
		return true;
		return true;
}


function onSetState_AriaOfRegeneration(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
		SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	if(substate == 0)
	{
		obj.sq_PlaySound("R_PW_ARIAREGENERATION");
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ARIA_OF_REGENERATION_START_BODY);
		AriaOfRegeneration_ariaofregenerationstart_body(obj);
		AriaOfRegeneration_urielstart_body(obj);
		addAriaOfRegenerationBuff(obj);
		AriaOfRegeneration_lightstart_lineglow_02(obj);
		AriaOfRegeneration_floorstart_1(obj);
	}
	else if(substate == 1)
	{
		obj.sq_PlaySound("ARIAREGENERATION", 1325);
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ARIA_OF_REGENERATION_LOOP_BODY);
		obj.setTimeEvent(0, sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, SKL_INT_LV_0), 1, false);
		obj.setTimeEvent(1, 500, 0, false);
		AriaOfRegeneration_ariaofregenerationloop_body(obj);
		AriaOfRegeneration_urielloop_body(obj);
		AriaOfRegeneration_oraloopback_glow(obj);
		AriaOfRegeneration_oraloopfront_1(obj);
		AriaOfRegeneration_line_red_in(obj);
		AriaOfRegeneration_lightloop_a1(obj);
		AriaOfRegeneration_floorloop_1(obj);
	}
	else if(substate == 2)
	{
		obj.sq_StopMove();
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ARIA_OF_REGENERATION_END_BODY);
		AriaOfRegeneration_ariaofregenerationend_body(obj);
		AriaOfRegeneration_urielend_body(obj);
		AriaOfRegeneration_lightend_1(obj);
		AriaOfRegeneration_floorend_1(obj);
	}
}

function AriaOfRegeneration_floorend_1(obj)
{
	local data = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5) / 3;
	local rate = data + isStudyBlessOfRaphael_AriaOfRegeneration(obj) / 10;
	local floorend_1 = "character/priest/effect/animation/atariaofregeneration/floor/floorend_1.ani";
	ATPriest_Create(obj,floorend_1,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"floorend_1");
}

function AriaOfRegeneration_floorloop_1(obj)
{
	local data = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5) / 3;
	local rate = data + isStudyBlessOfRaphael_AriaOfRegeneration(obj) / 10;
	local floorloop_1 = "character/priest/effect/animation/atariaofregeneration/floor/floorloop_1.ani";
	ATPriest_Create(obj,floorloop_1,ENUM_DRAWLAYER_BOTTOM,0,0,0,0,rate,0,100,"floorloop_1");
}

function AriaOfRegeneration_floorstart_1(obj)
{
	local data = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5) / 3;
	local rate = data + isStudyBlessOfRaphael_AriaOfRegeneration(obj) / 10;
	local floorstart_1 = "character/priest/effect/animation/atariaofregeneration/floor/floorstart_1.ani";
	ATPriest_Create(obj,floorstart_1,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"floorstart_1");
}

function AriaOfRegeneration_lightend_1(obj)
{
	local data = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5) / 3;
	local rate = data + isStudyBlessOfRaphael_AriaOfRegeneration(obj) / 10;
	local lightend_1 = "character/priest/effect/animation/atariaofregeneration/floor/lightend_1.ani";
	ATPriest_Create(obj,lightend_1,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"lightend_1");
}

function AriaOfRegeneration_lightloop_a1(obj)
{
	local data = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5) / 3;
	local rate = data + isStudyBlessOfRaphael_AriaOfRegeneration(obj) / 10;
	local lightloop_a1 = "character/priest/effect/animation/atariaofregeneration/floor/lightloop_a1.ani";
	ATPriest_Create(obj,lightloop_a1,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"lightloop_a1");
}

function AriaOfRegeneration_lightstart_lineglow_02(obj)
{
	local data = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5) / 3;
	local rate = data + isStudyBlessOfRaphael_AriaOfRegeneration(obj) / 10;
	local lightstart_lineglow_02 = "character/priest/effect/animation/atariaofregeneration/floor/lightstart_lineglow_02.ani";
	ATPriest_Create(obj,lightstart_lineglow_02,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"lightstart_lineglow_02");
}

function AriaOfRegeneration_line_red_in(obj)
{
	local data = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5) / 3;
	local rate = data + isStudyBlessOfRaphael_AriaOfRegeneration(obj) / 10;
	local line_red_in = "character/priest/effect/animation/atariaofregeneration/musicpaper/line_red_in.ani";
	ATPriest_Create(obj,line_red_in,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"line_red_in");
}

function AriaOfRegeneration_oraloopfront_1(obj)
{
	local data = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5) / 3;
	local rate = data + isStudyBlessOfRaphael_AriaOfRegeneration(obj) / 10;
	local oraloopfront_1 = "character/priest/effect/animation/atariaofregeneration/ora/oraloopfront_1.ani";
	ATPriest_Create(obj,oraloopfront_1,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"oraloopfront_1");
}

function AriaOfRegeneration_oraloopback_glow(obj)
{
	local data = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5) / 3;
	local rate = data + isStudyBlessOfRaphael_AriaOfRegeneration(obj) / 10;
	local oraloopback_glow = "character/priest/effect/animation/atariaofregeneration/ora/oraloopback_glow.ani";
	ATPriest_Create(obj,oraloopback_glow,ENUM_DRAWLAYER_BOTTOM,0,0,0,0,rate,0,100,"oraloopback_glow");
}

function AriaOfRegeneration_ariaofregenerationstart_body(obj)
{
	local data = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5) / 3;
	local rate = data + isStudyBlessOfRaphael_AriaOfRegeneration(obj) / 10;
	local ariaofregenerationstart_body = "character/priest/effect/animation/atariaofregeneration/ariaofregenerationstart_body.ani";
	ATPriest_Create(obj,ariaofregenerationstart_body,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"ariaofregenerationstart_body");
}

function AriaOfRegeneration_ariaofregenerationloop_body(obj)
{
	local data = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5) / 3;
	local rate = data + isStudyBlessOfRaphael_AriaOfRegeneration(obj) / 10;
	local ariaofregenerationloop_body = "character/priest/effect/animation/atariaofregeneration/ariaofregenerationloop_body.ani";
	ATPriest_Create(obj,ariaofregenerationloop_body,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"ariaofregenerationloop_body");
}

function AriaOfRegeneration_ariaofregenerationend_body(obj)
{
	local data = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5) / 3;
	local rate = data + isStudyBlessOfRaphael_AriaOfRegeneration(obj) / 10;
	local ariaofregenerationend_body = "character/priest/effect/animation/atariaofregeneration/ariaofregenerationend_body.ani";
	ATPriest_Create(obj,ariaofregenerationend_body,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"ariaofregenerationend_body");
}

function AriaOfRegeneration_urielstart_body(obj)
{
	local data = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5) / 3;
	local rate = data + isStudyBlessOfRaphael_AriaOfRegeneration(obj) / 10;
	local urielstart_body = "character/priest/effect/animation/atariaofregeneration/uriel/urielstart_body.ani";
	ATPriest_Create(obj,urielstart_body,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"urielstart_body");
}

function AriaOfRegeneration_urielloop_body(obj)
{
	local data = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5) / 3;
	local rate = data + isStudyBlessOfRaphael_AriaOfRegeneration(obj) / 10;
	local urielloop_body = "character/priest/effect/animation/atariaofregeneration/uriel/urielloop_body.ani";
	ATPriest_Create(obj,urielloop_body,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"urielloop_body");
}

function AriaOfRegeneration_urielend_body(obj)
{
	local data = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5) / 3;
	local rate = data + isStudyBlessOfRaphael_AriaOfRegeneration(obj) / 10;
	local urielend_body = "character/priest/effect/animation/atariaofregeneration/uriel/urielend_body.ani";
	ATPriest_Create(obj,urielend_body,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"urielend_body");
}

function onTimeEvent_AriaOfRegeneration(obj, timeEventIndex, timeEventCount)
{
	if(!obj)
		return false;
	if(timeEventIndex == 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(2);
		obj.sq_AddSetStatePacket(STATE_ARIA_OF_REGENERATION, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(timeEventIndex == 1)
	{
		addRecoveryHpBuff(obj);
	}
}

function onEndCurrentAni_AriaOfRegeneration(obj)
{
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_ARIA_OF_REGENERATION, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(substate == 2)
	{
		obj.stopSound(1325);
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function onProc_AriaOfRegeneration(obj)
{
	local substate = obj.getSkillSubState();
	if(substate == 1)
	{
		if (sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL))
		{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(2);
			obj.sq_AddSetStatePacket(STATE_ARIA_OF_REGENERATION, STATE_PRIORITY_IGNORE_FORCE, true);
		}
	}
	else if(substate == 2)
	{
		local urielloop_body = obj.getVar("urielloop_body").get_obj_vector(0);
		local oraloopback_glow = obj.getVar("oraloopback_glow").get_obj_vector(0);
		local oraloopfront_1 = obj.getVar("oraloopfront_1").get_obj_vector(0);
		local line_red_in = obj.getVar("line_red_in").get_obj_vector(0);
		local lightloop_a1 = obj.getVar("lightloop_a1").get_obj_vector(0);
		local floorloop_1 = obj.getVar("floorloop_1").get_obj_vector(0);
		if(urielloop_body || oraloopback_glow || oraloopfront_1 || line_red_in || lightloop_a1 || floorloop_1)
		{
			urielloop_body.setValid(false);
			oraloopback_glow.setValid(false);
			oraloopfront_1.setValid(false);
			line_red_in.setValid(false);
			lightloop_a1.setValid(false);
			floorloop_1.setValid(false);
		}
	}
}

function onEndState_AriaOfRegeneration(obj, new_state)
{
	if(!obj) return;
	if(new_state != STATE_ARIA_OF_REGENERATION)
	{
		local urielloop_body = obj.getVar("urielloop_body").get_obj_vector(0);
		local oraloopback_glow = obj.getVar("oraloopback_glow").get_obj_vector(0);
		local oraloopfront_1 = obj.getVar("oraloopfront_1").get_obj_vector(0);
		local line_red_in = obj.getVar("line_red_in").get_obj_vector(0);
		local lightloop_a1 = obj.getVar("lightloop_a1").get_obj_vector(0);
		local floorloop_1 = obj.getVar("floorloop_1").get_obj_vector(0);
		if(urielloop_body || oraloopback_glow || oraloopfront_1 || line_red_in || lightloop_a1 || floorloop_1)
		{
			urielloop_body.setValid(false);
			oraloopback_glow.setValid(false);
			oraloopfront_1.setValid(false);
			line_red_in.setValid(false);
			lightloop_a1.setValid(false);
			floorloop_1.setValid(false);
		}
	}
}

function addRecoveryHpBuff(obj)
{
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		object = sq_GetCNRDObjectToActiveObject(object);
		if (object && !obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_CHARACTER) && 
			isDistanceOfTarget(obj,object,sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 5)))
		{
			local Skill = obj.sq_GetSkillLevel(SKILL_ARIA_OF_REGENERATION);
			local rate = obj.sq_GetLevelData(SKILL_ARIA_OF_REGENERATION, 0, Skill) / 1000;
			local recovery = object.getHpMax() * rate / 200;
			object.setHp(object.getHp() + recovery, null, true);
			//print("Recovery = " + recovery);
		}
	}
}

function addAriaOfRegenerationBuff(obj)
{
	local skill_level = sq_GetSkillLevel(obj, SKILL_ARIA_OF_REGENERATION);
	local objectManager = obj.getObjectManager();

	local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_ARIA_OF_REGENERATION, false, 
		"character/atpriest/ariaofregeneration/ap_ariaofregeneration.nut", true);

	masterAppendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_ARIA_OF_REGENERATION, skill_level);
	CNSquirrelAppendage.sq_AppendAppendageID(masterAppendage, obj, obj, SKILL_ARIA_OF_REGENERATION, true);

	local Time = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 0, skill_level);//啮踝萧啮踝萧啮踝萧啮?
	local value0 = sq_GetIntData(obj, SKILL_ARIA_OF_REGENERATION, 6, skill_level);

	masterAppendage.sq_SetValidTime(Time + 5000);
	local change_appendage = masterAppendage.sq_getChangeStatus("AriaOfRegenerationBuff");
	if(!change_appendage)
	{
		change_appendage = masterAppendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 
			CHANGE_STATUS_TYPE_ACTIVESTATUS_TOLERANCE_ALL, false, value0, APID_COMMON);
	}
	if(change_appendage)
	{
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ACTIVESTATUS_TOLERANCE_ALL, false, value0.tofloat());
	}
}
