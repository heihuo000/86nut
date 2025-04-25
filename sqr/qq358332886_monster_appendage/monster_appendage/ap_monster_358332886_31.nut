

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_31")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_31")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_31")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_31");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_31(appendage, flagIndex)
{
	if (!appendage) return;
	return true;
}

function proc_appendage_monster_358332886_31(appendage)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//ÔğÓğİ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}

	local state = parentObj.getState();//ÔğÓğİ¾Ê¥ÓßßÚîÜÓ×îñßÒ÷¾
	local attackIndex = parentObj.getAttackIndex();//üÀÔÑ×¾

	if (attackIndex == 4 || attackIndex == 6)
	{
		sq_SetGrabable(parentObj, false);
	}
	else
	{
		sq_SetGrabable(parentObj, true);
	}
}

function onStart_appendage_monster_358332886_31(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_31(appendage)
{
	if (!appendage) return;

}