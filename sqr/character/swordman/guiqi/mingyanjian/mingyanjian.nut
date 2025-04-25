
function checkExecutableSkill_MINGYANJIAN(obj)
{
		if (!obj) return false;

		local isUseSkill = obj.sq_IsUseSkill(SKILL_MINGYANJIAN);
		if (isUseSkill)
		{
			obj.getVar("state").clear_vector();
			obj.getVar("state").push_vector(0);
			obj.sq_AddSetStatePacket(STATE_MINGYANJIAN,STATE_PRIORITY_USER, true);
			return true;
		}
		return false;
}


function checkCommandEnable_MINGYANJIAN(obj)
{
	if (!obj) return false;	
	return true;
}



function onSetState_MINGYANJIAN(obj, state, datas, isResetTimer)
{
		if(!obj) return;

		obj.sq_StopMove();

		local state = obj.getVar("state").get_vector(0);
		local skilllevel = sq_GetSkillLevel(obj, SKILL_MINGYANJIAN);
		if(state == 0)
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_MINGYANJIAN_READY);
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);//�?�m��?����t�׸��H�����t��
		}
		else if(state == 1)
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_MINGYANJIAN_ONE);
			obj.sq_SetCurrentAttackInfo(ATTACKINFO_MINGYANJIAN_ONE);
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_MINGYANJIAN , STATE_MINGYANJIAN, 0, 1.0);//�?���ʤ���ˮ`�ܰʺA�ƾ�0
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate);//�ǻ��ʤ���ˮ`
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);//�?�m��?����t�׸��H�����t��
		}
		else if(state == 2)
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_MINGYANJIAN_TWO);
			obj.sq_SetCurrentAttackInfo(ATTACKINFO_MINGYANJIAN_TWO);
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_MINGYANJIAN , STATE_MINGYANJIAN, 0, 1.0);//�?���ʤ���ˮ`�ܰʺA�ƾ�0
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate);//�ǻ��ʤ���ˮ`
			obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);//�?�m��?����t�׸��H�����t��
		}
		else if(state == 3)
		{
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_MINGYANJIAN_THREE);
			obj.sq_SetCurrentAttackInfo(ATTACKINFO_MINGYANJIAN_THREE);
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_MINGYANJIAN , STATE_MINGYANJIAN, 0, 1.0);//�?���ʤ���ˮ`�ܰʺA�ƾ�0
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate);//�ǻ��ʤ���ˮ`
			//obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
			//SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);//�?�m��?����t�׸��H�����t��
		}
		else if(state == 4)
		{
			sq_SetMyShake(obj,5,400);
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_MINGYANJIAN_END);
			obj.sq_SetCurrentAttackInfo(ATTACKINFO_MINGYANJIAN_END);
			local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_MINGYANJIAN , STATE_MINGYANJIAN, 0, 1.0);//�?���ʤ���ˮ`�ܰʺA�ƾ�0
			obj.sq_SetCurrentAttackBonusRate(attackBonusRate);//�ǻ��ʤ���ˮ`
			//obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
			//SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);//�?�m��?����t�׸��H�����t��
		}
}




function onEndCurrentAni_MINGYANJIAN(obj)
{
        local state = obj.getVar("state").get_vector(0);
		if(state == 0)
		{
			obj.getVar("state").clear_vector();
			obj.getVar("state").push_vector(1);
			obj.sq_AddSetStatePacket(STATE_MINGYANJIAN,STATE_PRIORITY_USER, true);
		}else if(state == 1)
		{
			obj.getVar("state").clear_vector();
			obj.getVar("state").push_vector(2);
			obj.sq_AddSetStatePacket(STATE_MINGYANJIAN,STATE_PRIORITY_USER, true);

		}else if(state == 2)
		{
			obj.getVar("state").clear_vector();
			obj.getVar("state").push_vector(3);
			obj.sq_AddSetStatePacket(STATE_MINGYANJIAN,STATE_PRIORITY_USER, true);

		}else if(state == 3)
		{
			obj.getVar("state").clear_vector();
			obj.getVar("state").push_vector(4);
			obj.sq_AddSetStatePacket(STATE_MINGYANJIAN,STATE_PRIORITY_USER, true);

		}else if(state == 4)
		{
			obj.sq_AddSetStatePacket(STATE_STAND,STATE_PRIORITY_USER, false);
		}

}


