
function drawMonsterBlood(obj)
{

    if (sq_isPVPMode() )
        return;

    local apd = getComboUiAppendage(obj);
    local tar = apd.getVar("atkObj").get_obj_vector(0);
    if (tar)
    {
        local currT = apd.getTimer().Get();
        tar = sq_GetCNRDObjectToActiveObject(tar);
        if (tar.isDead())
            return ;
        local sq_var = obj.getVar();
        local ani = sq_var.GetAnimationMap("MonsterBlood", "common/newstylecomboui/monster_blood.ani");
        local ani2 = sq_var.GetAnimationMap("MonsterBlood2", "common/newstylecomboui/monster_blood_basic.ani");
        local ani3 = sq_var.GetAnimationMap("MonsterBlood3", "common/newstylecomboui/monster_blood2.ani");

        local hp = tar.getHp();
        local hpMax = tar.getHpMax();
        local rate = getMonsterBloodOneRateByTarget(obj,tar);

        if (CNSquirrelAppendage.sq_IsAppendAppendage(tar, "monster/blood/ap_blood_gauge.nut") )
        {

            local apd = tar.GetSquirrelAppendage("monster/blood/ap_blood_gauge.nut");
            hp = apd.getVar("currentHp").get_vector(1);
            hpMax = apd.getVar("currentHp").get_vector(0);
            rate = hp.tofloat() / hpMax.tofloat();
            

            local id = apd.getVar("MonsterVar").get_vector(2);
            if (id != -1)
            {
                local string = "monsterEnergyDrawUI_Icon_" + id;
                local road = "common/monster/energy/icon/"+ id +".ani";
                local ani = obj.getVar().GetAnimationMap(string,road);

                sq_AnimationProc(ani);
                sq_drawCurrentFrame(ani, 5,100, false);
            }

        }

        

        local rate2 = 100;

        sq_AnimationProc(ani2);
        ani2.setImageRate(rate2.tofloat() / 100, 1.0);	
        sq_drawCurrentFrame(ani2,30, 130, false);

        setClip(30, 120, 30 + (538.0 * rate * rate2.tofloat() / 100.0).tointeger() , 140);

        sq_AnimationProc(ani);
        ani.setImageRate(rate2.tofloat() / 100, 1.0);	
        sq_drawCurrentFrame(ani,30, 130, false);
        releaseClip();

        drawMonsterBloodWhileEffect(apd,obj);

//        drawBlackMonsterHpRate(obj,(rate * 10000).tointeger(),514,162 );



    }
}










function getMonsterBloodOneRateByTarget(obj,target)
{

    if (!CNSquirrelAppendage.sq_IsAppendAppendage(target, "monster/set_muliting_hp/ap_setmuliting_hp.nut") )
    {
        local hp = target.getHp();
        local hpMax = target.getHpMax();
        local rate = hp.tofloat() / hpMax.tofloat();
        return rate;
    }else{
        local hp = target.getHp();
        local hpMax = target.getHpMax();
        local rate = hp.tofloat() / hpMax.tofloat();

        local apd = target.GetSquirrelAppendage("monster/set_muliting_hp/ap_setmuliting_hp.nut");
        local count = apd.getVar("HpVar").get_vector(1) * 100;
        local maxCount = apd.getVar("HpVar").get_vector(2) * 100;
        local rate = ((count - 100) + (rate * 100).tointeger() ).tofloat() / maxCount.tofloat();
        return rate;
    }
}




function drawMonsterBloodWhileEffect(apd,obj)
{
    local tar = apd.getVar("atkObj").get_obj_vector(0);
    if (tar)
    {

        local currT = apd.getTimer().Get();
        tar = sq_GetCNRDObjectToActiveObject(tar);
        local rate = (getMonsterBloodOneRateByTarget(obj,tar) * 10000).tointeger();
          

        if (CNSquirrelAppendage.sq_IsAppendAppendage(tar, "monster/blood/ap_blood_gauge.nut") )
        {

            local apd2 = tar.GetSquirrelAppendage("monster/blood/ap_blood_gauge.nut");
            local hp = apd2.getVar("currentHp").get_vector(1);
            local hpMax = apd2.getVar("currentHp").get_vector(0);
            rate = ( (hp.tofloat() / hpMax.tofloat()) * 10000).tointeger();
        }


        if (apd.getVar("saveWhileRate").size_vector() <= 0)
        {
          apd.getVar("saveWhileRate").clear_vector();
          for (local i = 0;i <= 19;i++)
          {
            apd.getVar("saveWhileRate").push_vector(0);
            apd.getVar("saveWhileRate").push_vector(0); 
          }
        
        }else{
          
          local sq_var = obj.getVar();
          for (local i = 0;i <= 19;i++)
          {
            
            local encodeRate = apd.getVar("saveWhileRate").get_vector(2 * i + 0);
            local encodeTime = apd.getVar("saveWhileRate").get_vector(2 * i + 1);
            local currentEncodeTime = currT - encodeTime;
            
            if (encodeRate <= 0)
                continue;

            if (currentEncodeTime > 1000)
            {
                apd.getVar("saveWhileRate").set_vector(2 * i ,   0 );
                apd.getVar("saveWhileRate").set_vector(2 * i + 1,0 );
            
            }else{

                local ani = sq_var.GetAnimationMap("MonsterWhileBlood", 
                "common/newstylecomboui/monster_blood2.ani");

                local rightHp = apd.getVar("saveWhileRate").get_vector(2 * i);
                local leftHp = apd.getVar("saveWhileRate").get_vector(2 * i + 2);
                if (leftHp == 0)
                  leftHp = rate;
                
                local baseRGB = sq_RGB(255,255,255);
                local alpha = sq_ALPHA( sq_GetAccel(255,0,currentEncodeTime , 1000,true) );
                
                setClip(30 + (538.0 *(leftHp.tofloat() / 10000.0)).tointeger(),120,
                        30 + (538.0 *(rightHp.tofloat() / 10000.0)).tointeger(),140);
                sq_AnimationProc(ani);
                sq_DrawSpecificFrameEffect_SIMPLE(ani, 30, 130, 0, baseRGB, alpha, false);
                
                //sq_drawCurrentFrameEffect_SIMPLE(ani, 30, 130,, sq_RGB(255,255,255), 
                //sq_ALPHA(sq_GetAccel(255,0,currentEncodeTime , 500,true)) );
                //sq_drawCurrentFrame(ani,30, 130, false);
                releaseClip();
            
            }
            
        
          }
        
        }
        //outPutEx("dummy/dummy.txt","rate " + rate);
        if (apd.getVar("saveWhileRateInitVar").size_vector() <= 0)
        {
          apd.getVar("saveWhileRateInitVar").clear_vector();
          apd.getVar("saveWhileRateInitVar").push_vector( rate );
        }else
        {
          
          local var = apd.getVar("saveWhileRateInitVar").get_vector(0);
          //outPut("dummy/dummy.txt","onsetRate  rate =" + rate +" var =" + var +"\n");
          if (rate < apd.getVar("saveWhileEncodeRate").get_vector(0) )
          {
            apd.getVar("saveWhileRateInitVar").set_vector(0,rate);
            for (local i = 0;i <= 19;i++)
            {
              local vectorRate = apd.getVar("saveWhileRate").get_vector(i * 2);
              if (vectorRate == 0)
              {
                //outPut("dummy/dummy.txt","rate =" + apd.getVar("saveWhileEncodeRate").get_vector(0) +"\n");
                apd.getVar("saveWhileRate").set_vector(i * 2,apd.getVar("saveWhileEncodeRate").get_vector(0));
                apd.getVar("saveWhileRate").set_vector(i * 2 + 1,currT);
                
                
                break;
              }
            }
            //outPut("dummy/dummy.txt","onsetRate\n");
            
            
          }
        
        }

        if (apd.getVar("saveWhileEncodeRate").size_vector() <= 0)
        {
          apd.getVar("saveWhileEncodeRate").clear_vector();
          apd.getVar("saveWhileEncodeRate").push_vector(rate);
        }else{
          apd.getVar("saveWhileEncodeRate").set_vector(0,rate);
        }
        //outPutEx("dummy/dummy.txt","vector\n");
        //outPut("dummy/dummy.txt","v1 = " + apd.getVar("saveWhileRate").get_vector(0) + "\n");
        //outPut("dummy/dummy.txt","v2 = " + apd.getVar("saveWhileRate").get_vector(2) + "\n");
        //outPut("dummy/dummy.txt","v3 = " + apd.getVar("saveWhileRate").get_vector(4) + "\n");
        //outPut("dummy/dummy.txt","v4 = " + apd.getVar("saveWhileRate").get_vector(6) + "\n");
        //outPut("dummy/dummy.txt","v5 = " + apd.getVar("saveWhileRate").get_vector(8) + "\n");
        
    }
}




function setCharacterComboUiAppendage(obj)
{
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "ui/ap_ui.nut"))
    {
        local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_RESONANCE, false,
        "ui/ap_ui.nut", true);

    }

}

function getComboUiAppendage(obj)
{
    return obj.GetSquirrelAppendage("ui/ap_ui.nut");
}


/////////////



/////////////



/////////////


/////////////


/////////////
















