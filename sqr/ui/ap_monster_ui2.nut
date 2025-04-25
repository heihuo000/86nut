
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_newstyle_enemy2")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_newstyle_enemy2")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_newstyle_enemy2")
	appendage.sq_AddFunctionName("proc", "proc_appendage_newstyle_enemy2")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_newstyle_enemy2")
}



function sq_AddEffect(appendage)
{
}


function onEnd_appendage_newstyle_enemy2(appendage)
{

    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();

    parentObj = sq_GetCNRDObjectToActiveObject( parentObj );
    playMonsterDieSoundByMonsterList(parentObj, parentObj.getCollisionObjectIndex(parentObj),appendage );


}

function proc_appendage_newstyle_enemy2(appendage)
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

    if ( !CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/baibian/ap_while.nut") )
        onMonsterUndamageableEffect(appendage);

    onMonsterNewStyleUISwitchState(appendage);
    onMonsterForceHoldEffect(appendage);
    checkUpMonsterStatusEffect(appendage);
    displayStatusDamageFont(appendage);

}

function onStart_appendage_newstyle_enemy2(appendage)
{

    appendage.getVar("OnAttackHitObject2").clear_obj_vector();

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

function onApplyHpDamage_appendage_newstyle_enemy2(appendage, newHpDamage, attacker)
{

    if (newHpDamage <= 0)
        return 0;

    local parentObj = appendage.getParent();
    local sourceObj = sq_GetMyMasterCharacter();
    local apd = getComboUiAppendage(sourceObj);
    sourceObj = sq_GetCNRDObjectToSQRCharacter(sourceObj);
    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
    
    local newHpDamage2 = newHpDamage;
    local randomX = 0;//sq_getRandom(-35,35).tointeger();
    setDamageFontJumpEffect(parentObj);

    local i = createDamageRateByTargetAndID(sourceObj,parentObj,
    isEnemyBack(attacker,parentObj) ? 2 : 0 ,
    newHpDamage2,randomX,1,0);

    local damageFont = GlobalNewDamageFontObjectList[i];
    for (i = 7 ;i<= 25 ;i++)
    {
        local var = sourceObj.sq_GetIntData(169, i);
        if (var > 0)
        {
            damageFont.attackAbsoultDamageList[i-7] = var;
            onAttackParent_appendage_ComboUi( getComboUiAppendage(sourceObj) , sourceObj, parentObj, 0,0);
            newHpDamage2 += ((newHpDamage.tofloat() * var.tofloat()) / 1000).tointeger();
        }else{
            damageFont.attackAbsoultDamageList[i-7] = 0;
        }
    }

    appendage.getVar("BlockDamageRate").clear_vector();
    appendage.getVar("BlockDamageRate").push_vector(newHpDamage2);

    local rate = appendage.getVar("damageRate").get_vector(0);
    appendage.getVar("damageRate").set_vector(0,rate + newHpDamage2);

    if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/rage/ap_rage.nut") )
    {
        local rageApd = parentObj.GetSquirrelAppendage("monster/rage/ap_rage.nut");
        if (rageApd.getVar("enegryT").get_vector(0) == -1)
        {
            local var = rageApd.getVar("enegry").get_vector(0);
            rageApd.getVar("enegry").set_vector(0,var + rageApd.getVar("pos").get_vector(0) );
            var = rageApd.getVar("enegry").get_vector(0);
        }
        
    }
    

    if (newHpDamage > 999999999)
        newHpDamage = 999999999;

    addBigNumberByAppendageVector(apd,"damageBigNumberVector",newHpDamage2);

    if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/ap_send_damage_by_monster.nut") )
    {
        local apd = parentObj.GetSquirrelAppendage("monster/ap_send_damage_by_monster.nut");
        local target = apd.getVar("damaID").get_vector(0);

        sq_BinaryStartWrite();
        sq_BinaryWriteDword( newHpDamage );	// attackBonusRate
        sq_BinaryWriteDword(197);
        sq_BinaryWriteDword(target);
        sq_SendCreatePassiveObjectPacketPos(attacker,24357, 0, 0 , 0, 0);

    }
    return newHpDamage2;
}





function onSetHp_appendage_newstyle_enemy2(appendage, hp, attacker)
{

    if (appendage.getVar("isAppleSetHp").get_vector(0) != 1)
        return hp;

    local parentObj = appendage.getParent();
    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);
    if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/blood/ap_blood_gauge.nut") )
    {
        local changeHp = parentObj.getHp() - hp;
        local apd = parentObj.GetSquirrelAppendage("monster/blood/ap_blood_gauge.nut");

        if (changeHp > 0)
        {

            local var = apd.getVar("currentHp").get_vector(1);
            local lastHp = var - changeHp;
            if (lastHp <= 0 )
            {
                lastHp = 0;
            }

            apd.getVar("currentHp").set_vector(1,lastHp );
        }

        local max = apd.getVar("currentHp").get_vector(0);
        local cur = apd.getVar("currentHp").get_vector(1);
        if (cur > 0)
        {
            local rate = (cur.tofloat() / max.tofloat());
            if (hp > 0)
                return hp;
            return 1;
        }else{
            return 1;
        }
    }else if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/set_muliting_hp/ap_setmuliting_hp.nut") )
    {

        local apd = parentObj.GetSquirrelAppendage("monster/set_muliting_hp/ap_setmuliting_hp.nut");
        local max = parentObj.getHpMax();
        local subVar = 0;
        while( hp < 0)
        {
            hp = hp + max;
            local muliting = apd.getVar("HpVar").get_vector(1);
            if (muliting > 0)
                apd.getVar("HpVar").set_vector(1, muliting - 1);
            else
                return -1;
        }

    }else if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/ap_set_max_hp.nut") )
    {
        return parentObj.getHpMax();
    }
    setStatusDamageRateSet(appendage,hp,attacker);

    return hp;
}



