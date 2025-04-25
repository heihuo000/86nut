function checkExecutableSkill_HeavenlyCombination(obj)
{
	if(!obj) return false;
	if(obj.isCarryWeapon())return false;
	local isUse = obj.sq_IsUseSkill(75);
	if(isUse)
	{
		obj.sq_IntVectClear();

		obj.sq_AddSetStatePacket(42, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}



function checkCommandEnable_HeavenlyCombination(obj)
{
	if(!obj) return false;
	if(obj.isCarryWeapon())return false;
		return true;
}


function checkExecutableSkill_BigBangPunch(obj)
{
	if(!obj) return false;
	if(obj.isCarryWeapon())return false;
	local isUse = obj.sq_IsUseSkill(90);
	if(isUse)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(50, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}



function checkCommandEnable_BigBangPunch(obj)
{
	if(!obj) return false;
	if(obj.isCarryWeapon())return false;
		return true;
}



