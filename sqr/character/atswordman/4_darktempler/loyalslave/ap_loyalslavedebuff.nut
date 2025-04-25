
function sq_AddFunctionName(CQDzfM37Kxch7cyNBiIg)
{
	CQDzfM37Kxch7cyNBiIg.sq_AddFunctionName("proc", "proc_appendage_LoyalSlaveDebuff")
	CQDzfM37Kxch7cyNBiIg.sq_AddFunctionName("drawAppend", "drawAppend_appendage_LoyalSlaveDebuff")
}

function proc_appendage_LoyalSlaveDebuff(CQR9ujFLgrZk22tX3)
{
	if(!CQR9ujFLgrZk22tX3) return
local CQiNfwvatZQ88tWJlud = CQR9ujFLgrZk22tX3.getParent()
local CQHGAO8T5T2N35WB = CQR9ujFLgrZk22tX3.getSource()
local CQjEcBL4UauHBirZUboZ = sq_GetCNRDObjectToSQRCharacter(CQHGAO8T5T2N35WB)
local CQEwCgEHSK9I4zeMw = sq_GetSkillLevel(CQjEcBL4UauHBirZUboZ, 40)
local CQ4ermnmljOtNHeCPRZ = sq_GetLevelData(CQjEcBL4UauHBirZUboZ,40, 2, CQEwCgEHSK9I4zeMw)
local CQQc7sdhpoTnZYw3 = CQjEcBL4UauHBirZUboZ.sq_GetSkillLoad(65)
if(!CQQc7sdhpoTnZYw3)
		return
local CQLRsXPMd1HTG4QNLM = CQQc7sdhpoTnZYw3.getRemainLoadNumber()
local CQT26dwiegb8CyE6Vn5e = sq_GetLevelData(CQjEcBL4UauHBirZUboZ,65, 0, sq_GetSkillLevel(CQjEcBL4UauHBirZUboZ, 65))
if(IsInterval_DeadlyCape(CQiNfwvatZQ88tWJlud, CQ4ermnmljOtNHeCPRZ))
	{
		if(CQLRsXPMd1HTG4QNLM+1 <= CQT26dwiegb8CyE6Vn5e)
			CQQc7sdhpoTnZYw3.increaseLoadCount(1)
}
}

function drawAppend_appendage_LoyalSlaveDebuff(CQsKsnjbHuBNJ6p2, CQ6ITpMdYBrJSFo9kg, CQeWJLASIY5IKxo5xik4, CQXvm8et3tptDJiRn, CQxg2Y59yCRnIti8EuO)
{
	if(!CQsKsnjbHuBNJ6p2 || !CQsKsnjbHuBNJ6p2.isValid()) return
local CQP3oiJCXxSTF5u4 = CQsKsnjbHuBNJ6p2.getParent()
local CQ9LgHiOkIx8OiyfDb = sq_GetWidthObject(CQP3oiJCXxSTF5u4)
local CQtOi5YxDZLdpzy7JFXs = sq_GetHeightObject(CQP3oiJCXxSTF5u4)
local CQBtRx768Tm2PGth6 = sq_GetScreenXPos(CQP3oiJCXxSTF5u4)
local CQvbDtKLEa1LEcWddiv = 1.3
if(CQtOi5YxDZLdpzy7JFXs<120)
		CQvbDtKLEa1LEcWddiv = 1.5
local CQDhvFmwMKyPyKWT = sq_GetScreenYPos(CQP3oiJCXxSTF5u4) - (CQtOi5YxDZLdpzy7JFXs*CQvbDtKLEa1LEcWddiv).tointeger()
local CQR4B3Rkcj8iayrgzn = "passiveobject/changqing_atswordman/animation/atloyalslave/loyalservant_repeat_body.ani"
local CQiXWTV3Josqu6sxvFtw = CQP3oiJCXxSTF5u4.getVar()
local CQHC8rIER1jzeoskobl = CQiXWTV3Josqu6sxvFtw.GetAnimationMap("LoyalSlaveDebuff", CQR4B3Rkcj8iayrgzn)
sq_AnimationProc(CQHC8rIER1jzeoskobl)
sq_drawCurrentFrame(CQHC8rIER1jzeoskobl, CQBtRx768Tm2PGth6,CQDhvFmwMKyPyKWT, false)
return
}
