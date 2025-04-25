
function setCustomData_po_bloodcut(obj, receiveData)
{
	if(!obj)
		return;
	local attackBonusRate = receiveData.readDword();// ?????(%)	
	local id = receiveData.readDword();

    obj.getVar("id").clear_vector();
    obj.getVar("id").push_vector(id);

	if (id == 125)
    {
        local Maxcount = receiveData.readDword();
        local CurrentCount = receiveData.readDword();
        local dist = receiveData.readDword();
        local size = receiveData.readDword();
        local yPos = receiveData.readDword();
        local maxT = receiveData.readDword();

        local burnProc = receiveData.readDword();
        local burnLevel = receiveData.readDword();
        local burnTime = receiveData.readDword();
        local atk2 = receiveData.readDword();

//        local ani = obj.getCustomAnimation(180);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/icewave.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 103);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate,sizeRate);

        obj.getVar("effectObj").clear_obj_vector();
        obj.getVar("effectObj").push_obj_vector( createIceWaveExAnimation(obj,size,100) );

        local particleCreater = obj.sq_var.GetparticleCreaterMap("IceWaveEx",
        "passiveobject/character/swordman/particle/icewaveexiceexplosionparticle1.ptl", obj);

        local attackInfo = sq_GetCurrentAttackInfo(obj);

        sq_SetChangeStatusIntoAttackInfo(attackInfo, 0,ACTIVESTATUS_FREEZE, burnProc, burnLevel, burnTime);

        obj.getVar("var").clear_vector();
        obj.getVar("var").push_vector(attackBonusRate);
        obj.getVar("var").push_vector(Maxcount);
        obj.getVar("var").push_vector(CurrentCount );
        obj.getVar("var").push_vector(dist);
        obj.getVar("var").push_vector(size );
        obj.getVar("var").push_vector(yPos );
        obj.getVar("var").push_vector(maxT);
        obj.getVar("var").push_vector(burnProc );
        obj.getVar("var").push_vector(burnLevel );
        obj.getVar("var").push_vector(burnTime );
        obj.getVar("var").push_vector(atk2 );

        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);
        obj.getVar("flag").push_vector(0);

}
}

/*
function onKeyFrameFlag_po_bloodcut(obj, flagIndex)
{

	if (!obj)
		return 0;

    return onKeyFrameFlagEtc_po_bloodcut(obj, flagIndex);


}
*/

/*
function onAttack_po_bloodcut(obj,damager, boundingBox, isStuck)
{

	if (!obj)
		return 0;
    onAttackEtc_po_bloodcut(obj,damager, boundingBox, isStuck);
}
*/


/*
function onTimeEvent_po_bloodcut(obj, timeEventIndex, timeEventCount)
{
	if (!obj)
		return 0;
    onTimeEventEtc_po_bloodcut(obj, timeEventIndex, timeEventCount);
}
*/




function procAppend_po_bloodcut(obj)
{
//
	if (!obj)
		return 0;
    local id = obj.getVar("id").get_vector(0 );

	if (id == 125)
    {
        local atk = obj.getVar("var").get_vector(0);
        local maxCount = obj.getVar("var").get_vector(1);
        local currCount =  obj.getVar("var").get_vector(2);
        local dist =  obj.getVar("var").get_vector(3);
        local size =  obj.getVar("var").get_vector(4);
        local yPos =  obj.getVar("var").get_vector(5);
        local maxT =  obj.getVar("var").get_vector(6);
        local burnProc =  obj.getVar("var").get_vector(7);
        local burnLevel =  obj.getVar("var").get_vector(8);
        local burnTime =  obj.getVar("var").get_vector(9);
        local atk2 =  obj.getVar("var").get_vector(10);

        local currentAni = sq_GetCurrentAnimation(obj);
        local currentT = sq_GetCurrentTime(currentAni);

        if (currentT >= 10 && obj.getVar("flag").get_vector(0) == 0)
        {
            obj.getVar("flag").set_vector(0,1);


            if (maxCount > currCount)
            {
                if (!obj.isMyControlObject() )
                    return false;

                local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), dist);
                sq_BinaryStartWrite();
                sq_BinaryWriteDword(atk );	// attackBonusRate
                sq_BinaryWriteDword(125);
                sq_BinaryWriteDword(maxCount);
                sq_BinaryWriteDword(currCount + 1);
                sq_BinaryWriteDword(dist);
                sq_BinaryWriteDword(size);
                sq_BinaryWriteDword(yPos);
                sq_BinaryWriteDword(maxT);
                sq_BinaryWriteDword(burnProc);
                sq_BinaryWriteDword(burnLevel);
                sq_BinaryWriteDword(burnTime);
                sq_BinaryWriteDword(atk2);
                sq_SendCreatePassiveObjectPacketPos(obj,24357, 0, posX , obj.getYPos() + yPos, obj.getZPos());
            }

        }else if (currentT >= maxT && obj.getVar("flag").get_vector(1) == 0)
        {
            obj.getVar("flag").set_vector(1,1);
//            sq_SendCreatePassiveObjectPacketPos(obj,20132, 15, obj.getXPos() , obj.getYPos(), obj.getZPos() + 37);
            createIceWaveExExplosionEffect(obj,200);


			sq_createAttackObjectWithPath(obj, "passiveobject/character/swordman/animation/icewaveexiceexplosion.ani",
            "passiveobject/character/swordman/attackinfo/icewaveexiceexplosion.atk",false,atk2,size,0,0,37);		

            local effect = obj.getVar("effectObj").get_obj_vector(0);
            if (effect)
                effect.setValid(false);
            sq_SendDestroyPacketPassiveObject(obj);	

        }
    }


}


/*
function onEndCurrentAni_po_bloodcut(obj)
{

	if (!obj)
		return 0;
    onEndCurrentAniEtc_po_bloodcut(obj);


}
*/