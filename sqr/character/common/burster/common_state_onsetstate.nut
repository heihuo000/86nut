function onSetState_Burster(obj, state, datas, isResetTimer)
{	

    local state = obj.getVar("state").get_vector(0);
    obj.sq_StopMove();
    if (state == 0)
    {
        local subState = obj.getVar("state2").get_vector(0);
        if (subState == 0)
        {
            createPreiyStartWing(obj, 0, -1, 0);
        }else if (subState == 1)
        {
            createPreiyStartWind(obj, 0, 1, 0);
            createPreiyStartWindBottom(obj, 0, -1, 0);
        }
		obj.sq_ZStop();
        local buffAni = obj.sq_GetJumpAni();
        obj.setCurrentAnimation(buffAni);
        obj.getVar("pos").clear_vector();
        obj.getVar("pos").push_vector(obj.getZPos() );
    }else if (state == 1)
    {
        local buffAni = obj.sq_GetJumpAni();
        obj.setCurrentAnimation(buffAni);
		obj.sq_ZStop();
        obj.setTimeEvent(0,10,0,false);

        local subState = obj.getVar("state2").get_vector(0);
        if (subState == 0)
        {
            obj.getVar("effect").clear_obj_vector();
            createPreiyLoopWing(obj, 0,-1, 0);
        }else if (subState == 1)
        {
            obj.getVar("effect").clear_obj_vector();
            createPreiyLoopWind(obj, 0, 1, 0);
            createPreiyLoopWindBottom(obj,0,-1,0);
            obj.setTimeEvent(1,300,0,false);
            
        }

    }else if (state == 2)
    {

        createPreiyDashShock(obj, 0, 1, 0);
        obj.sq_SetStaticMoveInfo(0, 900, 900, false);	
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);	

		obj.sq_ZStop();
        local buffAni = obj.sq_GetDashAni();
        obj.setCurrentAnimation(buffAni);
        obj.getVar("pos2").clear_vector();
        obj.getVar("pos2").push_vector(obj.getXPos() );

        obj.getVar("effect").clear_obj_vector();
        createPreiyDashWing(obj, 0, -1, 0);
        obj.sq_SendCreatePassiveObjectPacket(160003, 0, 50, 1, 0);
    }else if (state == 3)
    {

        //createPreyEquipmentSuddentDropShock_1(obj);
		obj.sq_ZStop();
        local buffAni = obj.sq_GetJumpAni();
        obj.setCurrentAnimation(buffAni);
        obj.getVar("pos").clear_vector();
        obj.getVar("pos").push_vector(obj.getZPos() );
    }else if (state == 4)
    {
        sq_SendCreatePassiveObjectPacketPos(obj,160014, 0, obj.getXPos(), obj.getYPos() + 1, 0 );
        obj.getVar("pos").clear_vector();
        obj.getVar("pos").push_vector( obj.getXPos() );
        obj.getVar("pos").push_vector(0);
        sq_SendMessage(obj,OBJECT_MESSAGE_INVINCIBLE,100,0);
        sq_PostDelayedMessage(obj,OBJECT_MESSAGE_INVINCIBLE,0,0,600);
        local buffAni = obj.sq_GetDashAni();
        obj.setCurrentAnimation(buffAni);
    }else if (state == 5)
    {
        sq_SendCreatePassiveObjectPacketPos(obj,160018, 0, obj.getXPos(), obj.getYPos() - 1, 0 );
        sq_SendCreatePassiveObjectPacketPos(obj,160017, 0, obj.getXPos(), obj.getYPos() + 1, 0 );
        local buffAni = obj.sq_GetSitAni();
        obj.setCurrentAnimation(buffAni);
        sq_SendMessage(obj,OBJECT_MESSAGE_INVINCIBLE,100,0);
        sq_PostDelayedMessage(obj,OBJECT_MESSAGE_INVINCIBLE,0,0,700);
    }else if (state == 6)
    {
        sq_SendCreatePassiveObjectPacketPos(obj,160027, 0, obj.getXPos(), obj.getYPos() + 1, obj.getZPos() );
        sq_SendCreatePassiveObjectPacketPos(obj,160028, 0, obj.getXPos(), obj.getYPos() - 1, obj.getZPos() );
        local ani = obj.getVar().GetAnimationMap("BusterEffectHiding", 
        "passiveobject/zrr_obj/prey_equipment/quick/hiding/hidingloopfront_00.ani"); 
		obj.setCurrentAnimation(ani);
        obj.setTimeEvent(0,10,0,false);
    }else if (state == 7)
    {
        local mobX = obj.getVar("state").get_vector(1);
        local mobY = obj.getVar("state").get_vector(2);
        
        obj.setCurrentDirection(ENUM_DIRECTION_LEFT);
        if (mobX > obj.getXPos() )
            obj.setCurrentDirection(ENUM_DIRECTION_RIGHT);

        sq_SendMessage(obj,OBJECT_MESSAGE_INVINCIBLE,100,0);
        sq_PostDelayedMessage(obj,OBJECT_MESSAGE_INVINCIBLE,0,0,1500);

        local buffAni = getMonsterPunshAnimation(obj);
		obj.setCurrentAnimation(buffAni);

        obj.getVar("pos").clear_vector();
        obj.getVar("pos").push_vector( obj.getXPos() );
        obj.getVar("pos").push_vector( obj.getYPos() );
        obj.getVar("pos").push_vector( obj.getZPos() );
        obj.getVar("pos").push_vector( mobX );
        obj.getVar("pos").push_vector( mobY );

//        obj.setCurrentPos(mobX,mobY,0);

    }else if (state == 8)
    {
        local subFlag = obj.getVar("state").get_vector(1);
        local buffAni = obj.sq_GetStayAni();
		obj.setCurrentAnimation(buffAni);
        
        obj.getVar("subFlag").clear_vector();
        obj.getVar("subFlag").push_vector( subFlag );
        obj.getVar("subFlag").push_vector( obj.getXPos() );
        if (subFlag == 1)
        {
            obj.sq_PlaySound("R_TEYBERRS_DUNGEON_ENTRANCE");	
//
        }
    }else if (state == 9)
    {

        sq_SendMessage(obj,OBJECT_MESSAGE_INVINCIBLE,100,0);
        sq_PostDelayedMessage(obj,OBJECT_MESSAGE_INVINCIBLE,0,0,1500);

        local damaAni = getCharacterDamageAnimation(obj);
		obj.setCurrentAnimation(damaAni);


        local mobX = obj.getVar("state").get_vector(1);
        local mobY = obj.getVar("state").get_vector(2);
        
        obj.setCurrentDirection(ENUM_DIRECTION_LEFT);
        if (mobX > obj.getXPos() )
            obj.setCurrentDirection(ENUM_DIRECTION_RIGHT);

		obj.sq_SetStaticMoveInfo(0, -100, -100, false);	
		obj.sq_SetMoveDirection(obj.getDirection(), ENUM_DIRECTION_NEUTRAL);

    }else if (state == 10)
    {

        local buffAni = getMonsterPunshAnimation(obj);
		obj.setCurrentAnimation(buffAni);

    }
}

function getCharacterDamageAnimation(obj)
{

    local ani = obj.sq_GetDamageAni(0);

    return ani;

}

function getMonsterPunshAnimation(obj)
{
    local ani = obj.sq_GetSitAni();
    if (sq_getJob(obj) == ENUM_CHARACTERJOB_PRIEST && isAvengerAwakenning(obj) )
        ani = obj.getVar().GetAnimationMap("Sit", "Character/Priest/Animation/AvengerAwakening/Sit.ani"); 
    else if (sq_getJob(obj) == 3)
        ani = getSitAni_Mage(obj);
    return ani;
}