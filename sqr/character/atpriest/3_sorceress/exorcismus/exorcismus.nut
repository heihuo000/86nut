EXORCISMUS_ANI_PATH <- [
	"passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atexorcismus/exorcismus_missilea_01.ani",
	"passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atexorcismus/exorcismus_missileb_01.ani",
	"passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atexorcismus/exorcismus_missilec_01.ani",
	"passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atexorcismus/exorcismus_missiled_01.ani",
	"passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atexorcismus/exorcismus_missilee_01.ani",
	"passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atexorcismus/exorcismus_missilef_01.ani",
];

function checkCommandEnable_Exorcismus(obj) {
	return true;
}

function checkExecutableSkill_Exorcismus(obj) {
	if (!obj) return false;
	local UncleBangValue1 = obj.sq_IsUseSkill(SKILL_EXORCISMUS);
	if (UncleBangValue1)

	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_EXORCISMUS, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;

	}
	return false;
}

function onSetState_Exorcismus(obj, state, datas, isResetTimer) {
	if (!obj) return;
	local UncleBangValue1 = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(UncleBangValue1);
	obj.sq_StopMove();
	switch (UncleBangValue1)
	{
		case 0:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_EXORCISMUS1);
			obj.getVar("exorcismusCount").setInt(0, sq_GetLevelData(obj, SKILL_EXORCISMUS, 1, sq_GetSkillLevel(obj, SKILL_EXORCISMUS)));
			sq_StartDrawCastGauge(obj, sq_GetCastTime(obj, SKILL_EXORCISMUS, sq_GetSkillLevel(obj, SKILL_EXORCISMUS)), true);
			break;
		case 1:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_EXORCISMUS2);
			break;
		case 2:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_EXORCISMUS3);
			break;

	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onEndCurrentAni_Exorcismus(obj) {
	if (!obj || !obj.isMyControlObject()) return;
	local UncleBangValue1 = obj.getSkillSubState();
	if (UncleBangValue1 == 0)

	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_EXORCISMUS, STATE_PRIORITY_IGNORE_FORCE, true);

	}
	if (UncleBangValue1 >= 2)

	{
		obj.sq_IntVectClear();
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_IGNORE_FORCE, true);

	}
}

function onProc_Exorcismus(obj) {
	if (!obj) return;
	local UncleBangValue1 = obj.getSkillSubState();
	local UncleBangValue2 = 100;
	if (UncleBangValue1 == 1)

	{
		if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL)) {
			obj.sq_SetStaticMoveInfo(0, UncleBangValue2, UncleBangValue2, true);
			obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		}
		if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL) || sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) {
			obj.sq_SetStaticMoveInfo(1, UncleBangValue2, UncleBangValue2, true);
			obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		}

	}
}

function onProcCon_Exorcismus(obj) {
	if (!obj) return;
	local UncleBangValue1 = obj.getSkillSubState();
	local UncleBangValue2 = obj.getVar("exorcismusCount").getInt(0);
	if (UncleBangValue1 == 1 && obj.isMyControlObject())

	{
		if (sq_isInterval(obj, sq_GetIntData(obj, SKILL_EXORCISMUS, 1), "exorcismusInterval") && UncleBangValue2 > 0) {
			obj.sq_StartWrite();
			obj.sq_WriteDword(3);
			obj.sq_WriteDword(4);
			obj.sq_SendCreatePassiveObjectPacket(24338, 0, 90, 0, 90);
			obj.getVar("exorcismusCount").setInt(0, UncleBangValue2 - 1);
		}
		sq_SetKeyxEnable(obj, E_JUMP_COMMAND, true);
		if (UncleBangValue2 <= 0 || sq_IsEnterCommand(obj, E_JUMP_COMMAND)) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(2);
			obj.sq_AddSetStatePacket(STATE_EXORCISMUS, STATE_PRIORITY_IGNORE_FORCE, true);
		}
		if (sq_IsKey(OPTION_HOTKEY_SKILL, ENUM_SUBKEY_TYPE_ALL))
			obj.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));

	}
}

function onEndState_Exorcismus(obj, newState) {
	if(!obj)
		return false;
	if(newState != STATE_EXORCISMUS)
		sq_EndDrawCastGauge(obj);
}