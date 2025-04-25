
function checkExecutableSkill_BlessOfCourage(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_BLESS_OF_COURAGE);
	if (isUse)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_BLESS_OF_COURAGE, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_BlessOfCourage(obj)
{
	if (!obj) return false;
		return true;
}

function onSetState_BlessOfCourage(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_BLESS_OF_COURAGE_CAST_BODY);
		
		local MagicalAttack = INTELLIGENCE_VALUE;
		sq_BinaryStartWrite();
		sq_BinaryWriteWord(11);
		sq_BinaryWriteDword(MagicalAttack);
		sq_SendChangeSkillEffectPacket(obj, SKILL_BLESS_OF_COURAGE);
		
		sq_StartDrawCastGauge(obj, sq_GetCastTime(obj, SKILL_BLESS_OF_COURAGE, sq_GetSkillLevel(obj, SKILL_BLESS_OF_COURAGE)), true);
	}
	if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_BLESS_OF_COURAGE_START_BODY);
		addBlessOfCourageBuff(obj);
	}
}

function onEndState_BlessOfCourage(obj, newState) {
	if(!obj)
		return false;
	if(newState != STATE_BLESS_OF_COURAGE)
		sq_EndDrawCastGauge(obj);
}

function BlessOfCourage_starta_effect_front_d1(obj)
{
	local starta_effect_front_d1 = "character/priest/effect/animation/atblessofcourage/starta_effect_front_d1.ani";
	ATPriest_Create(obj,starta_effect_front_d1,ENUM_DRAWLAYER_BOTTOM,0,0,0,0,100,0,100,"starta_effect_front_d1");
}

function BlessOfCourage_starta_effect_front_a2(obj)
{
	local starta_effect_front_a2 = "character/priest/effect/animation/atblessofcourage/starta_effect_front_a2.ani";
	ATPriest_Create(obj,starta_effect_front_a2,ENUM_DRAWLAYER_BOTTOM,0,0,0,0,100,0,100,"starta_effect_front_a2");
}

function BlessOfCourage_startb_effect_1(obj)
{
	local startb_effect_1 = "character/priest/effect/animation/atblessofcourage/startb_effect_1.ani";
	ATPriest_Create(obj,startb_effect_1,ENUM_DRAWLAYER_BOTTOM,0,0,0,0,100,0,100,"startb_effect_1");
}

function BlessOfCourage_starta_effect_back_floor(obj)
{
	local starta_effect_back_floor = "character/priest/effect/animation/atblessofcourage/starta_effect_back_floor.ani";
	ATPriest_Create(obj,starta_effect_back_floor,ENUM_DRAWLAYER_BOTTOM,0,0,0,0,100,0,100,"starta_effect_back_floor");
}

function BlessOfCourage_starta_effect_back_glow(obj)
{
	local starta_effect_back_glow = "character/priest/effect/animation/atblessofcourage/starta_effect_back_glow.ani";
	ATPriest_Create(obj,starta_effect_back_glow,ENUM_DRAWLAYER_BOTTOM,0,0,0,0,100,0,100,"starta_effect_back_glow");
}

function onKeyFrameFlag_BlessOfCourage(obj,flagIndex)
{
	if(!obj)
		return false;
	if (flagIndex == 0)
	{
		obj.sq_PlaySound("DAWN_BLESS_CAST");
	}
	return true;
}

function onEndCurrentAni_BlessOfCourage(obj)
{
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_BLESS_OF_COURAGE, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(substate == 1)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function onChangeSkillEffect_BlessOfCourage(obj, skillIndex, reciveData)
{
	if(!obj) return;
	local readWord = reciveData.readWord();
	if(readWord == 11)
	{
		local MagicalAttack = reciveData.readDword();
		obj.getVar().clear_vector();
		obj.getVar().push_vector(MagicalAttack);
	}
}

function addBlessOfCourageBuff(obj)
{
	if(!obj) return;
	
	local phyValueBonus = obj.getHpMax().tofloat();
	phyValueBonus = phyValueBonus/100000 + 1.0;
	
	local magValueBonus = obj.getMpMax().tofloat();
	magValueBonus = magValueBonus/100000 + 1.0;
	
	local skill_level = sq_GetSkillLevel(obj, SKILL_BLESS_OF_COURAGE);
	local Time = sq_GetLevelData(obj, SKILL_BLESS_OF_COURAGE, 0, skill_level) + isStudyZealOfFaith(obj);//啮踝萧啮踝萧啮踝萧啮?
	local value0 = sq_GetLevelData(obj, SKILL_BLESS_OF_COURAGE, 1, skill_level).tofloat();//琲啮踝萧啮踝萧怐啮踝萧啮踝萧吤啮踝萧
	local fValue0 = value0 * phyValueBonus;
	local value1 = sq_GetLevelData(obj, SKILL_BLESS_OF_COURAGE, 2, skill_level).tofloat();//堛啮踝萧啮踝萧怐啮踝萧啮踝萧吤啮踝萧
	local fValue1 = value1 * magValueBonus;
	local value2 = sq_GetLevelData(obj, SKILL_BLESS_OF_COURAGE, 3, skill_level).tofloat();//埮堙啮踝萧怐啮踝萧啮踝萧吤啮踝萧
	local fValue2Phy = value2 * phyValueBonus;
	local fValue2Mag = value2 * magValueBonus;
	local value3 = sq_GetLevelData(obj, SKILL_BLESS_OF_COURAGE, 4, skill_level).tofloat();//啮踝萧啮踝萧啮踝萧吤啮踝萧
	local fValue3 = value3 * phyValueBonus;
	local value4 = sq_GetLevelData(obj, SKILL_BLESS_OF_COURAGE, 5, skill_level).tofloat();//啮踝萧啮踝萧啮褊伐萧啮?
	local fValue4 = value4 * magValueBonus;
	local value5 = sq_GetLevelData(obj, SKILL_BLESS_OF_COURAGE, 6, skill_level).tofloat();//暀啮踝萧啮踝萧啮踝萧吤啮踝萧
	value5 = value5 / 10;
	
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if (object && !obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_CHARACTER) && isDistanceOfTarget(obj,object,sq_GetIntData(obj, SKILL_BLESS_OF_COURAGE, 0)))
		{
			object = sq_GetCNRDObjectToActiveObject(object);

			BlessOfCourage_starta_effect_front_d1(object);
			BlessOfCourage_starta_effect_front_a2(object);
			BlessOfCourage_startb_effect_1(object);
			BlessOfCourage_starta_effect_back_floor(object);
			BlessOfCourage_starta_effect_back_glow(object);
			
			local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(object, object, SKILL_BLESS_OF_COURAGE, false, "character/atpriest/blessofcourage/ap_blessofcourage.nut", true);
			
			masterAppendage.sq_SetValidTime(Time);
			masterAppendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_BLESS_OF_COURAGE, skill_level);
			CNSquirrelAppendage.sq_AppendAppendageID(masterAppendage, object, object, SKILL_BLESS_OF_COURAGE, true);
			masterAppendage.setBuffIconImage(126);
			local change_appendage = masterAppendage.sq_getChangeStatus("BlessOfCourageBuff");
			if(!change_appendage)
			{
				change_appendage = masterAppendage.sq_AddChangeStatusAppendageID(object, object, 0, CHANGE_STATUS_TYPE_MP_MAX, false, 0, APID_COMMON);
			}
			if(change_appendage)
			{
				change_appendage.addParameter(CHANGE_STATUS_TYPE_STUCK, false, - value5);
				if(!isSameObject(obj, object)){
					change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, fValue0);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, fValue1);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK, false, fValue2Mag);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, false, fValue2Phy);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, fValue3);
					change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, fValue4);
				}
			}
		}
	}
}

