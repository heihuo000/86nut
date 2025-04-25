function setCustomData_po_control_main(obj, receiveData)
{
	if(!obj)
		return;
	local id = receiveData.readDword();

    if (id == 107)
    {

        local id = receiveData.readDword();
        local pasObjct = sq_GetObjectByObjectId(obj, id);

        obj.getVar("moveTarget").clear_obj_vector();
        if (pasObjct)
            obj.getVar("moveTarget").push_obj_vector( pasObjct );

        local startX = receiveData.readDword();
        local startY = receiveData.readDword();
        local startZ = receiveData.readDword();
        
        local tarX = receiveData.readDword();
        local tarY = receiveData.readDword();
        local tarZ = receiveData.readDword();

        local moveT = receiveData.readDword();

        obj.getVar("parameterVar").clear_vector();
        obj.getVar("parameterVar").push_vector( startX );
        obj.getVar("parameterVar").push_vector( startY );
        obj.getVar("parameterVar").push_vector( startZ );

        obj.getVar("parameterVar").push_vector( tarX );
        obj.getVar("parameterVar").push_vector( tarY );
        obj.getVar("parameterVar").push_vector( tarZ );

        obj.getVar("parameterVar").push_vector( moveT );

    }else if (id == 106)
    {
        local id = receiveData.readDword();
        local pasObjct = sq_GetObjectByObjectId(obj, id);

        obj.getVar("moveTarget").clear_obj_vector();
        if (pasObjct)
            obj.getVar("moveTarget").push_obj_vector( pasObjct );

        local startX = receiveData.readDword();
        local startY = receiveData.readDword();
        local startZ = receiveData.readDword();
        
        local tarX = receiveData.readDword();
        local tarY = receiveData.readDword();
        local tarZ = receiveData.readDword();

        local moveT = receiveData.readDword();

        obj.getVar("parameterVar").clear_vector();
        obj.getVar("parameterVar").push_vector( startX );
        obj.getVar("parameterVar").push_vector( startY );
        obj.getVar("parameterVar").push_vector( startZ );

        obj.getVar("parameterVar").push_vector( tarX );
        obj.getVar("parameterVar").push_vector( tarY );
        obj.getVar("parameterVar").push_vector( tarZ );

        obj.getVar("parameterVar").push_vector( moveT );


    }else if (id == 105)
    {
        local id = receiveData.readDword();
        local pasObjct = sq_GetObjectByObjectId(obj, id);

        obj.getVar("moveTarget").clear_obj_vector();
        if (pasObjct)
            obj.getVar("moveTarget").push_obj_vector( pasObjct );

        local startX = receiveData.readDword();
        local startY = receiveData.readDword();
        local startZ = receiveData.readDword();
        
        local tarX = receiveData.readDword();
        local tarY = receiveData.readDword();
        local tarZ = receiveData.readDword();

        local moveT = receiveData.readDword();

        obj.getVar("parameterVar").clear_vector();
        obj.getVar("parameterVar").push_vector( startX );
        obj.getVar("parameterVar").push_vector( startY );
        obj.getVar("parameterVar").push_vector( startZ );

        obj.getVar("parameterVar").push_vector( tarX );
        obj.getVar("parameterVar").push_vector( tarY );
        obj.getVar("parameterVar").push_vector( tarZ );

        obj.getVar("parameterVar").push_vector( moveT );


    }else if (id == 104)
    {
        local id = receiveData.readDword();
        local moveSelect = receiveData.readDword();
        local moveDistance = receiveData.readDword();
        local moveTime = receiveData.readDword();
        local saveTime = receiveData.readDword();
        local pasObjct = sq_GetObjectByObjectId(obj, id);

        obj.getVar("moveTarget").clear_obj_vector();
        if (pasObjct)
            obj.getVar("moveTarget").push_obj_vector( pasObjct );

        obj.getVar("parameterVar").clear_vector();
        obj.getVar("parameterVar").push_vector( pasObjct.getXPos() );
        obj.getVar("parameterVar").push_vector( pasObjct.getYPos() );
        obj.getVar("parameterVar").push_vector( pasObjct.getZPos() );

        obj.getVar("parameterVar").push_vector( moveSelect );
        obj.getVar("parameterVar").push_vector( moveDistance );
        obj.getVar("parameterVar").push_vector( moveTime );

        obj.getVar("parameterVar").push_vector( saveTime );

//        outPut("dummy/dummy.txt","moveSelect =" + moveSelect + 
//        "\nmoveDistance = " + moveDistance + "\nmoveTime" + moveTime + "\n");
    }else if (id == 103)
    {
        local id = receiveData.readDword();
        local lastX = receiveData.readDword();
        local lastY = receiveData.readDword();
        local lastZ = receiveData.readDword();
        local t = receiveData.readDword();

        local pasObjct = sq_GetObjectByObjectId(obj, id);

        obj.getVar("moveTarget").clear_obj_vector();
        if (pasObjct)
            obj.getVar("moveTarget").push_obj_vector( pasObjct );

        obj.getVar("lastPos").clear_vector();
        obj.getVar("lastPos").push_vector( lastX );
        obj.getVar("lastPos").push_vector( lastY );
        obj.getVar("lastPos").push_vector( lastZ );

        obj.getVar("frameT").clear_vector();
        obj.getVar("frameT").push_vector( t );

        obj.getVar("startPos").clear_vector();
        obj.getVar("startPos").push_vector(pasObjct.getXPos());
        obj.getVar("startPos").push_vector(pasObjct.getYPos());
        obj.getVar("startPos").push_vector(pasObjct.getZPos());

        

    }else if (id == 102)
    {
        local id = receiveData.readDword();
        local lastX = receiveData.readDword();
        local lastY = receiveData.readDword();
        local lastZ = receiveData.readDword();

        local pasObjct = sq_GetObjectByObjectId(obj, id);

        obj.getVar("moveTarget").clear_obj_vector();
        if (pasObjct)
            obj.getVar("moveTarget").push_obj_vector( pasObjct );

        obj.getVar("lastPos").clear_vector();
        obj.getVar("lastPos").push_vector( lastX );
        obj.getVar("lastPos").push_vector( lastY );
        obj.getVar("lastPos").push_vector( lastZ );

        obj.getVar("frame").clear_vector();
        obj.getVar("frame").push_vector(-1);
        obj.getVar("frame").push_vector(-1);
        obj.getVar("frame").push_vector(-1);

        obj.getVar("startPos").clear_vector();
        obj.getVar("startPos").push_vector(pasObjct.getXPos());
        obj.getVar("startPos").push_vector(pasObjct.getYPos());
        obj.getVar("startPos").push_vector(pasObjct.getZPos());

        

    }else if (id == 108)
    {
        local id = receiveData.readDword();
        local lastX = receiveData.readDword();
        local lastY = receiveData.readDword();
        local lastZ = receiveData.readDword();

        local pasObjct = sq_GetObjectByObjectId(obj, id);

        obj.getVar("moveTarget").clear_obj_vector();
        if (pasObjct)
            obj.getVar("moveTarget").push_obj_vector( pasObjct );

        obj.getVar("lastPos").clear_vector();
        obj.getVar("lastPos").push_vector( lastX );
        obj.getVar("lastPos").push_vector( lastY );
        obj.getVar("lastPos").push_vector( lastZ );

        obj.getVar("frame").clear_vector();
        obj.getVar("frame").push_vector(-1);
        obj.getVar("frame").push_vector(-1);
        obj.getVar("frame").push_vector(-1);

        obj.getVar("startPos").clear_vector();
        obj.getVar("startPos").push_vector(pasObjct.getXPos());
        obj.getVar("startPos").push_vector(pasObjct.getYPos());
        obj.getVar("startPos").push_vector(pasObjct.getZPos());

        

    }else if (id == 101)
    {

		local ani = obj.getVar().GetAnimationMap("dummy", 
        "common/monster/dummy.ani"); 
		obj.setCurrentAnimation(ani );

        local id = receiveData.readDword();
        local spinD = receiveData.readDword();
        local spinT = receiveData.readDword();

        local activeObj = sq_GetObjectByObjectId(obj, id);

        obj.getVar("parent").clear_obj_vector();
        obj.getVar("parent").push_obj_vector( activeObj );

        obj.getVar("spinVar").clear_vector();
        obj.getVar("spinVar").push_vector(spinD);
        obj.getVar("spinVar").push_vector(spinT);

        obj.getVar("spinVar").push_vector(obj.getXPos() );
        obj.getVar("spinVar").push_vector(obj.getYPos() );


        outPut("dummy/dummy.txt","spin D = " + spinD + "\nspinT = " + spinT + "\n");

    }else if (id == 100)
    {
        local parentObj = obj.getParent();
		obj.getVar("pos").clear_vector();
		obj.getVar("pos").push_vector( parentObj.getXPos() );
		obj.getVar("pos").push_vector( parentObj.getYPos() );
		obj.getVar("pos").push_vector( parentObj.getZPos() );
//        outPut("dummy/dummy.txt","getParentObj()\n");
    }else if (id == 8)
    {
		local ani = obj.getVar().GetAnimationMap("ID5", 
        "passiveobject/kcontents2/siroco_raid_hard/phase2/boss/siroco_reste/reste_small_star_00/animation/starloop_01.ani"); 
		obj.setCurrentAnimation(ani );

        local mage = sq_GetMyMasterCharacter();
        mage = sq_ObjectToSQRCharacter(mage);	

		obj.getVar("pos").clear_vector();
		obj.getVar("pos").push_vector( obj.getXPos() );
		obj.getVar("pos").push_vector( obj.getYPos() );
		obj.getVar("pos").push_vector( obj.getZPos() );

		obj.getVar("pos").push_vector( mage.getXPos() );
		obj.getVar("pos").push_vector( mage.getYPos() );

		obj.getVar("pos").push_vector( obj.getXPos() + sq_getRandom(-200,200).tointeger() );
		obj.getVar("pos").push_vector( obj.getYPos() + sq_getRandom(-100,100).tointeger() );
        gal_CreateCommonMonsterWarnCircle(obj,obj.getVar("pos").get_vector(3),obj.getVar("pos").get_vector(4),1000025);
    }
    else if (id == 7)
    {
		local ani = obj.getVar().GetAnimationMap("ID4", 
        "monster/kcontents2/siroco_raid_hard/phase2/boss/siroco/animation/octo/octo_waterball.ani"); 
		obj.setCurrentAnimation(ani );
		obj.getVar("pos").clear_vector();
		obj.getVar("pos").push_vector( obj.getXPos() );
		obj.getVar("pos").push_vector( obj.getYPos() );
		obj.getVar("pos").push_vector( obj.getXPos() + sq_getRandom(-400,400).tointeger() );
		obj.getVar("pos").push_vector( obj.getYPos() + sq_getRandom(-150,150).tointeger() );

		gal_CreateCommonMonsterWarnCircle(obj,obj.getVar("pos").get_vector(2),obj.getVar("pos").get_vector(3),1000025);

    }else if (id == 6)
    {
		local ani = obj.getVar().GetAnimationMap("ID3", 
        "passiveobject/kcontents2/siroco_raid_hard/phase2/boss/siroco/mirage_3/animation/mirage_1.ani"); 
		obj.setCurrentAnimation(ani );

        local mage = sq_GetMyMasterCharacter();
        mage = sq_ObjectToSQRCharacter(mage);	

		obj.getVar("pos").clear_vector();
		obj.getVar("pos").push_vector( obj.getXPos() );
		obj.getVar("pos").push_vector( obj.getYPos() );
		obj.getVar("pos").push_vector( mage.getXPos() );
		obj.getVar("pos").push_vector( mage.getYPos() );
		obj.getVar("pos").push_vector( 1 );
        gal_CreateCommonMonsterWarnLine(obj,mage.getXPos(),mage.getYPos(),0);
    }else if (id == 5)
    {
		local ani = obj.getVar().GetAnimationMap("ID2", 
        "passiveobject/kcontents2/siroco_raid_hard/phase2/boss/siroco/mirage_2/animation/mirage_1.ani"); 
		obj.setCurrentAnimation(ani );

        local mage = sq_GetMyMasterCharacter();
        mage = sq_ObjectToSQRCharacter(mage);	

		obj.getVar("pos").clear_vector();
		obj.getVar("pos").push_vector( obj.getXPos() );
		obj.getVar("pos").push_vector( obj.getYPos() );
		obj.getVar("pos").push_vector( mage.getXPos() );
		obj.getVar("pos").push_vector( mage.getYPos() );
		obj.getVar("pos").push_vector( 0 );

        gal_CreateCommonMonsterWarnLine(obj,mage.getXPos(),mage.getYPos(),0);

    }else if (id == 4)
	{

		local ani = obj.getVar().GetAnimationMap("ID1", 
        "passiveobject/actionobject/monster/legend/tayberrs/harbart/harbart_ball_shot_0/animation/harbart_ball_shot_dodge1.ani"); 
		obj.setCurrentAnimation(ani );

		obj.getVar("pos").clear_vector();
		obj.getVar("pos").push_vector( obj.getXPos() );
		obj.getVar("pos").push_vector( obj.getYPos() );
		obj.getVar("pos").push_vector( obj.getZPos() );

		obj.getVar("pos").push_vector( obj.getXPos() + sq_getRandom(-200,200).tointeger() );
		obj.getVar("pos").push_vector( obj.getYPos() + sq_getRandom(-50,50).tointeger() );
		obj.getVar("pos").push_vector( obj.getZPos() + 200 + sq_getRandom(-20,20).tointeger() );



		obj.getVar("state").clear_vector();
		obj.getVar("state").push_vector(0);


		obj.getVar("timeState").clear_vector();
		obj.getVar("timeState").push_vector( 500 + sq_getRandom(100,200).tointeger() );
		obj.getVar("timeState").push_vector( 700 + sq_getRandom(100,1000).tointeger() );
		obj.getVar("timeState").push_vector( 700 + sq_getRandom(100,3000).tointeger() );


	}else if (id == 3)
	{
		local ani = obj.getVar().GetAnimationMap("ID1", 
        "passiveobject/actionobject/monster/legend/tayberrs/harbart/harbart_ball_shot_0/animation/harbart_ball_shot_dodge1.ani"); 

		obj.setCurrentAnimation(ani );
		local road1 = sq_getRandom(50,100).tointeger();

		obj.getVar("pos").clear_vector();
		obj.getVar("pos").push_vector( obj.getXPos() );
		obj.getVar("pos").push_vector( obj.getYPos() );
		obj.getVar("pos").push_vector( obj.getZPos() );
		obj.getVar("pos").push_vector( receiveData.readDword() );
		obj.getVar("pos").push_vector( receiveData.readDword() );
		obj.getVar("pos").push_vector( receiveData.readDword() );
		obj.getVar("pos").push_vector( road1 );


		local lastY = obj.getYPos() + obj.getVar("pos").get_vector(5);

	}else if (id == 1)
	{
		local ani = obj.getVar().GetAnimationMap("ID1", 
        "passiveobject/actionobject/monster/legend/tayberrs/harbart/harbart_ball_shot_0/animation/harbart_ball_shot_dodge1.ani"); 

		obj.setCurrentAnimation(ani );
		obj.setCurrentPos(obj.getXPos(),obj.getYPos(),500);

        local mage = sq_GetMyMasterCharacter();
        mage = sq_ObjectToSQRCharacter(mage);	

		obj.getVar("pos").clear_vector();
		obj.getVar("pos").push_vector( obj.getXPos() );
		obj.getVar("pos").push_vector( obj.getYPos() );
		obj.getVar("pos").push_vector( obj.getZPos() );

		obj.getVar("pos").push_vector( mage.getXPos() );
		obj.getVar("pos").push_vector( mage.getYPos() );

		gal_CreateCommonMonsterWarnCircle(obj,mage.getXPos(),mage.getYPos(),750025);

	}else if (id == 2)
	{
		local ani = obj.getVar().GetAnimationMap("ID1", 
        "passiveobject/actionobject/monster/legend/tayberrs/harbart/harbart_ball_shot_0/animation/harbart_ball_shot_dodge1.ani"); 

		obj.setCurrentAnimation(ani );
		obj.setCurrentPos(obj.getXPos(),obj.getYPos(),0);

		local lastX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 300);

		obj.getVar("pos").clear_vector();
		obj.getVar("pos").push_vector( obj.getXPos() );
		obj.getVar("pos").push_vector( obj.getYPos() );

		obj.getVar("pos").push_vector( lastX );
		obj.getVar("pos").push_vector( obj.getYPos() );
		obj.getVar("pos").push_vector( 250 );

        obj.getVar("time").clear_vector();
        obj.getVar("time").push_vector(0);

        obj.getVar("count").clear_vector();
        obj.getVar("count").push_vector(0);

        obj.getVar("posY").clear_vector();
        obj.getVar("posY").push_vector(sq_getRandom(0,4).tointeger() );//200 + 5 * 50
        obj.getVar("posY").push_vector(sq_getRandom(0,4).tointeger() );//200 + 5 * 50
        if (obj.getDirection() == 0)
        {
            sq_SendCreatePassiveObjectPacketPos(obj, 63672, 0,1520,100 + 50 * obj.getVar("posY").get_vector(0),0 );
            sq_SendCreatePassiveObjectPacketPos(obj, 63672, 0,1520,100 + 50 *obj.getVar("posY").get_vector(1),0 );
        }else{
            sq_SendCreatePassiveObjectPacketPos(obj, 63672, 0,720,100 + 50 * obj.getVar("posY").get_vector(0),0 );
            sq_SendCreatePassiveObjectPacketPos(obj, 63672, 0,720,100 + 50 *obj.getVar("posY").get_vector(1),0 );
        }
	}
//    sq_AddMessage(29002); 

	obj.getVar("id").clear_vector();
	obj.getVar("id").push_vector( id );

}