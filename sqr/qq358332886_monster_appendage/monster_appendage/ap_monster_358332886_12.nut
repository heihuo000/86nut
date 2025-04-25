

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_12")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_12")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_12")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_12");
}


function onSourceKeyFrameFlag_appendage_monster_358332886_12(appendage, flagIndex)
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

	if (attackIndex == 0)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_0_2.ani", 0, 1, 0);
			break;
		}
	}
	else if (attackIndex == 1)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_1_2.ani", 0, 1, 0);
			break;
		}
	}
	else if (attackIndex == 3)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_0_2.ani", 0, 5, 0);
			break;
		}
	}
	else if (attackIndex == 6)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack06_3.ani", 0, 5, 0);
			break;
		}
	}
	else if (attackIndex == 7)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_1_2.ani", 0, 1, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_1_2.ani", 0, 1, 0);
			break;
		}
	}
	else if (attackIndex == 8)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_1_2.ani", 0, 1, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_1_2.ani", 0, 1, 0);
			break;
		}
	}
	else if (attackIndex == 9)
	{
		switch (flagIndex)
		{
		case 1:
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//ãü?ìéËÁö¦ÐÎîÜÙÍøö
			if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? ó¦ ÙÒÞÝ
			{
				appendage.getVar("jump").clear_vector();//?ð¶
				appendage.getVar("jump").push_vector(parentObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
				appendage.getVar("jump").push_vector(parentObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
				appendage.getVar("jump").push_vector(parentObj.getZPos());//ä²í»ÐùÓ×îñzñ¦øö
				appendage.getVar("jump").push_vector(targetObj.getXPos());//ÙÍøöÓ×îñxñ¦øö
				appendage.getVar("jump").push_vector(targetObj.getYPos());//ÙÍøöÓ×îñyñ¦øö

				sq_getMyCharacter().getVar("debugnew2").push_vector(parentObj.getXPos());//Ê¥ìý
			}
			break;
		}
	}
	else if (attackIndex == 11)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_1_2.ani", 0, 1, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_1_2.ani", 0, 1, 0);
			break;
		case 3:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_0_2.ani", 0, 1, 0);
			break;
		}
	}
	else if (attackIndex == 12)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_12_2.ani", 0, 1, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_12_2_02.ani", 0, 1, 0);
			break;
		case 3:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_12_2_01.ani", 0, 1, 0);
			break;
		}
	}
	else if (attackIndex == 13)
	{
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/thelandofmemory/lambanog/animation/Attack_1_2.ani", 0, 5, 0);
			break;
		}
	}
	return true;
}

function proc_appendage_monster_358332886_12(appendage)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//ÔðÓðÝ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}

	local state = parentObj.getState();//ÔðÓðÝ¾Ê¥ÓßßÚîÜÓ×îñßÒ÷¾
	local attackIndex = parentObj.getAttackIndex();//üÀÔÑ×¾

	if (state == 8)//ÍôÌªßÒ÷¾ù»
	{
		switch (attackIndex)
		{
		case 9:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔðÓðani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 4)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 4);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(4, 9);//õÅãÁÊà

				local jumpVar = appendage.getVar("jump");//ÔðÓð

				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), jumpVar.get_vector(3), currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), jumpVar.get_vector(4), currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 120 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));

				sq_setCurrentAxisPos(parentObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
				sq_setCurrentAxisPos(parentObj, 1, dstY);//àâöÇÓ×îñyñ¦øö
				sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//àâöÇÓ×îñzñ¦øö

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		}
	}
	if (attackIndex == 7 || attackIndex == 8 || attackIndex == 10 || attackIndex == 11 || attackIndex == 14 || attackIndex == 15 || attackIndex == 16)
	{
		sq_SetGrabable(parentObj, false);
	}
	else
	{
		sq_SetGrabable(parentObj, true);
	}
}

function onStart_appendage_monster_358332886_12(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_12(appendage)
{
	if (!appendage) return;

}