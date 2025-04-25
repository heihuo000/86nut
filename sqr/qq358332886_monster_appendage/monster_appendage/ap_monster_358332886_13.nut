

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_13")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_13")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_13")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_13");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_13(appendage, flagIndex)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//ÔðÓðÝ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}

	local state = parentObj.getState();//ÔðÓðÓßßÚßÒ÷¾
	if (state != 8) return true;//åýÍýÜôãÀÍôÌªßÒ÷¾ö¦Ú÷üÞ

	local attackIndex = parentObj.getAttackIndex();//ÍôÌªID

	if (attackIndex == 2)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/thelandofmemory/araq/animation/Attack_2/CastingBottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		}
	}
	else if (attackIndex == 3)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/thelandofmemory/araq/animation/Attack_3/ATD_Force_finish_boom3_23.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		}
	}
	else if (attackIndex == 11)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/araq/animation/Attack_11/WarningFloor_Circle.ani", 400, -1, 0);
			break;
		}
	}
	else if (attackIndex == 0)
	{
		switch (flagIndex)
		{
		case 1:
			sq_setFullScreenEffect(parentObj, "monster/kcontents3/thelandofmemory/araq/animation/Message_UI.ani");
			break;
		}
	}
	else if (attackIndex == 12)
	{
		switch (flagIndex)
		{
		case 1:
			sq_setFullScreenEffect(parentObj, "monster/kcontents3/thelandofmemory/araq/animation/Message_UI.ani");
			break;
		}
	}
	return true;
}

function proc_appendage_monster_358332886_13(appendage)
{
	if (!appendage) return;
	if (!appendage) return;

	local parentObj = appendage.getParent();
	if (!parentObj)
	{
		appendage.setValid(false);
		return;
	}

	local state = parentObj.getState();
	local attackIndex = parentObj.getAttackIndex();

	sq_getMyCharacter().getVar("debugnew2").clear_vector();
	sq_getMyCharacter().getVar("debugnew2").push_vector(state);
	if (attackIndex == 0 || attackIndex == 1 || attackIndex == 2 || attackIndex == 3 || attackIndex == 5 || attackIndex == 6 || attackIndex == 11 || attackIndex == 12)
	{
		sq_SetGrabable(parentObj, false);
	}
	else
	{
		sq_SetGrabable(parentObj, true);
	}
}

function onStart_appendage_monster_358332886_13(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_13(appendage)
{
	if (!appendage) return;

}