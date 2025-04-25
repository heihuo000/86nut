FLAG_EFFECT_VIOLENT_ASSAULT	<- 1

function checkExecutableSkill_ViolentAssault(obj)
{
	if (!obj) return false;
	local GetZ = sq_GetZPos(obj);
	local high = sq_GetIntData(obj, SKILL_VIOLENT_ASSAULT, 1);
	if(GetZ < high) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_VIOLENT_ASSAULT);
	if (isUse)
	{
		obj.getVar("GetZ").clear_vector();
		obj.getVar("GetZ").push_vector(GetZ);
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_VIOLENT_ASSAULT, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_ViolentAssault(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	if(state == STATE_JUMP)
	{
		return true;
	}
	return false;
}


function onSetState_ViolentAssault(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();
	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_VIOLENT_ASSAULT_START_BODY);
		if(isHolyFlame(obj))
		{
			obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/violentassault_start_body.ani"), 0, 0);
		}
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_VIOLENT_ASSAULT);
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		local BonusRate = obj.sq_GetBonusRateWithPassive(SKILL_VIOLENT_ASSAULT , STATE_VIOLENT_ASSAULT, 0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(BonusRate);
	}
	if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_VIOLENT_ASSAULT_LOOP_BODY);
		if(isHolyFlame(obj))
		{
			obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/violentassault_loop_body.ani"), 0, 0);
		}
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_VIOLENT_ASSAULT);
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		local BonusRate = obj.sq_GetBonusRateWithPassive(SKILL_VIOLENT_ASSAULT , STATE_VIOLENT_ASSAULT, 0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(BonusRate);
		
		sq_SetZVelocity(obj, - 1200, - 1000);
		local max_x = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 150);
		local get_x = obj.getXPos();
		local max_z = 0;
		local get_z = obj.getZPos();
		
		obj.sq_SetStaticMoveInfo(0, 400, 400, false);
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		
		FLAG_EFFECT_VIOLENT_ASSAULT = 1;
/*		sq_BinaryStartWrite();
		sq_BinaryWriteWord(0);
		sq_BinaryWriteDword(max_x);
		sq_BinaryWriteDword(get_x);
		sq_BinaryWriteDword(max_z);
		sq_BinaryWriteDword(get_z);
		sq_SendChangeSkillEffectPacket(obj, SKILL_VIOLENT_ASSAULT);*/

	}
	if(substate == 2)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_VIOLENT_ASSAULT_END_BODY);
		if(isHolyFlame(obj))
		{
			obj.sq_AddStateLayerAnimation(9999, obj.sq_CreateCNRDAnimation("atanimation/holyflameweaponeffect/violentassault_end_body.ani"), 0, 0);
		}
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	}
}

function onChangeSkillEffect_BlessOfCourage(obj, skillIndex, reciveData)
{
	if(!obj) return;
	local readWord = reciveData.readWord();
	if(readWord == 0)
	{
		local max_x = reciveData.readDword();
		local get_x = reciveData.readDword();
		local max_z = reciveData.readDword();
		local get_z = reciveData.readDword();

		obj.getVar().clear_vector();
		obj.getVar().push_vector(max_x);
		obj.getVar().push_vector(get_x);
		obj.getVar().push_vector(max_z);
		obj.getVar().push_vector(get_z);
	}
}

function onProc_ViolentAssault(obj)
{
	local substate = obj.getSkillSubState();
	if(substate == 1)
	{
		local z = obj.getZPos();
		if (z == 0) {
			obj.sq_StopMove();
		}
/*		local max_x = obj.getVar().get_vector(0);
		local get_x = obj.getVar().get_vector(1);
		local max_z = obj.getVar().get_vector(2);
		local get_z = obj.getVar().get_vector(3);
		local stateTimer = obj.sq_GetStateTimer();
		local xPosVelocity = sq_GetUniformVelocity(get_x, max_x, stateTimer, 250);
		local zPosVelocity = sq_GetUniformVelocity(get_z, max_z, stateTimer, 250);*/
		
		//sq_MoveToNearMovablePos(obj,xPosVelocity,obj.getYPos() , obj.getZPos(), obj.getXPos(), obj.getYPos(), obj.getZPos(), 20, -1, 3);
	}
	else if(substate == 2)
	{
		local GetZ = sq_GetZPos(obj);
		if(GetZ <= 3 && FLAG_EFFECT_VIOLENT_ASSAULT == 1)
		{
			obj.sq_SetShake(obj,5,150);
			obj.sq_StartWrite();
			obj.sq_WriteDword(2);
			FLAG_EFFECT_VIOLENT_ASSAULT = 0;
			obj.sq_SendCreatePassiveObjectPacket(24240, 0, 0, 0, -obj.getZPos());
		}
	}
}

function onEndCurrentAni_ViolentAssault(obj)
{
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_VIOLENT_ASSAULT, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(substate == 1)
	{
		local GetZ = sq_GetZPos(obj);
		if(GetZ <= 10)
		{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(2);
			obj.sq_AddSetStatePacket(STATE_VIOLENT_ASSAULT, STATE_PRIORITY_IGNORE_FORCE, true);
		}
	}
	if(substate == 2)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_IntVectPush(1);
		obj.sq_IntVectPush(120);
		obj.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_IGNORE_FORCE, true);
	}
}
