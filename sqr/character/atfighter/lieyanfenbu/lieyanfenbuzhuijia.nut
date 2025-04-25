function onSetState_LieYanFenBuZhuiJia(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	obj.sq_StopMove();

	local zhuijia = obj.GetSquirrelAppendage("character/atfighter/lieyanfenbu/ap_lieyanfenbuzhuijia.nut");
	if(zhuijia)
		zhuijia.setValid(false);
	local zengshang_1 = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 41, false, "character/atfighter/lieyanfenbu/ap_lieyanfenbuzengshang_1.nut", false);
	CNSquirrelAppendage.sq_Append(zengshang_1, obj, obj);
	local zengshang_2 = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 41, false, "character/atfighter/lieyanfenbu/ap_lieyanfenbuzengshang_2.nut", false);
	CNSquirrelAppendage.sq_Append(zengshang_2, obj, obj);
	local zengshang_3 = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 41, false, "character/atfighter/lieyanfenbu/ap_lieyanfenbuzengshang_3.nut", false);
	CNSquirrelAppendage.sq_Append(zengshang_3, obj, obj);
    obj.sq_PlaySound("MF_FIREPOWER_RELEASE");
	obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATFIREPOWERRELEASE_BODY);

}

function onEndCurrentAni_LieYanFenBuZhuiJia(obj)
{
	if(!obj) return;
	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}

function onKeyFrameFlag_LieYanFenBuZhuiJia(obj,flagIndex)
{
	if(!obj) return false;
	if(flagIndex == 10001)
	{
		sq_flashScreen(obj, 0, 80, 0, 178, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		sq_SetMyShake(obj,15,160);
	}
	return true;
}
