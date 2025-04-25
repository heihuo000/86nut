CURRENT_BUFF_COUNT_HUI_XIE_JING_TONG		<- 0;

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_huixiejingtong")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_huixiejingtong")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_huixiejingtong")
	appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_huixiejingtong")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_huixiejingtong(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onStart_appendage_huixiejingtong(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onEnd_appendage_huixiejingtong(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onAttackParent_appendage_huixiejingtong(appendage, realAttacker, damager, boundingBox, isStuck)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	local skillLevel = sqrChr.sq_GetSkillLevel(SKILL_HUI_XIE_JING_TONG);
	local magicalCritical = sq_GetLevelData(sqrChr, SKILL_HUI_XIE_JING_TONG, 0, skillLevel);
	local darkElement = sq_GetLevelData(sqrChr, SKILL_HUI_XIE_JING_TONG, 1, skillLevel);
	local time = sq_GetLevelData(sqrChr, SKILL_HUI_XIE_JING_TONG, 2, skillLevel);
	local maxCount = sq_GetLevelData(sqrChr, SKILL_HUI_XIE_JING_TONG, 3, skillLevel);
	if(CURRENT_BUFF_COUNT_HUI_XIE_JING_TONG >= maxCount) return;
	local huixiejingtong = sqrChr.GetSquirrelAppendage("character/new_thief/huixiejingtong/ap_huixiejingtong_buff.nut");
	if(huixiejingtong)
		huixiejingtong.setValid(false);
	CURRENT_BUFF_COUNT_HUI_XIE_JING_TONG+=1;
	huixiejingtong = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_HUI_XIE_JING_TONG, false, "character/new_thief/huixiejingtong/ap_huixiejingtong_buff.nut", false);
	huixiejingtong.getVar("skillData").clear_vector();
	huixiejingtong.getVar("skillData").push_vector(magicalCritical*CURRENT_BUFF_COUNT_HUI_XIE_JING_TONG);
	huixiejingtong.getVar("skillData").push_vector(darkElement*CURRENT_BUFF_COUNT_HUI_XIE_JING_TONG);
	huixiejingtong.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(sqrChr), SKILL_HUI_XIE_JING_TONG, skillLevel);
	huixiejingtong.sq_SetValidTime(time);
	CNSquirrelAppendage.sq_Append(huixiejingtong, obj, obj);
}
