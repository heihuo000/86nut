function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_mengduzhishang")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_mengduzhishang")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_mengduzhishang")
	appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_mengduzhishang")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_mengduzhishang(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	local skillLevel = sqrChr.sq_GetSkillLevel(SKILL_MENG_DU_ZHI_SHANG);
	local holdTime = sq_GetLevelData(sqrChr, SKILL_MENG_DU_ZHI_SHANG, 0, skillLevel);
	local holdInterval = sq_GetLevelData(sqrChr, SKILL_MENG_DU_ZHI_SHANG, 1, skillLevel);
	local objectManager = obj.getObjectManager();
	for(local i=0; i<objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		local activeObj = sq_GetCNRDObjectToActiveObject(object);
		if(object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_ACTIVE) && sq_IsValidActiveStatus(activeObj, ACTIVESTATUS_POISON))
		{
			local isHold = CNSquirrelAppendage.sq_IsAppendAppendage(object, "character/fighter/mengduzhishang/ap_mengduzhishang_hold.nut");
			if(!isHold)
			{
				local hold = CNSquirrelAppendage.sq_AppendAppendage(object, obj, SKILL_MENG_DU_ZHI_SHANG, false, "character/fighter/mengduzhishang/ap_mengduzhishang_hold.nut", false);
				hold.getVar("skillData").clear_vector();
				hold.getVar("skillData").push_vector(holdTime);
				hold.sq_SetValidTime(holdInterval);
				CNSquirrelAppendage.sq_Append(hold, object, obj);
			}
		}
	}
}

function onStart_appendage_mengduzhishang(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onEnd_appendage_mengduzhishang(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onAttackParent_appendage_mengduzhishang(appendage, realAttacker, damager, boundingBox, isStuck)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	local skillLevel = sqrChr.sq_GetSkillLevel(SKILL_MENG_DU_ZHI_SHANG);
	local magicalAttackBonus = sq_GetLevelData(sqrChr, SKILL_MENG_DU_ZHI_SHANG, 2, skillLevel);
	local pmAdd = sq_GetLevelData(sqrChr, SKILL_MENG_DU_ZHI_SHANG, 3, skillLevel);
	local defenseDecrease = sq_GetLevelData(sqrChr, SKILL_MENG_DU_ZHI_SHANG, 4, skillLevel);
	local time = sq_GetLevelData(sqrChr, SKILL_MENG_DU_ZHI_SHANG, 5, skillLevel);
	local activeObj = sq_GetCNRDObjectToActiveObject(damager);
	local isPoison = sq_IsValidActiveStatus(activeObj, ACTIVESTATUS_POISON);
	if(isPoison)
	{
		local isAppendBuff = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/fighter/mengduzhishang/ap_mengduzhishang_buff.nut");
		if(!isAppendBuff)
		{
			local buff = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_MENG_DU_ZHI_SHANG, false, "character/fighter/mengduzhishang/ap_mengduzhishang_buff.nut", false);
			buff.getVar("skillData").clear_vector();
			buff.getVar("skillData").push_vector(magicalAttackBonus);
			buff.getVar("skillData").push_vector(pmAdd);
			buff.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(sqrChr), SKILL_MENG_DU_ZHI_SHANG, skillLevel);
			buff.sq_SetValidTime(time);
			CNSquirrelAppendage.sq_Append(buff, obj, obj);
		}
		local isAppendDeBuff = CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/fighter/mengduzhishang/ap_mengduzhishang_debuff.nut");
		if(!isAppendBuff)
		{
			local deBuff = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, SKILL_MENG_DU_ZHI_SHANG, false, "character/fighter/mengduzhishang/ap_mengduzhishang_debuff.nut", false);
			deBuff.getVar("skillData").clear_vector();
			deBuff.getVar("skillData").push_vector(defenseDecrease);
			deBuff.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(sqrChr), SKILL_MENG_DU_ZHI_SHANG, skillLevel);
			deBuff.sq_SetValidTime(time);
			CNSquirrelAppendage.sq_Append(buff, damager, obj);
		}
	}
}
