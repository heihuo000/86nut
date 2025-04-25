function onAfterSetState_SpiralNenShoot(obj, state, datas, isResetTimer)
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