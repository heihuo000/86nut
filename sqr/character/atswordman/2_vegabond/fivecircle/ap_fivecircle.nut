function sq_AddFunctionName(CQFaabR1YYAVwWnAxp8c)
{
	CQFaabR1YYAVwWnAxp8c.sq_AddFunctionName("onStart", "onStart_appendage_Fivecircle")
	CQFaabR1YYAVwWnAxp8c.sq_AddFunctionName("onVaildTimeEnd", "onVaildTimeEnd_appendage_Fivecircle")
	CQFaabR1YYAVwWnAxp8c.sq_AddFunctionName("onEnd", "onEnd_appendage_Fivecircle")
}

function onStart_appendage_Fivecircle(CQgekpSoLAzFn4nsb)
{
	if(!CQgekpSoLAzFn4nsb)
	{
		return
}

	if(!CQgekpSoLAzFn4nsb.getParent())
	{
		CQgekpSoLAzFn4nsb.setValid(false)
return
}
	local CQocJKrbhVKEeSbFqmu = CQgekpSoLAzFn4nsb.getParent()
local CQocJKrbhVKEeSbFqmu = sq_GetCNRDObjectToSQRCharacter(CQocJKrbhVKEeSbFqmu)
local CQm1JY2D6IMtcGvaSj = sq_GetSkillLevel(CQocJKrbhVKEeSbFqmu, 209)
local CQJJUuFtm6tnkcYDJEu9 = CQocJKrbhVKEeSbFqmu.sq_GetLevelData(209, 2, CQm1JY2D6IMtcGvaSj)*5/2
local CQks1HtcDl7TY3rOX = CQocJKrbhVKEeSbFqmu.sq_GetLevelData(209, 4, CQm1JY2D6IMtcGvaSj)*5/10
local CQaIi48Vzas8TyrHNq3 = CQgekpSoLAzFn4nsb.sq_getChangeStatus("Fivecircle")
if(!CQaIi48Vzas8TyrHNq3)
	{
		CQaIi48Vzas8TyrHNq3 = CQgekpSoLAzFn4nsb.sq_AddChangeStatus("Fivecircle",CQocJKrbhVKEeSbFqmu, CQocJKrbhVKEeSbFqmu, 0, 10, false, CQJJUuFtm6tnkcYDJEu9)
CQaIi48Vzas8TyrHNq3 = CQgekpSoLAzFn4nsb.sq_AddChangeStatus("Fivecircle",CQocJKrbhVKEeSbFqmu, CQocJKrbhVKEeSbFqmu, 0, 11, false, CQJJUuFtm6tnkcYDJEu9)
CQaIi48Vzas8TyrHNq3 = CQgekpSoLAzFn4nsb.sq_AddChangeStatus("Fivecircle",CQocJKrbhVKEeSbFqmu, CQocJKrbhVKEeSbFqmu, 0, 50, false, CQks1HtcDl7TY3rOX)
}
	if(CQaIi48Vzas8TyrHNq3)
	{
		CQaIi48Vzas8TyrHNq3.clearParameter()
CQaIi48Vzas8TyrHNq3.addParameter(10, false, CQJJUuFtm6tnkcYDJEu9.tofloat())
CQaIi48Vzas8TyrHNq3.addParameter(11, false, CQJJUuFtm6tnkcYDJEu9.tofloat())
CQaIi48Vzas8TyrHNq3.addParameter(50, false, CQks1HtcDl7TY3rOX.tofloat())
}
	CQgekpSoLAzFn4nsb.sq_AddEffectFront("character/swordman/effect/animation/atfivecircle/buffeffect/buff_back_1.ani")
CQgekpSoLAzFn4nsb.sq_AddEffectBack("character/swordman/effect/animation/atfivecircle/buffeffect/buff_front_1.ani")
}

function onVaildTimeEnd_appendage_Fivecircle(CQZWRzLOp3jNg5eS)
{
	if(!CQZWRzLOp3jNg5eS) return
local CQzvDtpeNkFJzDwKlkep = CQZWRzLOp3jNg5eS.getParent()
if(!CQzvDtpeNkFJzDwKlkep)
	{
		CQZWRzLOp3jNg5eS.setValid(false)
return
}
	CQZWRzLOp3jNg5eS.sq_DeleteEffectFront()
CQZWRzLOp3jNg5eS.sq_DeleteEffectBack()
}

function onEnd_appendage_Fivecircle(CQOgYDb7epYIhzwFY)
{
	if(!CQOgYDb7epYIhzwFY) return
local CQ83S29LJ1Ct9HQXmjB = CQOgYDb7epYIhzwFY.getParent()
if(!CQ83S29LJ1Ct9HQXmjB)
	{
		CQOgYDb7epYIhzwFY.setValid(false)
return
}

	local CQWLYTZwvbwnjWqJ = CQOgYDb7epYIhzwFY.sq_GetSourceChrTarget()
CQOgYDb7epYIhzwFY.sq_DeleteEffectFront()
CQOgYDb7epYIhzwFY.sq_DeleteEffectBack()
}