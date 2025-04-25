function sq_AddFunctionName(CQHQs2mRFd57vHnh)
{
	CQHQs2mRFd57vHnh.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_Autoguard")
}
function onDamageParent_appendage_Autoguard(CQjzTTRNxWpBlYb9bY ,CQE9KrVSaCRHb4y5qCPH, CQ4NqAOY1zAszytRW, CQQG3MQ9rezWh6W8DPR)
{
	if(!CQjzTTRNxWpBlYb9bY) return
local CQLEohhCKZLnxFWj = CQjzTTRNxWpBlYb9bY.getParent()
if(!CQLEohhCKZLnxFWj) 
	{
		CQjzTTRNxWpBlYb9bY.setValid(false)
return
}
	
	local CQ7agQFrbTmkjxrfXWEe = sq_GetCNRDObjectToCharacter(CQLEohhCKZLnxFWj)
local CQreoOtzPEM7dJelN  = sq_GetLevelData(CQ7agQFrbTmkjxrfXWEe,126, 0, sq_GetSkillLevel(CQ7agQFrbTmkjxrfXWEe, 126))
local CQCcgVz65JtNktehhc7 = sq_getRandom(0, 99)
if(CQCcgVz65JtNktehhc7 > CQreoOtzPEM7dJelN)
		return
CQ7agQFrbTmkjxrfXWEe.getVar("Autoguard").setBool(0,true)
if(IsFrontOf(CQ7agQFrbTmkjxrfXWEe,CQE9KrVSaCRHb4y5qCPH))
		CQ7agQFrbTmkjxrfXWEe.getVar("ATSwordman_Autoguard").setInt(0, CQE9KrVSaCRHb4y5qCPH.getDirection())
else
		CQ7agQFrbTmkjxrfXWEe.getVar("ATSwordman_Autoguard").setInt(0, sq_GetOppositeDirection(CQE9KrVSaCRHb4y5qCPH.getDirection()))
}