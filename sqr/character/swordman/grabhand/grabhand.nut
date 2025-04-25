function onAttack_GRABHAND(obj, damager, boundingBox, isStuck)
{
//		obj.sq_AddSetStatePacket(STATE_STAND,  STATE_PRIORITY_USER, false);
//			obj.sq_SendCreatePassiveObjectPacket(24357, 0, 200, 1, obj.getObjectHeight()/2 );


    if (obj.getVar("value").get_vector(0) == 0 && obj.getVar("value").get_vector(1) == 31 && obj.getVar("value").get_vector(2) == -1)
    {
                    createGrabBloodHandunGrabEffect(obj,42,1,85);
                    obj.getVar("dama").clear_obj_vector();
                    obj.getVar("dama").push_obj_vector(damager);

                    obj.sq_IntVectClear();
                    obj.sq_IntVectPush(1);
                    obj.sq_IntVectPush(31);
                    obj.sq_IntVectPush(-1);
                    obj.sq_AddSetStatePacket(26,  STATE_PRIORITY_USER, true);




    }
}


function setCharacterFristAnimation_GrabHand(obj)
{
    local level = sq_GetSkillLevel(obj, 31);		
    if (level > 0)
    {

        createFristAnimationPooledObject(obj,
        "character/swordman/effect/animation/grabblastblood/bloodlustgrabcannon_00.ani");
    }
}

function checkCommandEnable_GrabBlastBlood(obj)
{

	return true;
}

function checkExecutableSkill_GrabBlastBlood(obj)  
{

	local isUseSkill = obj.sq_IsUseSkill( 31 );

	if (isUseSkill) 
    {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_IntVectPush(31);
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(26,  STATE_PRIORITY_USER, true);
	}
}
function onEndCurrentAni_GRABHAND(obj)
{
    sq_SendMessage(obj,OBJECT_MESSAGE_INVINCIBLE,1,0);
    sq_PostDelayedMessage(obj,OBJECT_MESSAGE_INVINCIBLE,0,0,500 );
}

function createGrabBloodHandunGrabEffect(obj,x,y,z)
{

	local ani = sq_CreateAnimation("","character/swordman/effect/animation/grabblastblood/bloodlustgrabcannon_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), x);
	pooledObj.setCurrentPos(posX  ,obj.getYPos() + y,obj.getZPos() + z);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj,pooledObj,2,false);	

}

function onAfterSetState_GRABHAND(obj, state, datas, isResetTimer)
{
    if (obj.getVar("value").get_vector(0) == 1 && obj.getVar("value").get_vector(1) == 31)
    {
        local dama = obj.getVar("dama").get_obj_vector(0);
        sq_SendHitObjectPacket(obj,dama,0,0,0);

    }
}
function onSetState_GRABHAND(obj, state, datas, isResetTimer)
{
	local substate = obj.sq_GetVectorData(datas, 0);
    local skill = obj.sq_GetVectorData(datas, 1);
    local tar = obj.sq_GetVectorData(datas, 2);
    obj.getVar("value").clear_vector();
    obj.getVar("value").push_vector(substate);
    obj.getVar("value").push_vector(skill);
    obj.getVar("value").push_vector(tar);
}