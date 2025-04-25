
function checkExecutableSkill_spiralgaleforce(obj)
{
	if (!obj) return false;
	
	if (!isNengLiangOpen(obj) )
	{
		if (getNengLiangNumber(obj) >= 500)
		{
			local isUse = obj.sq_IsUseSkill(SKILL_spiralgaleforce);
			if (isUse) {
				obj.getVar().clear_vector();
				obj.getVar().push_vector(0);
				obj.sq_AddSetStatePacket(STATE_spiralgaleforce , STATE_PRIORITY_USER, false);
				return true;
			}
			return false;
		}
	}else{
		CreateSpiralGaleForceEffect(obj, 0, 0, obj.getObjectHeight()/2);
		CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/atfighter/spiralgaleforce/ap_spiralgaleforce.nut");
	}
}

function checkCommandEnable_spiralgaleforce(obj)
{
	if (!isNengLiangOpen(obj) )
	{
		if (getNengLiangNumber(obj) < 500)
		{
			return false;
		} else {
			return true;
		}
	} else {
		return true;
	}
}

function onSetState_spiralgaleforce(obj, state, datas, isResetTimer)
{	
	if(!obj) return;
	local substate = obj.getVar().get_vector(0);
	obj.setSkillSubState(substate);
	obj.sq_StopMove();
	
	if(substate == 0)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_SpiralGaleForce_Cast1_body_02);
	}
	else if(substate == 1)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_SpiralGaleForce_Cast2_body_02);
	}
}

function onTimeEvent_spiralgaleforce(obj, timeEventIndex, timeEventCount)
{
	if (timeEventIndex == 0)
	{
		
	}
}

function onProc_spiralgaleforce(obj)
{
	local substate = obj.getVar().get_vector(0);
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
		
	if(substate == 0)
	{
	
	}
	else if(substate == 1)
	{
		
	}
}

function onAttack_spiralgaleforce(obj, damager, boundingBox, isStuck)
{
	if(!obj)
		return false;
	local substate = obj.getSkillSubState();
		
	if(substate == 0)
	{
		
	}
}

function onEndCurrentAni_spiralgaleforce(obj)
{
	local substate = obj.getSkillSubState();
		
	if(substate == 0){
		obj.getVar().clear_vector();
		obj.getVar().push_vector(1);
		obj.sq_AddSetStatePacket(STATE_spiralgaleforce, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(substate == 1){
		Passive_SpiralGaleForce(obj, 0, 0, 0, 0);
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
}

function onKeyFrameFlag_spiralgaleforce(obj, flagIndex)
{

	if(!obj) return false;

	local substate = obj.getSkillSubState();
	local level = sq_GetSkillLevel(obj, SKILL_spiralgaleforce);
	
	if(substate == 0)
	{
		if(flagIndex == 1) {
			obj.sq_SetShake(obj, 1, 150);
			obj.sq_PlaySound("MF_SPIRAL_GALEFORCE");
			addSpiralGaleForceBuffSelf(obj);
			CreateSpiralGaleForceEffect(obj, 0, 0, obj.getObjectHeight()/2);
		}
	}
	return true;
}

function Passive_SpiralGaleForce(obj, id, xPos, yPos, zPos)
{	
	if(!obj)
		return;
		
		local level = sq_GetSkillLevel(obj, SKILL_spiralgaleforce);
		local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_spiralgaleforce, STATE_spiralgaleforce, 0, 1.0);
		obj.sq_StartWrite();
		obj.sq_WriteDword(0);
		obj.sq_WriteDword(id);
		obj.sq_SendCreatePassiveObjectPacket(24393, 0, xPos, yPos, zPos);
}

function addSpiralGaleForceBuffSelf(obj)
{
	local skill_level = sq_GetSkillLevel(obj, SKILL_spiralgaleforce);
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_spiralgaleforce, false,"character/atfighter/spiralgaleforce/ap_spiralgaleforce.nut", true);
}

function CreateSpiralGaleForceEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","passiveobject/character/fighter/animation/atspiralgaleforce/cast2_effect_01.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj,pooledObj,2,false);
}

