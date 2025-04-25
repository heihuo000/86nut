

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_111")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_111")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_111")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_111")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_monster_358332886_111")
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_111")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_monster_358332886_111")
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_monster_358332886_111")
}

function onSourceKeyFrameFlag_appendage_monster_358332886_111(appendage, flagIndex)
{
	if (!appendage) return;

	return true;
}

function proc_appendage_monster_358332886_111(appendage)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//ÔðÓðÝ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}
}

function onStart_appendage_monster_358332886_111(appendage)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//ÔðÓðÝ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}
	local ani = parentObj.getCurrentAnimation();
	sq_ChangeDrawLayer(parentObj, ENUM_DRAWLAYER_MIDDLEBACK);

}

function onEnd_appendage_monster_358332886_111(appendage)
{
	if (!appendage) return;
}