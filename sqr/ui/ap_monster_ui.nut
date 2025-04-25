
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_newstyle_enemy")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_newstyle_enemy")
//	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_newstyle_enemy")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_newstyle_enemy")
//	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_newstyle_enemy")
}



function sq_AddEffect(appendage)
{
}



function getIncreaseKillRate(appendage,apd,var)
{

    local parentObj = appendage.getParent();
    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
    if (parentObj.isBoss() )
    {
        var = var + 10000 + sq_getRandom(0,1000).tointeger() + sq_getRandom(0,100).tointeger() + sq_getRandom(0,10).tointeger(); 
    }else if (parentObj.isSuperChampion() )
    {
        var = var + 500 + sq_getRandom(0,100).tointeger() + sq_getRandom(0,10).tointeger(); 
    }else if (parentObj.isCommonChampion() )
    {
        var = var + 250 + sq_getRandom(0,50).tointeger(); 
    }else {
        var = var + 200 + sq_getRandom(0,40).tointeger(); 
    }
    var = var + apd.getVar("comboNum").get_vector(0) *2 + apd.getVar("FcomboNum").get_vector(0) *5;

    return var;
}


function onEnd_appendage_newstyle_enemy(appendage)
{

    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();

}

function proc_appendage_newstyle_enemy(appendage)
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

}

//damageBounsPoongjintrainingroom



function onStart_appendage_newstyle_enemy(appendage)
{
//        setTayberrsMonsterMoveEffectStartAppend(appendage);
        
        appendage.getVar("nextState").clear_vector();
        appendage.getVar("nextState").push_vector( -1 );

        appendage.getVar("isDiePlaySound").clear_vector();
        appendage.getVar("isDiePlaySound").push_vector( 0 );

        appendage.getVar("isAppleSetHp").clear_vector();
        appendage.getVar("isAppleSetHp").push_vector( 1 );

        appendage.getVar("MasterHitFlag").clear_vector();
        appendage.getVar("MasterHitFlag").push_vector( 1 );


        appendage.getVar("OnAttackHitObject").clear_obj_vector();

        appendage.getVar("t").clear_vector();
        appendage.getVar("t").push_vector( 0 );
        appendage.getVar("t").push_vector( 0 );

        appendage.getVar("hold").clear_vector();
        appendage.getVar("hold").push_vector( 1 );

        appendage.getVar("absouteYPos").clear_vector();
        appendage.getVar("absouteYPos").push_vector( 0 );


        appendage.getVar("damageRate").clear_vector();
        appendage.getVar("damageRate").push_vector( 0 );
        appendage.getVar("damageRate").push_vector( 0 );

        appendage.getVar("damageRateLight").clear_vector();
        appendage.getVar("damageRateLight").push_vector( 0 );
        appendage.getVar("damageRateLight").push_vector( 0 );

        appendage.getVar("absoluteRate").clear_vector();
        appendage.getVar("absoluteRate").push_vector(0);

        appendage.getVar("isSetHpEffectFlag").clear_vector();
        appendage.getVar("isSetHpEffectFlag").push_vector( 0 );

        appendage.getVar("activestatus").clear_vector();
        for (local i = 0;i < ACTIVESTATUS_MAX ;i++)
            appendage.getVar("activestatus").push_vector(0);

}

