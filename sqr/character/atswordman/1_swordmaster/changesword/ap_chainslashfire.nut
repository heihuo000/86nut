function sq_AddFunctionName(CQIz9q8NoFRSNecHI)
{
	CQIz9q8NoFRSNecHI.sq_AddFunctionName("onStart", "onStart_appendage_ChangeswordFire")
	CQIz9q8NoFRSNecHI.sq_AddFunctionName("onEnd", "onEnd_appendage_ChangeswordFire")
	CQIz9q8NoFRSNecHI.sq_AddFunctionName("drawAppend", "drawAppend_appendage_ChangeswordFire")
	
}

function onStart_appendage_ChangeswordFire(CQ79WsIS9MAoZ2cVV9B)
{
	if(!CQ79WsIS9MAoZ2cVV9B) return
local CQrd8CqtwbzQGtxL = CQ79WsIS9MAoZ2cVV9B.getParent()
if(!CQrd8CqtwbzQGtxL) 
	{
		CQ79WsIS9MAoZ2cVV9B.setValid(false)
return
}
	
	local CQCMOfh9HSKcPkzN58 = CQ79WsIS9MAoZ2cVV9B.sq_GetSourceChrTarget()
}

function onEnd_appendage_ChangeswordFire(CQdHznNCY9mRHDzX9rdd)
{
	if(!CQdHznNCY9mRHDzX9rdd) return
local CQyaZEPOIcM3AzlJnCL = CQdHznNCY9mRHDzX9rdd.getParent()
if(!CQyaZEPOIcM3AzlJnCL) 
	{
		CQdHznNCY9mRHDzX9rdd.setValid(false)
return
}
	local CQNrQLwz3PtXa1TB = sq_GetCNRDObjectToSQRCharacter(CQyaZEPOIcM3AzlJnCL)
}


function drawAppend_appendage_ChangeswordFire(CQvY4846y77SDrTZWP, CQDREvGLZwsoI3k1i84, CQR24iyQUsjwoAjV, CQiKpJxkS5FcOTU4XC, CQ1Ih65K7qYRpFnMMckg)
{
	if(!CQvY4846y77SDrTZWP || !CQvY4846y77SDrTZWP.isValid()) return
local CQUWGxHppHX3ten74 = CQvY4846y77SDrTZWP.getParent()
drawChangeswordCommon(CQUWGxHppHX3ten74)
	return
}
