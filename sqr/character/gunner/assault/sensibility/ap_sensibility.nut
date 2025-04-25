function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_sensibility")
}

function onStart_appendage_sensibility(appendage) {
	if (!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
	UpdataProperty_sensibility(appendage); //ap?“îµ¤??…îµ¥??
}


function UpdataProperty_sensibility(appendage) {
	local parentObj = appendage.getParent();
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}

	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local skill_level = obj.sq_GetSkillLevel(SKILL_SENSIBILITY);
	local value2 = obj.sq_GetLevelData(SKILL_SENSIBILITY, 1, skill_level);

	local change_appendage = appendage.sq_getChangeStatus("sensibility");
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatus("sensibility", obj, obj, 0, 0, false, 0);
	}
	if (change_appendage) {
		change_appendage.clearParameter();
		//change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, value1.tofloat() * 0.1);
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, value2.tofloat() * 0.1);
	}
}