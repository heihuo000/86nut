function onAfterSetState_SpiralColumnEx(obj, state, datas, isResetTimer)
{
	if (!obj)
		return;
	
	if ( CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/spiralgaleforce/ap_nengliang.nut") )
	{
		if (isNengLiangOpen(obj) )
		{
			setNengLiangNumber(obj, -100);
		}
	}
}

function onEndCurrentAni_SpiralColumnEx(obj)
{
	if ( CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/spiralgaleforce/ap_nengliang.nut") )
	{
		if (isNengLiangOpen(obj) )
		{
			obj.sq_StartWrite();
			obj.sq_WriteDword(0);
			obj.sq_WriteDword(8);
			obj.sq_SendCreatePassiveObjectPacket(24393, 0, 0, 0, 0);
			obj.sq_StartWrite();
			obj.sq_WriteDword(0);
			obj.sq_WriteDword(9);
			obj.sq_SendCreatePassiveObjectPacket(24393, 0, 0, 0, 0);
		}
	}
}

function checkExecutableSkill_SpiralColumnEx(obj)
{
	if (!obj) return false;

        local isUse = obj.sq_IsUseSkill(120);
        if (isUse) 
        {
            obj.sq_IntVectClear();
            obj.sq_AddSetStatePacket(70,STATE_PRIORITY_USER, true);
            return true;
        }

	return false;
}



function checkCommandEnable_SpiralColumnEx(obj)
{

	return true;
}
