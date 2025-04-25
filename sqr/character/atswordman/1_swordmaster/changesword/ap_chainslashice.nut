function sq_AddFunctionName(CQHvnyUUN3w6E2b3zxO)
{
	CQHvnyUUN3w6E2b3zxO.sq_AddFunctionName("onStart", "onStart_appendage_ChangeswordIce")
	CQHvnyUUN3w6E2b3zxO.sq_AddFunctionName("onEnd", "onEnd_appendage_ChangeswordIce")
	CQHvnyUUN3w6E2b3zxO.sq_AddFunctionName("drawAppend", "drawAppend_appendage_ChangeswordIce")
	
}

function onStart_appendage_ChangeswordIce(CQjgMFf2xU3Vytvd)
{
	if(!CQjgMFf2xU3Vytvd) return
local CQE3y3CGJFiFw5v6m8 = CQjgMFf2xU3Vytvd.getParent()
if(!CQE3y3CGJFiFw5v6m8) 
	{
		CQjgMFf2xU3Vytvd.setValid(false)
return
}
	
	local CQ4LdlsuRMdauSYgerZ1 = CQjgMFf2xU3Vytvd.sq_GetSourceChrTarget()
}

function onEnd_appendage_ChangeswordIce(CQQOyrmRWbPrelc9A)
{
	if(!CQQOyrmRWbPrelc9A) return
local CQLtdSRN4SlvUGc5HxY = CQQOyrmRWbPrelc9A.getParent()
if(!CQLtdSRN4SlvUGc5HxY) 
	{
		CQQOyrmRWbPrelc9A.setValid(false)
return
}
	local CQlbA1SAn9JjcrxR = sq_GetCNRDObjectToSQRCharacter(CQLtdSRN4SlvUGc5HxY)
}


function drawAppend_appendage_ChangeswordIce(CQIUxjrYXcn6m3z8B8, CQ7kXwT9kPBVYyzjgWto, CQr6eP3Xi7WGTTldT, CQCC6BFr8w6avFqTcr1, CQdSegtzQsErlxqgUX)
{
	if(!CQIUxjrYXcn6m3z8B8 || !CQIUxjrYXcn6m3z8B8.isValid()) return
local CQyi5m85G5gbg1mxaxQz = CQIUxjrYXcn6m3z8B8.getParent()
drawChangeswordCommon(CQyi5m85G5gbg1mxaxQz)
	return
}
