function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_bashstock")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_bashstock")
}

function onStart_appendage_bashstock(appendage) {
	if (!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
	local ani = sq_CreateAnimation("", "character/gunner/effect/animation/bashstock/hold/holdloop_00.ani"); //?遣ani
	local pooledObj = sq_CreatePooledObject(ani, true); //?遣蝏撖寡情 ?2嚗?霂交ani蝏??鈣rue 撠梢?瘥?銋alse銝?瘥?
	sq_SetCurrentDirection(pooledObj, pooledObj.getDirection()); //霈曄蔭?孵?
	pooledObj.setCurrentPos(parentObj.getXPos(), parentObj.getYPos() - sq_GetHeightObject(parentObj) / 2, parentObj.getZPos()); //霈曄蔭pos
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_CONTACT); //霈曄蔭?曉?
	sq_AddObject(parentObj, pooledObj, OBJECTTYPE_DRAWONLY, false); //憓?撖寡情
	appendage.getVar().clear_obj_vector();
	appendage.getVar().push_obj_vector(pooledObj);
}

function onEnd_appendage_bashstock(appendage) {
	if (!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
	local pooledObj = appendage.getVar().get_obj_vector(0);
	pooledObj.setValid(false);
}