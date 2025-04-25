

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_4")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_4")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_4")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_4");
}
function onSourceKeyFrameFlag_appendage_monster_358332886_4(appendage, flagIndex)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//?????????
	if (!parentObj)
	{
		appendage.setValid(false);//???ap
		return;
	}

	local state = parentObj.getState();//????????????
	if (state != 8) return true;//?????????????????????

	local attackIndex = parentObj.getAttackIndex();//???ID

	if (attackIndex == 3)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj1 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Human_Animation/WarningFloor_LineBottom.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj2 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Human_Animation/WarningFloor_LineBottomDown.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj3 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Human_Animation/WarningFloor_LineBottomUp.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj4 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Human_Animation/WarningFloor_LineDown.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj5 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Human_Animation/WarningFloor_LineUp.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		}
	}
	else if (attackIndex == 6)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj1 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Human_Animation/Warning_Circle_Bottom.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj2 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Human_Animation/Warning_Circle_BottomDark.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj3 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Human_Animation/Warning_Circle_Normal.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		}
	}
	else if (attackIndex == 8)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj1 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineBottom.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj2 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineBottomDown.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj3 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineBottomUp.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj4 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineDown.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj5 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineUp.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		}
	}
	else if (attackIndex == 9)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj1 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineBottom_Middle.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj2 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineBottomDown_Middle.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj3 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineBottomUp_Middle.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj4 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineDown_Middle.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj5 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineUp_Middle.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		}
	}
	else if (attackIndex == 10)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj1 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineBottom_Middle.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj2 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineBottomDown_Middle.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj3 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineBottomUp_Middle.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj4 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineDown_Middle.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj5 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineUp_Middle.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		}
	}
	else if (attackIndex == 11)
	{
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//??
			appendage.getVar("jump").push_vector(parentObj.getXPos());//????????x???
			appendage.getVar("jump").push_vector(parentObj.getYPos());//????????y???
			appendage.getVar("jump").push_vector(parentObj.getZPos());//????????z???
			break;
		}
	}
	else if (attackIndex == 16)
	{
		switch (flagIndex)
		{
		case 1:
			sq_setFullScreenEffect(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/NOTICE/NilbasGracia_Imposters.ani");
			break;
		}
	}
	else if (attackIndex == 17)
	{
		switch (flagIndex)
		{
		case 1:
			sq_setFullScreenEffect(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/NOTICE/NilbasGracia.ani");
			break;
		}
	}
	else if (attackIndex == 18)
	{
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//??
			appendage.getVar("jump").push_vector(parentObj.getXPos());//????????x???
			appendage.getVar("jump").push_vector(parentObj.getYPos());//????????y???
			appendage.getVar("jump").push_vector(parentObj.getZPos());//????????z???
			break;
		}
	}
	else if (attackIndex == 19)
	{
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//??
			appendage.getVar("jump").push_vector(parentObj.getXPos());//????????x???
			appendage.getVar("jump").push_vector(parentObj.getYPos());//????????y???
			appendage.getVar("jump").push_vector(parentObj.getZPos());//????????z???
			break;
		}
	}
	else if (attackIndex == 20)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineBottom_Pandemonium.ani", 500, -1, 0);
			break;
		}
	}
	else if (attackIndex == 21)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/nillbassgracia/animation/Imposters_Animation/WarningFloor_LineBottom_Pandemonium.ani", 500, -1, 0);
			break;
		}
	}

	return true;
}

function proc_appendage_monster_358332886_4(appendage)
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

	if (state == 8)//?????????
	{
		switch (attackIndex)
		{
		case 11:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//????ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 3)return;


				local count = parentObj.getMyPassiveObjectCount(1008627);
				if (count > 0)
				{
					local myClone = parentObj.getMyPassiveObject(1008627, 0);
					if (!myClone)return;

					local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 2);//????????
					local fireT = pAni.getDelaySum(3, 6);//??????

					local jumpVar = appendage.getVar("jump");//????

					local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), myClone.getXPos(), currentT, fireT);
					local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), myClone.getYPos(), currentT, fireT);
					//local dstZ = jumpVar.get_vector(2) + getArcMoveValue(parentObj, 0 + sq_GetUniformVelocity(0, 100, currentT, fireT), 500, 100);
					local dstZ = jumpVar.get_vector(2) + 500 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));

					sq_setCurrentAxisPos(parentObj, 0, dstX);//????????x???
					sq_setCurrentAxisPos(parentObj, 1, dstY);//????????y???
					sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//????????z???

					if (currentT >= fireT)
						appendage.getVar("jump").clear_vector();
				}
			}
			break;
		case 18:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//????ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 3)return;


				local count = parentObj.getMyPassiveObjectCount(1008627);
				if (count > 0)
				{
					local myClone = parentObj.getMyPassiveObject(1008627, 0);
					if (!myClone)return;

					local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 2);//????????
					local fireT = pAni.getDelaySum(3, 8);//??????

					local jumpVar = appendage.getVar("jump");//????

					local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), myClone.getXPos(), currentT, fireT);
					local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), myClone.getYPos(), currentT, fireT);
					//local dstZ = jumpVar.get_vector(2) + getArcMoveValue(parentObj, 0 + sq_GetUniformVelocity(0, 100, currentT, fireT), 500, 100);
					local dstZ = jumpVar.get_vector(2) + 500 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));

					sq_setCurrentAxisPos(parentObj, 0, dstX);//????????x???
					sq_setCurrentAxisPos(parentObj, 1, dstY);//????????y???
					sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//????????z???

					if (currentT >= fireT)
						appendage.getVar("jump").clear_vector();
				}
			}
			break;
		case 19:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//????ani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 3)return;


				local count = parentObj.getMyPassiveObjectCount(1008627);
				if (count > 0)
				{
					local myClone = parentObj.getMyPassiveObject(1008627, 0);
					if (!myClone)return;

					local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 2);//????????
					local fireT = pAni.getDelaySum(3, 8);//??????

					local jumpVar = appendage.getVar("jump");//????

					local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), myClone.getXPos(), currentT, fireT);
					local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), myClone.getYPos(), currentT, fireT);
					//local dstZ = jumpVar.get_vector(2) + getArcMoveValue(parentObj, 0 + sq_GetUniformVelocity(0, 100, currentT, fireT), 500, 100);
					local dstZ = jumpVar.get_vector(2) + 500 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));

					sq_setCurrentAxisPos(parentObj, 0, dstX);//????????x???
					sq_setCurrentAxisPos(parentObj, 1, dstY);//????????y???
					sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//????????z???

					if (currentT >= fireT)
						appendage.getVar("jump").clear_vector();
				}
			}
			break;
		}
	}
	if (state == 24 || state == 25 || attackIndex == 8 || attackIndex == 9 || attackIndex == 10 || attackIndex == 13 || attackIndex == 17 || attackIndex == 20 || attackIndex == 21 || state == 32 || state == 33 || state == 36)
	{
		sq_SetGrabable(parentObj, false);
	}
	else
	{
		sq_SetGrabable(parentObj, true);
	}

}

function onStart_appendage_monster_358332886_4(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_4(appendage)
{
	if (!appendage) return;

}
