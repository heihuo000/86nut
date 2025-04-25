

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_120")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_120")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_120")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_120")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_monster_358332886_120")
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_120")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_monster_358332886_120")
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_monster_358332886_120")
}

function onSourceKeyFrameFlag_appendage_monster_358332886_120(appendage, flagIndex)
{
	if (!appendage) return;

	return true;
}

function proc_appendage_monster_358332886_120(appendage)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();//ÔğÓğİ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}
	local state = parentObj.getState();//ÔğÓğİ¾Ê¥ÓßßÚîÜÓ×îñßÒ÷¾

	local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
	local count = appendage.getVar().get_vector(0);//ÔğÓğãÁñ¤
	if (t)
	{
		if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
		{
			if (count > 0 && count < 100)
			{
				count = count - 1;
				appendage.getVar().set_vector(0, count);
			}
		}
	}
	if (state == 0)//ÍôÌªßÒ÷¾ù»
	{
		if (count >= 100)
		{
			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 19);
			sq_AddSetStatePacketActiveObject(parentObj, 8, pIntVec, STATE_PRIORITY_USER);//üÀÔÑ×¾ÓßßÚÛ¡áêßÒ÷¾
			count = 0;
			appendage.getVar().set_vector(0, count);
			return;
		}
	}
}

function onStart_appendage_monster_358332886_120(appendage)
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

function onEnd_appendage_monster_358332886_120(appendage)
{
	if (!appendage) return;

}

function onDamageParent_appendage_monster_358332886_120(appendage, attacker, boundingBox, isStuck)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//ÔğÓğİ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}
	if (isStuck) return;
	local count = appendage.getVar().get_vector(0);//ÔğÓğãÁñ¤

	if (count < 100)
	{
		count = count + 1;
		appendage.getVar().set_vector(0, count);
	}
}

function drawAppend_appendage_monster_358332886_120(appendage, isOver, x, y, isFlip)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//ÔğÓğİ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}
	local count = appendage.getVar().get_vector(0);//ÔğÓğãÁñ¤
	local count = count.tofloat() / 100.0;//ï®üµİ©ïÇâ¦ê¡ß©
	local huoyan_ani = appendage.getVar().GetAnimationMap("huoyan_ani", "ui/monster_hp/burning/firegauge_main.ani");
	sq_AnimationProc(huoyan_ani);//üë?ani
	sq_drawCurrentFrame(huoyan_ani, 15, 129, isFlip);//àâöÇñ¦øö
	huoyan_ani.setImageRateFromOriginal(count, 1.0);//ÌÚËÇaniÓŞá³

	local ui1_ani = appendage.getVar().GetAnimationMap("ui1_ani", "ui/monster_hp/burning/firegauge_ui00.ani");//úìğËaniÖØÌÓ
	sq_AnimationProc(ui1_ani);//üë?ani
	sq_drawCurrentFrame(ui1_ani, 5, 140, isFlip);//àâöÇñ¦øö
}
