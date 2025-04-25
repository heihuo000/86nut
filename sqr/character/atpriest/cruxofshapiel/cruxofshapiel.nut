
function checkExecutableSkill_CruxOfShapiel(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_CRUX_OF_SHAPIEL);
	if (isUse)
	{
		if(obj.sq_GetState() == STATE_ARIA_OF_COURAGE || obj.sq_GetState() == STATE_ARIA_OF_REGENERATION)
		{
			obj.sq_StartWrite();
			obj.sq_WriteDword(34);
			obj.sq_SendCreatePassiveObjectPacket(24240, 0, 0, 0, 0);
		}else{
			obj.sq_AddSetStatePacket(STATE_CRUX_OF_SHAPIEL, STATE_PRIORITY_IGNORE_FORCE, true);
			return true;
		}
	}
	return false;
}

function checkCommandEnable_CruxOfShapiel(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	if (state == STATE_STAND)
		return true;
		return true;
}

function onSetState_CruxOfShapiel(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	obj.sq_StopMove();
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
		SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	obj.sq_SetCurrentAnimation(CUSTOM_ANI_CRUX_OF_SHAPIEL_READY_BODY);
}

//--character/priest/effect/animation/atcruxofshapiel/body/cruxofshapielready_aria.ani

function onKeyFrameFlag_CruxOfShapiel(obj,flagIndex)
{
	if(!obj) return false;
	if (flagIndex == 0)
	{
		sq_flashScreen(obj, 150, 1800, 400, 204, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
	}
	if (flagIndex == 1)
	{
		obj.sq_PlaySound("CRUXOFSHAPIEL_SHOT");
	}
	if (flagIndex == 2)
	{
		obj.sq_StartWrite();
		obj.sq_WriteDword(34);
		obj.sq_SendCreatePassiveObjectPacket(24240, 0, 300, 0, 0);
	}
	return true;
}

function onEndCurrentAni_CruxOfShapiel(obj)
{
	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}
