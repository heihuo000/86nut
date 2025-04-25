

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_19")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_19")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_19")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_19");
}
function onSourceKeyFrameFlag_appendage_monster_358332886_19(appendage, flagIndex)
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


	switch (attackIndex)
	{
	case 0:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_OUZO_N_ATK_SWISH");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	case 1:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_OUZO_N_ATK_SWISH");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	case 3:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/crypt_of_pain/ouzo/animation/Effect/IceEnergyFieldStart_00.ani", 125, 0, 0);
			break;
		}
		break;
	case 4:
		switch (flagIndex)
		{
		case 1:
			if (appendage.getVar().getBool(0) == false)
			{
				appendage.getVar("t").clear_timer_vector();
				appendage.getVar("t").push_timer_vector();
				local t_new1 = appendage.getVar("t").get_timer_vector(0);
				t_new1.setParameter(1900, 1);//óÑâ¦1£ºËş?ÊàÌ° óÑâ¦2£ºùÚğ¤ó­â¦
				t_new1.resetInstant(0);//ñìöÇ óÑâ¦Ú±ò±
				t_new1.setEventOnStart(false);//?true ìéËÒã·ö¦Ê¦ì¤õºÛ¡
				appendage.getVar().setBool(0, true);
			}
			break;
		}
		break;
	case 5:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("OUZO_SK_03");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	case 6:
		switch (flagIndex)
		{
		case 1:
			local index = sq_getRandom(0, 1);
			appendage.getVar().clear_vector();//?ğ¶
			appendage.getVar().push_vector(index);//âËÑ¦â¦?
			appendage.getVar("jump").clear_vector();//?ğ¶
			appendage.getVar("jump").push_vector(parentObj.getXPos());//ä²í»ĞùÓ×îñxñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getYPos());//ä²í»ĞùÓ×îñyñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getZPos());//ä²í»ĞùÓ×îñzñ¦øö
			break;
		}
		break;
	case 8:
		switch (flagIndex)
		{
		case 1:
			local index = sq_getRandom(0, 1);
			appendage.getVar().clear_vector();//?ğ¶
			appendage.getVar().push_vector(index);//âËÑ¦â¦?
			appendage.getVar("jump").clear_vector();//?ğ¶
			appendage.getVar("jump").push_vector(parentObj.getXPos());//ä²í»ĞùÓ×îñxñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getYPos());//ä²í»ĞùÓ×îñyñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getZPos());//ä²í»ĞùÓ×îñzñ¦øö
			break;
		}
		break;
	case 10:
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//?ğ¶
			appendage.getVar("jump").push_vector(parentObj.getXPos());//ä²í»ĞùÓ×îñxñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getYPos());//ä²í»ĞùÓ×îñyñ¦øö
			break;
		}
		break;
	case 12:
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//?ğ¶
			appendage.getVar("jump").push_vector(parentObj.getXPos());//ä²í»ĞùÓ×îñxñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getYPos());//ä²í»ĞùÓ×îñyñ¦øö
			break;
		}
		break;
	case 13:
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//?ğ¶
			appendage.getVar("jump").push_vector(parentObj.getXPos());//ä²í»ĞùÓ×îñxñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getYPos());//ä²í»ĞùÓ×îñyñ¦øö
			break;
		}
		break;
	case 17:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("OUZO_MEET_01");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	}

	return true;
}

function proc_appendage_monster_358332886_19(appendage)
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
		case 4:
			local t_new1 = appendage.getVar("t").get_timer_vector(0);
			local pAni = parentObj.getCurrentAnimation();//ÔğÓğani
			local currentT = sq_GetCurrentTime(pAni);
			if (t_new1)
			{
				if (t_new1.isOnEvent(currentT) == true)
				{
					parentObj.sq_PlaySound("OUZO_AIR_SPHERE_FIRING");//÷ëÛ¯á¢ëå
					local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/crypt_of_pain/ouzo/animation/Effect/IceEnergyFieldLaunch_00.ani", 0, 0, 0);
				}
			}
			break;
		case 6:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔğÓğani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(7, 13);//õÅãÁÊà

				local jumpVar = appendage.getVar("jump");//ÔğÓğ

				local index = appendage.getVar().get_vector(0);
				if (index == 0)
				{
					local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 1000, currentT, fireT);
					local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
					local dstZ = jumpVar.get_vector(2) + 150 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//àâöÇÛ°ú¾
					sq_setCurrentAxisPos(parentObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
					sq_setCurrentAxisPos(parentObj, 1, dstY);//àâöÇÓ×îñyñ¦øö
					sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//àâöÇÓ×îñzñ¦øö
				}
				else
				{
					local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 100, currentT, fireT);
					local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
					local dstZ = jumpVar.get_vector(2) + 150 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//àâöÇÛ°ú¾
					sq_setCurrentAxisPos(parentObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
					sq_setCurrentAxisPos(parentObj, 1, dstY);//àâöÇÓ×îñyñ¦øö
					sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//àâöÇÓ×îñzñ¦øö
				}

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		case 7:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("OUZO_SK_04");//÷ëÛ¯á¢ëå
				}
			}
			break;
		case 8:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔğÓğani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(7, 13);//õÅãÁÊà

				local jumpVar = appendage.getVar("jump");//ÔğÓğ

				local index = appendage.getVar().get_vector(0);
				if (index == 0)
				{
					local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 1000, currentT, fireT);
					local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
					local dstZ = jumpVar.get_vector(2) + 150 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//àâöÇÛ°ú¾
					sq_setCurrentAxisPos(parentObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
					sq_setCurrentAxisPos(parentObj, 1, dstY);//àâöÇÓ×îñyñ¦øö
					sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//àâöÇÓ×îñzñ¦øö
				}
				else
				{
					local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 100, currentT, fireT);
					local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
					local dstZ = jumpVar.get_vector(2) + 150 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//àâöÇÛ°ú¾
					sq_setCurrentAxisPos(parentObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
					sq_setCurrentAxisPos(parentObj, 1, dstY);//àâöÇÓ×îñyñ¦øö
					sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//àâöÇÓ×îñzñ¦øö
				}

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		case 9:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("OUZO_SK_05");//÷ëÛ¯á¢ëå
				}
			}
			break;
		case 10:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔğÓğani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 1)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 0);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(1, 5);//õÅãÁÊà

				local jumpVar = appendage.getVar("jump");//ÔğÓğ

				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 550, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);

				sq_setCurrentAxisPos(parentObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
				sq_setCurrentAxisPos(parentObj, 1, dstY);//àâöÇÓ×îñyñ¦øö

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		case 12:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔğÓğani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(7, 10);//õÅãÁÊà

				local jumpVar = appendage.getVar("jump");//ÔğÓğ

				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 200, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//àâöÇÛ°ú¾
				sq_setCurrentAxisPos(parentObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
				sq_setCurrentAxisPos(parentObj, 1, dstY);//àâöÇÓ×îñyñ¦øö

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		case 13:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔğÓğani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(7, 20);//õÅãÁÊà

				local jumpVar = appendage.getVar("jump");//ÔğÓğ

				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 1050, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//àâöÇÛ°ú¾
				sq_setCurrentAxisPos(parentObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
				sq_setCurrentAxisPos(parentObj, 1, dstY);//àâöÇÓ×îñyñ¦øö

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		}
	}
}

function onStart_appendage_monster_358332886_19(appendage)
{
	if (!appendage) return;
	appendage.getVar().setBool(0, false);//àâöÇ
	appendage.getVar().setBool(1, false);//àâöÇ

	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	t.setParameter(100, 1);//óÑâ¦1£ºËş?ÊàÌ° óÑâ¦2£ºùÚğ¤ó­â¦
	t.resetInstant(0);//ñìöÇ óÑâ¦Ú±ò±
	t.setEventOnStart(true);//?true ìéËÒã·ö¦Ê¦ì¤õºÛ¡
}

function onEnd_appendage_monster_358332886_19(appendage)
{
	if (!appendage) return;

}