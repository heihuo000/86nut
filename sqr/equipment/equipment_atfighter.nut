
function isUsableItem_ATFighter(obj, itemIndex)
{
	if(!sq_IsInBattle())
	{
		isUsableItem_AllGrowJob(obj,itemIndex);
	}

	local size = obj.getVar("itemIndex").size_vector();
	for(local i=0;i<size;++i)
	{
		local isSaved = false;
		for(local i=0;i<size;++i)
		{
			local index = obj.getVar("itemIndex").get_vector(i);
			if(index == itemIndex)
			{
				isSaved = true;
			}
		}
		local index = obj.getVar("itemIndex").get_vector(i);
		if(index == i && !isSaved)
		{
			obj.getVar("itemIndex").set_vector(i, itemIndex);
		}
	}

	return true;
}

function drawMainCustomUI_ATFighter(obj)
{
	if(!obj) return;
	obj.getVar("itemIndex").clear_vector();
	local slotNum = 6;
	for(local i=0;i<slotNum;++i)
	{
		obj.getVar("itemIndex").push_vector(i);
	}

	drawNewDamageUI_AllGrowJob(obj);

}

function procAppend_ATFighter(obj)
{
	if(!obj) return 0;

	procAppend_AllGrowJob(obj);

	local skilllevel = sq_GetSkillLevel(obj, 29);//Ñ¨Ííù¬ÔÑ
	if(skilllevel > 0)
	{
		if ( !CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/spiralgaleforce/ap_nengliang.nut") )
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 29, false, "character/atfighter/spiralgaleforce/ap_nengliang.nut", true);
		}
	}
	
	if (getNengLiangNumber(obj) < 10)
	{
		CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/atfighter/spiralgaleforce/ap_spiralgaleforce.nut");
		setNengLiangNumber(obj,-getNengLiangNumber(obj) );
	}


	if (obj.sq_IsEnterSkill(69) != -1) //ü³ç¯øïáï
	{
		local objectManager = obj.getObjectManager();
		local objectNumber =objectManager.getCollisionObjectNumber();
		for (local i = 0; i < objectNumber; i++)
		{
			local Monster = objectManager.getCollisionObject(i);
			if (Monster.getState() != 5 && Monster.getCollisionObjectIndex() == 60066 && Monster.isMyControlObject())
			{

				local Power = obj.sq_GetPowerWithPassive(69, 13, 0, -1, 1.0);
				local rate = obj.sq_GetIntData(69, 0);
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(Power);
				sq_BinaryWriteDword(rate);
				sq_SendCreatePassiveObjectPacketPos(obj, 24150, 0, Monster.getXPos(), Monster.getYPos(), Monster.getZPos() + sq_GetObjectHeight(Monster) / 2);

				local pIntVec = sq_GetGlobalIntVector();//
				sq_IntVectorClear(pIntVec);//
				sq_IntVectorPush(pIntVec, 0);//
				sq_AddSetStatePacketCollisionObject(Monster, 5, pIntVec, STATE_PRIORITY_USER, true);
				Monster.flushSetStatePacket();

			}
		}
	}


	local isAppend1;
	local isAppend2;
	local isAppend3;
	local isAppend4;

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000101.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000101)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000101.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000101)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000101.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000102.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000102)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000102.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000102)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000102.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000103.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000103)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000103.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000103)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000103.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000104.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000104)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000104.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000104)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000104.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000105.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000105)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000105.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000105)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000105.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000106.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000106)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000106.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000106)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000106.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000107.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000107)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000107.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000107)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000107.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000108.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000108)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000108.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000108)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000108.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_400360017.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360017)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360017.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360017)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360017.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_400360018.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360018)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360018.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360018)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360018.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_400360019.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360019)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360019.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360019)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360019.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_400360020.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360020)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360020.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360020)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360020.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_400360021.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360021)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360021.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360021)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360021.nut");
			appendage.setValid(false);
		}
	}
}
