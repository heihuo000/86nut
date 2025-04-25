


function getCurrentStringAni(obj,aniEncode,aniName)
{

	local charAni = obj.getVar().GetAnimationMap("MonsterCharAni_" + aniEncode + "" + aniName, 
	"common/monster/monster_char/"+ aniName +".ani");

	return charAni;
}

function drawMonsterNewActTriggerStatusEffect(obj,monster,x,y,subX)
{

	local apd = monster.GetSquirrelAppendage("ui/ap_monster_ui2.nut");
	local size = apd.getVar("newActTriggerIconLst").size_vector(0);
	if (size <= 0)
		return false;
	local offsetX = 0;
	for(local i = 0;i<size;i++)
	{
		local statusID = apd.getVar("newActTriggerIconLst").get_vector(i);

		if (statusID > 0)
		{
			local iconAni = obj.getVar().GetAnimationMap("MonsterIconEtcMotion_" + statusID, 
			"common/monster/new_state_icon/"+ statusID +".ani");
			sq_AnimationProc(iconAni);
			sq_drawCurrentFrame(iconAni,x + offsetX, y, false);
			offsetX += 20;
			//outPutEx("dummy/dummy.txt","s = " + statusID + "\n");
		}
	}
	
}


function onJumpToDisplayPlayerMarkEffect(obj)
{

    local zPos = obj.getZPos();

    if (zPos > 0)
    {

        if (obj.getVar("CommonPlayerMarkEffect").size_vector() <= 0)
        {

            local plod = createCommonPlayerMarkEffect(obj);
            obj.getVar("CommonPlayerMarkEffectObj").clear_obj_vector();
            obj.getVar("CommonPlayerMarkEffectObj").push_obj_vector( plod );
            obj.getVar("CommonPlayerMarkEffect").clear_vector();
            obj.getVar("CommonPlayerMarkEffect").push_vector(1);

        }else if (obj.getVar("CommonPlayerMarkEffect").get_vector(0) == 1)
        {

            local tar = obj.getVar("CommonPlayerMarkEffectObj").get_obj_vector(0);
            if (tar)
                tar.setCurrentPos(obj.getXPos(),obj.getYPos(),0);
        }else if (obj.getVar("CommonPlayerMarkEffect").get_vector(0) == 0)
        {

            local plod = createCommonPlayerMarkEffect(obj);
            obj.getVar("CommonPlayerMarkEffectObj").clear_obj_vector();
            obj.getVar("CommonPlayerMarkEffectObj").push_obj_vector( plod );
            obj.getVar("CommonPlayerMarkEffect").set_vector(0,1);

        }

    }else{

        if (obj.getVar("CommonPlayerMarkEffect").size_vector() > 0)
        {
            if (obj.getVar("CommonPlayerMarkEffect").get_vector(0) == 1)
            {
                obj.getVar("CommonPlayerMarkEffect").set_vector(0,0);
                local tar = obj.getVar("CommonPlayerMarkEffectObj").get_obj_vector(0);
                if (tar)
                    tar.setValid(false);
            }
        }
    }

}


function createCommonPlayerMarkEffect(obj)
{

	local ani = sq_CreateAnimation("","common/newstylecomboui/flyingplayermark.ani");
	local pooledObj = sq_CreatePooledObject(ani,false);
	sq_AddObject(obj,pooledObj,2,false);	
	return pooledObj;

}


function drawCurrentSkillCoolTimeUI(obj)
{


	local skillmgr = obj.getSkillManager();
	local apd = getComboUiAppendage(obj);
	if (!apd)
		return false;
		
	local currentT = apd.getTimer().Get();
	local offsetX = 0;
	local offsetY = 0;
	
	if (apd.getVar("saveSkillOkTime").size_vector() == 0)
	{
		apd.getVar("saveSkillOkTime").clear_vector();
		for (local i = 0;i < 255;i++)
			apd.getVar("saveSkillOkTime").push_vector(-1);

		apd.getVar("saveCurrentSklTime").clear_vector();
		for (local i = 0;i < 255;i++)
			apd.getVar("saveCurrentSklTime").push_vector(-1);
	}
	
	for (local i = 0;i < 255;i++)
	{
		local skl = sq_GetSkill(obj,i);
		if (skl)
		{
			local isCool = skl.isInCoolTime();
			if (isCool)
			{
				if (apd.getVar("saveSkillOkTime").get_vector(i) == -1)
				{
					apd.getVar("saveSkillOkTime").set_vector(i,currentT);
					apd.getVar("saveCurrentSklTime").set_vector(i,skl.getCoolTime(obj, -1) );
				}else
				{
					local id = skillmgr.getSlotindex(i);
					if ((id >= 0 && id <= 7))
					{
					
						local coolTime = apd.getVar("saveCurrentSklTime").get_vector(i);
						local curCoolTime = coolTime - (currentT - apd.getVar("saveSkillOkTime").get_vector(i));
						if (curCoolTime >= 10000)
							drawSirocoUINumberWithPos(obj,550 + id * 30,570,curCoolTime / 1000);
						else
							drawSirocoUINumberWithPosPoint(obj,550 + id * 30,570,curCoolTime / 100);
					}else if ((id >= 198 && id <= 203))
					{
						local id = id - 198;
						local coolTime = apd.getVar("saveCurrentSklTime").get_vector(i);
						local curCoolTime = coolTime - (currentT - apd.getVar("saveSkillOkTime").get_vector(i));
						if (curCoolTime >= 10000)
							drawSirocoUINumberWithPos(obj,550 + id * 30,532,curCoolTime / 1000);
						else
							drawSirocoUINumberWithPosPoint(obj,550 + id * 30,532,curCoolTime / 100);
					}else{
					
						local coolTime = apd.getVar("saveCurrentSklTime").get_vector(i);
						local curCoolTime = coolTime - (currentT - apd.getVar("saveSkillOkTime").get_vector(i));
					
						local lastX = 520 + offsetX;
						local lastY = 485 + offsetY;
						sq_DrawSkillIcon(skl, lastX, lastY, sq_ALPHA(100) );

						if (curCoolTime >= 10000)
							drawSirocoUINumberWithPos(obj,lastX + 11,lastY + 10,curCoolTime / 1000);
						else
							drawSirocoUINumberWithPosPoint(obj,lastX + 11,lastY + 10,curCoolTime / 100);

						if (offsetX <= 150)
							offsetX += 30;
						else
						{
							offsetX = 0;
							offsetY -= 30;
						}
					}
				
				}
			}else
			{
				if (apd.getVar("saveSkillOkTime").get_vector(i) != -1)
				{
					apd.getVar("saveSkillOkTime").set_vector(i,-1);
				}else
				{
				
				}
			
			}	
			
		}
	}
	
}







function drawSirocoUINumberWithPos(obj,x,y,var)
{

    if (var == 0)
    {
        local ani = getSirocoUINumber(obj,0);
        sq_AnimationProc(ani);
        sq_drawCurrentFrame(ani,x, y, false);
        return false;
    }

    local saveVar = var;
    local saveVar2 = var;
    local offsetX = 0;
  
    local centerX = 0;
  
  
    while (saveVar2 > 0)
    {
        saveVar2 = saveVar2 / 10;
        centerX += 5;
    }
  
    while (saveVar > 0)
    {
        local v = saveVar % 10;
        local ani = getSirocoUINumber(obj,v);
        sq_AnimationProc(ani);
        sq_drawCurrentFrame(ani,x + offsetX, y, false);
        offsetX = offsetX - 5;
        saveVar = saveVar / 10;
  
    }



}





function drawSirocoUINumberWithPosPoint(obj,x,y,var)
{

    if (var < 0)
    {
        return false;
    }

    local offsetX = 0;

    local centerX = 0;
  
	
	local shi = var / 10;
	local ge = var % 10;
  
    local ani = getSirocoUINumber(obj,ge);
    sq_AnimationProc(ani);
    sq_drawCurrentFrame(ani,x + offsetX, y, false);
    offsetX = offsetX - 7;

    ani = getSirocoUINumber(obj,shi);
    sq_AnimationProc(ani);
    sq_drawCurrentFrame(ani,x + offsetX, y, false);
  
  /*
    while (saveVar > 0)
    {
        local v = saveVar % 10;
        local ani = getSirocoUINumber(obj,v);
        sq_AnimationProc(ani);
        sq_drawCurrentFrame(ani,x + offsetX, y, false);
        offsetX = offsetX - 7;
        saveVar = saveVar / 10;
  
    }
   */

}




function getSirocoUINumber(obj,var)
{
    local numImage = null;
    local sq_var = obj.getVar();
    var = var % 10;

    numImage = sq_var.GetAnimationMap("SirocoUINumber" + var, 
    "common/newstylecomboui/siroco_ui/number/" + var + ".ani");

    return numImage;
}












function setMonsterFristReadWithDungeonEffect(parentObj)
{

	local stage = sq_GetGlobaludpModuleStage();
	local dungeon = sq_GetDungeonByStage(stage);
	local dungeonIndex = sq_GetDuegonIndex(dungeon);	

    local len = ::GlobalDungeonFristReadAniList.len();
    for (local i = 0;i < len;i++)
    {
        local mobList = ::GlobalDungeonFristReadAniList[i];	
        if (dungeonIndex == mobList[0])
        {
            local lst = mobList[1];
            local i = 0;
            while ( lst[i] != -1)
            {

                createFristAnimationPooledObject(parentObj,lst[i] );
                //outPut("dummy/dummy.txt","setFristSuccess\n");
                i++;
            }		
 
        }
    }





}




function setMonsterFristReadWithMapEffect(appendage)
{

    if (!appendage)
        return false;
	local parentObj = appendage.getParent();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);

	local objectManager = parentObj.getObjectManager();
    if (objectManager)
    {
        for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
        {
            local object = objectManager.getCollisionObject(i);
            local id = object.getCollisionObjectIndex(object);
            if (object && object.isObjectType(OBJECTTYPE_ACTIVE))
            {
                local object = sq_GetCNRDObjectToActiveObject(object);
                local id = object.getCollisionObjectIndex(object);
                if (id > 0)
                {

                    local len = ::GlobalMonsterFristReadAniList.len();
                    for (local i = 0;i < len;i++)
                    {
                        local mobList = ::GlobalMonsterFristReadAniList[i];	
                        if (id == mobList[0])
                        {
                            local lst = mobList[1];
                            local i = 0;
                            while ( lst[i] != -1)
                            {
                                    //outPut("dummy/dummy.txt","l:" + lst[i]+"\n");
                                    createFristAnimationPooledObject(parentObj,lst[i] );
                                    //outPut("dummy/dummy.txt","setFristSuccess\n");
                                    i++;
                            }		
 
                        }
                    }

                }
            }
        }
    }

}





//àâöÇÜÅÖôíûÝáüùÍý
function setEquipmentIrys(obj)
{
        if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "ui/equipment_effect.nut") )
        {
            local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 169, false, 
				"ui/equipment_effect.nut", true);

        }


}

function checkUpNewStyleUINone(obj)
{
    local apd = getComboUiAppendage(obj);
    if (apd.getVar("printID").get_vector(0) == 0 && 
        apd.getVar("printID").get_vector(1) == 0 &&
        apd.getVar("printID").get_vector(2) == 0 &&
        apd.getVar("printID").get_vector(3) == 0 &&
        apd.getVar("printID").get_vector(4) == 0 &&
        apd.getVar("printID").get_vector(5) == 0)
        return true;
    return false;

}



function setDamageFontJumpEffectWithFontID(target,saveID)
{

	local i = 0;
	while (GlobalNewDamageFontObjectList[i] != -1)
	{
		
		local damageFont = GlobalNewDamageFontObjectList[i];
		local id2 = damageFont.damageFontID;
		if (id2 == saveID)
		{
			local parentObj = damageFont.parentObj;
			if (!parentObj || isSameObject(parentObj, target) )
			{
		
				local zPos = damageFont.zPos;
				damageFont.setAxisPos(2,zPos + sq_getRandom(15,25).tointeger() );
			}
			
		}
		i++;
	}
}


function setDamageFontJumpEffect(target)
{

	local i = 0;
	while (GlobalNewDamageFontObjectList[i] != -1)
	{
		
		local damageFont = GlobalNewDamageFontObjectList[i];
		local id2 = damageFont.damageFontID;
		if (id2 != -1)
		{
			local parentObj = damageFont.parentObj;
			if (!parentObj || isSameObject(parentObj, target) )
			{
		
				local zPos = damageFont.zPos;
				damageFont.setAxisPos(2,zPos + sq_getRandom(15,25).tointeger() );
			}
			
		}
		i++;
	}
}




function setDamageRateJumpEffect(obj,absoluteRate_var,apd)
{
    local dummy_i = 0;
    local last = -1;
    if (absoluteRate_var <= 0)
    {

        for (;dummy_i < 250 ;dummy_i++)
        {
            local atk = apd.getVar("damageNum").get_vector(4 * dummy_i);
            if (atk <= 0)
                apd.getVar("nextDamageTarget").set_vector(0,dummy_i);

            local damageNumXPos = apd.getVar("damageNum").get_vector(4 * dummy_i + 2) / 10;
            local damageNumYPos = apd.getVar("damageNum").get_vector(4 * dummy_i + 3) / 1000;
            local damageNumZPos = apd.getVar("damageNum").get_vector(4 * dummy_i + 3) % 1000;
            
            local offsetX = damageNumXPos - obj.getXPos();
            local offsetY = damageNumYPos - obj.getYPos();

            if (offsetX * offsetX + offsetY * offsetY <= 150 * 150)
            {
                local jumpHeight = 20;
                apd.getVar("damageNum").set_vector(4 * dummy_i + 3,
                damageNumYPos * 1000 + (damageNumZPos + jumpHeight) % 1000);
            }
                    

        }


    }else{
        for (;dummy_i < 250 ;dummy_i++)
        {
            local atk = apd.getVar("damageNum").get_vector(4 * dummy_i);
            if (atk <= 0)
                apd.getVar("nextDamageTarget").set_vector(0,dummy_i);
        }
    }
    return last;
}





function drawAntonScheduleNumber(obj,var)
{

}







function setNewStyleRankFlag(obj,flag)
{
    local apd = getComboUiAppendage(obj);
    if (apd.getVar("numFlag").get_vector(flag) == 0)
    {
        apd.getVar("numFlag").set_vector(flag,1);
        apd.getVar("scoreSize").set_vector(0,1);
        apd.getVar("scoreSize").set_vector(1,100);
        apd.getVar("scoreSize").set_vector(2,apd.getTimer().Get() );
    }
}

//í»ÔÑã¦ö¢üùÍý
function setOverItemObject(obj)
{

    local apd = getComboUiAppendage(obj);
    if (apd && obj.sq_GetState() == 0)
    {
        local flagPosX = apd.getVar("posFlag").get_vector(0);
        local flagPosY = apd.getVar("posFlag").get_vector(1);

        if (flagPosX == obj.getXPos() && flagPosY == obj.getYPos() )
        {
            return false;
        }else{

            apd.getVar("posFlag").set_vector(0, obj.getXPos() );
            apd.getVar("posFlag").set_vector(1, obj.getYPos() );

            local itemObj = null;
            local objMgr = obj.getObjectManager();
            if (objMgr)
            {
//                itemObj = objMgr.getMeetItemObject(IMouse.GetXPos(), IMouse.GetYPos());
                obj.procGetItem();
//                obj.sq_PlaySound("GET_ITEM");
            }
            
            return itemObj;

        }
    }
    return null;
}






function setCharacterComboUiAppendage(obj)
{
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "ui/ap_ui.nut"))
    {
        local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 169, false,
        "ui/ap_ui.nut", true);

    }

}


function getComboUiAppendage(obj)
{
    return obj.GetSquirrelAppendage("ui/ap_ui.nut");
}




function createDamageRateByTargetAndIDWithNextTarget(obj,target,id,number,x,y,z,i)
{


    local appendage = getComboUiAppendage(obj);

    if (!appendage || !obj || !target )
        return false;

    local currT = appendage.getTimer().Get();

            
    i = i % 250;
    appendage.getVar("damageNum").set_vector(4 * i,number);
    appendage.getVar("damageNum").set_vector(4 * i + 1,currT);
    appendage.getVar("damageNum").set_vector(4 * i + 2,(target.getXPos() + x ) * 10 + id );
    appendage.getVar("damageNum").set_vector(4 * i + 3,(target.getYPos() + y ) * 1000 + target.getZPos() + z );
    return true;
}



function setStatusDamageRateSet(appendage,hp,attacker)
{
	local obj = appendage.getParent();
    local sourceObj = sq_GetMyMasterCharacter();
	sourceObj = sq_GetCNRDObjectToSQRCharacter(sourceObj);
    local apd = getComboUiAppendage(sourceObj);
    local currT = apd.getTimer().Get();
    if (!apd)
        return false;

    local parentObj = sq_GetCNRDObjectToActiveObject(obj);


    if (parentObj.getHp() > hp )
    {

        local rate = appendage.getVar("damageRate").get_vector(1);
        appendage.getVar("damageRate").set_vector(1,rate + (parentObj.getHp() - hp) );


        local statusID = appendage.getVar("t").get_vector(0);

        if (statusID == 2)
        {

            local etc = parentObj.getHp() - hp;
            local var = appendage.getVar("damageRateLight").get_vector(1);
            appendage.getVar("damageRateLight").set_vector(1,var + etc);
            var = appendage.getVar("damageRateLight").get_vector(1);


            local rate = appendage.getVar("damageRateLight").get_vector(0);
            if (var > rate)
            {
                //setDamageRateJumpEffect(sourceObj,0,apd);
                createDamageRateByTargetAndID(sourceObj,parentObj,3,var - rate,75,0,0);

                appendage.getVar("damageRateLight").clear_vector();
                appendage.getVar("damageRateLight").push_vector( 0 );
                appendage.getVar("damageRateLight").push_vector( 0 );

            }
        }else if (statusID != 1)
        {
            local etc = parentObj.getHp() - hp;
            etc -= appendage.getVar("BlockDamageRate").get_vector(0);

            if (etc > 0)
            {
                local i = 0;

                for (;i < 1600 ;i+=4)
                    if (apd.getVar("damageNum").get_vector(i) == 0)
                        break;

                i = i % 1600;
                apd.getVar("damageNum").set_vector(i,etc);
                apd.getVar("damageNum").set_vector(i + 1,currT);
                apd.getVar("damageNum").set_vector(i + 2,obj.getXPos() * 10 + 5 );
                apd.getVar("damageNum").set_vector(i + 3,obj.getYPos() * 1000 + obj.getZPos() );



            }
        }

    }

}   



function createMainDamageRate(apd,attacker,obj,newHpDamage,absoluteRate_var,i,r)
{

    if (!apd || !attacker || !obj || newHpDamage <= 0)
        return false;


    local xPos = obj.getXPos() + r;
    local i = apd.getVar("nextDamageTarget").get_vector(0);

    local currT = apd.getTimer().Get();


    local abPosX = apd.getVar("absoluteRateXPos").get_vector(0);

    i = (i % 250) * 4;
    apd.getVar("damageTimeE").set_vector(1,i / 4);

    apd.getVar("damageNum").set_vector(i,newHpDamage);
    apd.getVar("damageNum").set_vector(i + 1,currT);

    local randX = obj.getXPos() * 10 + absoluteRate_var * 40 - abPosX;

    local lastX = xPos * 10;
    local lastY = obj.getYPos() + 15 * absoluteRate_var + 100 ;
    local lastZ = obj.getZPos() + 50;
    local id = -1;
    if (absoluteRate_var > 0)
    {
        apd.getVar("damageNum").set_vector(i + 2,lastX + 8 );
    }else if (isEnemyBack(attacker,obj) )
    {
        apd.getVar("damageNum").set_vector(i + 2,lastX + 2 );
    }else
    {
        apd.getVar("absoluteRateXPos").set_vector(0,(abPosX + 20) % 120);
        apd.getVar("damageNum").set_vector(i + 2,lastX + 0 );
        
    }

    apd.getVar("damageNum").set_vector(i + 3, lastY * 1000 + lastZ );
    apd.getVar("nextDamageTarget").set_vector(0,i + 1);

    return xPos;
}




function onMonsterUndamageableEffect(appendage)
{

    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();

	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}


    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

    if(!parentObj.isInDamagableState(parentObj) && !parentObj.isDead())
    {

        local currT = appendage.getTimer().Get();

        local countT = currT % 1000;

        parentObj.setCustomOutline(false, 0, true, 2);


        local a = {
          maxA = 150,
          minA = 50
        };

        if (countT < 500)
        {
            local rgb = sq_RGBA(255,255,255,sq_GetAccel(a.minA, a.maxA, countT , 500, true) );
            parentObj.setCustomOutline(true, rgb, false, 1);
        }else{
            local rgb = sq_RGBA(255,255,255,sq_GetAccel(a.maxA, a.minA, countT - 500 , 500, true) );
            parentObj.setCustomOutline(true, rgb, false, 1);
        }

        //while


    }else if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/blood/ap_blood_gauge.nut"))
    {

        local rgb = sq_RGBA(0,0,155,100);
        parentObj.setCustomOutline(true, rgb, false, 1);

    }else if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/jummp_dummy/ap_hold.nut"))
    {

        local rgb = sq_RGBA(0,0,255,200);
        parentObj.setCustomOutline(true, rgb, false, 1);

    }
    else{
        parentObj.setCustomOutline(false, 0, true, 2);
    }

}


function setCharacterComboEffect(appendage)
{
    if (!appendage)
        return false;

    local currT = appendage.getTimer().Get();
    appendage.getVar("comboNum").set_vector(0,getComboNum(appendage) + 1);

    if (appendage.getVar("comboNum").get_vector(1) == 0)
    {

        if (appendage.getVar("comboNum").get_vector(0) >= 2)
        {
            appendage.getVar("comboNum").set_vector(1,1);
            appendage.getVar("comboNum").set_vector(2,currT);
            appendage.getVar("comboNum").set_vector(3,200);
            if (isComboUINumber(appendage,1))
                printIDAddNumber(appendage,1);
        }


    }else if (appendage.getVar("comboNum").get_vector(1) == 1)
    {
        appendage.getVar("comboNum").set_vector(2,currT);
    }

}

function setCharacterSkyComboEffect(appendage,damager)
{
    if (!appendage || !damager)
        return false;
    local currT = appendage.getTimer().Get();

    if (damager.getZPos() > 0)
    {
        appendage.getVar("FcomboNum").set_vector(0,appendage.getVar("FcomboNum").get_vector(0) + 1);
        if (appendage.getVar("FcomboNum").get_vector(1) == 0)
        {
            appendage.getVar("FcomboNum").set_vector(1,1);
            appendage.getVar("FcomboNum").set_vector(2,currT);
        if (isComboUINumber(appendage,2))
            printIDAddNumber(appendage,2);
        }else if (appendage.getVar("FcomboNum").get_vector(1) == 1)
        {
            appendage.getVar("FcomboNum").set_vector(2,currT);
        }

    }

}

function checkUpCharacterBackHit(appendage,realAttacker,damager)
{

    if (!appendage || !damager)
        return false;

    if (isEnemyBack(realAttacker,damager))
    {

        printIDAddNumber(appendage,4);
        local lastRate = appendage.getVar("yellowNum").get_vector(0);
        appendage.getVar("yellowNum").set_vector(0,lastRate + 250);
    }

}


function setHitObjectAppendageEffect(appendage,damager)
{

	local parentObj = appendage.getParent();
    if (!parentObj)
        return false;
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(damager, "ui/ap_monster_ui.nut") )
    {
        local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, parentObj, 12, false, 
        "ui/ap_monster_ui.nut", true);
    }

    return false;

}



function setSkillFristAnimationByAppendage(appendage)
{
    if (!appendage)
        return false;

	local parentObj = appendage.getParent();
    if (!parentObj)
        return false;
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);

    if (appendage.getVar("SklFristLoadSkillEffectFlag").get_vector(0) == 0)
    {

        onDungeonCharacterStartEvent(parentObj);
        setCharacterFristAnimation(parentObj);

        appendage.getVar("SklFristLoadSkillEffectFlag").set_vector(0,1);
    }


}





function setKillPowerTimeEvent(appendage)
{

	if(!appendage) {
		return;
	}

    local currT = appendage.getTimer().Get();


    if (appendage.getVar("killRateFlag").get_vector(0) == 1)
    {
        local t = currT - appendage.getVar("killRateFlag").get_vector(2);
        if (t >= 2000)
        {
            local lastRate = appendage.getVar("yellowNum").get_vector(0);
            appendage.getVar("yellowNum").set_vector(0,
            lastRate + appendage.getVar("killRateFlag").get_vector(1) );

            createGreatWithAudioEffect(appendage, appendage.getVar("killRateFlag").get_vector(1) );

            deleteNumber(appendage,5);
            appendage.getVar("killRateFlag").clear_vector();
            appendage.getVar("killRateFlag").push_vector(0);
            appendage.getVar("killRateFlag").push_vector(0);
            appendage.getVar("killRateFlag").push_vector(0);
        }else{

        }
    }

}



function setComboUIRate(appendage,damager)
{
    local combo = appendage.getVar("comboNum").get_vector(0);
    local fcombo = appendage.getVar("FcomboNum").get_vector(0);

    local lastRate = appendage.getVar("yellowNum").get_vector(0);

    if (combo < 20)
        lastRate += 10;
    else if (combo < 50)
        lastRate += 12;
    else if (combo < 150)
        lastRate += 15;
    else if (combo < 500)
        lastRate += 20;
    else
        lastRate += 25;


    if (fcombo < 5)
        lastRate += 15;
    else if (fcombo < 10)
        lastRate += 17;
    else if (fcombo < 20)
        lastRate += 28;
    else if (fcombo < 30)
        lastRate += 30;
    else
        lastRate += 36;

    return lastRate;

}



function getComboNum(appendage)
{
    return appendage.getVar("comboNum").get_vector(0);
}



function isComboUINumber(appendage,num)
{
    for (local i = 0;i <= 4;i++)
    {
        if (appendage.getVar("printID").get_vector(i) == num )
        {
            return false;
        }
    }
    return true;
}




function deleteNumber(appendage,num)
{
    local k = 0;

    for (local i = 0;i <= 4;i++)
    {
        if (appendage.getVar("printID").get_vector(i) == num && k == 0)
        {
            appendage.getVar("printID").set_vector(i,0); 
            k = i + 1;
            return true;
        }
    }

}

function printIDAddNumber(appendage,num)
{

    for (local i = 0;i <= 4;i++)
    {
        if (appendage.getVar("printID").get_vector(i) == 0 || 
        appendage.getVar("printID").get_vector(i) == num)
        {
            appendage.getVar("printID").set_vector(i,num);
            appendage.getVar("lightEffect").set_vector(i*3 ,1);
            appendage.getVar("lightEffect").set_vector(i*3 + 2,appendage.getTimer().Get() );
            appendage.getVar("timeE_DeleteNum").set_vector(0, appendage.getTimer().Get() );
            return true;
            
        }
    }
    return false;

}





function sendAllMonsterAppend_NewStyleUI(obj)
{
    local objectManager = obj.getObjectManager();
    local flagEnemy = 0;
    if (objectManager.getCollisionObjectNumber() > 0)
    {

        for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
        {
            local object = objectManager.getCollisionObject(i);

            if (object && !CNSquirrelAppendage.sq_IsAppendAppendage(object, "monster/ap_close_new_ui_effect.nut") )
            {
                local activeObj = sq_GetCNRDObjectToActiveObject(object);
                if (object.isObjectType(OBJECTTYPE_ACTIVE) )
                {
                    if (obj.isEnemy(object))
                    {

                        flagEnemy = 1;


                        if (!CNSquirrelAppendage.sq_IsAppendAppendage(activeObj, "ui/ap_monster_ui2.nut") )
                        {
                            local appendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, activeObj, 12, false, 
                                    "ui/ap_monster_ui2.nut", true);
                        }


                        if (!CNSquirrelAppendage.sq_IsAppendAppendage(activeObj, "ui/ap_monster_ui.nut") )
                        {
                            local appendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, obj, 12, false, 
                                    "ui/ap_monster_ui.nut", true);
                        }
                        







                    }
                }else{
                }
            }
        }
    }


    if (flagEnemy == 0)
    {
        GLOBAL_CURRENT_DUNGEON_FLAG = 0;
        onDungeonClearMonsterEvent(obj);
    }
}







//?õó?ìýnewstyle ú¼ãÁîÜÎÃüù î¤front newstyle îñÓ®
function drawLightEffect(obj,x,y,flag)
{
    local size = getComboUiAppendage(obj).getVar("lightEffect").get_vector(3*flag + 1);
    if(size == 0)
        return ;

    local sq_var = obj.getVar();
    local numImage = sq_var.GetAnimationMap("ComboUIlightEffect", "common/newstylecomboui/light_effect.ani");

    sq_AnimationProc(numImage);
	numImage.setImageRate(size.tofloat() / 100.0, size.tofloat() / 100.0);

    sq_drawCurrentFrame(numImage, x + 10, y + 40, false);

}



function setEquipmentSpectrumBodyEffect(appendage)
{

	local parentObj = appendage.getParent();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local saveT = parentObj.sq_GetIntData(169, 26);
	local createT = parentObj.sq_GetIntData(169, 27);

	if (saveT != 0 && createT != 0)
	{
		local spectrumAppendage = appendage.sq_GetOcularSpectrum("EquipmentSpectrumBodyEffect");
	
		if(!spectrumAppendage)
		{
			spectrumAppendage = appendage.sq_AddOcularSpectrum("EquipmentSpectrumBodyEffect", parentObj, parentObj, 100);
		}
		local r = parentObj.sq_GetIntData(169, 28);
		local g = parentObj.sq_GetIntData(169, 29);
		local b = parentObj.sq_GetIntData(169, 30);
		sq_SetParameterOcularSpectrum(spectrumAppendage, saveT, createT, false, 
		sq_RGBA(r, g, b, 255), sq_RGBA(r, g, b, 0), 2, 2, 2);
		//sq_SetParameterOcularSpectrum(spectrumAppendage, saveT, createT, true, 
		//sq_RGBA(20, 80, 200, 255), sq_RGBA(20, 80, 200, 0), 2, 0, 1);
	}else{
		local spectrumAppendage = appendage.sq_GetOcularSpectrum("EquipmentSpectrumBodyEffect");

		if(spectrumAppendage)
		{
			spectrumAppendage.endCreateSpectrum();
		}
	}

//outPut("dummy/dummy.txt","saveT = " + saveT + "\n");


function createGreatWithAudioEffect(appendage,killPower)
{


    if (sq_isPVPMode() )
        return;

	if(!appendage) {
		return;
	}

	local parentObj = appendage.getParent();
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);

    local currT = appendage.getTimer().Get();

    appendage.getVar("greatEffect").set_vector(0,currT);

    if (killPower <= 1000)
    {
        appendage.getVar("greatEffect").set_vector(1,1);
        obj.sq_PlaySound("HK3_GOOD");
    }else if (killPower <= 2000)
    {
        appendage.getVar("greatEffect").set_vector(1,2);
        obj.sq_PlaySound("HK3_GREAT");
    }
    else if (killPower <= 8000)
    {
        appendage.getVar("greatEffect").set_vector(1,3);
        obj.sq_PlaySound("HK3_NICE");
    }
    else if (killPower <= 10000)
    {
        appendage.getVar("greatEffect").set_vector(1,4);
        obj.sq_PlaySound("HK3_PERFECT");
    }
    else 
    {
        appendage.getVar("greatEffect").set_vector(1,5);
        obj.sq_PlaySound("HK3_OKILL");
    }
    appendage.getVar("greatEffect").set_vector(2,100);



}



}
