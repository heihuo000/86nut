

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_101")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_101")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_101")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_101");
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_101");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_101(appendage, flagIndex)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//ÔðÓðÝ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}

	local state = parentObj.getState();//ÔðÓðÓßßÚßÒ÷¾
	local attackIndex = parentObj.getAttackIndex();//ÍôÌªID

	if (state == 24)
	{
		switch (flagIndex)
		{
		case 1:
			local xPos = parentObj.getXPos();
			local yPos = parentObj.getYPos();
			local zPos = parentObj.getZPos();
			local distanceX = 1000;
			local distanceY = 1000;
			local distanceZ = 1000;
			local objectManager = parentObj.getObjectManager();
			for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
			{
				local object = objectManager.getCollisionObject(i);
				if (object
					&& object.isObjectType(OBJECTTYPE_ACTIVE)
					&& parentObj.isEnemy(object)
					&& object.isInDamagableState(parentObj)
					&& sq_Abs(object.getXPos() - xPos) <= distanceX
					&& sq_Abs(object.getYPos() - yPos) <= distanceY
					&& sq_Abs(object.getZPos() - zPos) <= distanceZ)
				{
					local activeObj = sq_GetCNRDObjectToActiveObject(object);
					if (!activeObj.isDead())
					{
						local Appendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, parentObj, -1, false, "qq358332886_monster_appendage/monster_appendage/ap_superdamagec.nut", true);//Ý¾Ê¥ap
						Appendage.sq_SetValidTime(800);//àâöÇapêóüùãÁÊà
					}
				}
			}
			break;
		}
	}
	else if (state == 25)
	{
		switch (flagIndex)
		{
		case 1:
			local direction = parentObj.getDirection();
			local xPos = parentObj.getXPos();
			local yPos = parentObj.getYPos();
			local zPos = parentObj.getZPos();
			local distanceX = 1000;
			local distanceY = 1000;
			local distanceZ = 1000;
			local objectManager = parentObj.getObjectManager();
			for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
			{
				local object = objectManager.getCollisionObject(i);
				if (object
					&& object.isObjectType(OBJECTTYPE_ACTIVE)
					&& parentObj.isEnemy(object)
					&& object.isInDamagableState(parentObj)
					&& sq_Abs(object.getXPos() - xPos) <= distanceX
					&& sq_Abs(object.getYPos() - yPos) <= distanceY
					&& sq_Abs(object.getZPos() - zPos) <= distanceZ)
				{
					local activeObj = sq_GetCNRDObjectToActiveObject(object);
					if (!activeObj.isDead())
					{
						local Appendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, parentObj, -1, false, "qq358332886_monster_appendage/monster_appendage/ap_superdamagec.nut", true);//Ý¾Ê¥ap
						Appendage.sq_SetValidTime(1000);//àâöÇapêóüùãÁÊà
					}
				}
			}
			break;
		}
	}
	return true;
}

function proc_appendage_monster_358332886_101(appendage)
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
			local t = appendage.getVar().get_timer_vector(0);//ÔðÓðãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					local count = parentObj.getMyPassiveObjectCount(76120);
					if (count > 0)
					{
						local myClone = parentObj.getMyPassiveObject(76120, 0);
						local direction = parentObj.getDirection();//ÔðÓðÛ°ú¾
						local index = sq_getRandom(0, 2);
						if (!myClone)return;
						if (direction == ENUM_DIRECTION_RIGHT)
						{
							switch (index)
							{
							case 0:
								sq_AddDrawOnlyAniFromParent(parentObj, "passiveobject/actionobject/monster/luke_raid/metalgear/animation/bodygatlingfloor.ani", 400, 0, 0);
								break;
							case 1:
								sq_AddDrawOnlyAniFromParent(parentObj, "passiveobject/actionobject/monster/luke_raid/metalgear/animation/bodygatlingfloor.ani", 500, 20, 0);
								break;
							case 2:
								sq_AddDrawOnlyAniFromParent(parentObj, "passiveobject/actionobject/monster/luke_raid/metalgear/animation/bodygatlingfloor.ani", 600, 10, 0);
								break;
							}
						}
						else if(direction == ENUM_DIRECTION_LEFT)
						{
							switch (index)
							{
							case 0:
								sq_AddDrawOnlyAniFromParent(parentObj, "passiveobject/actionobject/monster/luke_raid/metalgear/animation/bodygatlingfloor.ani", 400, 0, 0);
								break;
							case 1:
								sq_AddDrawOnlyAniFromParent(parentObj, "passiveobject/actionobject/monster/luke_raid/metalgear/animation/bodygatlingfloor.ani", 500, 20, 0);
								break;
							case 2:
								sq_AddDrawOnlyAniFromParent(parentObj, "passiveobject/actionobject/monster/luke_raid/metalgear/animation/bodygatlingfloor.ani", 600, 10, 0);
								break;
							}
						}
					}
				}
			}
			break;
		}
	}
	else if (state == 5)
	{
		local ui_aniVar = appendage.getVar("ui_ani");
		local ui_ani = ui_aniVar.get_obj_vector(0);//ÔðÓðUIüë?
		if (ui_ani)
		{
			ui_ani.setValid(false);
		}
	}
}

function onStart_appendage_monster_358332886_101(appendage)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//ÔðÓðÝ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}
	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	t.setParameter(100, -1);//óÑâ¦1£ºËþ?ÊàÌ° óÑâ¦2£ºùÚð¤ó­â¦
	t.resetInstant(0);//ñìöÇ óÑâ¦Ú±ò±
	t.setEventOnStart(true);//?true ìéËÒã·ö¦Ê¦ì¤õºÛ¡
}

function onEnd_appendage_monster_358332886_101(appendage)
{
	if (!appendage) return;

}
//
//function image_Create(obj, uiXPos, uiYPos)
//{
//	local objectManager = obj.getObjectManager();
//	local mapXPos = objectManager.getFieldXPos(IMouse.GetXPos(), ENUM_DRAWLAYER_NORMAL);
//	local mapYPos = objectManager.getFieldYPos(IMouse.GetYPos(), 0, ENUM_DRAWLAYER_NORMAL);
//	local uiXPos = mapXPos - (objectManager.getFieldXPos(mapXPos, ENUM_DRAWLAYER_NORMAL) - mapXPos);
//	local uiYPos = mapYPos - (objectManager.getFieldYPos(mapYPos, 0, ENUM_DRAWLAYER_NORMAL) - mapYPos);
//
//	//ø¼ÕöÓßßÚ?üë??âË
//	local direction = obj.getDirection();
//	local xPos = obj.getXPos();
//	local yPos = obj.getYPos();
//	local zPos = obj.getZPos();
//	local distanceX = 3000;
//	local distanceY = 3000;
//	local distanceZ = 3000;
//	local objectManager = obj.getObjectManager();
//	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
//	{
//		local object = objectManager.getCollisionObject(i);
//		if (object
//			&& object.isObjectType(OBJECTTYPE_ACTIVE)
//			&& obj.isEnemy(object)
//			&& object.isInDamagableState(obj)
//			&& sq_Abs(object.getXPos() - xPos) <= distanceX
//			&& sq_Abs(object.getYPos() - yPos) <= distanceY
//			&& sq_Abs(object.getZPos() - zPos) <= distanceZ)
//		{
//			local activeObj = sq_GetCNRDObjectToActiveObject(object);
//			local ani = sq_CreateAnimation("", "ui/monster_hp/burning/firegauge_ui00.ani");//óÜËïani
//			local pooledObj = sq_CreatePooledObject(ani, true);//óÜËïüë?ÓßßÚ óÑâ¦2£ºëëú±ãÀaniÌ¿áÖãÁtrue ö¦áÑ?ÚãñýfalseÜôáÑ?
//			sq_SetCurrentDirection(pooledObj, ENUM_DIRECTION_RIGHT);//àâöÇÛ°ú¾
//			pooledObj.setCurrentPos(uiXPos, uiYPos, 0);//àâöÇpos
//			pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_COVER);//àâöÇÓñöµ
//			sq_AddObject(activeObj, pooledObj, OBJECTTYPE_DRAWONLY, false);//ñòÊ¥ÓßßÚ
//			sq_moveWithParent(activeObj, pooledObj);
//		}
//	}
//}

function drawAppend_appendage_monster_358332886_101(appendage, isOver, x, y, isFlip)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//ÔðÓðÝ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}
	local count = parentObj.getMyPassiveObjectCount(200323);
	switch (count)
	{
	case 1:
		local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
		sq_AnimationProc(huoyan_ani);//üë?ani
		sq_drawCurrentFrame(huoyan_ani, 35, 128, isFlip);//àâöÇñ¦øö
		break;
	case 2:
		local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
		sq_AnimationProc(huoyan_ani);//üë?ani
		sq_drawCurrentFrame(huoyan_ani, 75, 128, isFlip);//àâöÇñ¦øö
		local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan1_ani);//üë?ani
		sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//àâöÇñ¦øö
		local huoyan2_ani = appendage.getVar().GetAnimationMap("huoyan2_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan2_ani);//üë?ani
		sq_drawCurrentFrame(huoyan2_ani, 50, 128, isFlip);//àâöÇñ¦øö
		break;
	case 3:
		local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_tail.ani");
		sq_AnimationProc(huoyan_ani);//üë?ani
		sq_drawCurrentFrame(huoyan_ani, 125, 128, isFlip);//àâöÇñ¦øö
		local huoyan1_ani = appendage.getVar().GetAnimationMap("huoyan1_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan1_ani);//üë?ani
		sq_drawCurrentFrame(huoyan1_ani, 25, 128, isFlip);//àâöÇñ¦øö
		local huoyan2_ani = appendage.getVar().GetAnimationMap("huoyan2_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan2_ani);//üë?ani
		sq_drawCurrentFrame(huoyan2_ani, 50, 128, isFlip);//àâöÇñ¦øö
		local huoyan3_ani = appendage.getVar().GetAnimationMap("huoyan3_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan3_ani);//üë?ani
		sq_drawCurrentFrame(huoyan3_ani, 75, 128, isFlip);//àâöÇñ¦øö
		local huoyan4_ani = appendage.getVar().GetAnimationMap("huoyan4_ani", "ui/monster_hp/burning/firegauge_on.ani");
		sq_AnimationProc(huoyan4_ani);//üë?ani
		sq_drawCurrentFrame(huoyan4_ani, 100, 128, isFlip);//àâöÇñ¦øö
		break;
	case 4:
		local huoyan5_ani = appendage.getVar().GetAnimationMap("huoyan5_ani", "ui/monster_hp/burning/firegauge_main.ani");
		sq_AnimationProc(huoyan5_ani);//üë?ani
		sq_drawCurrentFrame(huoyan5_ani, 13, 128, isFlip);//àâöÇñ¦øö
		break;
	}
	local ui1_ani = appendage.getVar().GetAnimationMap("ui1_ani", "ui/monster_hp/burning/firegauge_ui00.ani");//úìðËaniÖØÌÓ
	sq_AnimationProc(ui1_ani);//üë?ani
	sq_drawCurrentFrame(ui1_ani, 5, 140, isFlip);//àâöÇñ¦øö
}