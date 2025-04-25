

function onAttack_WaveSword(obj, damager, boundingBox, isStuck)
{

}

function onKeyFrameFlag_WaveSword(obj,flagIndex)
{
    if (!obj.isMyControlObject() )
        return false;

    if (obj.getVar("state").get_vector(0) == 100)
    {

        local atk = obj.sq_GetPowerWithPassive(100, 24, 3, -1, 1.0);
        local atk2 = obj.sq_GetPowerWithPassive(100, 24, 7, -1, 1.0);
        local count = sq_GetLevelData(obj, 100, 1, sq_GetSkillLevel(obj, 100) );
        local dist = 75;
        local size = 100;
        local maxT = 3000;

        local burnProc = sq_GetLevelData(obj, 100, 4, sq_GetSkillLevel(obj, 100) ) / 10;
        local burnLevel = sq_GetLevelData(obj, 100, 5, sq_GetSkillLevel(obj, 100) );
        local burnTime = sq_GetLevelData(obj, 100, 6, sq_GetSkillLevel(obj, 100) );

		obj.sq_StartWrite();
		obj.sq_WriteDword(atk);	// attackBonusRate
		obj.sq_WriteDword(125 );	// attackBonusRate
		obj.sq_WriteDword(count );
		obj.sq_WriteDword(1 );
		obj.sq_WriteDword( dist );
		obj.sq_WriteDword( size );
		obj.sq_WriteDword( -15 );
		obj.sq_WriteDword( maxT );


		obj.sq_WriteDword(burnProc );
		obj.sq_WriteDword(burnLevel );
		obj.sq_WriteDword(burnTime );
		obj.sq_WriteDword(atk2);
        obj.sq_SendCreatePassiveObjectPacket(24357, 0, 75, 1, 0 );


		obj.sq_StartWrite();
		obj.sq_WriteDword(atk);	// attackBonusRate
		obj.sq_WriteDword(125 );	// attackBonusRate
		obj.sq_WriteDword(count );
		obj.sq_WriteDword(1 );
		obj.sq_WriteDword( dist );
		obj.sq_WriteDword( size );
		obj.sq_WriteDword( 15 );
		obj.sq_WriteDword( maxT );


		obj.sq_WriteDword(burnProc );
		obj.sq_WriteDword(burnLevel );
		obj.sq_WriteDword(burnTime );
		obj.sq_WriteDword(atk2);

        obj.sq_SendCreatePassiveObjectPacket(24357, 0, 75, 1, 0 );


//        obj.sq_SendCreatePassiveObjectPacket(20132, 15, 50, -1, 0 );
    }
    return true;
}


function onEndCurrentAni_WaveSword(obj)
{

}



function createIceWaveExExplosionEffect(obj,size)
{

	local ani = sq_CreateAnimation("","passiveobject/character/swordman/animation/icewaveexiceexplosionparticle2.ani");
    local sizeRate = size.tofloat()/100.0;
    ani.setImageRateFromOriginal(sizeRate, sizeRate);
    ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 0);
	pooledObj.setCurrentPos(posX , obj.getYPos(),37);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	

}


function createIceWaveExAnimation(obj,size,rate)
{
    local rand =  sq_getRandom(0,7).tointeger();

	local ani = sq_CreateAnimation("","passiveobject/character/swordman/animation/icewaveex/1.ani");
    if (rand <= 2 )
        ani = sq_CreateAnimation("","passiveobject/character/swordman/animation/icewaveex/2.ani");
    else if (rand <= 3 )
        ani = sq_CreateAnimation("","passiveobject/character/swordman/animation/icewaveex/3.ani");
    else if (rand <= 4 )
        ani = sq_CreateAnimation("","passiveobject/character/swordman/animation/icewaveex/4.ani");
    else if (rand <= 5 )
        ani = sq_CreateAnimation("","passiveobject/character/swordman/animation/icewaveex/5.ani");
    else if (rand <= 6 )
        ani = sq_CreateAnimation("","passiveobject/character/swordman/animation/icewaveex/6.ani");

    local speedRate = rate.tofloat();
    ani.setSpeedRate( speedRate );

    local sizeRate = size.tofloat()/100.0;
    ani.setImageRateFromOriginal(sizeRate, sizeRate);
    ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate);

	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentPos(obj.getXPos() , obj.getYPos(),0);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	

    return pooledObj;
}



function onAfterSetState_WaveSword(obj, state, datas, isResetTimer)
{

	local substate = obj.sq_GetVectorData(datas, 0);
    obj.getVar("state").clear_vector();
    obj.getVar("state").push_vector( substate );


}