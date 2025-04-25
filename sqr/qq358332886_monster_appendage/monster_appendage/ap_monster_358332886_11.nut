

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_11")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_11")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_11")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_11");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_11(appendage, flagIndex)
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
			parentObj.sq_PlaySound("R_MON_CLAW_SWISH");//÷ëÛ¯á¢ëå
			break;
		case 2:
			parentObj.sq_PlaySound("R_MON_AXE_HIT");//÷ëÛ¯á¢ëå
			break;
		}
	}
	else if (attackIndex == 1)
	{
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("JONE_JUMP");//÷ëÛ¯á¢ëå
			local pooledObj1 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nomal/evildomcreature/animation/Attack_1_5.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj2 = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nomal/evildomcreature/animation/Attack_1_6.ani", ENUM_DRAWLAYER_BOTTOM, true);
			local pooledObj3 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/nomal/evildomcreature/animation/Attack_1_7.ani", 0, 0, 0);
			local pooledObj4 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/nomal/evildomcreature/animation/Attack_1_8.ani", 0, 0, 0);
			break;
		}
	}
	return true;
}

function proc_appendage_monster_358332886_11(appendage)
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
		case 1:
			local pAni = parentObj.getCurrentAnimation();//ÔðÓðani
			local frmIndex = sq_GetAnimationFrameIndex(pAni);
			local t = appendage.getVar().get_timer_vector(0);//ÔðÓðãÁñ¤

			if (frmIndex >= 1)
			{
				if (t)
				{
					if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
					{
						parentObj.sq_PlaySound("CREATURE_F_DIG");//÷ëÛ¯á¢ëå
						local number1ani = sq_CreateAnimation("", "monster/kcontents3/themineofabyss/nomal/evildomcreature/animation/Attack_1_1.ani");
						local number1pooledObj = sq_CreatePooledObject(number1ani, true);
						number1pooledObj.setCurrentPos(parentObj.getXPos() + sq_getRandom(-50, 50), parentObj.getYPos() + 1, parentObj.getZPos());
						sq_AddObject(parentObj, number1pooledObj, OBJECTTYPE_DRAWONLY, false);
						sq_moveWithParent(parentObj, number1pooledObj);

						local number2ani = sq_CreateAnimation("", "monster/kcontents3/themineofabyss/nomal/evildomcreature/animation/Attack_1_2.ani");
						local number2pooledObj = sq_CreatePooledObject(number2ani, true);
						number2pooledObj.setCurrentPos(parentObj.getXPos() + sq_getRandom(-50, 50), parentObj.getYPos() + 1, parentObj.getZPos());
						sq_AddObject(parentObj, number2pooledObj, OBJECTTYPE_DRAWONLY, false);
						sq_moveWithParent(parentObj, number2pooledObj);

						local number3ani = sq_CreateAnimation("", "monster/kcontents3/themineofabyss/nomal/evildomcreature/animation/Attack_1_3.ani");
						local number3pooledObj = sq_CreatePooledObject(number3ani, true);
						number3pooledObj.setCurrentPos(parentObj.getXPos() + sq_getRandom(-50, 50), parentObj.getYPos() + 1, parentObj.getZPos());
						sq_AddObject(parentObj, number3pooledObj, OBJECTTYPE_DRAWONLY, false);
						sq_moveWithParent(parentObj, number3pooledObj);

						local number4ani = sq_CreateAnimation("", "monster/kcontents3/themineofabyss/nomal/evildomcreature/animation/Attack_1_4.ani");
						local number4pooledObj = sq_CreatePooledObject(number4ani, true);
						number4pooledObj.setCurrentPos(parentObj.getXPos() + sq_getRandom(-50, 50), parentObj.getYPos() + 1, parentObj.getZPos());
						sq_AddObject(parentObj, number4pooledObj, OBJECTTYPE_DRAWONLY, false);
						sq_moveWithParent(parentObj, number4pooledObj);
					}
				}
			}
			break;
		}
	}
}

function onStart_appendage_monster_358332886_11(appendage)
{
	if (!appendage) return;
	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	t.setParameter(100, -1);//óÑâ¦1£ºËþ?ÊàÌ° óÑâ¦2£ºùÚð¤ó­â¦
	t.resetInstant(0);//ñìöÇ óÑâ¦Ú±ò±
	t.setEventOnStart(false);//?true ìéËÒã·ö¦Ê¦ì¤õºÛ¡
}

function onEnd_appendage_monster_358332886_11(appendage)
{
	if (!appendage) return;

}