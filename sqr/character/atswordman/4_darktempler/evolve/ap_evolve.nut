function sq_AddFunctionName(CQdO32qwbvJmniu1J)
{
	CQdO32qwbvJmniu1J.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_evolve")
}


function onAttackParent_appendage_evolve(CQytoTgTPSnlx8y8XiM, CQNngrBL5BBdjHy4, CQbjoAOaicW1dYtfjn, CQF5gMzmVO6KkLW7zGfL, CQgXFh43l7EPfuO3v)
{
	if(!CQytoTgTPSnlx8y8XiM) return
local CQoCvQGHGzgu66IdmFp = CQytoTgTPSnlx8y8XiM.getParent()
local CQ2SBOyi9sSmRos6 = sq_GetCNRDObjectToSQRCharacter(CQoCvQGHGzgu66IdmFp)
local CQmitVxgw4cz7xsgSi = sq_GetCNRDObjectToCollisionObject(CQNngrBL5BBdjHy4)
local CQJm9R5M1TZd2Ja9HMHs = CQmitVxgw4cz7xsgSi.getCollisionObjectIndex()
local CQkTPmESYEq18vEkZ = CQmitVxgw4cz7xsgSi.getVar("skill").get_vector(0)
if(CQJm9R5M1TZd2Ja9HMHs == 24381 && (CQkTPmESYEq18vEkZ == 75 || CQkTPmESYEq18vEkZ == 59 ))
		return
AtSwordmanAddEvolve(CQ2SBOyi9sSmRos6)
}
