
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_Equipment_Effect")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_Equipment_Effect")
}



function sq_AddEffect(appendage)
{
}

function proc_appendage_Equipment_Effect(appendage)
{
    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();

	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(parentObj);
    local var1 = sqrChr.sq_GetIntData(169, 2) / 2 ;
    local var2 = sqrChr.sq_GetIntData(169, 3) / 2;
    local var3 = sqrChr.sq_GetIntData(169, 4) / 2;
    local var4 = sqrChr.sq_GetIntData(169, 5) / 2;



    if (sqrChr.sq_GetState() == STATE_ATTACK)
    {
        local isPress = sq_IsKeyDown(93, ENUM_SUBKEY_TYPE_ALL);
        if (isPress && appendage.getVar().get_vector(3) == 0)
        {
            if (var4 == 1)
            {
                appendage.getVar().set_vector(3,1);
                local posX = sq_GetDistancePos(sqrChr.getXPos(), sqrChr.getDirection(), 250);
                sq_SendCreatePassiveObjectPacketPos(sqrChr,160031, 0, posX , sqrChr.getYPos() + 1, 0 );
                return ;

            }else if (var4 == 2)
            {
                appendage.getVar().set_vector(3,1);
                local posX = sq_GetDistancePos(sqrChr.getXPos(), sqrChr.getDirection(), 250);
                sq_SendCreatePassiveObjectPacketPos(sqrChr,160032, 0, posX , sqrChr.getYPos() + 1, 0 );
                return ;

            }
        }
    }else{
        appendage.getVar().set_vector(3,0);
    }







    if (sqrChr.sq_GetState() == STATE_QUICK_STANDING)
    {
        local isPress = sq_IsKeyDown(93, ENUM_SUBKEY_TYPE_ALL);
        if (isPress && appendage.getVar().get_vector(2) == 0)
        {
            if (var3 == 1)
            {
                appendage.getVar().set_vector(2,1);
                sq_SendCreatePassiveObjectPacketPos(sqrChr,160023, 0, sqrChr.getXPos() , sqrChr.getYPos() + 1, 0);
                sq_SendCreatePassiveObjectPacketPos(sqrChr,160024, 0, sqrChr.getXPos() , sqrChr.getYPos() + 1, 0);
                sq_SendCreatePassiveObjectPacketPos(sqrChr,160025, 0, sqrChr.getXPos() , sqrChr.getYPos() - 1, 0);
                sq_SendCreatePassiveObjectPacketPos(sqrChr,160026, 0, sqrChr.getXPos() , sqrChr.getYPos() - 1, 0);
                return ;
            }else if (var3 == 2)
            {

            }else if (var3 == 3)
            {

            }else if (var3 == 4)
            {
                appendage.getVar().set_vector(2,1);
                sqrChr.getVar("state").clear_vector();
                sqrChr.getVar("state").push_vector( 6);
                sqrChr.getVar("state2").clear_vector();
                sqrChr.getVar("state2").push_vector( 0);
                sqrChr.sq_AddSetStatePacket(STATE_BURSTER, STATE_PRIORITY_IGNORE_FORCE, true);
            }
        }
    }else{
        appendage.getVar().set_vector(2,0);
    }


    if (sqrChr.sq_GetState() == STATE_STAND)
    {
        local isPress = sq_IsKeyDown(93, ENUM_SUBKEY_TYPE_ALL);
        if (isPress && appendage.getVar().get_vector(1) == 0)
        {
            if (var2 == 1)
            {
                appendage.getVar().set_vector(1,1);
                if (CNSquirrelAppendage.sq_IsAppendAppendage(sqrChr, "ui/equ/ap_equ_effect_prey_tenta.nut") )
                {
                    CNSquirrelAppendage.sq_RemoveAppendage(sqrChr, "ui/equ/ap_equ_effect_prey_tenta.nut");
                }else{
                    local appendage = CNSquirrelAppendage.sq_AppendAppendage(sqrChr, sqrChr, 169, false, 
                       "ui/equ/ap_equ_effect_prey_tenta.nut", true);
                }
                return ;
            }else if (var2 == 2)
            {
                appendage.getVar().set_vector(1,1);
                sqrChr.getVar("state").clear_vector();
                sqrChr.getVar("state").push_vector( 4);
                sqrChr.getVar("state2").clear_vector();
                sqrChr.getVar("state2").push_vector( 0);
                sqrChr.sq_AddSetStatePacket(STATE_BURSTER, STATE_PRIORITY_IGNORE_FORCE, true);
                return ;
            }else if (var2 == 3)
            {
                appendage.getVar().set_vector(1,1);
                sqrChr.getVar("state").clear_vector();
                sqrChr.getVar("state").push_vector( 5);
                sqrChr.getVar("state2").clear_vector();
                sqrChr.getVar("state2").push_vector( 0);
                sqrChr.sq_AddSetStatePacket(STATE_BURSTER, STATE_PRIORITY_IGNORE_FORCE, true);
                return ;
            }else if (var2 == 4)
            {
                appendage.getVar().set_vector(1,1);
                local posX = sq_GetDistancePos(sqrChr.getXPos(), sqrChr.getDirection(), 300);
                sq_SendCreatePassiveObjectPacketPos(sqrChr,160020, 0, posX , sqrChr.getYPos() + 1, 200 );
                return ;
            }
        }
    }else{
        appendage.getVar().set_vector(1,0);
    }

    if (sqrChr.sq_GetState() == STATE_JUMP && sqrChr.getZPos() > 50 )
    {
        local isPress = sq_IsKeyDown(93, ENUM_SUBKEY_TYPE_ALL);
        if (isPress && appendage.getVar().get_vector(0) == 0)
        {

            if (var1 == 1)
            {
                appendage.getVar().set_vector(0,1);
                sqrChr.getVar("state").clear_vector();
                sqrChr.getVar("state").push_vector( 0);
                sqrChr.getVar("state2").clear_vector();
                sqrChr.getVar("state2").push_vector( 0);
                sqrChr.sq_AddSetStatePacket(STATE_BURSTER, STATE_PRIORITY_IGNORE_FORCE, true);
                return ;

            }else if (var1 == 2){

                appendage.getVar().set_vector(0,1);
                sqrChr.sq_IntVectClear();
                sqrChr.sq_IntVectPush(0);
                sqrChr.sq_IntVectPush(0);
                sqrChr.sq_IntVectPush(0);
                sqrChr.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
                createPreyEquipmentSecondJumpEffect(sqrChr);
                return ;

            }else if (var1 == 3)
            {
                appendage.getVar().set_vector(0,1);
                sqrChr.getVar("state").clear_vector();
                sqrChr.getVar("state").push_vector(3);
                sqrChr.sq_AddSetStatePacket(STATE_BURSTER, STATE_PRIORITY_IGNORE_FORCE, true);
                return ;

            }else if (var1 == 4)
            {
                appendage.getVar().set_vector(0,1);
                sqrChr.getVar("state").clear_vector();
                sqrChr.getVar("state").push_vector(0);
                sqrChr.getVar("state2").clear_vector();
                sqrChr.getVar("state2").push_vector(1);
                sqrChr.sq_AddSetStatePacket(STATE_BURSTER, STATE_PRIORITY_IGNORE_FORCE, true);
                return ;

            }
        }
    }else{
            appendage.getVar().set_vector(0,0);
    }


//    parentObj.setCurrentPos(parentObj.getXPos(),parentObj.getYPos(),0);
}


function onStart_appendage_Equipment_Effect(appendage)
{
    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();


    appendage.getVar().clear_vector();
    appendage.getVar().push_vector(0);
    appendage.getVar().push_vector(0);
    appendage.getVar().push_vector(0);
    appendage.getVar().push_vector(0);
    appendage.getVar().push_vector(0);
    appendage.getVar().push_vector(0);

	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}
}

