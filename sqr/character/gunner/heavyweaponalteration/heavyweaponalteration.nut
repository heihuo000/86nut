


function onProc_LaserRifle(obj)
{

	local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/gunner/heavyweaponalteration/ap_heavyweaponalteration.nut");
		if (isAppend)
		if (sq_IsKeyDown(5, 7))
		obj.sq_AddSetStatePacket(0, 1, false);

}
