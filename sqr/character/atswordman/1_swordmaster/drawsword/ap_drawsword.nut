function sq_AddFunctionName(CQc63z9O5sqWacu6AX)
{
	CQc63z9O5sqWacu6AX.sq_AddFunctionName("onStart", "onStart_appendage_Drawsword")
	CQc63z9O5sqWacu6AX.sq_AddFunctionName("proc", "proc_appendage_Drawsword")
	CQc63z9O5sqWacu6AX.sq_AddFunctionName("onEnd", "onEnd_appendage_Drawsword")
	CQc63z9O5sqWacu6AX.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_Drawsword")

}

function onAttackParent_appendage_Drawsword(CQACptZwU51bDJy2GxPX, CQdShDE6VqyjItt9L, CQyiG2nLTE86o5t588f, CQNmnTfEo3IBWiW1, CQblNeCk9UkGpzr8kC)
{
	if(!CQACptZwU51bDJy2GxPX) return
local CQF8yAe3wFGatHr4cevW = CQACptZwU51bDJy2GxPX.getParent()
local CQF8yAe3wFGatHr4cevW = sq_GetCNRDObjectToSQRCharacter(CQF8yAe3wFGatHr4cevW)
Attack_BlademasteryDrawsword(CQF8yAe3wFGatHr4cevW, CQyiG2nLTE86o5t588f, CQNmnTfEo3IBWiW1, CQblNeCk9UkGpzr8kC)
}

function onStart_appendage_Drawsword(CQoFyh1UYbVby4w7EzH)
{
	if(!CQoFyh1UYbVby4w7EzH) return
local CQ2pdQSgISejwuwh = CQoFyh1UYbVby4w7EzH.getParent()
if(!CQ2pdQSgISejwuwh) 
	{
		CQoFyh1UYbVby4w7EzH.setValid(false)
return
}
	
	local CQmQPIrGh947n6Q9D8 = CQoFyh1UYbVby4w7EzH.sq_GetSourceChrTarget()
}

function proc_appendage_Drawsword(CQJzxVTuycoBeFqkJr1c)
{
	if(!CQJzxVTuycoBeFqkJr1c) return
local CQk9XRJvXPfGUxpR7 = CQJzxVTuycoBeFqkJr1c.getParent()
if(!CQk9XRJvXPfGUxpR7) 
	{
		CQJzxVTuycoBeFqkJr1c.setValid(false)
return
}
	local CQadeUiNm7AscJozfxQ = sq_GetCNRDObjectToSQRCharacter(CQk9XRJvXPfGUxpR7)
local CQ5M6avADwzWmvij = 0
if(CNSquirrelAppendage.sq_IsAppendAppendage(CQadeUiNm7AscJozfxQ, "character/atswordman/1_swordmaster/timeslash/ap_devilslash.nut"))
		CQ5M6avADwzWmvij = sq_GetLevelData(CQadeUiNm7AscJozfxQ,142, 4, sq_GetSkillLevel(CQadeUiNm7AscJozfxQ, 142))
else
		CQ5M6avADwzWmvij = 0
local CQzHwZ8WlsKbY5iYz8CH = sq_GetLevelData(CQadeUiNm7AscJozfxQ,17, 0, sq_GetSkillLevel(CQadeUiNm7AscJozfxQ, 17) + CQ5M6avADwzWmvij)
local CQOa59L9p5UmTiult = 0
if(sq_GetSkillLevel(CQadeUiNm7AscJozfxQ, 11) > 0)
		CQOa59L9p5UmTiult = sq_GetLevelData(CQadeUiNm7AscJozfxQ,11, 6, sq_GetSkillLevel(CQadeUiNm7AscJozfxQ, 11))
CQzHwZ8WlsKbY5iYz8CH = CQzHwZ8WlsKbY5iYz8CH + CQOa59L9p5UmTiult
local CQ8eabpXNqMlv8yno7g = sq_GetLevelData(CQadeUiNm7AscJozfxQ,17, 1, sq_GetSkillLevel(CQadeUiNm7AscJozfxQ, 17) + CQ5M6avADwzWmvij)
local CQWckogIeEt9lGyc = sq_GetIntData(CQadeUiNm7AscJozfxQ,11, 2)
CQ8eabpXNqMlv8yno7g = CQ8eabpXNqMlv8yno7g - CQWckogIeEt9lGyc
local CQVRHKBzJ271gctTSX = CQadeUiNm7AscJozfxQ.sq_GetSkillLoad(17)
if(!CQVRHKBzJ271gctTSX)
	{
		CQadeUiNm7AscJozfxQ.sq_AddSkillLoad(17, 50, CQzHwZ8WlsKbY5iYz8CH, CQ8eabpXNqMlv8yno7g)
CQVRHKBzJ271gctTSX = CQadeUiNm7AscJozfxQ.sq_GetSkillLoad(17)
}
	else
	{
		local CQY2U7O6RUaK8Ktb1xnp = CQVRHKBzJ271gctTSX.getRemainLoadNumber()
if(!CQVRHKBzJ271gctTSX.isCooling())
		{
			if(CQY2U7O6RUaK8Ktb1xnp < CQzHwZ8WlsKbY5iYz8CH)
			{
				CQVRHKBzJ271gctTSX.increaseLoadCount(1)
if(CQVRHKBzJ271gctTSX.getRemainLoadNumber() < CQzHwZ8WlsKbY5iYz8CH)
					CQVRHKBzJ271gctTSX.setStartCool()
}
		}
	}
}

function onEnd_appendage_Drawsword(CQSK1cQKOFhOhyWx5)
{
	if(!CQSK1cQKOFhOhyWx5) return
local CQfIiuhQ4MFu96rm98K = CQSK1cQKOFhOhyWx5.getParent()
if(!CQfIiuhQ4MFu96rm98K) 
	{
		CQSK1cQKOFhOhyWx5.setValid(false)
return
}
	local CQuW1HNknvYm4orv = sq_GetCNRDObjectToSQRCharacter(CQfIiuhQ4MFu96rm98K)
local CQMvu4yJCSXldxewQC = CQuW1HNknvYm4orv.sq_GetSkillLoad(17)
if(CQMvu4yJCSXldxewQC)
		CQuW1HNknvYm4orv.sq_RemoveSkillLoad(17)
}

