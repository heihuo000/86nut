function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_liehuozhipei")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_liehuozhipei")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_liehuozhipei")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_liehuozhipei(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	//41	`ATFighter/FlameLegs.skl`
	local skillLevel = sqrChr.sq_GetSkillLevel(41);
	local time = sq_GetLevelData(sqrChr, 41, 0, skillLevel);
	local pSkillIndex = sqrChr.getCurrentSkillIndex();
	local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/liehuozhipei/ap_lieyanfenbu.nut");
	if(pSkillIndex == 41 && !isAppend)
	{
		local lieyanfenbu = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 41, false, "character/atfighter/liehuozhipei/ap_lieyanfenbu.nut", false);
		lieyanfenbu.sq_SetValidTime(time);
		CNSquirrelAppendage.sq_Append(lieyanfenbu, obj, obj);
	}
}

function onStart_appendage_liehuozhipei(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onEnd_appendage_liehuozhipei(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
