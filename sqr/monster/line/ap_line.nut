
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_LineMonsterEffect")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_LineMonsterEffect")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_LineMonsterEffect")
}

function sq_AddEffect(appendage)
{
}

function onEnd_appendage_LineMonsterEffect(appendage)
{

	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();

    local lineObj = appendage.getVar("hw").get_obj_vector(0);
    if (lineObj)
        lineObj.setValid(false);

}

function proc_appendage_LineMonsterEffect(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();

				

    local obj = sq_GetCNRDObjectToActiveObject(parentObj);

    local lineObj = appendage.getVar("hw").get_obj_vector(0);
    local length = appendage.getVar("var").get_vector(2);
    local headObjID = appendage.getVar("var").get_vector(1);

    local followObj = appendage.getVar("lineObject").get_obj_vector(0);

    if (parentObj && followObj)
    {
        local damaX = parentObj.getXPos();
        local damaY = parentObj.getYPos();
        local damaZ = parentObj.getZPos();
        local damaSize = parentObj.getObjectHeight();
        lineObj.setCurrentDirection(parentObj.getDirection());

        lineObj.setCurrentPos(damaX, damaY - 1,damaZ + damaSize / 2);

        local headX = followObj.getXPos();
        local headY = followObj.getYPos();
        local headZ = followObj.getZPos();
        local headSize = followObj.getObjectHeight();

        local offset = headX - damaX;

        if(offset < 0)
        {
            lineObj.setCurrentDirection(ENUM_DIRECTION_LEFT);
        }else{
            lineObj.setCurrentDirection(ENUM_DIRECTION_RIGHT);
        }

        local pAni = sq_GetCurrentAnimation(lineObj);
        
        local X = damaX;
        local Y = damaY;
        local Z = damaZ + damaSize /2;

        local posX = headX;
        local posY = headY;
        local posZ = headZ + headSize / 2;

        local distance = sq_GetDistance( X, Y - Z, posX, posY - posZ, true);
        
        local w = posX - X;		
        if(w < 0) w = -w;


        local h = (posY - posZ) - (Y - Z);
        local width = sq_Abs(posX - X);
        local angle = sq_Atan2( h.tofloat(), width.tofloat());

//        if((posY - posZ) > (Y - Z)) {
            angle = -angle;
//        }
        local nRevision = distance;
        local cos = nRevision.tofloat() * sq_Cos(angle);
        local sin = nRevision.tofloat() * sq_Sin(angle);
        local nX = sq_Abs( cos.tointeger() );
        local nY = sq_Abs( sin.tointeger() );
        sq_SetfRotateAngle(pAni, angle);		
        pAni.setImageRate(1.0, 1.0);
        
        local dis = length;

        local cos_x = dis.tofloat() * sq_Cos(angle);
        local sin_y = dis.tofloat() * sq_Sin(angle);
        local nW = sq_Abs( cos_x.tointeger() );
        local nH = sq_Abs( sin_y.tointeger() );


        local wRate = width.tofloat() / nW.tofloat();
        local hRate = h.tofloat() / nH.tofloat();


        pAni.setImageRate(wRate.tofloat(), hRate.tofloat());

    }else{

        lineObj.setCurrentPos(-100,-100,-100);
        local followObj = null;
        if (headObjID == -1)
            followObj = sq_GetMyMasterCharacter();
        else if (headObjID > 0)
        {
            local currentT = appendage.getTimer().Get();
            if (currentT - appendage.getVar("findTime").get_vector(0) >= 250)
            {
                appendage.getVar("findTime").set_vector(0,currentT);
                followObj = scanObjectManagerMonsterByID(obj,headObjID);
            }
        }
        if (followObj)
            appendage.getVar("lineObject").push_obj_vector( followObj );
    }

}





function onStart_appendage_LineMonsterEffect(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj ) 
    {
		appendage.setValid(false);
		return;
	}

    appendage.getVar("lineObject").clear_obj_vector();
    appendage.getVar("findTime").clear_vector();
    appendage.getVar("findTime").push_vector(0);

    appendage.getVar("var").clear_vector();
    appendage.getVar("var").push_vector( sourceObj.getYPos() );
    appendage.getVar("var").push_vector( sourceObj.getXPos() );
    appendage.getVar("var").push_vector( sourceObj.getZPos() );

    local id = sourceObj.getYPos();


	local elect = sq_AddDrawOnlyAniFromParent(parentObj,
    "common/monster/line/line_" + id + "/" + id + ".ani", 0, 0, 0);	

    appendage.getVar("hw").clear_obj_vector();
    appendage.getVar("hw").push_obj_vector(elect);

//    outPut("dummy/dummy.txt","line\n" + sourceObj.getXPos() + "\n " + sourceObj.getYPos() + "\n" + sourceObj.getZPos() + "\n" );

}

