
function checkExecutableSkill_WingsOfRest(obj)
{
	if (!obj) return false;
	
	local isUse = obj.sq_IsUseSkill(SKILL_WINGSOFREST);
	
	if (isUse)
	{
		obj.getVar("WingsOfRestObj").clear_obj_vector();
		//dofile("demoniclancer/cs.nut");
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_WINGSOFREST , pIntVec, STATE_PRIORITY_FORCE, false, "");
		obj.getVar("pos").clear_vector();//?啮踝萧chainawakeningskillpos啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮课殷萧
		obj.getVar("pos").push_vector(obj.getXPos());
		obj.getVar("pos").push_vector(obj.getYPos());
		obj.getVar("pos").push_vector(obj.getZPos());
	}
}

function checkCommandEnable_WingsOfRest(obj)
{

	return true;
}



function onSetState_WingsOfRest(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	obj.sq_StopMove();
	local state = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(state);
	switch(state)
	{
	case 0:
    obj.getVar("damaWingsOfRest").clear_obj_vector();
	setWingsOfRestattack(obj);

    if(!obj.isMyControlObject())
	{
	if (Seducer(obj))
	{
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_WINGSOFRESTPHASE1DEMONPARTY_MAINBODY);
	}else
	{
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_WINGSOFRESTPHASE1PARTY_MAINBODY);
	}
	creatwingsofrest(obj, 400, 300, 
	character/priest/seducer/effect/animation/atwingsofrest/phase1party/wingsofrestphase1party_particle014.ani, ENUM_DRAWLAYER_BOTTOM)

	}else
	{
	if (Seducer(obj))
	{
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_WINGSOFRESTPHASE1DEMON_MAINBODY);
	}else
	{
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_WINGSOFRESTPHASE1_MAINBODY);
	}
	}
	break;
	case 1:
	
    if(!obj.isMyControlObject())
	{
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_WINGSOFRESTPHASE2FRONTPARTY_13);
	
	creatwingsofrest(obj, 400, 500,
	"character/priest/seducer/effect/animation/atwingsofrest/phase2party/wingsofrestphase2bottomparty_15.ani", ENUM_DRAWLAYER_BOTTOM)
	creatwingsofrest(obj, 400, 500,
	"character/priest/seducer/effect/animation/atwingsofrest/phase2party/wingsofrestphase2backparty_85.ani", ENUM_DRAWLAYER_BOTTOM)
	}else
	{
	creatwingsofrest(obj, 400, 500,
	"character/priest/seducer/effect/animation/atwingsofrest/phase2/wingsofrestphase2backgrounds_00.ani", ENUM_DRAWLAYER_BOTTOM)	
	
	creatwingsofrest(obj, 400, 500,
	"character/priest/seducer/effect/animation/atwingsofrest/phase2/wingsofrestphase2bottom_15.ani", ENUM_DRAWLAYER_BOTTOM)
	
	creatwingsofrest(obj, 400, 500,
	"character/priest/seducer/effect/animation/atwingsofrest/phase2/wingsofrestphase2back_85.ani", ENUM_DRAWLAYER_BOTTOM)
	
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_WINGSOFRESTPHASE2FRONT_MAINBODY);
	}
	break;
	case 2:
	
	sq_flashScreen(obj, 360, 540, 600, 255, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
	sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_DISTANTBACK);
    if(!obj.isMyControlObject())
	{
	if (Seducer(obj))
	{
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_WINGSOFRESTPHASE3DEMONPARTY_MAINBODY);
	}else
	{
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_WINGSOFRESTPHASE3PARTY_MAINBODY);
	}
	
	creatwingsofrest(obj, 400, 500,
	"character/priest/seducer/effect/animation/atwingsofrest/phase3party/wingsofrestphase3party_awakebody.ani", ENUM_DRAWLAYER_BOTTOM)

	}else
	{
	if (Seducer(obj))
	{
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_WINGSOFRESTPHASE3DEMON_MAINBODY);
	}else
	{
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_WINGSOFRESTPHASE3_MAINBODY);
	}
	creatwingsofrest(obj, 400, 400,
	"character/priest/seducer/effect/animation/atwingsofrest/phase3/wingsofrestphase3_cover_01.ani", ENUM_DRAWLAYER_COVER)
	
	creatwingsofrest(obj, 400, 400,
	"character/priest/seducer/effect/animation/atwingsofrest/phase3/wingsofrestphase3_17.ani", ENUM_DRAWLAYER_COVER)	
	}

	break;
	case 3:

	if (Seducer(obj))
	{
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_WINGSOFRESTENDDEMON_MAINBODY);
	}
	else
	{
    obj.sq_SetCurrentAnimation(CUSTOM_ANI_WINGSOFRESTEND_MAINBODY);
	}
	break;
    }
	//obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
	//SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function creatwingsofrest(obj, x, y, img, ENUM)
{
	local ani = sq_CreateAnimation("",img);
	
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM);
	local objectManager = obj.getObjectManager();
	local xPos = objectManager.getFieldXPos(x, ENUM_DRAWLAYER_NORMAL);
	local yPos = objectManager.getFieldYPos(y, 0, ENUM_DRAWLAYER_NORMAL);
	pooledObj.setCurrentPos(xPos ,yPos, 0);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 0, false);
	obj.getVar("WingsOfRestObj").push_obj_vector(pooledObj);
}

function setVliadEffectWingsOfRestObj(obj)
{

    local var = obj.getVar("WingsOfRestObj");  		
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


function crewingsofrestDummy(obj)
{
	local atk = obj.sq_GetBonusRateWithPassive(SKILL_WINGSOFREST, -1, 0, 1.0);
	sq_createAttackObjectWithPath(obj, 
	"passiveobject/zrr_skill/atpriest/animation/wingsofrest/attackbox.ani",
	"passiveobject/zrr_skill/atpriest/attackinfo/wingsofrest.atk",true,atk,100,0,0,0);		
}

function onEndCurrentAni_WingsOfRest(obj)
{
	if(!obj) return;
	local state = obj.getSkillSubState(); 

	switch(state)
	{
	case 0:
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 1);
		
		obj.addSetStatePacket(STATE_WINGSOFREST , pIntVec, STATE_PRIORITY_FORCE, false, "");	
		local objectManager = obj.getObjectManager();//啮踝萧啮踝萧啮踝萧啮踝萧庢啮踝萧啮踝萧
		local xPos = objectManager.getFieldXPos(400, ENUM_DRAWLAYER_NORMAL);//啮踝萧啮踝萧x啮踝萧啮踝萧啮踝萧啮践ㄛENUM_DRAWLAYER_NORMAL?啮踝萧啮踝萧啮踝萧
		local yPos = objectManager.getFieldYPos(500, 0, ENUM_DRAWLAYER_NORMAL);//啮踝萧啮踝萧y啮踝萧啮踝萧啮踝萧啮践ㄛENUM_DRAWLAYER_NORMAL?啮踝萧啮踝萧啮踝萧

		obj.sq_SetCurrentPos(obj, xPos, yPos, 0);//啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧xPos啮踝萧yPos
	break;
	case 1:

		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 2);
		
		obj.addSetStatePacket(STATE_WINGSOFREST , pIntVec, STATE_PRIORITY_FORCE, false, "");	
		local objectManager = obj.getObjectManager();//啮踝萧啮踝萧啮踝萧啮踝萧庢啮踝萧啮踝萧
		local xPos = objectManager.getFieldXPos(400, ENUM_DRAWLAYER_NORMAL);//啮踝萧啮踝萧x啮踝萧啮踝萧啮踝萧啮践ㄛENUM_DRAWLAYER_NORMAL?啮踝萧啮踝萧啮踝萧
		local yPos = objectManager.getFieldYPos(300, 0, ENUM_DRAWLAYER_NORMAL);//啮踝萧啮踝萧y啮踝萧啮踝萧啮踝萧啮践ㄛENUM_DRAWLAYER_NORMAL?啮踝萧啮踝萧啮踝萧

		obj.sq_SetCurrentPos(obj, xPos, yPos, 0);//啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧xPos啮踝萧yPos
	break;
	case 2:
		local srcX = obj.getVar("pos").get_vector(0);
		local srcY = obj.getVar("pos").get_vector(1);
		local srcZ = obj.getVar("pos").get_vector(2);
		obj.sq_SetCurrentPos(obj, srcX, srcY, srcZ);
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 3);
		
		obj.addSetStatePacket(STATE_WINGSOFREST , pIntVec, STATE_PRIORITY_FORCE, false, "");	
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_NORMAL);
	break;
	case 3:
        obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);

	break;
    }
}


function onEndState_WingsOfRest(obj, new_state)
{
    if (new_state != STATE_WINGSOFREST )
    {
    setVliadEffectWingsOfRestObj(obj)
	local sq_var = obj.getVar("damaWingsOfRest");

	local objectsSize = sq_var.get_obj_vector_size();

	for(local i = 0; i < objectsSize; ++i)
	{
	local damager = sq_var.get_obj_vector(i);
	if(CNSquirrelAppendage.sq_IsAppendAppendage(damager,
	"character/atpriest/seducer/wingsofrest/ap_wingsofrest.nut")) 
	CNSquirrelAppendage.sq_RemoveAppendage(damager,
	"character/atpriest/seducer/wingsofrest/ap_wingsofrest.nut");
	}
    }
}

function setWingsOfRestattack(obj)
{
    local dist = sq_GetIntData(obj, SKILL_WINGSOFREST, 0);
    local tar = getFlowerOfPurification(obj,dist);

    if (tar)
        obj.getVar("damaWingsOfRest").push_obj_vector( tar );
 

}

function playWingsOfRestSound(obj)
{
    local rand = sq_getRandom(0,100).tointeger();
    if (rand <= 50)
        obj.sq_PlaySound("PW_WINGSOFREST_04");
    else if (rand <= 100)
        obj.sq_PlaySound("PW_WINGSOFREST_01");
}



function onKeyFrameFlag_WingsOfRest(obj,flagIndex)//啮踝萧啮踝萧弮啮踝萧啮踝萧啮踝萧啮踝萧
{
	if(!obj) return;


	local state = obj.getSkillSubState();//啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧sub state啮踝萧啮踝萧
	if(!obj.isMyControlObject()) return;
	switch(state)
	{
	case 0:
	if(flagIndex == 0)
	{
	//`Play Sound Type1 PW_WINGSOFREST_04`0	0	0
	//`Play Sound Type0 PW_WINGSOFREST_01`0	0	0	
	playWingsOfRestSound(obj);		
	}else if(flagIndex == 1)
	{
	sq_SetMyShake(obj,15,400);
	
	}else if(flagIndex == 2)
	{
	creatwingsofrest(obj, 400, 300,
	"character/priest/seducer/effect/animation/atwingsofrest/phase1/wingsofrestphase1_cover_00.ani", ENUM_DRAWLAYER_COVER)

	local sq_var = obj.getVar("damaWingsOfRest");

	local objectsSize = sq_var.get_obj_vector_size();

	for(local i = 0; i < objectsSize; ++i)
	{
	local damager = sq_var.get_obj_vector(i);
	if(damager && damager.isObjectType(OBJECTTYPE_ACTIVE)
	&& !sq_IsFixture(damager)
	&& sq_IsHoldable(obj,damager) )
	{
    local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, -1, false, 
    "character/atpriest/seducer/wingsofrest/ap_wingsofrest.nut", true);		
    sq_HoldAndDelayDie(damager, obj, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL , masterAppendage);
	}
	}	
	}
	break;

	case 1:
	
	if(!obj.isMyControlObject())
	{
	if(flagIndex == 0)
	{
	//`Play Sound Type1 PW_WINGSOFREST_05`0	0	0
	
	if (!Seducer(obj))
	obj.sq_PlaySound("PW_WINGSOFREST_05");	
	}else if(flagIndex == 1)
	{
	sq_SetMyShake(obj,2,720);
	}else if(flagIndex == 2)
	{
	//`Play Sound Type0 R_PW_WINGSOFREST_QUIET`0	0	0	
	
	if (Seducer(obj))
	obj.sq_PlaySound("R_PW_WINGSOFREST_QUIET");	
	}
	}else
	{
	if(flagIndex == 0)
	{
	sq_SetMyShake(obj,2,1620);
	//`WingsOfRest`
	//`Add Bottom Effect`3	0	-36	
	//`LockPartyPlayerCutScene`1	0	0
	}else if(flagIndex == 1)
	{
	sq_flashScreen(obj, 0, 180, 420, 255, sq_RGB(255,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
	sq_SetMyShake(obj,15,260);
	}else if(flagIndex == 2)
	{
	sq_SetMyShake(obj,2,1500);
	}else if(flagIndex == 3)
	{
	sq_flashScreen(obj, 0, 0, 600, 255, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
	createredeemer_Neo(obj);
	}else if(flagIndex == 4)
	{
	//`Play Sound Type1 PW_WINGSOFREST_05`0	0	0	

	if (!Seducer(obj))
	obj.sq_PlaySound("PW_WINGSOFREST_05");	
	}else if(flagIndex == 5)
	{
	//`Add Wait Cover Effect`-1	0	178	
	//`Play Sound Type0 R_PW_WINGSOFREST_QUIET`0	0	0

	if (Seducer(obj))
	obj.sq_PlaySound("R_PW_WINGSOFREST_QUIET");	
	}
	}

	break;
	case 2:
	if(flagIndex == 0)
	{
	
	}else if(flagIndex == 1)
	{
	crewingsofrestDummy(obj);

	local sq_var = obj.getVar("damaWingsOfRest");

	local objectsSize = sq_var.get_obj_vector_size();

	for(local i = 0; i < objectsSize; ++i)
	{
	local damager = sq_var.get_obj_vector(i);
	if(CNSquirrelAppendage.sq_IsAppendAppendage(damager,
	"character/atpriest/seducer/wingsofrest/ap_wingsofrest.nut")) 
	CNSquirrelAppendage.sq_RemoveAppendage(damager,
	"character/atpriest/seducer/wingsofrest/ap_wingsofrest.nut");
	}
	}
	
	break;
	case 3:
	if(flagIndex == 0)
	{
	
	}else if(flagIndex == 1)
	{
	
	}
	
	break;
	}
	return true;
}



function createredeemer_Neo(obj)
{
	local ani = sq_CreateAnimation("","passiveobject/zrr_skill/atpriest/animation/wingsofrest/redeemer_neo.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_COVER);
	
	local objectManager = obj.getObjectManager();
	
	if (sq_GetDirection(obj) == ENUM_DIRECTION_LEFT)
	{
		local xPos = objectManager.getFieldXPos(1000, ENUM_DRAWLAYER_COVER);
		local yPos = objectManager.getFieldYPos(0, 0, ENUM_DRAWLAYER_COVER);
		pooledObj.setCurrentPos(xPos ,yPos ,0);
	}
	if (sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT)
	{
		local xPos = objectManager.getFieldXPos(0, ENUM_DRAWLAYER_COVER);
		local yPos = objectManager.getFieldYPos(0, 0, ENUM_DRAWLAYER_COVER);
		pooledObj.setCurrentPos(xPos ,yPos ,0);
	}
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}
