


function onProc_Hover(obj)
{
	

	obj.setSkillCommandEnable(105, true);
	local FlowMindTwo = obj.getVar("FlowMindTwo")
	obj.getVar("FlowMindTwo").clear_vector();
	obj.getVar("FlowMindTwo").clear_obj_vector();

	local poxZ = obj.getZPos();
	local ajpd = sq_GetSkill(obj, 108).isInCoolTime();

	local dq = obj.sq_IsEnterSkill(105);
	if (dq != -1)
	{
		if (poxZ >= 30)
		{
			if (!ajpd)
			{
				obj.sq_IntVectClear();
				obj.sq_IntVectClear();
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(200);
				obj.sq_AddSetStatePacket(63, STATE_PRIORITY_USER, true);

				local posxZ = obj.getZPos();
				FlowMindTwo.setInt(1, posxZ);
			}
		}
	}


}




function onSetState_Hover(obj, state, datas, isResetTimer)
{


}