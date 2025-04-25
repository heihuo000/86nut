function sq_AddFunctionName(CQvBFNfs8VEI5IR8)
{
	CQvBFNfs8VEI5IR8.sq_AddFunctionName("onStart", "onStart_appendage_Dualweapon")
	CQvBFNfs8VEI5IR8.sq_AddFunctionName("onEnd", "onEnd_appendage_Dualweapon")
	
}


function onStart_appendage_Dualweapon(CQDFvgCQExgtfhRjxK)
{
	if(!CQDFvgCQExgtfhRjxK) return
local CQRpBqe5MOSn6AffbkNC = CQDFvgCQExgtfhRjxK.getParent()
if(!CQRpBqe5MOSn6AffbkNC) 
	{
		CQDFvgCQExgtfhRjxK.setValid(false)
return
}
	
	local CQiQtITJrXxq1qdTq = CQDFvgCQExgtfhRjxK.getSource()
local CQ1z9C2qKlZz7Ndgrjm = sq_GetCNRDObjectToSQRCharacter(CQiQtITJrXxq1qdTq)
local CQU9PfDjgaqd2e9x = sq_GetSkillLevel(CQ1z9C2qKlZz7Ndgrjm, 202)
local CQHMznW1P412Vg8kJ3 = sq_GetLevelData(CQ1z9C2qKlZz7Ndgrjm,202, 16, CQU9PfDjgaqd2e9x)/10
local CQhHZElo5kyLLO8vXqoW = CQDFvgCQExgtfhRjxK.sq_getChangeStatus("Dualweapon")
if(!CQhHZElo5kyLLO8vXqoW)
	{
	
		CQhHZElo5kyLLO8vXqoW = CQDFvgCQExgtfhRjxK.sq_AddChangeStatus("Dualweapon",CQ1z9C2qKlZz7Ndgrjm, CQ1z9C2qKlZz7Ndgrjm, 0, 33, false, -CQHMznW1P412Vg8kJ3)
}
	else
	{
		CQhHZElo5kyLLO8vXqoW.clearParameter()
CQhHZElo5kyLLO8vXqoW.addParameter(33, false, -CQHMznW1P412Vg8kJ3.tofloat())
}
	
}
function onEnd_appendage_Dualweapon(CQpazZKnnp9PNj7z)
{
	if(!CQpazZKnnp9PNj7z) return
local CQ3eZ8ofC1IiZS6jhk = CQpazZKnnp9PNj7z.getParent()
if(!CQ3eZ8ofC1IiZS6jhk) 
	{
		CQpazZKnnp9PNj7z.setValid(false)
return
}
	local CQqcQvvDTnkqGQTYlEF6 = sq_GetCNRDObjectToSQRCharacter(CQ3eZ8ofC1IiZS6jhk)
}
