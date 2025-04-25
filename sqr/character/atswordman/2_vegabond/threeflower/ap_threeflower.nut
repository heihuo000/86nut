function sq_AddFunctionName(CQvHPpNiOLqOOmCyd)
{
	CQvHPpNiOLqOOmCyd.sq_AddFunctionName("onStart", "onStart_appendage_Threeflower")
	
}

function onStart_appendage_Threeflower(CQDJ9KPR4k2uG9Xsn2Y)
{
		if(!CQDJ9KPR4k2uG9Xsn2Y) return
if(!CQDJ9KPR4k2uG9Xsn2Y.getParent())
	{
		CQDJ9KPR4k2uG9Xsn2Y.setValid(false)
return
}
	local CQRsP7zNupumPaXo = CQDJ9KPR4k2uG9Xsn2Y.getSource()
local CQirxY4SXH9lERZPW1 = sq_GetCNRDObjectToSQRCharacter(CQRsP7zNupumPaXo)
local CQ1vZuHYkhIdAZLaonWT = sq_GetSkillLevel(CQirxY4SXH9lERZPW1, 104)
local CQUgwHu9DiT1aULDK = sq_GetLevelData(CQirxY4SXH9lERZPW1,104, 1, CQ1vZuHYkhIdAZLaonWT)/10
local CQG354cC8NHKuCKOCg = CQDJ9KPR4k2uG9Xsn2Y.sq_getChangeStatus("Threeflower")
if(!CQG354cC8NHKuCKOCg)
	{
		CQG354cC8NHKuCKOCg = CQDJ9KPR4k2uG9Xsn2Y.sq_AddChangeStatus("Threeflower",CQirxY4SXH9lERZPW1, CQirxY4SXH9lERZPW1, 0, 15, false, CQUgwHu9DiT1aULDK)
}
	else
	{
		CQG354cC8NHKuCKOCg.clearParameter()
CQG354cC8NHKuCKOCg.addParameter(15, false, CQUgwHu9DiT1aULDK.tofloat())
}
	
}
