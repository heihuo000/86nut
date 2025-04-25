

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_22")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_22")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_22")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_22");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_22(appendage, flagIndex)
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

	switch (attackIndex)
	{
	case 2:
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//?ð¶
			appendage.getVar("jump").push_vector(parentObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getZPos());//ä²í»ÐùÓ×îñzñ¦øö
			break;
		}
		break;
	}
	return true;
}

function proc_appendage_monster_358332886_22(appendage)
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
		case 2:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔðÓðani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 1)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 0);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(1, 3);//õÅãÁÊà

				local jumpVar = appendage.getVar("jump");//ÔðÓð


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 100, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 200 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//àâöÇÛ°ú¾
				sq_setCurrentAxisPos(parentObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
				sq_setCurrentAxisPos(parentObj, 1, dstY);//àâöÇÓ×îñyñ¦øö
				sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//àâöÇÓ×îñzñ¦øö

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		}
	}
}

function onStart_appendage_monster_358332886_22(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_22(appendage)
{
	if (!appendage) return;

}