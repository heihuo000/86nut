
function checkExecutableSkill_LausDeAngelus(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_LAUS_DE_ANGELUS);
	if (isUse)
	{
		obj.getVar("Pos").clear_vector();
		obj.getVar("Pos").push_vector(obj.getXPos());
		obj.getVar("Pos").push_vector(obj.getYPos());
		obj.getVar("Pos").push_vector(obj.getZPos());
		
		local xPos = obj.getObjectManager().getFieldXPos(400, ENUM_DRAWLAYER_COVER);
		local yPos = obj.getObjectManager().getFieldYPos(400, 1, ENUM_DRAWLAYER_COVER);
		obj.sq_SetCurrentPos(obj, xPos + 100, yPos + 20, 0);
		
		obj.setObjectHeight(999);
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_LAUS_DE_ANGELUS , STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_LausDeAngelus(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	if (state == STATE_STAND)
		return true;
		return true;
}

function onSetState_LausDeAngelus(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	
	obj.sq_StopMove();
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	if(substate == 0)
	{
		obj.sq_PlaySound("LAUSDEANGELUS_START");
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_LAUS_DE_ANGELUS_START_BODY_BODY);
		local startbody = "character/priest/effect/animation/atlausdeangelus/lausdeangelusstartbody_03.ani";
		ATPriest_Create(obj,startbody,ENUM_DRAWLAYER_BOTTOM,0,0,0,0,100,0,100,"startbody");
		local startbackeffect = "character/priest/effect/animation/atlausdeangelus/lausdeangelusstartbackeffect_00.ani";
		ATPriest_Create(obj,startbackeffect,ENUM_DRAWLAYER_BOTTOM,0,0,0,0,100,0,100,"startbackeffect");
	}
	if(substate == 1)
	{
		CHR_3RD_SKILL_ID = 2;
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_LAUS_DE_ANGELUS_FALLING_BODY_BODY);
		
		local fallingbackground = "character/priest/effect/animation/atlausdeangelus/lausdeangelusfallingbackground_00.ani";
		ATPriest_Create(obj,fallingbackground,ENUM_DRAWLAYER_CONTACT,0,0,0,0,100,0,100,"fallingbackground");
		
		local fallinglight = "character/priest/effect/animation/atlausdeangelus/lausdeangelusfallinglight_00.ani";
		ATPriest_Create(obj,fallinglight,ENUM_DRAWLAYER_CONTACT,0,0,0,0,100,0,100,"fallinglight");
		local fallingcover = "character/priest/effect/animation/atlausdeangelus/lausdeangelusfallingcover_01.ani";
		ATPriest_Create(obj,fallingcover,ENUM_DRAWLAYER_CONTACT,0,0,0,0,100,0,100,"fallingcover");
		
		local fallingangel01 = "character/priest/effect/animation/atlausdeangelus/lausdeangelusfallingangel01_00.ani";
		ATPriest_Create(obj,fallingangel01,ENUM_DRAWLAYER_CONTACT,0,0,0,0,100,0,100,"fallingangel01");
		local fallingangel0203 = "character/priest/effect/animation/atlausdeangelus/lausdeangelusfallingangel0203_00.ani";
		ATPriest_Create(obj,fallingangel0203,ENUM_DRAWLAYER_CONTACT,0,0,0,0,100,0,100,"fallingangel0203");
		
		local fallingbody = "character/priest/atanimation/lausdeangelusfallingbody_body_new.ani";
		ATPriest_Create(obj,fallingbody,ENUM_DRAWLAYER_CONTACT,0,0,0,0,100,0,100,"fallingbody");
	}
	if(substate == 2)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_LAUS_DE_ANGELUS_SONG_D_BODY_BODY);
		
		local songbackgroundc = "character/priest/effect/animation/atlausdeangelus/lausdeangelussongbackgroundc_00.ani";
		ATPriest_Create(obj,songbackgroundc,ENUM_DRAWLAYER_CONTACT,0,-30,0,0,110,0,100,"songbackgroundc");
		local songbackgrounda = "character/priest/effect/animation/atlausdeangelus/lausdeangelussongbackgrounda_03.ani";
		ATPriest_Create(obj,songbackgrounda,ENUM_DRAWLAYER_CONTACT,0,-30,0,0,110,0,100,"songbackgrounda");
		local songbottom = "character/priest/effect/animation/atlausdeangelus/lausdeangelussongbottom_00.ani";
		ATPriest_Create(obj,songbottom,ENUM_DRAWLAYER_CONTACT,0,-30,0,0,110,0,100,"songbottom");
		
		local songa = "character/priest/effect/animation/atlausdeangelus/lausdeangelussonga_17.ani";
		ATPriest_Create(obj,songa,ENUM_DRAWLAYER_CONTACT,0,-30,0,0,110,0,100,"songa");
		
		local songdbody = "character/priest/atanimation/lausdeangelussongdbody_body_new.ani";
		ATPriest_Create(obj,songdbody,ENUM_DRAWLAYER_CONTACT,0,0,0,0,100,0,100,"songdbody");
		local songbangel010203 = "character/priest/effect/animation/atlausdeangelus/lausdeangelussongbangel010203_00.ani";
		ATPriest_Create(obj,songbangel010203,ENUM_DRAWLAYER_CONTACT,0,0,0,0,100,0,100,"songbangel010203");
		
		addLausDeAngelusBuff(obj);
	}
	if(substate == 3)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_LAUS_DE_ANGELUS_END_BODY_BODY);
		local endeffect = "character/priest/effect/animation/atlausdeangelus/lausdeangelusendeffect_00.ani";
		ATPriest_Create(obj,endeffect,ENUM_DRAWLAYER_BOTTOM,-30,-50,0,0,110,0,100,"endeffect");
	}
}



function onKeyFrameFlag_LausDeAngelus(obj,flagIndex)
{
	if(!obj) return false;
	
	//--print("flagIndex : " + flagIndex);
	if (flagIndex == 0)
	{
	}
	if (flagIndex == 1)
	{
	}
	if (flagIndex == 2)
	{
	}
	if (flagIndex == 3)
	{
		local RandNum = sq_getRandom(1, 2);
		if(RandNum == 1)
			obj.sq_PlaySound("LAUSDEANGELUS_ING_1_NEO");
		if(RandNum == 2)
			obj.sq_PlaySound("LAUSDEANGELUS_ING_2_NEO");
	}
	if (flagIndex == 4)
	{
		sq_flashScreen(obj, 0, 300, 300, 255, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		obj.sq_StartWrite();
		obj.sq_WriteDword(42);
		obj.sq_SendCreatePassiveObjectPacket(24240, 0, 0, 0, 0);
	}
	if (flagIndex == 5)
	{
		obj.setTimeEvent(0, 80, 10, true);
	}
	return true;
}

function onTimeEvent_LausDeAngelus(obj, timeEventIndex, timeEventCount)
{
	if(!obj) return false;
	if(timeEventIndex == 0)
	{
		obj.sq_StartWrite();
		obj.sq_WriteDword(41);
		obj.sq_SendCreatePassiveObjectPacket(24240, 0, 0, 0, 0);
	}
}

function onEndCurrentAni_LausDeAngelus(obj)
{
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_LAUS_DE_ANGELUS, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(substate == 1)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(2);
		obj.sq_AddSetStatePacket(STATE_LAUS_DE_ANGELUS, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(substate == 2)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(3);
		obj.sq_AddSetStatePacket(STATE_LAUS_DE_ANGELUS, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(substate == 3)
	{
		obj.setObjectHeight(110);
		local srcX = obj.getVar("Pos").get_vector(0);
		local srcY = obj.getVar("Pos").get_vector(1);
		local srcZ = obj.getVar("Pos").get_vector(2);
		obj.sq_SetCurrentPos(obj, srcX, srcY, srcZ);
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function addLausDeAngelusBuff(obj)
{
	local skill_level = sq_GetSkillLevel(obj, SKILL_LAUS_DE_ANGELUS);
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if (object && !obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_CHARACTER))
		{
			object = sq_GetCNRDObjectToSQRCharacter(object);
			if(!CNSquirrelAppendage.sq_IsAppendAppendage(object, "character/atpriest/lausdeangelus/ap_lausdeangelus.nut"))
			{
				local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(object, object, SKILL_LAUS_DE_ANGELUS, false, 
				"character/atpriest/lausdeangelus/ap_lausdeangelus.nut", true);

				masterAppendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_LAUS_DE_ANGELUS, skill_level);
				CNSquirrelAppendage.sq_AppendAppendageID(masterAppendage, object, object, SKILL_LAUS_DE_ANGELUS, true);

				local Time = sq_GetIntData(obj, SKILL_LAUS_DE_ANGELUS, 5);//--啮踝萧啮踝萧啮踝萧啮?
				local physical_magical = sq_GetLevelData(obj, SKILL_LAUS_DE_ANGELUS, 2, skill_level);//--啮踝萧啮赋﹜啮踝萧啮踝萧啮褊?
				local attack_move = sq_GetLevelData(obj, SKILL_LAUS_DE_ANGELUS, 5, skill_level) / 10;//--啮踝萧恁啮踝萧啮?啮踝萧啮踝萧啮踝萧吤啮踝萧

				masterAppendage.sq_SetValidTime(Time);
				local change_appendage = masterAppendage.sq_getChangeStatus("LausDeAngelusBuff");
				if(!change_appendage)
				{
					change_appendage = masterAppendage.sq_AddChangeStatusAppendageID(object, object, 0, 
						CHANGE_STATUS_TYPE_MP_MAX, false, 100, APID_COMMON);
				}
				if(change_appendage)
				{
					change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physical_magical.tofloat());
					change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, physical_magical.tofloat());
					change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, attack_move.tofloat());
					change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, attack_move.tofloat());
				}
			}
		}
	}
}
   