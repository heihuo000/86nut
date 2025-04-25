

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_15")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_15")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_15")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_15");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_15(appendage, flagIndex)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//ÔğÓğİ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}

	local state = parentObj.getState();//ÔğÓğÓßßÚßÒ÷¾
	if (state != 8) return true;//åıÍıÜôãÀÍôÌªßÒ÷¾ö¦Ú÷üŞ

	local attackIndex = parentObj.getAttackIndex();//ÍôÌªID

	if (attackIndex == 0)
	{
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("flying").clear_vector();//?ğ¶
			appendage.getVar("flying").push_vector(parentObj.getXPos());//ä²í»ĞùÓ×îñxñ¦øö
			appendage.getVar("flying").push_vector(parentObj.getYPos());//ä²í»ĞùÓ×îñyñ¦øö
			appendage.getVar("flying").push_vector(parentObj.getZPos());//ä²í»ĞùÓ×îñzñ¦øö
			break;
		}
	}
	return true;
}

function proc_appendage_monster_358332886_15(appendage)
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

	if (state == 8)//ÍôÌªßÒ÷¾ù»
	{
		switch (attackIndex)
		{
		case 0:
			if (appendage.getVar("flying").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔğÓğani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 1)return;

				local currentT = sq_GetCurrentTime(pAni);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(1, 4) - pAni.getDelaySum(0, 0);//õÅãÁÊà

				local flyingVar = appendage.getVar("flying");//ÔğÓğ
				local txVar = appendage.getVar();

				local dstX = sq_GetUniformVelocity(flyingVar.get_vector(0), txVar.get_vector(0), currentT, fireT);
				local dstY = sq_GetUniformVelocity(flyingVar.get_vector(1), txVar.get_vector(1), currentT, fireT);
				local dstZ = sq_GetUniformVelocity(flyingVar.get_vector(2), txVar.get_vector(2), currentT, fireT);
				sq_setCurrentAxisPos(parentObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
				sq_setCurrentAxisPos(parentObj, 1, dstY);//àâöÇÓ×îñyñ¦øö
				sq_setCurrentAxisPos(parentObj, 2, dstZ);//àâöÇÓ×îñyñ¦øö

				if (currentT >= fireT)
					appendage.getVar("flying").clear_vector();

			}
			break;
		}
	}
}

function onStart_appendage_monster_358332886_15(appendage)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//ÔğÓğİ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}
	local objectManager = parentObj.getObjectManager();//ÔğÓğÓßßÚÎ·×âĞï
	local objectNumber = objectManager.getCollisionObjectNumber();//õÅâ¦
	for (local i = 0; i < objectNumber; i++)
	{
		local object = objectManager.getCollisionObject(i);//ÔğÓğÍóğ¤×¾ÓßßÚ
		if (!object && !object.isObjectType(OBJECTTYPE_MONSTER)) continue;
		local count = object.getMyPassiveObjectCount(109001653);
		if (count > 0)
		{
			local myClone = object.getMyPassiveObject(109001653, 0);
			appendage.getVar().clear_vector();//?ğ¶
			appendage.getVar().push_vector(myClone.getXPos());
			appendage.getVar().push_vector(myClone.getYPos());
			appendage.getVar().push_vector(myClone.getZPos());
		}
	}
}

function onEnd_appendage_monster_358332886_15(appendage)
{
	if (!appendage) return;

}