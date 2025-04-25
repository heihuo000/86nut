function sq_AddFunctionName(CQcs9iHOzHBxYDzShc)
{
	CQcs9iHOzHBxYDzShc.sq_AddFunctionName("onStart", "onStart_appendage_Bluntmastery")
	CQcs9iHOzHBxYDzShc.sq_AddFunctionName("onEnd", "onEnd_appendage_Bluntmastery")
	CQcs9iHOzHBxYDzShc.sq_AddFunctionName("proc", "proc_appendage_Bluntmastery")
}

function onStart_appendage_Bluntmastery(CQArPJuwEgrfqzzLQPB7)
{
	if(!CQArPJuwEgrfqzzLQPB7) return
local CQdYz5dTfn52v1lGW = CQArPJuwEgrfqzzLQPB7.getParent()
if(!CQdYz5dTfn52v1lGW) 
	{
		CQArPJuwEgrfqzzLQPB7.setValid(false)
return
}
	
	local CQyRZxXLrFpZlWTCiWU = CQArPJuwEgrfqzzLQPB7.sq_GetSourceChrTarget()
}

function onEnd_appendage_Bluntmastery(CQN2wysEKfgAb4TJ)
{
	if(!CQN2wysEKfgAb4TJ) return
local CQbK5FmmbtSizSmBXc = CQN2wysEKfgAb4TJ.getParent()
if(!CQbK5FmmbtSizSmBXc) 
	{
		CQN2wysEKfgAb4TJ.setValid(false)
return
}
	local CQoIa3R3OAxEhlUZMAoX = sq_GetCNRDObjectToSQRCharacter(CQbK5FmmbtSizSmBXc)
}

function proc_appendage_Bluntmastery(CQ2W4TVG49LexFUH49c)
{
	if(!CQ2W4TVG49LexFUH49c) return
if(!CQ2W4TVG49LexFUH49c.getParent())
	{
		CQ2W4TVG49LexFUH49c.setValid(false)
return
}
	local CQmvErrUurmYjenV = CQ2W4TVG49LexFUH49c.getSource()
local CQJgjSTgCZ1hd2bLv8 = sq_GetCNRDObjectToSQRCharacter(CQmvErrUurmYjenV)
local CQk3HM2NT6y55tbMmWrn = sq_GetSkillLevel(CQJgjSTgCZ1hd2bLv8, 13)
local CQaLnjDuFw8Cf5vCe = sq_GetLevelData(CQJgjSTgCZ1hd2bLv8,13, 8, CQk3HM2NT6y55tbMmWrn)/10
local CQ5PMwWv9KsF6Dv3ucN = CQ2W4TVG49LexFUH49c.sq_getChangeStatus("Bluntmastery")
if(!CQ5PMwWv9KsF6Dv3ucN)
		CQ5PMwWv9KsF6Dv3ucN = CQ2W4TVG49LexFUH49c.sq_AddChangeStatus("Bluntmastery",CQJgjSTgCZ1hd2bLv8, CQJgjSTgCZ1hd2bLv8, 0, 4, true, CQaLnjDuFw8Cf5vCe)
else
	{
		if(CQJgjSTgCZ1hd2bLv8.getWeaponSubType() == 2)
		{
			CQ5PMwWv9KsF6Dv3ucN.clearParameter()
CQ5PMwWv9KsF6Dv3ucN.addParameter(4, true, CQaLnjDuFw8Cf5vCe.tofloat())
}
		else
			CQ5PMwWv9KsF6Dv3ucN.clearParameter()
}
}
