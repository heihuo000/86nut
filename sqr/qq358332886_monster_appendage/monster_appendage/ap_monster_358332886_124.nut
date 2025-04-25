

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_124")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_124")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_124")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_124")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_monster_358332886_124")
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_124")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_monster_358332886_124")
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_monster_358332886_124")
}

function onSourceKeyFrameFlag_appendage_monster_358332886_124(appendage, flagIndex)
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
	case 1:
		switch (flagIndex)
		{
		case 1:
			local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//ãü?ìéËÁö¦ÐÎîÜÙÍøö
			if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())//?? ó¦ ÙÒÞÝ
			{
				appendage.getVar("jump").clear_vector();//?ð¶
				appendage.getVar("jump").push_vector(parentObj.getXPos());//ä²í»ÐùÓ×îñxñ¦øö
				appendage.getVar("jump").push_vector(parentObj.getYPos());//ä²í»ÐùÓ×îñyñ¦øö
				appendage.getVar("jump").push_vector(parentObj.getZPos());//ä²í»ÐùÓ×îñzñ¦øö
				appendage.getVar("jump").push_vector(targetObj.getXPos());//ÙÍøöÓ×îñxñ¦øö
				appendage.getVar("jump").push_vector(targetObj.getYPos());//ÙÍøöÓ×îñyñ¦øö
				if (parentObj.getXPos() > targetObj.getXPos())
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_LEFT);//àâöÇÛ°ú¾
				else
					sq_SetCurrentDirection(parentObj, ENUM_DIRECTION_RIGHT);//àâöÇÛ°ú¾
			}
			break;
		}
		break;
	}
	return true;
}

function proc_appendage_monster_358332886_124(appendage)
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
			if (appendage.getVar("jump").size_vector() > 0)
			{
				local pAni = parentObj.getCurrentAnimation();//ÔðÓðani
				local frmIndex = sq_GetAnimationFrameIndex(pAni);
				if (frmIndex < 3)return;

				local currentT = sq_GetCurrentTime(pAni) - pAni.getDelaySum(0, 2);//Ó×îñãÁÊà
				local fireT = pAni.getDelaySum(3, 6);//õÅãÁÊà

				local jumpVar = appendage.getVar("jump");//ÔðÓð


				local dstX = sq_GetUniformVelocity(jumpVar.get_vector(0), jumpVar.get_vector(3), currentT, fireT);
				local dstY = sq_GetUniformVelocity(jumpVar.get_vector(1), jumpVar.get_vector(4), currentT, fireT);
				local dstZ = jumpVar.get_vector(2) + 600 * sq_SinTable(sq_GetUniformVelocity(0, 180, currentT, fireT));
				if (parentObj.isMovablePos(dstX, dstY) && currentT <= fireT)
				{
					sq_setCurrentAxisPos(parentObj, 0, dstX);
					sq_setCurrentAxisPos(parentObj, 1, dstY);
					sq_setCurrentAxisPos(parentObj, 2, dstZ.tointeger());
				}
				else
					appendage.getVar("jump").clear_vector();
			}
			break;
		}
	}

	local t = appendage.getVar().get_timer_vector(0);//ÔðÓðãÁñ¤
	local count = appendage.getVar().get_vector(0);//ÔðÓðãÁñ¤

	if (state == 0)//ÍôÌªßÒ÷¾ù»
	{
		if (count >= 100)
		{
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 9);
			sq_AddSetStatePacketActiveObject(parentObj, 8, pIntVec, STATE_PRIORITY_USER);//üÀÔÑ×¾ÓßßÚÛ¡áêßÒ÷¾
			count = 0;
			appendage.getVar().set_vector(0, count);
			return;
		}
	}
	else if (state == 9)//ÍôÌªßÒ÷¾ù»
	{
		if (t)
		{
			if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
			{
				if (count < 100)
				{
					count = count + 10;
					appendage.getVar().set_vector(0, count);
				}
				else
				{
					count = 100;
					appendage.getVar().set_vector(0, count);
				}
			}
		}
	}
	else if (state != 9)
	{
		if (t)
		{
			if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
			{
				if (count > 0 && count < 100)
				{
					count = count - 3;
					appendage.getVar().set_vector(0, count);
				}
			}
		}
	}
}

function onStart_appendage_monster_358332886_124(appendage)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//ÔðÓðÝ«ÓßßÚ
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
	t.setParameter(500, -1);//óÑâ¦1£ºËþ?ÊàÌ° óÑâ¦2£ºùÚð¤ó­â¦
	t.resetInstant(0);//ñìöÇ óÑâ¦Ú±ò±
	t.setEventOnStart(true);//?true ìéËÒã·ö¦Ê¦ì¤õºÛ¡

}

function onEnd_appendage_monster_358332886_124(appendage)
{
	if (!appendage) return;

}

function onDamageParent_appendage_monster_358332886_124(appendage, attacker, boundingBox, isStuck)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//ÔðÓðÝ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}
	if (isStuck) return;

}

function drawAppend_appendage_monster_358332886_124(appendage, isOver, x, y, isFlip)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//ÔðÓðÝ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}
	local count = appendage.getVar().get_vector(0);//ÔðÓðãÁñ¤
	local count = count.tofloat() / 100.0;//ï®üµÝ©ïÇâ¦ê¡ß©
	local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_main.ani");
	sq_AnimationProc(huoyan_ani);//üë?ani
	sq_drawCurrentFrame(huoyan_ani, 15, 129, isFlip);//àâöÇñ¦øö
	huoyan_ani.setImageRateFromOriginal(count, 1.0);//ÌÚËÇaniÓÞá³

	local ui1_ani = appendage.getVar().GetAnimationMap("ui1_ani", "ui/monster_hp/burning/firegauge_ui00.ani");//úìðËaniÖØÌÓ
	sq_AnimationProc(ui1_ani);//üë?ani
	sq_drawCurrentFrame(ui1_ani, 5, 140, isFlip);//àâöÇñ¦øö
}
