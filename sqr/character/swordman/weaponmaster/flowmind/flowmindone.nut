



function onProc_FlowMindOne(obj)
{


	local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/weaponmaster/flowmind/ap_liuxing.nut");
	if (isAppend)
	{
		if (sq_IsKeyDown(OPTION_HOTKEY_SKILL, ENUM_SUBKEY_TYPE_ALL))
		{

			obj.sq_IntVectClear();
			obj.sq_IntVectPush(0);
			obj.sq_AddSetStatePacket(64, STATE_PRIORITY_USER, true);

		}


		if (sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL))
		{

			obj.sq_IntVectClear();
			obj.sq_IntVectPush(0);
			obj.sq_AddSetStatePacket(63, STATE_PRIORITY_USER, true);

		}

	}
}