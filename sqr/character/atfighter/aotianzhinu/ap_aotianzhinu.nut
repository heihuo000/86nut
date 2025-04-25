AO_TIAN_ZHI_NU_SITUATION		<- 0;

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_aotianzhinu")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_aotianzhinu")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_aotianzhinu")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_aotianzhinu(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local objectManager = obj.getObjectManager();
	for(local i=0; i<objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if(object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_ACTIVE))
		{
			local activeObj = sq_GetCNRDObjectToActiveObject(object);
			if(activeObj.isBoss())
			{
				AO_TIAN_ZHI_NU_SITUATION = 2;
				return;
			}
			if(activeObj.isSuperChampion() || activeObj.isCommonChampion() || activeObj.isChampion())
			{
				AO_TIAN_ZHI_NU_SITUATION = 1;
				return;
			}
			AO_TIAN_ZHI_NU_SITUATION = 0;
		}
	}
}

function onStart_appendage_aotianzhinu(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	local skillLevel = sqrChr.sq_GetSkillLevel(SKILL_AO_TIAN_ZHI_NU);
	local physicalAttackBonus = sq_GetLevelData(sqrChr, SKILL_AO_TIAN_ZHI_NU, 3, skillLevel);
	local change_appendage = appendage.sq_getChangeStatus("aotianzhinu");
	if(!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("aotianzhinu",obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, physicalAttackBonus);
	}
	if(change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, physicalAttackBonus.tofloat());
	}
}

function onEnd_appendage_aotianzhinu(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
