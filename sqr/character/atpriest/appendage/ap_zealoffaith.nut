
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_zealoffaith")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_zealoffaith")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_zealoffaith")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_zealoffaith(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	
	if(!parentObj)
	{
		appendage.setValid(false);
		return;
	}
	
	
	local parentChr = sq_GetCNRDObjectToSQRCharacter(parentObj);
	
	if(!parentChr)
	{
		appendage.setValid(false);
		return;
	}
	
	local skill = sq_GetSkill(parentChr, SKILL_ZEAL_OF_FAITH);
	local currTime = appendage.getTimer().Get();
	if (currTime - appendage.getVar("monsterTime").getInt(0) > 1000)
	{
		appendage.getVar("monsterTime").setInt(0,currTime);
		if(skill && sq_IsInBattle()){
			setZealOfFaithAppend(parentChr, SKILL_ZEAL_OF_FAITH);
		}
	}
}

function onStart_appendage_zealoffaith(appendage)
{
	if(!appendage) {
		return;
	}
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	if(!parentObj)
	{
		appendage.setValid(false);
		return;
	}
	local currTime = appendage.getTimer().Get();
	appendage.getVar("monsterTime").setInt(0,currTime);
}

function onEnd_appendage_zealoffaith(appendage)
{
	if(!appendage) return;
	appendage.sq_DeleteAppendages();
}  