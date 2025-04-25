

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_104")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_104")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_104")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_104");
}
function onSourceKeyFrameFlag_appendage_monster_358332886_104(appendage, flagIndex)
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
	case 4:
		switch (flagIndex)
		{
		case 1:
			local targetObj = sq_FindTarget(parentObj, -700, 700, 900, 9999);//ãü?ìéËÁö¦ÐÎîÜÙÍøö
			if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? ó¦ ÙÒÞÝ
			{
				appendage.getVar("jump").clear_vector();//?ð¶
				appendage.getVar("jump").push_vector(parentObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
				appendage.getVar("jump").push_vector(parentObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
				appendage.getVar("jump").push_vector(parentObj.getZPos());//ä²í»ÐùÓ×îñzñ¦øö
				appendage.getVar("jump").push_vector(targetObj.getXPos());//ÙÍøöÓ×îñxñ¦øö
				appendage.getVar("jump").push_vector(targetObj.getYPos());//ÙÍøöÓ×îñyñ¦øö
			}
			break;
		}
		break;
	}
	return true;
}

function proc_appendage_monster_358332886_104(appendage)
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
		case 4:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔðÓðani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 5)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(1, 4);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(5, 11);//õÅãÁÊà

				local jumpVar = appendage.getVar("jump");//ÔðÓð


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), jumpVar.get_vector(3), currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), jumpVar.get_vector(4), currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 300 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//àâöÇÛ°ú¾
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

function onStart_appendage_monster_358332886_104(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_104(appendage)
{
	if (!appendage) return;

}