function sq_AddFunctionName(CQUabv4fX3cyOINkL)
{
	CQUabv4fX3cyOINkL.sq_AddFunctionName("onStart", "onStart_appendage_Atfrenzy")
	CQUabv4fX3cyOINkL.sq_AddFunctionName("onVaildTimeEnd", "onVaildTimeEnd_appendage_Atfrenzy")
	CQUabv4fX3cyOINkL.sq_AddFunctionName("onEnd", "onEnd_appendage_Atfrenzy")
}


function onStart_appendage_Atfrenzy(CQHeNiGBkjZUphBR86j)
{
	if(!CQHeNiGBkjZUphBR86j) return
if(!CQHeNiGBkjZUphBR86j.getParent())
	{
		CQHeNiGBkjZUphBR86j.setValid(false)
return
}
	local CQjcyJbtDoqQPCB8 = CQHeNiGBkjZUphBR86j.getSource()
local CQEfB6dc8M1xEq8jkZ = sq_GetCNRDObjectToSQRCharacter(CQjcyJbtDoqQPCB8)
local CQ41txX8QbufyN7fxlU6 = sq_GetSkillLevel(CQEfB6dc8M1xEq8jkZ, 150)
local CQQJ9yaPMu93sa7ly = sq_GetLevelData(CQEfB6dc8M1xEq8jkZ,150, 0, CQ41txX8QbufyN7fxlU6)
local CQLsPFUecBIZiR6hE6L = sq_GetLevelData(CQEfB6dc8M1xEq8jkZ,150, 0, CQ41txX8QbufyN7fxlU6)
local CQlrz3flsckArO6c = CQHeNiGBkjZUphBR86j.sq_getChangeStatus("Atfrenzy")
if(!CQlrz3flsckArO6c)
	{
		CQlrz3flsckArO6c = CQHeNiGBkjZUphBR86j.sq_AddChangeStatus("Atfrenzy",CQEfB6dc8M1xEq8jkZ, CQEfB6dc8M1xEq8jkZ, 0, 10, false, CQQJ9yaPMu93sa7ly)
CQlrz3flsckArO6c = CQHeNiGBkjZUphBR86j.sq_AddChangeStatus("Atfrenzy",CQEfB6dc8M1xEq8jkZ, CQEfB6dc8M1xEq8jkZ, 0, 11, false, CQLsPFUecBIZiR6hE6L)
}
	else
	{
		CQlrz3flsckArO6c.clearParameter()
CQlrz3flsckArO6c.addParameter(10, false, CQQJ9yaPMu93sa7ly.tofloat())
CQlrz3flsckArO6c.addParameter(11, false, CQLsPFUecBIZiR6hE6L.tofloat())
}
	CQHeNiGBkjZUphBR86j.sq_AddEffectBack("character/swordman/effect/animation/atfrenzy/loop_loop.ani")
CQHeNiGBkjZUphBR86j.sq_AddEffectFront("character/swordman/effect/animation/atfrenzy/loop_up.ani")
local CQIYZlAZgPGioj5TD5 = sq_GetLevelData(CQEfB6dc8M1xEq8jkZ,150, 2, sq_GetSkillLevel(CQEfB6dc8M1xEq8jkZ, 150))
if(CQIYZlAZgPGioj5TD5 < 1000)
		CQIYZlAZgPGioj5TD5 = 1000000
sq_EffectLayerAppendage(CQEfB6dc8M1xEq8jkZ,sq_RGB(255, 0, 0),75,0,CQIYZlAZgPGioj5TD5,0)
}


function onVaildTimeEnd_appendage_Atfrenzy(CQ7RwreatCbQWV4b2w5Z)
{
	if(!CQ7RwreatCbQWV4b2w5Z) return
local CQc2ZSkTZzVxqQ4x6 = CQ7RwreatCbQWV4b2w5Z.getParent()
if(!CQc2ZSkTZzVxqQ4x6)
	{
		CQ7RwreatCbQWV4b2w5Z.setValid(false)
return
}
	CQ7RwreatCbQWV4b2w5Z.sq_DeleteEffectFront()
CQ7RwreatCbQWV4b2w5Z.sq_DeleteEffectBack()
}

function onEnd_appendage_Atfrenzy(CQAKw114nseftM3m)
{
	if(!CQAKw114nseftM3m) return
local CQdO4jDHA543QI2vjs = CQAKw114nseftM3m.getParent()
if(!CQdO4jDHA543QI2vjs)
	{
		CQAKw114nseftM3m.setValid(false)
return
}

	local CQyPEwWmTTpZbh2ww6Fb = CQAKw114nseftM3m.sq_GetSourceChrTarget()
CQAKw114nseftM3m.sq_DeleteEffectFront()
CQAKw114nseftM3m.sq_DeleteEffectBack()
}
