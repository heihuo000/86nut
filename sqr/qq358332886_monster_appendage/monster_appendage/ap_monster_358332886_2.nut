

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_2")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_2")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_2")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_2");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_2(appendage, flagIndex)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//??????????
	if (!parentObj)
	{
		appendage.setValid(false);//???ap
		return;
	}

	local state = parentObj.getState();//????????????
	if (state != 8) return true;//????????????????????

	local attackIndex = parentObj.getAttackIndex();//???ID

	if (attackIndex == 2)
	{
		switch (flagIndex)
		{
		case 1:
			if (appendage.getVar().size_vector() > 0)
			{
				local count = parentObj.getMyPassiveObjectCount(109055859);
				if (count > 0)
				{
					local myClone = parentObj.getMyPassiveObject(109055859, 0);
					local srcX = appendage.getVar().get_vector(0);//???x???
					local srcY = appendage.getVar().get_vector(1);//???y???
					local MoveX = sq_GetXPos(myClone);//???x???
					local MoveY = sq_GetYPos(myClone);//???y???
					local pooledObj = sq_CreateDrawOnlyObject(parentObj, "Monster/NewMonsters/GContents/190307_PreyRaid/Eris_Wolf/Animation/Attack_1/WarningEffect/WarningFloor_LineBottom.ani", ENUM_DRAWLAYER_BOTTOM, true);
					local xDistance = sq_Abs(srcX - MoveX);
					local yDistance = sq_Abs(srcY - MoveY);

					local width = sq_GetWidthObject(pooledObj);//???????ani???
					local length = sq_GetDistance(srcX, srcY, MoveX, MoveY, true);//???????????????
					local Rate = length.tofloat() / width.tofloat();//????????

					local angle = sq_ToRadian(sq_ToDegree(sq_Atan2(yDistance.tofloat(), xDistance.tofloat())));//????????
					if (srcY < MoveY) angle = angle / -1.0;//???????y??????????y??? ??????Z??

					local ani = pooledObj.getCurrentAnimation();//???????ani
					ani.setImageRateFromOriginal(Rate, 1.0);//???ani????
					sq_SetfRotateAngle(ani, angle);//????????

				}
			}
			break;
		}
	}
	else if (attackIndex == 5)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj1 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/kirsch/animation/kirsch_pull.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj2 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/kirsch/animation/Warning_Circle_Bottom_middle.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj3 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/kirsch/animation/Warning_Circle_BottomDark_middle.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj4 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/kirsch/animation/Warning_Circle_Normal_middle.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		}
	}
	else if (attackIndex == 6)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj1 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/kirsch/animation/Warning_Circle_Bottom_middle.ani", 100, -1, 0);
			local pooledObj2 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/kirsch/animation/Warning_Circle_BottomDark_middle.ani", 100, -1, 0);
			local pooledObj3 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/kirsch/animation/Warning_Circle_Normal_middle.ani", 100, -1, 0);
			break;
		}
	}
	else if (attackIndex == 7)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj1 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/kirsch/animation/WarningFloor_LineBottom.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj2 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/kirsch/animation/WarningFloor_LineBottomDown.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj3 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/kirsch/animation/WarningFloor_LineBottomUp.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj4 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/kirsch/animation/WarningFloor_LineDown.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj5 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/kirsch/animation/WarningFloor_LineUp.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj6 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/kirsch/animation/Warning_Circle_BottomDark.ani", 400, -1, 0);
			local pooledObj7 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/kirsch/animation/Warning_Circle_Bottom.ani", 400, -1, 0);
			local pooledObj8 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/kirsch/animation/Warning_Circle_Normal.ani", 400, -1, 0);
			break;
		}
	}
	return true;
}

function proc_appendage_monster_358332886_2(appendage)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//??????????
	if (!parentObj)
	{
		appendage.setValid(false);//???ap
		return;
	}

	local state = parentObj.getState();//???????????????????
	local attackIndex = parentObj.getAttackIndex();//??????
	if (state == 0)
	{
		appendage.getVar().clear_vector();//????
		appendage.getVar().push_vector(sq_GetXPos(parentObj));//???????????
		appendage.getVar().push_vector(sq_GetYPos(parentObj));//???????????
	}

	if (state == 8)//????????
	{
		switch (attackIndex)
		{
		case 3:
			local pAni = parentObj.getCurrentAnimation();//????ani
			local count = parentObj.getMyPassiveObjectCount(109055859);
			if (count > 0)
			{
				local myClone = parentObj.getMyPassiveObject(109055859, 0);
				if (!myClone)return;

				local currentT = sq_GetCurrentTime(pAni);//??????
				local fireT = pAni.getDelaySum(0, 2);//?????

				local dstX = sq_GetUniformVelocity(parentObj.getXPos(), myClone.getXPos(), currentT, fireT);
				local dstY = sq_GetUniformVelocity(parentObj.getYPos(), myClone.getYPos(), currentT, fireT);
				//local dstZ = jumpVar.get_vector(2) + getArcMoveValue(parentObj, 0 + sq_GetUniformVelocity(0, 100, currentT, fireT), 500, 100);
				local dstZ = 0 + 200 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));

				sq_setCurrentAxisPos(parentObj, 0, dstX);//???????x???
				sq_setCurrentAxisPos(parentObj, 1, dstY);//???????y???
				sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//???????z???
			}
			break;
		}
	}
	if (state == 22 || state == 23 || state == 24 || state == 25 || attackIndex == 2 || attackIndex == 3 || attackIndex == 5 || attackIndex == 6 || attackIndex == 7)
	{
		sq_SetGrabable(parentObj, false);
		sq_getMyCharacter().getVar("debugnew2").push_vector(3);
	}
	else
	{
		sq_SetGrabable(parentObj, true);
		sq_getMyCharacter().getVar("debugnew2").push_vector(2);
	}
}

function onStart_appendage_monster_358332886_2(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_2(appendage)
{
	if (!appendage) return;

}