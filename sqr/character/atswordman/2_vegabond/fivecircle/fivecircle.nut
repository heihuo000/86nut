
function checkExecutableSkill_Fivecircle(CQVOVeQTOi3Td4qBA3)
{
	if (!CQVOVeQTOi3Td4qBA3) return false
local CQYtrAh44Ni85umZGmdm = CQVOVeQTOi3Td4qBA3.sq_IsUseSkill(209)
if (CQYtrAh44Ni85umZGmdm)
	{
		CreateBuffCutin(CQVOVeQTOi3Td4qBA3,"etc/ultimateskillani/atsword_vagabond_buff.ani")
CQVOVeQTOi3Td4qBA3.sq_IntVectClear()
CQVOVeQTOi3Td4qBA3.sq_IntVectPush(0)
CQVOVeQTOi3Td4qBA3.sq_AddSetStatePacket(209, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Fivecircle(CQSn7MMEuYdNflU1L)
{
	if (!CQSn7MMEuYdNflU1L) return false
return true
}


function onSetState_Fivecircle(CQdjIhAmCAPJ6FUV8jo, CQy5lQehTVlI1xn4gEcG, CQNXLIkGFxJt72uMT, CQ7quMVFYocQmam5c)
{
	if(!CQdjIhAmCAPJ6FUV8jo) return
local CQE3ZA5RYurXSegw4cUB = CQdjIhAmCAPJ6FUV8jo.sq_GetVectorData(CQNXLIkGFxJt72uMT, 0)
CQdjIhAmCAPJ6FUV8jo.setSkillSubState(CQE3ZA5RYurXSegw4cUB)
switch(CQE3ZA5RYurXSegw4cUB)
	{
	case 0:
		CQdjIhAmCAPJ6FUV8jo.sq_StopMove()
CQdjIhAmCAPJ6FUV8jo.sq_PlaySound("SW_FIVE_CIRCLE")
CQdjIhAmCAPJ6FUV8jo.sq_SetCurrentAnimation(541)
local CQgUqUcNMlWzKitNEm  = sq_GetCastTime(CQdjIhAmCAPJ6FUV8jo, 209, sq_GetSkillLevel(CQdjIhAmCAPJ6FUV8jo, 209))
local CQok3a6Sca6fBzW6OHMo = sq_GetCurrentAnimation(CQdjIhAmCAPJ6FUV8jo)
local CQ26pXJtK3E2LHr2F = sq_GetDelaySum(CQok3a6Sca6fBzW6OHMo)
local CQmCg9i9gmgLFYr93pq = CQ26pXJtK3E2LHr2F.tofloat() / CQgUqUcNMlWzKitNEm.tofloat()
CQdjIhAmCAPJ6FUV8jo.sq_SetStaticSpeedInfo(4, 4,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, CQmCg9i9gmgLFYr93pq, CQmCg9i9gmgLFYr93pq)
sq_StartDrawCastGauge(CQdjIhAmCAPJ6FUV8jo, CQ26pXJtK3E2LHr2F, true)
break
case 1:
		CQdjIhAmCAPJ6FUV8jo.sq_SetCurrentAnimation(540)
CQdjIhAmCAPJ6FUV8jo.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
case 2:
		local CQJVFbRCtpDAZ3e5 = sq_GetLevelData(CQdjIhAmCAPJ6FUV8jo,209, 0, sq_GetSkillLevel(CQdjIhAmCAPJ6FUV8jo, 209))
local CQkDboVO51ciGywRfm = "character/atswordman/2_vegabond/fivecircle/ap_fivecircle.nut"
local CQaoFKIxUbZqP6w7jJpj = CNSquirrelAppendage.sq_AppendAppendage(CQdjIhAmCAPJ6FUV8jo, CQdjIhAmCAPJ6FUV8jo, -1, false, CQkDboVO51ciGywRfm, false)
CQaoFKIxUbZqP6w7jJpj.sq_SetValidTime(CQJVFbRCtpDAZ3e5)
CQaoFKIxUbZqP6w7jJpj.setEnableIsBuff(true)
CQaoFKIxUbZqP6w7jJpj.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(CQdjIhAmCAPJ6FUV8jo), 209, sq_GetSkillLevel(CQdjIhAmCAPJ6FUV8jo, 209))
CNSquirrelAppendage.sq_Append(CQaoFKIxUbZqP6w7jJpj, CQdjIhAmCAPJ6FUV8jo, CQdjIhAmCAPJ6FUV8jo, true)
CQdjIhAmCAPJ6FUV8jo.sq_SetCurrentAnimation(539)
CQdjIhAmCAPJ6FUV8jo.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
}
	
}

function onEndCurrentAni_Fivecircle(CQZqb7q6SiqxHFQhwjY)
{
	if(!CQZqb7q6SiqxHFQhwjY) return
local CQzzBcgIlN2fAxqd = CQZqb7q6SiqxHFQhwjY.getSkillSubState()
switch(CQzzBcgIlN2fAxqd)
	{
	case 0:
		CQZqb7q6SiqxHFQhwjY.sq_IntVectClear()
CQZqb7q6SiqxHFQhwjY.sq_IntVectPush(1)
CQZqb7q6SiqxHFQhwjY.sq_AddSetStatePacket(209, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		
		break
case 2:
		CQZqb7q6SiqxHFQhwjY.sq_IntVectClear()
CQZqb7q6SiqxHFQhwjY.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onEnterFrame_Fivecircle(CQO9tuBwpYu2aJqTp3, CQ8N9HWk9P9ZStogIqtP)
{
	if(!CQO9tuBwpYu2aJqTp3) return
local CQWGP4lKwVIAs5i9S = CQO9tuBwpYu2aJqTp3.getSkillSubState()
switch(CQWGP4lKwVIAs5i9S)
	{
	case 1:
		if(CQ8N9HWk9P9ZStogIqtP == 3)
		{
			CQO9tuBwpYu2aJqTp3.sq_IntVectClear()
CQO9tuBwpYu2aJqTp3.sq_IntVectPush(2)
CQO9tuBwpYu2aJqTp3.sq_AddSetStatePacket(209, STATE_PRIORITY_IGNORE_FORCE, true)
}
		
		break
}
}

function onEndState_Fivecircle(CQVEzz3EHxTiouik1m1, CQYwOtFUYIHEWluR)
{
	if(!CQVEzz3EHxTiouik1m1) return
local CQSxzDy2I5bepGyz9j = CQVEzz3EHxTiouik1m1.getSkillSubState()
switch(CQSxzDy2I5bepGyz9j)
	{
	case 3:

		break
case 4:

		break
}
	
}


function onProcCon_Fivecircle(CQfdZ2xG3lVYtcyjhp1W)
{
	if(!CQfdZ2xG3lVYtcyjhp1W) return
local CQuMwkZiyaegQKtYQ = CQfdZ2xG3lVYtcyjhp1W.getSkillSubState()
switch(CQuMwkZiyaegQKtYQ)
	{
	case 0:

		break
}
}

function onProc_Fivecircle(CQMH4eERX355yytlWmQ)
{
	if(!CQMH4eERX355yytlWmQ) return
local CQnaEAnNmUpCw6Wn = CQMH4eERX355yytlWmQ.getSkillSubState()
}
function CreateBuffCutin(CQGejNdSDpRDnorcaj,CQhcHhXY81AEexrqXEax)
{
	local CQpfjQa9pbxeUHebM = sq_CreateAnimation("",CQhcHhXY81AEexrqXEax)
local CQ3gGIjANSLYcYae4p8 = sq_CreatePooledObject(CQpfjQa9pbxeUHebM,true)
local CQq3nV1rxNmhm4am = CQGejNdSDpRDnorcaj.getObjectManager()
local CQKLMRSzJYM5YuEvvm = CQGejNdSDpRDnorcaj.getXPos()
local CQTOuUrXRPtCT7pQmHzV = CQq3nV1rxNmhm4am.getFieldYPos(0, 0, 7)
CQ3gGIjANSLYcYae4p8 = sq_SetEnumDrawLayer(CQ3gGIjANSLYcYae4p8, ENUM_DRAWLAYER_BOTTOM)
CQ3gGIjANSLYcYae4p8.setCurrentPos(CQKLMRSzJYM5YuEvvm +480,CQTOuUrXRPtCT7pQmHzV ,0)
sq_AddObject(CQGejNdSDpRDnorcaj,CQ3gGIjANSLYcYae4p8,2,false)
}