
function setCustomData_po_ATPriest(obj, receiveData)
{
	if(!obj)
		return;

	local id = receiveData.readDword();
	
	obj.getVar("id").clear_vector();
	obj.getVar("id").push_vector(id);
	
	local parentChr = obj.getTopCharacter();
	parentChr = sq_GetCNRDObjectToSQRCharacter(parentChr);
	local pAni = obj.getCurrentAnimation();
	local currentT = sq_GetCurrentTime(pAni);
	if (id == 0)	
    {	
		local attackBonusRate = receiveData.readDword();
		local size = receiveData.readDword();
	
		local ani = obj.getVar().GetAnimationMap("0",
		"passiveobject/zrr_skill/atpriest/animation/atlusthand/lusthandatk01_c_01.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 0);	
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);	
		
	}else if (id == 1)	
    {
		local attackBonusRate = receiveData.readDword();
		local size = receiveData.readDword();
	
		local ani = obj.getVar().GetAnimationMap("1",
		"passiveobject/zrr_skill/atpriest/animation/atprideaccel/attack_back.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 1);	
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);		

	}else if (id == 2)	
    {
		local attackBonusRate = receiveData.readDword();
		local size = receiveData.readDword();
	
		local ani = obj.getVar().GetAnimationMap("2",
		"passiveobject/zrr_skill/atpriest/animation/atslothbody/lv95atoriginalsin/atslothbodylv95atoriginalsinattackfront_16.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
		
		local attackInfo = sq_GetCustomAttackInfo(obj, 2);	
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);		
		createslothbodyBottomBoomEffect(obj, 0, 0, 0, sq_GetIntData(parentChr, SKILL_SLOTHBODY, 4));	
	}else if (id == 3)	
    {
		parentChr.getVar("damaatgreedthelurker").clear_obj_vector();
		obj.getVar("flagatgreedthelurker").clear_vector();
		obj.getVar("flagatgreedthelurker").push_vector(0);
		local attackBonusRate = receiveData.readDword();
		local size = receiveData.readDword();
	
		local ani = obj.getVar().GetAnimationMap("3",
		"passiveobject/zrr_skill/atpriest/animation/atgreedthelurker/start.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
		

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);		

        creatgreedthelurkerani(obj, 0, 0, 0,
		"passiveobject/zrr_skill/atpriest/animation/atgreedthelurker/start/01greedatk_bg_00.ani", size, ENUM_DRAWLAYER_NORMAL)
        creatgreedthelurkerani(obj, 0, 0, 0,
		"passiveobject/zrr_skill/atpriest/animation/atgreedthelurker/start/02greedatk_h_c05.ani", size, ENUM_DRAWLAYER_BOTTOM)


		obj.getVar("attackBonusRate").clear_vector();
		obj.getVar("attackBonusRate").push_vector(attackBonusRate);
		obj.getVar("hitTime").clear_vector();
		obj.getVar("hitTime").push_vector(0);

		obj.getVar("Greedthelurker").clear_vector();
		obj.getVar("Greedthelurker").push_vector(0);
		obj.getVar("Greedthelurker").push_vector(parentChr.sq_GetIntData(SKILL_GREEDTHELURKER, 5)-2);
	}else if (id == 4)	
    {	
		local attackBonusRate = receiveData.readDword();
		local size = receiveData.readDword();
	
		local ani = obj.getVar().GetAnimationMap("4",
		"passiveobject/zrr_skill/atpriest/animation/atgreedthelurker/loop.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);

		local attackInfo = sq_GetCustomAttackInfo(obj, 4);	
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		
        creatgreedthelurkerani(obj, 0, 0, 0,
		"passiveobject/zrr_skill/atpriest/animation/atgreedthelurker/loop/01greedatkholdloop_bg_00.ani", size, ENUM_DRAWLAYER_NORMAL)
        creatgreedthelurkerani(obj, 0, 0, 0,
		"passiveobject/zrr_skill/atpriest/animation/atgreedthelurker/loop/02greedatkholdloop_hc.ani", size, ENUM_DRAWLAYER_BOTTOM)
	}else if (id == 5)	
    {	
		local size = receiveData.readDword();
	
		local ani = obj.getVar().GetAnimationMap("5",
		"passiveobject/zrr_skill/atpriest/animation/atgreedthelurker/enda.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		
        creatgreedthelurkerani(obj, 0, 0, 0,
		"passiveobject/zrr_skill/atpriest/animation/atgreedthelurker/enda/01greedatkfinisha_bg_00.ani", size, ENUM_DRAWLAYER_NORMAL)
        creatgreedthelurkerani(obj, 0, 0, 0,
		"passiveobject/zrr_skill/atpriest/animation/atgreedthelurker/enda/02greedatkfinisha_smoke_05.ani", size, ENUM_DRAWLAYER_BOTTOM)


	}else if (id == 6)	
    {	
		local size = receiveData.readDword();
	
		local ani = obj.getVar().GetAnimationMap("6",
		"passiveobject/zrr_skill/atpriest/animation/atgreedthelurker/endb.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		
        creatgreedthelurkerani(obj, 0, 0, 0,
		"passiveobject/zrr_skill/atpriest/animation/atgreedthelurker/endb/01greedatkfinishb_eff_01.ani", size, ENUM_DRAWLAYER_NORMAL)
        creatgreedthelurkerani(obj, 0, 0, 0,
		"passiveobject/zrr_skill/atpriest/animation/atgreedthelurker/endb/02greedatkfinishb_eff_02.ani", size, ENUM_DRAWLAYER_BOTTOM)
	}else if (id == 7)	
    {	
		local attackBonusRate = receiveData.readDword();
		local size = receiveData.readDword();
	
		local ani = obj.getVar().GetAnimationMap("7",
		"passiveobject/zrr_skill/atpriest/animation/atsecondsoul/boom_18.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);

		local attackInfo = sq_GetCustomAttackInfo(obj, 5);	
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		creatsecondsoulboombottom(obj, 0, 0, 0, size)
	}else if (id == 8)	
    {	
		local attackBonusRate = receiveData.readDword();
		local size = receiveData.readDword();
	
		local ani = obj.getVar().GetAnimationMap("8",
		"passiveobject/zrr_skill/atpriest/animation/atdepravitysevensins/flower/delightflower_flower_explosion05.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);

		local attackInfo = sq_GetCustomAttackInfo(obj, 6);	
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);

	if(parentChr.getVar("damaFlowerOfPurification").get_obj_vector_size() > 0)
	{
    obj.sq_PlaySound("PW_DSEVENSINS_DM_02");
    credelightflowerflowerbodyb(obj, 405, 500,
    "passiveobject/zrr_skill/atpriest/animation/atdepravitysevensins/delightflower_flower_body_a04.ani", ENUM_DRAWLAYER_NORMAL,ENUM_DIRECTION_RIGHT)

    credelightflowerflowerbodyb(obj, 405, 500,
    "passiveobject/zrr_skill/atpriest/animation/atdepravitysevensins/delightflower_flower_body_a03.ani", ENUM_DRAWLAYER_NORMAL,ENUM_DIRECTION_RIGHT)

    credelightflowerflowerbodyb(obj, 400, 500,
    "passiveobject/zrr_skill/atpriest/animation/atdepravitysevensins/delightflower_flower_body_a02.ani",ENUM_DRAWLAYER_NORMAL,ENUM_DIRECTION_RIGHT);

    credelightflowerflowerbodyb(obj, 405, 500,
    "passiveobject/zrr_skill/atpriest/animation/atdepravitysevensins/delightflower_flower_body_a01.ani", ENUM_DRAWLAYER_NORMAL,ENUM_DIRECTION_RIGHT)
	}else
	{
    obj.sq_PlaySound("PW_DSEVENSINS_DM_03");
    credelightflowerflowerbodyb(obj, 410, 500,
    "passiveobject/zrr_skill/atpriest/animation/atdepravitysevensins/delightflower_flower_body_b03.ani",ENUM_DRAWLAYER_NORMAL,ENUM_DIRECTION_RIGHT);

    credelightflowerflowerbodyb(obj, 410, 500,
    "passiveobject/zrr_skill/atpriest/animation/atdepravitysevensins/delightflower_flower_body_b02.ani", ENUM_DRAWLAYER_NORMAL,ENUM_DIRECTION_RIGHT)

    credelightflowerflowerbodyb(obj, 410, 500,
    "passiveobject/zrr_skill/atpriest/animation/atdepravitysevensins/delightflower_flower_body_b01.ani",ENUM_DRAWLAYER_NORMAL,ENUM_DIRECTION_RIGHT);
    }
	}else if (id == 9)	
    {	
		local attackBonusRate = receiveData.readDword();
		obj.getVar("delightflower_wavehit01").clear_obj_vector();
		local ani = obj.getVar().GetAnimationMap("9",
		"character/priest/seducer/effect/animation/atdepravitysevensins/effect/delightflower_namedhit01.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);

		local attackInfo = sq_GetCustomAttackInfo(obj, 6);	
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		
	}else if (id == 10)
    {	
		local attackBonusRate = receiveData.readDword();
		local size = receiveData.readDword();

		local ani = obj.getVar().GetAnimationMap("10", "passiveobject/zrr_skill/atpriest/animation/ATEnviousKiss/HeartFly_Loop.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);

		local attackInfo = sq_GetCustomAttackInfo(obj, 6);	
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		
		local dist = sq_GetIntData(parentChr, SKILL_ENVIOUSKISS, 0);
		
		obj.getVar("mov").clear_vector();
        obj.getVar("mov").push_vector(0);
        obj.getVar("mov").push_vector(dist);
        obj.getVar("mov").push_vector(obj.getXPos());
	}else if (id == 11)	
    {	
		local attackBonusRate = receiveData.readDword();
		local size = receiveData.readDword();

		local ani = obj.getVar().GetAnimationMap("11",
		"character/priest/seducer/effect/animation/atenviouskiss/finishslash_hit11.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);

        local atk = sq_GetCustomAttackInfo(obj, 11);
        sq_SetCurrentAttackInfo(obj, atk);
        local damage = parentChr.sq_GetBonusRateWithPassive(SKILL_ENVIOUSKISS , STATE_ENVIOUSKISS, 0, 1.0);
        local attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, damage);
        

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	}else if (id == 12)	
    {	

		local ani = obj.getVar().GetAnimationMap("12",
		"character/priest/seducer/effect/animation/atenviouskiss/buffloop_01.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
	local tar = parentChr.getVar("damaEnviousKiss").get_obj_vector(0);
	if(tar)
	{
	sq_moveWithParent(tar, obj);
	}
	}else if (id == 13)	
    {	
		local attackBonusRate = receiveData.readDword();
		local size = receiveData.readDword();

		local ani = obj.getVar().GetAnimationMap("13",
		"passiveobject/zrr_skill/atpriest/animation/atgluttonyvomit/atgluttonyvomit_att_beam_normal.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);

		local attackInfo = sq_GetCustomAttackInfo(obj, 8);	
		sq_SetCurrentAttackInfo(obj, attackInfo);
		local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
		
	}else if(id == 14)	
    {
		local attackBonusRate = receiveData.readDword();
        local size = receiveData.readDword();
        local xy_proc = receiveData.readDword();
        local xy_level = receiveData.readDword();
        local xy_time = receiveData.readDword();

		local ani = obj.getVar().GetAnimationMap("14", "passiveobject/zrr_skill/atpriest/animation/atheavysin/heavysin_demonization_attack_dust.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);

		local attackInfo = sq_GetCustomAttackInfo(obj, 10);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);

	if(CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/atpriest/seducer/thesevendeadlysins/ap_damathesevendeadlysins.nut"))//啮踝萧啮踝萧啮?
        sq_SetChangeStatusIntoAttackInfo(attackInfo, 0,ACTIVESTATUS_SLOW, xy_proc, xy_level, xy_time);

	}else if(id == 15)	
    {
        local size = receiveData.readDword();

		local ani = obj.getVar().GetAnimationMap("15", "passiveobject/zrr_skill/atpriest/animation/atheavysin/heavysin_demonization_ground_crack.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);

	}
	else if(id == 16)
	{

		local ani = obj.getVar().GetAnimationMap("16",
		"character/priest/seducer/effect/animation/atbodypressedsin/atbodypressedsin_floor01.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);		
		obj.setMapFollowParent(parentChr);
		obj.setMapFollowType(1);
	}
	else if(id == 17)	
	{
		local size = receiveData.readDword();

		local ani = obj.getVar().GetAnimationMap("17",
		"character/priest/seducer/effect/animation/atfirstprana/firstprana_floor.ani");
		obj.setCurrentAnimation(ani);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);		
		
        local atk = sq_GetCustomAttackInfo(parentChr,CUSTOM_ATTACK_FIRSTPRANA);
        local damage = parentChr.sq_GetBonusRateWithPassive(SKILL_FIRSTPRANA , -1, 1, 1.0);
        sq_SetCurrentAttackBonusRate(atk, damage);
        sq_SetCurrentAttackInfo(obj, atk);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
        parentChr.getVar("flagFirstPrana").set_vector(0,1);

	}	
}



function onAfterDamage_po_ATPriest(obj,attacker,boundingBox)
{
	if (!obj)
		return 0;
}

function onTimeEvent_po_ATPriest(obj, timeEventIndex, timeEventCount)
{
	if (!obj)
		return 0;
	local id = obj.getVar("id").get_vector(0);
	local parentChr = obj.getTopCharacter();	
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);

}


function onKeyFrameFlag_po_ATPriest(obj,flagIndex)
{
	if (!obj)
		return 0;
	local id = obj.getVar("id").get_vector(0);
	local parentChr = obj.getTopCharacter();
	parentChr = sq_GetCNRDObjectToSQRCharacter(parentChr);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	if(id == 7)
	{
	if(flagIndex == 0)
	{
	sq_SetMyShake(obj,6,350);
	sq_flashScreen(obj, 0, 0, 800, 255, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK);
	}else if(flagIndex == 1)
	{
	sq_flashScreen(obj, 0, 100, 0, 127, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER);
	}
	}else if(id == 8)
	{
	if(flagIndex == 0)
	{
	local objectManager = obj.getObjectManager();
	local xPos = objectManager.getFieldXPos(400, ENUM_DRAWLAYER_NORMAL);
	local yPos = objectManager.getFieldYPos(500, 0, ENUM_DRAWLAYER_NORMAL);
	obj.setCurrentPos(xPos ,yPos, z/-1);
	}else if(flagIndex == 1)
	{
	sq_SetMyShake(obj,1,240);
	}else if(flagIndex == 2)
	{
    if(parentChr.isMyControlObject())
	{
	creatdepravitysevensins(parentChr, 400, 400,
	"passiveobject/zrr_skill/atpriest/animation/atdepravitysevensins/delightflower_flower_flarebg03.ani", ENUM_DRAWLAYER_COVER)
	}
	//`create exp bg`0	0	63
	}else if(flagIndex == 3)
	{
	sq_flashScreen(obj, 360, 0, 0, 102, sq_RGB(255,255,255), GRAPHICEFFECT_LINEARDODGE, ENUM_DRAWLAYER_CLOSEBACK);
	}else if(flagIndex == 4)
	{
	sq_flashScreen(obj, 0, 0, 240, 255, sq_RGB(255,255,255), GRAPHICEFFECT_LINEARDODGE, ENUM_DRAWLAYER_CLOSEBACK);
	//`explosion`-3	0	-1	
	sq_SetMyShake(obj,10,320);
	obj.sq_PlaySound("DSEVENSINS_EXP");
	
	if(parentChr.getVar("damaFlowerOfPurification").get_obj_vector_size() == 0)
	{
	obj.sq_PlaySound("PW_DSEVENSINS_DM_04");
	}
	}else if(flagIndex == 5)
	{
	//`end`2	0	72	
	setVliadEffectatdepravitysevensins(parentChr)
    if(parentChr.isMyControlObject())
	{
    creatdepravitysevensins(parentChr, 400, 0,
	"character/priest/seducer/effect/animation/atdepravitysevensins/background/delightflower_bg_end_black.ani", ENUM_DRAWLAYER_BOTTOM)	
	}
	parentChr.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	
	}else if(flagIndex == 6)
	{
	sq_SetMyShake(obj,1,240);
	sq_CreateDrawOnlyObject(obj,"character/priest/seducer/effect/animation/atdepravitysevensins/delightflower_cast06.ani",ENUM_DRAWLAYER_NORMAL,true);

	}
	}else if(id == 15)
	{
	if(flagIndex == 0)
	sq_SetMyShake(obj,5,240);
	
	}
	
	return true;
}

function credelightflowerflowerbodyb(obj, x, y, img, ENUM, Direction)
{

	local ani = sq_CreateAnimation("",img);
	
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM);
	local objectManager = obj.getObjectManager();
	local xPos = objectManager.getFieldXPos(x, ENUM_DRAWLAYER_NORMAL);
	local yPos = objectManager.getFieldYPos(y, 0, ENUM_DRAWLAYER_NORMAL);
	pooledObj.setCurrentPos(xPos ,yPos, 0);
	pooledObj.setCurrentDirection(Direction);
	sq_AddObject(obj, pooledObj, 0, false);

}

function onEndState_po_ATPriest(obj, new_state)
{
	if (!obj)
		return 0;
	local id = obj.getVar("id").get_vector(0);
	local parentChr = obj.getTopCharacter();	
	parentChr = sq_GetCNRDObjectToSQRCharacter(parentChr);	//啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧
	if(id == 8)
	{
    if (new_state != STATE_FLOWEROFPURIFICATION )
    {
	setVliadEffectatdepravitysevensins(parentChr);
    }
	}else if(id == 9)
	{
    if (new_state != STATE_FLOWEROFPURIFICATION )
    {
	setVliadEffectdelightflower_wavehit01(obj)
    }
	}
}

function procAppend_po_ATPriest(obj)
{
	if (!obj)
		return 0;
	local id = obj.getVar("id").get_vector(0);
	local parentChr = obj.getTopCharacter();	
	parentChr = sq_GetCNRDObjectToSQRCharacter(parentChr);
	if(!parentChr) return;
	local pAni = obj.getCurrentAnimation();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = sq_GetAnimationFrameIndex(pAni);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	if (id == 3) {
		local pAni = obj.getCurrentAnimation();
		local currentT = sq_GetCurrentTime(pAni);
		local curShoot = obj.getVar("Greedthelurker").get_vector(0);
		local maxShoot = obj.getVar("Greedthelurker").get_vector(1);
		local encodeT1 = obj.getVar("hitTime").get_vector(0);
		if (maxShoot < curShoot) {
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(4);
			sq_BinaryWriteDword(parentChr.sq_GetBonusRateWithPassive(SKILL_GREEDTHELURKER, -1, 0, 1.0));
			sq_BinaryWriteDword(parentChr.sq_GetIntData(SKILL_GREEDTHELURKER, 0));
			sq_SendCreatePassiveObjectPacketPos(parentChr, 24384, 0, x, y, z);
			sq_SendDestroyPacketPassiveObject(obj);
		}
		if (currentT - encodeT1 >= 50) {
			local attackBonusRate = obj.getVar("attackBonusRate").get_vector(0);

			local attackInfo = sq_GetCustomAttackInfo(obj, 3);
			sq_SetCurrentAttackInfo(obj, attackInfo);
			local attackInfo = sq_GetCurrentAttackInfo(obj, attackInfo);
			sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

			obj.resetHitObjectList();
			obj.getVar("hitTime").set_vector(0, currentT);

			local curShoot = obj.getVar("Greedthelurker").get_vector(0);
			obj.getVar("Greedthelurker").set_vector(0, curShoot + 1);
		}
		if (parentChr.getVar("damaatgreedthelurker").get_obj_vector_size() > 0 && obj.getVar("flagatgreedthelurker").get_vector(0) == 0) {
			obj.getVar("flagatgreedthelurker").set_vector(0, 1);
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(17);
			sq_BinaryWriteDword(parentChr.sq_GetIntData(SKILL_FIRSTPRANA, 1));
			sq_SendCreatePassiveObjectPacketPos(parentChr, 24384, 0, parentChr.getXPos(), parentChr.getYPos() + 1, 0);
		}
	}
	else if (id == 4)	
	{
		local pAni = obj.getCurrentAnimation();
		local currentT = sq_GetCurrentTime(pAni);

		if (currentT >= parentChr.sq_GetIntData(SKILL_GREEDTHELURKER, 3))
		{
		setVliadEffectGreedthelurker(obj)
        sq_BinaryStartWrite();
        sq_BinaryWriteDword(6);
        sq_BinaryWriteDword(parentChr.sq_GetIntData(SKILL_GREEDTHELURKER, 0));
        sq_SendCreatePassiveObjectPacketPos(parentChr, 24384, 0, x, y, z);
		sq_SendDestroyPacketPassiveObject(obj);	
		}
	}else if (id == 8)	
	{

		local sq_var = parentChr.getVar("damaFlowerOfPurification");
		local objectsSize = sq_var.get_obj_vector_size();
		for(local i = 0; i < objectsSize; ++i)
		{
		local damager = sq_var.get_obj_vector(i);
		if(!sq_IsFixture(damager))
		{
		local damaX = damager.getXPos();
		local damaY = damager.getYPos();
		local damaZ = damager.getZPos();
		sq_setCurrentAxisPos(damager, 0, x);
		sq_setCurrentAxisPos(damager, 1, y);
		sq_setCurrentAxisPos(damager, 2, z);
		}
		}
	}else if (id == 10)	
	{
		local startX = obj.getVar("mov").get_vector(2);
		local dist = obj.getVar("mov").get_vector(1);

		local pAni = obj.getCurrentAnimation();
		local currentT = sq_GetCurrentTime(pAni);
		local maxT = pAni.getDelaySum(false);
		if (currentT < maxT)
		{
			local v1 = sq_GetUniformVelocity(0, dist, currentT, maxT);
			local posX = sq_GetDistancePos(startX, obj.getDirection(), v1);
			obj.setCurrentPos(posX,obj.getYPos(),obj.getZPos());
		}
	}else if (id == 12)	
	{
		if (currentT > sq_GetIntData(parentChr, SKILL_ENVIOUSKISS, 4))
		{
		parentChr.getVar("damaEnviousKiss").clear_obj_vector();
		sq_SendDestroyPacketPassiveObject(obj);	
		}
	}else if (id == 16)	
	{
        if (parentChr.sq_GetState() == STATE_DIE)
        {
		sq_SendDestroyPacketPassiveObject(obj);
        }
	local posX = parentChr.getXPos();
    local posY = parentChr.getYPos();
    local posZ = parentChr.getZPos();
	
        if ( abs( obj.getXPos() - posX ) < 100 && abs(obj.getYPos() - posY) < 100)
        {
            obj.setCurrentPos(posX,posY,0);
                obj.setCurrentDirection(parentChr.getDirection());
        }
		else{
            local currentAni = sq_GetCurrentAnimation(obj);
            local currentT = sq_GetCurrentTime(currentAni);
			
            local movXSpeed = 100;
            local movYSpeed = 100;
            if (obj.getXPos() > posX)
            {
                obj.setCurrentPos(obj.getXPos() - movXSpeed,obj.getYPos(),obj.getZPos());
                obj.setCurrentDirection(parentChr.getDirection());
            }else if (obj.getXPos() < posX)
            {
                obj.setCurrentPos(obj.getXPos() + movXSpeed,obj.getYPos(),obj.getZPos());
                obj.setCurrentDirection(parentChr.getDirection());
            }

            if (obj.getYPos() > posY)
            {
                obj.setCurrentPos(obj.getXPos(),obj.getYPos() - movYSpeed,obj.getZPos());
            }else if (obj.getYPos() < posY)
            {
                obj.setCurrentPos(obj.getXPos(),obj.getYPos() + movYSpeed,obj.getZPos());
            }
        }
		}
}

function onAttack_po_ATPriest(obj, damager, boundingBox, isStuck) {
	if (!obj)
		return 0;
	local id = obj.getVar("id").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local parentChr = obj.getTopCharacter();
	parentChr = sq_GetCNRDObjectToSQRCharacter(parentChr);
	if (!parentChr) return 0;
	if (id == 0) {
		if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE) && sq_IsHoldable(obj, damager) && !isSameObject(parentChr, damager)) {
			parentChr.getVar("damaLusthand").push_obj_vector(damager);

			damager.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));
			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, "character/atpriest/seducer/lusthand/ap_lusthand.nut", true);
			sq_HoldAndDelayDie(damager, obj, true, false, false, 0, 0, ENUM_DIRECTION_NEUTRAL, masterAppendage);
			sq_SendDestroyPacketPassiveObject(obj);
		}
	} else if (id == 3 || id == 4) {
		if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE) && !isSameObject(parentChr, damager)) {
			parentChr.getVar("damaatgreedthelurker").push_obj_vector(damager);
			local append = "character/atpriest/seducer/greedthelurker/ap_greedthelurker.nut";
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append)) {
				return;
			}
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, parentChr, -1, false, append, true);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, damager, parentChr, APID_RESONANCE, false);
			if (appendage) {
				if (sq_IsHoldable(parentChr, damager)) {
					sq_HoldAndDelayDie(damager, parentChr, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL, appendage);
				}
				appendage.getAppendageInfo().setValidTime(3000);
			}
		}
	} else if (id == 7) {
		if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE)) {
			setVliadEffectatsecondsoul(parentChr);
			local sq_var = parentChr.getVar("damaSecondsoul");

			local objectsSize = sq_var.get_obj_vector_size();

			for (local i = 0; i < objectsSize; ++i) {
				local damager = sq_var.get_obj_vector(i);
				if (CNSquirrelAppendage.sq_IsAppendAppendage(damager,
						"character/atpriest/seducer/secondsoul/ap_secondsoul.nut"))
					CNSquirrelAppendage.sq_RemoveAppendage(damager,
						"character/atpriest/seducer/secondsoul/ap_secondsoul.nut");
			}
		}
	} else if (id == 8) {
		if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE)) {

			local sq_var = parentChr.getVar("damaFlowerOfPurification");

			local objectsSize = sq_var.get_obj_vector_size();

			for (local i = 0; i < objectsSize; ++i) {
				local damager = sq_var.get_obj_vector(i);
				if (CNSquirrelAppendage.sq_IsAppendAppendage(damager,
						"character/atpriest/seducer/flowerofpurification/ap_flowerofpurification.nut"))
					CNSquirrelAppendage.sq_RemoveAppendage(damager,
						"character/atpriest/seducer/flowerofpurification/ap_flowerofpurification.nut");
			}
		}
	} else if (id == 9) {
		if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE)) {
			credelightflower_wavehit01(obj, 0, 0, z / -1)
			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, "character/atpriest/seducer/flowerofpurification/ap_flowerofpurification.nut", true);
			if (masterAppendage) {
				sq_HoldAndDelayDie(damager, obj, true, false, false, 0, 0, ENUM_DIRECTION_NEUTRAL, masterAppendage);
				masterAppendage.getAppendageInfo().setValidTime(5000);
			}
			parentChr.getVar("damaFlowerOfP").push_obj_vector(damager);
		}
	} else if (id == 10) {
		if (damager && damager.isObjectType(OBJECTTYPE_ACTIVE)) {
			cratenviouskisseheartstart_02(obj, 0, 0, 0, "passiveobject/zrr_skill/atpriest/animation/atenviouskiss/heartend_normal.ani")

			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, "character/atpriest/seducer/enviouskiss/ap_enviouskiss.nut", true);
			if (sq_IsHoldable(parentChr, damager)) {
				sq_HoldAndDelayDie(damager, obj, true, false, false, 0, 0, ENUM_DIRECTION_NEUTRAL, masterAppendage);
			}
			masterAppendage.sq_SetValidTime(sq_GetIntData(parentChr, SKILL_ENVIOUSKISS, 3));
			parentChr.getVar("damaEnviousKiss").push_obj_vector(damager);
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(12);
			sq_SendCreatePassiveObjectPacketPos(damager, 24384, 0, damager.getXPos(), damager.getYPos(), damager.getZPos() + damager.getObjectHeight() / 2);
			sq_SendDestroyPacketPassiveObject(obj);

		}
	}

}



function setVliadEffectdelightflower_wavehit01(obj)
{

    local var = obj.getVar("delightflower_wavehit01");  		
    local objectsSize = var.get_obj_vector_size();

    for(local i=0;i<objectsSize;++i)
    {
        local effectObj = var.get_obj_vector(i);
        if (effectObj)
        {
            effectObj.setValid(false);
        }
    }
}

function credelightflower_wavehit01(obj, disX, disY, disZ)
{

	local ani = sq_CreateAnimation("","character/priest/seducer/effect/animation/atdepravitysevensins/effect/delightflower_wavehit01.ani");
	
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);		
	sq_AddObject(obj,pooledObj,2,false);	
	obj.getVar("delightflower_wavehit01").push_obj_vector(pooledObj);

}

function onEndCurrentAni_po_ATPriest(obj)
{
	if (!obj)
		return 0;
	local id = obj.getVar("id").get_vector(0);
	local parentChr = obj.getTopCharacter();	
	parentChr = sq_GetCNRDObjectToSQRCharacter(parentChr);	//啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧	
	local pAni = obj.getCurrentAnimation();
	local currentT = sq_GetCurrentTime(pAni);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	if (id == 0)	
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}else if (id == 1)	
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}else if (id == 2)	
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}
	else if (id == 3)
	{

	}
	else if (id == 5)	
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}else if (id == 6)	
	{
		local append = "character/atpriest/seducer/greedthelurker/ap_greedthelurker.nut";
		local objectsSize = parentChr.getVar("damaatgreedthelurker").get_obj_vector_size();
		for (local i = 0; i < objectsSize; ++i) {
			local damager = parentChr.getVar("damaatgreedthelurker").get_obj_vector(i);
			if (CNSquirrelAppendage.sq_IsAppendAppendage(damager, append)) {
				CNSquirrelAppendage.sq_RemoveAppendage(damager, append);
			}
		}
		sq_SendDestroyPacketPassiveObject(obj);	
	}else if (id == 7)	
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}else if (id == 8)	
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}else if (id == 9)	
	{
		sq_SendDestroyPacketPassiveObject(obj);	
		setVliadEffectdelightflower_wavehit01(obj)
	}else if (id == 10)	
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}else if (id == 11)	
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}else if (id == 13)	
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}else if (id == 14)	
	{
		sq_SendDestroyPacketPassiveObject(obj);	

	}else if (id == 15)	
	{
		sq_SendDestroyPacketPassiveObject(obj);	
	}else if (id == 17)	
	{
		sq_SendDestroyPacketPassiveObject(obj);	
		parentChr.getVar("flagFirstPrana").set_vector(0,0);
	}

}



function setVliadEffectGreedthelurker(obj)
{

    local var = obj.getVar("atgreedthelurkerani");  		
    local objectsSize = var.get_obj_vector_size();

    for(local i=0;i<objectsSize;++i)
    {
        local effectObj = var.get_obj_vector(i);
        if (effectObj)
        {
            effectObj.setValid(false);
        }
    }
}


function creatgreedthelurkerani(obj, disX, disY, disZ, img, size,ENUM)
{

	local ani = sq_CreateAnimation("",img);
	
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM);		
	sq_AddObject(obj,pooledObj,2,false);	
	obj.getVar("atgreedthelurkerani").push_obj_vector(pooledObj);
	local currentAni = sq_GetCurrentAnimation(pooledObj);
	local sizeRate = size.tofloat()/100.0;
	currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
	currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
	sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
}


 