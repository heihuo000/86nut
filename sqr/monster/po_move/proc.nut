function procAppend_po_control_main(obj)
{

	local id = obj.getVar("id").get_vector(0);

    if (id == 107)
    {

        local pasObj = obj.getVar("moveTarget").get_obj_vector(0);
        if (pasObj)
        {
            local startX = obj.getVar("parameterVar").get_vector(0);
            local startY = obj.getVar("parameterVar").get_vector(1);
            local startZ = obj.getVar("parameterVar").get_vector(2);

            local lastX = obj.getVar("parameterVar").get_vector(3);
            local lastY = obj.getVar("parameterVar").get_vector(4);
            local lastZ = obj.getVar("parameterVar").get_vector(5);

            local moveT = obj.getVar("parameterVar").get_vector(6);

            local curT = sq_GetObjectTime(obj);
            if (curT > moveT)
                sq_SendDestroyPacketPassiveObject(obj);
            else
            {
                local centerX = lastX;
                local centerY = lastY;
                local len = lastZ;

                local angle = sq_GetAccel(0, 360, curT, moveT, true).tofloat();

				local posX = len * sq_CosTable(angle.tointeger());
				local posY = len * sq_SinTable(angle.tointeger()) * 0.29;
				pasObj.setCurrentPos(centerX + posX.tointeger() ,centerY + posY.tointeger(),0);

            }
        }else{
            sq_SendDestroyPacketPassiveObject(obj);
        }

    }else if (id == 106)
    {
        local pasObj = obj.getVar("moveTarget").get_obj_vector(0);
        if (pasObj)
        {
            local startX = obj.getVar("parameterVar").get_vector(0);
            local startY = obj.getVar("parameterVar").get_vector(1);
            local startZ = obj.getVar("parameterVar").get_vector(2);

            local lastX = obj.getVar("parameterVar").get_vector(3);
            local lastY = obj.getVar("parameterVar").get_vector(4);
            local lastZ = obj.getVar("parameterVar").get_vector(5);

            local moveT = obj.getVar("parameterVar").get_vector(6);

            local curT = sq_GetObjectTime(obj);
            if (curT > moveT)
                sq_SendDestroyPacketPassiveObject(obj);
            else
            {
                local offsetX = sq_GetAccel(startX, lastX, curT, moveT, true);
                local offsetY = sq_GetAccel(startY, lastY, curT, moveT, true);
                local offsetZ = getQuadraticFunction(obj,curT,lastZ,moveT).tointeger();
                //sq_GetAccel(startZ, lastZ, curT, moveT, true);

                sq_setCurrentAxisPos(pasObj, 0, offsetX);
                sq_setCurrentAxisPos(pasObj, 1, offsetY);
                sq_setCurrentAxisPos(pasObj, 2, offsetZ);
            }
        }else{
            sq_SendDestroyPacketPassiveObject(obj);
        }

    }else if (id == 105)
    {
        local pasObj = obj.getVar("moveTarget").get_obj_vector(0);
        if (pasObj)
        {
            local startX = obj.getVar("parameterVar").get_vector(0);
            local startY = obj.getVar("parameterVar").get_vector(1);
            local startZ = obj.getVar("parameterVar").get_vector(2);

            local lastX = obj.getVar("parameterVar").get_vector(3);
            local lastY = obj.getVar("parameterVar").get_vector(4);
            local lastZ = obj.getVar("parameterVar").get_vector(5);

            local moveT = obj.getVar("parameterVar").get_vector(6);

            local curT = sq_GetObjectTime(obj);
            if (curT > moveT)
                sq_SendDestroyPacketPassiveObject(obj);
            else
            {
                local offsetX = sq_GetAccel(startX, lastX, curT, moveT, true);
                local offsetY = sq_GetAccel(startY, lastY, curT, moveT, true);
                local offsetZ = sq_GetAccel(startZ, lastZ, curT, moveT, true);

                sq_setCurrentAxisPos(pasObj, 0, offsetX);
                sq_setCurrentAxisPos(pasObj, 1, offsetY);
                sq_setCurrentAxisPos(pasObj, 2, offsetZ);
            }
        }else{
            sq_SendDestroyPacketPassiveObject(obj);
        }

    }else if (id == 104)
    {
        local pasObj = obj.getVar("moveTarget").get_obj_vector(0);
        if (pasObj)
        {

            local startX = obj.getVar("parameterVar").get_vector(0);
            local startY = obj.getVar("parameterVar").get_vector(1);
            local startZ = obj.getVar("parameterVar").get_vector(2);

            local moveSelect = obj.getVar("parameterVar").get_vector(3);
            local moveDistance = obj.getVar("parameterVar").get_vector(4);
            local moveTime = obj.getVar("parameterVar").get_vector(5);
            local saveTime = obj.getVar("parameterVar").get_vector(6);

            local curT = sq_GetObjectTime(obj);

            if (curT > saveTime)
                sq_SendDestroyPacketPassiveObject(obj);

            local offset = getQuadraticFunction(obj, curT , moveDistance , moveTime ).tointeger();
            if (moveSelect == 1)
                sq_setCurrentAxisPos(pasObj, 1, startY + offset);
            else if (moveSelect == 2)
                sq_setCurrentAxisPos(pasObj, 2, startZ + offset);

            //getQuadraticFunction(obj,0 + sq_GetAccel(0, 36, currentT, delayT, true) ,height,100).tointeger();

        }else{
            sq_SendDestroyPacketPassiveObject(obj);
        }


    }else if (id == 103)
    {

        local pasObj = obj.getVar("moveTarget").get_obj_vector(0);
        if (pasObj)
        {
  
                
                local lastX = obj.getVar("lastPos").get_vector(0);
                local lastY = obj.getVar("lastPos").get_vector(1);
                local lastZ = obj.getVar("lastPos").get_vector(2);

                local t = obj.getVar("frameT").get_vector(0);
                
                local curT = sq_GetObjectTime(obj);
                if ( curT < t)
                {
                     if (obj.getVar("startPos").size_vector() <= 0)
                     {
                        
                        obj.getVar("startPos").clear_vector();
                        obj.getVar("startPos").push_vector(pasObj.getXPos());
                        obj.getVar("startPos").push_vector(pasObj.getYPos());
                        obj.getVar("startPos").push_vector(pasObj.getZPos());
                     
                     }else{
                     
                        local startX = obj.getVar("startPos").get_vector(0);
                        local startY = obj.getVar("startPos").get_vector(1);
                        local startZ = obj.getVar("startPos").get_vector(2);
                        
                        
                        local vx = sq_GetUniformVelocity(startX, lastX, curT , t);
                        local vy = sq_GetUniformVelocity(startY, lastY, curT , t);
                        local vz = sq_GetUniformVelocity(startZ, lastZ, curT , t);
                        pasObj.setCurrentPos(vx,vy,vz );
                    }


                }else
                {
                    sq_SendDestroyPacketPassiveObject(obj);
                }
                


        }else{
            sq_SendDestroyPacketPassiveObject(obj);
        }



    }else if (id == 102)
    {

        local pasObj = obj.getVar("moveTarget").get_obj_vector(0);
        if (pasObj)
        {
  

            
            local ani = sq_GetCurrentAnimation(pasObj);
            local frameIndex = sq_GetAnimationFrameIndex(ani);

 
            if (obj.getVar("frame").get_vector(0) == -1)
            {

                local mage = sq_GetMyMasterCharacter();
                mage = sq_ObjectToSQRCharacter(mage);	
                for (local i = 0;i<99;i++)
                {
                    local flag = mage.sq_IsKeyFrameFlag(ani, i);
                    if (flag)
                    {



                        obj.getVar("frame").set_vector(0,frameIndex);
                        obj.getVar("frame").set_vector(1,i);

                        return;
                    }
                }

            }else{

                local startFrame = obj.getVar("frame").get_vector(0);
                local endFrame = obj.getVar("frame").get_vector(1);
                local encodeFrame = obj.getVar("frame").get_vector(2);

                if (encodeFrame > frameIndex)
                {

                    sq_SendDestroyPacketPassiveObject(obj);

                }else{
                    obj.getVar("frame").set_vector(2,encodeFrame);

                }

                
                local lastX = obj.getVar("lastPos").get_vector(0);
                local lastY = obj.getVar("lastPos").get_vector(1);
                local lastZ = obj.getVar("lastPos").get_vector(2);
                
                if ( startFrame <= frameIndex && frameIndex <= endFrame)
                {
                     if (obj.getVar("startPos").size_vector() <= 0)
                     {
                        
                        obj.getVar("startPos").clear_vector();
                        obj.getVar("startPos").push_vector(pasObj.getXPos());
                        obj.getVar("startPos").push_vector(pasObj.getYPos());
                        obj.getVar("startPos").push_vector(pasObj.getZPos());
                     
                     }else{
                     
                        local startX = obj.getVar("startPos").get_vector(0);
                        local startY = obj.getVar("startPos").get_vector(1);
                        local startZ = obj.getVar("startPos").get_vector(2);
                        
                        local startDelay = ani.getDelaySum(0,startFrame);
                        local currentT = sq_GetCurrentTime(ani) - startDelay;
                        local moveT = ani.getDelaySum(startFrame,endFrame);
                        
                        if (currentT < moveT)
                        {
                        
                            local vx = sq_GetUniformVelocity(startX, lastX, currentT , moveT);
                            local vy = sq_GetUniformVelocity(startY, lastY, currentT , moveT);
                            local vz = sq_GetUniformVelocity(startZ, lastZ, currentT , moveT);
                            pasObj.setCurrentPos(vx,vy,vz);
                            
//                            obj.getVar("vvv").clear_vector();
//                            obj.getVar("vvv").push_vector(1);

                            
                        }else{
                        

                        }
                     
                     
                     }
                
                
                
                
                }else if (frameIndex > endFrame)
                {
                    sq_SendDestroyPacketPassiveObject(obj);
                }
                


            }

        }else{
            sq_SendDestroyPacketPassiveObject(obj);
        }



    }else if (id == 108)
    {

        local pasObj = obj.getVar("moveTarget").get_obj_vector(0);
        if (pasObj)
        {
  

            
            local ani = sq_GetCurrentAnimation(pasObj);
            local frameIndex = sq_GetAnimationFrameIndex(ani);

 
            if (obj.getVar("frame").get_vector(0) == -1)
            {

                local mage = sq_GetMyMasterCharacter();
                mage = sq_ObjectToSQRCharacter(mage);	
                for (local i = 0;i<99;i++)
                {
                    local flag = mage.sq_IsKeyFrameFlag(ani, i);
                    if (flag)
                    {



                        obj.getVar("frame").set_vector(0,frameIndex);
                        obj.getVar("frame").set_vector(1,i);

                        return;
                    }
                }

            }else{

                local startFrame = obj.getVar("frame").get_vector(0);
                local endFrame = obj.getVar("frame").get_vector(1);
                local encodeFrame = obj.getVar("frame").get_vector(2);

                if (encodeFrame > frameIndex)
                {

                    sq_SendDestroyPacketPassiveObject(obj);

                }else{
                    obj.getVar("frame").set_vector(2,encodeFrame);

                }

                
                local lastX = obj.getVar("lastPos").get_vector(0);
                local lastY = obj.getVar("lastPos").get_vector(1);
                local lastZ = obj.getVar("lastPos").get_vector(2);
                
                if ( startFrame <= frameIndex && frameIndex <= endFrame)
                {
                     if (obj.getVar("startPos").size_vector() <= 0)
                     {
                        
                        obj.getVar("startPos").clear_vector();
                        obj.getVar("startPos").push_vector(pasObj.getXPos());
                        obj.getVar("startPos").push_vector(pasObj.getYPos());
                        obj.getVar("startPos").push_vector(pasObj.getZPos());
                     
                     }else{
                     
                        local startX = obj.getVar("startPos").get_vector(0);
                        local startY = obj.getVar("startPos").get_vector(1);
                        local startZ = obj.getVar("startPos").get_vector(2);
                        
                        local startDelay = ani.getDelaySum(0,startFrame);
                        local currentT = sq_GetCurrentTime(ani) - startDelay;
                        local moveT = ani.getDelaySum(startFrame,endFrame);
	sq_SetfRotateAngle(ani, -0.45);
                        if (currentT < moveT)
                        {
                        
                            local vx = sq_GetUniformVelocity(startX, lastX, currentT , moveT);
                            local vy = sq_GetUniformVelocity(startY, lastY, currentT , moveT);
                            local vz = sq_GetUniformVelocity(startZ, -50, currentT , moveT);
                            pasObj.setCurrentPos(vx,vy,vz);
                            
//                            obj.getVar("vvv").clear_vector();
//                            obj.getVar("vvv").push_vector(1);

                            
                        }else{
                        

                        }
                     
                     
                     }
                
                
                
                
                }else if (frameIndex > endFrame)
                {
                    sq_SendDestroyPacketPassiveObject(obj);
                }
                


            }

        }else{
            sq_SendDestroyPacketPassiveObject(obj);
        }



    }else if (id == 101)
    {

        local obj_2 = obj.getVar("parent").get_obj_vector(0);
        if (obj_2)
        {
            local spin_D = obj.getVar("spinVar").get_vector(0);
            local spin_T = obj.getVar("spinVar").get_vector(1);
            local startX = obj.getVar("spinVar").get_vector(2);
            local startY = obj.getVar("spinVar").get_vector(3);

            local currentAni = sq_GetCurrentAnimation(parentObj);
            local currentT = sq_GetCurrentTime(currentAni);
            if (currentT < spin_T)
            {
                local spinAngle = sq_GetUniformVelocity(0, 360, currentT , spin_T);


                local posX = spin_D * sq_CosTable(spinAngle.tointeger());
                local posY = spin_D * sq_SinTable(spinAngle.tointeger()) * 0.29;

                local finalyX = startX + posX.tointeger();
                local finalyY = startY - posY.tointeger();
                obj_2.setCurrentPos(finalyX,finalyY,0);
            }


        }else{

//			sq_SendDestroyPacketPassiveObject(obj);


        }


    }else if (id == 100)
    {
        local parentObj = obj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
        local startX = obj.getVar("pos").get_vector(0);
        local startY = obj.getVar("pos").get_vector(1);
        local startZ = obj.getVar("pos").get_vector(2);

        local currentAni = sq_GetCurrentAnimation(parentObj);
        local currentT = sq_GetCurrentTime(currentAni);
		local delay = currentAni.getDelaySum(false) - 60;

        if (currentT < delay)
        {
                local x = sq_GetUniformVelocity(startX, obj.getXPos(), currentT , delay);
                local y = sq_GetUniformVelocity(startY, obj.getYPos(), currentT , delay);
                local z = sq_GetUniformVelocity(startZ, obj.getZPos(), currentT , delay);
                parentObj.setCurrentPos(x,y,z);
        }else{
			sq_SendDestroyPacketPassiveObject(obj);
        }
    }else if (id == 8)
    {
        local startX = obj.getVar("pos").get_vector(0);
        local startY = obj.getVar("pos").get_vector(1);
        local startZ = obj.getVar("pos").get_vector(2);

        local lastX = obj.getVar("pos").get_vector(3);
        local lastY = obj.getVar("pos").get_vector(4);

        local random1 = obj.getVar("pos").get_vector(5);
        local random2 = obj.getVar("pos").get_vector(6);


        local currentAni = sq_GetCurrentAnimation(obj);
        local currentT = sq_GetCurrentTime(currentAni);
		local delay = 1000;

        if (currentT < delay)
        {
            local x = getBeizeriCnt(obj,currentT , delay,startX,random1,random1,lastX).tointeger();
            local y = getBeizeriCnt(obj,currentT , delay,startY,random1,random1,lastY).tointeger();
            local z = sq_GetUniformVelocity(startZ, 0, currentT , delay);
            obj.setCurrentPos(x,y,z);
        }else{
			sq_SendCreatePassiveObjectPacketPos(obj, 109062810, 0, obj.getXPos(), obj.getYPos(), obj.getZPos() );
			sq_SendDestroyPacketPassiveObject(obj);
        }
    }
    else if (id == 7)
    {
        local startX = obj.getVar("pos").get_vector(0);
        local startY = obj.getVar("pos").get_vector(1);
        local lastX = obj.getVar("pos").get_vector(2);
        local lastY = obj.getVar("pos").get_vector(3);
        local maxT = 1000;

        local currentAni = sq_GetCurrentAnimation(obj);
        local currentT = sq_GetCurrentTime(currentAni);

        if (currentT < maxT)
        {
                local x = sq_GetUniformVelocity(startX, lastX, currentT , maxT);
                local y = sq_GetUniformVelocity(startY, lastY, currentT , maxT);
                local z = getQuadraticFunction(obj,currentT,200,maxT);
                obj.setCurrentPos(x,y,z.tointeger() );
        }else{
			sq_SendCreatePassiveObjectPacketPos(obj, 160042, 0, obj.getXPos(), obj.getYPos(), obj.getZPos() );
			sq_SendDestroyPacketPassiveObject(obj);
        }


    }else if (id == 5 || id == 6)
    {
        local currentAni = sq_GetCurrentAnimation(obj);
        local currentT = sq_GetCurrentTime(currentAni);
        local maxT = 500;
        if (currentT <= maxT)
        {
                local startX = obj.getVar("pos").get_vector(0);
                local startY = obj.getVar("pos").get_vector(1);
                local lastX = obj.getVar("pos").get_vector(2);
                local lastY = obj.getVar("pos").get_vector(3);
                local x = sq_GetUniformVelocity(startX, lastX, currentT, maxT);
                local y = sq_GetUniformVelocity(startY, lastY, currentT, maxT);
                obj.setCurrentPos(x,y,0);

        }else{

            sq_SendCreatePassiveObjectPacketPos(obj, 109063867 + obj.getVar("pos").get_vector(4), 0, 
            obj.getXPos(), obj.getYPos(), obj.getZPos() );

			sq_SendDestroyPacketPassiveObject(obj);

        }
    }else if (id == 4)
	{
        local currentAni = sq_GetCurrentAnimation(obj);
        local currentT = sq_GetCurrentTime(currentAni);
		local state = obj.getVar("state").get_vector(0);

        if (state == 0)
		{
            local maxT = obj.getVar("timeState").get_vector(0);
            if (currentT < maxT)
            {
                local startX = obj.getVar("pos").get_vector(0);
                local startY = obj.getVar("pos").get_vector(1);
                local startZ = obj.getVar("pos").get_vector(2);
                local lastX = obj.getVar("pos").get_vector(3);
                local lastY = obj.getVar("pos").get_vector(4);
                local lastZ = obj.getVar("pos").get_vector(5);

                local x = sq_GetUniformVelocity(startX, lastX, currentT, maxT);
                local y = sq_GetUniformVelocity(startY, lastY, currentT, maxT);
                local z = sq_GetUniformVelocity(startZ, lastZ, currentT, maxT);
                obj.setCurrentPos(x,y,z);

            }else{

				obj.getVar("state").set_vector(0,1);
				obj.getVar("pos").set_vector(0, obj.getXPos() );
				obj.getVar("pos").set_vector(1, obj.getYPos() );
				obj.getVar("pos").set_vector(2, obj.getZPos() );
				obj.getVar("pos").set_vector(3, obj.getXPos() + sq_getRandom(-200,200).tointeger() );
				obj.getVar("pos").set_vector(4, obj.getYPos() + sq_getRandom(-50,50).tointeger() );
				obj.getVar("pos").set_vector(5, obj.getZPos() + sq_getRandom(-20,20).tointeger() );

            }
        }else if (state == 1){
			currentT = currentT - obj.getVar("timeState").get_vector(0);
            local maxT = obj.getVar("timeState").get_vector(1);
            if (currentT < maxT)
            {
                local startX = obj.getVar("pos").get_vector(0);
                local startY = obj.getVar("pos").get_vector(1);
                local startZ = obj.getVar("pos").get_vector(2);
                local lastX = obj.getVar("pos").get_vector(3);
                local lastY = obj.getVar("pos").get_vector(4);
                local lastZ = obj.getVar("pos").get_vector(5);

                local x = sq_GetUniformVelocity(startX, lastX, currentT, maxT);
                local y = sq_GetUniformVelocity(startY, lastY, currentT, maxT);
                local z = sq_GetUniformVelocity(startZ, lastZ, currentT, maxT);
                obj.setCurrentPos(x,y,z);

            }else{

				obj.getVar("state").set_vector(0,2);

      			local mage = sq_GetMyMasterCharacter();
                mage = sq_ObjectToSQRCharacter(mage);	

				obj.getVar("pos").set_vector(0, obj.getXPos() );
				obj.getVar("pos").set_vector(1, obj.getYPos() );
				obj.getVar("pos").set_vector(2, obj.getZPos() );
				obj.getVar("pos").set_vector(3, mage.getXPos() );
				obj.getVar("pos").set_vector(4, mage.getYPos() );
				gal_CreateCommonMonsterWarnCircle(obj,mage.getXPos(),mage.getYPos(),2000025);
            }


		}else if (state == 2){
			currentT = currentT - obj.getVar("timeState").get_vector(1);
            local maxT = obj.getVar("timeState").get_vector(2);
            if (currentT < maxT)
            {
                local startX = obj.getVar("pos").get_vector(0);
                local startY = obj.getVar("pos").get_vector(1);
                local startZ = obj.getVar("pos").get_vector(2);
                local lastX = obj.getVar("pos").get_vector(3);
                local lastY = obj.getVar("pos").get_vector(4);

                local x = sq_GetUniformVelocity(startX, lastX, currentT, maxT);
                local y = sq_GetUniformVelocity(startY, lastY, currentT, maxT);
                local z = sq_GetUniformVelocity(startZ, 0, currentT, maxT);
                obj.setCurrentPos(x,y,z);

            }else{

				sq_SendCreatePassiveObjectPacketPos(obj, 160042, 0, obj.getXPos(), obj.getYPos(), obj.getZPos() );
				sq_SendDestroyPacketPassiveObject(obj);
            }


		}

	}else if (id == 3)
	{
        local currentAni = sq_GetCurrentAnimation(obj);
        local currentT = sq_GetCurrentTime(currentAni);
		if (currentT < 450)
		{
			local startX = obj.getVar("pos").get_vector(0);
			local startY = obj.getVar("pos").get_vector(1);
			local startZ = obj.getVar("pos").get_vector(2);
			local lastX = obj.getVar("pos").get_vector(3);
			local lastY = obj.getVar("pos").get_vector(4);
			local lastZ = obj.getVar("pos").get_vector(5);

			local x = sq_GetUniformVelocity(startX, lastX, currentT, 450);
			local y = sq_GetUniformVelocity(startY, lastY, currentT, 450);
			local z = sq_GetUniformVelocity(startZ, lastZ, currentT, 450);
			obj.setCurrentPos(x,y,z);

		}else{
			sq_SendCreatePassiveObjectPacketPos(obj, 160042, 0, obj.getXPos(), obj.getYPos(), obj.getZPos() );
			sq_SendDestroyPacketPassiveObject(obj);
		}

	}else if (id == 2)
	{
        local currentAni = sq_GetCurrentAnimation(obj);
        local currentT = sq_GetCurrentTime(currentAni);
		if (currentT < 450)
		{
			local startX = obj.getVar("pos").get_vector(0);
			local startY = obj.getVar("pos").get_vector(1);
			local lastX = obj.getVar("pos").get_vector(2);
			local lastY = obj.getVar("pos").get_vector(3);
			local lastZ = obj.getVar("pos").get_vector(4);

			local x = sq_GetUniformVelocity(startX, lastX, currentT, 450);
			local y = sq_GetUniformVelocity(startY, lastY, currentT, 450);
			local z = sq_GetUniformVelocity(25, lastZ, currentT, 450);
			obj.setCurrentPos(x,y,z);

		}else{

            if (obj.getVar("time").get_vector(0) == 0)
            {
                obj.getVar("time").set_vector(0,currentT);
            }else{

                local offsetT = currentT - obj.getVar("time").get_vector(0);
                if (offsetT > 100)
                {

                    obj.getVar("time").set_vector(0,currentT);
                    local startX = 720;
                    local lastX = 1505;
                    local currentCount = obj.getVar("count").get_vector(0);
                    local castingX = startX + currentCount * 100;
                    local castingY1 = 100 + obj.getVar("posY").get_vector(0) * 50 ;
                    local castingY2 = 100 + obj.getVar("posY").get_vector(1) * 50 ;

                    if (castingX < lastX)
                    {
                        
                        sq_BinaryStartWrite();
                        sq_BinaryWriteDword(3);	// attackBonusRate
                        sq_BinaryWriteDword( castingX );
                        sq_BinaryWriteDword( castingY1);
                        sq_BinaryWriteDword(0);
                        sq_SendCreatePassiveObjectPacketPos(obj, 24378, 0,obj.getXPos(),obj.getYPos(),obj.getZPos() );

                        sq_BinaryStartWrite();
                        sq_BinaryWriteDword(3);	// attackBonusRate
                        sq_BinaryWriteDword( lastX - (castingX - startX) );
                        sq_BinaryWriteDword( castingY2);
                        sq_BinaryWriteDword(0);
                        sq_SendCreatePassiveObjectPacketPos(obj, 24378, 0,obj.getXPos(),obj.getYPos(),obj.getZPos() );

                        obj.getVar("count").set_vector(0,currentCount + 1);
                    }else{


                        sq_SendDestroyPacketPassiveObject(obj);

                    }

                }

            }
/*
			local lastY = obj.getYPos() + obj.getVar("pos").get_vector(5);
			for(local i = 0;i<10;i++)
			{
				

                sq_BinaryStartWrite();
                sq_BinaryWriteDword(3);	// attackBonusRate
                sq_BinaryWriteDword(obj.getXPos() + (i-5) * 100);
                sq_BinaryWriteDword( lastY - 100);
                sq_BinaryWriteDword(0);
                sq_SendCreatePassiveObjectPacketPos(obj, 24378, 0,obj.getXPos(),obj.getYPos(),obj.getZPos() );

                sq_BinaryStartWrite();
                sq_BinaryWriteDword(3);	// attackBonusRate
                sq_BinaryWriteDword(obj.getXPos() + (i-5) * 100);
                sq_BinaryWriteDword( lastY + 100);
                sq_BinaryWriteDword(0);
                sq_SendCreatePassiveObjectPacketPos(obj, 24378, 0,obj.getXPos(),obj.getYPos(),obj.getZPos() );


			}

			sq_SendDestroyPacketPassiveObject(obj);
*/


		}
	}else if (id == 1)
	{
        local currentAni = sq_GetCurrentAnimation(obj);
        local currentT = sq_GetCurrentTime(currentAni);
		if (currentT < 750)
		{
			local startX = obj.getVar("pos").get_vector(0);
			local startY = obj.getVar("pos").get_vector(1);
			local startZ = obj.getVar("pos").get_vector(2);
			local lastX = obj.getVar("pos").get_vector(3);
			local lastY = obj.getVar("pos").get_vector(4);

			local x = sq_GetUniformVelocity(startX, lastX, currentT, 750);
			local y = sq_GetUniformVelocity(startY, lastY, currentT, 750);
			local z = sq_GetUniformVelocity(startZ, 0, currentT, 750);
			obj.setCurrentPos(x,y,z);

		}else{
			sq_SendCreatePassiveObjectPacketPos(obj, 160042, 0, obj.getXPos(), obj.getYPos(), obj.getZPos() );
			sq_SendDestroyPacketPassiveObject(obj);
		}
	}

}