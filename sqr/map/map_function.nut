DAMAGERATETABLE_LEN_MAX <- 7


function setAblitilyinCrease(obj,skillIndex)
{

    local skill_level = sq_GetSkillLevel(obj, skillIndex);
	if(skill_level > 0)
	{
        if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "map/ap_ablitilyincrease.nut") )
        {
            local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skillIndex, false, 
				"map/ap_ablitilyincrease.nut", true);



//            appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), skillIndex, skill_level);
//            CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, skillIndex, true);

            appendage.getVar("skl").clear_vector();
            appendage.getVar("skl").push_vector(skillIndex);

			local value0 = sq_GetLevelData(obj, skillIndex, 0, skill_level); 
			local value1 = sq_GetLevelData(obj, skillIndex, 1, skill_level); 
			local value2 = sq_GetLevelData(obj, skillIndex, 2, skill_level); 
			local value3 = sq_GetLevelData(obj, skillIndex, 3, skill_level); 
			local value4 = sq_GetLevelData(obj, skillIndex, 4, skill_level); 
			local value5 = sq_GetLevelData(obj, skillIndex, 5, skill_level); 
			local value6 = sq_GetLevelData(obj, skillIndex, 6, skill_level); 
			local value7 = sq_GetLevelData(obj, skillIndex, 7, skill_level); 
			local value8 = sq_GetLevelData(obj, skillIndex, 8, skill_level); 
			local value9 = sq_GetLevelData(obj, skillIndex, 9, skill_level); 
			local value10 = sq_GetLevelData(obj, skillIndex, 10, skill_level); 
			local value11 = sq_GetLevelData(obj, skillIndex, 11, skill_level); 
			local value12 = sq_GetLevelData(obj, skillIndex, 12, skill_level); 
			local value13 = sq_GetLevelData(obj, skillIndex, 13, skill_level); 
			local value14 = sq_GetLevelData(obj, skillIndex, 14, skill_level); 
			local value15 = sq_GetLevelData(obj, skillIndex, 15, skill_level); 
			local value16 = sq_GetLevelData(obj, skillIndex, 16, skill_level); 
			local value17 = sq_GetLevelData(obj, skillIndex, 17, skill_level); 
			local value18 = sq_GetLevelData(obj, skillIndex, 18, skill_level); 
			local value19 = sq_GetLevelData(obj, skillIndex, 19, skill_level); 
			local value20 = sq_GetLevelData(obj, skillIndex, 20, skill_level); 
			local value21 = sq_GetLevelData(obj, skillIndex, 21, skill_level); 
			local value22 = sq_GetLevelData(obj, skillIndex, 22, skill_level); 
			local value23 = sq_GetLevelData(obj, skillIndex, 23, skill_level); 

			local change_appendage = appendage.sq_getChangeStatus("AblitilyIncrease");

			if(!change_appendage)
            {
				change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 
				CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, 
				false, value0, APID_COMMON);

			}
            if (change_appendage){
				change_appendage.clearParameter();
				change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, value0.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, value1.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, value2.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, false, value3.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, value4.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, value5.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, value7.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, false, value8.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_WATER, false, value9.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_FIRE, false, value10.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_LIGHT, false, value11.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_DARK, false, value12.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_WATER, false, value13.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_FIRE, false, value14.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, value15.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, value16.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_STUCK, false, - value17.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_BACK_ATTACK_STUCK_TOLERANCE, false, value18.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, value19.tofloat()*10);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_CAST_SPEED, false, value20.tofloat()*10);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, value21.tofloat()*10);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_HP_MAX, false, value22.tofloat() );
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MP_MAX, false, value23.tofloat() );
			}
        }

    }else{
        CNSquirrelAppendage.sq_RemoveAppendage(obj, "map/ap_ablitilyincrease.nut");		


    }
}




function sendAllMonsterAppend_Poongjintrainingroom(obj)
{
	local objectManager = obj.getObjectManager();

	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if (object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_ACTIVE) )
		{
			local activeObj = sq_GetCNRDObjectToActiveObject(object);
			
			if ( true )
			{
				if (!CNSquirrelAppendage.sq_IsAppendAppendage(activeObj, "map/ap_enemy.nut") )
				{
					local appendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, activeObj, 12, false, "map/ap_enemy.nut", true);
				}
			}
		}
	}

}





function isMouseInScreenArea(obj,x1,y1,x2,y2)
{
	if (isFoldMainScreen != 1)
		return false;

	local mouseX = getMouseXPos(obj);
	local mouseY = getMouseYPos(obj);
	if ( x1 <= mouseX && mouseX <= x1 + x2 && y1 <= mouseY && mouseY <= y1 + y2 )
	{
		TIP_XPOS = x1;
		TIP_YPOS = y1;
		TIP_WIDTH = x2;
		TIP_HEIGHT = y2;

//		local sq_var = obj.getVar();
//		local etc0 = sq_var.GetAnimationMap("PoongjinTraingRoomTipEffect", "sqr/map/poongjintrainingroom/etc_0.ani");
//		sq_AnimationProc(etc0);
//		
//		sq_drawCurrentFrame(etc0, x1,y1, false);

		return true;
	}
	return false;
}

function isMouseInScreenAreaIgnore(obj,x1,y1,x2,y2)
{

	local mouseX = getMouseXPos(obj);
	local mouseY = getMouseYPos(obj);
	if ( x1 <= mouseX && mouseX <= x1 + x2 && y1 <= mouseY && mouseY <= y1 + y2 )
	{
		return true;
	}
	return false;
}



function onKeyPressEvent(obj)
{
	if (sq_IsKeyDown(90, ENUM_SUBKEY_TYPE_ALL) )
	{
			if (obj.isMessage()) {

			}
		clearAllSkillCoolTime(obj);
	}else if (sq_IsKeyDown(91, ENUM_SUBKEY_TYPE_ALL) )
	{
		initCharacterInPoonTrainGroom(obj);
	}else if (sq_IsKeyDown(89, ENUM_SUBKEY_TYPE_ALL) )
	{
			if (obj.isMessage()) {

			}
		killAllMonster(obj);
	}
}




function onProc_Poongjintrainingroom(obj)
{
	if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "map/ap_escapist.nut") )
	{
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 12, false, "map/ap_escapist.nut", true);
	}
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "map/ap_escapist2.nut") )
    {
        local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 12, false, 
                "map/ap_escapist2.nut", true);
    }

}



function killAllFriendWithoutMyself(obj)
{
    local objectManager = obj.getObjectManager();

    for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
    {
        local object = objectManager.getCollisionObject(i);
        if (object && !obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_ACTIVE) )
        {
            local activeObj = sq_GetCNRDObjectToActiveObject(object);
            if ( !isSameObject(obj, activeObj) )
            {
                activeObj.setHp(0 , null, true);
            }
        }
    }
//    obj.sq_SendCreatePassiveObjectPacket(24357, 0, 0, 1, 0);
}

function drawDamageRateTable(obj,x,y)
{
    local apd = obj.GetSquirrelAppendage("map/ap_escapist2.nut");
    if (apd)
    {
        local damaVectorSize = apd.getVar("damageNum").size_vector();


        for (local i = damaVectorSize - DAMAGERATETABLE_LEN_MAX;i < damaVectorSize;i++)
        {
            if (i < 0)
            {
                
            }else{
                local i2 = i % DAMAGERATETABLE_LEN_MAX;
                
                drawNumberCount(obj,x - 100 + 70 ,y - 20 + 10 + 25 * i2 ,i + 1);
                drawNumberRate(obj, x - 100 + 170,y - 20 + 10 + 25 * i2 , apd.getVar("damageNum").get_vector(i) );
            }
        }


    }

}

function drawNumberCount(obj,x,y,value)
{

        local numImage = null;
        local numImage2 = null;
        local num = value;
        local geNum = num % 10;
        local shiNum = (num / 10)%10;
        numImage = returnBobyNumber(obj,geNum);
        numImage2 = returnBobyNumber(obj,shiNum);
        sq_AnimationProc(numImage);
        sq_drawCurrentFrame(numImage, x + 48, y + 23, false);
        sq_AnimationProc(numImage2);
        sq_drawCurrentFrame(numImage2, x + 40, y + 23, false);
}



function initCharacterInPoonTrainGroom(obj)
{

		obj.sendSetMpPacket( obj.getMpMax() );
        obj.setHp(obj.getHpMax() , null, true);
        bloodValue = 1000;
        baojiIncrate = 0;
        shuxIncrate = 0;
        shuxBuffIncrate = 0;
        speedIncrate = 0;
        damageBounsPoongjintrainingroom = 0;
        setCharacterBuffAppend(obj);



}




function drawMapAndDungeon(obj)
{
	drawNumber(obj,26,55, sq_GetDuegonIndex( sq_GetDungeonByStage( sq_GetGlobaludpModuleStage() ) ) );
	drawNumber(obj,26,105, sq_GetMapIndex( sq_GetGlobaludpModuleStage() ) );
	drawNumber(obj,26,155, obj.getXPos() );
	drawNumber(obj,26,205, obj.getYPos() );
	drawNumber(obj,26,255, getMouseXPos(obj) );
	drawNumber(obj,26,305, getMouseYPos(obj) );


}



function sendAllMonsterAppend_Poongjintrainingroom(obj)
{
        local objectManager = obj.getObjectManager();

        for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
        {
            local object = objectManager.getCollisionObject(i);
            if (object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_ACTIVE) )
            {
                local activeObj = sq_GetCNRDObjectToActiveObject(object);
                
                if ( true )
                {

                    if (!CNSquirrelAppendage.sq_IsAppendAppendage(activeObj, "map/ap_enemy.nut") )
                    {
                        local appendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, activeObj, 12, false, 
                                "map/ap_enemy.nut", true);
                    }


                }
            }
        }

}


function setCharacterBuffAppend(obj)
{

        CNSquirrelAppendage.sq_RemoveAppendage(obj, "map/ap_escapist.nut");		
        local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 12, false, 
                "map/ap_escapist.nut", true);

        local change_appendage = appendage.sq_getChangeStatus("mapBuff");

        if(!change_appendage)
        {
             change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 
             CHANGE_STATUS_TYPE_MAGICAL_ATTACK, 
             false, 0, APID_COMMON);

        }

        if(change_appendage)
        {

            change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, baojiIncrate.tofloat() );
            change_appendage.addParameter( CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, baojiIncrate.tofloat() );

			change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, shuxIncrate.tofloat());
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, shuxIncrate.tofloat());
			change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, shuxIncrate.tofloat());
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, false, shuxIncrate.tofloat());
//shuxIncrate
//shuxBuffIncrate
//speedIncrate
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, shuxBuffIncrate.tofloat());
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, false,  shuxBuffIncrate.tofloat());
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_WATER, false, shuxBuffIncrate.tofloat());
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_FIRE, false,  shuxBuffIncrate.tofloat());

			change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, speedIncrate.tofloat()*10);
			change_appendage.addParameter(CHANGE_STATUS_TYPE_CAST_SPEED, false, speedIncrate.tofloat()*10);
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, speedIncrate.tofloat()*10);

        }

}

function clearAllSkillCoolTime(obj)
{
        for (local i = 0; i < 255; i+=1)
        {
            obj.endSkillCoolTime(i);
        }
}


function killAllMonster(obj)
{
        local objectManager = obj.getObjectManager();

        for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
        {
            local object = objectManager.getCollisionObject(i);
            if (object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_ACTIVE) )
            {
                local activeObj = sq_GetCNRDObjectToActiveObject(object);
                
                if ( true )
                {
                    activeObj.setHp(0 , null, true);
                }
            }
        }
}


function getMouseXPos(obj)
{
    return IMouse.GetXPos();
}

function getMouseYPos(obj)
{
    return IMouse.GetYPos();
}



function isRightMouse(obj)
{
	local stage = sq_GetObjectManagerStage(obj);
	local control = stage.getMainControl();		
	
	if (control.IsRBDown())
        return true;
    return false;
}



function drawNumberRate(obj,x,y,value)
{

        local numImage = null;
        local numImage2 = null;
        local numImage3 = null;
        local numImage4 = null;
        local numImage5 = null;
        local numImage6 = null;
        local numImage7 = null;
        local numImage8 = null;
        local numImage9 = null;
        local numImage10 = null;
        local numImage11 = null;
        local numImage12 = null;

        local num = value;
        local num0 = num % 10;
        local num1 = (num / 10)%10;
        local num2 = (num / 100)%10;
        local num3 = (num / 1000)%10;
        local num4 = (num / 10000)%10;
        local num5 = (num / 100000)%10;
        local num6 = (num / 1000000)%10;
        local num7 = (num / 10000000)%10;
        local num8 = (num / 100000000)%10;
        local num9 = (num / 1000000000)%10;
        local num10 =(num / 10000000000)%10;

        numImage = returnBobyNumber(obj,num0);
        numImage2 = returnBobyNumber(obj,num1);
        numImage3 = returnBobyNumber(obj,num2);
        numImage4 = returnBobyNumber(obj,num3);
        numImage5 = returnBobyNumber(obj,num4);
        numImage6 = returnBobyNumber(obj,num5);
        numImage7 = returnBobyNumber(obj,num6);
        numImage8 = returnBobyNumber(obj,num7);
        numImage9 = returnBobyNumber(obj,num8);
        numImage10 = returnBobyNumber(obj,num9);
        numImage11 = returnBobyNumber(obj,num10);


        sq_AnimationProc(numImage);
        sq_drawCurrentFrame(numImage, x + 48, y + 23, false);
        sq_AnimationProc(numImage2);
        sq_drawCurrentFrame(numImage2, x + 40, y + 23, false);
        sq_AnimationProc(numImage3);
        sq_drawCurrentFrame(numImage3, x + 32, y + 23, false);
        sq_AnimationProc(numImage4);
        sq_drawCurrentFrame(numImage4, x + 24, y + 23, false);
        sq_AnimationProc(numImage5);
        sq_drawCurrentFrame(numImage5, x + 16, y + 23, false);
        sq_AnimationProc(numImage6);
        sq_drawCurrentFrame(numImage6, x + 8, y + 23, false);
        sq_AnimationProc(numImage7);
        sq_drawCurrentFrame(numImage7, x , y + 23, false);
        sq_AnimationProc(numImage8);
        sq_drawCurrentFrame(numImage8, x - 8, y + 23, false);
        sq_AnimationProc(numImage9);
        sq_drawCurrentFrame(numImage9, x - 16, y + 23, false);
        sq_AnimationProc(numImage10);
        sq_drawCurrentFrame(numImage10, x - 24, y + 23, false);
        sq_AnimationProc(numImage11);
        sq_drawCurrentFrame(numImage11, x - 32, y + 23, false);
}