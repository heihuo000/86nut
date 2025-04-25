function sq_AddFunctionName(CQZzCClI2J5yhBSgshs6)
{
	CQZzCClI2J5yhBSgshs6.sq_AddFunctionName("proc", "proc_appendage_Guard")
	CQZzCClI2J5yhBSgshs6.sq_AddFunctionName("onStart", "onStart_appendage_Guard")
	CQZzCClI2J5yhBSgshs6.sq_AddFunctionName("getImmuneTypeDamageRate", "getImmuneTypeDamageRate_appendage_Guard")
}

function getImmuneTypeDamageRate_appendage_Guard(CQ83ar324PLy6QsplVi, CQbN2PyUwDedbUrTm, CQa45pBUfuqU5oOX25)
{
	if (!CQ83ar324PLy6QsplVi)
		return CQbN2PyUwDedbUrTm
local CQhmpxhgGTlGYZ3Upf = CQ83ar324PLy6QsplVi.getParent()
local CQpTgtNMdEJaTU3WIuIp = sq_GetCNRDObjectToSQRCharacter(CQhmpxhgGTlGYZ3Upf)
local CQ37FFPDeKnrvV2QS = sq_GetCurrentAttackInfo(CQa45pBUfuqU5oOX25)
local CQqVb3ev2jBblQ1yHbd = sq_GetAttackType(CQ37FFPDeKnrvV2QS)
local CQKDNT5dvoWjgf1e = CQpTgtNMdEJaTU3WIuIp.sq_GetSkillLevel(85)
local CQToyrHVOM66zIModR = CQpTgtNMdEJaTU3WIuIp.sq_GetLevelData(85, 0, CQKDNT5dvoWjgf1e)
local CQsQ9AuWjgEBhhNthSdm = CQpTgtNMdEJaTU3WIuIp.sq_GetLevelData(85, 1, CQKDNT5dvoWjgf1e)
local CQ5ztMcxuugGdXNal = 0
if(CQqVb3ev2jBblQ1yHbd == 1)
		CQ5ztMcxuugGdXNal = CQsQ9AuWjgEBhhNthSdm
else if(CQqVb3ev2jBblQ1yHbd == 0)
		CQ5ztMcxuugGdXNal = CQToyrHVOM66zIModR
CQbN2PyUwDedbUrTm = CQbN2PyUwDedbUrTm - CQ5ztMcxuugGdXNal 
return CQbN2PyUwDedbUrTm
}

function proc_appendage_Guard(CQw99j676BDakmBiWy)
{
	if(!CQw99j676BDakmBiWy) {
		return
}
	local CQONPQJImdcOfBVOiNYG = CQw99j676BDakmBiWy.getParent()
}

function onStart_appendage_Guard(CQ8GzOUwDtZy6aVEav5)
{
	if(!CQ8GzOUwDtZy6aVEav5)
	{
		return
}
	local CQWHZBf6zCqU1R7S = CQ8GzOUwDtZy6aVEav5.getParent()
}
