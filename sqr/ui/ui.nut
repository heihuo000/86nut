

GLOBAL_DAMAGE_FOCUS_VISIBLE <- 1


function drawNewStyleComboUi(obj)
{
    local sq_var = obj.getVar();
    setCharacterComboUiAppendage(obj);
    local apd = getComboUiAppendage(obj);
    local x = 790;//-50
    local y = 300;//-40
    //drawCharacterBasicHpMpRate(obj);
    //drawYellowNumber(obj,x,y);
    //drawNewStyleComboRate(obj,x,y);
    //drawGreatImageEffect(obj,x,y);
    
    drawLine(obj,apd.getVar("printID").get_vector(0),x - 30,y,0);
    drawLine(obj,apd.getVar("printID").get_vector(1),x - 30,y + 20,1);
    drawLine(obj,apd.getVar("printID").get_vector(2),x - 30,y + 40,2);
    drawLine(obj,apd.getVar("printID").get_vector(3),x - 30,y + 60,3);
    drawLine(obj,apd.getVar("printID").get_vector(4),x - 30,y + 80,4);
    drawLine(obj,apd.getVar("printID").get_vector(5),x - 30,y + 100,5);
    

	//drawCurrentSkillCoolTimeUI(obj);//??????
	//drawMonsterBlood(obj);
	//drawMonsterActiveStatus(obj);
	gal_DrawMonsterToSetCustomUIEffect(obj);
	gal_DrawMonsterEnergyCustomUIEffect(obj);
	gal_DrawMonsterEnergyCustomUIEffectSecond(obj);
	gal_DrawMonsterRedEnergyCustomUIEffect(obj);
	gal_DrawMonsterEnergyBallCustomUIEffect(obj);
	
}



function drawLine(obj,id,x,y,flag)
{

    x += getNewStyleXOffset(obj,flag);
    y += getNewStyleYOffset(obj,flag);
    drawLightEffect(obj,x,y,flag);
    if (id == 1)
    {
        drawComboNumber(obj,x,y + 30);
    }else if (id == 2)
    {
        drawFComboNumber(obj,x,y + 30);
    }else if (id == 3)
    {
//        drawBackHit(obj,x,y + 30);
    }else if (id == 4)
    {
        drawBackHit(obj,x,y + 30);
    }else if (id == 5)
    {
        drawKillRate(obj,x,y + 30);
    }else if (id == 6)
    {
        drawBreakHold(obj,x,y + 30);
    }else if (id == 7)
    {
        drawLastWipe(obj,x,y + 30);
    }else if (id == 8)
    {
        drawDamageAble(obj,x,y + 30);
    }else if (id == 9)
    {
        drawCounterAni(obj,x,y + 30);
    }else if (id == 10)
    {
        drawCounterAni(obj,x,y + 30);
    }
}

function getDamageNumberMaxSize(obj)
{
    local appendage = getComboUiAppendage(obj);
    if (!appendage)
        return false;
    local i = 0;
    for (;i < 100 ;i++)
    {
        if ( appendage.getVar("damageNum").get_vector(4 * i) == 0)
            return i;
    }
    return 0;
}


function getNewStyleXOffset(obj,i)
{
    local appendage = getComboUiAppendage(obj);
    local curT = appendage.getTimer().Get();
    local curLineTime = curT - appendage.getVar("lightEffect").get_vector(3*i + 2);
    if (curLineTime < 100)
    {
        local lineX = sq_GetAccel(50, 0, curLineTime , 100, true);
        return lineX;
    }
    return 0;
}



function getNewStyleYOffset(obj,i)
{

    local appendage = getComboUiAppendage(obj);
    local id = appendage.getVar("printID").get_vector(i);

//    if (i == 0)
//        return 0;

    if (id == 5)
    {
        local curT = appendage.getTimer().Get();
        local curLineTime = curT - appendage.getVar("killRateFlag").get_vector(2);
        if (curLineTime <= 1800)
        {
          return 0;
        }else if (curLineTime <= 2000)
        {
            local lineY = sq_GetAccel(0, -10, curLineTime - 1800 , 200, true);
            return lineY;
        }else{
            return -10;
        }
    }else if (id == 1)
    {
        local curT = appendage.getTimer().Get();
        local currFinalyT = curT - appendage.getVar("comboNum").get_vector(2);
        if (currFinalyT <= 600)
        {
          return 0;
        }else if (currFinalyT <= 800)
        {
            local lineY = sq_GetAccel(0, -10, currFinalyT - 600 , 200, true);
            return lineY;
        }else{
            return -10;
        }
    }else if (id == 2)
    {
        local curT = appendage.getTimer().Get();
        local currFinalyT = curT - appendage.getVar("FcomboNum").get_vector(2);
        if (currFinalyT <= 600)
        {
          return 0;
        }else if (currFinalyT <= 800)
        {
            local lineY = sq_GetAccel(0, -10, currFinalyT - 600 , 200, true);
            return lineY;
        }else{
            return -10;
        }
    }else
    {
        local curT = appendage.getTimer().Get();
        //local curLineTime = curT - appendage.getVar("lightEffect").get_vector(3*i + 2);
        local curLineTime = curT - appendage.getVar("timeE_DeleteNum").get_vector(0);
        if (curLineTime <= 1000)
        {
          return 0;
        }else if (curLineTime <= 1200)
        {
            local lineY = sq_GetAccel(0, -10, curLineTime - 1000 , 200, true);
            return lineY;
        }else{
            return -10;
        }
    }
    return 0;
}

