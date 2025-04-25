

function onProc_FlowMindTwo(obj)
{

	local FlowMindTwo = obj.getVar("FlowMindTwo")
	obj.getVar("FlowMindTwo").clear_vector();
	obj.getVar("FlowMindTwo").clear_obj_vector();
	local FlowMindTwosub = FlowMindTwo.getInt(0);
	local kpd = FlowMindTwo.getInt(5);

	if (FlowMindTwosub == 200)
	{
		local posZ = obj.getZPos();
		if (posZ == 0)
		{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(201);
			obj.sq_AddSetStatePacket(63, STATE_PRIORITY_USER, true);
		}
	}


	local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/weaponmaster/flowmind/ap_liuxing.nut");
	if (isAppend)
	{
		if (sq_IsKeyDown(OPTION_HOTKEY_SKILL, ENUM_SUBKEY_TYPE_ALL))
		{
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(0);
				obj.sq_AddSetStatePacket(64, STATE_PRIORITY_USER, true);
		}
	}
}


function onSetState_FlowMindTwo(obj, state, datas, isResetTimer)
{

	local sub0 = obj.sq_GetVectorData(datas, 0);

	







	local FlowMindTwo = obj.getVar("FlowMindTwo")
	obj.getVar("FlowMindTwo").clear_vector();
	obj.getVar("FlowMindTwo").clear_obj_vector();
	local FlowMindTwosub = FlowMindTwo.getInt(0);
	local FlowMindTwoposZ = FlowMindTwo.getInt(1);
	FlowMindTwo.setInt(5, sub0);


	local Wpenonpd = obj.getWeaponSubType();

	if ((Wpenonpd == 1) || (Wpenonpd == 0))
	{
		if (sub0 == 200)
		{
			obj.sq_SetCurrentAnimation(177);
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
				SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
			obj.sq_SetCurrentAttackInfo(75);
			local damage = obj.sq_GetBonusRateWithPassive(13, 8, 0, 2.1);
			obj.sq_SetCurrentAttackBonusRate(damage);


			FlowMindTwo.setInt(0, 200);


			local moveAppendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 105, false, "character/swordman/weaponmaster/flowmind/ap_weiyi3.nut", true);

			//sq_MoveToAppendageForce(obj, obj, obj, 300, 0, 0, 50, true, moveAppendage);
			//sq_AccelMoveToAppendageForce(obj, obj, obj, 380, 0, 0, 800, true, moveAppendage, true);
			if (FlowMindTwoposZ <= 150)
			{
				sq_AccelMoveToAppendageForce(obj, obj, obj, 0, 0, -FlowMindTwoposZ, 300, true, moveAppendage, true);
				obj.sq_SetStaticMoveInfo(0, FlowMindTwoposZ * 6, 0, false, FlowMindTwoposZ, true);
				obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
			}

			if (FlowMindTwoposZ > 150)
			{
				sq_AccelMoveToAppendageForce(obj, obj, obj, 0, 0, -FlowMindTwoposZ, 400, true, moveAppendage, true);
				obj.sq_SetStaticMoveInfo(0, FlowMindTwoposZ * 4, 0, false, FlowMindTwoposZ, true);
				obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
			}
			//sq_SetZVelocity(obj, -500, 300);
		}
	}

	if ((Wpenonpd == 2))
	{
		if (sub0 == 200)
		{
			obj.sq_SetCurrentAnimation(176);
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
				SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
			obj.sq_SetCurrentAttackInfo(75);
			local damage = obj.sq_GetBonusRateWithPassive(13, 8, 0, 2.1);
			obj.sq_SetCurrentAttackBonusRate(damage);


			FlowMindTwo.setInt(0, 200);


			local moveAppendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 105, false, "character/swordman/weaponmaster/flowmind/ap_weiyi3.nut", true);

			//sq_MoveToAppendageForce(obj, obj, obj, 300, 0, 0, 50, true, moveAppendage);
			//sq_AccelMoveToAppendageForce(obj, obj, obj, 380, 0, 0, 800, true, moveAppendage, true);
			if (FlowMindTwoposZ <= 150)
			{
				sq_AccelMoveToAppendageForce(obj, obj, obj, 0, 0, -FlowMindTwoposZ, 300, true, moveAppendage, true);
				obj.sq_SetStaticMoveInfo(0, FlowMindTwoposZ * 6, 0, false, FlowMindTwoposZ, true);
				obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
			}

			if (FlowMindTwoposZ > 150)
			{
				sq_AccelMoveToAppendageForce(obj, obj, obj, 0, 0, -FlowMindTwoposZ, 400, true, moveAppendage, true);
				obj.sq_SetStaticMoveInfo(0, FlowMindTwoposZ * 4, 0, false, FlowMindTwoposZ, true);
				obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
			}
			//sq_SetZVelocity(obj, -500, 300);
		}
	}


	if (Wpenonpd == 5 || (Wpenonpd == 3))
	{
		if (sub0 == 200)
		{
			obj.sq_SetCurrentAnimation(178);
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
				SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
			obj.sq_SetCurrentAttackInfo(75);
			local damage = obj.sq_GetBonusRateWithPassive(13, 8, 0, 2.1);
			obj.sq_SetCurrentAttackBonusRate(damage);


			FlowMindTwo.setInt(0, 200);


			local moveAppendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 105, false, "character/swordman/weaponmaster/flowmind/ap_weiyi3.nut", true);

			//sq_MoveToAppendageForce(obj, obj, obj, 300, 0, 0, 50, true, moveAppendage);
			//sq_AccelMoveToAppendageForce(obj, obj, obj, 380, 0, 0, 800, true, moveAppendage, true);
			if (FlowMindTwoposZ <= 150)
			{
				sq_AccelMoveToAppendageForce(obj, obj, obj, 0, 0, -FlowMindTwoposZ, 300, true, moveAppendage, true);
				obj.sq_SetStaticMoveInfo(0, FlowMindTwoposZ * 6, 0, false, FlowMindTwoposZ, true);
				obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
			}

			if (FlowMindTwoposZ > 150)
			{
				sq_AccelMoveToAppendageForce(obj, obj, obj, 0, 0, -FlowMindTwoposZ, 400, true, moveAppendage, true);
				obj.sq_SetStaticMoveInfo(0, FlowMindTwoposZ * 4, 0, false, FlowMindTwoposZ, true);
				obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
			}
			//sq_SetZVelocity(obj, -500, 300);
		}
	}


	if (sub0 == 201)
	{
		obj.sq_SetCurrentAnimation(179);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);

		FlowMindTwo.setInt(0, 0);
		FlowMindTwo.setInt(3, 1);
	}
}



function onEndCurrentAni_FlowMindTwo(obj)
{
	CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/swordman/weaponmaster/flowmind/ap_weiyi3.nut");

	local FlowMindTwo = obj.getVar("FlowMindTwo")
	obj.getVar("FlowMindTwo").clear_vector();
	obj.getVar("FlowMindTwo").clear_obj_vector();
	local jieshu= FlowMindTwo.getInt(3);

	if (jieshu == 1)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		FlowMindTwo.setInt(3, 0);
	}
}



function onKeyFrameFlag_FlowMindTwo(obj, flagIndex)
{



}

