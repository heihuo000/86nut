

function getScrollBasisPos_Burster(obj)
{
    local state = obj.getVar("state").get_vector(0);
    if (state == 5)
    {
		local pAni = obj.sq_GetCurrentAni();
		local currentT = sq_GetCurrentTime(pAni);

        if (currentT <= 200)
        {
            local pX = sq_GetAccel(0, 400, currentT, 200 , true);
            local dstX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), pX);
            obj.sq_SetCameraScrollPosition(dstX, obj.getYPos() , 0);
            return true;
        }
    }else if (state == 8)
    {
    	local pAni = obj.sq_GetCurrentAni();
        local currentT = sq_GetCurrentTime(pAni);
        local subFlag = obj.getVar("subFlag").get_vector(0);
        if (subFlag == 1)
        {
            if (currentT >= 0 && currentT <= 1000)
            {
                local v = sq_GetAccel(2000, -400, currentT, 1000 , true);
                local dstX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), v);
                obj.sq_SetCameraScrollPosition(dstX, obj.getYPos() , 0);
                return true;
            }else if (currentT >= 1000 && currentT <= 2000)
            {
                local v = sq_GetAccel(-400, 800, currentT - 1000, 1000 , true);
                local dstX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), v);
                obj.sq_SetCameraScrollPosition(dstX, obj.getYPos() , 0);
                return true;
            }else if (currentT >= 2000 && currentT <= 2500)
            {
                local v = sq_GetAccel(800, 0, currentT - 2000, 500 , true);
                local dstX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), v);
                obj.sq_SetCameraScrollPosition(dstX, obj.getYPos() , 0);
                return true;
            }
        }else if (subFlag == 2)
        {
            if (currentT >= 0 && currentT <= 1000)
            {
                local v = sq_GetAccel(0, -400, currentT, 1000 , true);
                local dstX = obj.getXPos() + v;
                obj.sq_SetCameraScrollPosition(dstX, obj.getYPos() , 0);
                return true;
            }else if (currentT >= 1000 && currentT <= 2000)
            {
                local v = sq_GetAccel(-400, 1000, currentT - 1000, 1000 , true);
                local dstX = obj.getXPos() + v;
                obj.sq_SetCameraScrollPosition(dstX, obj.getYPos() , 0);
                return true;
            }else if (currentT >= 2000)
            {

                local dstX = obj.getXPos() + 1000;
                obj.sq_SetCameraScrollPosition(dstX, obj.getYPos() , 0);
                return true;
            }
        }
    }
    return false;
}