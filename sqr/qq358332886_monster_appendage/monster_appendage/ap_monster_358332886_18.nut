

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_18")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_18")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_18")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_18");
}
function onSourceKeyFrameFlag_appendage_monster_358332886_18(appendage, flagIndex)
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
	case 15:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/crypt_of_pain/cidre/animation/SpitShockWave_00.ani", 0, 0, 0);
			break;
		}
		break;
	case 18:
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
	case 20:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/crypt_of_pain/cidre/animation/SpitShockWave_00.ani", 0, 0, 0);
			break;
		}
		break;
	case 23:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/crypt_of_pain/cidre/animation/LampCastingStart_00.ani", 0, 0, 20);
			break;
		}
		break;
	case 27:
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//?ğ¶
			appendage.getVar("jump").push_vector(parentObj.getXPos());//ä²í»ĞùÓ×îñxñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getYPos());//ä²í»ĞùÓ×îñyñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getZPos());//ä²í»ĞùÓ×îñzñ¦øö
			break;
		case 2:
			parentObj.sq_PlaySound("R_SIDR_ATK");//÷ëÛ¯á¢ëå
			parentObj.sq_PlaySound("KUNGFUMAN_KICK_01");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	case 28:
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//?ğ¶
			appendage.getVar("jump").push_vector(parentObj.getXPos());//ä²í»ĞùÓ×îñxñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getYPos());//ä²í»ĞùÓ×îñyñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getZPos());//ä²í»ĞùÓ×îñzñ¦øö
			break;
		case 2:
			parentObj.sq_PlaySound("R_SIDR_ATK");//÷ëÛ¯á¢ëå
			parentObj.sq_PlaySound("KUNGFUMAN_KICK_01");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	}

	return true;
}

function proc_appendage_monster_358332886_18(appendage)
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
		case 5:
			local t_new1 = appendage.getVar().get_timer_vector(1);//ÔğÓğãÁñ¤
			if (t_new1)
			{
				if (t_new1.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("SIDR_SK_02");//÷ëÛ¯á¢ëå
					parentObj.sq_PlaySound("SPINNING_RAID_KICK");//÷ëÛ¯á¢ëå
				}
			}
			break;
		case 8:
			local t_new1 = appendage.getVar().get_timer_vector(1);//ÔğÓğãÁñ¤
			if (t_new1)
			{
				if (t_new1.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("SIDR_SK_03");//÷ëÛ¯á¢ëå
					parentObj.sq_PlaySound("SPINNING_RAID_KICK");//÷ëÛ¯á¢ëå
				}
			}
			break;
		case 10:
			local t_new1 = appendage.getVar().get_timer_vector(1);//ÔğÓğãÁñ¤
			if (t_new1)
			{
				if (t_new1.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("SIDR_SK_02");//÷ëÛ¯á¢ëå
					parentObj.sq_PlaySound("SPINNING_RAID_KICK");//÷ëÛ¯á¢ëå
				}
			}
			break;
		case 11:
			local t_new1 = appendage.getVar().get_timer_vector(1);//ÔğÓğãÁñ¤
			if (t_new1)
			{
				if (t_new1.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("SIDR_SK_01");//÷ëÛ¯á¢ëå
				}
			}
			break;
		case 12:
			local t_new1 = appendage.getVar().get_timer_vector(1);//ÔğÓğãÁñ¤
			if (t_new1)
			{
				if (t_new1.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/cidre/animation/Effect/ATDropFire_shockwave.ani", ENUM_DRAWLAYER_NORMAL, true);
				}
			}
			break;
		case 14:
			local t_new1 = appendage.getVar().get_timer_vector(1);//ÔğÓğãÁñ¤
			if (t_new1)
			{
				if (t_new1.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/crypt_of_pain/cidre/animation/LampCastingLoop_00.ani", 0, 0, 20);
				}
			}
			break;
		case 18:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔğÓğani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 8)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 7);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(8, 22);//õÅãÁÊà

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
		case 19:
			local t_new1 = appendage.getVar().get_timer_vector(1);//ÔğÓğãÁñ¤
			if (t_new1)
			{
				if (t_new1.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("SIDR_SK_04_1");//÷ëÛ¯á¢ëå
					local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/crypt_of_pain/cidre/animation/LampCastingLoop_00.ani", 0, 0, 20);
				}
			}
			break;
		case 22:
			local t_new1 = appendage.getVar().get_timer_vector(1);//ÔğÓğãÁñ¤
			if (t_new1)
			{
				if (t_new1.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("SIDR_SK_04_2_01");//÷ëÛ¯á¢ëå
				}
			}
			break;
		case 24:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/crypt_of_pain/cidre/animation/LampCastingLoop_00.ani", 0, 0, 20);
				}
			}
			local t_new1 = appendage.getVar().get_timer_vector(1);//ÔğÓğãÁñ¤
			if (t_new1)
			{
				if (t_new1.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("SIDR_SK_06_2");//÷ëÛ¯á¢ëå
					local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/crypt_of_pain/cidre/animation/LampCastingLoop_00.ani", 0, 0, 20);

				}
			}
			local count = parentObj.getMyPassiveObjectCount(109055319);
			if (count > 0)
			{
				local myClone = parentObj.getMyPassiveObject(109055319, 0);
				if (!myClone)return;
				if (appendage.getVar().getBool(0) == false)
				{
					local pooledObj = sq_AddDrawOnlyAniFromParent(myClone, "passiveobject/kcontents3/crypt_of_pain/cidre/lamp_demon/animation/SummonEffect_00.ani", 0, 0, 120);
					appendage.getVar().setBool(0, true);
				}
			}
			break;
		case 25:
			local t_new1 = appendage.getVar().get_timer_vector(1);//ÔğÓğãÁñ¤
			if (t_new1)
			{
				if (t_new1.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("SIDR_GROGGY");//÷ëÛ¯á¢ëå
				}
			}
			break;
		case 27:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔğÓğani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 9)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 8);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(9, 22);//õÅãÁÊà

				local jumpVar = appendage.getVar("jump");//ÔğÓğ

				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 555, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 150 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
				sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//àâöÇÛ°ú¾
				sq_setCurrentAxisPos(parentObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
				sq_setCurrentAxisPos(parentObj, 1, dstY);//àâöÇÓ×îñyñ¦øö
				sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());//àâöÇÓ×îñzñ¦øö

				if (currentT >= fireT)
					appendage.getVar("jump").clear_vector();
			}
			break;
		case 28:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔğÓğani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 9)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 8);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(9, 22);//õÅãÁÊà

				local jumpVar = appendage.getVar("jump");//ÔğÓğ

				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 555, currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), 245, currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 150 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
				if (jumpVar.get_vector(0) > 550)
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//àâöÇÛ°ú¾
				else
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

function onStart_appendage_monster_358332886_18(appendage)
{
	if (!appendage) return;
	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	local t_new1 = appendage.getVar().get_timer_vector(1);
	t.setParameter(1280, -1);//óÑâ¦1£ºËş?ÊàÌ° óÑâ¦2£ºùÚğ¤ó­â¦
	t.resetInstant(0);//ñìöÇ óÑâ¦Ú±ò±
	t.setEventOnStart(false);//?true ìéËÒã·ö¦Ê¦ì¤õºÛ¡
	t_new1.setParameter(100, 1);//óÑâ¦1£ºËş?ÊàÌ° óÑâ¦2£ºùÚğ¤ó­â¦
	t_new1.resetInstant(0);//ñìöÇ óÑâ¦Ú±ò±
	t_new1.setEventOnStart(true);//?true ìéËÒã·ö¦Ê¦ì¤õºÛ¡

	appendage.getVar().setBool(0, false);
}

function onEnd_appendage_monster_358332886_18(appendage)
{
	if (!appendage) return;

}