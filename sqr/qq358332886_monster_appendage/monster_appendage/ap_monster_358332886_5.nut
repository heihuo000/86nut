

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_5")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_5")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_5")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_5");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_5(appendage, flagIndex)
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

	if (attackIndex == 0)
	{
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_MON_AXE_HIT");//÷ëÛ¯á¢ëå
			break;
		case 2:
			parentObj.sq_PlaySound("R_MON_MALE_V5_ATK");//÷ëÛ¯á¢ëå
			break;
		}
	}
	else if (attackIndex == 1)
	{
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_MON_AXE_HIT");//÷ëÛ¯á¢ëå
			break;
		case 2:
			parentObj.sq_PlaySound("R_MON_MALE_V5_ATK");//÷ëÛ¯á¢ëå
			break;
		}
	}
	else if (attackIndex == 2)
	{
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_MON_MALE_V5_ATK");//÷ëÛ¯á¢ëå
			break;
		}
	}
	else if (attackIndex == 3)
	{
		switch (flagIndex)
		{
		case 1:
			parentObj.sq_PlaySound("R_MON_GRAB_HIT");//÷ëÛ¯á¢ëå
			break;
		}
	}

	return true;
}

function proc_appendage_monster_358332886_5(appendage)
{
	if (!appendage) return;

}

function onStart_appendage_monster_358332886_5(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_5(appendage)
{
	if (!appendage) return;

}