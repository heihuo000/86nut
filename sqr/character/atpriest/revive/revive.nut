

//啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮踝萧啮赔?
function checkExecutableSkill_Revive(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(SKILL_REVIVE);
	if (isUse)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_REVIVE, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_Revive(obj)
{
	if (!obj) return false;
	local state = obj.sq_GetState();
	if (state == STATE_STAND)
		return true;
		return true;
}

function onSetState_Revive(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
		SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_REVIVE_CAST_BODY);
	}
	if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_REVIVE_THROW_BODY);
		sq_AddDrawOnlyAniFromParent(obj,"character/priest/effect/animation/atrevive/revivecast02_09.ani", 0, 1, 0);
		sq_AddDrawOnlyAniFromParent(obj,"character/priest/effect/animation/atrevive/revivecast02_bottom.ani", 0, -1, 0);
		sq_AddDrawOnlyAniFromParent(obj,"character/priest/effect/animation/atrevive/revivecast02_12.ani", 0, -1, 0);
		addReviveBuff(obj);
	}
}

function onKeyFrameFlag_Revive(obj,flagIndex)
{
	if(!obj)
		return false;
	if (flagIndex == 0)
	{
		obj.sq_PlaySound("REVIVE_CAST");
	}
	if (flagIndex == 1)
	{
		sq_flashScreen(obj, 0, 0, 300, 153, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
	}
	return true;
}

function onEndCurrentAni_Revive(obj)
{
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_REVIVE, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	if(substate == 1)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function addReviveBuff(obj)
{
	local objectManager = obj.getObjectManager();
	local count = 0;
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if (object && !obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_CHARACTER))
		{
			object = sq_GetCNRDObjectToSQRCharacter(object);
			local appendage = object.GetSquirrelAppendage("character/atpriest/revive/ap_revive_hold.nut");
			if(appendage){
				appendage.getVar("revive").set_vector(2, 1);
			}
			//object.setHp(object.getHpMax() * 20 / 100 , null, true);
		}
	}
}
