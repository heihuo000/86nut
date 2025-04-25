function onAfterSetState_EarthBreak(obj, state, datas, isResetTimer)
{
	if (!obj)
		return;
	
	if ( CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/spiralgaleforce/ap_nengliang.nut") )
	{
		setNengLiangNumber(obj, 50);
	}
}
