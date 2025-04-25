
function checkExecutableSkill_AriaOfCourage(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_ARIA_OF_COURAGE);
	if (isUse)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_ARIA_OF_COURAGE, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_AriaOfCourage(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	if (state == STATE_STAND)
		return true;
		return true;
}

function onSetState_AriaOfCourage(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
		SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	if(substate == 0)
	{
		obj.sq_PlaySound("ARIACOURAGE_CAST");
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ARIA_OF_COURAGE_START_BODY);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_ARIA_OF_COURAGE_ATTACK);
		local Power =  obj.sq_GetPowerWithPassive(SKILL_ARIA_OF_COURAGE, STATE_ARIA_OF_COURAGE, 0, -1,1.0);
		obj.sq_SetCurrentAttackPower(Power);
		obj.setTimeEvent(1, sq_GetIntData(obj, SKILL_ARIA_OF_COURAGE, SKL_INT_LV_5), 0, true);
		AriaOfCourage_line_red_in(obj);
		AriaOfCourage_floorstart_magicc_01(obj);
		AriaOfCourage_lightstart_lineglow(obj);
		addAriaOfCourageBuff(obj);
	}
	else if(substate == 1)
	{
		obj.sq_PlaySound("ARIACOURAGE", 1125);
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ARIA_OF_COURAGE_LOOP_BODY);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_ARIA_OF_COURAGE_ATTACK);
		local Power =  obj.sq_GetPowerWithPassive(SKILL_ARIA_OF_COURAGE, STATE_ARIA_OF_COURAGE, 0, -1,1.0);
		obj.sq_SetCurrentAttackPower(Power);
		obj.setTimeEvent(0, sq_GetIntData(obj, SKILL_ARIA_OF_COURAGE, SKL_INT_LV_0), 1, false);
		AriaOfCourage_floorloop_magicc_01(obj);
		AriaOfCourage_oraloopback_1(obj);
		AriaOfCourage_lightloop_lineglow(obj);
	}
	else if(substate == 2)
	{
		obj.sq_StopMove();
		obj.sq_PlaySound("ARIACOURAGE_END");
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ARIA_OF_COURAGE_END_BODY);
		AriaOfCourage_floorend_magicc_01(obj);
		AriaOfCourage_lightend_lineglow(obj);
	}
}

function AriaOfCourage_oraloopback_1(obj)
{
	local rate = 100 + isStudyBlessOfRaphael_AriaOfCourage(obj) / 10;
	local oraloopback_1 = "character/priest/effect/animation/atariaofcourage/ora/oraloopback_1.ani";
	ATPriest_Create(obj,oraloopback_1,ENUM_DRAWLAYER_BOTTOM,0,0,0,0,rate,0,100,"oraloopback_1");
}

function AriaOfCourage_line_red_in(obj)
{
	local rate = 100 + isStudyBlessOfRaphael_AriaOfCourage(obj) / 10;
	local line_red_in = "character/priest/effect/animation/atariaofcourage/musicpaper/line_red_in.ani";
	ATPriest_Create(obj,line_red_in,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"line_red_in");
}

function AriaOfCourage_floorend_magicc_01(obj)
{
	local rate = 100 + isStudyBlessOfRaphael_AriaOfCourage(obj) / 10;
	local floorend_magicc_01 = "character/priest/effect/animation/atariaofcourage/floor/floorend_magicc_01.ani";
	ATPriest_Create(obj,floorend_magicc_01,ENUM_DRAWLAYER_BOTTOM,0,0,0,0,rate,0,100,"floorend_magicc_01");
}

function AriaOfCourage_floorloop_magicc_01(obj)
{
	local rate = 100 + isStudyBlessOfRaphael_AriaOfCourage(obj) / 10;
	local floorloop_magicc_01 = "character/priest/effect/animation/atariaofcourage/floor/floorloop_magicc_01.ani";
	ATPriest_Create(obj,floorloop_magicc_01,ENUM_DRAWLAYER_BOTTOM,0,0,0,0,rate,0,100,"floorloop_magicc_01");
}

function AriaOfCourage_floorstart_magicc_01(obj)
{
	local rate = 100 + isStudyBlessOfRaphael_AriaOfCourage(obj) / 10;
	local floorstart_magicc_01 = "character/priest/effect/animation/atariaofcourage/floor/floorstart_magicc_01.ani";
	ATPriest_Create(obj,floorstart_magicc_01,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"floorstart_magicc_01");
}

function AriaOfCourage_lightend_lineglow(obj)
{
	local rate = 100 + isStudyBlessOfRaphael_AriaOfCourage(obj) / 10;
	local lightend_lineglow = "character/priest/effect/animation/atariaofcourage/floor/lightend_lineglow.ani";
	ATPriest_Create(obj,lightend_lineglow,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"lightend_lineglow");
}

function AriaOfCourage_lightloop_lineglow(obj)
{
	local rate = 100 + isStudyBlessOfRaphael_AriaOfCourage(obj) / 10;
	local lightloop_lineglow = "character/priest/effect/animation/atariaofcourage/floor/lightloop_lineglow.ani";
	ATPriest_Create(obj,lightloop_lineglow,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"lightloop_lineglow");
}

function AriaOfCourage_lightstart_lineglow(obj)
{
	local rate = 100 + isStudyBlessOfRaphael_AriaOfCourage(obj) / 10;
	local lightstart_lineglow = "character/priest/effect/animation/atariaofcourage/floor/lightstart_lineglow.ani";
	ATPriest_Create(obj,lightstart_lineglow,ENUM_DRAWLAYER_NORMAL,0,0,0,0,rate,0,100,"lightstart_lineglow");
}

function onTimeEvent_AriaOfCourage(obj, timeEventIndex, timeEventCount)
{
	if(!obj)
		return false;
	if(timeEventIndex == 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(2);
		obj.sq_AddSetStatePacket(STATE_ARIA_OF_COURAGE, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(timeEventIndex == 1)
	{
		obj.resetHitObjectList();
	}
}

function onKeyFrameFlag_AriaOfCourage(obj,flagIndex)
{
	if(!obj)
		return false;
	if (flagIndex == 0)
	{
		sq_SetShake(obj,4,160);
	}
	return true;
}

function onEndCurrentAni_AriaOfCourage(obj)
{
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_ARIA_OF_COURAGE, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(substate == 2)
	{
		obj.stopSound(1125);
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function onProc_AriaOfCourage(obj)
{
	local substate = obj.getSkillSubState();
	if(substate == 1)
	{
		if (sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL))
		{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(2);
			obj.sq_AddSetStatePacket(STATE_ARIA_OF_COURAGE, STATE_PRIORITY_IGNORE_FORCE, true);
		}
	}
	else if(substate == 2)
	{
		local oraloopback_1 = obj.getVar("oraloopback_1").get_obj_vector(0);
		local line_red_in = obj.getVar("line_red_in").get_obj_vector(0);
		local floorloop_magicc_01 = obj.getVar("floorloop_magicc_01").get_obj_vector(0);
		local lightloop_lineglow = obj.getVar("lightloop_lineglow").get_obj_vector(0);
		if(oraloopback_1 || line_red_in || floorloop_magicc_01 || lightloop_lineglow)
		{
			oraloopback_1.setValid(false);
			line_red_in.setValid(false);
			floorloop_magicc_01.setValid(false);
			lightloop_lineglow.setValid(false);
		}
	}
}

function onEndState_AriaOfCourage(obj, new_state)
{
	if(!obj) return;
	if(new_state != STATE_ARIA_OF_COURAGE)
	{
		local oraloopback_1 = obj.getVar("oraloopback_1").get_obj_vector(0);
		local line_red_in = obj.getVar("line_red_in").get_obj_vector(0);
		local floorloop_magicc_01 = obj.getVar("floorloop_magicc_01").get_obj_vector(0);
		local lightloop_lineglow = obj.getVar("lightloop_lineglow").get_obj_vector(0);
		if(oraloopback_1 || line_red_in || floorloop_magicc_01 || lightloop_lineglow)
		{
			oraloopback_1.setValid(false);
			line_red_in.setValid(false);
			floorloop_magicc_01.setValid(false);
			lightloop_lineglow.setValid(false);
		}
	}
}

function addAriaOfCourageBuff(obj)
{
	local skill_level = sq_GetSkillLevel(obj, SKILL_ARIA_OF_COURAGE);
	local objectManager = obj.getObjectManager();

	local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_ARIA_OF_COURAGE, false, 
		"character/atpriest/ariaofcourage/ap_ariaofcourage.nut", true);

	masterAppendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_ARIA_OF_COURAGE, skill_level);
	CNSquirrelAppendage.sq_AppendAppendageID(masterAppendage, obj, obj, SKILL_ARIA_OF_COURAGE, true);

	local Time = sq_GetLevelData(obj, SKILL_ARIA_OF_COURAGE, 0, skill_level);//啮踝萧啮踝萧啮踝萧啮?
	local value0 = sq_GetLevelData(obj, SKILL_ARIA_OF_COURAGE, 6, skill_level);

	masterAppendage.sq_SetValidTime(sq_GetIntData(obj, SKILL_ARIA_OF_COURAGE, 12, skill_level));
	local change_appendage = masterAppendage.sq_getChangeStatus("AriaOfCourage");
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
  