function sq_AddFunctionName(CQNNSxbEg1Os5kxDW)
{
	CQNNSxbEg1Os5kxDW.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_Dualweapon2")
}


function onAttackParent_appendage_Dualweapon2(CQbGYy9mtbTWfDzLike, CQFEVGZ35DHn6zzG, CQgwW3aGUNbk1MlCC4, CQox8lUiAYV77rTKMqsP, CQ2dIrfgTArN23TN4)
{
	if(!CQbGYy9mtbTWfDzLike) return
local CQmMlSANoV5HVAkXzk9 = CQbGYy9mtbTWfDzLike.getParent()
if(!CQmMlSANoV5HVAkXzk9) 
	{
		CQbGYy9mtbTWfDzLike.setValid(false)
return
}
	
	local CQJHL1eSBxps3Tj2 = CQbGYy9mtbTWfDzLike.getSource()
local CQkaljkvwIRtBFjBmj = sq_GetCNRDObjectToSQRCharacter(CQJHL1eSBxps3Tj2)
local CQaeKw19H6SnLen5rEcW = sq_GetSkillLevel(CQkaljkvwIRtBFjBmj, 202)
local CQ5YqPSAflxkN2n1S = sq_GetLevelData(CQkaljkvwIRtBFjBmj,202, 1, CQaeKw19H6SnLen5rEcW) + sq_GetSkillLevel(CQkaljkvwIRtBFjBmj, 174)
local CQQR3BrWIaLzZWbVHq = sq_getRandom(0, 99)
local CQLgpg6x33mdGjv4ZJrX = sq_GetLevelData(CQkaljkvwIRtBFjBmj,202, 2, CQaeKw19H6SnLen5rEcW)/10
if(CQQR3BrWIaLzZWbVHq > CQLgpg6x33mdGjv4ZJrX)
		return
local CQl3hqKXymM1PSvMB = sq_GetLevelData(CQkaljkvwIRtBFjBmj,202, 3, CQaeKw19H6SnLen5rEcW)
sq_sendSetActiveStatusPacket(CQgwW3aGUNbk1MlCC4, CQkaljkvwIRtBFjBmj, 3, CQLgpg6x33mdGjv4ZJrX.tofloat(), CQ5YqPSAflxkN2n1S, false, CQl3hqKXymM1PSvMB)
}
