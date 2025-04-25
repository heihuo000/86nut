function sq_AddFunctionName(CQxTqqwb6OHFsFw3HD)
{
	CQxTqqwb6OHFsFw3HD.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_Spinslash")
}

function onDamageParent_appendage_Spinslash(CQt73IjMm6bEixwN6Yrr,CQBVpVMSBlVrIJQ6dSk, CQvF2fAtlaevotp2, CQDpoUxdp44hW5p9ly)
{
	if(!CQt73IjMm6bEixwN6Yrr) return
local CQRQga6CdmpTpio4WBm1 = CQt73IjMm6bEixwN6Yrr.getParent()
if(!CQRQga6CdmpTpio4WBm1)
	{
		CQt73IjMm6bEixwN6Yrr.setValid(false)
return
}
	
	if(CQBVpVMSBlVrIJQ6dSk.isObjectType(OBJECTTYPE_ACTIVE))
	{
		local CQizFZJOepR8tziMi = sq_GetObjectId(CQBVpVMSBlVrIJQ6dSk)
CQRQga6CdmpTpio4WBm1.getVar("SpinslashTar").clear_vector();	
		CQRQga6CdmpTpio4WBm1.getVar("SpinslashTar").push_vector(CQizFZJOepR8tziMi)
}
	else
	{
		local CQ19b9ix21ANQHi7sSZ = sq_FindTarget(CQRQga6CdmpTpio4WBm1,CQRQga6CdmpTpio4WBm1.getXPos()-500, CQRQga6CdmpTpio4WBm1.getXPos()+500, 500, 100)
local CQizFZJOepR8tziMi = sq_GetObjectId(CQ19b9ix21ANQHi7sSZ)
CQRQga6CdmpTpio4WBm1.getVar("SpinslashTar").clear_vector();	
		CQRQga6CdmpTpio4WBm1.getVar("SpinslashTar").push_vector(CQizFZJOepR8tziMi)
}
	
}