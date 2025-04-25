

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_24")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_24")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_24")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_24");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_24(appendage, flagIndex)
{
	if (!appendage) return;

	return true;
}

function proc_appendage_monster_358332886_24(appendage)
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
		case 7:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/nen_guard/animation/ExplosionGround_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
				}
			}
			break;
		case 8:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/nen_guard/animation/ExplosionGround_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
				}
			}
			break;
		case 9:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/nen_guard/animation/ExplosionGround_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
				}
			}
			break;
		case 10:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/crypt_of_pain/mandarin/nen_guard/animation/ExplosionGround_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
				}
			}
			break;
		}
	}
}

function onStart_appendage_monster_358332886_24(appendage)
{
	if (!appendage) return;

	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	t.setParameter(100, 1);//óÑâ¦1£ºËş?ÊàÌ° óÑâ¦2£ºùÚğ¤ó­â¦
	t.resetInstant(0);//ñìöÇ óÑâ¦Ú±ò±
	t.setEventOnStart(true);//?true ìéËÒã·ö¦Ê¦ì¤õºÛ¡
}

function onEnd_appendage_monster_358332886_24(appendage)
{
	if (!appendage) return;

}


