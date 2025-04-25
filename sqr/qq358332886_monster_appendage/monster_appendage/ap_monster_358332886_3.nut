

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_3")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_3")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_3")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_3");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_3(appendage, flagIndex)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//????????
	if (!parentObj)
	{
		appendage.setValid(false);//???ap
		return;
	}

	local state = parentObj.getState();//??????????
	if (state != 8) return true;//?????????????????

	local attackIndex = parentObj.getAttackIndex();//???ID
	if (attackIndex == 6)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj1 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/cachaca/animation/WarningFloor_LineBottom.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj2 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/cachaca/animation/WarningFloor_LineBottomDown.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj3 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/cachaca/animation/WarningFloor_LineBottomUp.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj4 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/cachaca/animation/WarningFloor_LineDown.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj5 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/cachaca/animation/WarningFloor_LineUp.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		}
	}
	else if (attackIndex == 7)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj1 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/cachaca/animation/WarningFloor_LineBottom.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj2 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/cachaca/animation/WarningFloor_LineBottomDown.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj3 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/cachaca/animation/WarningFloor_LineBottomUp.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj4 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/cachaca/animation/WarningFloor_LineDown.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj5 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/cachaca/animation/WarningFloor_LineUp.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		}
	}
	else if (attackIndex == 10)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj1 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/cachaca/animation/WarningFloor_LineBottom_short.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj2 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/cachaca/animation/WarningFloor_LineBottomDown_short.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj3 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/cachaca/animation/WarningFloor_LineBottomUp_short.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj4 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/cachaca/animation/WarningFloor_LineDown_short.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj5 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/cachaca/animation/WarningFloor_LineUp_short.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		}
	}

	return true;
}

function proc_appendage_monster_358332886_3(appendage)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//?????????
	if (!parentObj)
	{
		appendage.setValid(false);//???ap
		return;
	}

	local state = parentObj.getState();//????????????????????
	local attackIndex = parentObj.getAttackIndex();//?????

	sq_getMyCharacter().getVar("debugnew2").clear_vector();
	sq_getMyCharacter().getVar("debugnew2").push_vector(state);
	if (state == 23 || state == 25 || attackIndex == 3 || attackIndex == 6 || attackIndex == 9)
	{
		sq_SetGrabable(parentObj, false);
	}
	else
	{
		sq_SetGrabable(parentObj, true);
	}
}

function onStart_appendage_monster_358332886_3(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_3(appendage)
{
	if (!appendage) return;

}