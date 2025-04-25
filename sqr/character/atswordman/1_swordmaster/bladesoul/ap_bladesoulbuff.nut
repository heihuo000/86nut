function sq_AddFunctionName(CQjgkh4j3H8hdwThX)
{
	CQjgkh4j3H8hdwThX.sq_AddFunctionName("onVaildTimeEnd", "onVaildTimeEnd_appendage_BladesoulBuff")
	CQjgkh4j3H8hdwThX.sq_AddFunctionName("onEnd", "onEnd_appendage_BladesoulBuff")
	
}

function onEnd_appendage_BladesoulBuff(CQE3JQG1v2s651kcN9T)
{
	if(!CQE3JQG1v2s651kcN9T) return
local CQ4LmIboOUjVfWjT = CQE3JQG1v2s651kcN9T.getParent()
if(!CQ4LmIboOUjVfWjT) 
	{
		CQE3JQG1v2s651kcN9T.setValid(false)
return
}
	
	local CQQO189njFGF7hjblV = sq_GetCNRDObjectToSQRCharacter(CQ4LmIboOUjVfWjT)
}

function onVaildTimeEnd_appendage_BladesoulBuff(CQLtivZfufva2AhxYcqg)
{
	if(!CQLtivZfufva2AhxYcqg) return
local CQlbRiaD7vCI8TgmU = CQLtivZfufva2AhxYcqg.getParent()
if(!CQlbRiaD7vCI8TgmU) 
	{
		CQLtivZfufva2AhxYcqg.setValid(false)
return
}
	
	local CQIhiJUyqSwt3NgvexX = sq_GetCNRDObjectToSQRCharacter(CQlbRiaD7vCI8TgmU)
local CQ74R5ffF93nBeRw = CQIhiJUyqSwt3NgvexX.getVar("BladesoulBuffCount").getInt(0)
if(CQ74R5ffF93nBeRw > 0)
		CQIhiJUyqSwt3NgvexX.getVar("BladesoulBuffCount").setInt(0, 0)
}