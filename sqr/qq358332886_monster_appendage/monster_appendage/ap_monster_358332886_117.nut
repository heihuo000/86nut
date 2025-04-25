

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_117")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_117")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_117")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_117")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_monster_358332886_117")
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_117")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_monster_358332886_117")
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_monster_358332886_117")
}

function onSourceKeyFrameFlag_appendage_monster_358332886_117(appendage, flagIndex)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//ÔğÓğİ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}

	local state = parentObj.getState();//ÔğÓğÓßßÚßÒ÷¾
	local attackIndex = parentObj.getAttackIndex();//ÍôÌªID

	if (state == 21)
	{
		switch (flagIndex)
		{
		case 1:

			break;
		}
	}

	return true;
}

function proc_appendage_monster_358332886_117(appendage)
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

	//local objectManager = parentObj.getObjectManager();
	//local mapXPos = objectManager.getFieldXPos(IMouse.GetXPos(), ENUM_DRAWLAYER_NORMAL);
	//local mapYPos = objectManager.getFieldYPos(IMouse.GetYPos(), 0, ENUM_DRAWLAYER_NORMAL);
	//local uiXPos = mapXPos - (objectManager.getFieldXPos(mapXPos, ENUM_DRAWLAYER_NORMAL) - mapXPos);
	//local uiYPos = mapYPos - (objectManager.getFieldYPos(mapYPos, 0, ENUM_DRAWLAYER_NORMAL) - mapYPos);
	//sq_getMyCharacter().getVar("debugnew1").clear_vector();//Ê¥ìı
	//sq_getMyCharacter().getVar("debugnew1").push_vector(mapXPos);//Ê¥ìı
	//sq_getMyCharacter().getVar("debugnew1").push_vector(mapYPos);//Ê¥ìı
	//sq_getMyCharacter().getVar("debugnew1").push_vector(uiXPos);//Ê¥ìı
	//sq_getMyCharacter().getVar("debugnew1").push_vector(uiYPos);//Ê¥ìı
	//sq_getMyCharacter().getVar("debugnew2").clear_vector();//Ê¥ìı
	//sq_getMyCharacter().getVar("debugnew2").push_vector(state);//Ê¥ìı
	//sq_getMyCharacter().getVar("debugnew2").push_vector(attackIndex);//Ê¥ìı
	if (state == 0)//ÍôÌªßÒ÷¾ù»
	{
		local count = appendage.getVar().get_vector(0);//ÔğÓğãÁñ¤
		if (count >= 10)
		{
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 6);
			sq_AddSetStatePacketActiveObject(parentObj, 8, pIntVec, STATE_PRIORITY_USER);//üÀÔÑ×¾ÓßßÚÛ¡áêßÒ÷¾
			count = 0;
			appendage.getVar().set_vector(0, count);
			return;
		}
	}
	else if (state == 9)//ÍôÌªßÒ÷¾ù»
	{
		local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
		local count = appendage.getVar().get_vector(0);//ÔğÓğãÁñ¤
		if (t)
		{
			if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
			{
				if (count < 10)
				{
					count = count + 1;
					appendage.getVar().set_vector(0, count);
				}
				else
				{
					count = 10;
					appendage.getVar().set_vector(0, count);
				}
			}
		}
	}
}

function onStart_appendage_monster_358332886_117(appendage)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//ÔğÓğİ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}
	local count = 0;
	appendage.getVar().clear_vector();
	appendage.getVar().push_vector(count);

	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	t.setParameter(1000, -1);//óÑâ¦1£ºËş?ÊàÌ° óÑâ¦2£ºùÚğ¤ó­â¦
	t.resetInstant(0);//ñìöÇ óÑâ¦Ú±ò±
	t.setEventOnStart(true);//?true ìéËÒã·ö¦Ê¦ì¤õºÛ¡

}

function onEnd_appendage_monster_358332886_117(appendage)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//ÔğÓğİ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}
	if (isStuck) return;
}

function drawAppend_appendage_monster_358332886_117(appendage, isOver, x, y, isFlip)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//ÔğÓğİ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}
	local count = appendage.getVar().get_vector(0);//ÔğÓğãÁñ¤
	local count = count.tofloat() / 10.0;//ï®üµİ©ïÇâ¦ê¡ß©
	local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_main.ani");
	sq_AnimationProc(huoyan_ani);//üë?ani
	sq_drawCurrentFrame(huoyan_ani, 15, 129, isFlip);//àâöÇñ¦øö
	huoyan_ani.setImageRateFromOriginal(count, 1.0);//ÌÚËÇaniÓŞá³

	local ui1_ani = appendage.getVar().GetAnimationMap("ui1_ani", "ui/monster_hp/burning/firegauge_ui00.ani");//úìğËaniÖØÌÓ
	sq_AnimationProc(ui1_ani);//üë?ani
	sq_drawCurrentFrame(ui1_ani, 5, 140, isFlip);//àâöÇñ¦øö
}
