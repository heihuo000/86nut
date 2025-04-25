function sq_AddFunctionName(CQnp4FwlazAuYQzbwiM)
{
	CQnp4FwlazAuYQzbwiM.sq_AddFunctionName("proc", "proc_appendage_BlackMirror")
}

function proc_appendage_BlackMirror(CQGQE3j51IzmTMlx)
{
	if(!CQGQE3j51IzmTMlx) return
local CQhzjTMsY5LlRrlmGn = CQGQE3j51IzmTMlx.getParent()
local CQp9ErSqLTm973TvLGfv = CQGQE3j51IzmTMlx.getSource()
local CQ3MhAcjhEM1gAkwV = sq_GetCNRDObjectToSQRCharacter(CQp9ErSqLTm973TvLGfv)
if(!CQhzjTMsY5LlRrlmGn || !CQp9ErSqLTm973TvLGfv || CQ3MhAcjhEM1gAkwV.getState() != 224)
	{
		CQGQE3j51IzmTMlx.setValid(false)
return
}
	
	local CQqHGM6JA3tK8TkU1op = CQhzjTMsY5LlRrlmGn.getVar("Setpos").get_vector(0)
local CQKanjJo6U7O3FjW = CQhzjTMsY5LlRrlmGn.getVar("Setpos").get_vector(1)
sq_setCurrentAxisPos(CQhzjTMsY5LlRrlmGn, 0, CQqHGM6JA3tK8TkU1op)
sq_setCurrentAxisPos(CQhzjTMsY5LlRrlmGn, 1, CQKanjJo6U7O3FjW)
}
