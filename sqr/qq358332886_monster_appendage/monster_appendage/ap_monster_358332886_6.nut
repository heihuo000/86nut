

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_6")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_6")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_6")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_6");
}

function onSourceKeyFrameFlag_appendage_monster_358332886_6(appendage, flagIndex)
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
			parentObj.sq_PlaySound("R_MON_FEMALE_V3_ATK");//÷ëÛ¯á¢ëå
			break;
		}
	}
	if (attackIndex == 1)
	{
		switch (flagIndex)
		{
		case 1:
			local index = sq_getRandom(0, 1);
			appendage.getVar().clear_vector();
			appendage.getVar().push_vector(index);
			if (index == 0)
			{
				local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nomal/grimseeker_magician/animation/Attack_1_fire.ani", ENUM_DRAWLAYER_NORMAL, true);
				parentObj.sq_PlaySound("FW_CRUSHERTLE_FIRE_SKILL_01_READY");//÷ëÛ¯á¢ëå
			}
			else
			{
				local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nomal/grimseeker_magician/animation/Attack_1_ice.ani", ENUM_DRAWLAYER_NORMAL, true);
				parentObj.sq_PlaySound("SAYA_ICEMENTLE_READY");//÷ëÛ¯á¢ëå
			}
			break;
		case 2:
			local index = appendage.getVar().get_vector(0);
			if (index == 0)
			{
				local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nomal/grimseeker_magician/animation/Attack_1_fire_field.ani", ENUM_DRAWLAYER_NORMAL, true);
				local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//ãü?ìéËÁö¦ĞÎîÜÙÍøö
				if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())
				sq_SendCreatePassiveObjectPacket(targetObj, 109055301, 0, 0, 0, 0, targetObj.getDirection());
			}
			else
			{
				local pooledObj = sq_CreateDrawOnlyObject(parentObj, "monster/kcontents3/themineofabyss/nomal/grimseeker_magician/animation/Attack_1_ice_field.ani", ENUM_DRAWLAYER_NORMAL, true);
				local targetObj = sq_FindTarget(parentObj, -9999, 9999, 9999, 9999);//ãü?ìéËÁö¦ĞÎîÜÙÍøö
				if (targetObj && !sq_GetCNRDObjectToActiveObject(targetObj).isDead())
				sq_SendCreatePassiveObjectPacket(targetObj, 109055299, 0, 0, 0, 0, targetObj.getDirection());
			}
			parentObj.sq_PlaySound("R_MON_FEMALE_V3_ATK");//÷ëÛ¯á¢ëå
			break;
		}
	}
	return true;
}

function proc_appendage_monster_358332886_6(appendage)
{
	if (!appendage) return;

}

function onStart_appendage_monster_358332886_6(appendage)
{
	if (!appendage) return;

}

function onEnd_appendage_monster_358332886_6(appendage)
{
	if (!appendage) return;

}