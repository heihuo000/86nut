function sq_AddFunctionName(CQZNnua1zdFWmwe)
{
	CQZNnua1zdFWmwe.sq_AddFunctionName("onStart", "onStart_appendage_Trace")
	CQZNnua1zdFWmwe.sq_AddFunctionName("onVaildTimeEnd", "onVaildTimeEnd_appendage_Trace")
	CQZNnua1zdFWmwe.sq_AddFunctionName("onEnd", "onEnd_appendage_Trace")
}

function onStart_appendage_Trace(CQzGMGUFEYvbY1eRH)
{
	if(!CQzGMGUFEYvbY1eRH)
	{
		return;
	}

	if(!CQzGMGUFEYvbY1eRH.getParent())
	{
		CQzGMGUFEYvbY1eRH.setValid(false);
		return;
	}
	local CQOEu4RyMPCjqO = CQzGMGUFEYvbY1eRH.getParent();
	local CQOEu4RyMPCjqO = sq_GetCNRDObjectToSQRCharacter(CQOEu4RyMPCjqO);
	local CQWcAWIBKe3BlSEfgt = sq_GetSkillLevel(CQOEu4RyMPCjqO, 228);
	local CQVfcDqPgIiGglp = CQOEu4RyMPCjqO.sq_GetLevelData(228, 1, CQWcAWIBKe3BlSEfgt);
	
	local CQf1C12cP5fszM = CQzGMGUFEYvbY1eRH.sq_getChangeStatus("Trace");
	if(!CQf1C12cP5fszM)
	{
		CQf1C12cP5fszM = CQzGMGUFEYvbY1eRH.sq_AddChangeStatus("Trace",CQOEu4RyMPCjqO, CQOEu4RyMPCjqO, 0, 11, false, CQVfcDqPgIiGglp);
	}
	if(CQf1C12cP5fszM)
	{
		CQf1C12cP5fszM.clearParameter();
		CQf1C12cP5fszM.addParameter(11, false, CQVfcDqPgIiGglp.tofloat());
	}


}

function onVaildTimeEnd_appendage_Trace(CQuJekD84qPWheod)
{
	if(!CQuJekD84qPWheod) return;
	local CQMsXeWZuJlb92iTad = CQuJekD84qPWheod.getParent();
	if(!CQMsXeWZuJlb92iTad)
	{
		CQuJekD84qPWheod.setValid(false);
		return;
	}
	CQuJekD84qPWheod.sq_DeleteEffectFront();
	CQuJekD84qPWheod.sq_DeleteEffectBack();
}

function onEnd_appendage_Trace(CQnrePleC3JkjPi)
{
	if(!CQnrePleC3JkjPi) return;
	local CQGW6N3lTUU7dkuxF = CQnrePleC3JkjPi.getParent();
	if(!CQGW6N3lTUU7dkuxF)
	{
		CQnrePleC3JkjPi.setValid(false);
		return;
	}
	local CQhvshFLFFNB5D = CQnrePleC3JkjPi.sq_GetSourceChrTarget();
	CQnrePleC3JkjPi.sq_DeleteEffectFront();
	CQnrePleC3JkjPi.sq_DeleteEffectBack();
}