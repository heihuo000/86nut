

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_30")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_30")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_30")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_30");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_30(appendage, flagIndex)
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
			parentObj.sq_PlaySound("R_MON_KNIFE_SWISH");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	case 1:
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_MON_PUNCH_SWISH");//÷ëÛ¯á¢ëå
			break;
		}
		break;
	}
	return true;
}

function proc_appendage_monster_358332886_30(appendage)
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
		case 0:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("R_MON_SWORD_HIT");//÷ëÛ¯á¢ëå
				}
			}
			break;
		case 1:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					local pooledObj1 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/nomal/grimseeker_admirer/animation/hit.ani", 50, 1, 50);
					local pooledObj2 = sq_AddDrawOnlyAniFromParent(parentObj, "monster/kcontents3/themineofabyss/nomal/grimseeker_admirer/animation/hit_1.ani", 50, 2, 50);
					parentObj.sq_PlaySound("R_MON_DARK_HIT");//÷ëÛ¯á¢ëå
				}
			}
			break;
		}
	}
}

function onStart_appendage_monster_358332886_30(appendage)
{
	if (!appendage) return;
	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	t.setParameter(100, 1);//óÑâ¦1£ºËş?ÊàÌ° óÑâ¦2£ºùÚğ¤ó­â¦
	t.resetInstant(0);//ñìöÇ óÑâ¦Ú±ò±
	t.setEventOnStart(true);//?true ìéËÒã·ö¦Ê¦ì¤õºÛ¡
}

function onEnd_appendage_monster_358332886_30(appendage)
{
	if (!appendage) return;

}