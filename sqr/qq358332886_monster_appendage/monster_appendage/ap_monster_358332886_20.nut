

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_20")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_20")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_20")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_20");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_20(appendage, flagIndex)
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
	case 2:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/Attack/Attack2_Effect_01.ani", ENUM_DRAWLAYER_NORMAL, true);
			break;
		}
		break;
	case 3:
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
		case 2:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/Ready_Action/On_Ground.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		case 3:
			parentObj.sq_PlaySound("MANDARIN_SK_05");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	case 6:
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//?ğ¶
			appendage.getVar("jump").push_vector(parentObj.getXPos());//ä²í»ĞùÓ×îñxñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getYPos());//ä²í»ĞùÓ×îñyñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getZPos());//ä²í»ĞùÓ×îñzñ¦øö
			break;
		case 2:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/Ready_Action/On_Ground.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		}
		break;
	case 16:
		switch (flagIndex)
		{
		case 1:
			appendage.getVar("jump").clear_vector();//?ğ¶
			appendage.getVar("jump").push_vector(parentObj.getXPos());//ä²í»ĞùÓ×îñxñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getYPos());//ä²í»ĞùÓ×îñyñ¦øö
			appendage.getVar("jump").push_vector(parentObj.getZPos());//ä²í»ĞùÓ×îñzñ¦øö
			break;
		case 2:
			local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/Ready_Action/On_Ground.ani", ENUM_DRAWLAYER_BOTTOM, true);
			break;
		}
		break;
	case 20:
		switch (flagIndex)
		{
		case 1:
			local direction = parentObj.getDirection();//ÔğÓğÛ°ú¾
			local xPos = parentObj.getXPos();
			local yPos = parentObj.getYPos();//y
			local zPos = parentObj.getZPos();//z
			local distanceX = 1000;//XËå×î
			local distanceY = 1000;//YËå×î
			local distanceZ = 1000;//ZËå×î
			local objectManager = parentObj.getObjectManager();//ÔğÓğÓßßÚÎ·×âĞï
			for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
			{
				local object = objectManager.getCollisionObject(i);//ÔğÓğÍóğ¤×¾ÓßßÚ
				if (object
					&& object.isObjectType(OBJECTTYPE_ACTIVE)
					&& parentObj.isEnemy(object)
					&& object.isInDamagableState(parentObj)
					&& sq_Abs(object.getXPos() - xPos) <= distanceX
					&& sq_Abs(object.getYPos() - yPos) <= distanceY
					&& sq_Abs(object.getZPos() - zPos) <= distanceZ)
				{
					local activeObj = sq_GetCNRDObjectToActiveObject(object);//üÀÔÑ×¾

					//ÙÒŞİØÌ
					if (!activeObj.isDead())
					{
						if (activeObj.getXPos() > parentObj.getXPos())
						{
							local currentT = 800;//Ó×îñãÁÊà
							local fireT = 2000;//õÅãÁÊà

							local dstX = sq_GetUniformVelocity(activeObj.getXPos(), activeObj.getXPos() + 300, currentT, fireT);
							if (activeObj.isMovablePos(dstX, activeObj.getYPos()))
							sq_setCurrentAxisPos(activeObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
							sq_SetCurrentDirection(activeObj, ENUM_DIRECTION_LEFT);//àâöÇÛ°ú¾
						}
						else
						{
							local currentT = 800;//Ó×îñãÁÊà
							local fireT = 2000;//õÅãÁÊà

							local dstX = sq_GetUniformVelocity(activeObj.getXPos(), activeObj.getXPos() - 300, currentT, fireT);
							if (activeObj.isMovablePos(dstX, activeObj.getYPos()))
							sq_setCurrentAxisPos(activeObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
							sq_SetCurrentDirection(activeObj, ENUM_DIRECTION_RIGHT);//àâöÇÛ°ú¾
						}

					}
				}
			}
			break;
		}
		break;
	case 22:
		switch (flagIndex)
		{
		case 1:
			sq_setFullScreenEffect(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/Text/Text_01.ani");
			local direction = parentObj.getDirection();//ÔğÓğÛ°ú¾
			local xPos = parentObj.getXPos();
			local yPos = parentObj.getYPos();//y
			local zPos = parentObj.getZPos();//z
			local distanceX = 1000;//XËå×î
			local distanceY = 1000;//YËå×î
			local distanceZ = 1000;//ZËå×î
			local objectManager = parentObj.getObjectManager();//ÔğÓğÓßßÚÎ·×âĞï
			for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
			{
				local object = objectManager.getCollisionObject(i);//ÔğÓğÍóğ¤×¾ÓßßÚ
				if (object
					&& object.isObjectType(OBJECTTYPE_ACTIVE)
					&& parentObj.isEnemy(object)
					&& object.isInDamagableState(parentObj)
					&& sq_Abs(object.getXPos() - xPos) <= distanceX
					&& sq_Abs(object.getYPos() - yPos) <= distanceY
					&& sq_Abs(object.getZPos() - zPos) <= distanceZ)
				{
					local activeObj = sq_GetCNRDObjectToActiveObject(object);//üÀÔÑ×¾
					//ÙÒŞİØÌ
					if (!activeObj.isDead())
					{
						sq_SetPause(activeObj, PAUSETYPE_OBJECT, 1400);
						sq_SetPause(parentObj, PAUSETYPE_OBJECT, 1400);
					}
				}
			}
			break;
		}
		break;
	case 24:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("MANDARIN_GROGGY_02");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	case 25:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("MANDARIN_CHARGE_01");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	}
	return true;
}

function proc_appendage_monster_358332886_20(appendage)
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
		case 3:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔğÓğani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(7, 16);//õÅãÁÊà
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
		case 4:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/FlowerFall/FlowerFall_Start_00.ani", ENUM_DRAWLAYER_NORMAL, true);
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
				local fireT = pAni.getDelaySum(7, 14);//õÅãÁÊà

				local jumpVar = appendage.getVar("jump");//ÔğÓğ


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 1000, currentT, fireT);
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
		case 7:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("MANDARIN_SK_04");//÷ëÛ¯á¢ëå
				}
			}
			break;
		case 10:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/Ready_Action/On_Ground.ani", ENUM_DRAWLAYER_BOTTOM, true);
				}
			}
			break;
		case 13:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("MANDARIN_NEN_SPAWN_CAST");//÷ëÛ¯á¢ëå
				}
			}
			break;
		case 16:
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔğÓğani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(7, 14);//õÅãÁÊà

				local jumpVar = appendage.getVar("jump");//ÔğÓğ


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), 1000, currentT, fireT);
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
		case 17:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("MANDARIN_SK_07");//÷ëÛ¯á¢ëå
				}
			}
			break;
		case 19:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("MANDARIN_SK_02");//÷ëÛ¯á¢ëå
				}
			}
			break;
		case 20:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("MANDARIN_SK_01_2");//÷ëÛ¯á¢ëå
					local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/TheMandara/StartDustGround_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
					sq_setFullScreenEffect(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/animation/NOTICE/NOTICE.ani");
				}
			}
			break;
		}
	}
}

function onStart_appendage_monster_358332886_20(appendage)
{
	if (!appendage) return;

	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	t.setParameter(100, 1);//óÑâ¦1£ºËş?ÊàÌ° óÑâ¦2£ºùÚğ¤ó­â¦
	t.resetInstant(0);//ñìöÇ óÑâ¦Ú±ò±
	t.setEventOnStart(true);//?true ìéËÒã·ö¦Ê¦ì¤õºÛ¡

}

function onEnd_appendage_monster_358332886_20(appendage)
{
	if (!appendage) return;

}