


function onTimeEvent_Burster(obj, timeEventIndex, timeEventCount)
{
    local state = obj.getVar("state").get_vector(0);
    if (state == 1 || state == 6)
    {
        if (timeEventIndex == 0)
        {
            local x = 0;
            local y = 0;
            local move = 3;

            if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)) x = - move;
            if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL)) x = move;
            if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)) y = - move;
            if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) y = move;

            if (x < 0)
                obj.setCurrentDirection(ENUM_DIRECTION_LEFT);

            if (x > 0)
                obj.setCurrentDirection(ENUM_DIRECTION_RIGHT);

            if (state == 1)
            {
                if(obj.isMovablePos(obj.getXPos() + x, obj.getYPos() + y ) )
                    obj.setCurrentPos(obj.getXPos() + x,obj.getYPos() + y,150);
            }else if (state == 6){
                if(obj.isMovablePos(obj.getXPos() + x, obj.getYPos() + y ) )
                    obj.setCurrentPos(obj.getXPos() + x,obj.getYPos() + y,0);
            }

            local isPress = sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL);
            if (isPress)
            {
                if (state == 1)
                {
                    local subState = obj.getVar("state2").get_vector(0);
                    if ( subState == 0)
                    {
                        createPreiyEnd1Wing(obj, 0, -1, 0);
                    }else if ( subState == 1)
                    {
                        createPreiyEndWindBottom(obj, 0, -1, 0);
                        createPreiyEndWind(obj, 0, 1, 0);
                    }
                    obj.sq_IntVectClear();
                    obj.sq_IntVectPush(1);
                    obj.sq_IntVectPush(0);
                    obj.sq_IntVectPush(0);
                    obj.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
                }else if (state == 6 &&  timeEventCount > 50)
                {
                    sq_SendCreatePassiveObjectPacketPos(obj,160029, 0, obj.getXPos(), obj.getYPos() + 1, obj.getZPos() );
                    sq_SendCreatePassiveObjectPacketPos(obj,160030, 0, obj.getXPos(), obj.getYPos() - 1, obj.getZPos() );
                    obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_IGNORE_FORCE, true);
                }
            }
            if (state == 1)
            {
                local subState = obj.getVar("state2").get_vector(0);
                if (subState == 0)
                {
                    isPress = sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL);
                    if (isPress)
                    {

                        obj.getVar("state").clear_vector();
                        obj.getVar("state").push_vector(2);
                        obj.sq_AddSetStatePacket(STATE_BURSTER, STATE_PRIORITY_IGNORE_FORCE, true);
                    }
                }
            }

        }else if (timeEventIndex == 1)
        {
            sq_SendCreatePassiveObjectPacketPos(obj,160006, 0, obj.getXPos(), obj.getYPos() + 1, 0 );
        }
    }
}
