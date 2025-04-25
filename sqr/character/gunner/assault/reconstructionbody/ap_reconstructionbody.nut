function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_reconstructionbody")
	appendage.sq_AddFunctionName("proc", "proc_appendage_reconstructionbody")
}

function onStart_appendage_reconstructionbody(appendage) {
	if (!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
	//UpdataProperty_reconstructionbody(appendage); //ap?ìÓµ§??ÖÓµ•??
}

function proc_appendage_reconstructionbody(appendage) {
	if (!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	if ((obj.getState() == STATE_SIT || obj.getState() == STATE_DOWN) && obj.getZPos() <= 0) {
		local skill_level = sq_GetSkillLevel(obj, SKILL_SUPPRESS);
		if (skill_level > 0 && !sq_GetSkill(obj, SKILL_SUPPRESS).isInCoolTime()) {
			obj.setSkillCommandEnable(SKILL_SUPPRESS, true);
			if (obj.sq_IsEnterSkill(SKILL_SUPPRESS) != -1) {
				local isUse = obj.sq_IsUseSkill(SKILL_SUPPRESS);
				if (isUse) {
					obj.sq_IntVectClear();
					obj.sq_IntVectPush(0);
					obj.sq_AddSetStatePacket(STATE_SUPPRESS, STATE_PRIORITY_USER, true);
					obj.flushSetStatePacket();
				}
			}
		}
	}
}

//ap?ìÓµ§??ÖÓµ•??
function UpdataProperty_reconstructionbody(appendage) {
	local parentObj = appendage.getParent();
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}
	//??áÔî∑?????£Á¨Ü?ä‚à™????Ë≥???
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local skill_level = obj.sq_GetSkillLevel(SKILL_RECONSTRUCTIONBODY);

	//?Ë∏πÔçë???Ë≥???
	//?ÁÆ∏Ó??È§ÉÔäø?ÓÆã¬Ä??ßÁ•à????Ë≥£Óúò?È§??ìÓµ§???
	local value1 = obj.sq_GetLevelData(SKILL_RECONSTRUCTIONBODY, 0, skill_level);

	//?àÊõÑ?≠AP?ìÓµ§??ÖÓµ•??
	local change_appendage = appendage.sq_getChangeStatus("reconstructionbody"); //?∫Ó§ô?ëÊï∂????Ü¬Ä?
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatus("reconstructionbody", obj, obj, 0, 0, false, 0);
	}
	if (change_appendage) {
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, value1.tofloat() * 0.1);
	}
}