
function NitroMotor(obj)
{
	local x = obj.getXPos();
	local y = obj.getYPos();
	local z = obj.getZPos();
	local Key_Jump = sq_IsKey(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL);
	local Key_Left = sq_IsKey(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL);
	local Key_Right = sq_IsKey(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL);
	local Key_Space = sq_IsKey(OPTION_HOTKEY_SKILL2, ENUM_SUBKEY_TYPE_ALL);
    local state = obj.getState();



    switch(state)
	{
        case 3:
            if(z > 0 && Key_Jump)
            {
		        NitroMotor_Decrease(obj);
		        obj.sq_IntVectClear();
		        obj.sq_IntVectPush(0);
		        obj.sq_IntVectPush(0);
		        obj.sq_IntVectPush(0);
		        obj.sq_AddSetStatePacket(6, STATE_PRIORITY_USER, true);
		        Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/up_nitromotor_dodge1.ani", true, x, y, z);
            }
        break;
        case 4:
            if(z > 0 && Key_Jump)
            {
                NitroMotor_Decrease(obj);
                obj.sq_IntVectClear();
                obj.sq_IntVectPush(0);
                obj.sq_IntVectPush(0);
                obj.sq_IntVectPush(0);
                obj.sq_AddSetStatePacket(6, STATE_PRIORITY_USER, true);
                Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/up_nitromotor_dodge1.ani", true, x, y, z);
            }
        break;
		case 6:
	    	if(Key_Jump)
		    {
		    	NitroMotor_Decrease(obj);
		    	sq_SetZVelocity(obj, 750, -1200);
		    	Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/up_nitromotor_dodge1.ani", true, x, y, z);
		    }
		    if(Key_Space)
		    {
		    	NitroMotor_Decrease(obj);
		    	sq_SetZVelocity(obj, -750, 0);
		    	Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/down_nitromotor_dodge3.ani", true, x, y, z);
		    }
		    if(Key_Left)
		    {
		    	NitroMotor_Decrease(obj);
		    	obj.setCurrentDirection(ENUM_DIRECTION_LEFT);
		    	obj.sq_SetStaticMoveInfo(0, 600, 200, true, -600, true);
		    	obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		    	Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/side_nitromotor_dodge1.ani", true, x, y, z);
		    }
		    if(Key_Right)
		    {
		    	NitroMotor_Decrease(obj);
	        	obj.setCurrentDirection(ENUM_DIRECTION_RIGHT);
		    	obj.sq_SetStaticMoveInfo(0, 600, 200, true, -600, true);
		    	obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);
		    	Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/side_nitromotor_dodge1.ani", true, x, y, z);
		    }
			CommonEnableNitroMotor(obj, 48, STATE_SKY_CROSSSHOOT);//?£Â?’Ï?
			CommonEnableNitroMotor(obj, 109, STATE_SKY_CHARGEBUSTER);//???ÂΩ?
			CommonEnableNitroMotor(obj, 53, STATE_SKY_NAPALMBOMB);//??????
			CommonEnableNitroMotor(obj, 78, STATE_SKY_NIELSNIPING);//Â∞?????
			CommonEnableNitroMotor(obj, 98, STATE_SKY_EMPSTORM);//EMPÁ£??
			if(obj.sq_IsEnterSkill(48) != -1)
			{
				SetStateNitroMotor(obj, 48, STATE_SKY_CROSSSHOOT, [0]);
			}
			if(obj.sq_IsEnterSkill(109) != -1)
			{
				SetStateNitroMotor(obj, 109, STATE_SKY_CHARGEBUSTER, [0]);
			}
			if(obj.sq_IsEnterSkill(53) != -1)
			{
				SetStateNitroMotor(obj, 53, STATE_SKY_NAPALMBOMB, [0]);
			}
			if(obj.sq_IsEnterSkill(78) != -1)
			{
				SetStateNitroMotor(obj, 78, STATE_SKY_NIELSNIPING, [0]);
			}
			if(obj.sq_IsEnterSkill(98) != -1)
			{
				SetStateNitroMotor(obj, 98, STATE_SKY_EMPSTORM, [0]);
			}
        break;
        case 7:
            if(Key_Jump)
            {
                NitroMotor_Decrease(obj);
                sq_SetZVelocity(obj, 750, -1200);
                Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/up_nitromotor_dodge1.ani", true, x, y, z);
            }
            if(Key_Space)
            {
                NitroMotor_Decrease(obj);
                sq_SetZVelocity(obj, -750, 0);
                Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/down_nitromotor_dodge3.ani", true, x, y, z);
            }
            if(obj.getDirection() == ENUM_DIRECTION_LEFT)
            {
                if(Key_Left)
                {
                    NitroMotor_Decrease(obj);
                    sq_SetVelocity(obj, 0, -700.0);
                    Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/side_nitromotor_dodge1.ani", true, x, y, z);
                }
                if(Key_Right)
                {
                    NitroMotor_Decrease(obj);
                    sq_SetVelocity(obj, 0, 700.0);
                    Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/side_nitromotor_dodge1.ani", true, x, y, z);
                }
            }
            if(obj.getDirection() == ENUM_DIRECTION_RIGHT)
            {
                if(Key_Left)
                {
                    NitroMotor_Decrease(obj);
                    sq_SetVelocity(obj, 0, -700.0);
                    Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/side_nitromotor_dodge1.ani", true, x, y, z);
                }
                if(Key_Right)
                {
                    NitroMotor_Decrease(obj);
                    sq_SetVelocity(obj, 0, 700.0);
                    Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/side_nitromotor_dodge1.ani", true, x, y, z);
                }
            }
			CommonEnableNitroMotor(obj, 48, STATE_SKY_CROSSSHOOT);//?£Â?’Ï?
			CommonEnableNitroMotor(obj, 109, STATE_SKY_CHARGEBUSTER);//???ÂΩ?
			CommonEnableNitroMotor(obj, 53, STATE_SKY_NAPALMBOMB);//??????
			CommonEnableNitroMotor(obj, 78, STATE_SKY_NIELSNIPING);//Â∞?????
			CommonEnableNitroMotor(obj, 98, STATE_SKY_EMPSTORM);//EMPÁ£??
			if(obj.sq_IsEnterSkill(48) != -1)
			{
				SetStateNitroMotor(obj, 48, STATE_SKY_CROSSSHOOT, [0]);
			}
			if(obj.sq_IsEnterSkill(109) != -1)
			{
				SetStateNitroMotor(obj, 109, STATE_SKY_CHARGEBUSTER, [0]);
			}
			if(obj.sq_IsEnterSkill(53) != -1)
			{
				SetStateNitroMotor(obj, 53, STATE_SKY_NAPALMBOMB, [0]);
			}
			if(obj.sq_IsEnterSkill(78) != -1)
			{
				SetStateNitroMotor(obj, 78, STATE_SKY_NIELSNIPING, [0]);
			}
			if(obj.sq_IsEnterSkill(98) != -1)
			{
				SetStateNitroMotor(obj, 98, STATE_SKY_EMPSTORM, [0]);
			}
        break;
        case 8:
            if(Key_Jump)
            {
                NitroMotor_Decrease(obj);
		    	Create_NitroMotor_Effect(obj, "character/gunner/effect/animation/atnitromotor/up_nitromotor_dodge1.ani", true, x, y, z);
                obj.sq_IntVectClear();
                obj.sq_IntVectPush(0);
                obj.sq_IntVectPush(0);
                obj.sq_IntVectPush(0);
                obj.sq_AddSetStatePacket(6, STATE_PRIORITY_USER, true);
            }
        break;
    }
	if(z <= 0)
	{
		local effect = obj.getVar("NitromotorEffect").get_obj_vector(0);
		if(effect)
		{
			effect.setValid(false);
			obj.getVar("NitromotorEffect").clear_obj_vector();
		}
	}
}



function Create_NitroMotor_Effect(obj, aniFilename, isAutoDestroy, x, y, z)
{
	local effect = obj.getVar("NitromotorEffect").get_obj_vector(0);
	if(effect)
	{
		effect.setValid(false);
		obj.getVar("NitromotorEffect").clear_obj_vector();
	}

	local ani = sq_CreateAnimation("",aniFilename);
	local pooledObj = sq_CreatePooledObject(ani, isAutoDestroy);
	pooledObj.setCurrentPos(x, y, z);
	sq_SetCurrentDirection(pooledObj, obj.getDirection());
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj, pooledObj, OBJECTTYPE_DRAWONLY, false);

	obj.getVar("NitromotorEffect").clear_obj_vector();
	obj.getVar("NitromotorEffect").push_obj_vector(pooledObj);
	return pooledObj;
}



function NitroMotor_Decrease(obj)
{
	local loadSlot = obj.sq_GetSkillLoad(17);
	if(loadSlot)
	{
		local remain_number = loadSlot.getRemainLoadNumber();
		if(remain_number > 0)
		{
			loadSlot.decreaseLoadCount(1);
				loadSlot.setStartCool();
		}
	}
}



function CommonEnableNitroMotor(obj, skillindex, state)
{
	if(obj.sq_GetState() == state)
		return false;
	obj.setSkillCommandEnable(skillindex ,true);
		return true;
}



function SetStateNitroMotor(obj, skillindex, state, Arr)
{
	if(obj.sq_GetState() == state)
		return false;
	if(obj.sq_IsUseSkill(skillindex))
	{
		obj.sq_IntVectClear();
		if(Arr.len() < 1)
		{
			obj.sq_AddSetStatePacket(state, STATE_PRIORITY_USER, true);
			return true;
		}
		else
		{
			foreach(sub in Arr)
				obj.sq_IntVectPush(sub);

			obj.sq_AddSetStatePacket(state, STATE_PRIORITY_USER, true);
			NitroMotor_Decrease(obj);
			return true;
		}

	}
}



function onSetState_sky_crossshoot(obj, state, datas, isResetTimer)
{
    if(!obj) return;
	onSetState_sky_crossshoot_740438587(obj, state, datas, isResetTimer);
}



function onEndCurrentAni_sky_crossshoot(obj)
{
    if(!obj) return;
	onEndCurrentAni_sky_crossshoot_740438587(obj);
}



function onKeyFrameFlag_sky_crossshoot(obj, flagIndex)
{
	if(!obj) return false;
	onKeyFrameFlag_sky_crossshoot_740438587(obj, flagIndex);
	return true;
}



function onSetState_sky_chargebuster(obj, state, datas, isResetTimer)
{
    if(!obj) return;
	onSetState_sky_chargebuster_740438587(obj, state, datas, isResetTimer);
}



function onEndCurrentAni_sky_chargebuster(obj)
{
    if(!obj) return;
	onEndCurrentAni_sky_chargebuster_740438587(obj);
}



function onKeyFrameFlag_sky_chargebuster(obj, flagIndex)
{
	if(!obj) return false;
	onKeyFrameFlag_sky_chargebuster_740438587(obj, flagIndex);
	return true;
}



function onSetState_sky_napalmbomb(obj, state, datas, isResetTimer)
{
    if(!obj) return;
	onSetState_sky_napalmbomb_740438587(obj, state, datas, isResetTimer);
}



function onEndCurrentAni_sky_napalmbomb(obj)
{
    if(!obj) return;
	onEndCurrentAni_sky_napalmbomb_740438587(obj);
}



function onKeyFrameFlag_sky_napalmbomb(obj, flagIndex)
{
	if(!obj) return false;
	onKeyFrameFlag_sky_napalmbomb_740438587(obj, flagIndex);
	return true;
}



function onSetState_sky_nielsniping(obj, state, datas, isResetTimer)
{
    if(!obj) return;
	onSetState_sky_nielsniping_740438587(obj, state, datas, isResetTimer)
}



function onEndCurrentAni_sky_nielsniping(obj)
{
    if(!obj) return;
	onEndCurrentAni_sky_nielsniping_740438587(obj);
}



function onKeyFrameFlag_sky_nielsniping(obj, flagIndex)
{
	if(!obj) return false;
	onKeyFrameFlag_sky_nielsniping_740438587(obj, flagIndex);
	return true;
}



function onSetState_sky_empstorm(obj, state, datas, isResetTimer)
{
    if(!obj) return;
	onSetState_sky_empstorm_740438587(obj, state, datas, isResetTimer);
}



function onEndCurrentAni_sky_empstorm(obj)
{
    if(!obj) return;
	onEndCurrentAni_sky_empstorm_740438587(obj);
}



function onKeyFrameFlag_sky_empstorm(obj, flagIndex)
{
	if(!obj) return false;
	onKeyFrameFlag_sky_empstorm_740438587(obj, flagIndex);
	return true;
}

