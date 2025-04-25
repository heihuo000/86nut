function sq_AddFunctionName(CQU2d8tICQ3EKzbf)
{
	CQU2d8tICQ3EKzbf.sq_AddFunctionName("onStart", "onStart_appendage_Calldaimus")
}


function onStart_appendage_Calldaimus(CQHKPvzwkaieDGt726)
{
	if(!CQHKPvzwkaieDGt726) return
if(!CQHKPvzwkaieDGt726.getParent())
	{
		CQHKPvzwkaieDGt726.setValid(false)
return
}
	local CQjIxoL5D4dYLcWh6s6T = CQHKPvzwkaieDGt726.getSource()
local CQEWXJpK8mOhF3Wdd = sq_GetCNRDObjectToSQRCharacter(CQjIxoL5D4dYLcWh6s6T)
local CQ4ve6bEEGl5OyrTnwt = sq_GetSkillLevel(CQEWXJpK8mOhF3Wdd, 148)
local CQQbXc9jM1JCG6eg = sq_GetLevelData(CQEWXJpK8mOhF3Wdd,148, 3, CQ4ve6bEEGl5OyrTnwt)/10
local CQLhwyX2cnnFPFextl = sq_GetLevelData(CQEWXJpK8mOhF3Wdd,148, 4, CQ4ve6bEEGl5OyrTnwt)
local CQl45GaGKDBEExwkosP5 = CQHKPvzwkaieDGt726.sq_getChangeStatus("Calldaimus")
if(!CQl45GaGKDBEExwkosP5)
	{
		CQl45GaGKDBEExwkosP5 = CQHKPvzwkaieDGt726.sq_AddChangeStatus("Calldaimus",CQEWXJpK8mOhF3Wdd, CQEWXJpK8mOhF3Wdd, 0, 33, false, -CQQbXc9jM1JCG6eg)
CQl45GaGKDBEExwkosP5 = CQHKPvzwkaieDGt726.sq_AddChangeStatus("Calldaimus",CQEWXJpK8mOhF3Wdd, CQEWXJpK8mOhF3Wdd, 0, 34, false, CQLhwyX2cnnFPFextl)
}
	else
	{
		CQl45GaGKDBEExwkosP5.clearParameter()
CQl45GaGKDBEExwkosP5.addParameter(33, false, -CQQbXc9jM1JCG6eg.tofloat())
CQl45GaGKDBEExwkosP5.addParameter(34, false, CQLhwyX2cnnFPFextl.tofloat())
}
}
