function sq_AddFunctionName(CQwfDu1PRTuC9dHF67X)
{
	CQwfDu1PRTuC9dHF67X.sq_AddFunctionName("onStart", "onStart_appendage_Shortswordmastery")
	CQwfDu1PRTuC9dHF67X.sq_AddFunctionName("onEnd", "onEnd_appendage_Shortswordmastery")
	CQwfDu1PRTuC9dHF67X.sq_AddFunctionName("proc", "proc_appendage_Shortswordmastery")
	
}

function onStart_appendage_Shortswordmastery(CQZ1vHSrrE9F4sGX)
{
	if(!CQZ1vHSrrE9F4sGX) return
local CQzJV4rl33IEdvGJj6 = CQZ1vHSrrE9F4sGX.getParent()
if(!CQzJV4rl33IEdvGJj6) 
	{
		CQZ1vHSrrE9F4sGX.setValid(false)
return
}
	
	local CQOsWzTZbUke5ZFBwe6J = CQZ1vHSrrE9F4sGX.sq_GetSourceChrTarget()
}

function onEnd_appendage_Shortswordmastery(CQ8rVt2sXoHvMUDZt)
{
	if(!CQ8rVt2sXoHvMUDZt) return
local CQWYWDiTkMbh68D1ozt = CQ8rVt2sXoHvMUDZt.getParent()
if(!CQWYWDiTkMbh68D1ozt) 
	{
		CQ8rVt2sXoHvMUDZt.setValid(false)
return
}
	local CQVR72Y4ibVk1ESV = sq_GetCNRDObjectToSQRCharacter(CQWYWDiTkMbh68D1ozt)
}


function proc_appendage_Shortswordmastery(CQY3IT7J8ue8CfS4V7)
{
	if(!CQY3IT7J8ue8CfS4V7) return
if(!CQY3IT7J8ue8CfS4V7.getParent())
	{
		CQY3IT7J8ue8CfS4V7.setValid(false)
return
}
	local CQuLleKqQB5NJLAM1 = CQY3IT7J8ue8CfS4V7.getSource()
local CQMOLAphGcpHVnXC5XQ = sq_GetCNRDObjectToSQRCharacter(CQuLleKqQB5NJLAM1)
local CQntQNb1cPRIKCX3 = sq_GetSkillLevel(CQMOLAphGcpHVnXC5XQ, 4)
local CQGy3hBosCAtDoZNbO = sq_GetLevelData(CQMOLAphGcpHVnXC5XQ,4, 4, CQntQNb1cPRIKCX3)/10
local CQhnqQObRzznL9L6qla9 = CQY3IT7J8ue8CfS4V7.sq_getChangeStatus("Shortswordmastery")
if(!CQhnqQObRzznL9L6qla9)
		CQhnqQObRzznL9L6qla9 = CQY3IT7J8ue8CfS4V7.sq_AddChangeStatus("Shortswordmastery",CQMOLAphGcpHVnXC5XQ, CQMOLAphGcpHVnXC5XQ, 0, 6, true, CQGy3hBosCAtDoZNbO)
else
	{
		if(CQMOLAphGcpHVnXC5XQ.getWeaponSubType() == 0)
		{
			CQhnqQObRzznL9L6qla9.clearParameter()
CQhnqQObRzznL9L6qla9.addParameter(6, true, CQGy3hBosCAtDoZNbO.tofloat())
}
		else
			CQhnqQObRzznL9L6qla9.clearParameter()
}
}
