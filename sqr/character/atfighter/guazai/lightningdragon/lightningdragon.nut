function onAfterSetState_LightningDragon(obj, state, datas, isResetTimer)
{
	if (!obj)
		return;
	
	if ( CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/spiralgaleforce/ap_nengliang.nut") )
	{
		if (isNengLiangOpen(obj) )
		{
			obj.setTimeEvent(10,1200,1,false);
			setNengLiangNumber(obj, -100);
		}
	}
}

function onTimeEvent_LightningDragon(obj, timeEventIndex, timeEventCount)
{
	if (timeEventIndex == 10)
	{
		CreateLightningDragonEffect(obj, 325, 0, 50);
	}
}

function CreateLightningDragonEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","passiveobject/character/fighter/animation/atspiralgaleforce/forcel_end_15.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj,pooledObj,2,false);
}

function checkExecutableSkill_LightningDragon(obj)
{
	if (!obj) return false;

        local isUse = obj.sq_IsUseSkill(90);
        if (isUse) 
        {
            obj.sq_IntVectClear();
            obj.sq_AddSetStatePacket(56,STATE_PRIORITY_USER, true);
            return true;
        }

	return false;
}



function checkCommandEnable_LightningDragon(obj)
{

	return true;
}
