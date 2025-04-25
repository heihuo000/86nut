GlobalNewDamageFontObjectList <- [];


class NewDamageFontObject
{

        isUse = false;
        xPos = -1;
        yPos = -1;
        zPos = -1;
        damageFontNumber = -1;
        damageFontID = -1;
        startTime = -1;
        parentObj = null;
        attackerObj = null;
        isEnd = false;
        attackAbsoultDamageList = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

        function initDamageFontBasicVar()
        {
            isUse = false;
            xPos = -1;
            yPos = -1;
            zPos = -1;
            damageFontNumber = -1;
            damageFontID = -1;
            startTime = -1;
            parentObj = null;
            attackerObj = null;
            isEnd = false;
            attackAbsoultDamageList = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
        }

        function drawAbsolutSmallDamage(object,x,y,saveTime)
        {
            if (damageFontID == 0 || damageFontID == 2)
            {
                local offsetY = -15;
                local offsetXX = -5;
                for (local i = 0;i <= 18;i++)
                {
                    local var = attackAbsoultDamageList[i];
                    if (var > 0)
                    {
                        offsetY = offsetY + 12;
                        offsetXX = offsetXX + 5;
                        local vectorNumber = ((damageFontNumber.tofloat() * var.tofloat()) / 1000).tointeger();
                        local offsetX = 0;
                        while(vectorNumber > 0)
                        {

                            local sub10 = vectorNumber % 10;
                            if (sub10 != 1)
                                offsetX = offsetX - 9;
                            else
                                offsetX = offsetX - 6;

                            local ani = getNewStyle_DamageRate_Number(object,sub10);
                            ani.setRGBA(255,255,255,GLOBAL_DAMAGE_FONT_NUMBER_GRBA_ALPHA);
                            ani.setImageRate(0.6,0.6);
                            sq_AnimationProc(ani);
                            if (saveTime >= 100)
                                sq_drawCurrentFrame(ani, x + offsetX - 10 + offsetXX, y + offsetY + 20, false);
                            else
                            {
                                sq_drawCurrentFrameEffect_SIMPLE(ani, x + offsetX - 10 + offsetXX, y + offsetY + 20,
                                sq_RGB(255,255,255), sq_ALPHA(255) );
                            }
                            vectorNumber = vectorNumber / 10;
                        }
                    }
                }
            }
        }
        function setCurrentPos(x,y,z)
        {
            xPos = x;
            yPos = y;
            zPos = z;
        }

        function setAxisPos(xyz,var)
        {
            if (xyz == 0)
                xPos = var;
            else if (xyz == 1)
                yPos = var;
            else if (xyz == 2)
                zPos = var;
        }

        function setDmageID(id)
        {
            damageFontID = id;
        }

        function setDmageNumber(num)
        {
            damageFontNumber = num;
        }

        function setDamageStartTime(sTime)
        {
            startTime = sTime;
        }

        function setDamageUse()
        {
            isUse = true;
        }

        function setDamageNoUse()
        {
            isUse = false;
        }

        function setDamageObjectParentObj(object)
        {
            parentObj = object;
        }

        function setDamageObjectAttackObj(object)
        {
            attackerObj = object;
        }
    
}

function initGlobalNewDamageFontObjectList()
{

    GlobalNewDamageFontObjectList = [
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
    NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),-1];


}

GlobalNewDamageFontObjectList = [
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),
NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),NewDamageFontObject(),-1];

