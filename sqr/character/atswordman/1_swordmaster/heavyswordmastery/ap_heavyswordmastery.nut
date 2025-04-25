function sq_AddFunctionName(CQFtBOuRvr8jhZVa98)
{
	CQFtBOuRvr8jhZVa98.sq_AddFunctionName("onStart", "onStart_appendage_Heavyswordmastery")
	CQFtBOuRvr8jhZVa98.sq_AddFunctionName("onEnd", "onEnd_appendage_Heavyswordmastery")
	CQFtBOuRvr8jhZVa98.sq_AddFunctionName("proc", "proc_appendage_Heavyswordmastery")
	
}

function onStart_appendage_Heavyswordmastery(CQgytBcNZZs69UCDgrHj)
{
	if(!CQgytBcNZZs69UCDgrHj) return
local CQon9RCyj6jB5VCOl = CQgytBcNZZs69UCDgrHj.getParent()
if(!CQon9RCyj6jB5VCOl) 
	{
		CQgytBcNZZs69UCDgrHj.setValid(false)
return
}
	
	local CQ2jPmsYuQFGfpXHWel = CQgytBcNZZs69UCDgrHj.sq_GetSourceChrTarget()
}

function onEnd_appendage_Heavyswordmastery(CQm6zam97Kva6dZS)
{
	if(!CQm6zam97Kva6dZS) return
local CQJCZXRPq4Cr1sZLaz = CQm6zam97Kva6dZS.getParent()
if(!CQJCZXRPq4Cr1sZLaz) 
	{
		CQm6zam97Kva6dZS.setValid(false)
return
}
	local CQkSwdVrFmwb7gLGPOQ3 = sq_GetCNRDObjectToSQRCharacter(CQJCZXRPq4Cr1sZLaz)
}


function proc_appendage_Heavyswordmastery(CQai5bIzzG3j2XKCF)
{
	if(!CQai5bIzzG3j2XKCF) return
if(!CQai5bIzzG3j2XKCF.getParent())
	{
		CQai5bIzzG3j2XKCF.setValid(false)
return
}
	local CQ5mQpTZEgi6VmKK4rC = CQai5bIzzG3j2XKCF.getSource()
local CQwT4L2sMnf9KBJN = sq_GetCNRDObjectToSQRCharacter(CQ5mQpTZEgi6VmKK4rC)
local CQZ7E7DQrDPMBaJXRx = sq_GetSkillLevel(CQwT4L2sMnf9KBJN, 12)
local CQzVjYW4KdlJLf12kO7a = sq_GetLevelData(CQwT4L2sMnf9KBJN,12, 9, CQZ7E7DQrDPMBaJXRx)/10
local CQWDHizJbtJOFIMBe8a = CQai5bIzzG3j2XKCF.sq_getChangeStatus("Heavyswordmastery")
if(!CQWDHizJbtJOFIMBe8a)
		CQWDHizJbtJOFIMBe8a = CQai5bIzzG3j2XKCF.sq_AddChangeStatus("Heavyswordmastery",CQwT4L2sMnf9KBJN, CQwT4L2sMnf9KBJN, 0, 4, true, CQzVjYW4KdlJLf12kO7a)
else
	{
		if(CQwT4L2sMnf9KBJN.getWeaponSubType() == 3)
		{
			CQWDHizJbtJOFIMBe8a.clearParameter()
CQWDHizJbtJOFIMBe8a.addParameter(4, true, CQzVjYW4KdlJLf12kO7a.tofloat())
}
		else
			CQWDHizJbtJOFIMBe8a.clearParameter()
}
}
