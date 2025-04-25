function sq_AddFunctionName(CQTWgX7ctBbZvf3fVD87)
{
	CQTWgX7ctBbZvf3fVD87.sq_AddFunctionName("getImmuneTypeDamageRate", "getImmuneTypeDamageRate_appendage_Usir")
}

function getImmuneTypeDamageRate_appendage_Usir(CQsvodK8LcBAls272, CQ6hRboPnOribg1h6uu, CQe4DpbeAC5QzX1d)
{
	if (!CQsvodK8LcBAls272)
		return CQ6hRboPnOribg1h6uu
local CQXZvL9lTzpxhmMTnb = CQsvodK8LcBAls272.getParent()
local CQxPB7ZZosRfxBNRQDSX = CQsvodK8LcBAls272.getSource()
local CQPytYQaBLShjaNzW = sq_GetCNRDObjectToSQRCharacter(CQxPB7ZZosRfxBNRQDSX)
local CQ9u8uhqwTx5dRBjFuh = sq_GetSkillLevel(CQPytYQaBLShjaNzW,198)
local CQtUWHN4HELC5OVf = sq_GetLevelData(CQPytYQaBLShjaNzW,198, 2, CQ9u8uhqwTx5dRBjFuh)/10
return CQ6hRboPnOribg1h6uu+CQtUWHN4HELC5OVf
}