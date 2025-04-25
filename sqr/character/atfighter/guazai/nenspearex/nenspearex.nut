function onAfterSetState_NenSpearEx(obj, state, datas, isResetTimer)
{
	if (!obj)
		return;
	
	if ( CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/spiralgaleforce/ap_nengliang.nut") )
	{
		if (isNengLiangOpen(obj) )
		{
			obj.setTimeEvent(10,500,1,false);
			setNengLiangNumber(obj, -100);
		}
	}
}

function onTimeEvent_NenSpearEx(obj, timeEventIndex, timeEventCount)
{
	if (timeEventIndex == 10)
	{
		obj.sq_StartWrite();
		obj.sq_WriteDword(0);
		obj.sq_WriteDword(5);
		obj.sq_SendCreatePassiveObjectPacket(24393, 0, 50, 0, 85);
	}
}
function checkExecutableSkill_NenSpearEx(obj)
{
	if (!obj) return false;

        local isUse = obj.sq_IsUseSkill(117);
        if (isUse) 
        {
            obj.sq_IntVectClear();
            obj.sq_AddSetStatePacket(66,STATE_PRIORITY_USER, true);
            return true;
        }

	return false;
}



function checkCommandEnable_NenSpearEx(obj)
{

	return true;
}