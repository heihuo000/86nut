function sq_AddFunctionName(CQupOenZbhF9emdkbJ)
{
	CQupOenZbhF9emdkbJ.sq_AddFunctionName("onStart", "onStart_appendage_Ecstasy")
	
}

function onStart_appendage_Ecstasy(CQMQzPdaXovMUB9vpkcc)
{
	if(!CQMQzPdaXovMUB9vpkcc) return
if(!CQMQzPdaXovMUB9vpkcc.getParent())
	{
		CQMQzPdaXovMUB9vpkcc.setValid(false)
return
}
	local CQnzLNXqkMC2cw8zI = CQMQzPdaXovMUB9vpkcc.getParent()
local CQnzLNXqkMC2cw8zI = sq_GetCNRDObjectToSQRCharacter(CQnzLNXqkMC2cw8zI)
local CQhNLqmH7y3AYO7Y = sq_GetSkillLevel(CQnzLNXqkMC2cw8zI, 106)
local CQpGQIRoqBiiTj7Q63 = CQnzLNXqkMC2cw8zI.sq_GetLevelData(106, 3, CQhNLqmH7y3AYO7Y)
local CQ3E4CShNcfQvS6ndqM9 = CQnzLNXqkMC2cw8zI.sq_GetLevelData(106, 2, CQhNLqmH7y3AYO7Y)
local CQqepfrMxWPxlQ5rh = CQMQzPdaXovMUB9vpkcc.sq_getChangeStatus("Ecstasy")
if(!CQqepfrMxWPxlQ5rh)
	{
		CQqepfrMxWPxlQ5rh = CQMQzPdaXovMUB9vpkcc.sq_AddChangeStatus("Ecstasy",CQnzLNXqkMC2cw8zI, CQnzLNXqkMC2cw8zI, 0, 10, false, CQpGQIRoqBiiTj7Q63)
CQqepfrMxWPxlQ5rh = CQMQzPdaXovMUB9vpkcc.sq_AddChangeStatus("Ecstasy",CQnzLNXqkMC2cw8zI, CQnzLNXqkMC2cw8zI, 0, 11, false, CQ3E4CShNcfQvS6ndqM9)
}
	else
	{
		CQqepfrMxWPxlQ5rh.clearParameter()
CQqepfrMxWPxlQ5rh.addParameter(10, false, CQpGQIRoqBiiTj7Q63.tofloat())
CQqepfrMxWPxlQ5rh.addParameter(11, false, CQ3E4CShNcfQvS6ndqM9.tofloat())
}
	
}
