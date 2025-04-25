

function checkExecutableSkill_Congest(CQ5Vfx4RSEaRyYWvA)
{
	if (!CQ5Vfx4RSEaRyYWvA) return false
local CQwDAypBl2h3a4rwGF2 = CQ5Vfx4RSEaRyYWvA.sq_IsUseSkill(76)
if (CQwDAypBl2h3a4rwGF2)
	{
		CreateBuffCutin(CQ5Vfx4RSEaRyYWvA,"etc/ultimateskillani/atsword_darktempler_neo_buff.ani")
CQ5Vfx4RSEaRyYWvA.sq_IntVectClear()
CQ5Vfx4RSEaRyYWvA.sq_IntVectPush(0)
CQ5Vfx4RSEaRyYWvA.sq_AddSetStatePacket(102, STATE_PRIORITY_IGNORE_FORCE, true)
local CQZodGbAonDXuueU = "character/atswordman/4_darktempler/congest/ap_congest.nut"
local CQzqA39YBFcSe7eW8i = CNSquirrelAppendage.sq_AppendAppendage(CQ5Vfx4RSEaRyYWvA, CQ5Vfx4RSEaRyYWvA, -1, false, CQZodGbAonDXuueU, false)
CQzqA39YBFcSe7eW8i.sq_SetValidTime(CQ5Vfx4RSEaRyYWvA.sq_GetLevelData(76, 1, sq_GetSkillLevel(CQ5Vfx4RSEaRyYWvA, 76)))
CQzqA39YBFcSe7eW8i.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(CQ5Vfx4RSEaRyYWvA), 76, sq_GetSkillLevel(CQ5Vfx4RSEaRyYWvA, 76))
CQzqA39YBFcSe7eW8i.setEnableIsBuff(true)
CNSquirrelAppendage.sq_Append(CQzqA39YBFcSe7eW8i, CQ5Vfx4RSEaRyYWvA, CQ5Vfx4RSEaRyYWvA, true)
return true
}
	
	return false
}

function checkCommandEnable_Congest(CQOlclZ8wMZoiFwQg1gI)
{
	if (!CQOlclZ8wMZoiFwQg1gI) return false
return true
}

function onSetState_Congest(CQ88CWEXHvQwrxQuT, CQWBeSnrfA2cmJErcGa, CQVF61NzI9uRWtpp, CQfpskA53c94q5otEoVv)
{	
	if(!CQ88CWEXHvQwrxQuT) return
local CQuQTwesyOO6vioaO = CQ88CWEXHvQwrxQuT.sq_GetVectorData(CQVF61NzI9uRWtpp, 0)
CQ88CWEXHvQwrxQuT.setSkillSubState(CQuQTwesyOO6vioaO)
switch(CQuQTwesyOO6vioaO)
	{
	case 0:
		CQ88CWEXHvQwrxQuT.sq_StopMove()
CQ88CWEXHvQwrxQuT.sq_SetCurrentAnimation(472)
break
}
	CQ88CWEXHvQwrxQuT.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Congest(CQMzsPkQX6TVQziiFUn)
{
	if(!CQMzsPkQX6TVQziiFUn) return
local CQndkB1jkwHGbHuO = CQMzsPkQX6TVQziiFUn.getSkillSubState()
switch(CQndkB1jkwHGbHuO)
	{
	case 0:
		CQMzsPkQX6TVQziiFUn.sq_IntVectClear()
CQMzsPkQX6TVQziiFUn.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}
