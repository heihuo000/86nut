

function onSetState_Common_State(obj, state, datas, isResetTimer)
{	

    local state = obj.getVar("state").get_vector(0);
    
    if (state == 0)
    {
        local buffAni = sq_GetCurrentAnimation(obj);
        obj.setCurrentAnimation(buffAni);
        obj.getVar("pos").clear_vector();
        obj.getVar("pos").push_vector(obj.getZPos() );
    }else if (state == 1)
    {

    }
}

function onProc_Common_State(obj)
{
    local state = obj.getVar("state").get_vector(0);
    if (state == 0)
    {
        local pAni = obj.sq_GetCurrentAni();
        local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
        local currentT = sq_GetCurrentTime(pAni);
        if (currentT < 200)
        {
            local v = sq_GetAccel(obj.getVar("pos").get_vector(0), 150, currentT, 200, true);
            sq_setCurrentAxisPos(obj, 2, v);
        }else
        {
            obj.getVar("state").clear_vector();
            obj.getVar("state").push_vector(1);
            obj.sq_AddSetStatePacket(STATE_BURSTER, STATE_PRIORITY_IGNORE_FORCE, true);
        }

    }else if (state == 1)
    {
        sq_setCurrentAxisPos(obj, 2, 150);
    }
}




function onTimeEvent_JUMPATTACKWIN(obj, timeEventIndex, timeEventCount)
{
    local state = obj.getVar("state").get_vector(0);
    if (state == 1)
    {

        local x = 0;
        local y = 0;
        local move = 4;

        if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)) x = - move;
        if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL)) x = move;
        if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)) y = - move;
        if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) y = move;

        obj.sq_SetfindNearLinearMovablePos(obj.getXPos() + x,obj.getYPos() + y,obj.getXPos(), obj.getYPos(), 10);

        local isPress = sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL)
        if (isPress)
        {

            obj.getVar("state").clear_vector();
            obj.getVar("state").push_vector(2);
            obj.sq_AddSetStatePacket(STATE_JUMPATTACKWIN, STATE_PRIORITY_USER, true);
        }
    }
}