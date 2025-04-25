function sq_AddFunctionName(CQU5XBYienJew2lo3)
{
	CQU5XBYienJew2lo3.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_Dualweapon1")
}


function onAttackParent_appendage_Dualweapon1(CQHXegCbJiUYnPTt7mQ, CQjA6qsMRNNgekTa, CQEussmDOYW5UDkijj, CQ4UkCRt4A6CcwjOwEEG, CQQkJfVdnVaDm1jEy)
{
	if(!CQHXegCbJiUYnPTt7mQ) return
local CQL6knIVCxhEYWhSpqC = CQHXegCbJiUYnPTt7mQ.getParent()
if(!CQL6knIVCxhEYWhSpqC) 
	{
		CQHXegCbJiUYnPTt7mQ.setValid(false)
return
}
	
	local CQlCJEQWkIDeTjhI = CQHXegCbJiUYnPTt7mQ.getSource()
local CQISmZ3xD6cYbAgGVk = sq_GetCNRDObjectToSQRCharacter(CQlCJEQWkIDeTjhI)
local CQ7F18F78lZnzTRA1E8m = sq_GetSkillLevel(CQISmZ3xD6cYbAgGVk, 202)
local CQrpivtIQaQkhNvK5 = sq_getRandom(0, 99)
local CQAQRizwM3279eYFdEu = sq_GetLevelData(CQISmZ3xD6cYbAgGVk,202, 5, CQ7F18F78lZnzTRA1E8m)/10
if(CQrpivtIQaQkhNvK5 > CQAQRizwM3279eYFdEu)
		return
local CQdzDJ4TcmuBj2cPn3 = sq_GetLevelData(CQISmZ3xD6cYbAgGVk,202, 6, CQ7F18F78lZnzTRA1E8m)
local CQy9v6GLsp9HdPcJQq37 = sq_GetLevelData(CQISmZ3xD6cYbAgGVk,202, 7, CQ7F18F78lZnzTRA1E8m)
sq_sendSetActiveStatusPacket(CQEussmDOYW5UDkijj, CQISmZ3xD6cYbAgGVk, 11, CQAQRizwM3279eYFdEu.tofloat(), sq_GetSkillLevel(CQISmZ3xD6cYbAgGVk, 174), true, CQdzDJ4TcmuBj2cPn3,CQy9v6GLsp9HdPcJQq37)
}
