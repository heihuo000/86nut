function checkCommandEnable_TalismanOfSoulSteal(obj) {
	return true;
}

function checkExecutableSkill_TalismanOfSoulSteal(obj) {
	if (!obj) return false;
	local UncleBangValue1 = obj.sq_IsUseSkill(SKILL_TALISMANOFSOULSTEAL);
	if (UncleBangValue1)

	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_TALISMANOFSOULSTEAL, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;

	}
	return false;
}

function onSetState_TalismanOfSoulSteal(obj, state, datas, isResetTimer) {
	if (!obj) return;
	local UncleBangValue1 = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(UncleBangValue1);
	obj.sq_StopMove();
	switch (UncleBangValue1)

	{
		case 0:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_TALISMANOFSOULSTEAL);
			sq_StartDrawCastGauge(obj, sq_GetCastTime(obj, SKILL_TALISMANOFSOULSTEAL, sq_GetSkillLevel(obj, SKILL_TALISMANOFSOULSTEAL)), true);
			break;

	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onEndCurrentAni_TalismanOfSoulSteal(obj) {
	if (!obj || !obj.isMyControlObject()) return;
	local UncleBangValue1 = obj.getSkillSubState();
	if (UncleBangValue1 >= 0)

	{
		obj.sq_IntVectClear();
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_IGNORE_FORCE, true);

	}
}

function onEndState_TalismanOfSoulSteal(obj, newState) {
	if(!obj)
		return false;
	if(newState != STATE_TALISMANOFSOULSTEAL)
		sq_EndDrawCastGauge(obj);
}

function onKeyFrameFlag_TalismanOfSoulSteal(obj, flagIndex) {
	if (!obj) return false;
	local UncleBangValue1 = obj.getSkillSubState();
	switch (UncleBangValue1)

	{
		case 0:
			switch (flagIndex) {
				case 10001:
					if (obj.isMyControlObject()) {
						sq_SetMyShake(obj, 3, 150);
						obj.sq_StartWrite();
						obj.sq_WriteDword(3);
						obj.sq_WriteDword(6);
						obj.sq_SendCreatePassiveObjectPacket(24338, 0, 60, 0, 90);
					}
					break;
			}
			break;

	}
	return true;
}