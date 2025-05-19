




function setMonsterActAppendageEffect(passiveobj, damager, bounding_box, is_stuck)
{



    local ID = passiveobj.getPassiveObjectIndex();
    if (ID < 152200 || ID > 152400)
        return ;
    if (ID == 152236)
    {
        local pChr = sq_GetMyMasterCharacter();
        local parentObj = sq_GetCNRDObjectToSQRCharacter(pChr);

        parentObj.getVar("state").clear_vector();
        parentObj.getVar("state").push_vector(7);
        parentObj.getVar("state").push_vector( passiveobj.getXPos() );
        parentObj.getVar("state").push_vector( passiveobj.getYPos() );
        parentObj.sq_AddSetStatePacket(114, STATE_PRIORITY_USER, true);

            
    }else if (ID == 152238)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 12, false, 
            "monster/jummp_dummy/ap_jump.nut", true);				 
            masterAppendage.getVar("jumpLastPos").clear_vector();
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getXPos() );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getYPos() );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getZPos() );

        }

    }else if (ID == 152240)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            if (!CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/jummp_dummy/ap_hold.nut"))
            {
                local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 13, false, 
                "monster/jummp_dummy/ap_hold.nut", true);				 
                masterAppendage.getVar("holdTime").clear_vector();
                masterAppendage.getVar("holdTime").push_vector( 10000 );

                masterAppendage.getVar("jumpLastPos").clear_vector();
                masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getZPos() );

            }
        }   

    }else if (ID == 152241)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            if (passiveobj.getVar("flag").size_vector() <= 0)
            {
                passiveobj.getVar("flag").clear_vector();
                passiveobj.getVar("flag").push_vector(1);

                gal_CreateCommonMonsterWarnCircle(passiveobj,passiveobj.getXPos(),passiveobj.getYPos(),passiveobj.getZPos() );

            }
        }   

    }else if (ID == 152242)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            if (passiveobj.getVar("flag").size_vector() <= 0)
            {
                passiveobj.getVar("flag").clear_vector();
                passiveobj.getVar("flag").push_vector(1);

                gal_CreateCommonMonsterWarnLine(parentObj,passiveobj.getXPos(),passiveobj.getYPos(),passiveobj.getZPos() );

            }
        }   

    }else if (ID == 152243)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 12, false, 
            "monster/jummp_dummy/ap_move.nut", true);				 
            masterAppendage.getVar("jumpLastPos").clear_vector();
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getXPos() );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getYPos() );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getZPos() );

        }

    }else if (ID == 152244)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (!CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/ap_global_monster.nut"))
            {
                local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 13, false, 
                "monster/ap_global_monster.nut", true);				 
                masterAppendage.getVar("Pos").clear_vector();
                masterAppendage.getVar("Pos").push_vector( passiveobj.getXPos() );
                masterAppendage.getVar("Pos").push_vector( passiveobj.getYPos() );
                masterAppendage.getVar("Pos").push_vector( passiveobj.getZPos() );

            }else{
                local apd = parentObj.GetSquirrelAppendage("monster/ap_global_monster.nut");
                apd.getVar("Pos").set_vector(0,passiveobj.getXPos() );
                apd.getVar("Pos").set_vector(1,passiveobj.getYPos() );
                apd.getVar("Pos").set_vector(2,passiveobj.getZPos() );
            }
        }   

    }else if (ID == 152245)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

            local apd = parentObj.GetSquirrelAppendage("monster/ap_global_monster.nut");
            if (!apd)
                return false;
            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 12, false, 
            "monster/jummp_dummy/ap_jump.nut", true);				 
            masterAppendage.getVar("jumpLastPos").clear_vector();
            masterAppendage.getVar("jumpLastPos").push_vector( apd.getVar("Pos").get_vector(0) );
            masterAppendage.getVar("jumpLastPos").push_vector( apd.getVar("Pos").get_vector(1) );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getZPos() );

        }

    }else if (ID == 152246)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            local apd = parentObj.GetSquirrelAppendage("monster/ap_global_monster.nut");
            if (!apd)
                return false;
            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 12, false, 
            "monster/jummp_dummy/ap_move.nut", true);				 
            masterAppendage.getVar("jumpLastPos").clear_vector();
            masterAppendage.getVar("jumpLastPos").push_vector( apd.getVar("Pos").get_vector(0) );
            masterAppendage.getVar("jumpLastPos").push_vector( apd.getVar("Pos").get_vector(1) );
            masterAppendage.getVar("jumpLastPos").push_vector( apd.getVar("Pos").get_vector(2) );

        }

    }else if (ID == 152247)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 12, false, 
            "monster/move_dummy/ap_move_unlimit.nut", true);				 
            masterAppendage.getVar("jumpLastPos").clear_vector();
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getXPos() );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getYPos() );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getZPos() );

        }

    }else if (ID == 152248)
    {

        local pChr = sq_GetMyMasterCharacter();
        local parentObj = sq_GetCNRDObjectToSQRCharacter(pChr);

        if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/monster_draw_custom/ap_monster_draw_custom.nut"))
            CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/monster_draw_custom/ap_monster_draw_custom.nut");

        local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 12, false, 
        "monster/monster_draw_custom/ap_monster_draw_custom.nut", true);				 
        masterAppendage.getVar("parameter").clear_vector();
        masterAppendage.getVar("parameter").push_vector( passiveobj.getXPos());
        masterAppendage.getVar("parameter").push_vector( passiveobj.getYPos());
        masterAppendage.getVar("parameter").push_vector( passiveobj.getZPos());

        local z = passiveobj.getZPos();

        local varVector = -1;
        local len = ::GlobalMonsterStringList.len();
        for (local i = 0;i < len;i++)
        {
            local flashList = ::GlobalMonsterStringList[i];	
            if (z == flashList[0])
            {
                varVector = i;
                break;
            }
        }

        if (varVector != -1)
        {
            local flash = ::GlobalMonsterStringList[varVector];
            masterAppendage.getVar("imageID").clear_vector();
            masterAppendage.getVar("imageID").push_vector( flash[0] );
        }

        local string = "monsterSetCustomUI_ID_" + z;
        local road = "common/monster/big/monster_" + z + "/" + z + ".ani";
        local ani = parentObj.getVar().GetAnimationMap(string,road);
        ani.setCurrentFrameWithChildLayer(0);



    }else if (ID == 152249)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

            local objectManager = parentObj.getObjectManager();
            local xPos = objectManager.getFieldXPos(passiveobj.getXPos(), ENUM_DRAWLAYER_NORMAL);
            local yPos = objectManager.getFieldYPos(passiveobj.getYPos(), 0, ENUM_DRAWLAYER_NORMAL);

            if (!CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/ap_global_monster.nut"))
            {
                local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 13, false, 
                "monster/ap_global_monster.nut", true);				 
                masterAppendage.getVar("Pos").clear_vector();
                masterAppendage.getVar("Pos").push_vector( xPos );
                masterAppendage.getVar("Pos").push_vector( yPos );
                masterAppendage.getVar("Pos").push_vector( passiveobj.getZPos() );

            }else{
                local apd = parentObj.GetSquirrelAppendage("monster/ap_global_monster.nut");
                apd.getVar("Pos").set_vector(0,xPos );
                apd.getVar("Pos").set_vector(1,yPos );
                apd.getVar("Pos").set_vector(2,passiveobj.getZPos() );
            }

        }   

    }else if (ID == 152250)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            if (passiveobj.getVar("flag").size_vector() <= 0)
            {
                passiveobj.getVar("flag").clear_vector();
                passiveobj.getVar("flag").push_vector(1);

                parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
                local apd = parentObj.GetSquirrelAppendage("monster/ap_global_monster.nut");
                if (!apd)
                    return false;

                gal_CreateCommonMonsterWarnCircle(passiveobj,apd.getVar("Pos").get_vector(0),
                apd.getVar("Pos").get_vector(1),passiveobj.getZPos() );

            }
        }   

    }else if (ID == 152251)
    {
    }else if (ID == 152252)
    {
    }else if (ID == 152253)
    {

        local id = passiveobj.getZPos() / 1000;
        local z = passiveobj.getZPos() % 1000;
        local x = passiveobj.getXPos();
        local y = passiveobj.getYPos();
        local parentObj = passiveobj.getParent();


        sq_BinaryStartWrite();
        sq_BinaryWriteDword(id);	// attackBonusRate
        sq_SendCreatePassiveObjectPacketPos(parentObj, 24377, 0,x,y,z);


    }else if (ID == 152254)
    {
        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

        if (!parentObj.isObjectType(OBJECTTYPE_ACTIVE))
            parentObj = parentObj.getParent();

        local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
        "monster/energy/ap_energy.nut", true);				 
        masterAppendage.getVar("Pos").clear_vector();
        masterAppendage.getVar("Pos").push_vector( passiveobj.getXPos() );
        masterAppendage.getVar("Pos").push_vector( passiveobj.getYPos() );
        masterAppendage.getVar("Pos").push_vector( passiveobj.getZPos() );
        masterAppendage.getVar("Pos").push_vector( 0 );


        local varVector = -1;
        local len = ::GlobalMonsterStringCastingEXList.len();
        for (local i = 0;i < len;i++)
        {
            local flashList = ::GlobalMonsterStringCastingEXList[i];	
            if ( passiveobj.getXPos() == flashList[0])
            {
                varVector = i;
                break;
            }
        }

        if (varVector != -1)
        {
            local flash = ::GlobalMonsterStringCastingEXList[varVector];
            masterAppendage.getVar("imageID").clear_vector();
            masterAppendage.getVar("imageID").push_vector( flash[0] );
        }


    }else if (ID == 152255)
    {
        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
        local pChr = sq_GetMyMasterCharacter();
        pChr = sq_GetCNRDObjectToSQRCharacter(pChr);

        local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, pChr, 14, false, 
        "monster/energy/ap_energy.nut", true);				 
        masterAppendage.getVar("Pos").clear_vector();
        masterAppendage.getVar("Pos").push_vector( passiveobj.getXPos() );
        masterAppendage.getVar("Pos").push_vector( passiveobj.getYPos() );
        masterAppendage.getVar("Pos").push_vector( passiveobj.getZPos() );
        masterAppendage.getVar("Pos").push_vector( 1 );
    }else if (ID == 152256)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {

            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            local apd = parentObj.GetSquirrelAppendage("monster/energy/ap_energy.nut");
            apd.getVar("cancelClear").set_vector(0,passiveobj.getZPos() );
        }

    }else if (ID == 152257)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/energy/ap_energy.nut"))
            {
                CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/energy/ap_energy.nut");
            }   

        }

    }else if (ID == 152258)
    {

        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
        local pChr = sq_GetMyMasterCharacter();
        pChr = sq_GetCNRDObjectToSQRCharacter(pChr);



        local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, pChr, 14, false, 
        "monster/energy/ap_energy_ball.nut", true);				 
        masterAppendage.getVar("Pos").clear_vector();
        masterAppendage.getVar("Pos").push_vector( passiveobj.getXPos() );
        masterAppendage.getVar("Pos").push_vector( passiveobj.getYPos() );
        masterAppendage.getVar("Pos").push_vector( passiveobj.getZPos() );
        masterAppendage.getVar("Pos").push_vector( 1 );

        local id = passiveobj.getZPos();

        local endAni = pChr.getVar().GetAnimationMap("MonsterEnergyBallCustomUI_Start" + id,
                    "common/monster/energyball/ball_" + id + "/ball_start.ani");
        endAni.setCurrentFrameWithChildLayer(0);


    }else if (ID == 152259)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {

            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            local apd = parentObj.GetSquirrelAppendage("monster/energy/ap_energy_ball.nut");
            local t = apd.getVar("time").get_vector(0);
            local currentT = apd.getTimer().Get();
            if (apd && currentT - t > 1500)
            {
                local var = apd.getVar("Pos").get_vector(1);

                apd.getVar("time").set_vector(0, currentT );
                apd.getVar("Pos").set_vector(1,var + passiveobj.getZPos() );

            }
        }
    }else if (ID == 152260)
    {

        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

        local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
        "monster/blood/ap_blood_gauge.nut", true);				 
        masterAppendage.getVar("MonsterVar").clear_vector();
        masterAppendage.getVar("MonsterVar").push_vector( passiveobj.getXPos() );
        masterAppendage.getVar("MonsterVar").push_vector( passiveobj.getYPos() );
        masterAppendage.getVar("MonsterVar").push_vector( passiveobj.getZPos() );

        local hpMax = parentObj.getHpMax();
        local hp = hpMax.tofloat() * (passiveobj.getXPos().tofloat()  / 100.0) ;
        masterAppendage.getVar("currentHp").clear_vector();
        masterAppendage.getVar("currentHp").push_vector( hp.tointeger() );
        masterAppendage.getVar("currentHp").push_vector( hp.tointeger() );

//        outPut("dummy/dummy.txt","mob:" + hpMax + "\ngague:" + hp.tointeger() + "\n");

    }else if (ID == 152261)//????? 75
    {

        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
        local pChr = sq_GetMyMasterCharacter();
        pChr = sq_GetCNRDObjectToSQRCharacter(pChr);

        local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, pChr, 
        SKILL_NECOLAS_BLACK_ARACHNIA, false, "monster/nicolas_75/ap_nicolas_75.nut", true);

    }else if (ID == 152262)//?????
    {

        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
        parentObj.setMapFollowParent( sq_GetMyMasterCharacter() );
        parentObj.setMapFollowType( 1 );

    }else if (ID == 152263)//????
    {
        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
        local pChr = sq_GetMyMasterCharacter();
        pChr = sq_GetCNRDObjectToSQRCharacter(pChr);

        local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, pChr, 
        12, false, "monster/attack/ap_attack.nut", true);
        masterAppendage.getVar("parameter").clear_vector();
        masterAppendage.getVar("parameter").push_vector( passiveobj.getXPos() );
        masterAppendage.getVar("parameter").push_vector( passiveobj.getYPos() );
        masterAppendage.getVar("parameter").push_vector( passiveobj.getZPos() );
    }else if (ID == 152264)
    {
        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
        local pChr = sq_GetMyMasterCharacter();
        pChr = sq_GetCNRDObjectToSQRCharacter(pChr);

        local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, pChr, 
        12, false, "monster/auxo/ap_auxo.nut", true);
    }else if (ID == 152265)
    {
        local parentObj = passiveobj.getParent();

        sq_BinaryStartWrite();
        sq_BinaryWriteDword(100);	// attackBonusRate
        sq_SendCreatePassiveObjectPacketPos(parentObj, 24377, 0,passiveobj.getXPos(),
        passiveobj.getYPos(),passiveobj.getZPos());

    }else if (ID == 152266)
    {
        local parentObj = passiveobj.getParent();
        sq_ChangeDrawLayer(parentObj, passiveobj.getXPos() );
    }else if (ID == 152267)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (true)
            {
                local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 12, false, 
                "monster/jummp_dummy/ap_move_only_xpos.nut", true);				 
                masterAppendage.getVar("jumpLastPos").clear_vector();
                masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getXPos() );
                masterAppendage.getVar("jumpLastPos").push_vector( parentObj.getYPos() );
                masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getZPos() );
            }
        }

    }else if (ID == 152268)
    {
        local pChr = sq_GetMyMasterCharacter();
        local parentObj = sq_GetCNRDObjectToSQRCharacter(pChr);

        if (parentObj)
        {
			if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/energy/ap_enegry_character.nut"))
				{
					CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/energy/ap_enegry_character.nut");
				}
				local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
			"monster/energy/ap_enegry_character.nut", true);				 
			masterAppendage.getVar("Pos").clear_vector();
			masterAppendage.getVar("Pos").push_vector( passiveobj.getXPos() );
			masterAppendage.getVar("Pos").push_vector( passiveobj.getYPos() );
			masterAppendage.getVar("Pos").push_vector( passiveobj.getZPos() );
			masterAppendage.getVar("Pos").push_vector( 0 );
        }

    }else if (ID == 152332)
    {
        local pChr = sq_GetMyMasterCharacter();
        local parentObj = sq_GetCNRDObjectToSQRCharacter(pChr);

        if (parentObj)
        {
			if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/energy/ap_enegry_character1.nut"))
				{
					CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/energy/ap_enegry_character1.nut");
				}
				local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
			"monster/energy/ap_enegry_character1.nut", true);				 
			masterAppendage.getVar("Pos").clear_vector();
			masterAppendage.getVar("Pos").push_vector( passiveobj.getXPos() );
			masterAppendage.getVar("Pos").push_vector( passiveobj.getYPos() );
			masterAppendage.getVar("Pos").push_vector( passiveobj.getZPos() );
			masterAppendage.getVar("Pos").push_vector( 0 );
        }

    }else if (ID == 152333)
    {
        local pChr = sq_GetMyMasterCharacter();
        local parentObj = sq_GetCNRDObjectToSQRCharacter(pChr);

        if (parentObj)
        {
			if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/energy/ap_enegry_character2.nut"))
				{
					CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/energy/ap_enegry_character2.nut");
				}
				local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
			"monster/energy/ap_enegry_character2.nut", true);				 
			masterAppendage.getVar("Pos").clear_vector();
			masterAppendage.getVar("Pos").push_vector( passiveobj.getXPos() );
			masterAppendage.getVar("Pos").push_vector( passiveobj.getYPos() );
			masterAppendage.getVar("Pos").push_vector( passiveobj.getZPos() );
			masterAppendage.getVar("Pos").push_vector( 0 );
        }

    }else if (ID == 152334)
    {
        local pChr = sq_GetMyMasterCharacter();
        local parentObj = sq_GetCNRDObjectToSQRCharacter(pChr);

        if (parentObj)
        {
			if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/energy/ap_enegry_character3.nut"))
				{
					CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/energy/ap_enegry_character3.nut");
				}
				local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
			"monster/energy/ap_enegry_character3.nut", true);				 
			masterAppendage.getVar("Pos").clear_vector();
			masterAppendage.getVar("Pos").push_vector( passiveobj.getXPos() );
			masterAppendage.getVar("Pos").push_vector( passiveobj.getYPos() );
			masterAppendage.getVar("Pos").push_vector( passiveobj.getZPos() );
			masterAppendage.getVar("Pos").push_vector( 0 );
        }

    }else if (ID == 152335)
    {
        local pChr = sq_GetMyMasterCharacter();
        local parentObj = sq_GetCNRDObjectToSQRCharacter(pChr);

        if (parentObj)
        {
			if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/energy/ap_enegry_character4.nut"))
				{
					CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/energy/ap_enegry_character4.nut");
				}
				local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
			"monster/energy/ap_enegry_character4.nut", true);				 
			masterAppendage.getVar("Pos").clear_vector();
			masterAppendage.getVar("Pos").push_vector( passiveobj.getXPos() );
			masterAppendage.getVar("Pos").push_vector( passiveobj.getYPos() );
			masterAppendage.getVar("Pos").push_vector( passiveobj.getZPos() );
			masterAppendage.getVar("Pos").push_vector( 0 );
        }

    }else if (ID == 152269)
    {
        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
        local chr = findOneTarget(passiveobj);
        chr = sq_GetCNRDObjectToActiveObject(chr);
        if (chr && parentObj)
        {

            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(chr, parentObj, 14, false, 
            "monster/siroco/ap_face_to_face_move.nut", true);				 
            if(masterAppendage) 
            {
                sq_HoldAndDelayDie(chr, parentObj, true, true, true, -200, 200, ENUM_DIRECTION_NEUTRAL , masterAppendage);
                chr.setCurrentDirection(sq_GetOppositeDirection(parentObj.getDirection()));
            }


        }
//        outPut("dummy/dummy.txt","findSuccess\n");

    }else if (ID == 152270)
    {
        local chr = sq_GetMyMasterCharacter();
        chr = sq_GetCNRDObjectToSQRCharacter(chr);
        if (!CNSquirrelAppendage.sq_IsAppendAppendage(chr, "monster/siroco/ap_is_damage_box.nut"))
        {
            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(chr, chr, 14, false, 
            "monster/siroco/ap_is_damage_box.nut", true);				 
            masterAppendage.sq_SetValidTime(1500);
			masterAppendage.getVar("pos").clear_vector();
            masterAppendage.getVar("pos").push_vector(passiveobj.getXPos() );
            masterAppendage.getVar("pos").push_vector(passiveobj.getYPos() );
        }else{
            local apd = chr.GetSquirrelAppendage("monster/siroco/ap_is_damage_box.nut");
			apd.getVar("pos").clear_vector();
            apd.getVar("pos").push_vector(passiveobj.getXPos() );
            apd.getVar("pos").push_vector(passiveobj.getYPos() );

        }

//        sq_SendMessage(chr,OBJECT_MESSAGE_INVINCIBLE,1,0);
//        sq_PostDelayedMessage(chr,OBJECT_MESSAGE_INVINCIBLE,0,0,2600 );

    }else if (ID == 152271)
    {


//		outPut("dummy/dummy.txt","findSuccessx:" + passiveobj.getXPos() + "\n");
//		outPut("dummy/dummy.txt","findSuccessy:" + passiveobj.getYPos() + "\n");
//		outPut("dummy/dummy.txt","findSuccessz:" + passiveobj.getZPos() + "\n\n");
        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
        if (parentObj)
        {

            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, passiveobj, 14, false, 
            "monster/line/ap_line.nut", true);				 
        }


        
    }else if (ID == 152272)
    {


        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
        if (parentObj)
        {

            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
            "monster/set_flag/ap_set_flag.nut", true);				 
            masterAppendage.getVar("setFlag").clear_vector();
            masterAppendage.getVar("setFlag").push_vector( passiveobj.getXPos() );

        }

    }else if (ID == 152273)
    {


        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
        if (parentObj)
        {
            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
            "monster/baibian/ap_while.nut", true);				 


        }

    }else if (ID == 152274)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/jummp_dummy/ap_move.nut"))
            {
                
                local apd = parentObj.GetSquirrelAppendage("monster/jummp_dummy/ap_move.nut");
                local curX = apd.getVar("curVar").get_vector(0);
                local curY = apd.getVar("curVar").get_vector(1);

                CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/jummp_dummy/ap_move.nut");

                parentObj.setCurrentPos(curX,curY,parentObj.getZPos() );
            }
        }

    }else if (ID == 152239)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/jummp_dummy/ap_move_ex.nut"))
            {
                
                local apd = parentObj.GetSquirrelAppendage("monster/jummp_dummy/ap_move_ex.nut");
                local curX = apd.getVar("curVar").get_vector(0);
                local curY = apd.getVar("curVar").get_vector(1);

                CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/jummp_dummy/ap_move_ex.nut");

                parentObj.setCurrentPos(curX,curY,parentObj.getZPos() );
            }
        }

    }else if (ID == 152275)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

            if (!CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/ap_set_unhold_flag.nut"))
            {
                local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
                "monster/ap_set_unhold_flag.nut", true);				 
            }

            if (!CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/ap_set_unhold.nut"))
            {
                local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
                "monster/ap_set_unhold.nut", true);				 

                masterAppendage.getVar("isAttackCancel").clear_vector();
                masterAppendage.getVar("isAttackCancel").push_vector(0);



                local change_appendage = masterAppendage.sq_getChangeStatus("setUnHoldAblitily");
                if(!change_appendage)
                {
                    change_appendage = masterAppendage.sq_AddChangeStatusAppendageID(parentObj, parentObj, 0, 
                    CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, 
                    false, 1, APID_COMMON);
                }
                if (change_appendage){
                    change_appendage.clearParameter();
                    change_appendage.addParameter(CHANGE_STATUS_TYPE_ACTIVESTATUS_TOLERANCE_ALL , false, 2000.0);
                }
            }
        }
    }else if (ID == 152276)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/line/ap_line.nut"))
            {
                CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/line/ap_line.nut");
            }
        }

    }else if (ID == 152277)
    {
        local parentObj = passiveobj.getParent();
        local startX = passiveobj.getXPos();
        local startY = passiveobj.getYPos();
        local spinDistance = passiveobj.getZPos() % 1000;
        local spinTime = passiveobj.getZPos() / 1000;
        passiveobj = sq_GetCNRDObjectToActiveObject(passiveobj);
        local id = sq_GetObjectId(passiveobj);
        
        sq_BinaryStartWrite();
        sq_BinaryWriteDword(101);	// attackBonusRate
        sq_BinaryWriteDword(id);	// attackBonusRate
        sq_BinaryWriteDword(spinDistance);
        sq_BinaryWriteDword(spinTime);
        sq_SendCreatePassiveObjectPacketPos(passiveobj, 24377, 0,startX,
        startY,0);

//        outPut("dummy/dummy.txt","create dummy obj success\n");

    }else if (ID == 152278)
    {

        local pChr = sq_GetMyMasterCharacter();
        local parentObj = sq_GetCNRDObjectToSQRCharacter(pChr);

        if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/monster_draw_custom/ap_monster_draw_custom.nut"))
        {
            CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/monster_draw_custom/ap_monster_draw_custom.nut");
        }

        local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 12, false, 
        "monster/monster_draw_custom/ap_monster_draw_custom.nut", true);				 
        masterAppendage.getVar("parameter").clear_vector();
        masterAppendage.getVar("parameter").push_vector( 0);
        masterAppendage.getVar("parameter").push_vector( -150);
        masterAppendage.getVar("parameter").push_vector( 20);

        local z = 20;
        local string = "monsterSetCustomUI_ID_" + z;
        local road = "common/monster/big/monster_" + z + "/" + z + ".ani";
        local ani = parentObj.getVar().GetAnimationMap(string,road);
        ani.setCurrentFrameWithChildLayer(0);

        local chr = sq_GetMyMasterCharacter();
        chr = sq_GetCNRDObjectToSQRCharacter(chr);
        chr.getVar("state").clear_vector();
        chr.getVar("state").push_vector(8);
        chr.getVar("state").push_vector(1);
        chr.sq_AddSetStatePacket(STATE_BURSTER, STATE_PRIORITY_IGNORE_FORCE, true);
    }else if (ID == 152279)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/ap_set_unhold.nut");
        }
    }else if (ID == 152280)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (!CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/rage/ap_rage.nut"))
            {
                local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
                "monster/rage/ap_rage.nut", true);				 
                masterAppendage.getVar("pos").clear_vector();
                masterAppendage.getVar("pos").push_vector(passiveobj.getXPos() );
                masterAppendage.getVar("pos").push_vector(passiveobj.getYPos() );
                masterAppendage.getVar("pos").push_vector(passiveobj.getZPos() );
            }
        }
    }else if (ID == 152281)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (!CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/set_muliting_hp/ap_setmuliting_hp.nut"))
            {
                local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
                "monster/set_muliting_hp/ap_setmuliting_hp.nut", true);				 
                masterAppendage.getVar("HpVar").clear_vector();
                masterAppendage.getVar("HpVar").push_vector( 0 );
                masterAppendage.getVar("HpVar").push_vector( passiveobj.getXPos() );
                masterAppendage.getVar("HpVar").push_vector( passiveobj.getXPos() );
            }

        }
    }else if (ID == 152282)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (passiveobj.getZPos() == 0)
            {
                local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
                "map/tayberrs/ap_tayberrs.nut", true);				 
            }
        }
    }else if (ID == 152283)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

            if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/jummp_dummy/ap_move_ex.nut"))
            {
                CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/jummp_dummy/ap_move_ex.nut");
            }

            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
            "monster/jummp_dummy/ap_move_ex.nut", true);				 
            masterAppendage.getVar("jumpLastPos").clear_vector();
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getXPos() );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getYPos() );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getZPos() );



        }
    }else if (ID == 152284)
    {

        local pChr = sq_GetMyMasterCharacter();
        local parentObj = sq_GetCNRDObjectToSQRCharacter(pChr);
        if (parentObj)
        {
            parentObj.setCurrentPos(parentObj.getXPos(),parentObj.getYPos(),1000);
			parentObj.sq_IntVectClear();
			parentObj.sq_IntVectPush(1);
			parentObj.sq_IntVectPush(0);
			parentObj.sq_IntVectPush(0);
			parentObj.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
        }
    }else if (ID == 152285)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

            if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/jummp_dummy/ap_jump_exp.nut"))
            {
                CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/jummp_dummy/ap_jump_exp.nut");
            }

            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
            "monster/jummp_dummy/ap_jump_exp.nut", true);				 
            masterAppendage.getVar("jumpLastPos").clear_vector();
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getXPos() );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getYPos() );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getZPos() );



        }
    }else if (ID == 152286)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
            "monster/ap_close_new_ui_effect.nut", true);				 

        }
    }else if (ID == 152287)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            sq_SetCustomRotate(parentObj,sq_ToRadian(passiveobj.getZPos().tofloat() ));	

        }
    }else if (ID == 152288)
    {
        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

        local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
        "monster/energy/ap_enegry_monster.nut", true);				 
        masterAppendage.getVar("Pos").clear_vector();
        masterAppendage.getVar("Pos").push_vector( passiveobj.getXPos() );
        masterAppendage.getVar("Pos").push_vector( passiveobj.getYPos() );
        masterAppendage.getVar("Pos").push_vector( passiveobj.getZPos() );
        masterAppendage.getVar("Pos").push_vector( 0 );

    }else if (ID == 152289)
    {

        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

        if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/energy/ap_enegry_monster.nut"))
        {
            CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/energy/ap_enegry_monster.nut");
        }
    }else if (ID == 152290)
    {

        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

        local varVector = -1;
        local id = passiveobj.getZPos();

        local len = ::GlobalMonsterFlashScreenList.len();
        for (local i = 0;i < len;i++)
        {
            local flashList = ::GlobalMonsterFlashScreenList[i];	
            if (id == flashList[0])
            {

                varVector = i;
                break;

            }
        }

        if (varVector == -1)
            return ;

        local flash = ::GlobalMonsterFlashScreenList[varVector];


        if (!CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/flash_screen/ap_flashscreen.nut"))
        {
            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
            "monster/flash_screen/ap_flashscreen.nut", true);				 

            local saveId = flash[9];

            local fsObj = sq_flashScreen(parentObj,flash[1],flash[2],flash[3],flash[4], sq_RGB(flash[5],flash[6],flash[7]),
            GRAPHICEFFECT_NONE, flash[8]);

            if (saveId != -1)
            {
                if (masterAppendage.getVar("GlobalflashScreenObj_" + saveId).get_obj_vector_size() <= 0)
                    masterAppendage.getVar("GlobalflashScreenObj_" + saveId).clear_obj_vector();
                masterAppendage.getVar("GlobalflashScreenObj_" + saveId).push_obj_vector(fsObj);

                masterAppendage.getVar("DeleteVar").clear_vector();
                masterAppendage.getVar("DeleteVar").push_vector(saveId);
            }


        }else{

            local masterAppendage = parentObj.GetSquirrelAppendage("monster/flash_screen/ap_flashscreen.nut");

            local saveId = flash[9];
            local fsObj = sq_flashScreen(parentObj,flash[1],flash[2],flash[3],flash[4], sq_RGB(flash[5],flash[6],flash[7]),
            GRAPHICEFFECT_NONE, flash[8]);

            if (saveId != -1)
            {
                if (masterAppendage.getVar("GlobalflashScreenObj_" + saveId).get_obj_vector_size() <= 0)
                    masterAppendage.getVar("GlobalflashScreenObj_" + saveId).clear_obj_vector();
                masterAppendage.getVar("GlobalflashScreenObj_" + saveId).push_obj_vector(fsObj);

                masterAppendage.getVar("DeleteVar").push_vector(saveId);
            }




        }



    }else if (ID == 152291)
    {

        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

        if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/flash_screen/ap_flashscreen.nut"))
        {

            local masterAppendage = parentObj.GetSquirrelAppendage("monster/flash_screen/ap_flashscreen.nut");
            local deleteID = passiveobj.getZPos();
//            outPut("dummy/dummy.txt","size = " + masterAppendage.getVar("GlobalflashScreenObj_" + 42).get_obj_vector_size() + "\n")
            if (masterAppendage.getVar("GlobalflashScreenObj_" + deleteID).get_obj_vector_size() > 0)
            {


                for (local i = 0;i< masterAppendage.getVar("GlobalflashScreenObj_" + deleteID).get_obj_vector_size();i++)
                {
                  local fsObj = masterAppendage.getVar("GlobalflashScreenObj_" + deleteID).get_obj_vector(i);
                  if (fsObj)
                  {
                
                      local pflashScreen = sq_GetCNRDObjectToFlashScreen(fsObj);
                      if (pflashScreen)
                      {
                          pflashScreen.fadeOut();
                      }
                  }
                }
            }

        }

    }else if (ID == 152292)
    {

        local parentObj = passiveobj.getParent();
//        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);


        local varVector = -1;
        local id = passiveobj.getZPos() / 1000;

        local len = ::GlobalMonsterPlayAnimationList.len();
        for (local i = 0;i < len;i++)
        {
            local flashList = ::GlobalMonsterPlayAnimationList[i];	
            if (id == flashList[0])
            {

                varVector = i;
                break;

            }
        }

        if (varVector == -1)
            return ;

        local ani = ::GlobalMonsterPlayAnimationList[varVector];
        local aniRoad = ani[1];
        local layer = ani[2];
        local type = ani[3];




        if (type == ENUM_NORMAL_PLAY_ANIMATION_EFFECT)
        {

            local ani = sq_CreateAnimation("",aniRoad);
            local pooledObj = sq_CreatePooledObject(ani,true);
            pooledObj = sq_SetEnumDrawLayer(pooledObj, layer);
            pooledObj.setCurrentPos(passiveobj.getXPos()  ,passiveobj.getYPos(), passiveobj.getZPos() % 1000 );
            pooledObj.setCurrentDirection(passiveobj.getDirection());
            sq_AddObject(passiveobj,pooledObj,2,false);	

        }
        else if (type == ENUM_NORMAL_PLAY_ANIMATION_EFFECT_EX)
        {

            local optionEXLst = ani[7];

            local rorate1 = optionEXLst[0];
            local rorate2 = optionEXLst[1];

            local minSize = optionEXLst[2];
            local maxSize = optionEXLst[3];

            local angle = 0;
            local size = 0;

            if (rorate1 == rorate2)
                angle = rorate1;
            else
                angle = sq_getRandom( rorate1 , rorate2 ).tointeger();

            if (minSize == maxSize)
                size = size;
            else
                size = sq_getRandom( minSize , maxSize ).tointeger();

            local ani = sq_CreateAnimation("",aniRoad);
            local sizeRate = size.tofloat()/100.0;
            ani.setImageRateFromOriginal(sizeRate, sizeRate);
            ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate);

            local pooledObj = sq_CreatePooledObject(ani,true);
            pooledObj = sq_SetEnumDrawLayer(pooledObj, layer);
            pooledObj.setCurrentPos(passiveobj.getXPos()  ,passiveobj.getYPos(), passiveobj.getZPos() % 1000 );
            pooledObj.setCurrentDirection(passiveobj.getDirection());
            sq_AddObject(passiveobj,pooledObj,2,false);	
            sq_SetCustomRotate(pooledObj,sq_ToRadian(angle.tofloat() ));

        }
        else if (type == ENUM_LINE_TO_TARGET_EFFECT)
        {


            local len = ani[4];
            local lineX = passiveobj.getXPos();
            local lineY = passiveobj.getYPos();
            local lineZ =  passiveobj.getZPos() % 1000;


            local angle = getRorateAngleByCurrentPos(-1,parentObj.getXPos(),
                                                        parentObj.getYPos(),
                                                        parentObj.getZPos(),
                                                        lineX,
                                                        lineY,
                                                        lineZ);

            local ani2 = sq_CreateAnimation("",aniRoad);
			
			sq_SetfRotateAngle(ani2, angle);
            local pooledObj = sq_CreatePooledObject(ani2,true);

            pooledObj = sq_SetEnumDrawLayer(pooledObj, layer);
            pooledObj.setCurrentPos( parentObj.getXPos() , parentObj.getYPos() ,parentObj.getZPos() );

            if (lineX <= parentObj.getXPos() )
                pooledObj.setCurrentDirection(ENUM_DIRECTION_LEFT );
            else
                pooledObj.setCurrentDirection(ENUM_DIRECTION_RIGHT );

            sq_AddObject(parentObj,pooledObj,2,false);	

            if (len != -1)
            {
                local pAni = sq_GetCurrentAnimation(pooledObj);

                local distance = sq_GetDistance(parentObj.getXPos(), 
                                                parentObj.getYPos() - parentObj.getZPos(),
                                                lineX,
                                                lineY - lineZ, true);
                
                local lenY = ani[5];

                pAni.setImageRate(distance.tofloat() / len.tofloat(), distance.tofloat() / len.tofloat());
                pAni.setAutoLayerWorkAnimationAddSizeRate(distance.tofloat() / len.tofloat());
            }

        }
        else if (type == ENUM_LINE_TO_TARGET_EFFECT_EX)
        {


            local len = ani[4];
            local lineX = passiveobj.getXPos();
            local lineY = passiveobj.getYPos();
            local lineZ =  passiveobj.getZPos() % 1000;


            local angle = getRorateAngleByCurrentPos(-1,parentObj.getXPos(),
                                                        parentObj.getYPos(),
                                                        parentObj.getZPos() + parentObj.getObjectHeight()/2,
                                                        lineX,
                                                        lineY,
                                                        lineZ);

            local ani2 = sq_CreateAnimation("",aniRoad);
			
			sq_SetfRotateAngle(ani2, angle);
            local pooledObj = sq_CreatePooledObject(ani2,true);

            pooledObj = sq_SetEnumDrawLayer(pooledObj, layer);
            pooledObj.setCurrentPos( parentObj.getXPos() , parentObj.getYPos() ,
            parentObj.getZPos() + parentObj.getObjectHeight()/2 );

            if (lineX <= parentObj.getXPos() )
                pooledObj.setCurrentDirection(ENUM_DIRECTION_LEFT );
            else
                pooledObj.setCurrentDirection(ENUM_DIRECTION_RIGHT );

            sq_AddObject(parentObj,pooledObj,2,false);	

            if (len != -1)
            {
                local pAni = sq_GetCurrentAnimation(pooledObj);

                local distance = sq_GetDistance(parentObj.getXPos(), 
                                                parentObj.getYPos() - (parentObj.getZPos() + parentObj.getObjectHeight()/2),
                                                lineX,
                                                lineY - lineZ, true);
                
                local lenY = ani[5];

                pAni.setImageRate(distance.tofloat() / len.tofloat(), distance.tofloat() / len.tofloat());
                pAni.setAutoLayerWorkAnimationAddSizeRate(distance.tofloat() / len.tofloat());
            }

        }

    }else if (ID == 152293)
    {
        local pChr = sq_GetMyMasterCharacter();
        local parentObj = sq_GetCNRDObjectToSQRCharacter(pChr);

        sq_SetPause(parentObj, PAUSETYPE_WORLD, passiveobj.getZPos() );

    }else if (ID == 152294)
    {

        local pChr = sq_GetMyMasterCharacter();
        local parentObj = sq_GetCNRDObjectToSQRCharacter(pChr);

        parentObj.getVar("state").clear_vector();
        parentObj.getVar("state").push_vector(9);
        parentObj.getVar("state").push_vector( passiveobj.getXPos() );
        parentObj.getVar("state").push_vector( passiveobj.getYPos() );
        parentObj.sq_AddSetStatePacket(114, STATE_PRIORITY_USER, true);

            


    }else if (ID == 152295)
    {

        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
//        outPut("dummy/dummy.txt","start function\n");
        gal_MonsterCompareSwitchHp(parentObj,passiveobj.getXPos(),passiveobj.getYPos(),passiveobj.getZPos() );

    }else if (ID == 152296)
    {


        local parentObj = passiveobj.getParent();
        local id = sq_GetObjectId(parentObj);

        sq_BinaryStartWrite();
        sq_BinaryWriteDword(102);	// attackBonusRate
        sq_BinaryWriteDword(id);	// attackBonusRate
        sq_BinaryWriteDword(passiveobj.getXPos() );
        sq_BinaryWriteDword(passiveobj.getYPos() );
        sq_BinaryWriteDword(passiveobj.getZPos() );
        sq_SendCreatePassiveObjectPacketPos(parentObj, 24377, 0,0,0,0);



    }else if (ID == 152299)
    {



        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

            if (!CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/ap_set_unhold_flag.nut"))
            {
                local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
                "monster/ap_set_unhold_flag.nut", true);				 
            }


            if (true)
            {
                local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
                "monster/ap_set_unhold.nut", true);				 

                masterAppendage.getVar("isAttackCancel").clear_vector();
                masterAppendage.getVar("isAttackCancel").push_vector(1);

                local change_appendage = masterAppendage.sq_getChangeStatus("setUnHoldAblitily");
                if(!change_appendage)
                {
                    change_appendage = masterAppendage.sq_AddChangeStatusAppendageID(parentObj, parentObj, 0, 
                    CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, 
                    false, 1, APID_COMMON);
                }
                if (change_appendage){
                    change_appendage.clearParameter();
                    change_appendage.addParameter(CHANGE_STATUS_TYPE_ACTIVESTATUS_TOLERANCE_ALL , false, 2000.0);
                }
            }
        }



    }else if (ID == 152300)
    {

        local parentObj = passiveobj.getParent();
        

        local parX = parentObj.getXPos();
        local parY = parentObj.getYPos();
        local parZ = parentObj.getZPos();

        local lastX = passiveobj.getXPos();
        local lastY = passiveobj.getYPos();
        local lastZ = passiveobj.getZPos();

        local angle = getRorateAngleByCurrentPos(parentObj,parX,parY,parZ,lastX,lastY,lastZ);

        if (( parentObj.getDirection() == ENUM_DIRECTION_LEFT &&  parX < lastX ) || 
        (parentObj.getDirection() == ENUM_DIRECTION_RIGHT && parX > lastX ))
        {
            angle = -angle - sq_ToRadian(180.0);
        }

        sq_SetCustomRotate(parentObj,angle);






    }else if (ID == 152301)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 12, false, 
            "monster/ap_send_damage_by_monster.nut", true);				 
            masterAppendage.getVar("damaID").clear_vector();
            masterAppendage.getVar("damaID").push_vector( passiveobj.getZPos() );

        }   

    }else if (ID == 152302)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 12, false, 
            "monster/ap_set_false_state.nut", true);				 
            masterAppendage.getVar("damaID").clear_vector();
            masterAppendage.getVar("damaID").push_vector( passiveobj.getXPos() );
            masterAppendage.getVar("damaID").push_vector( passiveobj.getYPos() );

        }   
    }else if (ID == 152303)
    {
        //play sound
        local parentObj = passiveobj.getParent();
        local varVector = -1;
        local id = passiveobj.getXPos();
        

        local len = ::GlobalMonsterPlaySoundList.len();
        for (local i = 0;i < len;i++)
        {
            local flashList = ::GlobalMonsterPlaySoundList[i];	
            if (id == flashList[0])
            {

                varVector = i;
                break;

            }
        }

        if (varVector == -1)
            return ;
        local soundLst = GlobalMonsterPlaySoundList[varVector];
		parentObj.sq_PlaySound(soundLst[1]);	


    }else if (ID == 152304)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            local pChr = sq_GetMyMasterCharacter();
            local posX = passiveobj.getXPos();
            local posY = passiveobj.getYPos();


            local objectManager = pChr.getObjectManager();
            local xPos = objectManager.getFieldXPos(posX, ENUM_DRAWLAYER_NORMAL);
            local yPos = objectManager.getFieldYPos(posY, 0, ENUM_DRAWLAYER_NORMAL);

            parentObj.setCurrentPos(xPos,yPos,parentObj.getZPos() );
        }   
    }else if (ID == 152305)
    {

        local pChr = sq_GetMyMasterCharacter();
        local chrObj = sq_GetCNRDObjectToSQRCharacter(pChr);
        local posX = passiveobj.getXPos();
        local posY = passiveobj.getYPos();
        local posZ = passiveobj.getZPos();

        local chrX = chrObj.getXPos();
        local chrY = chrObj.getYPos();

        local offsetX = posX - chrX;
        local offsetY = posY - chrY;

        if (offsetX * offsetX + offsetY * offsetY <= posZ * posZ)
        {


            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(chrObj, chrObj, 12, false, 
            "monster/ap_near_distance.nut", true);				 
            masterAppendage.sq_SetValidTime( 500 );

        }


    }else if (ID == 152306)
    {
        local parentObj = passiveobj.getParent();

        if (parentObj.isObjectType(OBJECTTYPE_ACTIVE))
            return ;

        local id = sq_GetObjectId(parentObj);

        local objX = parentObj.getXPos();
        local objY = parentObj.getYPos();
        
        local tarX = passiveobj.getXPos();
        local tarY = passiveobj.getYPos();

        local offsetX = tarX - objX;
        local offsetY = tarY - objY;
        sq_BinaryStartWrite();
        sq_BinaryWriteDword(103);	// attackBonusRate
        sq_BinaryWriteDword(id);	// attackBonusRate
        sq_BinaryWriteDword(objX + offsetX * 2 );
        sq_BinaryWriteDword(objY + offsetY * 2 );
        sq_BinaryWriteDword(parentObj.getZPos() );
        sq_BinaryWriteDword(passiveobj.getZPos() );
        sq_SendCreatePassiveObjectPacketPos(parentObj, 24377, 0,0,0,0);
        gal_CreateCommonMonsterWarnLine(parentObj,objX + offsetX * 2,objY + offsetY * 2,1000 );
    }else if (ID == 152307)
    {
        local parentObj = passiveobj.getParent();
        local id = sq_GetObjectId(parentObj);

        sq_BinaryStartWrite();
        sq_BinaryWriteDword(108);	// attackBonusRate
        sq_BinaryWriteDword(id);	// attackBonusRate
        sq_BinaryWriteDword(passiveobj.getXPos() );
        sq_BinaryWriteDword(passiveobj.getYPos() );
        sq_BinaryWriteDword(passiveobj.getZPos() );
        sq_SendCreatePassiveObjectPacketPos(parentObj, 24377, 0,0,0,0);

    }else if (ID == 152308)
    {

        local parentObj = passiveobj.getParent();

        if (parentObj.isObjectType(OBJECTTYPE_ACTIVE))
            return 

        local id = sq_GetObjectId(parentObj);

        local moveSelect = passiveobj.getXPos();
        local moveDistance = passiveobj.getYPos();
        local moveTime = passiveobj.getZPos() / 10000;
        local saveT = passiveobj.getZPos() % 10000;

        sq_BinaryStartWrite();
        sq_BinaryWriteDword(104);	// attackBonusRate
        sq_BinaryWriteDword(id);	// attackBonusRate
        sq_BinaryWriteDword(moveSelect);
        sq_BinaryWriteDword(moveDistance);
        sq_BinaryWriteDword(moveTime);
        sq_BinaryWriteDword(saveT);
        sq_SendCreatePassiveObjectPacketPos(parentObj, 24377, 0,0,0,0);
    }else if (ID == 152309)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 12, false, 
            "monster/ap_set_superarmor.nut", true);				 

        }   
    }else if (ID == 152310)
    {


        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
//            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

            local varVector = -1;
            local id = passiveobj.getZPos();
            
            local len = ::GlobalMonsterCreateCirclePassiveobjectList.len();
            for (local i = 0;i < len;i++)
            {
                local flashList = ::GlobalMonsterCreateCirclePassiveobjectList[i];	
                if (id == flashList[0])
                {
                    varVector = i;
                    break;
                }
            }

            if (varVector == -1)
                return ;
            local pasLst = GlobalMonsterCreateCirclePassiveobjectList[varVector];

            local pasID = pasLst[1];
            local distance = pasLst[2];
            local count = pasLst[3];
            local minX = pasLst[4];
            local maxX = pasLst[5];
            local minY = pasLst[6];
            local maxY = pasLst[7];

            local angle_sub = 360 / count;

            local sX = passiveobj.getXPos();
            local sY = passiveobj.getYPos();

            for (local i = 0;i<= count ;i++)
            {
                local curAngle = angle_sub * i;
                local posX = (distance.tofloat() * sq_CosTable( curAngle.tointeger() ) ).tointeger();
                local posY = (distance.tofloat() * sq_SinTable(curAngle.tointeger() ) * 0.29).tointeger();
                
                local randomX = 0;
                local randomY = 0;

                if (minX == maxX)
                    randomX = minX;
                else
                    randomX = sq_getRandom(minX,maxX).tointeger();

                if (minY == maxY)
                    randomY = minY;
                else
                    randomY = sq_getRandom(minY,maxY).tointeger();


                sq_SendCreatePassiveObjectPacketPos(parentObj,pasID, 0,sX + posX + randomX ,sY + posY + randomY, 0 );

            }


//            outPut("dummy/dummy.txt","rorateCreatePassiveobjectID =" + pasID + "\n");


        }   
    }else if (ID == 152311)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 12, false, 
            "monster/jummp_dummy/ap_move_with_pos.nut", true);				 

            masterAppendage.getVar("jumpLastPos").clear_vector();
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getXPos() );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getYPos() );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getZPos() % 1000 );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getZPos() / 1000 );
        }   
    }else if (ID == 152312)
    {

        local parentObj = passiveobj.getParent();

        if (parentObj.isObjectType(OBJECTTYPE_ACTIVE))
            return ;

        local id = sq_GetObjectId(parentObj);

        local objX = parentObj.getXPos();
        local objY = parentObj.getYPos();
        local objZ = parentObj.getZPos();
        
        local tarX = passiveobj.getXPos();
        local tarY = passiveobj.getYPos();

        local saveZ = passiveobj.getZPos();
        local tarZ = 0;
        local moveT = 0;

        if (saveZ < 0)
        {
            local pp = -saveZ;
            tarZ = -(pp % 1000);
            moveT = pp / 1000;
        }else{

            tarZ = saveZ % 1000;
            moveT = saveZ / 1000;
        }

//            tarZ = -sq_Abs(tarZ);
//            moveT = sq_Abs(moveT);


        sq_BinaryStartWrite();
        sq_BinaryWriteDword(105);	// attackBonusRate
        sq_BinaryWriteDword(id);	// attackBonusRate
        sq_BinaryWriteDword(objX);
        sq_BinaryWriteDword(objY);
        sq_BinaryWriteDword(objZ);

        sq_BinaryWriteDword(tarX);
        sq_BinaryWriteDword(tarY);
        sq_BinaryWriteDword(tarZ);

        sq_BinaryWriteDword(moveT);
        sq_SendCreatePassiveObjectPacketPos(parentObj, 24377, 0,0,0,0);


//        gal_CreateCommonMonsterWarnLine(parentObj,objX + offsetX * 2,objY + offsetY * 2,1000 );

    }else if (ID == 152313)
    {

        local pChr = sq_GetMyMasterCharacter();
        local chrObj = sq_GetCNRDObjectToSQRCharacter(pChr);
        local posX = passiveobj.getXPos();
        local posY = passiveobj.getYPos();
        local posZ = passiveobj.getZPos();

        local chrX = chrObj.getXPos();
        local chrY = chrObj.getYPos();

        local offsetX = posX - chrX;
        local offsetY = posY - chrY;

        if (offsetX * offsetX + offsetY * offsetY <= posZ * posZ)
        {


            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(chrObj, chrObj, 12, false, 
            "monster/ap_near_distance.nut", true);				 
            masterAppendage.sq_SetValidTime( 800 );

        }


    }else if (ID == 152314)
    {

    }else if (ID == 152315)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 12, false, 
            "monster/jummp_dummy/ap_move_with_pos_ignore_map.nut", true);				 

            masterAppendage.getVar("jumpLastPos").clear_vector();
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getXPos() );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getYPos() );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getZPos() % 1000 );
            masterAppendage.getVar("jumpLastPos").push_vector( passiveobj.getZPos() / 1000 );
        }   

    }else if (ID == 152316)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/blood/ap_blood_gauge.nut"))
            {
                CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/blood/ap_blood_gauge.nut");
            }
        }

    }else if (ID == 152317)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/jummp_dummy/ap_move_with_pos_ignore_map.nut"))
            {
                CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/jummp_dummy/ap_move_with_pos_ignore_map.nut");
            }
        }

    }else if (ID == 152318)
    {
    }else if (ID == 152319)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (!CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/ap_set_max_hp.nut"))
            {
                local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 12, false, 
                "monster/ap_set_max_hp.nut", true);				 
            }
        }
    }else if (ID == 152320)
    {
        local pChr = sq_GetMyMasterCharacter();
        local chrObj = sq_GetCNRDObjectToSQRCharacter(pChr);
        if (chrObj)
        {
            local apd = getComboUiAppendage(chrObj);
            setBigNumberByAppendageVectorZero(apd,"damageBigNumberVector");
        }
    }else if (ID == 152321)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/ap_set_max_hp.nut"))
            {
                CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/ap_set_max_hp.nut");
            }
        }
    }else if (ID == 152322)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/rage/ap_rage.nut"))
            {
                local apd = parentObj.GetSquirrelAppendage("monster/rage/ap_rage.nut");
                local var = apd.getVar("enegry").get_vector(0);
                apd.getVar("enegry").set_vector(0,var + passiveobj.getZPos() );
            }
        }
    }else if (ID == 152323)
    {



        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
//            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

            local varVector = -1;
            local id = passiveobj.getZPos() / 1000;
            local num = passiveobj.getZPos() % 1000;

            local len = ::GlobalMonsterCreateCirclePassiveobjectList.len();
            for (local i = 0;i < len;i++)
            {
                local flashList = ::GlobalMonsterCreateCirclePassiveobjectList[i];	
                if (id == flashList[0])
                {
                    varVector = i;
                    break;
                }
            }

            if (varVector == -1)
                return ;
            local pasLst = GlobalMonsterCreateCirclePassiveobjectList[varVector];

            local pasID = pasLst[1];
            local distance = pasLst[2];
            local count = pasLst[3];
            local minX = pasLst[4];
            local maxX = pasLst[5];
            local minY = pasLst[6];
            local maxY = pasLst[7];

            local angle_sub = 360 / count;

            local sX = passiveobj.getXPos();
            local sY = passiveobj.getYPos();

            local i = num;
            local curAngle = angle_sub * i;
            local posX = (distance.tofloat() * sq_CosTable( curAngle.tointeger() ) ).tointeger();
            local posY = (distance.tofloat() * sq_SinTable(curAngle.tointeger() ) * 0.29).tointeger();
                


            local randomX = 0;
            local randomY = 0;

            if (minX == maxX)
                randomX = minX;
            else
                randomX = sq_getRandom(minX,maxX).tointeger();

            if (minY == maxY)
                randomY = minY;
            else
                randomY = sq_getRandom(minY,maxY).tointeger();

            sq_SendCreatePassiveObjectPacketPos(parentObj,pasID, 0,sX + posX + randomX ,sY + posY + randomY, 0 );



//            outPut("dummy/dummy.txt","rorateCreatePassiveobjectID =" + pasID + "\n");


        }   

    }else if (ID == 152324)
    {


        local parentObj = passiveobj.getParent();

        if (parentObj.isObjectType(OBJECTTYPE_ACTIVE))
            return ;

        local id = sq_GetObjectId(parentObj);

        local objX = parentObj.getXPos();
        local objY = parentObj.getYPos();
        local objZ = parentObj.getZPos();
        
        local tarX = passiveobj.getXPos();
        local tarY = passiveobj.getYPos();

        local saveZ = passiveobj.getZPos();
        local tarZ = 0;
        local moveT = 0;

        if (saveZ < 0)
        {
            local pp = -saveZ;
            tarZ = -(pp % 1000);
            moveT = pp / 1000;
        }else{

            tarZ = saveZ % 1000;
            moveT = saveZ / 1000;
        }

//            tarZ = -sq_Abs(tarZ);
//            moveT = sq_Abs(moveT);


        sq_BinaryStartWrite();
        sq_BinaryWriteDword(106);	// attackBonusRate
        sq_BinaryWriteDword(id);	// attackBonusRate
        sq_BinaryWriteDword(objX);
        sq_BinaryWriteDword(objY);
        sq_BinaryWriteDword(objZ);

        sq_BinaryWriteDword(tarX);
        sq_BinaryWriteDword(tarY);
        sq_BinaryWriteDword(tarZ);

        sq_BinaryWriteDword(moveT);
        sq_SendCreatePassiveObjectPacketPos(parentObj, 24377, 0,0,0,0);

    }else if (ID == 152325)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/energy/ap_energy_ball.nut"))
            {
                CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/energy/ap_energy_ball.nut");
            }
        }

    }else if (ID == 152326)
    {

        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

        if (!parentObj.isObjectType(OBJECTTYPE_ACTIVE))
            parentObj = parentObj.getParent();

        local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
        "monster/energy/ap_energy2.nut", true);				 
        masterAppendage.getVar("Pos").clear_vector();
        masterAppendage.getVar("Pos").push_vector( passiveobj.getXPos() );
        masterAppendage.getVar("Pos").push_vector( passiveobj.getYPos() );
        masterAppendage.getVar("Pos").push_vector( passiveobj.getZPos() );
        masterAppendage.getVar("Pos").push_vector( 0 );

    }else if (ID == 152327)
    {
        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/energy/ap_energy2.nut"))
            {
                CNSquirrelAppendage.sq_RemoveAppendage(parentObj, "monster/energy/ap_energy2.nut");
            }
        }
    }else if (ID == 152328)
	{

        local parentObj = passiveobj.getParent();

        if (parentObj.isObjectType(OBJECTTYPE_ACTIVE))
            return ;

        local id = sq_GetObjectId(parentObj);

        local objX = parentObj.getXPos();
        local objY = parentObj.getYPos();
        local objZ = parentObj.getZPos();
        
        local tarX = passiveobj.getXPos();
        local tarY = passiveobj.getYPos();

        local saveZ = passiveobj.getZPos();
        local tarZ = 0;
        local moveT = 0;

        if (saveZ < 0)
        {
            local pp = -saveZ;
            tarZ = -(pp % 1000);
            moveT = pp / 1000;
        }else{

            tarZ = saveZ % 1000;
            moveT = saveZ / 1000;
        }



        sq_BinaryStartWrite();
        sq_BinaryWriteDword(107);	// attackBonusRate
        sq_BinaryWriteDword(id);	// attackBonusRate
        sq_BinaryWriteDword(objX);
        sq_BinaryWriteDword(objY);
        sq_BinaryWriteDword(objZ);

        sq_BinaryWriteDword(tarX);
        sq_BinaryWriteDword(tarY);
        sq_BinaryWriteDword(tarZ);

        sq_BinaryWriteDword(moveT);
        sq_SendCreatePassiveObjectPacketPos(parentObj, 24377, 0,0,0,0);

	}else if (ID == 152329)
    {

        local parentObj = passiveobj.getParent();
        if (parentObj)
        {
            parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
            if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "ui/ap_monster_ui2.nut"))
            {
                local masterAppendage = parentObj.GetSquirrelAppendage("ui/ap_monster_ui2.nut");


                if (masterAppendage.getVar("newActTriggerIconLst").size_vector() <= 0)
                {

                    masterAppendage.getVar("newActTriggerIconLst").clear_vector();
                    for (local i = 0;i< 10;i++)
                        masterAppendage.getVar("newActTriggerIconLst").push_vector(-1);

                }

                local vectorID = passiveobj.getXPos();
                local statusID = passiveobj.getYPos();

                masterAppendage.getVar("newActTriggerIconLst").set_vector( vectorID , statusID );

            }else{

                local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
                "ui/ap_monster_ui2.nut", true);				 

                if (masterAppendage.getVar("newActTriggerIconLst").size_vector() <= 0)
                {

                    masterAppendage.getVar("newActTriggerIconLst").clear_vector();
                    for (local i = 0;i< 10;i++)
                        masterAppendage.getVar("newActTriggerIconLst").push_vector(-1);

                }

                local vectorID = passiveobj.getXPos();
                local statusID = passiveobj.getYPos();

                masterAppendage.getVar("newActTriggerIconLst").set_vector( vectorID , statusID );

            }
        }

    }else if (ID == 152330)
    {

        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

        local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
        "monster/ap_display_only_ghost.nut", true);				 
    }else if (ID == 152331)
    {

        local parentObj = passiveobj.getParent();
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

        if (!parentObj.isObjectType(OBJECTTYPE_ACTIVE))
            parentObj = parentObj.getParent();

        local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
        "monster/energy/ap_energy_red.nut", true);				 
        masterAppendage.getVar("Pos").clear_vector();
        masterAppendage.getVar("Pos").push_vector( passiveobj.getXPos() );
        masterAppendage.getVar("Pos").push_vector( passiveobj.getYPos() );
        masterAppendage.getVar("Pos").push_vector( passiveobj.getZPos() );
        masterAppendage.getVar("Pos").push_vector( 0 );

    }
    sq_SendDestroyPacketPassiveObject( passiveobj );

}






function gbl_setMonsterHp(obj)
{



}



function gal_addMonsterActiveStatusEffect(parentObj,vectorID,statusID)
{

    if (parentObj)
    {
        parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
        if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "ui/ap_monster_ui2.nut"))
        {
            local masterAppendage = parentObj.GetSquirrelAppendage("ui/ap_monster_ui2.nut");


            if (masterAppendage.getVar("newActTriggerIconLst").size_vector() <= 0)
            {

                masterAppendage.getVar("newActTriggerIconLst").clear_vector();
                for (local i = 0;i< 10;i++)
                    masterAppendage.getVar("newActTriggerIconLst").push_vector(-1);

            }

            masterAppendage.getVar("newActTriggerIconLst").set_vector( vectorID , statusID );

        }else{

            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, 14, false, 
            "ui/ap_monster_ui2.nut", true);				 

            if (masterAppendage.getVar("newActTriggerIconLst").size_vector() <= 0)
            {

                masterAppendage.getVar("newActTriggerIconLst").clear_vector();
                for (local i = 0;i< 10;i++)
                    masterAppendage.getVar("newActTriggerIconLst").push_vector(-1);

            }

            masterAppendage.getVar("newActTriggerIconLst").set_vector( vectorID , statusID );

        }
    }



}



function gal_displayMonsterStringEffectWithCustomUIFront(obj,string,offsetX,offsetY)
{
	local len = string.len();
	local posX = 0;
	local x = 400 - 5 * len + offsetX;
	local y = 200 +  offsetY;
	for(local i = 0;i<len;i++)
	{
		local char = string.slice(i,i+1);
		local ani = getCurrentStringAni(obj,"while2",char);
		if (ani)
		{
			sq_AnimationProc(ani);
			sq_drawCurrentFrame(ani,x + offsetX + posX, y, false);
			
			posX += 10;
			
		}
	}

}



function gal_MonsterCompareSwitchHp(obj,tarID,hpRange,isDown)
{



        local tar = scanObjectManagerMonsterByID(obj,tarID);

        if (tar)
        {

            tar = sq_GetCNRDObjectToActiveObject(tar);
            obj = sq_GetCNRDObjectToActiveObject(obj);


            local targetHp = tar.getHp();
            local myselfHp = obj.getHp();
            
            local targetHpMax = tar.getHpMax();
            local myselfHpMax = obj.getHpMax();
            
            local targetRate = targetHp.tofloat() / targetHpMax.tofloat();
            local myselfRate = myselfHp.tofloat() / myselfHpMax.tofloat();
            
            local rangeRate = hpRange.tofloat() / 100.0;

            if ( myselfRate + rangeRate > targetRate)
            {
              
              tar.setHp( (targetHpMax * myselfRate).tointeger() , null, true);
            
            }else if(targetRate + rangeRate > myselfRate)
            {
              obj.setHp( (myselfHpMax * targetRate).tointeger() , null, true);
            }
            
            //if (targetRate > compareHpRate)
            //{

            //    tar.setHp( (targetHpMax * myselfRate).tointeger() , null, true);
            //    obj.setHp( (myselfHpMax * targetRate).tointeger() , null, true);

                
            //}



        }


}



function gbl_HoldAndDelayEffectSetByAppendageEnd(appendage)
{

}


function getMulitingBloodCutObjectByID(obj,id)
{
	local bloodCutObjCount = obj.getMyPassiveObjectCount(24357);			
	for (local i = 0; i < bloodCutObjCount ; ++i) 
	{ 
		local bloodCutObj = obj.getMyPassiveObject(24357,i);
        if (bloodCutObj && bloodCutObj.getVar("id").get_vector(0) == id)
        {
            
            return bloodCutObj;
        }
	}

    return null;
}


function sendHitPacketObjectByDamaVector(obj,vector)
{

    local var = obj.getVar(vector);  		
    local objectsSize = var.get_obj_vector_size();

    if (objectsSize > 0)
    {

        for(local i=0;i<objectsSize;++i)
        {
            local damager = var.get_obj_vector(i);

            sq_SendHitObjectPacket(obj,damager,0,0,0);

        }
    }

}


function checkIsHoldAndDelayEffect(obj)
{
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "monster/ap_set_unhold.nut"))
        return true;

    return false;
}


function checkIsHoldAndDelayEffectWithWarn(obj)
{
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "monster/ap_set_unhold.nut"))
        return true;
    DisplayUnHoldFlagWarn(obj);
    return false;
}






function gbl_HoldAndDelayEffectSetByAppendageLoopNoClear(appendage)
{

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	local obj = appendage.getParent();	
    obj = sq_GetCNRDObjectToActiveObject(obj);
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "monster/ap_set_unhold.nut") )
    {
        if (obj.getState() != STATE_HOLD)
            sq_HoldAndDelayDie(parentObj, sourceObj, true, false, false, 200, 200, ENUM_DIRECTION_NEUTRAL , appendage);
    }else{

        if (obj.getState() == STATE_HOLD)
            sq_HoldAndDelayDie(parentObj, sourceObj, false, false, false, 0, 0, ENUM_DIRECTION_NEUTRAL , appendage);

        if (appendage.getVar("DispUnHoldAnimation").size_vector() == 0)
        {
            DisplayUnHoldFlagWarn(obj);
            appendage.getVar("DispUnHoldAnimation").clear_vector();
            appendage.getVar("DispUnHoldAnimation").push_vector(1);

        }   
		appendage.setValid(false);
		return;

    }

}



function gbl_HoldAndDelayEffectSetByAppendageLoop(appendage)
{

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	local obj = appendage.getParent();	
    obj = sq_GetCNRDObjectToActiveObject(obj);
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "monster/ap_set_unhold.nut") )
    {

        if (obj.getState() != STATE_HOLD)
            sq_HoldAndDelayDie(parentObj, sourceObj, true, false, false, 200, 200, ENUM_DIRECTION_NEUTRAL , appendage);

    }else{

        if (obj.getState() == STATE_HOLD)
            sq_HoldAndDelayDie(parentObj, sourceObj, false, false, false, 0, 0, ENUM_DIRECTION_NEUTRAL , appendage);

        if (appendage.getVar("DispUnHoldAnimation").size_vector() == 0)
        {

            DisplayUnHoldFlagWarn(obj);
            appendage.getVar("DispUnHoldAnimation").clear_vector();
            appendage.getVar("DispUnHoldAnimation").push_vector(1);
			sourceObj.getVar("dama").clear_obj_vector();

        }   
		appendage.setValid(false);
		return;

    }

}

function gbl_HoldAndDelayEffectSetDownByAppendageLoop(appendage)
{

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	local obj = appendage.getParent();	
    obj = sq_GetCNRDObjectToActiveObject(obj);
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "monster/ap_set_unhold.nut") )
    {

        if (obj.getState() != STATE_HOLD)
            sq_HoldAndDelayDie(parentObj, sourceObj, true, true, true, 200, 200, ENUM_DIRECTION_NEUTRAL , appendage);

    }else{


        if (obj.getState() == STATE_HOLD)
            sq_HoldAndDelayDie(parentObj, sourceObj, false, false, false, 0, 0, ENUM_DIRECTION_NEUTRAL , appendage);

        if (appendage.getVar("DispUnHoldAnimation").size_vector() == 0)
        {
            DisplayUnHoldFlagWarn(obj);
            appendage.getVar("DispUnHoldAnimation").clear_vector();
            appendage.getVar("DispUnHoldAnimation").push_vector(1);
			sourceObj.getVar("dama").clear_obj_vector();

        }   
		appendage.setValid(false);
		return;

    }

}





function gbl_HoldAndDelayEffectSetByAppendageStart(appendage)
{

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();




}


function scanObjectManagerMonsterByID(obj,findID)
{
//	outPut("dummy/dummy.txt","id = " + findID + "\n" );
	local objectManager = obj.getObjectManager();
    
    if (objectManager)
    {
        for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
        {
            local object = objectManager.getCollisionObject(i);
            local id = object.getCollisionObjectIndex(object);
//            outPut("dummy/dummy.txt","id = " + id + "\n" );
            if (object && object.isObjectType(OBJECTTYPE_ACTIVE))
            {
                local object = sq_GetCNRDObjectToActiveObject(object);
                local apd = object.GetSquirrelAppendage("monster/set_flag/ap_set_flag.nut");
                if (apd && apd.getVar("setFlag").get_vector(0) == findID)
                    return object;

            }
        }
    }
//    outPut("dummy/dummy.txt","fail\n");
    return null;
}

//����ͧ��
function gal_DrawMonsterRageCustomUIEffect(obj)
{

    local apd = getComboUiAppendage(obj);
    if (apd && apd.getVar("monsterRageUI").get_vector(0) >= 0)
    {
        local rageEnergy = apd.getVar("monsterRageUI").get_vector(0);

        local ani = obj.getVar().GetAnimationMap("MonsterRageEffect_BackGround","common/monster/rage/rage_back.ani");
        sq_AnimationProc(ani);
        sq_drawCurrentFrame(ani, 10, 150, false);
        local createX = 40;
        local createY = 138;
        local ani2 = obj.getVar().GetAnimationMap("MonsterRageEffect_tailEffect","common/monster/rage/rage_energy_tail.ani");
        for (local i = 0;i < rageEnergy;i += 149)
        {
            sq_AnimationProc(ani2);
            sq_drawCurrentFrame(ani2, createX, createY, false);
            createX = createX + 20;
        }

        sq_AnimationProc(ani2);
        sq_drawCurrentFrame(ani2, createX + (((rageEnergy % 150).tofloat() / 150.0) * 20.0).tointeger() - 20, createY, false);
        local ani3 = obj.getVar().GetAnimationMap("MonsterRageEffect_HeadEffect","common/monster/rage/rage_energy_head.ani");
        sq_AnimationProc(ani3);
        sq_drawCurrentFrame(ani3, createX + (((rageEnergy % 150).tofloat() / 150.0) * 20.0).tointeger(), createY, false);
    }

}

//����Ϲ
function gal_DrawMonsterEnergyBallCustomUIEffect(obj)
{
    local apd = getComboUiAppendage(obj);
    if (apd && apd.getVar("monsterEnergyDrawBallUI").get_vector(0) != -1)
    {
        local maxNum = 6;//apd.getVar("monsterEnergyDrawBallUI").get_vector(0);
        local currentNum = apd.getVar("monsterEnergyDrawBallUI").get_vector(1);
        local id = apd.getVar("monsterEnergyDrawBallUI").get_vector(2);

        for(local i = 0;i < maxNum;i++)
        {
            
            local ani = null;
            if (i < currentNum)
            {

                ani = obj.getVar().GetAnimationMap("MonsterEnergyBallCustomUI_Start" + id,
                "common/monster/energyball/ball_" + id + "/ball_start.ani");
                local bEnd = sq_IsEnd(ani);

                if (bEnd)
                {
                    ani = obj.getVar().GetAnimationMap("MonsterEnergyBallCustomUI_" + id,
                    "common/monster/energyball/ball_" + id + "/ball_loop.ani");
                }

            }else if (i == currentNum)
            {

                local isEndAnimation = apd.getVar("monsterEnergyDrawBallUI").get_vector(3);
                if (isEndAnimation == 1)
                {

                    ani = obj.getVar().GetAnimationMap("MonsterEnergyBallCustomUI_End" + id,
                    "common/monster/energyball/ball_" + id + "/ball_end.ani");
                }else{

                    ani = obj.getVar().GetAnimationMap("MonsterEnergyBallCustomUI_Out" + id,
                    "common/monster/energyball/ball_" + id + "/ball_out.ani");

                }
            }else{

                ani = obj.getVar().GetAnimationMap("MonsterEnergyBallCustomUI_Out" + id,
                "common/monster/energyball/ball_" + id + "/ball_out.ani");
            }

            if (ani)
            {
                sq_AnimationProc(ani);
                sq_drawCurrentFrame(ani, 440 + 40 * i - ((maxNum / 2) * 30), 480, false);
            }

        }


    }

}



function gal_DrawMonsterRedEnergyCustomUIEffect(obj)
{
    local apd = getComboUiAppendage(obj);
    if (apd && apd.getVar("monsterRedEnergyDrawUI").get_vector(0) != -1)
    {
        
        local offsetX = 0;
        local offsetY = 0;


        local id = apd.getVar("monsterRedEnergyDrawUI").get_vector(0);
        local time = apd.getVar("monsterRedEnergyDrawUI").get_vector(2);
        local currentT = apd.getVar("monsterRedEnergyDrawUI").get_vector(3);

        local ani = obj.getVar().GetAnimationMap("MonsterRedEnergyCustomUIBack","common/monster/energy/back.ani");
        sq_AnimationProc(ani);
        sq_drawCurrentFrame(ani, 300 + offsetX, 500 + offsetY, false);



        if (currentT > 200)
        {
            local rate = currentT.tofloat() / time.tofloat();
            setClip(331 + offsetX,519 + offsetY,offsetX + 330 + (124 * (1.0 - rate)).tointeger(),528 + offsetY);

            ani = obj.getVar().GetAnimationMap("MonsterRedEnergyCustomUIEnegryFront2","common/monster/energy/red_energy_front.ani");
            sq_AnimationProc(ani);


            sq_drawCurrentFrame(ani, 331 + offsetX, 519 + offsetY, false);
            releaseClip();
        }

        local string = "monsterEnergyDrawUI_Senond_Icon_" + id;
        local road = "common/monster/energy/icon/"+ id +".ani";
        ani = obj.getVar().GetAnimationMap(string,road);

        sq_AnimationProc(ani);
        sq_drawCurrentFrame(ani, 304 + offsetX, 502 + offsetY, false);


    }
}


function gal_DrawMonsterEnergyCustomUIEffectSecond(obj)
{
    local apd = getComboUiAppendage(obj);
    if (apd && apd.getVar("monsterEnergyDrawUI2").get_vector(0) != -1)
    {
        
        local offsetX = 0;
        local offsetY = 0;
        if (apd.getVar("monsterEnergyDrawUI").get_vector(0) != -1)
            offsetX += 50;

        local id = apd.getVar("monsterEnergyDrawUI2").get_vector(0);
        local time = apd.getVar("monsterEnergyDrawUI2").get_vector(2);
        local currentT = apd.getVar("monsterEnergyDrawUI2").get_vector(3);

        local ani = obj.getVar().GetAnimationMap("MonsterEnergyCustomUIBack2","common/monster/energy/back.ani");
        sq_AnimationProc(ani);
        sq_drawCurrentFrame(ani, 300 + offsetX, 500 + offsetY, false);



        if (currentT > 200)
        {
            local rate = currentT.tofloat() / time.tofloat();
            setClip(331 + offsetX,519 + offsetY,offsetX + 330 + (124 * rate).tointeger(),528 + offsetY);

            ani = obj.getVar().GetAnimationMap("MonsterEnergyCustomUIEnegryFront2","common/monster/energy/energy_front.ani");
            sq_AnimationProc(ani);


            sq_drawCurrentFrame(ani, 331 + offsetX, 519 + offsetY, false);
            releaseClip();
        }

        local string = "monsterEnergyDrawUI_Senond_Icon_" + id;
        local road = "common/monster/energy/icon/"+ id +".ani";
        ani = obj.getVar().GetAnimationMap(string,road);

        sq_AnimationProc(ani);
        sq_drawCurrentFrame(ani, 304 + offsetX, 502 + offsetY, false);


    }
}


function gal_DrawMonsterEnergyCustomUIEffect(obj)
{
    local apd = getComboUiAppendage(obj);
    if (apd && apd.getVar("monsterEnergyDrawUI").get_vector(0) != -1)
    {

        local offsetX = 0;
        local offsetY = 0;

        if (apd.getVar("monsterEnergyDrawUI2").get_vector(0) != -1)
            offsetX -= 120;

        local id = apd.getVar("monsterEnergyDrawUI").get_vector(0);
        local time = apd.getVar("monsterEnergyDrawUI").get_vector(2);
        local currentT = apd.getVar("monsterEnergyDrawUI").get_vector(3);

        local ani = obj.getVar().GetAnimationMap("MonsterEnergyCustomUIBack","common/monster/energy/back.ani");
        sq_AnimationProc(ani);
        sq_drawCurrentFrame(ani, 300 + offsetX, 500 + offsetY, false);



        if (currentT > 200)
        {
            local rate = currentT.tofloat() / time.tofloat();
            setClip(331 + offsetX,519 + offsetY,offsetX + 330 + (124 * rate).tointeger(),528 + offsetY);

            ani = obj.getVar().GetAnimationMap("MonsterEnergyCustomUIEnegryFront","common/monster/energy/energy_front.ani");
            sq_AnimationProc(ani);


            sq_drawCurrentFrame(ani, 331 + offsetX, 519 + offsetY, false);
            releaseClip();
        }

        local string = "monsterEnergyDrawUI_Icon_" + id;
        local road = "common/monster/energy/icon/"+ id +".ani";
        ani = obj.getVar().GetAnimationMap(string,road);

        sq_AnimationProc(ani);
        sq_drawCurrentFrame(ani, 304 + offsetX, 502 + offsetY, false);


    }
}




function gal_DrawMonsterToSetCustomUIEffect(obj)
{

    if ( CNSquirrelAppendage.sq_IsAppendAppendage(obj, "monster/monster_draw_custom/ap_monster_draw_custom.nut") )
    {
        local apd = obj.GetSquirrelAppendage("monster/monster_draw_custom/ap_monster_draw_custom.nut");
        if (!apd)
            return false;

        local x = apd.getVar("parameter").get_vector(0);
        local y = apd.getVar("parameter").get_vector(1);
        local z = apd.getVar("parameter").get_vector(2);

        local string = "monsterSetCustomUI_ID_" + z;
        local road = "common/monster/big/monster_" + z + "/" + z + ".ani";
        local ani = obj.getVar().GetAnimationMap(string,road);
		
		local bEnd = sq_IsEnd(ani);
		if (bEnd)
		{
			CNSquirrelAppendage.sq_RemoveAppendage(obj, "monster/monster_draw_custom/ap_monster_draw_custom.nut");
			return false;
			
		}
		
        sq_AnimationProc(ani);
        sq_drawCurrentFrame(ani, x, y + 150, false);

		if (apd.getVar("imageID").size_vector() > 0)
		{
		
			local id = apd.getVar("imageID").get_vector(0);
			

			local varVector = -1;
			local len = ::GlobalMonsterStringList.len();
			for (local i = 0;i < len;i++)
			{
				local flashList = ::GlobalMonsterStringList[i];	
				if (z == flashList[0])
				{
					varVector = i;
					break;
				}
			}

			if (varVector != -1)
			{
				local flash = ::GlobalMonsterStringList[varVector];
				gal_displayMonsterStringEffectWithCustomUIFront(obj,flash[1],x,y + 20);
			}
			
			
		}

    }

}





function gal_CreateCommonMonsterWarnCircle(obj,x,y,z)
{
    local saveT = z / 1000;
    local size = z % 1000;

	local ani = sq_CreateAnimation("","common/monster/warning_arc_circle.ani");

    local speed = 130000 / saveT;
    local speedRate = speed.tofloat();
    ani.setSpeedRate( speedRate );

    local sizeRate = size.tofloat() / 100.0;
    ani.setImageRateFromOriginal(sizeRate, sizeRate);
    ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate);

	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	pooledObj.setCurrentPos(x ,y ,0 );
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	

}




function gal_CreateCommonMonsterWarnLine(obj,x,y,z)
{
    

    local ani = sq_CreateAnimation("","common/monster/new_warn/warningfloor_linebottom.ani");
    local saveT = z;
    local speed = 84000 / saveT;
    local speedRate = speed.tofloat();
    ani.setSpeedRate( speedRate );



    local angle = getRorateAngleByCurrentPos(obj,obj.getXPos(),obj.getYPos(),0,x,y,0);
    sq_SetfRotateAngle(ani, angle);
    local offsetX = sq_Abs(x - obj.getXPos() );
    local offsetY = sq_Abs(y - obj.getYPos() );

    if (offsetX < offsetY)
      offsetX = offsetY;

    ani.setImageRateFromOriginal(offsetX.tofloat() / 400.0, 1.0);
    ani.setAutoLayerWorkAnimationAddSizeRate(1.0);

	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 0);
	pooledObj.setCurrentPos(posX ,obj.getYPos(),0);
    if (x <= obj.getXPos() )
        pooledObj.setCurrentDirection(ENUM_DIRECTION_LEFT );
    else
        pooledObj.setCurrentDirection(ENUM_DIRECTION_RIGHT );

	sq_AddObject(obj,pooledObj,2,false);	
  gal_CreateCommonMonsterWarnLineLayer2(obj,x,y,z);
//    gal_CreateCommonMonsterWarnLineFront(obj,x,y + 1,z,angle,speed);

    return false;

}


function gal_CreateCommonMonsterWarnLineLayer2(obj,x,y,z)
{
    

    local ani = sq_CreateAnimation("","common/monster/new_warn/warningfloor_linedown.ani");
    local saveT = z;
    local speed = 84000 / saveT;
    local speedRate = speed.tofloat();
    ani.setSpeedRate( speedRate );



    local angle = getRorateAngleByCurrentPos(obj,obj.getXPos(),obj.getYPos(),0,x,y,0);
    sq_SetfRotateAngle(ani, angle);
    local offsetX = sq_Abs(x - obj.getXPos() );
    local offsetY = sq_Abs(y - obj.getYPos() );

    if (offsetX < offsetY)
      offsetX = offsetY;

    ani.setImageRateFromOriginal(offsetX.tofloat() / 400.0, 1.0);
    ani.setAutoLayerWorkAnimationAddSizeRate(1.0);

	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 0);
	pooledObj.setCurrentPos(posX ,obj.getYPos(),0);
    if (x <= obj.getXPos() )
        pooledObj.setCurrentDirection(ENUM_DIRECTION_LEFT );
    else
        pooledObj.setCurrentDirection(ENUM_DIRECTION_RIGHT );
	sq_AddObject(obj,pooledObj,2,false);	
  gal_CreateCommonMonsterWarnLineLayer3(obj,x,y,z);
    return false;

}



function gal_CreateCommonMonsterWarnLineLayer3(obj,x,y,z)
{
    

    local ani = sq_CreateAnimation("","common/monster/new_warn/warningfloor_lineup.ani");
    local saveT = z;
    local speed = 84000 / saveT;
    local speedRate = speed.tofloat();
    ani.setSpeedRate( speedRate );



    local angle = getRorateAngleByCurrentPos(obj,obj.getXPos(),obj.getYPos(),0,x,y,0);
    sq_SetfRotateAngle(ani, angle);
    local offsetX = sq_Abs(x - obj.getXPos() );
    local offsetY = sq_Abs(y - obj.getYPos() );

    if (offsetX < offsetY)
      offsetX = offsetY;

    ani.setImageRateFromOriginal(offsetX.tofloat() / 400.0, 1.0);
    ani.setAutoLayerWorkAnimationAddSizeRate(1.0);

	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 0);
	pooledObj.setCurrentPos(posX ,obj.getYPos(),0);
    if (x <= obj.getXPos() )
        pooledObj.setCurrentDirection(ENUM_DIRECTION_LEFT );
    else
        pooledObj.setCurrentDirection(ENUM_DIRECTION_RIGHT );
	sq_AddObject(obj,pooledObj,2,false);	
  gal_CreateCommonMonsterWarnLineLayer4(obj,x,y,z);
    return false;

}


function gal_CreateCommonMonsterWarnLineLayer4(obj,x,y,z)
{
    

    local ani = sq_CreateAnimation("","common/monster/new_warn/warningfloor_linebottomdown.ani");
    local saveT = z;
    local speed = 84000 / saveT;
    local speedRate = speed.tofloat();
    ani.setSpeedRate( speedRate );



    local angle = getRorateAngleByCurrentPos(obj,obj.getXPos(),obj.getYPos(),0,x,y,0);
    sq_SetfRotateAngle(ani, angle);
    local offsetX = sq_Abs(x - obj.getXPos() );
    local offsetY = sq_Abs(y - obj.getYPos() );

    if (offsetX < offsetY)
      offsetX = offsetY;

    ani.setImageRateFromOriginal(offsetX.tofloat() / 400.0, 1.0);
    ani.setAutoLayerWorkAnimationAddSizeRate(1.0);

	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 0);
	pooledObj.setCurrentPos(posX ,obj.getYPos(),0);
    if (x <= obj.getXPos() )
        pooledObj.setCurrentDirection(ENUM_DIRECTION_LEFT );
    else
        pooledObj.setCurrentDirection(ENUM_DIRECTION_RIGHT );
	sq_AddObject(obj,pooledObj,2,false);	
  gal_CreateCommonMonsterWarnLineLayer5(obj,x,y,z);
    return false;

}


function gal_CreateCommonMonsterWarnLineLayer5(obj,x,y,z)
{
    

    local ani = sq_CreateAnimation("","common/monster/new_warn/warningfloor_linebottomup.ani");
    local saveT = z;
    local speed = 84000 / saveT;
    local speedRate = speed.tofloat();
    ani.setSpeedRate( speedRate );



    local angle = getRorateAngleByCurrentPos(obj,obj.getXPos(),obj.getYPos(),0,x,y,0);
    sq_SetfRotateAngle(ani, angle);
    local offsetX = sq_Abs(x - obj.getXPos() );
    local offsetY = sq_Abs(y - obj.getYPos() );

    if (offsetX < offsetY)
      offsetX = offsetY;

    ani.setImageRateFromOriginal(offsetX.tofloat() / 400.0, 1.0);
    ani.setAutoLayerWorkAnimationAddSizeRate(1.0);

	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 0);
	pooledObj.setCurrentPos(posX ,obj.getYPos(),0);
    if (x <= obj.getXPos() )
        pooledObj.setCurrentDirection(ENUM_DIRECTION_LEFT );
    else
        pooledObj.setCurrentDirection(ENUM_DIRECTION_RIGHT );
	sq_AddObject(obj,pooledObj,2,false);	

    return false;

}



function gal_CreateCommonMonsterWarnLineFront(obj,x,y,z,angle,speed)
{
    

	local ani = sq_CreateAnimation("","common/monster/warn_arc_line_bottom_layer_2.ani");
    
    sq_SetfRotateAngle(ani, angle);
    local offsetX = sq_Abs(x - obj.getXPos() );
    local speedRate = speed.tofloat();
    ani.setSpeedRate( speedRate );
    ani.setImageRateFromOriginal(offsetX.tofloat() / 200.0, 1.0);
    ani.setAutoLayerWorkAnimationAddSizeRate(1.0);

	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 0);
	pooledObj.setCurrentPos(posX ,obj.getYPos(),0);
    if (x <= obj.getXPos() )
        pooledObj.setCurrentDirection(ENUM_DIRECTION_LEFT );
    else
        pooledObj.setCurrentDirection(ENUM_DIRECTION_RIGHT );
	sq_AddObject(obj,pooledObj,2,false);	


    return false;

}

function getBeizeriCnt(obj,var1,var2,p0,p1,p2,p3)
{

    local t = var1.tofloat() / var2.tofloat();
    local t1 = 1.0 - t;

    local v1 = t1 * t1 * t1;
    local v2 = t1 * t1;
    local v3 = t1;
    local v4 = t * t * t;

    local ret = p0.tofloat() * v1;
    ret = ret + 3.0 * p1.tofloat() * t * v2;
    ret = ret + 3.0 * p2.tofloat() * t * t * v3;
    ret = ret + p3.tofloat() * v4;

    return ret;

}


function getQuadraticFunction(obj,x,b,c)
{
  local a = (-b.tofloat() * 4) /( c.tofloat() * c.tofloat());
  return a.tofloat()*(x.tofloat() - c.tofloat() / 2)*(x.tofloat() - c.tofloat() / 2) + b.tofloat();
}



function getRorateAngleByCurrentPos(obj,x1,y1,z1,x2,y2,z2)
{
	if(!obj) return;

	local X = x1;
	local Y = y1;
	local Z = z1;
	
	local posX = x2;
	local posY = y2;
	local posZ = z2;
	
	local offset = posX - X;
	
	local distance = sq_GetDistance( X, Y - Z, posX, posY - posZ, true);
	
	local w = posX - X;		
	if(w < 0) w = -w;
	
	
	local h = (posY - posZ) - (Y - Z);
	local width = sq_Abs(posX - X);
	local angle = sq_Atan2( h.tofloat(), width.tofloat());

	
	{
		angle = -angle;
	}

	local nRevision = distance;

	local cos = nRevision.tofloat() * sq_Cos(angle);
	local sin = nRevision.tofloat() * sq_Sin(angle);

	local nX = sq_Abs( cos.tointeger() );
	local nY = sq_Abs( sin.tointeger() );

	return angle;
	

}


function setCharacterFristAnimation(obj)
{   

    setMonsterFristReadFile(obj);
    if (SET_FRIST_ANIMATION_FLAG == 0)
    {
        NewActAniFileFristRead(obj);
        setMonsterFristReadWithDungeonEffect(obj);
        readNewGlobalConfig();

		getFristPreLoadFileList(obj);
    }

}

function onDungeonClearMonsterEvent(obj)
{

    onTayberrsDungeonClearEvent(obj);
    
}

function onStartMapCharacterEvent(obj)
{
    onTayberrsMapSwitchEvent(obj);

}

function onDungeonCharacterStartEvent(obj)
{
    onTayberrsDungeonStartEvent(obj);
}

function createFristAnimationPooledObject(obj,ani)
{

    obj = sq_GetCNRDObjectToSQRCharacter(obj);

	local ani2 = obj.getVar().GetAnimationMap(ani,ani);
    ani2.setCurrentFrameWithChildLayer(99);
    sq_AnimationProc(ani2);
    sq_drawCurrentFrame(ani2, -10000, -10000, false);
}



function createFristAnimationPooledObjectWithVectorName(obj,ani,vectorName)
{

    obj = sq_GetCNRDObjectToSQRCharacter(obj);

	local ani2 = obj.getVar(vectorName).GetAnimationMap(ani,ani);
    ani2.setCurrentFrameWithChildLayer(99);
    sq_AnimationProc(ani2);
    sq_drawCurrentFrame(ani2, -10000, -10000, false);
}


function createFristAnimationPooledObjectWithSkill(obj,ani,skill)
{

    obj = sq_GetCNRDObjectToSQRCharacter(obj);

    if (skill > 0 && sq_GetSkillLevel(obj, skill ) <= 0)
        return false;

	local ani = obj.getVar().GetAnimationMap(ani,ani);
    ani.setCurrentFrameWithChildLayer(99);
    sq_AnimationProc(ani);
    sq_drawCurrentFrame(ani, -10000, -10000, false);

    return true;
}




function createPreyEquipmentSecondJumpEffect(obj)
{

	local ani = sq_CreateAnimation("","passiveobject/zrr_obj/prey_equipment/jump/aerialjump/aerialjump_04.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 0);
	pooledObj.setCurrentPos(posX  ,obj.getYPos() - 1,obj.getZPos() );
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	
}

function createPreyEquipmentSuddentDropShock_1(obj)
{

	local ani = sq_CreateAnimation("","passiveobject/zrr_obj/prey_equipment/jump/aerialjump/aerialjumpsuper_05.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 0);
	pooledObj.setCurrentPos(posX  ,obj.getYPos() - 1,obj.getZPos() );
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	
}