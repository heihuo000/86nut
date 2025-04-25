function sq_AddFunctionName(CQBPV7Wh9tucRN7xV)
{
	CQBPV7Wh9tucRN7xV.sq_AddFunctionName("onVaildTimeEnd", "onVaildTimeEnd_appendage_ATGreedbuff")
	CQBPV7Wh9tucRN7xV.sq_AddFunctionName("onEnd", "onEnd_appendage_ATGreedbuff")
}

function onVaildTimeEnd_appendage_ATGreedbuff(CQvyWYl1QC9g7e6m15Z)
{
	if(!CQvyWYl1QC9g7e6m15Z) return
local CQDn8u3oGxI422Tv = CQvyWYl1QC9g7e6m15Z.getParent()
if(!CQDn8u3oGxI422Tv) 
	{
		CQvyWYl1QC9g7e6m15Z.setValid(false)
return
}
	local CQ1jOHFbcrkX8OkzcL = sq_GetCNRDObjectToSQRCharacter(CQDn8u3oGxI422Tv)
CQ1jOHFbcrkX8OkzcL.getVar("ATGreedbuff").setInt(0, 0)
}

function onEnd_appendage_ATGreedbuff(CQU5z5vfsZHD3jjUn)
{
	if(!CQU5z5vfsZHD3jjUn) return
local CQHXLz8D2TbpBSjYQsG = CQU5z5vfsZHD3jjUn.getParent()
if(!CQHXLz8D2TbpBSjYQsG) 
	{
		CQU5z5vfsZHD3jjUn.setValid(false)
return
}
	local CQjAQtLytaVw4QhQ = sq_GetCNRDObjectToSQRCharacter(CQHXLz8D2TbpBSjYQsG)
CQjAQtLytaVw4QhQ.getVar("ATGreedbuff").setInt(0, 0)
}
