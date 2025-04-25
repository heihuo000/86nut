function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_activation")
	appendage.sq_AddFunctionName("proc", "proc_appendage_activation")
}

function proc_appendage_activation(appendage){
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();
	obj = sq_GetCNRDObjectToSQRCharacter(obj);
	if(!obj)
		return;
	local currentT = appendage.getTimer().Get();
	local t = appendage.sq_var.get_timer_vector(0);
	
	if (t.isOnEvent(currentT) == true) {
		if(obj.isMyControlObject()) {
				local skill = sq_GetSkill(obj, SKILL_ACTIVATION); 
				if(skill) {
					local spendMp = skill.getSpendMp(obj, -1)/121;
					spendMp = spendMp.tointeger();
					if (spendMp > obj.getMp())
					{
						appendage.setValid(false);
					}
					else
					{
						obj.sendSetMpPacket(obj.getMp() - spendMp);
					}
				
				}
			
		}
	}

	local term = 1000;
	if(t.getEventTerm() != term) {
		t.setParameter(term, -1);
		t.resetInstant(0);
	}
}

function onStart_appendage_activation(appendage) {
	if (!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
	UpdataProperty_activation(appendage); //ap?“îµ¤??…îµ¥??
	appendage.sq_var.clear_timer_vector();
	appendage.sq_var.push_timer_vector();
			
	local t = appendage.sq_var.get_timer_vector(0);
	t.setParameter(1000, -1);
	t.resetInstant(0);
}

//ap?“îµ¤??…îµ¥??
function UpdataProperty_activation(appendage) {
	local parentObj = appendage.getParent();
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}
	//??‡ï”·?????£ç¬†?Šâˆª????è³???
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local skill_level = obj.sq_GetSkillLevel(SKILL_ACTIVATION);

	//?è¸¹ï‘???è³???
	//?ç®¸î??é¤ƒïŠ¿?î®‹Â€??§ç¥ˆ????è³£îœ˜?é¤??“îµ¤???
	//local value1 = obj.sq_GetLevelData(SKILL_ACTIVATION, 0, skill_level);
	//?é¤ƒïŠ¿?î¸æ¼²?“îµ¤???
	local value2 = obj.sq_GetLevelData(SKILL_ACTIVATION, 1, skill_level);
	//?˜é¤ƒ??î¸æ¼²?“îµ¤???
	local value3 = obj.sq_GetLevelData(SKILL_ACTIVATION, 2, skill_level);

	//?ˆæ›„?­AP?“îµ¤??…îµ¥??
	local change_appendage = appendage.sq_getChangeStatus("activation"); //?ºî¤™?‘æ•¶????†Â€?
	if (!change_appendage) {
		change_appendage = appendage.sq_AddChangeStatus("activation", obj, obj, 0, 0, false, 0);
	}
	if (change_appendage) {
		change_appendage.clearParameter();
		//change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, value1.tofloat() * 0.1);
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, value2.tofloat() * 0.1);
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, value3.tofloat() * 0.1);
	}
}