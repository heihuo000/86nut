
function sq_AddFunctionName(CQUfZ4aq2wbEYoESAbLe)
{
	CQUfZ4aq2wbEYoESAbLe.sq_AddFunctionName("proc", "proc_appendage_shadowhiding")
}


function proc_appendage_shadowhiding(CQH1wzUjvKVrqxpIG)
{
	if(!CQH1wzUjvKVrqxpIG || !CQH1wzUjvKVrqxpIG.isValid())
		return
local CQjJ5WfJLjevvJoGLRx = CQH1wzUjvKVrqxpIG.getParent()
local CQEsEDAohp4hlvoA = sq_GetCNRDObjectToSQRCharacter(CQjJ5WfJLjevvJoGLRx)
if(!CQjJ5WfJLjevvJoGLRx || CQEsEDAohp4hlvoA.getState() == STATE_DIE || CQEsEDAohp4hlvoA.isDead())
	{
		CQH1wzUjvKVrqxpIG.setValid(false)
return
}
	CQEsEDAohp4hlvoA.setSkillCommandEnable(60,true)
local CQ4r42enyHp6b5iK2f = CQEsEDAohp4hlvoA.sq_IsEnterSkill(60)
if(CQ4r42enyHp6b5iK2f != -1)
	{
		CQEsEDAohp4hlvoA.sq_IntVectClear()
CQEsEDAohp4hlvoA.sq_IntVectPush(2)
CQEsEDAohp4hlvoA.sq_AddSetStatePacket(60, STATE_PRIORITY_IGNORE_FORCE, true)
CQH1wzUjvKVrqxpIG.setValid(false)
}
	return
}
