function sq_AddFunctionName(CQ6EmweoU8SF6dBj)
{
	CQ6EmweoU8SF6dBj.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_Dualweapon5")
}


function onAttackParent_appendage_Dualweapon5(CQew2PTbVrca1sVf4E, CQXciB2MlZZr7bCl84z1, CQxfRgDDpTqv2XChb, CQP1DmWvdQ1jVmXcq3S, CQ9Jvs7deKuT39ZT)
{
	if(!CQew2PTbVrca1sVf4E) return
local CQtsDCKVJj98BaZbuJ = CQew2PTbVrca1sVf4E.getParent()
if(!CQtsDCKVJj98BaZbuJ) 
	{
		CQew2PTbVrca1sVf4E.setValid(false)
return
}
	
	local CQBrYdotvoIMLfLzHkBG = CQew2PTbVrca1sVf4E.getSource()
local CQvYVnvxOGkJNLKUZ = sq_GetCNRDObjectToSQRCharacter(CQBrYdotvoIMLfLzHkBG)
local CQDvWE874gGIZnKYN4U = sq_GetSkillLevel(CQvYVnvxOGkJNLKUZ, 202)
local CQRg8LLOuubyGCJl = sq_getRandom(0, 99)
local CQi3O8QwCBVUXqHnlK = sq_GetLevelData(CQvYVnvxOGkJNLKUZ,202, 13, CQDvWE874gGIZnKYN4U)/10
if(CQRg8LLOuubyGCJl > CQi3O8QwCBVUXqHnlK)
		return
local CQ1LlYhTmdeTHd1cYkim = sq_GetLevelData(CQvYVnvxOGkJNLKUZ,202, 14, CQDvWE874gGIZnKYN4U)
local CQUOLiNLDt49AsMqU = sq_GetLevelData(CQvYVnvxOGkJNLKUZ,202, 15, CQDvWE874gGIZnKYN4U)
sq_sendSetActiveStatusPacket(CQxfRgDDpTqv2XChb, CQvYVnvxOGkJNLKUZ, 6, CQi3O8QwCBVUXqHnlK.tofloat(), sq_GetSkillLevel(CQvYVnvxOGkJNLKUZ, 174), true, CQ1LlYhTmdeTHd1cYkim,CQUOLiNLDt49AsMqU)
}
