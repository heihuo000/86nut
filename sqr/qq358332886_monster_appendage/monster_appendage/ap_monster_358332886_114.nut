

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monster_358332886_114")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monster_358332886_114")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_monster_358332886_114")
	appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_monster_358332886_114")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_monster_358332886_114")
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_monster_358332886_114")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_monster_358332886_114")
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_monster_358332886_114")
}


function onSourceKeyFrameFlag_appendage_monster_358332886_114(appendage, flagIndex)
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

function proc_appendage_monster_358332886_114(appendage)
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

	//local objectManager = parentObj.getObjectManager();
	//local mapXPos = objectManager.getFieldXPos(IMouse.GetXPos(), ENUM_DRAWLAYER_NORMAL);
	//local mapYPos = objectManager.getFieldYPos(IMouse.GetYPos(), 0, ENUM_DRAWLAYER_NORMAL);
	//local uiXPos = mapXPos - (objectManager.getFieldXPos(mapXPos, ENUM_DRAWLAYER_NORMAL) - mapXPos);
	//local uiYPos = mapYPos - (objectManager.getFieldYPos(mapYPos, 0, ENUM_DRAWLAYER_NORMAL) - mapYPos);
	//sq_getMyCharacter().getVar("debugnew1").clear_vector();//Ê¥ìý
	//sq_getMyCharacter().getVar("debugnew1").push_vector(mapXPos);//Ê¥ìý
	//sq_getMyCharacter().getVar("debugnew1").push_vector(mapYPos);//Ê¥ìý
	//sq_getMyCharacter().getVar("debugnew1").push_vector(uiXPos);//Ê¥ìý
	//sq_getMyCharacter().getVar("debugnew1").push_vector(uiYPos);//Ê¥ìý
	//sq_getMyCharacter().getVar("debugnew2").clear_vector();//Ê¥ìý
	//sq_getMyCharacter().getVar("debugnew2").push_vector(state);//Ê¥ìý
	//sq_getMyCharacter().getVar("debugnew2").push_vector(attackIndex);//Ê¥ìý

}

function onStart_appendage_monster_358332886_114(appendage)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//ÔðÓðÝ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}
	local objectManager = parentObj.getObjectManager();//ÔðÓðÓßßÚÎ·×âÐï
	local objectNumber = objectManager.getCollisionObjectNumber();//õÅâ¦
	for (local i = 0; i < objectNumber; i++)
	{
		local object = objectManager.getCollisionObject(i);//ÔðÓðÍóð¤×¾ÓßßÚ
		local lstid = object.getCollisionObjectIndex();
		if (lstid == 56065)
		{
			appendage.getVar().clear_obj_vector();
			appendage.getVar().push_obj_vector(object);
		}
	}
}

function onEnd_appendage_monster_358332886_114(appendage)
{
	if (!appendage) return;
}

function onSetHp_appendage_monster_358332886_114(appendage, hp, attacker)
{
	if (!appendage) return hp;
	local parentObj = appendage.getParent();//ÔðÓðÝ«ÓßßÚ
	local oldHp = appendage.getVar("hp").get_vector(0);
	local damageNumber = oldHp - hp;

	if (damageNumber >= 0)
	{
		appendage.getVar("damageNumber").clear_vector();
		appendage.getVar("damageNumber").push_vector(damageNumber);
	}
	appendage.getVar("hp").clear_vector();
	appendage.getVar("hp").push_vector(hp);

	return hp;
}
function onDamageParent_appendage_monster_358332886_114(appendage, attacker, boundingBox, isStuck)
{
	if (!appendage) return;
	local parentObj = appendage.getParent();//ÔðÓðÝ«ÓßßÚ
	if (!parentObj)
	{
		appendage.setValid(false);//áÑ?ap
		return;
	}
	local object = appendage.getVar().get_obj_vector(0);
	local activeObj = sq_GetCNRDObjectToActiveObject(object);
	local oldHp = activeObj.getHp();
	local damageNumber = appendage.getVar("damageNumber").get_vector(0);
	local newHp = oldHp - damageNumber;
	activeObj.setHp(newHp, null, true);

}