function onAfterSetState_NenFlower(obj, state, datas, isResetTimer)
{
	if (!obj)
		return;
	
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	if ( CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/spiralgaleforce/ap_nengliang.nut") )
	{
		if (isNengLiangOpen(obj) )
		{
			if(substate == 0) {
				obj.setTimeEvent(10,1000,1,false);
			}
			setNengLiangNumber(obj, -14);
		}
	}
}

function onTimeEvent_NenFlower(obj, timeEventIndex, timeEventCount)
{
	if (timeEventIndex == 10)
	{
		obj.sq_StartWrite();
		obj.sq_WriteDword(0);
		obj.sq_WriteDword(3);
		obj.sq_SendCreatePassiveObjectPacket(24393, 0, 0, 0, 85);
	}
}
