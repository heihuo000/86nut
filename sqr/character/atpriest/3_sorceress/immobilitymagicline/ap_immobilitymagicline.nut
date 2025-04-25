function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("proc", "proc_appendage_immobilitymagicline")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_immobilitymagicline")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_immobilitymagicline")
}

function sq_AddEffect(appendage) {
	if (!appendage) {
		return;
	}
}

function proc_appendage_immobilitymagicline(appendage) {
	if (!appendage) {
		return;
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	local obj = sq_GetCNRDObjectToActiveObject(parentObj);
	if (!sourceObj || !obj) {
		appendage.setValid(false);
		return;
	}
	local currTime = appendage.getTimer().Get();
	if (currTime - appendage.getVar("monsterTime").getInt(0) > 3000) {
		appendage.getVar("monsterTime").setInt(0, currTime);
		appendage.setValid(false);
	}
	obj.setCurrentPos(appendage.getVar("pos").get_vector(0), appendage.getVar("pos").get_vector(1), appendage.getVar("pos").get_vector(2));
}

function onStart_appendage_immobilitymagicline(appendage) {
	if (!appendage) {
		return;
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
	local currTime = appendage.getTimer().Get();
	appendage.getVar("monsterTime").setInt(0, currTime);
	appendage.getVar("pos").clear_vector(); 
	appendage.getVar("pos").push_vector(parentObj.getXPos()); 
	appendage.getVar("pos").push_vector(parentObj.getYPos()); 
	appendage.getVar("pos").push_vector(parentObj.getZPos());
}

function onEnd_appendage_immobilitymagicline(appendage) {
	if (!appendage) {
		return;
	}

	local parentObj = appendage.getParent();
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}
}