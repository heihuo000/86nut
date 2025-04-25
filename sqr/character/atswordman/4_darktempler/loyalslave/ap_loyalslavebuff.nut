function sq_AddFunctionName(CQ3wVJkKKNTIZSbY)
{
	CQ3wVJkKKNTIZSbY.sq_AddFunctionName("onStart", "onStart_appendage_LoyalSlaveBuff")
	CQ3wVJkKKNTIZSbY.sq_AddFunctionName("onEnd", "onEnd_appendage_LoyalSlaveBuff")
	CQ3wVJkKKNTIZSbY.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_LoyalSlaveBuff")
}

function onEnd_appendage_LoyalSlaveBuff(CQmxW51QgfHtMTvlT)
{
	if(!CQmxW51QgfHtMTvlT) return
local CQJd8xSjPtbUXFYncgW = CQmxW51QgfHtMTvlT.sq_GetSourceChrTarget()
}

function onStart_appendage_LoyalSlaveBuff(CQkMOyrJ5VVTHeYx)
{
	if(!CQkMOyrJ5VVTHeYx) return
local CQa17FTpixezC2cmER = CQkMOyrJ5VVTHeYx.getSource()
local CQ5JI32UVr5fJtxvPuP5 = sq_GetCNRDObjectToSQRCharacter(CQa17FTpixezC2cmER)
local CQwslli1lZp2S5ewF = sq_GetSkillLevel(CQ5JI32UVr5fJtxvPuP5, 40)
if(CQwslli1lZp2S5ewF<1) return
local CQZrLrYFGlRLKDwUKn1 = sq_GetLevelData(CQ5JI32UVr5fJtxvPuP5, 40, 4, CQwslli1lZp2S5ewF)/10
local CQzYqS7udaAADzQY = sq_GetLevelData(CQ5JI32UVr5fJtxvPuP5, 40, 3, CQwslli1lZp2S5ewF)/10
local CQOR31LfwKxiIGQQfg = CQkMOyrJ5VVTHeYx.sq_getChangeStatus("LoyalSlaveBuff")
if(!CQOR31LfwKxiIGQQfg)
	{
		CQOR31LfwKxiIGQQfg = CQkMOyrJ5VVTHeYx.sq_AddChangeStatus("LoyalSlaveBuff",CQ5JI32UVr5fJtxvPuP5, CQ5JI32UVr5fJtxvPuP5, 0, 16, false, CQZrLrYFGlRLKDwUKn1 )
CQOR31LfwKxiIGQQfg = CQkMOyrJ5VVTHeYx.sq_AddChangeStatus("LoyalSlaveBuff",CQ5JI32UVr5fJtxvPuP5, CQ5JI32UVr5fJtxvPuP5, 0, 51, false, CQzYqS7udaAADzQY )
}
	else
	{
		CQOR31LfwKxiIGQQfg.clearParameter()
CQOR31LfwKxiIGQQfg.addParameter(16, false, CQZrLrYFGlRLKDwUKn1.tofloat())
CQOR31LfwKxiIGQQfg.addParameter(51, false, CQzYqS7udaAADzQY.tofloat())
}
}

function onAttackParent_appendage_LoyalSlaveBuff(CQ82pjpB1jLqFrqnjiRL, CQWKhwbAYpmxO3qrx, CQVIpOBcIHMfpymqynE,CQYtgBO8hgt2tTUy, CQSbFgQXyu8ZEFUeIb)
{
	if(!CQ82pjpB1jLqFrqnjiRL) return
local CQfhbmhr6NsAyxnoSFJe = CQ82pjpB1jLqFrqnjiRL.getSource()
local CQu4NsNlmfjiw2bt1 = sq_GetCNRDObjectToSQRCharacter(CQfhbmhr6NsAyxnoSFJe)
local CQMZyCPZDtFQutba6iz = sq_GetSkillLevel(CQu4NsNlmfjiw2bt1, 40)
local CQhP9dzszVvxr4tidM = sq_GetLevelData(CQu4NsNlmfjiw2bt1, 40, 0, CQMZyCPZDtFQutba6iz)
local CQpyPn5qExCfmSWOhnSf = sq_GetLevelData(CQu4NsNlmfjiw2bt1, 40, 1, CQMZyCPZDtFQutba6iz)
local CQ3n9pH4MrwgWlWEQ = sq_GetLevelData(CQu4NsNlmfjiw2bt1, 40, 2, CQMZyCPZDtFQutba6iz)
local CQqjPLuJeZ35qGryWgg = sq_GetIntData(CQu4NsNlmfjiw2bt1, 40, 0) + CQpyPn5qExCfmSWOhnSf
local CQKkx8coJloCvces = sq_GetSkillLevel(CQu4NsNlmfjiw2bt1, 198)
if(CQKkx8coJloCvces>0)
	{
		local CQT6ZY6hvafDQ3eos1 = "character/atswordman/4_darktempler/usir/ap_usir.nut"
local CQsCwia1OKPEbywPCnnF = CNSquirrelAppendage.sq_GetAppendage(CQVIpOBcIHMfpymqynE,CQT6ZY6hvafDQ3eos1)
if(!CQsCwia1OKPEbywPCnnF || !CQsCwia1OKPEbywPCnnF.isValid())
			local CQ82pjpB1jLqFrqnjiRL = CNSquirrelAppendage.sq_AppendAppendage(CQVIpOBcIHMfpymqynE, CQu4NsNlmfjiw2bt1, -1, false, CQT6ZY6hvafDQ3eos1, true)
}
	
	if(CQMZyCPZDtFQutba6iz<1) return
local CQeia5fbupJYnDQD4bK = sq_getRandom(0, 99)
if(CQeia5fbupJYnDQD4bK>CQhP9dzszVvxr4tidM)
		return
local CQXmjxCfC1UhxzqO = "character/atswordman/4_darktempler/loyalslave/ap_loyalslavedebuff.nut"
local CQxlEysBTgN5jHmHvR = "character/atswordman/4_darktempler/loyalslave/ap_loyalslavecool.nut"
local CQP8jFqtFuWCdWmSqi3u = CNSquirrelAppendage.sq_GetAppendage(CQVIpOBcIHMfpymqynE,CQXmjxCfC1UhxzqO)
if(!CQP8jFqtFuWCdWmSqi3u || !CQP8jFqtFuWCdWmSqi3u.isValid())
	{
		local CQ9BH32c9N6Fk4ULr = CNSquirrelAppendage.sq_GetAppendage(CQVIpOBcIHMfpymqynE,CQxlEysBTgN5jHmHvR)
if(!CQ9BH32c9N6Fk4ULr || !CQ9BH32c9N6Fk4ULr.isValid())
		{
			local CQtFUTD8wYaEfuiGune = CNSquirrelAppendage.sq_AppendAppendage(CQVIpOBcIHMfpymqynE, CQu4NsNlmfjiw2bt1, -1, false, CQXmjxCfC1UhxzqO, true)
CQtFUTD8wYaEfuiGune.getAppendageInfo().setValidTime(CQpyPn5qExCfmSWOhnSf)
local CQBpMrWO1the6luC = CNSquirrelAppendage.sq_AppendAppendage(CQVIpOBcIHMfpymqynE, CQu4NsNlmfjiw2bt1, -1, false, CQxlEysBTgN5jHmHvR, true)
CQBpMrWO1the6luC.getAppendageInfo().setValidTime(CQqjPLuJeZ35qGryWgg)
}
	}
	return
}

