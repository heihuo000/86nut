function sq_AddFunctionName(CQiMVQJur38y7O7Bg)
{
	CQiMVQJur38y7O7Bg.sq_AddFunctionName("onStart", "onStart_appendage_Controldemonsword")
	
}

function onStart_appendage_Controldemonsword(CQ1HWIUvKjsUgj6ZT6e)
{
		if(!CQ1HWIUvKjsUgj6ZT6e) return
if(!CQ1HWIUvKjsUgj6ZT6e.getParent())
	{
		CQ1HWIUvKjsUgj6ZT6e.setValid(false)
return
}
	local CQUaCVfBgokl8S61 = CQ1HWIUvKjsUgj6ZT6e.getSource()
local CQHerRCAPMG93Q5VnZ = sq_GetCNRDObjectToSQRCharacter(CQUaCVfBgokl8S61)
local CQjc7UsW5bvM9Mj4EQsL = sq_GetSkillLevel(CQHerRCAPMG93Q5VnZ, 154)
local CQEfIam8iuCK4rjMO = sq_GetLevelData(CQHerRCAPMG93Q5VnZ,154, 0, CQjc7UsW5bvM9Mj4EQsL)/10
local CQL1lXRXCBeONgh7 = sq_GetLevelData(CQHerRCAPMG93Q5VnZ,154, 1, CQjc7UsW5bvM9Mj4EQsL)/10
local CQlKK9SITc4y5Pg3Ks = CQ1HWIUvKjsUgj6ZT6e.sq_getChangeStatus("Controldemonsword")
if(!CQlKK9SITc4y5Pg3Ks)
	{
		CQlKK9SITc4y5Pg3Ks = CQ1HWIUvKjsUgj6ZT6e.sq_AddChangeStatus("Controldemonsword",CQHerRCAPMG93Q5VnZ, CQHerRCAPMG93Q5VnZ, 0, 4, true, CQEfIam8iuCK4rjMO)
CQlKK9SITc4y5Pg3Ks = CQ1HWIUvKjsUgj6ZT6e.sq_AddChangeStatus("Controldemonsword",CQHerRCAPMG93Q5VnZ, CQHerRCAPMG93Q5VnZ, 0, 15, false, CQL1lXRXCBeONgh7)
}
	else
	{
		CQlKK9SITc4y5Pg3Ks.clearParameter()
CQlKK9SITc4y5Pg3Ks.addParameter(4, true, CQEfIam8iuCK4rjMO.tofloat())
CQlKK9SITc4y5Pg3Ks.addParameter(15, false, CQL1lXRXCBeONgh7.tofloat())
}
	
}
