function checkExecutableSkill_RandomKick(obj)  
{
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(82);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(3);	// subState?
		obj.sq_IntVectPush(0);	// subState?
		obj.sq_IntVectPush(0);	// subState?
		obj.sq_AddSetStatePacket(49, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_RandomKick(obj)
{
	return true;

}

function onEndState_RandomKick(obj, new_state)
{
	if(!obj || new_state == 49) return;
	local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/lieyanfenbu/ap_lieyanfenbuzengshang_1.nut");
	if(isAppend)
	{
		local zengshang_1 = obj.GetSquirrelAppendage("character/atfighter/lieyanfenbu/ap_lieyanfenbuzengshang_1.nut");
		zengshang_1.setValid(false);
	}
}
