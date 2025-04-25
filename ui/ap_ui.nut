
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_ComboUi")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_ComboUi")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_ComboUi")
    appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_ComboUi")	
	appendage.sq_AddFunctionName("isEnd", "isEnd_appendage_ComboUi")
	appendage.sq_AddFunctionName("onStartMap", "onStartMap_appendage_ComboUi")
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_ComboUi")
}
function sq_AddEffect(appendage)
{
}
function onStartMap_appendage_ComboUi(appendage)
{
    if (!appendage)
        return false;
	local parentObj = appendage.getParent();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);

    appendage.getVar("saveWhileRate").clear_vector();

    GLOBAL_CURRENT_DUNGEON_FLAG = 0;
    onStartMapCharacterEvent(parentObj);
    setMonsterFristReadWithMapEffect(appendage);
}


function onAttackParent_appendage_ComboUi(appendage, realAttacker, damager, boundingBox, isStuck)
{

    if (!damager || !damager.isObjectType(OBJECTTYPE_ACTIVE))
        return ;
	local parentObj = appendage.getParent();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);

    if (!parentObj.isEnemy(damager) )
        return ;
    local currT = appendage.getTimer().Get();

    local damager = sq_GetCNRDObjectToActiveObject(damager);
    local apd = damager.GetSquirrelAppendage("ui/ap_monster_ui2.nut");
    if (apd)
    {
        apd.getVar("OnAttackHitObject").clear_obj_vector();
        apd.getVar("OnAttackHitObject").push_obj_vector( parentObj );

    }
    if (!isSameObject( damager , appendage.getVar("atkObj").get_obj_vector(0) ))
    {
        appendage.getVar("atkObj").clear_obj_vector();
        appendage.getVar("atkObj").push_obj_vector( damager );
        appendage.getVar("saveWhileRate").clear_vector();
    }
    setHitObjectAppendageEffect(appendage,damager);
    setCharacterComboEffect(appendage);
    setCharacterSkyComboEffect(appendage,damager);
    checkUpCharacterBackHit(appendage,realAttacker,damager);

    appendage.getVar("yellowNum").set_vector(0,setComboUIRate(appendage ,damager) );

}



function proc_appendage_ComboUi(appendage)
{
	if(!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
    if (GLOBAL_IS_LOCK_SHAKE_EFFECT == 1)
        sq_SetMyShake(parentObj,0,0);

    //onDungeonFinishLoopEvent(parentObj);
    //chekUpCharacterStatusAndSortLine(appendage);
    //createNewStyleLightEffect(appendage);
    //checkUpCharacaterDamageAbleEffect(appendage);
    //setNewStyleComboFrontSize(appendage);
    //setNewStyleSkyComboFrontSize(appendage);
    //setNewStyleEventTIme_2000(appendage);
    //setKillPowerTimeEvent(appendage);
    //setGreatRankTimeEvent(appendage);
    //setEquipmentSpectrumBodyEffect(appendage);
//    //setEquipmentAlsLayerEffect(appendage);
//    //setFPSVectorByAppendage(appendage);
    SET_FRIST_ANIMATION_FLAG = 1;
}

function onEnd_appendage_ComboUi(appendage)
{
	if(!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
    SET_FRIST_ANIMATION_FLAG = 0;
}


function onApplyHpDamage_appendage_ComboUi(appendage, newHpDamage, attacker)
{
	local obj = appendage.getParent();
    if (!obj || !appendage)
    setDamageFontJumpEffect( obj);
    createDamageRateByTargetAndID(sq_GetMyMasterCharacter(), obj,1,newHpDamage,0,1,0);

    return newHpDamage;
}



function onStart_appendage_ComboUi(appendage)
{
	if(!appendage) {
		return;
	}
    initGlobalNewDamageFontObjectList();
    appendage.getVar("damageBigNumberVector").clear_vector();
    for (local i = 0;i < 100 ;i++)
        appendage.getVar("damageBigNumberVector").push_vector(0);


    appendage.getVar("timeE_DeleteNum").clear_vector();
    appendage.getVar("timeE_DeleteNum").push_vector(0);

    appendage.getVar("activestatus").clear_vector();
    for (local i = 0;i < ACTIVESTATUS_MAX ;i++)
        appendage.getVar("activestatus").push_vector(0);

    appendage.getVar("damageNum").clear_vector();
    for (local i = 0;i < 1600 ;i++)
        appendage.getVar("damageNum").push_vector(0);

    appendage.getVar("monsterRageUI").clear_vector();
    appendage.getVar("monsterRageUI").push_vector(-1);//max Num

    appendage.getVar("monsterEnergyDrawBallUI").clear_vector();
    appendage.getVar("monsterEnergyDrawBallUI").push_vector(-1);//max Num
    appendage.getVar("monsterEnergyDrawBallUI").push_vector(-1);//currentNum
    appendage.getVar("monsterEnergyDrawBallUI").push_vector(-1);//
    appendage.getVar("monsterEnergyDrawBallUI").push_vector(-1);//

    appendage.getVar("monsterEnergyDrawUI").clear_vector();
    appendage.getVar("monsterEnergyDrawUI").push_vector(-1);//icon id
    appendage.getVar("monsterEnergyDrawUI").push_vector(-1);//set attack action id
    appendage.getVar("monsterEnergyDrawUI").push_vector(-1);//time
    appendage.getVar("monsterEnergyDrawUI").push_vector(-1);//currentT

    appendage.getVar("atkObj").clear_obj_vector();

    appendage.getVar("nextDamageTarget").clear_vector();
    appendage.getVar("nextDamageTarget").push_vector( -1 );

    appendage.getVar("posFlag").clear_vector();
    appendage.getVar("posFlag").push_vector(0);
    appendage.getVar("posFlag").push_vector(0);

    appendage.getVar("SklFristLoadSkillEffectFlag").clear_vector();
    appendage.getVar("SklFristLoadSkillEffectFlag").push_vector(0);

    appendage.getVar("monsterCustomDrawID").clear_vector();
    appendage.getVar("monsterCustomDrawID").push_vector(0);


    appendage.getVar("yellowNum").clear_vector();
    appendage.getVar("yellowNum").push_vector(0);


    appendage.getVar("damageAble").clear_vector();
    appendage.getVar("damageAble").push_vector(0);

    appendage.getVar("comboNum").clear_vector();
    appendage.getVar("comboNum").push_vector(0);
    appendage.getVar("comboNum").push_vector(0);
    appendage.getVar("comboNum").push_vector(0);
    appendage.getVar("comboNum").push_vector(0);


    appendage.getVar("FcomboNum").clear_vector();
    appendage.getVar("FcomboNum").push_vector(0);
    appendage.getVar("FcomboNum").push_vector(0);
    appendage.getVar("FcomboNum").push_vector(0);
    appendage.getVar("FcomboNum").push_vector(0);

    appendage.getVar("printID").clear_vector();
    appendage.getVar("printID").push_vector(0);
    appendage.getVar("printID").push_vector(0);
    appendage.getVar("printID").push_vector(0);
    appendage.getVar("printID").push_vector(0);
    appendage.getVar("printID").push_vector(0);
    appendage.getVar("printID").push_vector(0);
    //1 drawComboNumber


    appendage.getVar("YellowAlpha").clear_vector();
    appendage.getVar("YellowAlpha").push_vector(100);

    appendage.getVar("scoreSize").clear_vector();
    appendage.getVar("scoreSize").push_vector(0);
    appendage.getVar("scoreSize").push_vector(100);
    appendage.getVar("scoreSize").push_vector(0);
    appendage.getVar("scoreSize").push_vector(0);

    appendage.getVar("killRateFlag").clear_vector();
    appendage.getVar("killRateFlag").push_vector(0);
    appendage.getVar("killRateFlag").push_vector(0);
    appendage.getVar("killRateFlag").push_vector(0);

    appendage.getVar("absoluteRate").clear_vector();
    appendage.getVar("absoluteRate").push_vector(0);

    appendage.getVar("absoluteRateXPos").clear_vector();
    appendage.getVar("absoluteRateXPos").push_vector(0);


    appendage.getVar("numFlag").clear_vector();
    appendage.getVar("numFlag").push_vector(0);
    appendage.getVar("numFlag").push_vector(0);
    appendage.getVar("numFlag").push_vector(0);
    appendage.getVar("numFlag").push_vector(0);
    appendage.getVar("numFlag").push_vector(0);
    appendage.getVar("numFlag").push_vector(0);
    appendage.getVar("numFlag").push_vector(0);

    appendage.getVar("lightEffect").clear_vector();

    for(local i = 0;i <= 18; i++)
        appendage.getVar("lightEffect").push_vector(0);

    local currT = appendage.getTimer().Get();

    appendage.getVar("timeE").clear_vector();
    appendage.getVar("timeE").push_vector(currT);

    appendage.getVar("timeE2").clear_vector();
    appendage.getVar("timeE2").push_vector(currT);

    appendage.getVar("damageTimeE").clear_vector();
    appendage.getVar("damageTimeE").push_vector(0);
    appendage.getVar("damageTimeE").push_vector(0);

    appendage.getVar("greatEffect").clear_vector();
    appendage.getVar("greatEffect").push_vector(0);
    appendage.getVar("greatEffect").push_vector(0);
    appendage.getVar("greatEffect").push_vector(0);

    appendage.getVar("bloodMonsterHp").clear_vector();
    appendage.getVar("bloodMonsterHp").push_vector(0);
    appendage.getVar("bloodMonsterHp").push_vector(0);

}