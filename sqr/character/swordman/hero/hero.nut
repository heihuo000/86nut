function checkExecutableSkill_hero(obj)  
{
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_HERO);
	if (isUseSkill) {
        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector(0);
		obj.sq_AddSetStatePacket(STATE_HERO, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function killMonster(obj)
{

	local objectManager = obj.getObjectManager();

	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		local activeObj = sq_GetCNRDObjectToActiveObject(object);
        if (activeObj)
        {
            activeObj.setCurrentPos( activeObj.getXPos(),activeObj.getYPos(),250 );
        }
	}
}


function checkCommandEnable_hero(obj)  
{
	return true;
}
function onSetState_HERO(obj, state, datas, isResetTimer)
{
    local state = obj.getVar("state").get_vector(0);

	obj.sq_StopMove();
    if (state == 0)
    {

        obj.sq_SetCurrentAnimation(CUSTOM_ANI_THROW);
        obj.getVar("isDelete").clear_vector();
        obj.getVar("isDelete").push_vector(0);
        obj.getVar("ghost").clear_vector();
        obj.getVar("ghost").push_vector(0);//0 kazan 1 saya 2 bremen 3 ecssss
    }else if (state == 1)
    {
        ghostJudge(obj);
//        killMonster(obj);
        obj.sq_SetCurrentAnimation(CUSTOM_ANI_THROW2);

    }

}
function ghostJudge(obj)
{
    local ghost = obj.getVar("ghost").get_vector(0);
    local ani = null;
    if (ghost == 0)
    {
        ani = sq_CreateAnimation("","character/swordman/animation/ani_als/necromantic/ghost/descentsoul_end_ghostkhazan_b.ani");
    }else if (ghost == 1)
    {
        ani = sq_CreateAnimation("","character/swordman/animation/ani_als/necromantic/ghost/descentsoul_end_ghostsaya_b.ani");
    }else if (ghost == 2)
    {
        ani = sq_CreateAnimation("","character/swordman/animation/ani_als/necromantic/ghost/descentsoul_end_ghostbremen_b.ani");

    }else if (ghost == 3)
    {
        ani = sq_CreateAnimation("","character/swordman/animation/ani_als/necromantic/ghost/descentsoul_end_rasa_c.ani");
    }

	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentPos(obj.getXPos() ,obj.getYPos() + 1,obj.getZPos() );
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	

    local appendage = null;




    local skill_level = 0;
    local skill_level2 = sq_GetSkillLevel(obj, SKILL_HERO);
    //0 kazan 1 saya 2 bremen 3 ecssss
    if (ghost == 0)
    {

        appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_HERO, false,"character/swordman/hero/ap_hero_kazan.nut", false);

        skill_level = sq_GetSkillLevel(obj, 25);
        appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), 25, skill_level);
        CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, 25, true);

		local change_appendage = appendage.sq_getChangeStatus("hero");
		local value0 = sq_GetLevelData(obj, SKILL_HERO, 0, skill_level2); 
		if(!change_appendage)
        {
			change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 
			CHANGE_STATUS_TYPE_ATTACK_SPEED, 
			false, value0, APID_COMMON);

		}
        if (change_appendage){
			change_appendage.clearParameter();
			change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, value0.tofloat() );
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, value0.tofloat() );
        }



    }else if (ghost == 1)
    {
        appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_HERO, false,"character/swordman/hero/ap_hero_saya.nut", false);
        skill_level = sq_GetSkillLevel(obj, 36);
        appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), 36, skill_level);
        CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, 36, true);
		local value0 = sq_GetLevelData(obj, SKILL_HERO, 2, skill_level2); 

		local change_appendage = appendage.sq_getChangeStatus("hero");
		if(!change_appendage)
        {
			change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 
			CHANGE_STATUS_TYPE_ATTACK_SPEED, 
			false, value0, APID_COMMON);

		}
        if (change_appendage){
			change_appendage.clearParameter();
			change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_WATER, false, value0.tofloat());
        }

        //pass

    }else if (ghost == 2)
    {
        appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_HERO, false,"character/swordman/hero/ap_hero_hermen.nut", false);
        skill_level = sq_GetSkillLevel(obj, 41);
        appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), 41, skill_level);
        CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, 41, true);

        


    }else if (ghost == 3)
    {
        appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_HERO, false,"character/swordman/hero/ap_poistion.nut", false);
        skill_level = sq_GetSkillLevel(obj, 75);
        appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), 75, skill_level);
        CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, 75, true);
    }
    appendage.getVar("ghost").clear_vector();
    appendage.getVar("ghost").push_vector(ghost);
    local change_time = obj.sq_GetIntData(SKILL_HERO, 0);
    appendage.sq_SetValidTime(change_time);

}
function onProc_HERO(obj)
{
    local state = obj.getVar("state").get_vector(0);
    if (obj.getVar("isDelete").get_vector(0) == 0)
    {
        local obj0 = obj.getMyPassiveObject(20011,0);
        local obj1 = obj.getMyPassiveObject(20012,0);
        local obj2 = obj.getMyPassiveObject(20013,0);
        local obj3 = obj.getMyPassiveObject(20040,0);
        if (obj0)
        {
            sq_SendDestroyPacketPassiveObject(obj0);
            obj.getVar("isDelete").clear_vector();
            obj.getVar("isDelete").push_vector(1);
            obj.getVar("ghost").clear_vector();
            obj.getVar("ghost").push_vector(0);
        }else if (obj1)
        {
            sq_SendDestroyPacketPassiveObject(obj1);
            obj.getVar("isDelete").clear_vector();
            obj.getVar("isDelete").push_vector(1);
            obj.getVar("ghost").clear_vector();
            obj.getVar("ghost").push_vector(1);
        }else if (obj2)
        {
            sq_SendDestroyPacketPassiveObject(obj2);
            obj.getVar("isDelete").clear_vector();
            obj.getVar("isDelete").push_vector(1);
            obj.getVar("ghost").clear_vector();
            obj.getVar("ghost").push_vector(2);
        }else if (obj3)
        {
            sq_SendDestroyPacketPassiveObject(obj3);
            obj.getVar("isDelete").clear_vector();
            obj.getVar("isDelete").push_vector(1);
            obj.getVar("ghost").clear_vector();
            obj.getVar("ghost").push_vector(3);
        }
    }
}
function onEndCurrentAni_HERO(obj)
{
    local state = obj.getVar("state").get_vector(0);
    if (state == 0)
    {
        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector(1);
		obj.sq_AddSetStatePacket(STATE_HERO, STATE_PRIORITY_USER, true);
    }else if (state == 1)
    {
        obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
    }
}