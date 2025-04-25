

function onProc_Burster(obj)
{
    local state = obj.getVar("state").get_vector(0);
    local pAni = obj.sq_GetCurrentAni();
    local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
    local currentT = obj.sq_GetStateTimer();

    if (state == 0)
    {

        if (currentT < 16*40)
        {
            local v = sq_GetAccel(obj.getVar("pos").get_vector(0), 150, currentT,16*40, true);
            sq_setCurrentAxisPos(obj, 2, v);
        }else
        {
            obj.getVar("state").clear_vector();
            obj.getVar("state").push_vector(1);
            obj.sq_AddSetStatePacket(STATE_BURSTER, STATE_PRIORITY_IGNORE_FORCE, true);
        }

    }else if (state == 1)
    {
        
		local animation = sq_GetCurrentAnimation(obj);
		obj.sq_SetCurrentTimeByFrame(animation, 2);

        local loopCurrentT = currentT % (40*17);
        if (loopCurrentT < 40 * 7)
        {
            local v = sq_GetAccel(0, 15, loopCurrentT,40 * 11, true);
            sq_setCurrentAxisPos(obj, 2, 150 + v);
        }else if (loopCurrentT < 40 * 11)
        {
            loopCurrentT -= 40 * 7;
            local v = sq_GetAccel(0, 30, loopCurrentT,40 * 4, true);
            sq_setCurrentAxisPos(obj, 2, 165 - v);
        }else
        {
            loopCurrentT -= 40 * 11;
            local v = sq_GetAccel(0, 15, loopCurrentT,40 * 6, true);
            sq_setCurrentAxisPos(obj, 2, 135 + v);
        }

        local var = obj.getVar("effect");  		
        local objectsSize = var.get_obj_vector_size();

        for(local i=0;i<objectsSize;++i)
        {
            local effectObj = var.get_obj_vector(i);
            if (effectObj)
            {   
                if (obj.getVar("state2").get_vector(0) == 0)
                {
                    effectObj.setCurrentPos(obj.getXPos(),obj.getYPos(),150);
                    effectObj.setCurrentDirection(obj.getDirection());
                }else if (obj.getVar("state2").get_vector(0) == 1)
                {
                    effectObj.setCurrentPos(obj.getXPos(),obj.getYPos(),0);
                }
            }
        }



    }else if (state == 2)
    {
        if (currentT < 500)
        {
            sq_setCurrentAxisPos(obj, 2, 150);
        }else
        {
            obj.getVar("state").clear_vector();
            obj.getVar("state").push_vector(1);
            obj.sq_AddSetStatePacket(STATE_BURSTER, STATE_PRIORITY_IGNORE_FORCE, true);
        }

        local var = obj.getVar("effect");  		
        local objectsSize = var.get_obj_vector_size();

        for(local i=0;i<objectsSize;++i)
        {
            local effectObj = var.get_obj_vector(i);
            if (effectObj)
            {
                effectObj.setCurrentPos(obj.getXPos(),obj.getYPos(),150);
                effectObj.setCurrentDirection(obj.getDirection());
            }
        }

    }else if (state == 3)
    {
        if (currentT < 100)
        {
            local startZ = obj.getVar("pos").get_vector(0);
            local v = sq_GetAccel(startZ, 0, currentT,100, false);
            sq_setCurrentAxisPos(obj, 2, v);

        }else{
            sq_SendCreatePassiveObjectPacketPos(obj,160004, 0, obj.getXPos(), obj.getYPos() + 1, obj.getZPos() );
            sq_SendCreatePassiveObjectPacketPos(obj,160005, 0, obj.getXPos(), obj.getYPos() - 1, obj.getZPos() );

            obj.sq_IntVectClear();
            obj.sq_IntVectPush(300);
            obj.sq_IntVectPush(300);
            obj.sq_IntVectPush(300);
            obj.sq_AddSetStatePacket(STATE_SIT, STATE_PRIORITY_IGNORE_FORCE, false);
        }
    }else if (state == 4)
    {
        if (currentT > 100)
        {
            sq_SendCreatePassiveObjectPacketPos(obj,160015, 0, obj.getXPos(), obj.getYPos() + 1, 0 );
            obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_IGNORE_FORCE, false);
        }else{
            local startX = obj.getVar("pos").get_vector(0);
            local v = sq_GetAccel(0, 400, currentT,100, true);
            if (v > 200 && obj.getVar("pos").get_vector(1) == 0)
            {
                obj.getVar("pos").set_vector(1,1);
                sq_SendCreatePassiveObjectPacketPos(obj,160016, 0, obj.getXPos(), obj.getYPos() + 1, 67 );
            }

            local dstX = sq_GetDistancePos(startX, obj.getDirection(), v);
            if ( obj.isMovablePos(dstX, obj.getYPos() ) )
                sq_setCurrentAxisPos(obj, 0, dstX);
        }
    }else if (state == 5)
    {
        if (currentT > 200)
        {

            local dstX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 400);
            obj.sq_SetfindNearLinearMovablePos(dstX,obj.getYPos(),obj.getXPos(), obj.getYPos(), 10);
            obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_IGNORE_FORCE, false);
            sq_SendCreatePassiveObjectPacketPos(obj,160019, 0, obj.getXPos(), obj.getYPos() + 1, 0 );
        }
    }else if (state == 7)
    {


        if (currentT <= 1000)
        {
            local startX = obj.getVar("pos").get_vector(0);
            local startY = obj.getVar("pos").get_vector(1);
            local startZ = obj.getVar("pos").get_vector(2);

            local mobX = obj.getVar("pos").get_vector(3);
            local mobY = obj.getVar("pos").get_vector(4);

            local offsetX = startX - mobX;
            local offsetY = startY - mobY;
            local vz = 0;

            if (offsetX > 0)
                offsetX += 200;

            if (offsetX < 0)
                offsetX -= 200;
            

            if (currentT <= 500)
                vz = sq_GetAccel(startZ, 0, currentT, 500, true);

            local vx = startX + sq_GetAccel(0, offsetX, currentT, 1000, true);
            local vy = startY + sq_GetAccel(0, offsetY, currentT, 1000, true);

            if (obj.isMovablePos(vx, vy) )
                obj.setCurrentPos(vx,vy,vz);
            else
                obj.setCurrentPos(obj.getXPos(),obj.getYPos(),vz);
        }else{
            obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_IGNORE_FORCE, false);
        }

    }else if (state == 8)
    {
        local subFlag = obj.getVar("subFlag").get_vector(0);
        if (subFlag == 2)
        {
            if (currentT >= 2000)
                obj.setCurrentPos(2000 ,180 + 10 ,0);



        }else if (subFlag == 1)
        {
            if (currentT >= 2500)
                obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_IGNORE_FORCE, false);



        }else if (subFlag == 0)
        {
            if (currentT >= 1000)
            {
                obj.setCurrentPos(2000 ,180 + 10 ,0);
            }else if (currentT >= 1200)
            {

            }
        }
    }else if (state == 9)
    {

        if (currentT > 400)
        {

            obj.getVar("state").clear_vector();
            obj.getVar("state").push_vector(10);
            obj.sq_AddSetStatePacket(114, STATE_PRIORITY_USER, true);

        }
    }else if (state == 10)
    {
        if (currentT > 500)
        {

            obj.sq_AddSetStatePacket(0, STATE_PRIORITY_USER, true);

        }
    }

}