
function checkExecutableSkill_gatlingpunch(obj)
{
	if(!obj) return false;
	if(obj.isCarryWeapon())return false;
	local isUse = obj.sq_IsUseSkill(252);
	if(isUse)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(252, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}



function checkCommandEnable_gatlingpunch(obj)
{
	if(!obj) return false;
	if(obj.isCarryWeapon())return false;
		return true;
}


function onSetState_gatlingpunch ( obj, state, datas, isResetTimer )
{
	if ( !obj ) return;
	obj.sq_StopMove();

	local Attackhook = obj.getVar("gatlingpunch")
	Attackhook.clear_vector();
	Attackhook.clear_obj_vector();
	local Sub0 = obj.sq_GetVectorData ( datas, 0 );
	Attackhook.setInt(0, Sub0);

	if ( Sub0 == 0 )
	{
		obj.sq_SetCurrentAnimation ( 247 );
		obj.sq_SetStaticSpeedInfo ( SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0 );
	}

	if ( Sub0 == 1 )
	{
		obj.sq_SetCurrentAnimation ( 246 );
		obj.sq_SetStaticSpeedInfo ( SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0 );
	}

}


function onEndCurrentAni_gatlingpunch (obj)
{
	local Attackhook = obj.getVar("gatlingpunch")
	Attackhook.clear_vector();
	Attackhook.clear_obj_vector();
	local Sub0 = Attackhook.getInt(0);

	local skilldata4 = obj.sq_GetIntData(252, 3);

	if ( Attackhook.getInt ( 1 ) < skilldata4 )
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(252, STATE_PRIORITY_USER, true);
	}

	if ( Sub0 == 0 && Attackhook.getInt ( 1 ) >= skilldata4 )
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(252, STATE_PRIORITY_USER, true);
	}
	if ( Sub0 == 1 )
	{
		obj.sq_AddSetStatePacket ( STATE_STAND, STATE_PRIORITY_USER, false );
		Attackhook.setInt(1, 0);
	}
}


function onKeyFrameFlag_gatlingpunch  ( obj, flagIndex )
{
	if ( !obj )

	local isMyControlObject = obj.sq_IsMyControlObject();

	local Attackhook = obj.getVar("gatlingpunch")
	Attackhook.clear_vector();
	Attackhook.clear_obj_vector();


	local skilllv = sq_GetSkillLevel(obj, 252);
	local skilldata0 = sq_GetLevelData(obj, 252, 0, skilllv);
	local skilldata1 = sq_GetLevelData(obj, 252, 1, skilllv);

	
	if ( flagIndex == 1 )
	{
		obj.sq_SetCurrentAttackInfo(144);
		local damage = obj.sq_GetBonusRateWithPassive(252, 252, 0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
		Attackhook.setInt(1, Attackhook.getInt(1) + 1);
		return true;
	}
	
	if ( flagIndex == 2 )
	{
		obj.sq_SetCurrentAttackInfo(143);
		local damage = obj.sq_GetBonusRateWithPassive(252, 252, 1, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
		obj.sq_SendCreatePassiveObjectPacket ( 26081, 0, 120, 1, 0 );
		return true;
	}
	
		return false;

}