function sq_AddFunctionName(CQcs9iHOzHBxYDzShc)
{
	CQcs9iHOzHBxYDzShc.sq_AddFunctionName("onStart", "onStart_appendage_Infamous")
	CQcs9iHOzHBxYDzShc.sq_AddFunctionName("onEnd", "onEnd_appendage_Infamous")
	CQcs9iHOzHBxYDzShc.sq_AddFunctionName("proc", "proc_appendage_Infamous")
	
}

function onStart_appendage_Infamous(appendage)
{
	if(!appendage) return
local CQdYz5dTfn52v1lGW = appendage.getParent()
if(!CQdYz5dTfn52v1lGW) 
	{
		appendage.setValid(false)
return
}
	
	local CQyRZxXLrFpZlWTCiWU = appendage.sq_GetSourceChrTarget()
}

function onEnd_appendage_Infamous(appendage)
{
	if(!appendage) return
local CQbK5FmmbtSizSmBXc = appendage.getParent()
if(!CQbK5FmmbtSizSmBXc) 
	{
		appendage.setValid(false)
return
}
	local CQoIa3R3OAxEhlUZMAoX = sq_GetCNRDObjectToSQRCharacter(CQbK5FmmbtSizSmBXc)
}


function proc_appendage_Infamous(appendage)
{
	if(!appendage) return
if(!appendage.getParent())
	{
		appendage.setValid(false)
return
}
	local CQmvErrUurmYjenV = appendage.getSource()
local obj = sq_GetCNRDObjectToSQRCharacter(CQmvErrUurmYjenV)
local CQk3HM2NT6y55tbMmWrn = sq_GetSkillLevel(obj, 125)
local time = sq_GetLevelData(obj,125, 1, CQk3HM2NT6y55tbMmWrn)/10
local change_appendage = appendage.sq_getChangeStatus("Infamous")
if(!change_appendage)
		change_appendage = appendage.sq_AddChangeStatus("Infamous",obj, obj, 0, CHANGE_STATUS_TYPE_COOLTIME_DECLINE, true, -time)
else
	{
		if(obj.getWeaponSubType() == 1)
		{
			change_appendage.clearParameter()
change_appendage.addParameter(CHANGE_STATUS_TYPE_COOLTIME_DECLINE, true, -time.tofloat())
}
		else
			change_appendage.clearParameter()
}
}
