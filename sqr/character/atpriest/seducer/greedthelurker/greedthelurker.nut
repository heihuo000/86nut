function checkExecutableSkill_Greedthelurker(obj) {
	if (!obj) return false;

	local isUse = obj.sq_IsUseSkill(SKILL_GREEDTHELURKER);

	if (isUse) {
		obj.getVar("atgreedthelurkerani").clear_obj_vector();
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_GREEDTHELURKER, pIntVec, STATE_PRIORITY_FORCE, false, "");
	}
}

function checkCommandEnable_Greedthelurker(obj) {

	return true;
}


function onSetState_Greedthelurker(obj, state, datas, isResetTimer) {
	if (!obj) return;
	local state = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(state);
	obj.sq_StopMove();
	switch (state) {
		case 0:
			sq_StartDrawCastGauge(obj, sq_GetCastTime(obj, SKILL_GREEDTHELURKER, sq_GetSkillLevel(obj, SKILL_GREEDTHELURKER)), true);
			if (Seducer(obj)) {
				local ani = obj.getVar().GetAnimationMap("Seducer142", "Character/Priest/Seducer/ATAnimation/greedreadydemon_body.ani");
				obj.setCurrentAnimation(ani);
			} 
			else {
				local ani = obj.getVar().GetAnimationMap("Seducer141", "Character/Priest/Seducer/ATAnimation/greedready_body.ani");
				obj.setCurrentAnimation(ani);
			}
			obj.getVar("jineng").clear_vector();
			obj.getVar("jineng").push_vector(0);
			break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}


function onProc_Greedthelurker(obj) {
	if (!obj) return;

	local state = obj.getSkillSubState(); 
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	switch (state) {
		case 0:
			if (Seducer(obj)) {
				if (frmIndex == 6 && obj.getVar("jineng").get_vector(0) == 0) {
					obj.sq_SetShake(obj, 5, 240);
					obj.sq_StartWrite();
					obj.sq_WriteDword(3);
					obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(SKILL_GREEDTHELURKER, -1, 0, 1.0));
					obj.sq_WriteDword(obj.sq_GetIntData(SKILL_GREEDTHELURKER, 0));
					obj.sq_SendCreatePassiveObjectPacket(24384, 0, 25, 0, 3);
					obj.getVar("jineng").clear_vector();
					obj.getVar("jineng").push_vector(1);
				}
			} else {
				if (frmIndex == 11 && obj.getVar("jineng").get_vector(0) == 0) {
					obj.sq_SetShake(obj, 5, 240);
					obj.sq_StartWrite();
					obj.sq_WriteDword(3);
					obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(SKILL_GREEDTHELURKER, -1, 0, 1.0));
					obj.sq_WriteDword(obj.sq_GetIntData(SKILL_GREEDTHELURKER, 0));
					obj.sq_SendCreatePassiveObjectPacket(24384, 0, 25, 0, 3);
					obj.getVar("jineng").clear_vector();
					obj.getVar("jineng").push_vector(1);
				}

			}
			break;
	}
}

function onEndCurrentAni_Greedthelurker(obj) {
	if (!obj) return;
	local state = obj.getSkillSubState();
	switch (state) {
		case 0:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, true);
			break;
	}
}

function onEndState_Greedthelurker(obj, newState) {
	if(!obj)
		return false;
	if(newState != STATE_GREEDTHELURKER)
		sq_EndDrawCastGauge(obj);
}