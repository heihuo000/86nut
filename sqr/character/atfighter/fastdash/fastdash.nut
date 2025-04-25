function checkExecutableSkill_FastDash(obj)  
{
	if (!obj) return false;
    local state = obj.sq_GetState();

    if (state == 0 || state == 14)
    {

        local isUseSkill = obj.sq_IsUseSkill(108);
        if (isUseSkill) {
            obj.sq_IntVectClear();
            obj.sq_IntVectPush(0);	// subState??
            obj.sq_IntVectPush(0);	// subState??
            obj.sq_IntVectPush(0);	// subState??
            obj.sq_AddSetStatePacket(59, STATE_PRIORITY_USER, true);
            return true;
        }
    }else{

            obj.sq_IntVectClear();
            obj.sq_IntVectPush(2);	// subState??
            obj.sq_IntVectPush(0);	// subState??
            obj.sq_IntVectPush(0);	// subState??
            obj.sq_AddSetStatePacket(STATE_DASH_BEHIND, STATE_PRIORITY_USER, true);

    }
    return false;
}

function onSetState_FastDash(obj, state, datas, isResetTimer)
{	
	local subState = obj.sq_GetVectorData(datas, 0);
	obj.sq_SetSkillSubState(obj, subState);
    if (subState == 2)
    {
        obj.sq_SetCurrentAnimation(CUSTOM_ANI_FLASHSTEP_BEHIND);

        local ani = obj.sq_GetCurrentAni();
		local delay = ani.getDelaySum(false);


        obj.getVar("len").clear_vector();
        obj.getVar("len").push_vector(obj.getXPos());
        obj.getVar("len").push_vector(200);
        obj.getVar("len").push_vector(300);
//        local ani = obj.sq_GetDashAttackAni();
//		obj.setCurrentAnimation(ani);

    }else if (subState == 3)
    {
        obj.sq_SetCurrentAnimation(CUSTOM_ANI_FLASHSTEP_BEHIND_AFTER);
    }
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT,1.0, 1.0);
}

function onProc_FastDash(obj)
{
    if (obj.sq_GetSkillSubState(obj) == 2)
    {


        local pAni = obj.sq_GetCurrentAni();
        local currentT = sq_GetCurrentTime(pAni);

        local startX = obj.getVar("len").get_vector(0);
        local backD = obj.getVar("len").get_vector(1);
        local max = obj.getVar("len").get_vector(2);

        if (currentT < max)
        {

            local v = sq_GetAccel(0, backD, currentT,max, true);
            
            local dstX = sq_GetDistancePos(startX, obj.getDirection(), -v);
             
            if(obj.isMovablePos(dstX, obj.getYPos() ))
            {
                sq_setCurrentAxisPos(obj, 0, dstX);
            }
        }else{
            obj.sq_IntVectClear();
            obj.sq_IntVectPush(3);	// subState??
            obj.sq_IntVectPush(0);	// subState??
            obj.sq_IntVectPush(0);	// subState??
            obj.sq_AddSetStatePacket(STATE_DASH_BEHIND, STATE_PRIORITY_USER, true);
        }

    }
}

function onEndCurrentAni_FastDash(obj)
{
    if (obj.sq_GetSkillSubState(obj) == 3)
    {
            obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
    }
}

function checkCommandEnable_FastDash(obj)
{

    if (obj.sq_GetSkillLevel(SKILL_FLASHSTEP) > 0 )
    {
        return true;
    }else{

        local state = obj.sq_GetState();
        if (state == 0 || state == 8 || state == 14)
        {
            return true;
        }
    }
    return false;

}