function sq_AddFunctionName(CQKf4o8yoiGzXMklv)
{
	CQKf4o8yoiGzXMklv.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_Dualweapon0")
}


function onAttackParent_appendage_Dualweapon0(CQT1EJLc9NvdHrknmqk, CQsJj6EVwvV2Ahjc, CQ6sHxhP1AeLJAhqAk, CQernyNrYV4PSThbGJqO, CQXWGGP7IxoisBgeL)
{
	if(!CQT1EJLc9NvdHrknmqk) return
local CQ9vn3wZhORqDwRm = CQT1EJLc9NvdHrknmqk.getParent()
if(!CQ9vn3wZhORqDwRm) 
	{
		CQT1EJLc9NvdHrknmqk.setValid(false)
return
}
	
	local CQtgMljey6AzI1Rtg3 = CQT1EJLc9NvdHrknmqk.getSource()
local CQB3uWMTXlzYoOfwTqvb = sq_GetCNRDObjectToSQRCharacter(CQtgMljey6AzI1Rtg3)
local CQvZdSy4UaKgOjdic = sq_GetSkillLevel(CQB3uWMTXlzYoOfwTqvb, 202)
local CQDPA1xaS4i4pSdWukH = sq_GetLevelData(CQB3uWMTXlzYoOfwTqvb,202, 9, CQvZdSy4UaKgOjdic) + sq_GetSkillLevel(CQB3uWMTXlzYoOfwTqvb, 174)
local CQRyck6mlmfCtQ9p = sq_getRandom(0, 99)
local CQinCwJhppPDQMzyO4 = sq_GetLevelData(CQB3uWMTXlzYoOfwTqvb,202, 10, CQvZdSy4UaKgOjdic)/10
if(CQRyck6mlmfCtQ9p > CQinCwJhppPDQMzyO4)
		return
local CQ1jcPiHN1lpyrzeFq11 = sq_GetLevelData(CQB3uWMTXlzYoOfwTqvb,202, 11, CQvZdSy4UaKgOjdic)
sq_sendSetActiveStatusPacket(CQ6sHxhP1AeLJAhqAk, CQB3uWMTXlzYoOfwTqvb, 16, CQinCwJhppPDQMzyO4.tofloat(), CQDPA1xaS4i4pSdWukH, false, CQ1jcPiHN1lpyrzeFq11)
}
