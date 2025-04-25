


function onProc_fm31(obj)
{

	local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atgunner/zhongwuzhuanggaizao/ap_zhongwuzhuanggaizao.nut");
		if (isAppend)
		if (sq_IsKeyDown(5, 7))
		obj.sq_AddSetStatePacket(0, 1, false);

}
