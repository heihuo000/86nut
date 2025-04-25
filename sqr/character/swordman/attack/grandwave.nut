
function checkExecutableSkill_GrandWave(obj)
{
	if (!obj) return false;

        local isUse = obj.sq_IsUseSkill(50);
        if (isUse) 
        {
            obj.sq_IntVectClear();
            obj.sq_IntVectPush(1);
            obj.sq_IntVectPush(0);
            obj.sq_AddSetStatePacket(27,STATE_PRIORITY_USER, true);
            return true;
        }

	return false;
}



function checkCommandEnable_GrandWave(obj)
{

	return true;
}
