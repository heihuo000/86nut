

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_28")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_28")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_28")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_28");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_28(appendage, flagIndex)
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
	case 0:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_SKILL_03");//÷ëÛ¯á¢ëå
			appendage.getVar().setBool(0, false);
			break;
		case 2:
			parentObj.sq_PlaySound("ROSSALL_DETECTION");//÷ëÛ¯á¢ëå
			if (appendage.getVar().getBool(0) == false)
			{
				appendage.getVar().clear_timer_vector();
				appendage.getVar().push_timer_vector();
				local t = appendage.getVar().get_timer_vector(0);
				t.setParameter(20, -1);//óÑâ¦1£ºËþ?ÊàÌ° óÑâ¦2£ºùÚð¤ó­â¦
				t.resetInstant(0);//ñìöÇ óÑâ¦Ú±ò±
				t.setEventOnStart(false);//?true ìéËÒã·ö¦Ê¦ì¤õºÛ¡
				appendage.getVar().setBool(0, true);
			}
			break;
		}
		break;
	case 2:
		switch (flagIndex)
		{
		case 1:
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//ãü?ìéËÁö¦ÐÎîÜÙÍøö
			appendage.getVar("move").clear_vector();//?ð¶
			appendage.getVar("move").push_vector(parentObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
			appendage.getVar("move").push_vector(parentObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
			appendage.getVar("move").push_vector(targetObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
			appendage.getVar("move").push_vector(targetObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
			break;
		}
		break;
	case 4:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_TELEPORT");//÷ëÛ¯á¢ëå
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		}
		break;
	case 5:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_ROSENBERG_K_WEAPON_SWING");//÷ëÛ¯á¢ëå
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att5Dust1_00.ani", 0, 0, 0);
			break;
		case 2:
			parentObj.sq_PlaySound("R_ROSENBERG_K_WEAPON_SWING");//÷ëÛ¯á¢ëå
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att5Dust2_00.ani", 0, 0, 0);
			break;
		}
		break;
	case 6:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_ROSENBERG_K_WEAPON_SWING");//÷ëÛ¯á¢ëå
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att6Dust1_00.ani", 0, 0, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att6Dust2_00.ani", 0, 0, 0);
			break;
		}
		break;
	case 7:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		}
		break;
	case 8:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("KHAZAN_SKILL_06");//÷ëÛ¯á¢ëå
			parentObj.sq_PlaySound("ROSENBERG_K_SKILL_06");//÷ëÛ¯á¢ëå
			if (appendage.getVar().getBool(2) == false)
			{
				appendage.getVar("t3").clear_timer_vector();
				appendage.getVar("t3").push_timer_vector();
				local t3 = appendage.getVar().get_timer_vector(0);
				t3.setParameter(20, -1);//óÑâ¦1£ºËþ?ÊàÌ° óÑâ¦2£ºùÚð¤ó­â¦
				t3.resetInstant(0);//ñìöÇ óÑâ¦Ú±ò±
				t3.setEventOnStart(false);//?true ìéËÒã·ö¦Ê¦ì¤õºÛ¡
				appendage.getVar().setBool(2, true);
			}
			break;
		case 2:
			sq_setFullScreenEffect(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Message_UI.ani");
			parentObj.sq_PlaySound("ROSSALL_DETECTION");//÷ëÛ¯á¢ëå
			parentObj.sq_PlaySound("ROSENBERG_K_BLOOD_WEAPON_SUMMON");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	case 9:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_TELEPORT");//÷ëÛ¯á¢ëå
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		}
		break;
	case 10:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_TELEPORT");//÷ëÛ¯á¢ëå
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		}
		break;
	case 11:
		switch (flagIndex)
		{
		case 1:

			appendage.getVar("move").clear_vector();//?ð¶
			appendage.getVar("move").push_vector(parentObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
			appendage.getVar("move").push_vector(parentObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
			break;
		case 2:
			parentObj.sq_PlaySound("ROSENBERG_K_SKILL_04");//÷ëÛ¯á¢ëå
			parentObj.sq_PlaySound("R_ROSENBERG_K_WEAPON_SWING");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	case 12:
		switch (flagIndex)
		{
		case 1:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/WarningFloor_LineBottom.ani", 0, 20, 0);
			break;
		case 2:
			parentObj.sq_PlaySound("ROSENBERG_K_WEAPON_DOWN");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	case 13:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_APPEAR");//÷ëÛ¯á¢ëå
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/IncommingBgEff/IncommingBgEff_00.ani", 400, 300, 0);
			break;
		case 2:
			parentObj.sq_PlaySound("KHAZAN_MEET_01");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	case 14:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_TELEPORT");//÷ëÛ¯á¢ëå
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		}
		break;
	case 15:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_ROSENBERG_K_ATK");//÷ëÛ¯á¢ëå
			parentObj.sq_PlaySound("R_ROSENBERG_K_WEAPON_SWING");//÷ëÛ¯á¢ëå
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//ãü?ìéËÁö¦ÐÎîÜÙÍøö
			appendage.getVar("move").clear_vector();//?ð¶
			appendage.getVar("move").push_vector(parentObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
			appendage.getVar("move").push_vector(parentObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
			appendage.getVar("move").push_vector(targetObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
			appendage.getVar("move").push_vector(targetObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
			break;
		}
		break;
	case 16:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_TELEPORT");//÷ëÛ¯á¢ëå
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		}
		break;
	case 17:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_ROSENBERG_K_ATK");//÷ëÛ¯á¢ëå
			parentObj.sq_PlaySound("R_ROSENBERG_K_WEAPON_SWING");//÷ëÛ¯á¢ëå
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//ãü?ìéËÁö¦ÐÎîÜÙÍøö
			appendage.getVar("move").clear_vector();//?ð¶
			appendage.getVar("move").push_vector(parentObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
			appendage.getVar("move").push_vector(parentObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
			appendage.getVar("move").push_vector(targetObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
			appendage.getVar("move").push_vector(targetObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
			break;
		}
		break;
	case 18:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_TELEPORT");//÷ëÛ¯á¢ëå
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		case 2:
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/Att7Teleport_08.ani", 0, 0, 0);
			break;
		}
		break;
	case 19:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_ROSENBERG_K_ATK");//÷ëÛ¯á¢ëå
			parentObj.sq_PlaySound("R_ROSENBERG_K_WEAPON_SWING");//÷ëÛ¯á¢ëå
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//ãü?ìéËÁö¦ÐÎîÜÙÍøö
			appendage.getVar("move").clear_vector();//?ð¶
			appendage.getVar("move").push_vector(parentObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
			appendage.getVar("move").push_vector(parentObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
			appendage.getVar("move").push_vector(targetObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
			appendage.getVar("move").push_vector(targetObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
			break;
		}
		break;
	case 21:
		switch (flagIndex)
		{
		case 1:
			if (appendage.getVar().getBool(1) == false)
			{
				local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//ãü?ìéËÁö¦ÐÎîÜÙÍøö
				if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? ó¦ ÙÒÞÝ
				{
					local count = parentObj.getMyPassiveObjectCount(1008636);
					if (count > 0)
					{
						local myClone = parentObj.getMyPassiveObject(1008636, 0);
						appendage.getVar("obj1").clear_vector();//?ð¶
						appendage.getVar("obj1").push_vector(myClone.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
						appendage.getVar("obj1").push_vector(myClone.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
						appendage.getVar("obj1").push_vector(targetObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
						appendage.getVar("obj1").push_vector(targetObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
						local pooledObj = sq_CreateDrawOnlyObject(myClone, "Monster/NewMonsters/GContents/190307_PreyRaid/Zodiac/Star_1/Animation/Attack_Exp/Effect/WarningFloor_LineBottom.ani", ENUM_DRAWLAYER_BOTTOM, true);
						local xDistance = sq_Abs(myClone.getXPos() - targetObj.getXPos());
						local yDistance = sq_Abs(myClone.getYPos() - targetObj.getYPos());

						local width = sq_GetWidthObject(pooledObj);//ÔðÓðÓ×îñaniíþÓø
						local length = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), targetObj.getXPos(), targetObj.getYPos(), true);//ÔðÓðÕ×ñ¦øöÊàËå×î
						local Rate = length.tofloat() / width.tofloat();//ÔðõóÝïÖÇ

						local angle = sq_ToRadian(sq_ToDegree(sq_Atan2(yDistance.tofloat(), xDistance.tofloat())));//ÔðÓðûÁÓø
						if (myClone.getYPos() < targetObj.getYPos()) angle = angle / -1.0;//åýÍýä²îÜyñ¦øöÓÞéÍÙÍøöyñ¦øö öÎ ËÇ?Ý¶â¦
						if (myClone.getXPos() > targetObj.getXPos())
							sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_LEFT);//àâöÇÛ°ú¾
						else
							sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_RIGHT);//àâöÇÛ°ú¾
						local ani = pooledObj.getCurrentAnimation();//ÔðÓðÓ×îñani
						ani.setImageRateFromOriginal(Rate, 1.0);//ÌÚËÇaniÓÞá³
						sq_SetfRotateAngle(ani, angle);//àâöÇÊÇÓø

					}
				}
			}
			break;
		case 2:
			if (appendage.getVar().getBool(1) == false)
			{
				local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//ãü?ìéËÁö¦ÐÎîÜÙÍøö
				if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? ó¦ ÙÒÞÝ
				{
					local count = parentObj.getMyPassiveObjectCount(1008638);
					if (count > 0)
					{
						local myClone = parentObj.getMyPassiveObject(1008638, 0);
						appendage.getVar("obj2").clear_vector();//?ð¶
						appendage.getVar("obj2").push_vector(myClone.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
						appendage.getVar("obj2").push_vector(myClone.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
						appendage.getVar("obj2").push_vector(targetObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
						appendage.getVar("obj2").push_vector(targetObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
						local pooledObj = sq_CreateDrawOnlyObject(myClone, "Monster/NewMonsters/GContents/190307_PreyRaid/Zodiac/Star_1/Animation/Attack_Exp/Effect/WarningFloor_LineBottom.ani", ENUM_DRAWLAYER_BOTTOM, true);
						local xDistance = sq_Abs(myClone.getXPos() - targetObj.getXPos());
						local yDistance = sq_Abs(myClone.getYPos() - targetObj.getYPos());

						local width = sq_GetWidthObject(pooledObj);//ÔðÓðÓ×îñaniíþÓø
						local length = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), targetObj.getXPos(), targetObj.getYPos(), true);//ÔðÓðÕ×ñ¦øöÊàËå×î
						local Rate = length.tofloat() / width.tofloat();//ÔðõóÝïÖÇ

						local angle = sq_ToRadian(sq_ToDegree(sq_Atan2(yDistance.tofloat(), xDistance.tofloat())));//ÔðÓðûÁÓø
						if (myClone.getYPos() < targetObj.getYPos()) angle = angle / -1.0;//åýÍýä²îÜyñ¦øöÓÞéÍÙÍøöyñ¦øö öÎ ËÇ?Ý¶â¦
						if (myClone.getXPos() > targetObj.getXPos())
							sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_LEFT);//àâöÇÛ°ú¾
						else
							sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_RIGHT);//àâöÇÛ°ú¾
						local ani = pooledObj.getCurrentAnimation();//ÔðÓðÓ×îñani
						ani.setImageRateFromOriginal(Rate, 1.0);//ÌÚËÇaniÓÞá³
						sq_SetfRotateAngle(ani, angle);//àâöÇÊÇÓø

						sq_getMyCharacter().getVar("debugnew2").push_vector(1);//Ê¥ìý
					}
				}
			}
			break;
		case 3:
			if (appendage.getVar().getBool(1) == false)
			{
				local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//ãü?ìéËÁö¦ÐÎîÜÙÍøö
				if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? ó¦ ÙÒÞÝ
				{
					local count = parentObj.getMyPassiveObjectCount(1008639);
					if (count > 0)
					{
						local myClone = parentObj.getMyPassiveObject(1008639, 0);
						appendage.getVar("obj3").clear_vector();//?ð¶
						appendage.getVar("obj3").push_vector(myClone.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
						appendage.getVar("obj3").push_vector(myClone.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
						appendage.getVar("obj3").push_vector(targetObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
						appendage.getVar("obj3").push_vector(targetObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
						local pooledObj = sq_CreateDrawOnlyObject(myClone, "Monster/NewMonsters/GContents/190307_PreyRaid/Zodiac/Star_1/Animation/Attack_Exp/Effect/WarningFloor_LineBottom.ani", ENUM_DRAWLAYER_BOTTOM, true);
						local xDistance = sq_Abs(myClone.getXPos() - targetObj.getXPos());
						local yDistance = sq_Abs(myClone.getYPos() - targetObj.getYPos());

						local width = sq_GetWidthObject(pooledObj);//ÔðÓðÓ×îñaniíþÓø
						local length = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), targetObj.getXPos(), targetObj.getYPos(), true);//ÔðÓðÕ×ñ¦øöÊàËå×î
						local Rate = length.tofloat() / width.tofloat();//ÔðõóÝïÖÇ

						local angle = sq_ToRadian(sq_ToDegree(sq_Atan2(yDistance.tofloat(), xDistance.tofloat())));//ÔðÓðûÁÓø
						if (myClone.getYPos() < targetObj.getYPos()) angle = angle / -1.0;//åýÍýä²îÜyñ¦øöÓÞéÍÙÍøöyñ¦øö öÎ ËÇ?Ý¶â¦
						if (myClone.getXPos() > targetObj.getXPos())
							sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_LEFT);//àâöÇÛ°ú¾
						else
							sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_RIGHT);//àâöÇÛ°ú¾
						local ani = pooledObj.getCurrentAnimation();//ÔðÓðÓ×îñani
						ani.setImageRateFromOriginal(Rate, 1.0);//ÌÚËÇaniÓÞá³
						sq_SetfRotateAngle(ani, angle);//àâöÇÊÇÓø

						sq_getMyCharacter().getVar("debugnew2").push_vector(1);//Ê¥ìý
					}
				}
			}
			break;
		case 4:
			if (appendage.getVar().getBool(1) == false)
			{
				local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//ãü?ìéËÁö¦ÐÎîÜÙÍøö
				if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? ó¦ ÙÒÞÝ
				{
					local count = parentObj.getMyPassiveObjectCount(1008637);
					if (count > 0)
					{
						local myClone = parentObj.getMyPassiveObject(1008637, 0);
						appendage.getVar("obj4").clear_vector();//?ð¶
						appendage.getVar("obj4").push_vector(myClone.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
						appendage.getVar("obj4").push_vector(myClone.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
						appendage.getVar("obj4").push_vector(targetObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
						appendage.getVar("obj4").push_vector(targetObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
						local pooledObj = sq_CreateDrawOnlyObject(myClone, "Monster/NewMonsters/GContents/190307_PreyRaid/Zodiac/Star_1/Animation/Attack_Exp/Effect/WarningFloor_LineBottom.ani", ENUM_DRAWLAYER_BOTTOM, true);
						local xDistance = sq_Abs(myClone.getXPos() - targetObj.getXPos());
						local yDistance = sq_Abs(myClone.getYPos() - targetObj.getYPos());

						local width = sq_GetWidthObject(pooledObj);//ÔðÓðÓ×îñaniíþÓø
						local length = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), targetObj.getXPos(), targetObj.getYPos(), true);//ÔðÓðÕ×ñ¦øöÊàËå×î
						local Rate = length.tofloat() / width.tofloat();//ÔðõóÝïÖÇ

						local angle = sq_ToRadian(sq_ToDegree(sq_Atan2(yDistance.tofloat(), xDistance.tofloat())));//ÔðÓðûÁÓø
						if (myClone.getYPos() < targetObj.getYPos()) angle = angle / -1.0;//åýÍýä²îÜyñ¦øöÓÞéÍÙÍøöyñ¦øö öÎ ËÇ?Ý¶â¦
						if (myClone.getXPos() > targetObj.getXPos())
							sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_LEFT);//àâöÇÛ°ú¾
						else
							sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_RIGHT);//àâöÇÛ°ú¾
						local ani = pooledObj.getCurrentAnimation();//ÔðÓðÓ×îñani
						ani.setImageRateFromOriginal(Rate, 1.0);//ÌÚËÇaniÓÞá³
						sq_SetfRotateAngle(ani, angle);//àâöÇÊÇÓø

						sq_getMyCharacter().getVar("debugnew2").push_vector(1);//Ê¥ìý
						appendage.getVar().setBool(1, true);
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
			parentObj.sq_PlaySound("ROSENBERG_K_SHOUT");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	case 26:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("ROSENBERG_K_APPEAR");//÷ëÛ¯á¢ëå
			local pooledObj = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/darktemple/rosenberg_possessedbykhazan/animation/IncommingBgEff/IncommingBgEff_00.ani", 400, 300, 0);
			break;
		case 2:
			parentObj.sq_PlaySound("KHAZAN_MEET_01");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	}
	return true;
}

function proc_appendage_monster_358332886_28(appendage)
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
		case 0:
			local t = appendage.getVar().get_timer_vector(0);
			local pAni = parentObj.getCurrentAnimation();//ÔðÓðani
			local currentT = sq_GetCurrentTime(pAni);
			if (t)
			{
				if (t.isOnEvent(currentT) == true)
				{
					local count = parentObj.getMyPassiveObjectCount(109055640);
					if (count > 0)
					{
						local myClone = parentObj.getMyPassiveObject(109055640, 0);
						if (!myClone)return;
						local objpAni = myClone.getCurrentAnimation();//ÔðÓðani
						local objcurrentT = sq_GetCurrentTime(objpAni);
						local direction = parentObj.getDirection();//ÔðÓðÛ°ú¾
						local xPos = parentObj.getXPos();
						local yPos = parentObj.getYPos();//y
						local zPos = parentObj.getZPos();//z
						local distanceX = 1000;//XËå×î
						local distanceY = 1000;//YËå×î
						local distanceZ = 1000;//ZËå×î
						local objectManager = parentObj.getObjectManager();//ÔðÓðÓßßÚÎ·×âÐï
						for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
						{
							local object = objectManager.getCollisionObject(i);//ÔðÓðÍóð¤×¾ÓßßÚ
							if (object
								&& object.isObjectType(OBJECTTYPE_ACTIVE)
								&& parentObj.isEnemy(object)
								&& object.isInDamagableState(parentObj)
								&& sq_Abs(object.getXPos() - xPos) <= distanceX
								&& sq_Abs(object.getYPos() - yPos) <= distanceY
								&& sq_Abs(object.getZPos() - zPos) <= distanceZ)
							{
								local targetObj = sq_GetCNRDObjectToActiveObject(object);//üÀÔÑ×¾

								//ÙÒÞÝØÌ
								if (!targetObj.isDead())
								{
									local length1 = sq_GetDistance(targetObj.getXPos(), targetObj.getYPos(), myClone.getXPos(), myClone.getYPos(), true);//ÔðÓðÕ×ñ¦øöÊàËå×î
									local dstX = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 500, objcurrentT, 2900);
									local dstY = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 500, objcurrentT, 2900);
									local dst1X = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 1500, objcurrentT, 2900);
									local dst1Y = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 1500, objcurrentT, 2900);
									local length2 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dstX, dstY, true);//ÔðÓðÕ×ñ¦øöÊàËå×î
									local length3 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dst1X, dst1Y, true);//ÔðÓðÕ×ñ¦øöÊàËå×î
									if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) >= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
									{
										if (sq_Abs(length1 - length3) < 30 && targetObj.getZPos() <= 10)
										{
											sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
										}
									}
									else if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) <= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
									{
										if (sq_Abs(length1 - length2) < 30 && targetObj.getZPos() <= 10)
										{
											sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
										}
									}
								}
							}
						}
					}
				}
			}
			break;
		case 2:
			if (appendage.getVar("move").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔðÓðani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 5)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 4);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(5, 11);//õÅãÁÊà

				local moveVar = appendage.getVar("move");//ÔðÓð

				local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
				local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
				sq_setCurrentAxisPos(parentObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
				sq_setCurrentAxisPos(parentObj, 1, dstY);//àâöÇÓ×îñyñ¦øö

				if (currentT >= fireT)
					appendage.getVar("move").clear_vector();
			}
			break;
		case 8:
			local xPos = parentObj.getXPos();//x
			local yPos = parentObj.getYPos();//y
			local zPos = parentObj.getZPos();//z
			local distance = 1000;//Ëå×î
			local objectManager = parentObj.getObjectManager();//ÔðÓðÓßßÚÎ·×âÐï
			for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
			{
				local object = objectManager.getCollisionObject(i);//ÔðÓðÍóð¤×¾ÓßßÚ
				if (object
					&& object.isObjectType(OBJECTTYPE_CHARACTER)
					&& parentObj.isEnemy(object)
					&& object.isInDamagableState(parentObj)
					&& sq_GetDistance(xPos, yPos, object.getXPos(), object.getYPos(), true) <= distance
					&& sq_Abs(object.getZPos() - zPos) <= 300)
				{
					local targetObj = sq_GetCNRDObjectToActiveObject(object);//üÀÔÑ×¾
					//ÙÒÞÝØÌ
					if (!targetObj.isDead())
					{
						local objectManager = parentObj.getObjectManager();//ÔðÓðÓßßÚÎ·×âÐï
						local objectNumber = objectManager.getCollisionObjectNumber();//õÅâ¦
						for (local i = 0; i < objectNumber; i++)
						{
							local object = objectManager.getCollisionObject(i);//ÔðÓðÍóð¤×¾ÓßßÚ
							if (!object && !object.isObjectType(OBJECTTYPE_PASSIVE)) continue;
							local count1 = object.getMyPassiveObjectCount(109055640);
							if (count1 > 0)
							{
								local myClone = object.getMyPassiveObject(109055640, 0);
								local objpAni = myClone.getCurrentAnimation();//ÔðÓðani
								local objcurrentT = sq_GetCurrentTime(objpAni);
								local length1 = sq_GetDistance(targetObj.getXPos(), targetObj.getYPos(), myClone.getXPos(), myClone.getYPos(), true);//ÔðÓðÕ×ñ¦øöÊàËå×î
								local dstX = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 500, objcurrentT, 2900);
								local dstY = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 500, objcurrentT, 2900);
								local dst1X = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 1500, objcurrentT, 2900);
								local dst1Y = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 1500, objcurrentT, 2900);
								local length2 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dstX, dstY, true);//ÔðÓðÕ×ñ¦øöÊàËå×î
								local length3 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dst1X, dst1Y, true);//ÔðÓðÕ×ñ¦øöÊàËå×î

								if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) >= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
								{
									if (sq_Abs(length1 - length3) < 30 && targetObj.getZPos() <= 10)
									{
										sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
									}
								}
								else if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) <= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
								{
									if (sq_Abs(length1 - length2) < 30 && targetObj.getZPos() <= 10)
									{
										sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
									}
								}
							}
							local count2 = object.getMyPassiveObjectCount(1008633);
							if (count2 > 0)
							{
								local myClone = object.getMyPassiveObject(1008633, 0);
								local objpAni = myClone.getCurrentAnimation();//ÔðÓðani
								local objcurrentT = sq_GetCurrentTime(objpAni);
								local length1 = sq_GetDistance(targetObj.getXPos(), targetObj.getYPos(), myClone.getXPos(), myClone.getYPos(), true);//ÔðÓðÕ×ñ¦øöÊàËå×î
								local dstX = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 500, objcurrentT, 2900);
								local dstY = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 500, objcurrentT, 2900);
								local dst1X = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 1500, objcurrentT, 2900);
								local dst1Y = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 1500, objcurrentT, 2900);
								local length2 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dstX, dstY, true);//ÔðÓðÕ×ñ¦øöÊàËå×î
								local length3 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dst1X, dst1Y, true);//ÔðÓðÕ×ñ¦øöÊàËå×î

								if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) >= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
								{
									if (sq_Abs(length1 - length3) < 30 && targetObj.getZPos() <= 10)
									{
										sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
									}
								}
								else if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) <= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
								{
									if (sq_Abs(length1 - length2) < 30 && targetObj.getZPos() <= 10)
									{
										sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
									}
								}
							}
							local count3 = object.getMyPassiveObjectCount(1008634);
							if (count3 > 0)
							{
								local myClone = object.getMyPassiveObject(1008634, 0);
								local objpAni = myClone.getCurrentAnimation();//ÔðÓðani
								local objcurrentT = sq_GetCurrentTime(objpAni);
								local length1 = sq_GetDistance(targetObj.getXPos(), targetObj.getYPos(), myClone.getXPos(), myClone.getYPos(), true);//ÔðÓðÕ×ñ¦øöÊàËå×î
								local dstX = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 500, objcurrentT, 2900);
								local dstY = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 500, objcurrentT, 2900);
								local dst1X = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 1500, objcurrentT, 2900);
								local dst1Y = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 1500, objcurrentT, 2900);
								local length2 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dstX, dstY, true);//ÔðÓðÕ×ñ¦øöÊàËå×î
								local length3 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dst1X, dst1Y, true);//ÔðÓðÕ×ñ¦øöÊàËå×î

								if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) >= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
								{
									if (sq_Abs(length1 - length3) < 30 && targetObj.getZPos() <= 10)
									{
										sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
									}
								}
								else if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) <= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
								{
									if (sq_Abs(length1 - length2) < 30 && targetObj.getZPos() <= 10)
									{
										sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
									}
								}
							}
							local count4 = object.getMyPassiveObjectCount(1008635);
							if (count4 > 0)
							{
								local myClone = object.getMyPassiveObject(1008635, 0);
								local objpAni = myClone.getCurrentAnimation();//ÔðÓðani
								local objcurrentT = sq_GetCurrentTime(objpAni);
								local length1 = sq_GetDistance(targetObj.getXPos(), targetObj.getYPos(), myClone.getXPos(), myClone.getYPos(), true);//ÔðÓðÕ×ñ¦øöÊàËå×î
								local dstX = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 500, objcurrentT, 2900);
								local dstY = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 500, objcurrentT, 2900);
								local dst1X = sq_GetUniformVelocity(myClone.getXPos(), myClone.getXPos() + 1500, objcurrentT, 2900);
								local dst1Y = sq_GetUniformVelocity(myClone.getYPos(), myClone.getYPos() + 1500, objcurrentT, 2900);
								local length2 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dstX, dstY, true);//ÔðÓðÕ×ñ¦øöÊàËå×î
								local length3 = sq_GetDistance(myClone.getXPos(), myClone.getYPos(), dst1X, dst1Y, true);//ÔðÓðÕ×ñ¦øöÊàËå×î

								if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) >= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
								{
									if (sq_Abs(length1 - length3) < 30 && targetObj.getZPos() <= 10)
									{
										sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
									}
								}
								else if (sq_Abs(targetObj.getXPos() - myClone.getXPos()) <= sq_Abs(targetObj.getYPos() - myClone.getYPos()))
								{
									if (sq_Abs(length1 - length2) < 30 && targetObj.getZPos() <= 10)
									{
										sq_SendCreatePassiveObjectPacketPos(parentObj, 109055641, 0, targetObj.getXPos(), targetObj.getYPos(), targetObj.getZPos());
									}
								}
							}
						}

					}
				}
			}
			break;
		case 11:
			if (appendage.getVar("move").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔðÓðani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local count = parentObj.getMyPassiveObjectCount(109055753);
				if (count > 0)
				{
					local myClone = parentObj.getMyPassiveObject(109055753, 0);
					if (!myClone)return;

					local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//Ó×îñãÁÊà
					local fireT = pAni.getDelaySum(7, 14);//õÅãÁÊà

					local moveVar = appendage.getVar("move");//ÔðÓð

					local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), myClone.getXPos(), currentT, fireT);
					local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), myClone.getYPos(), currentT, fireT);
					sq_setCurrentAxisPos(parentObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
					sq_setCurrentAxisPos(parentObj, 1, dstY);//àâöÇÓ×îñyñ¦øö

					if (currentT >= fireT)
						appendage.getVar("move").clear_vector();
				}
			}
			break;
		case 15:
			if (appendage.getVar("move").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔðÓðani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(7, 14);//õÅãÁÊà

				local moveVar = appendage.getVar("move");//ÔðÓð

				local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
				local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
				sq_setCurrentAxisPos(parentObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
				sq_setCurrentAxisPos(parentObj, 1, dstY);//àâöÇÓ×îñyñ¦øö

				if (currentT >= fireT)
					appendage.getVar("move").clear_vector();
			}
			break;
		case 17:
			if (appendage.getVar("move").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔðÓðani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(7, 14);//õÅãÁÊà

				local moveVar = appendage.getVar("move");//ÔðÓð

				local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
				local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
				sq_setCurrentAxisPos(parentObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
				sq_setCurrentAxisPos(parentObj, 1, dstY);//àâöÇÓ×îñyñ¦øö

				if (currentT >= fireT)
					appendage.getVar("move").clear_vector();
			}
			break;
		case 19:
			if (appendage.getVar("move").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔðÓðani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 7)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 6);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(7, 14);//õÅãÁÊà

				local moveVar = appendage.getVar("move");//ÔðÓð

				local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
				local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
				sq_setCurrentAxisPos(parentObj, 0, dstX);//àâöÇÓ×îñxñ¦øö
				sq_setCurrentAxisPos(parentObj, 1, dstY);//àâöÇÓ×îñyñ¦øö

				if (currentT >= fireT)
					appendage.getVar("move").clear_vector();
			}
			break;
		case 20:
			local t_new1 = appendage.getVar("t").get_timer_vector(0);//ÔðÓðãÁñ¤
			if (t_new1)
			{
				if (t_new1.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					sq_SetMyShake(parentObj, 6, 500);//òèÔÑ ñþêóí»ÐùòèÔÑ
					sq_flashScreen(parentObj, 100, 2000, 1000, 200, sq_RGB(25, 25, 25), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_NORMAL);//àì?
				}
			}
			break;
		case 21:
			if (appendage.getVar("obj1").size_vector() > 0)
			{
				local count = parentObj.getMyPassiveObjectCount(1008636);
					if (count > 0)
					{
						local myClone = parentObj.getMyPassiveObject(1008636, 0);
						local pAni = myClone.getCurrentAnimation();//ÔðÓðani
						local frmIndex = sq_GetAnimationFrameIndex(pAni);
						if (frmIndex < 1)return;

						local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 1);//Ó×îñãÁÊà
						local fireT = pAni.getDelaySum(1, 18);//õÅãÁÊà

						local moveVar = appendage.getVar("obj1");//ÔðÓð

						local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
						local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
						sq_setCurrentAxisPos(myClone, 0, dstX);//àâöÇÓ×îñxñ¦øö
						sq_setCurrentAxisPos(myClone, 1, dstY);//àâöÇÓ×îñyñ¦øö

						if (currentT >= fireT)
							appendage.getVar("obj1").clear_vector();
					}
			}
			if (appendage.getVar("obj2").size_vector() > 0)
			{
				local count = parentObj.getMyPassiveObjectCount(1008638);
				if (count > 0)
				{
					local myClone = parentObj.getMyPassiveObject(1008638, 0);
					local pAni = myClone.getCurrentAnimation();//ÔðÓðani
					local frmIndex = sq_GetAnimationFrameIndex(pAni);
					if (frmIndex < 1)return;

					local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 1);//Ó×îñãÁÊà
					local fireT = pAni.getDelaySum(1, 18);//õÅãÁÊà

					local moveVar = appendage.getVar("obj2");//ÔðÓð

					local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
					local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
					sq_setCurrentAxisPos(myClone, 0, dstX);//àâöÇÓ×îñxñ¦øö
					sq_setCurrentAxisPos(myClone, 1, dstY);//àâöÇÓ×îñyñ¦øö

					if (currentT >= fireT)
						appendage.getVar("obj2").clear_vector();
				}
			}
			if (appendage.getVar("obj3").size_vector() > 0)
			{
				local count = parentObj.getMyPassiveObjectCount(1008639);
				if (count > 0)
				{
					local myClone = parentObj.getMyPassiveObject(1008639, 0);
					local pAni = myClone.getCurrentAnimation();//ÔðÓðani
					local frmIndex = sq_GetAnimationFrameIndex(pAni);
					if (frmIndex < 1)return;

					local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 1);//Ó×îñãÁÊà
					local fireT = pAni.getDelaySum(1, 18);//õÅãÁÊà

					local moveVar = appendage.getVar("obj3");//ÔðÓð

					local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
					local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
					sq_setCurrentAxisPos(myClone, 0, dstX);//àâöÇÓ×îñxñ¦øö
					sq_setCurrentAxisPos(myClone, 1, dstY);//àâöÇÓ×îñyñ¦øö

					if (currentT >= fireT)
						appendage.getVar("obj3").clear_vector();
				}
			}
			if (appendage.getVar("obj4").size_vector() > 0)
			{
				local count = parentObj.getMyPassiveObjectCount(1008637);
				if (count > 0)
				{
					local myClone = parentObj.getMyPassiveObject(1008637, 0);
					local pAni = myClone.getCurrentAnimation();//ÔðÓðani
					local frmIndex = sq_GetAnimationFrameIndex(pAni);
					if (frmIndex < 1)return;

					local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 1);//Ó×îñãÁÊà
					local fireT = pAni.getDelaySum(1, 18);//õÅãÁÊà

					local moveVar = appendage.getVar("obj4");//ÔðÓð

					local dstX = sq_GetUniformVelocity(moveVar.get_vector(0), moveVar.get_vector(2), currentT, fireT);
					local dstY = sq_GetUniformVelocity(moveVar.get_vector(1), moveVar.get_vector(3), currentT, fireT);
					sq_setCurrentAxisPos(myClone, 0, dstX);//àâöÇÓ×îñxñ¦øö
					sq_setCurrentAxisPos(myClone, 1, dstY);//àâöÇÓ×îñyñ¦øö

					if (currentT >= fireT)
						appendage.getVar("obj4").clear_vector();
				}
			}
			local t_new1 = appendage.getVar("t").get_timer_vector(0);//ÔðÓðãÁñ¤
			if (t_new1)
			{
				if (t_new1.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					sq_SetMyShake(parentObj, 6, 500);//òèÔÑ ñþêóí»ÐùòèÔÑ
					sq_flashScreen(parentObj, 100, 14000, 1000, 110, sq_RGB(230, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_NORMAL);//àì?
				}
			}
			break;
		}
	}
}

function onStart_appendage_monster_358332886_28(appendage)
{
	if (!appendage) return;
	appendage.getVar().setBool(1, false);
	appendage.getVar().setBool(2, false);
	appendage.getVar("t").clear_timer_vector();
	appendage.getVar("t").push_timer_vector();
	local t_new1 = appendage.getVar("t").get_timer_vector(0);
	t_new1.setParameter(1, 1);//óÑâ¦1£ºËþ?ÊàÌ° óÑâ¦2£ºùÚð¤ó­â¦
	t_new1.resetInstant(0);//ñìöÇ óÑâ¦Ú±ò±
	t_new1.setEventOnStart(false);//?true ìéËÒã·ö¦Ê¦ì¤õºÛ¡
}

function onEnd_appendage_monster_358332886_28(appendage)
{
	if (!appendage) return;

}
