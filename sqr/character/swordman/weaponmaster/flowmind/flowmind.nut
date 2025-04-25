
function onProc_FlowMind(obj)
{
	//local FMsub = obj.getVar("FMsub")
	//obj.getVar("FMsub").clear_vector();
	//obj.getVar("FMsub").clear_obj_vector();
	//local FMsuba = FMsub.getInt(0);
	//obj.sq_SetShake(obj, 3, 300);


	
	local fmjt = sq_GetIntData(obj, 110, 1);

	

	if (sq_IsKeyDown(OPTION_HOTKEY_SKILL2, ENUM_SUBKEY_TYPE_ALL))
	{
		CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/swordman/weaponmaster/flowmind/ap_liuxing.nut");
		local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/weaponmaster/flowmind/ap_liuxing.nut");
		if (!isAppend)
		{
			
			local appendagegw = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, true, "character/swordman/weaponmaster/flowmind/ap_liuxing.nut", true);
			appendagegw.sq_SetValidTime(fmjt);

			//obj.sq_SetShake(obj, 3, 300);
		}
	}
	

}

function onSetState_FlowMind(obj, state, datas, isResetTimer)
{

	local sub0 = obj.sq_GetVectorData(datas, 0);


	//local FMsub = obj.getVar("FMsub")
	//obj.getVar("FMsub").clear_vector();
	//obj.getVar("FMsub").clear_obj_vector();
	//local FMsuba = FMsub.getInt(0);







}