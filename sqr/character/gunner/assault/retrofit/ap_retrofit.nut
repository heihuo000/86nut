function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_retrofit")
}

function onStart_appendage_retrofit(appendage) {
	if (!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
	UpdataProperty_retrofit(appendage); //ap?“îµ¤??…îµ¥??
}

//ap?“îµ¤??…îµ¥??
function UpdataProperty_retrofit(appendage) {
	local parentObj = appendage.getParent();
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}
	//??‡ï”·?????£ç¬†?Šâˆª????è³???
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local skill_level = obj.sq_GetSkillLevel(SKILL_RETROFIT);

	//?è¸¹ï‘???è³???
	//?ç®¸î??é¤ƒïŠ¿?î®‹Â€??§ç¥ˆ????è³£îœ˜?é¤??“îµ¤???
	//local value1 = obj.sq_GetLevelData(SKILL_RETROFIT, 0, skill_level);
	//?????ŠïŠ¿????îº?
	local value2 = obj.sq_GetLevelData(SKILL_RETROFIT, 1, skill_level);

	//?ˆæ›„?­AP?“îµ¤??…îµ¥??
	local change_appendage = appendage.sq_getChangeStatus("retrofit"); //?ºî¤™?‘æ•¶????†Â€?
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatus("retrofit", obj, obj, 0, 0, false, 0);
	}
	if (change_appendage) {
		change_appendage.clearParameter();
		//change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, value1.tofloat() * 0.1);
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, value2.tofloat() * 0.1);
	}
}