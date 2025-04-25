

function onAfterSetState_Kensin(obj, state, datas, isResetTimer)
{
	if (!obj)
		return;
		
	local skillIndex = obj.getCurrentSkillIndex();
	if (skillIndex == 8 || skillIndex == 12)
	{
		if ( CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/spiralgaleforce/ap_nengliang.nut") )
		{
			setNengLiangNumber(obj, 50);
		}
	}
	if (skillIndex == 112 || skillIndex == 15 || skillIndex == 16)
	{
		if ( CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/spiralgaleforce/ap_nengliang.nut") )
		{
			if (isNengLiangOpen(obj) )
			{
				setNengLiangNumber(obj, -100);
			}
		}
	}
	if (skillIndex == 15)
	{
		if ( CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/spiralgaleforce/ap_nengliang.nut") )
		{
			if (isNengLiangOpen(obj) )
			{
				CreateSajahuEffect(obj, 0, 0, 85);
			}
		}
	}
	if (skillIndex == 16)
	{
		if ( CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/spiralgaleforce/ap_nengliang.nut") )
		{
			if (isNengLiangOpen(obj) )
			{
				obj.setTimeEvent(10,300,1,false);
			}
		}
	}


}

function onTimeEvent_Kensin(obj, timeEventIndex, timeEventCount)
{
	if (timeEventIndex == 10)
	{
		obj.sq_StartWrite();
		obj.sq_WriteDword(0);
		obj.sq_WriteDword(1);
		obj.sq_SendCreatePassiveObjectPacket(24393, 0, 77, 0, 85);
	}
}





function CreateSajahuEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","passiveobject/character/fighter/animation/atspiralgaleforce/spiralroarstun_02.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj,pooledObj,2,false);
}

