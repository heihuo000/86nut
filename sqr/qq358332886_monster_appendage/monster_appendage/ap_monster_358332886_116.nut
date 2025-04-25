

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_116")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_116")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_116")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_116")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_monster_358332886_116")
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_116")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_monster_358332886_116")
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_monster_358332886_116")
}

function onDamageParent_appendage_monster_358332886_116(appendage, attacker, boundingBox, isStuck)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//ÔðÓðÝ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}
	parentObj.sq_PlaySound("NEW_SHIELD_DMG");//÷ëÛ¯á¢ëå
}