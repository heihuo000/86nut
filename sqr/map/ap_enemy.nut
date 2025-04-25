
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_poongjintrainingroom_enemy")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_poongjintrainingroom_enemy")
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_poongjintrainingroom_enemy")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_atmage_poongjintrainingroom_enemy")
}



function sq_AddEffect(appendage)
{
}

function onSetHp_appendage_atmage_poongjintrainingroom_enemy(appendage, hp, attacker)
{



	return hp;
}

function proc_appendage_poongjintrainingroom_enemy(appendage)
{
	if(!appendage) {
		return;		
	}
				
    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();

	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}


    local currT = appendage.getTimer().Get();
    local starT = appendage.getVar("t").get_vector(0);
    if (currT - starT > 200 )
    {
        appendage.getVar("t").clear_vector();
        appendage.getVar("t").push_vector( appendage.getTimer().Get() );

//        sq_SendCreatePassiveObjectPacketPos(sourceObj, 24357, 0, sourceObj.getXPos() , sourceObj.getYPos() + 1, 0);

    }
}

//damageBounsPoongjintrainingroom


function onApplyHpDamage_appendage_poongjintrainingroom_enemy(appendage, newHpDamage, attacker)
{
	local obj = appendage.getParent();
	local sourceObj = appendage.getSource();
    damageBounsPoongjintrainingroom = damageBounsPoongjintrainingroom + newHpDamage;
    return newHpDamage;
}


function onStart_appendage_poongjintrainingroom_enemy(appendage)
{
        appendage.getVar("t").clear_vector();
        appendage.getVar("t").push_vector( appendage.getTimer().Get() );
}

