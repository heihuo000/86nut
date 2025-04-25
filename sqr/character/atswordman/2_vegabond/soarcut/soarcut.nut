
function checkExecutableSkill_Soarcut(CQF5xsFFuGdsh9DE82U)
{
	if (!CQF5xsFFuGdsh9DE82U) return false
local CQgCOXvnCROt9JSS = CQF5xsFFuGdsh9DE82U.sq_IsUseSkill(213)
if (CQgCOXvnCROt9JSS)
	{
		CQF5xsFFuGdsh9DE82U.sq_IntVectClear()
CQF5xsFFuGdsh9DE82U.sq_IntVectPush(0)
CQF5xsFFuGdsh9DE82U.sq_AddSetStatePacket(213, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Soarcut(CQoVzd8fqyln4vSIm1)
{
	if (!CQoVzd8fqyln4vSIm1) return false
return true
}


function onSetState_Soarcut(CQ2DZbLBFVJkdZAGrUov, CQmowppyxdn75iPAu, CQJq5LbYaWBNM8PKEh5, CQklE7981XW1XEOF)
{
	if(!CQ2DZbLBFVJkdZAGrUov) return
local CQa8jYOPWl6K1YIZB2 = CQ2DZbLBFVJkdZAGrUov.sq_GetVectorData(CQJq5LbYaWBNM8PKEh5, 0)
CQ2DZbLBFVJkdZAGrUov.setSkillSubState(CQa8jYOPWl6K1YIZB2)
local CQ5BEiQrLeEPCLIH2Ukf = sq_GetIntData(CQ2DZbLBFVJkdZAGrUov,213, 5)
switch(CQa8jYOPWl6K1YIZB2)
	{
	case 0:
		CQ2DZbLBFVJkdZAGrUov.sq_StopMove()
CQ2DZbLBFVJkdZAGrUov.getVar("Soarcut").clear_obj_vector()
CQ2DZbLBFVJkdZAGrUov.sq_SetCurrentAnimation(552)
CQ2DZbLBFVJkdZAGrUov.sq_SetCurrentAttackInfo(156)
local CQwFjHjlhLguJbsV7 = CQ2DZbLBFVJkdZAGrUov.sq_GetBonusRateWithPassive(213, -1, 0,getATSwordmanBonus(CQ2DZbLBFVJkdZAGrUov,1.0,213))
CQ2DZbLBFVJkdZAGrUov.sq_SetCurrentAttackBonusRate(CQwFjHjlhLguJbsV7)
	CQ2DZbLBFVJkdZAGrUov.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 1:
		CQ2DZbLBFVJkdZAGrUov.sq_ZStop()
CQ2DZbLBFVJkdZAGrUov.sq_SetCurrentAnimation(551)
CQ2DZbLBFVJkdZAGrUov.sq_SetCurrentAttackInfo(154)
local CQwFjHjlhLguJbsV7 = CQ2DZbLBFVJkdZAGrUov.sq_GetBonusRateWithPassive(213, -1, 1, getATSwordmanBonus(CQ2DZbLBFVJkdZAGrUov,1.0,213))
CQ2DZbLBFVJkdZAGrUov.sq_SetCurrentAttackBonusRate(CQwFjHjlhLguJbsV7)
break
case 2:
		CQ2DZbLBFVJkdZAGrUov.sq_SetCurrentAnimation(544)
CQ2DZbLBFVJkdZAGrUov.sq_SetCurrentAttackInfo(154)
local CQwFjHjlhLguJbsV7 = CQ2DZbLBFVJkdZAGrUov.sq_GetBonusRateWithPassive(213, -1, 2, getATSwordmanBonus(CQ2DZbLBFVJkdZAGrUov,1.0,213))
CQ2DZbLBFVJkdZAGrUov.sq_SetCurrentAttackBonusRate(CQwFjHjlhLguJbsV7)
local CQWzMteqUJZdD9HCw2fa = sq_GetDelaySum(sq_GetCurrentAnimation(CQ2DZbLBFVJkdZAGrUov))
CQ2DZbLBFVJkdZAGrUov.setTimeEvent(1,CQWzMteqUJZdD9HCw2fa/(CQ5BEiQrLeEPCLIH2Ukf/2),CQ5BEiQrLeEPCLIH2Ukf/2,true)
break
case 3:
		CQ2DZbLBFVJkdZAGrUov.sq_SetCurrentAnimation(546)
CQ2DZbLBFVJkdZAGrUov.sq_SetCurrentAttackInfo(155)
local CQwFjHjlhLguJbsV7 = CQ2DZbLBFVJkdZAGrUov.sq_GetBonusRateWithPassive(213, -1, 2, getATSwordmanBonus(CQ2DZbLBFVJkdZAGrUov,1.0,213))
CQ2DZbLBFVJkdZAGrUov.sq_SetCurrentAttackBonusRate(CQwFjHjlhLguJbsV7)
local CQYNf2HJli1LFvGNo1p = 120/(CQ5BEiQrLeEPCLIH2Ukf/2)
CQ2DZbLBFVJkdZAGrUov.setTimeEvent(0,CQYNf2HJli1LFvGNo1p,CQ5BEiQrLeEPCLIH2Ukf/2,true)
CQ2DZbLBFVJkdZAGrUov.setTimeEvent(2,123,1,false)
break
case 4:
		CQ2DZbLBFVJkdZAGrUov.sq_SetCurrentAnimation(549)
CQ2DZbLBFVJkdZAGrUov.sq_SetCurrentAttackInfo(155)
local CQwFjHjlhLguJbsV7 = CQ2DZbLBFVJkdZAGrUov.sq_GetBonusRateWithPassive(213, -1, 3, getATSwordmanBonus(CQ2DZbLBFVJkdZAGrUov,1.0,213))
CQ2DZbLBFVJkdZAGrUov.sq_SetCurrentAttackBonusRate(CQwFjHjlhLguJbsV7)
	CQ2DZbLBFVJkdZAGrUov.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
}
}

function onEndCurrentAni_Soarcut(CQfadrchdR9uGUF2VG)
{
	if(!CQfadrchdR9uGUF2VG) return
local CQyeAA61eyIqP7DB1hG = CQfadrchdR9uGUF2VG.getSkillSubState()
switch(CQyeAA61eyIqP7DB1hG)
	{
	case 0:
		if(CQfadrchdR9uGUF2VG.getVar("Soarcut").get_obj_vector_size() < 1)
		{
			CQfadrchdR9uGUF2VG.sq_IntVectClear()
CQfadrchdR9uGUF2VG.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
}
		else
		{
			CQfadrchdR9uGUF2VG.sq_IntVectClear()
CQfadrchdR9uGUF2VG.sq_IntVectPush(1)
CQfadrchdR9uGUF2VG.sq_AddSetStatePacket(213, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
case 1:
		CQfadrchdR9uGUF2VG.sq_IntVectClear()
CQfadrchdR9uGUF2VG.sq_IntVectPush(2)
CQfadrchdR9uGUF2VG.sq_AddSetStatePacket(213, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQfadrchdR9uGUF2VG.sq_IntVectClear()
CQfadrchdR9uGUF2VG.sq_IntVectPush(3)
CQfadrchdR9uGUF2VG.sq_AddSetStatePacket(213, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQfadrchdR9uGUF2VG.sq_IntVectClear()
CQfadrchdR9uGUF2VG.sq_IntVectPush(4)
CQfadrchdR9uGUF2VG.sq_AddSetStatePacket(213, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 4:
		CQfadrchdR9uGUF2VG.sq_IntVectClear()
CQfadrchdR9uGUF2VG.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Soarcut(CQNccMJo2VkzEpS5, CQbYCjmbvdGdAdS1x2, CQFReQRfOWb2aKA8bU1J, CQg26OVDjXVLubP4Q)
{
	if(!CQNccMJo2VkzEpS5 || CQg26OVDjXVLubP4Q)	return false
local CQoKsVItyleXeXPfWhQ = CQNccMJo2VkzEpS5.getSkillSubState()
switch(CQoKsVItyleXeXPfWhQ)
	{
	case 0:
		if(sq_IsHoldable(CQNccMJo2VkzEpS5,CQbYCjmbvdGdAdS1x2) && sq_IsGrabable(CQNccMJo2VkzEpS5,CQbYCjmbvdGdAdS1x2) && !sq_IsFixture(CQbYCjmbvdGdAdS1x2))
		{
			local CQ2ITRqc6e4DioO7 = CQNccMJo2VkzEpS5.getVar("Soarcut").get_obj_vector_size()
if(CQ2ITRqc6e4DioO7 > 0)
				break
CQNccMJo2VkzEpS5.getVar("Soarcut").push_obj_vector(CQbYCjmbvdGdAdS1x2)
local CQmWsmgVmLppr9L3Jg = "character/atswordman/2_vegabond/soarcut/ap_soarcut.nut"
local CQJvkaDODkRwmaL9XoEQ = CNSquirrelAppendage.sq_AppendAppendage(CQbYCjmbvdGdAdS1x2, CQNccMJo2VkzEpS5, -1, false, CQmWsmgVmLppr9L3Jg, true)
if(CQJvkaDODkRwmaL9XoEQ)
			{
				sq_HoldAndDelayDie(CQbYCjmbvdGdAdS1x2, CQNccMJo2VkzEpS5, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL, CQJvkaDODkRwmaL9XoEQ)
sq_MoveToAppendageForce(CQbYCjmbvdGdAdS1x2, CQNccMJo2VkzEpS5, CQNccMJo2VkzEpS5, 100, 0, 200, 160, true, CQJvkaDODkRwmaL9XoEQ,true)
CQJvkaDODkRwmaL9XoEQ.getAppendageInfo().setValidTime(1000)
}
		}
		break
case 2:
		if(sq_IsHoldable(CQNccMJo2VkzEpS5,CQbYCjmbvdGdAdS1x2) && sq_IsGrabable(CQNccMJo2VkzEpS5,CQbYCjmbvdGdAdS1x2) && !sq_IsFixture(CQbYCjmbvdGdAdS1x2))
		{
			local CQ2ITRqc6e4DioO7 = CQNccMJo2VkzEpS5.getVar("Soarcut").get_obj_vector_size()
if(CQ2ITRqc6e4DioO7 > 0)
				break
CQNccMJo2VkzEpS5.getVar("Soarcut").push_obj_vector(CQbYCjmbvdGdAdS1x2)
local CQmWsmgVmLppr9L3Jg = "character/atswordman/2_vegabond/soarcut/ap_soarcut.nut"
local CQJvkaDODkRwmaL9XoEQ = CNSquirrelAppendage.sq_AppendAppendage(CQbYCjmbvdGdAdS1x2, CQNccMJo2VkzEpS5, -1, false, CQmWsmgVmLppr9L3Jg, true)
if(CQJvkaDODkRwmaL9XoEQ)
			{
				sq_HoldAndDelayDie(CQbYCjmbvdGdAdS1x2, CQNccMJo2VkzEpS5, true, false, true, 0, 0, ENUM_DIRECTION_NEUTRAL, CQJvkaDODkRwmaL9XoEQ)
sq_MoveToAppendageForce(CQbYCjmbvdGdAdS1x2, CQNccMJo2VkzEpS5, CQNccMJo2VkzEpS5, 100, 0, 200, 160, true, CQJvkaDODkRwmaL9XoEQ,true)
CQJvkaDODkRwmaL9XoEQ.getAppendageInfo().setValidTime(1000)
}
		}
		break
}

}

function onTimeEvent_Soarcut(CQwOopGarimXw7Hjvh, CQOyRKyTKNMDnpGfm, CQ8nD794gRtpxdGls22)
{
	if (!CQwOopGarimXw7Hjvh) return false
local CQWjRYZEPy7wUsFh = "character/atswordman/2_vegabond/soarcut/ap_soarcut.nut"
switch(CQOyRKyTKNMDnpGfm)
	{
	case 1:
		CQwOopGarimXw7Hjvh.resetHitObjectList()
local CQV5DuEm5VsYcbFcHH = CQwOopGarimXw7Hjvh.getVar("Soarcut").get_obj_vector(0)
if(CQV5DuEm5VsYcbFcHH)
		{
			local CQYXYHnhu9jgkZDTZh3S = CNSquirrelAppendage.sq_AppendAppendage(CQV5DuEm5VsYcbFcHH, CQwOopGarimXw7Hjvh, -1, false, CQWjRYZEPy7wUsFh, true)
if(CQYXYHnhu9jgkZDTZh3S)
			{
				sq_HoldAndDelayDie(CQV5DuEm5VsYcbFcHH, CQwOopGarimXw7Hjvh, true, false, true, 0, 0, sq_GetOppositeDirection(CQwOopGarimXw7Hjvh.getDirection()), CQYXYHnhu9jgkZDTZh3S)
sq_MoveToAppendageForce(CQV5DuEm5VsYcbFcHH, CQwOopGarimXw7Hjvh, CQwOopGarimXw7Hjvh, 100, 0, 0, 10, true, CQYXYHnhu9jgkZDTZh3S,true)
CQYXYHnhu9jgkZDTZh3S.getAppendageInfo().setValidTime(500)
}
		}
		break
case 0:
		CQwOopGarimXw7Hjvh.resetHitObjectList()
local CQV5DuEm5VsYcbFcHH = CQwOopGarimXw7Hjvh.getVar("Soarcut").get_obj_vector(0)
if(CQV5DuEm5VsYcbFcHH)
		{
			local CQYXYHnhu9jgkZDTZh3S = CNSquirrelAppendage.sq_AppendAppendage(CQV5DuEm5VsYcbFcHH, CQwOopGarimXw7Hjvh, -1, false, CQWjRYZEPy7wUsFh, true)
if(CQYXYHnhu9jgkZDTZh3S)
			{
				sq_HoldAndDelayDie(CQV5DuEm5VsYcbFcHH, CQwOopGarimXw7Hjvh, true, true, true, 250, 100, sq_GetOppositeDirection(CQwOopGarimXw7Hjvh.getDirection()), CQYXYHnhu9jgkZDTZh3S)
sq_MoveToAppendageForce(CQV5DuEm5VsYcbFcHH, CQwOopGarimXw7Hjvh, CQwOopGarimXw7Hjvh, 100, 0, 0, 10, true, CQYXYHnhu9jgkZDTZh3S,true)
if(CQ8nD794gRtpxdGls22 = sq_GetIntData(CQwOopGarimXw7Hjvh,213, 5)/2 - 1)
					CQYXYHnhu9jgkZDTZh3S.getAppendageInfo().setValidTime(30)
else
					CQYXYHnhu9jgkZDTZh3S.getAppendageInfo().setValidTime(50)
}
		}
		break
case 2:
		CQwOopGarimXw7Hjvh.sq_IntVectClear()
CQwOopGarimXw7Hjvh.sq_IntVectPush(4)
CQwOopGarimXw7Hjvh.sq_AddSetStatePacket(213, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onEnterFrame_Soarcut(CQui8twbFlCDRECm, CQMmOFjN9wwG7fXvc1)
{
	if(!CQui8twbFlCDRECm) return
local CQnTl21SwL3sgLXziUsy = CQui8twbFlCDRECm.getSkillSubState()
switch(CQnTl21SwL3sgLXziUsy)
	{
	case 3:
		
		break
case 4:
		
		break
}
}

function onEndState_Soarcut(CQG7ITSt1kiW8nZUa, CQhVlerdYpdb3CLYPh9)
{
	if(!CQG7ITSt1kiW8nZUa) return
if(CQhVlerdYpdb3CLYPh9 != 213)
	{
		local CQpDLATCLHPk9pLQ = CQG7ITSt1kiW8nZUa.getVar("Soarcut").get_obj_vector_size()
if(CQpDLATCLHPk9pLQ < 1)
			return
local CQ3oQMJOhhl749Kb32 = CQG7ITSt1kiW8nZUa.getVar("Soarcut").get_obj_vector(0)
if(CQ3oQMJOhhl749Kb32)
		{
			local CQqQ3hixyiJBNaJe7Uxf = "character/atswordman/2_vegabond/soarcut/ap_soarcut.nut"
if(CNSquirrelAppendage.sq_IsAppendAppendage(CQ3oQMJOhhl749Kb32, CQqQ3hixyiJBNaJe7Uxf))
				CNSquirrelAppendage.sq_RemoveAppendage(CQ3oQMJOhhl749Kb32, CQqQ3hixyiJBNaJe7Uxf)
			}
	}
}

function onProc_Soarcut(CQKzpQY65NnH5vJmf)
{
	if(!CQKzpQY65NnH5vJmf) return
local CQT9hO7LURNsMZHtknD = CQKzpQY65NnH5vJmf.getSkillSubState()
switch(CQT9hO7LURNsMZHtknD)
	{
	case 1:
		local CQsNGVKwSyWWXUGw = CQKzpQY65NnH5vJmf.sq_GetStateTimer()
local CQ6GhRoklV6n1VGiyg = sq_GetAccel(CQKzpQY65NnH5vJmf.getZPos(), 200, CQsNGVKwSyWWXUGw, 200, false)
sq_setCurrentAxisPos(CQKzpQY65NnH5vJmf, 2, CQ6GhRoklV6n1VGiyg)
break
case 3:
		local CQsNGVKwSyWWXUGw = CQKzpQY65NnH5vJmf.sq_GetStateTimer()
local CQ6GhRoklV6n1VGiyg = sq_GetAccel(CQKzpQY65NnH5vJmf.getZPos(), 0, CQsNGVKwSyWWXUGw, 100, false)
sq_setCurrentAxisPos(CQKzpQY65NnH5vJmf, 2, CQ6GhRoklV6n1VGiyg)
break
}
}

function onProcCon_Soarcut(CQ9xNXOmeXDNDsBu)
{
	if(!CQ9xNXOmeXDNDsBu) return
}

function onKeyFrameFlag_Soarcut(CQkKsvuU4gTIleGaJ9CF, CQGqMVOF5fpxoci5yOD)
{
	if (!CQkKsvuU4gTIleGaJ9CF) return false
switch(CQGqMVOF5fpxoci5yOD)
	{
	case 0:

		break
}
	return true
}
