function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("getImmuneTypeDamageRate", "getImmuneTypeDamageRate_appendage_at_sowalker")
	appendage.sq_AddFunctionName("proc", "proc_appendage_at_sowalker")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_at_sowalker")
}

function getImmuneTypeDamageRate_appendage_at_sowalker(appendage, damageRate, attacker) {
	if (!appendage) return damageRate;

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
	local damageReduction = appendage.getVar().getInt(0);
	if (damageReduction != 0) {
		damageReduction = damageReduction.tofloat() * 0.1;
		damageRate = damageRate.tofloat() / damageReduction.tofloat();
	}
	return damageRate;
}

function proc_appendage_at_sowalker(appendage) {
	if (!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}

	//??áÔî∑?????£Á¨Ü??
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	
	obj.setSkillCommandEnable(4, false);
	obj.setSkillCommandEnable(14, false);
	obj.setSkillCommandEnable(7, false);
	obj.setSkillCommandEnable(2, false);
	obj.setSkillCommandEnable(56, false);
	obj.setSkillCommandEnable(37, false);
	obj.setSkillCommandEnable(175, false);
	obj.setSkillCommandEnable(176, false);
	obj.setSkillCommandEnable(47, false);
	obj.setSkillCommandEnable(6, false);
	obj.setSkillCommandEnable(27, false);
	obj.setSkillCommandEnable(30, false);
	obj.setSkillCommandEnable(40, false);
	obj.setSkillCommandEnable(180, false);
	obj.setSkillCommandEnable(3, false);
	obj.setSkillCommandEnable(13, false);
	obj.setSkillCommandEnable(12, false);
	sq_ReleaseActiveStatus(obj, ACTIVESTATUS_FREEZE);
	sq_ReleaseActiveStatus(obj, ACTIVESTATUS_STUN);
	sq_ReleaseActiveStatus(obj, ACTIVESTATUS_STONE);
	sq_ReleaseActiveStatus(obj, ACTIVESTATUS_SLEEP);
	local state = obj.getState();
	local speedAddValue;
	switch (state) {
	case STATE_DASH:
		speedAddValue = obj.sq_GetIntData(SKILL_AT_SOWALKER, 26) * 10;
		break;
	default:
		speedAddValue = obj.sq_GetIntData(SKILL_AT_SOWALKER, 26);
		break;
	}

	local change_appendage = appendage.sq_getChangeStatus("AT_SOWalker"); //?∫Ó§ô?ëÊï∂????Ü¬Ä?
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatus("AT_SOWalker", obj, obj, 0, 0, false, 0); //?ìÓµ§??ù¬Ä?ùËä∏???ôÔíë??
	}
	change_appendage.clearParameter();
	change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, speedAddValue.tofloat()); //???????ùÔìÇ??∞Óµ¶??ÖÓµ•??
}

function onEnd_appendage_at_sowalker(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();
	if(!obj) {
		appendage.setValid(false);
		return;
	}
	sq_SetCustomDamageType(obj, false, 1);
}