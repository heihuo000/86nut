function sq_AddFunctionName(CQ69M7iNsUEZeBh1wcj)
{
	CQ69M7iNsUEZeBh1wcj.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_Bladesoul")
	
}

function onAttackParent_appendage_Bladesoul(CQeNucYy2FbAUwh8, CQXGdu7YWfVFr1g4o9, CQxEyHs9LbrEmORfsWmz,CQPwd4mPhS5eYjR7C, CQ9eAzRrA9pvqSfhMcZ)
{
	if(!CQeNucYy2FbAUwh8) return
local CQtcctV86rRhvldd = CQeNucYy2FbAUwh8.getParent()
if(!CQtcctV86rRhvldd)
	{
		CQeNucYy2FbAUwh8.setValid(false)
return
}
	local CQBfXDIZoPA5lMdT9x = sq_GetCNRDObjectToSQRCharacter(CQtcctV86rRhvldd)
if(CQ9eAzRrA9pvqSfhMcZ)
		return
local CQv1e2QsB7xVge9gbP56 = sq_GetLevelData(CQBfXDIZoPA5lMdT9x,15, 3, sq_GetSkillLevel(CQBfXDIZoPA5lMdT9x, 15))
local CQDJ6k3lzwLFz289q = sq_GetLevelData(CQBfXDIZoPA5lMdT9x,15, 1, sq_GetSkillLevel(CQBfXDIZoPA5lMdT9x, 15))
local CQ1sseF5HKmEhPzjrWW = CQBfXDIZoPA5lMdT9x.getVar("BladesoulBuffCount").getInt(0)
if(CQ1sseF5HKmEhPzjrWW < CQv1e2QsB7xVge9gbP56)
		CQBfXDIZoPA5lMdT9x.getVar("BladesoulBuffCount").setInt(0, CQ1sseF5HKmEhPzjrWW + 1)
local CQUr6AtJf5Mr9klfuC = "character/atswordman/1_swordmaster/bladesoul/ap_bladesoulbuff.nut"
if(CNSquirrelAppendage.sq_IsAppendAppendage(CQBfXDIZoPA5lMdT9x, CQUr6AtJf5Mr9klfuC))
		return
local CQeNucYy2FbAUwh8 = CNSquirrelAppendage.sq_AppendAppendage(CQBfXDIZoPA5lMdT9x, CQBfXDIZoPA5lMdT9x, -1, false, CQUr6AtJf5Mr9klfuC, false)
CQeNucYy2FbAUwh8.sq_SetValidTime(CQDJ6k3lzwLFz289q)
CQeNucYy2FbAUwh8.setEnableIsBuff(true)
CQeNucYy2FbAUwh8.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(CQBfXDIZoPA5lMdT9x), 15, sq_GetSkillLevel(CQBfXDIZoPA5lMdT9x, 15))
CNSquirrelAppendage.sq_Append(CQeNucYy2FbAUwh8, CQBfXDIZoPA5lMdT9x, CQBfXDIZoPA5lMdT9x, true)
}

