
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_Equ_Effect_TenTa")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_Equ_Effect_TenTa")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_Equ_Effect_TenTa")
}


function sq_AddEffect(appendage)
{
}
function onEnd_appendage_Equ_Effect_TenTa(appendage)
{
	local parentObj = appendage.getParent();
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);
    sq_SetAllCommandEnable(obj, true);
    local size = 100;

    local currentAni = sq_GetCurrentAnimation(obj);

    local ani1 = obj.sq_GetMoveAni();
	local ani2 = obj.sq_GetSitAni();
	local ani3 = obj.sq_GetDownAni();
	local ani4 = obj.sq_GetDamageAni(0);
	local ani5 = obj.sq_GetDamageAni(1);
	local ani6 = obj.sq_GetGetItemAni();
    local ani7 = obj.sq_GetJumpAni();
    local ani8 = obj.sq_GetDashAni();
    local ani9 = obj.sq_GetStayAni();
    local ani10 = obj.sq_GetRestAni();
    local ani11 = obj.sq_GetDashAttackAni();
    local ani12 = obj.sq_GetJumpAttackAni();

    local sizeRate = size.tofloat()/100.0;
    ani1.setImageRateFromOriginal(sizeRate, sizeRate);
    ani1.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    ani2.setImageRateFromOriginal(sizeRate, sizeRate);
    ani2.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    ani3.setImageRateFromOriginal(sizeRate, sizeRate);
    ani3.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    ani4.setImageRateFromOriginal(sizeRate, sizeRate);
    ani4.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    ani5.setImageRateFromOriginal(sizeRate, sizeRate);
    ani5.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    ani6.setImageRateFromOriginal(sizeRate, sizeRate);
    ani6.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    ani7.setImageRateFromOriginal(sizeRate, sizeRate);
    ani7.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    ani8.setImageRateFromOriginal(sizeRate, sizeRate);
    ani8.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    ani9.setImageRateFromOriginal(sizeRate, sizeRate);
    ani9.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    ani10.setImageRateFromOriginal(sizeRate, sizeRate);
    ani10.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    ani11.setImageRateFromOriginal(sizeRate, sizeRate);
    ani11.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    ani12.setImageRateFromOriginal(sizeRate, sizeRate);
    ani12.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    obj.setObjectHeight(104);

}
function proc_appendage_Equ_Effect_TenTa(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
    local currT = appendage.getTimer().Get();
	local parentObj = appendage.getParent();
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);
    sq_SetAllCommandEnable(obj, false);
    local size = 200;

    local currentAni = sq_GetCurrentAnimation(obj);
    local currentT = sq_GetCurrentTime(currentAni);
    local sizeRate = size.tofloat()/100.0;
    currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
    currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    

    local state = obj.getState();
    if (state == STATE_DASH)
    {
        if (appendage.getVar().get_vector(0) == 0)
        {
            appendage.getVar().set_vector(0,1);
            appendage.getVar("t").clear_vector();
            appendage.getVar("t").push_vector( currT );
            sq_SendCreatePassiveObjectPacketPos(obj,160008, 0, obj.getXPos(), obj.getYPos() + 1, 0 );

        }else{
            if (currT - appendage.getVar("t").get_vector(0) >= 250)
            {
                //createEffect 
                sq_SendCreatePassiveObjectPacketPos(obj,160008, 0, obj.getXPos(), obj.getYPos() + 1, 0 );
                sq_SendCreatePassiveObjectPacketPos(obj,160007, 0, obj.getXPos(), obj.getYPos() + 1, 0 );
                sq_SendCreatePassiveObjectPacketPos(obj,160011, 0, obj.getXPos(), obj.getYPos() + 1, 0 );

                appendage.getVar("t").set_vector(0,currT);
            }


        }
    }else if (state == STATE_JUMP)
    {
        if (obj.getZPos() <= 10 && appendage.getVar().get_vector(1) == 0 && currentT >= 500)
        {
            //createEffect
            sq_SendCreatePassiveObjectPacketPos(obj,160009, 0, obj.getXPos(), obj.getYPos() - 1, 0 );
            sq_SendCreatePassiveObjectPacketPos(obj,160010, 0, obj.getXPos(), obj.getYPos() + 1, 0 );
            appendage.getVar().set_vector(1,1);
        }
    }else{
        appendage.getVar().clear_vector();
        appendage.getVar().push_vector(0);
        appendage.getVar().push_vector(0);
        appendage.getVar().push_vector(0);

    }
}



function onStart_appendage_Equ_Effect_TenTa(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}	
    local currT = appendage.getTimer().Get();

	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);
    appendage.getVar("t").clear_vector();
    appendage.getVar("t").push_vector( currT );

    appendage.getVar().clear_vector();
    appendage.getVar().push_vector(0);
    appendage.getVar().push_vector(0);
    appendage.getVar().push_vector(0);
    sq_SendCreatePassiveObjectPacketPos(obj,160012, 0, obj.getXPos(), obj.getYPos() + 1, 0 );
    sq_SendCreatePassiveObjectPacketPos(obj,160013, 0, obj.getXPos(), obj.getYPos() + 1, 0 );
    sq_SendCreatePassiveObjectPacketPos(obj,160009, 0, obj.getXPos(), obj.getYPos() - 1, 0 );
    sq_SendCreatePassiveObjectPacketPos(obj,160010, 0, obj.getXPos(), obj.getYPos() + 1, 0 );
    obj.setObjectHeight(232);
}

