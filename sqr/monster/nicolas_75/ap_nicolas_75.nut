
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_NicolasBlackArachnia")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_NicolasBlackArachnia")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_NicolasBlackArachnia")
    appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_NicolasBlackArachnia")	
}

function sq_AddEffect(appendage)
{
}


function onAttackParent_appendage_NicolasBlackArachnia(appendage, realAttacker, damager, boundingBox, isStuck)
{

    if (!damager || !damager.isObjectType(OBJECTTYPE_ACTIVE))
        return ;

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	sourceObj = sq_GetCNRDObjectToSQRCharacter(sourceObj);
    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
    local currentAni = sq_GetCurrentAnimation(parentObj);
    local frmIndex = sq_GetAnimationFrameIndex(currentAni);
    if (frmIndex < 6)
    {

        local holdProc = 100;
        local holdleve = 90;

        local holdtime = sq_GetLevelData(sourceObj, 101, 3, sq_GetSkillLevel(sourceObj, 101) );

        local power = sourceObj.sq_GetBonusRateWithPassive(SKILL_NECOLAS_BLACK_ARACHNIA, STATE_NECOLAS_BLACK_ARACHNIA,
        0, 1.0 );
        local attackInfo = sq_GetCurrentAttackInfo(parentObj);
        sq_SetCurrentAttackBonusRate(attackInfo, power);
        sq_SetChangeStatusIntoAttackInfo(attackInfo, 1, ACTIVESTATUS_HOLD, holdProc, holdleve, holdtime);
        appendage.getVar("dama").push_obj_vector(damager);

    }else if (frmIndex < 8)
    {
        local power = sourceObj.sq_GetBonusRateWithPassive(SKILL_NECOLAS_BLACK_ARACHNIA, STATE_NECOLAS_BLACK_ARACHNIA,
        1, 1.0 );
        local attackInfo = sq_GetCurrentAttackInfo(parentObj);
        sq_SetCurrentAttackBonusRate(attackInfo, power);
    }else{
        local power = sourceObj.sq_GetBonusRateWithPassive(SKILL_NECOLAS_BLACK_ARACHNIA, STATE_NECOLAS_BLACK_ARACHNIA,
        2, 1.0 );
        local attackInfo = sq_GetCurrentAttackInfo(parentObj);
        sq_SetCurrentAttackBonusRate(attackInfo, power);
    }

}

function onEnd_appendage_NicolasBlackArachnia(appendage)
{

	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();




}

function proc_appendage_NicolasBlackArachnia(appendage)
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


	sourceObj = sq_GetCNRDObjectToSQRCharacter(sourceObj);
    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
    local currentAni = sq_GetCurrentAnimation(parentObj);
    local frmIndex = sq_GetAnimationFrameIndex(currentAni);

    if (parentObj.getState() == 0)
    {
		appendage.setValid(false);
		return;
    }

    if (frmIndex >= 6 && appendage.getVar("flag").get_vector(0) == 0)
    {
        appendage.getVar("flag").set_vector(0,1);
        parentObj.resetHitObjectList();
    }else if (frmIndex >= 8 && appendage.getVar("flag").get_vector(1) == 0)
    {
        appendage.getVar("flag").set_vector(1,1);
        parentObj.resetHitObjectList();
    }else if (frmIndex >= 9 && appendage.getVar("flag").get_vector(2) == 0)
    {
        appendage.getVar("flag").set_vector(2,1);
        parentObj.resetHitObjectList();

        local var = appendage.getVar("dama");  		
        local objectsSize = var.get_obj_vector_size();


        if (objectsSize > 0)
        {

            for(local i=0;i<objectsSize;++i)
            {
                local damager = var.get_obj_vector(i);
                damager.setCurrentPos(parentObj.getXPos(),parentObj.getYPos() + 1,parentObj.getZPos() );
            }
        }

    }



}



function onStart_appendage_NicolasBlackArachnia(appendage)
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

    appendage.getVar("dama").clear_obj_vector();

    appendage.getVar("flag").clear_vector();
    appendage.getVar("flag").push_vector(0);
    appendage.getVar("flag").push_vector(0);
    appendage.getVar("flag").push_vector(0);
    appendage.getVar("flag").push_vector(0);
    appendage.getVar("flag").push_vector(0);
    appendage.getVar("flag").push_vector(0);
}


