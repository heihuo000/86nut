

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_23")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_23")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_23")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_23");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_23(appendage, flagIndex)
{
	if (!appendage) return;
	return true;
}


function proc_appendage_monster_358332886_23(appendage)
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
		case 1:
			local t = appendage.getVar().get_timer_vector(0);//ÔğÓğãÁñ¤
			if (t)
			{
				if (t.isOnEvent(sq_GetObjectTime(parentObj)) == true)
				{
					parentObj.sq_PlaySound("R_MANDARIN_N_FLOWER_BARRAGE_PETAL_SHOT");//÷ëÛ¯á¢ëå
					local pooledObj = sq_CreateDrawOnlyObject(parentObj, "Monster/KContents3/Crypt_Of_Pain/Mandarin/Flower/Animation/Flower_Fall.ani", ENUM_DRAWLAYER_NORMAL, true);
				}
			}
			break;
		}
	}
}


function onStart_appendage_monster_358332886_23(appendage)
{
	if (!appendage) return;
	appendage.getVar().clear_timer_vector();
	appendage.getVar().push_timer_vector();
	local t = appendage.getVar().get_timer_vector(0);
	t.setParameter(500, -1);//óÑâ¦1£ºËş?ÊàÌ° óÑâ¦2£ºùÚğ¤ó­â¦
	t.resetInstant(0);//ñìöÇ óÑâ¦Ú±ò±
	t.setEventOnStart(true);//?true ìéËÒã·ö¦Ê¦ì¤õºÛ¡
}

function onEnd_appendage_monster_358332886_23(appendage)
{
	if (!appendage) return;

}
