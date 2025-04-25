function sq_AddFunctionName(CQVQ84N8KqLGL1pI)
{
	CQVQ84N8KqLGL1pI.sq_AddFunctionName("onStart", "onStart_appendage_Blademastery")
	CQVQ84N8KqLGL1pI.sq_AddFunctionName("onEnd", "onEnd_appendage_Blademastery")
	CQVQ84N8KqLGL1pI.sq_AddFunctionName("proc", "proc_appendage_Blademastery")
	
}

function onStart_appendage_Blademastery(CQhtdDvzW4E5ynHc)
{
	if(!CQhtdDvzW4E5ynHc) return
local CQDCOQE6RSQQJedJ = CQhtdDvzW4E5ynHc.getParent()
if(!CQDCOQE6RSQQJedJ) 
	{
		CQhtdDvzW4E5ynHc.setValid(false)
return
}
	
	local CQ1SzInIW93xSgdBk9 = CQhtdDvzW4E5ynHc.sq_GetSourceChrTarget()
}

function onEnd_appendage_Blademastery(CQUiZVNQ3cifIO9Zx)
{
	if(!CQUiZVNQ3cifIO9Zx) return
local CQHmwRP5bPd3Fj8MyVn = CQUiZVNQ3cifIO9Zx.getParent()
if(!CQHmwRP5bPd3Fj8MyVn) 
	{
		CQUiZVNQ3cifIO9Zx.setValid(false)
return
}
	local CQjT4UwKP7OZOS8C = sq_GetCNRDObjectToSQRCharacter(CQHmwRP5bPd3Fj8MyVn)
}


function proc_appendage_Blademastery(CQE7EajpkwlApQ73OA)
{
	if(!CQE7EajpkwlApQ73OA) return
if(!CQE7EajpkwlApQ73OA.getParent())
	{
		CQE7EajpkwlApQ73OA.setValid(false)
return
}
	local CQ4V4XMjisJitM6ND9i8 = CQE7EajpkwlApQ73OA.getSource()
local CQQDE9A2V5nQEr6X2 = sq_GetCNRDObjectToSQRCharacter(CQ4V4XMjisJitM6ND9i8)
local CQLohbxGQqBxyh52684 = sq_GetSkillLevel(CQQDE9A2V5nQEr6X2, 11)
local CQlQGp6nGHrfwAjB = sq_GetLevelData(CQQDE9A2V5nQEr6X2,11, 7, CQLohbxGQqBxyh52684)/10
local CQsznKJRc363ukj5hC = CQE7EajpkwlApQ73OA.sq_getChangeStatus("Blademastery")
if(!CQsznKJRc363ukj5hC)
		CQsznKJRc363ukj5hC = CQE7EajpkwlApQ73OA.sq_AddChangeStatus("Blademastery",CQQDE9A2V5nQEr6X2, CQQDE9A2V5nQEr6X2, 0, 4, true, CQlQGp6nGHrfwAjB)
else
	{
		if(CQQDE9A2V5nQEr6X2.getWeaponSubType() == 1)
		{
			CQsznKJRc363ukj5hC.clearParameter()
CQsznKJRc363ukj5hC.addParameter(4, true, CQlQGp6nGHrfwAjB.tofloat())
}
		else
			CQsznKJRc363ukj5hC.clearParameter()
}
}
