function checkExecutableSkill_WhirlWindKick(obj)  
{
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(58);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);	// subState?
		obj.sq_IntVectPush(0);	// subState?
		obj.sq_IntVectPush(20);	// subState?
		obj.sq_AddSetStatePacket(6, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_WhirlWindKick(obj)
{
	return true;

}
