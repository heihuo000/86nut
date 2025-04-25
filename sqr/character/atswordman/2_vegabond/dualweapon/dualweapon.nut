
function checkExecutableSkill_Dualweapon(CQHtlJPE8CpMagNbwj4)
{
	if (!CQHtlJPE8CpMagNbwj4) return false
local CQ4bL5wmEzRJSZNeAE = CQHtlJPE8CpMagNbwj4.sq_IsUseSkill(202)
if (CQ4bL5wmEzRJSZNeAE)
	{
		sq_BinaryStartWrite()
sq_SendChangeSkillEffectPacket(CQHtlJPE8CpMagNbwj4, 202)
return true
}
	return false
}

function checkCommandEnable_Dualweapon(CQQjqxj3MeAOsUBmG3r7)
{
	if (!CQQjqxj3MeAOsUBmG3r7) return false
return true
}
