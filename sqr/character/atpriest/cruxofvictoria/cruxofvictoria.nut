
function checkExecutableSkill_CruxOfVictoria(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_CRUX_OF_VICTORIA);
	if (isUse)
	{
		local posX = obj.getXPos();
		local posY = obj.getYPos();
		local posZ = obj.getZPos();

		obj.getVar("CruxOfVictoria").clear_vector();
		obj.getVar("CruxOfVictoria").push_vector(posX);
		obj.getVar("CruxOfVictoria").push_vector(posY);
		obj.getVar("CruxOfVictoria").push_vector(posZ);

		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_CRUX_OF_VICTORIA, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_CruxOfVictoria(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	if (state == STATE_STAND)
		return true;
		return true;
}

function onSetState_CruxOfVictoria(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();
	if(substate == 0)
	{
		local objectManager = obj.getObjectManager();
		local xPos = objectManager.getFieldXPos(400, ENUM_DRAWLAYER_COVER);
		local yPos = objectManager.getFieldYPos(420, 1, ENUM_DRAWLAYER_COVER);
		obj.sq_SetCurrentPos(obj, xPos, yPos, 0);
		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_COV_READY_BODY_BODY);
		
		local MagicalAttack = INTELLIGENCE_VALUE;
		sq_BinaryStartWrite();
		sq_BinaryWriteWord(3);
		sq_BinaryWriteDword(MagicalAttack);
		sq_SendChangeSkillEffectPacket(obj, SKILL_BLESS_OF_COURAGE);
		sq_StartDrawCastGauge(obj, sq_GetCastTime(obj, SKILL_CRUX_OF_VICTORIA, sq_GetSkillLevel(obj, SKILL_CRUX_OF_VICTORIA)), true);
		local buffstart_eff01 = "character/priest/effect/animation/atcruxofvictoria/buffeffect/buffstart_eff01.ani";
		ATPriest_Create(obj,buffstart_eff01,ENUM_DRAWLAYER_NORMAL,0,-500,0,0,100,0,100,"buffstart_eff01");
	}
	if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_COV_FLY_BODY_BODY);
		
		
		
		sq_BinaryStartWrite()
		sq_BinaryWriteWord(1);
		sq_BinaryWriteDword(150)
		sq_BinaryWriteDword(obj.getZPos())
		sq_SendChangeSkillEffectPacket(obj, SKILL_CRUX_OF_VICTORIA)

		ATPriest_Als_Ani(obj, "character/priest/atanimation/covflybody_new_body.ani", 0, 0, 0, 0, 100, 1, 1.0);
	}
	if(substate == 2)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_COV_SETUP_BODY_BODY);

		sq_BinaryStartWrite()
		sq_BinaryWriteWord(2);
		sq_BinaryWriteDword(150)
		sq_BinaryWriteDword(obj.getZPos())
		sq_SendChangeSkillEffectPacket(obj, SKILL_CRUX_OF_VICTORIA)
	}
	if(substate == 3)
	{
		obj.sq_PlaySound("CRUXVICTORIA_END");
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_COV_BATTLE_FINISH_BODY);
		local BonusRate =  1.0;
		local eventTime = sq_GetIntData(obj, SKILL_CRUX_OF_VICTORIA, 6);
		if(sq_GetSkillLevel(obj, SKILL_CRUX_OF_VICTORIA) >= 3)
		{
			BonusRate = 1.1;
		}
		local powerA = sq_GetPowerWithPassive(obj, SKILL_CRUX_OF_VICTORIA, -1, 0, -1,BonusRate);
		local powerB = sq_GetPowerWithPassive(obj, SKILL_CRUX_OF_VICTORIA, -1, 1, -1,BonusRate);
		
		addcruxofvictoriaBuff(obj);
		
		obj.sq_StartWrite();
		obj.sq_WriteDword(26);
		obj.sq_SendCreatePassiveObjectPacket(24240, 0, 0, 150, 0);
		
		obj.sq_StartWrite();
		obj.sq_WriteDword(43);
		obj.sq_WriteDword(powerA);
		obj.sq_WriteDword(eventTime);
		obj.sq_WriteDword(powerB);
		obj.sq_SendCreatePassiveObjectPacket(24240, 0, 0, 150, 0);
	}
}

function onEndState_CruxOfVictoria(obj, newState) {
	if(!obj)
		return false;
	if(newState != STATE_CRUX_OF_VICTORIA)
		sq_EndDrawCastGauge(obj);
}

function isStudyCruxOfVictoria_Level6(obj)
{
	if(!obj) return;
	if(obj.sq_GetSkillLevel(SKILL_CRUX_OF_VICTORIA) >= 6)
	{
		return 110;
	}
	return 100;
}

function isStudyCruxOfVictoria_Level9(obj)
{
	if(!obj) return;
	if(obj.sq_GetSkillLevel(SKILL_CRUX_OF_VICTORIA) >= 9)
	{
		return 5000;
	}
	return 0;
}

function onKeyFrameFlag_CruxOfVictoria(obj,flagIndex)
{
	if(!obj)
		return false;
	if (flagIndex == 3)
	{
		sq_SetShake(obj,5,320);
	}
	if (flagIndex == 4)
	{
		obj.sq_PlaySound("CRUXVICTORIA_CAST");
	}
	if (flagIndex == 5)
	{
		sq_flashScreen(obj, 100, 100, 100, 255, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK);
		local covsetupcloudloop_eff = "character/priest/effect/animation/atcruxofvictoria/crosscatch/covsetupcloudloop_eff.ani";
		ATPriest_Create(obj,covsetupcloudloop_eff,ENUM_DRAWLAYER_NORMAL,0,0,0,0,100,0,100,"covsetupcloudloop_eff");
	}
	if (flagIndex == 6)
	{
		local covsetupcloudend_eff = "character/priest/effect/animation/atcruxofvictoria/crosscatch/covsetupcloudend_eff.ani";
		ATPriest_Create(obj,covsetupcloudend_eff,ENUM_DRAWLAYER_NORMAL,0,0,0,0,100,0,100,"covsetupcloudend_eff");
	}
	return true;
}

function onChangeSkillEffect_CruxOfVictoria(obj, skillIndex, reciveData)
{
	if(!obj) return;
	local readWord = reciveData.readWord();
	if(readWord == 1)
	{
		local high = reciveData.readDword();
		local now = reciveData.readDword();
	
		obj.getVar("CruxOfVictoriaUp").clear_vector();
		obj.getVar("CruxOfVictoriaUp").push_vector(high);
		obj.getVar("CruxOfVictoriaUp").push_vector(now);
	}
	else if(readWord == 2)
	{
		local high = reciveData.readDword();
		local new = reciveData.readDword();
		obj.getVar("CruxOfVictoriaUp").push_vector(new);
	}
	else if(readWord == 3)
	{
		local MagicalAttack = reciveData.readDword();
		obj.getVar("MagicalAttack_Value").clear_vector();
		obj.getVar("MagicalAttack_Value").push_vector(MagicalAttack);
	}
}

function onProc_CruxOfVictoria(obj)
{
	if(!obj) return;
	local substate = obj.getSkillSubState();
	local stateTimer = obj.sq_GetStateTimer();
	local var = obj.getVar("CruxOfVictoriaUp")
	local high = var.get_vector(0);
	local now = var.get_vector(1);
	local new = var.get_vector(2);
	
	if(substate == 1)
	{
		local ZPosV = sq_GetUniformVelocity(now, high, stateTimer, 300);
		sq_setCurrentAxisPos(obj, 2, ZPosV);
	}
	if(substate == 2)
	{
		local ZPosV = sq_GetUniformVelocity(new, high, stateTimer, 300);
		sq_setCurrentAxisPos(obj, 2, ZPosV);
	}
}

function onEndCurrentAni_CruxOfVictoria(obj)
{
	if(!obj) return;
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_CRUX_OF_VICTORIA, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(substate == 1)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(2);
		obj.sq_AddSetStatePacket(STATE_CRUX_OF_VICTORIA, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(substate == 2)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(3);
		obj.sq_AddSetStatePacket(STATE_CRUX_OF_VICTORIA, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(substate == 3)
	{
		local srcX = obj.getVar("CruxOfVictoria").get_vector(0);
		local srcY = obj.getVar("CruxOfVictoria").get_vector(1);
		local srcZ = obj.getVar("CruxOfVictoria").get_vector(2);
		obj.sq_SetCurrentPos(obj, srcX, srcY, srcZ);
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}


function addcruxofvictoriaBuff(obj)
{
	if(!obj) return;
	
	local phyValueBonus = obj.getHpMax().tofloat();
	phyValueBonus = phyValueBonus/100000 + 1.0;
	
	local magValueBonus = obj.getMpMax().tofloat();
	magValueBonus = magValueBonus/100000 + 1.0;
	
	local skill_level = sq_GetSkillLevel(obj, SKILL_CRUX_OF_VICTORIA);
	local Time = sq_GetLevelData(obj, SKILL_CRUX_OF_VICTORIA, 11, skill_level) + isStudyCruxOfVictoria_Level9(obj);//啮踝萧啮踝萧啮踝萧啮?
	
	local value0 = sq_GetLevelData(obj, SKILL_CRUX_OF_VICTORIA, 4, skill_level).tofloat();//啮踝萧啮踝萧啮踝萧吤啮踝萧
	local fValue0 = value0 * phyValueBonus * isStudyCruxOfVictoria_Level6(obj) / 100;
	
	local value1 = sq_GetLevelData(obj, SKILL_CRUX_OF_VICTORIA, 5, skill_level).tofloat();//啮踝萧啮踝萧啮褊伐萧啮?
	local fValue1 = value1 * magValueBonus * isStudyCruxOfVictoria_Level6(obj) / 100;
	
	local value2 = sq_GetLevelData(obj, SKILL_CRUX_OF_VICTORIA, 2, skill_level).tofloat();//啮踝萧怐啮踝萧啮踝萧啮踝萧吤啮踝萧
	value2 = value2 / 100 * isStudyCruxOfVictoria_Level6(obj) / 100;
	
	local value3 = sq_GetLevelData(obj, SKILL_CRUX_OF_VICTORIA, 3, skill_level).tofloat();//啮踝萧啮踝萧啮踝萧啮踝萧啮褊伐萧啮?
	value3 = value3 / 100 * isStudyCruxOfVictoria_Level6(obj) / 100;
	
	local value4 = sq_GetLevelData(obj, SKILL_CRUX_OF_VICTORIA, 6, skill_level).tofloat();//琲啮踝萧啮踝萧吤啮踝萧
	local fValue4 = value4 * phyValueBonus * isStudyCruxOfVictoria_Level6(obj) / 100;
	
	local value5 = sq_GetLevelData(obj, SKILL_CRUX_OF_VICTORIA, 7, skill_level).tofloat();//堛啮踝萧啮踝萧吤啮踝萧
	local fValue5 = value5 * magValueBonus * isStudyCruxOfVictoria_Level6(obj) / 100;
	
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if (object && !obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_CHARACTER))
		{
			object = sq_GetCNRDObjectToActiveObject(object);
			
			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(object, obj, SKILL_CRUX_OF_VICTORIA, false, "character/atpriest/cruxofvictoria/ap_cruxofvictoria_buff.nut", true);
			
			masterAppendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_CRUX_OF_VICTORIA, skill_level);
			CNSquirrelAppendage.sq_AppendAppendageID(masterAppendage, object, obj, SKILL_CRUX_OF_VICTORIA, true);
			
			masterAppendage.sq_SetValidTime(Time);
			local change_appendage = masterAppendage.sq_getChangeStatus("cruxofvictoriaBuff");
			if(!change_appendage)
			{
				change_appendage = masterAppendage.sq_AddChangeStatusAppendageID(object, obj, 0, CHANGE_STATUS_TYPE_MP_MAX, false, 0, APID_COMMON);
			}
			if(change_appendage)
			{
				change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, fValue0);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, fValue1);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, true, value2);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, true, value3);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_DEFENSE, false, fValue4);
				change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_DEFENSE, false, fValue5);
			}
		}
	}
}

