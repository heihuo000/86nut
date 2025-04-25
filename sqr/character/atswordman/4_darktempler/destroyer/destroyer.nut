
function checkExecutableSkill_Destroyer(CQFOmhGXVlbB8q9R)
{
	if (!CQFOmhGXVlbB8q9R) return false
local CQgt2QyrlaVH3N88Qg = CQFOmhGXVlbB8q9R.sq_IsUseSkill(71)
if (CQgt2QyrlaVH3N88Qg)
	{
		CQFOmhGXVlbB8q9R.sq_IntVectClear()
CQFOmhGXVlbB8q9R.sq_IntVectPush(0)
CQFOmhGXVlbB8q9R.sq_AddSetStatePacket(71, STATE_PRIORITY_IGNORE_FORCE, true)
CQFOmhGXVlbB8q9R.getVar("DestroyerCount").clear_vector()
CQFOmhGXVlbB8q9R.getVar("DestroyerCount").push_vector(0);	
		return true
}
	
	return false
}

function checkCommandEnable_Destroyer(CQoboIxzoKes9e7jWieI)
{
	if (!CQoboIxzoKes9e7jWieI) return false
return true
}

function onSetState_Destroyer(CQ2hRV5Z9k4W4glfo, CQm4DRHswppnNPTlsnB, CQJZRUuQ11Rk5kTh, CQ5PDad4YgA7MSkdMg)
{	
	if(!CQ2hRV5Z9k4W4glfo) return
local CQwyvXCJIizNXQjT4 = CQ2hRV5Z9k4W4glfo.sq_GetVectorData(CQJZRUuQ11Rk5kTh, 0)
CQ2hRV5Z9k4W4glfo.setSkillSubState(CQwyvXCJIizNXQjT4)
CQ2hRV5Z9k4W4glfo.sq_StopMove()
CQ2hRV5Z9k4W4glfo.sq_ZStop()
switch(CQwyvXCJIizNXQjT4)
	{
	case 0:
		CQ2hRV5Z9k4W4glfo.sq_SetCurrentAnimation(481)
sq_GetCurrentAnimation(CQ2hRV5Z9k4W4glfo).setSpeedRate(300.0)
break
case 1:
		CQ2hRV5Z9k4W4glfo.sq_SetCurrentAnimation(482)
break
case 2:
		CQ2hRV5Z9k4W4glfo.sq_SetCurrentAnimation(483)
break
}

}

function getScrollBasisPos_Destroyer(CQZnV9sphNLH1Mjg81L)
{
	if (!CQZnV9sphNLH1Mjg81L) return false
local CQzjWbmjyfmsCrhx = CQZnV9sphNLH1Mjg81L.getSkillSubState()
if (!CQZnV9sphNLH1Mjg81L.isMyControlObject()) return false
local CQOk8oR1XtMtJhgkqM = sq_GetDistancePos(CQZnV9sphNLH1Mjg81L.getXPos(), CQZnV9sphNLH1Mjg81L.getDirection(), 300)
CQZnV9sphNLH1Mjg81L.sq_SetCameraScrollPosition(CQOk8oR1XtMtJhgkqM, CQZnV9sphNLH1Mjg81L.getYPos(), 0)
return true
}

function onTimeEvent_Destroyer(CQ86OKVFmVtnSAgvrn5M, CQWC87rnDx7kKTRzu, CQVDIcTf8rs8DNfnHgW)
{
	if(!CQ86OKVFmVtnSAgvrn5M) return
switch(CQWC87rnDx7kKTRzu)
	{
	case 10:
		if(CQVDIcTf8rs8DNfnHgW>=sq_GetIntData(CQ86OKVFmVtnSAgvrn5M, 71, 1))
		{
			CQ86OKVFmVtnSAgvrn5M.sq_IntVectClear()
CQ86OKVFmVtnSAgvrn5M.sq_IntVectPush(1)
CQ86OKVFmVtnSAgvrn5M.sq_IntVectPush(0)
CQ86OKVFmVtnSAgvrn5M.sq_IntVectPush(0)
CQ86OKVFmVtnSAgvrn5M.sq_AddSetStatePacket(6, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
}
	
}

function onProcCon_Destroyer(CQcolu2BpZjNIefc)
{
	if(!CQcolu2BpZjNIefc) return
local CQAqLHDyNlF1F1dqB = CQcolu2BpZjNIefc.getSkillSubState()
switch(CQAqLHDyNlF1F1dqB)
	{
	case 0:
		local CQdlQ4WceaYLOOxb3nW = 150;	
		local CQy84zz8JKCPpjxe = sq_GetAccel(CQcolu2BpZjNIefc.getZPos(), CQdlQ4WceaYLOOxb3nW, CQcolu2BpZjNIefc.sq_GetStateTimer(), 150, false)
sq_setCurrentAxisPos(CQcolu2BpZjNIefc, 2, CQy84zz8JKCPpjxe)
break
}
}

function onEndCurrentAni_Destroyer(CQNBpWLPRjwuPSzmYg)
{
	if(!CQNBpWLPRjwuPSzmYg) return
local CQbFhDprOp3qEQltUoPf = CQNBpWLPRjwuPSzmYg.getSkillSubState()
switch(CQbFhDprOp3qEQltUoPf)
	{
	case 0:
		CQNBpWLPRjwuPSzmYg.sq_IntVectClear()
CQNBpWLPRjwuPSzmYg.sq_IntVectPush(1)
CQNBpWLPRjwuPSzmYg.sq_AddSetStatePacket(71, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQNBpWLPRjwuPSzmYg.sq_IntVectClear()
CQNBpWLPRjwuPSzmYg.sq_IntVectPush(2)
CQNBpWLPRjwuPSzmYg.sq_AddSetStatePacket(71, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}


function onKeyFrameFlag_Destroyer(CQFpp2b741izyMlww, CQgQhk9ZngfdarTUPiR)
{
	if (!CQFpp2b741izyMlww) return false
switch(CQgQhk9ZngfdarTUPiR)
	{
	case 0:
		local CQozFeZsCuP2u3TW = CQFpp2b741izyMlww.getVar("DestroyerCount").get_vector(0)
if(CQozFeZsCuP2u3TW>=sq_GetIntData(CQFpp2b741izyMlww, 71, 1))
		{
			CQFpp2b741izyMlww.sq_IntVectClear()
CQFpp2b741izyMlww.sq_IntVectPush(1)
CQFpp2b741izyMlww.sq_IntVectPush(0)
CQFpp2b741izyMlww.sq_IntVectPush(0)
CQFpp2b741izyMlww.sq_AddSetStatePacket(6, STATE_PRIORITY_IGNORE_FORCE, true)
}
		CQFpp2b741izyMlww.getVar("DestroyerCount").set_vector(0,CQozFeZsCuP2u3TW+1)
CQFpp2b741izyMlww.sq_StartWrite()
CQFpp2b741izyMlww.sq_WriteDword(71)
CQFpp2b741izyMlww.sq_WriteDword(0)
CQFpp2b741izyMlww.sq_WriteDword(CQFpp2b741izyMlww.sq_GetBonusRateWithPassive(71, -1, 1, getATSwordmanBonus(CQFpp2b741izyMlww,1.0,71)))
CQFpp2b741izyMlww.sq_SendCreatePassiveObjectPacket(24381, 0, 400, -30, -150)
break
case 1:
		local CQozFeZsCuP2u3TW = CQFpp2b741izyMlww.getVar("DestroyerCount").get_vector(0)
if(CQozFeZsCuP2u3TW>=sq_GetIntData(CQFpp2b741izyMlww, 71, 1))
		{
			CQFpp2b741izyMlww.sq_IntVectClear()
CQFpp2b741izyMlww.sq_IntVectPush(1)
CQFpp2b741izyMlww.sq_IntVectPush(0)
CQFpp2b741izyMlww.sq_IntVectPush(0)
CQFpp2b741izyMlww.sq_AddSetStatePacket(6, STATE_PRIORITY_IGNORE_FORCE, true)
}
		CQFpp2b741izyMlww.getVar("DestroyerCount").set_vector(0,CQozFeZsCuP2u3TW+1)
CQFpp2b741izyMlww.sq_StartWrite()
CQFpp2b741izyMlww.sq_WriteDword(71)
CQFpp2b741izyMlww.sq_WriteDword(0)
CQFpp2b741izyMlww.sq_WriteDword(CQFpp2b741izyMlww.sq_GetBonusRateWithPassive(71, -1, 1, getATSwordmanBonus(CQFpp2b741izyMlww,1.0,71)))
CQFpp2b741izyMlww.sq_SendCreatePassiveObjectPacket(24381, 0, 250, -30, -150)
break
case 2:
		local CQozFeZsCuP2u3TW = CQFpp2b741izyMlww.getVar("DestroyerCount").get_vector(0)
if(CQozFeZsCuP2u3TW>=sq_GetIntData(CQFpp2b741izyMlww, 71, 1))
		{
			CQFpp2b741izyMlww.sq_IntVectClear()
CQFpp2b741izyMlww.sq_IntVectPush(1)
CQFpp2b741izyMlww.sq_IntVectPush(0)
CQFpp2b741izyMlww.sq_IntVectPush(0)
CQFpp2b741izyMlww.sq_AddSetStatePacket(6, STATE_PRIORITY_IGNORE_FORCE, true)
}
		CQFpp2b741izyMlww.getVar("DestroyerCount").set_vector(0,CQozFeZsCuP2u3TW+1)
CQFpp2b741izyMlww.sq_StartWrite()
CQFpp2b741izyMlww.sq_WriteDword(71)
CQFpp2b741izyMlww.sq_WriteDword(0)
CQFpp2b741izyMlww.sq_WriteDword(CQFpp2b741izyMlww.sq_GetBonusRateWithPassive(71, -1, 1, getATSwordmanBonus(CQFpp2b741izyMlww,1.0,71)))
CQFpp2b741izyMlww.sq_SendCreatePassiveObjectPacket(24381, 0, 100, -30, -150)
break
case 3:
		local CQozFeZsCuP2u3TW = CQFpp2b741izyMlww.getVar("DestroyerCount").get_vector(0)
if(CQozFeZsCuP2u3TW>=sq_GetIntData(CQFpp2b741izyMlww, 71, 1))
		{
			CQFpp2b741izyMlww.sq_IntVectClear()
CQFpp2b741izyMlww.sq_IntVectPush(1)
CQFpp2b741izyMlww.sq_IntVectPush(0)
CQFpp2b741izyMlww.sq_IntVectPush(0)
CQFpp2b741izyMlww.sq_AddSetStatePacket(6, STATE_PRIORITY_IGNORE_FORCE, true)
}
		CQFpp2b741izyMlww.getVar("DestroyerCount").set_vector(0,CQozFeZsCuP2u3TW+1)
CQFpp2b741izyMlww.sq_StartWrite()
CQFpp2b741izyMlww.sq_WriteDword(71)
CQFpp2b741izyMlww.sq_WriteDword(0)
CQFpp2b741izyMlww.sq_WriteDword(CQFpp2b741izyMlww.sq_GetBonusRateWithPassive(71, -1, 1, getATSwordmanBonus(CQFpp2b741izyMlww,1.0,71)))
CQFpp2b741izyMlww.sq_SendCreatePassiveObjectPacket(24381, 0, 350, 30, -150)
break
case 4:
		local CQozFeZsCuP2u3TW = CQFpp2b741izyMlww.getVar("DestroyerCount").get_vector(0)
if(CQozFeZsCuP2u3TW>=sq_GetIntData(CQFpp2b741izyMlww, 71, 1))
		{
			CQFpp2b741izyMlww.sq_IntVectClear()
CQFpp2b741izyMlww.sq_IntVectPush(1)
CQFpp2b741izyMlww.sq_IntVectPush(0)
CQFpp2b741izyMlww.sq_IntVectPush(0)
CQFpp2b741izyMlww.sq_AddSetStatePacket(6, STATE_PRIORITY_IGNORE_FORCE, true)
}
		CQFpp2b741izyMlww.getVar("DestroyerCount").set_vector(0,CQozFeZsCuP2u3TW+1)
CQFpp2b741izyMlww.sq_StartWrite()
CQFpp2b741izyMlww.sq_WriteDword(71)
CQFpp2b741izyMlww.sq_WriteDword(0)
CQFpp2b741izyMlww.sq_WriteDword(CQFpp2b741izyMlww.sq_GetBonusRateWithPassive(71, -1, 1, getATSwordmanBonus(CQFpp2b741izyMlww,1.0,71)))
CQFpp2b741izyMlww.sq_SendCreatePassiveObjectPacket(24381, 0, 200, 30, -150)
break
case 5:
		local CQozFeZsCuP2u3TW = CQFpp2b741izyMlww.getVar("DestroyerCount").get_vector(0)
if(CQozFeZsCuP2u3TW>=sq_GetIntData(CQFpp2b741izyMlww, 71, 1))
		{
			CQFpp2b741izyMlww.sq_IntVectClear()
CQFpp2b741izyMlww.sq_IntVectPush(1)
CQFpp2b741izyMlww.sq_IntVectPush(0)
CQFpp2b741izyMlww.sq_IntVectPush(0)
CQFpp2b741izyMlww.sq_AddSetStatePacket(6, STATE_PRIORITY_IGNORE_FORCE, true)
}
		CQFpp2b741izyMlww.getVar("DestroyerCount").set_vector(0,CQozFeZsCuP2u3TW+1)
CQFpp2b741izyMlww.sq_StartWrite()
CQFpp2b741izyMlww.sq_WriteDword(71)
CQFpp2b741izyMlww.sq_WriteDword(0)
CQFpp2b741izyMlww.sq_WriteDword(CQFpp2b741izyMlww.sq_GetBonusRateWithPassive(71, -1, 1, getATSwordmanBonus(CQFpp2b741izyMlww,1.0,71)))
CQFpp2b741izyMlww.sq_SendCreatePassiveObjectPacket(24381, 0, 100, 30, -150)
break
}
	return true
}











