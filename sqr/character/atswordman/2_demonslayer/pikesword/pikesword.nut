
function checkExecutableSkill_Pikesword(CQ6zinrq5B9PXHmK)
{
	if (!CQ6zinrq5B9PXHmK) return false
local CQe9Rp6hUcIuHWiFMK = CQ6zinrq5B9PXHmK.sq_IsUseSkill(151)
if (CQe9Rp6hUcIuHWiFMK)
	{
		CQ6zinrq5B9PXHmK.sq_IntVectClear()
CQ6zinrq5B9PXHmK.sq_IntVectPush(0)
CQ6zinrq5B9PXHmK.sq_AddSetStatePacket(151, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Pikesword(CQXNSLJHVOkmC4iX4Tmr)
{
	if (!CQXNSLJHVOkmC4iX4Tmr) return false
if(sq_GetSkillLevel(CQXNSLJHVOkmC4iX4Tmr, 163) < 1)
	{
		local CQxGY8iolCGlJuuJ8 = CQXNSLJHVOkmC4iX4Tmr.sq_GetState()
if(CQxGY8iolCGlJuuJ8 == 0 || CQxGY8iolCGlJuuJ8 == 108 || CQxGY8iolCGlJuuJ8 == 14)
			return true
else
			return false
}
	return true
}


function onSetState_Pikesword(CQPEVYYgpzbdS7yBv5Z, CQ9wYi7MdsV1KGyZ, CQtxVJKDw4e3Dct1eL, CQBfr5qv1T4XIKWVuT5z)
{
	if(!CQPEVYYgpzbdS7yBv5Z) return
local CQv17xgdYEpSFyW4H = CQPEVYYgpzbdS7yBv5Z.sq_GetVectorData(CQtxVJKDw4e3Dct1eL, 0)
CQPEVYYgpzbdS7yBv5Z.setSkillSubState(CQv17xgdYEpSFyW4H)
switch(CQv17xgdYEpSFyW4H)
	{
	case 0:
		CQPEVYYgpzbdS7yBv5Z.sq_StopMove()
CQPEVYYgpzbdS7yBv5Z.sq_PlaySound("SW_PIKESWORD")
if(sq_GetSkillLevel(CQPEVYYgpzbdS7yBv5Z, 163) < 1)
		{
			BodyCalldaimus(CQPEVYYgpzbdS7yBv5Z, "pikesword")
CQPEVYYgpzbdS7yBv5Z.sq_SetCurrentAnimation(430)
}
		else
		{
			BodyCalldaimus(CQPEVYYgpzbdS7yBv5Z, "pikesword_start_body")
CQPEVYYgpzbdS7yBv5Z.sq_SetCurrentAnimation(433)
}
		CQPEVYYgpzbdS7yBv5Z.sq_SetCurrentAttackInfo(0)
local CQSJItBVI2RoO5rMZk = CQPEVYYgpzbdS7yBv5Z.sq_GetBonusRateWithPassive(151, -1, 0,getATSwordmanBonus(CQPEVYYgpzbdS7yBv5Z,1.0,151))
CQPEVYYgpzbdS7yBv5Z.sq_SetCurrentAttackBonusRate(CQSJItBVI2RoO5rMZk)
break
case 1:
		if(sq_GetSkillLevel(CQPEVYYgpzbdS7yBv5Z, 163) < 1)
		{
			BodyCalldaimus(CQPEVYYgpzbdS7yBv5Z, "pikesworddrag")
CQPEVYYgpzbdS7yBv5Z.sq_SetCurrentAnimation(431)
}
		else
		{
			BodyCalldaimus(CQPEVYYgpzbdS7yBv5Z, "pikesword_end_body")
CQPEVYYgpzbdS7yBv5Z.sq_SetCurrentAnimation(432)
}
		
		CQPEVYYgpzbdS7yBv5Z.sq_SetCurrentAttackInfo(0)
local CQSJItBVI2RoO5rMZk = CQPEVYYgpzbdS7yBv5Z.sq_GetBonusRateWithPassive(151, -1, 1, getATSwordmanBonus(CQPEVYYgpzbdS7yBv5Z,1.0,151))
CQPEVYYgpzbdS7yBv5Z.sq_SetCurrentAttackBonusRate(CQSJItBVI2RoO5rMZk)
break
}
	CQPEVYYgpzbdS7yBv5Z.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Pikesword(CQurL3QxyozcPze22)
{
	if(!CQurL3QxyozcPze22) return
local CQMYqTh7XMKREHwBTQW = CQurL3QxyozcPze22.getSkillSubState()
switch(CQMYqTh7XMKREHwBTQW)
	{
	case 0:
		CQurL3QxyozcPze22.sq_IntVectClear()
CQurL3QxyozcPze22.sq_IntVectPush(1)
CQurL3QxyozcPze22.sq_AddSetStatePacket(151, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQurL3QxyozcPze22.sq_IntVectClear()
CQurL3QxyozcPze22.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Pikesword(CQhRKrFOmvm4yYQ5, CQp2qStwDyMXa4E1UTMY, CQ3K3MzT8BtSuup8w, CQqLoj4LEc7pe7o4P5q)
{
	if(!CQhRKrFOmvm4yYQ5)	return false
local CQKOgwHENOswUFof = CQhRKrFOmvm4yYQ5.getSkillSubState()
Calldaimus_onAttack(CQhRKrFOmvm4yYQ5,CQp2qStwDyMXa4E1UTMY, CQ3K3MzT8BtSuup8w, CQqLoj4LEc7pe7o4P5q)
switch(CQKOgwHENOswUFof)
	{
	case 0:
		
		break
case 1:
		if(sq_IsHoldable(CQhRKrFOmvm4yYQ5,CQp2qStwDyMXa4E1UTMY) && sq_IsGrabable(CQhRKrFOmvm4yYQ5,CQp2qStwDyMXa4E1UTMY) && !sq_IsFixture(CQp2qStwDyMXa4E1UTMY))
		{
			local CQTtFOukeXjcrxi7KL = "character/atswordman/2_demonslayer/pikesword/ap_pikesword.nut"
local CQsbbBd3JzFgmJihVlEN = CNSquirrelAppendage.sq_AppendAppendage(CQp2qStwDyMXa4E1UTMY, CQhRKrFOmvm4yYQ5, -1, false, CQTtFOukeXjcrxi7KL, true)
if(CQsbbBd3JzFgmJihVlEN)
			{
			
				sq_MoveToAppendageForce(CQp2qStwDyMXa4E1UTMY, CQhRKrFOmvm4yYQ5, CQhRKrFOmvm4yYQ5, 100, 0, CQp2qStwDyMXa4E1UTMY.getZPos(), 550, true, CQsbbBd3JzFgmJihVlEN,true)
local CQ6hNRXGRsY4YvudR = CQsbbBd3JzFgmJihVlEN.getAppendageInfo()
CQ6hNRXGRsY4YvudR.setValidTime(400)
return
}
		}
		break
}

}

function onEnterFrame_Pikesword(CQe5vmaUO4XXq5yTkT7, CQXXBsUg4kwBviyg)
{
	if(!CQe5vmaUO4XXq5yTkT7) return
local CQxAtXfMnE3Gl8txb5 = CQe5vmaUO4XXq5yTkT7.getSkillSubState()
switch(CQxAtXfMnE3Gl8txb5)
	{
	case 3:

		break
case 4:

		break
}
}

function onEndState_Pikesword(CQPu9dCuC2iabHWkqQlD, CQ9UPnevTndWzYWRO)
{
	if(!CQPu9dCuC2iabHWkqQlD) return
local CQtkzpkdooPbjKIzDTA = CQPu9dCuC2iabHWkqQlD.getSkillSubState()
switch(CQtkzpkdooPbjKIzDTA)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onProc_Pikesword(CQB6ZL2A9Mljcysj)
{
	if(!CQB6ZL2A9Mljcysj) return
local CQvCw7DWwvJ6k6sYX5 = CQB6ZL2A9Mljcysj.getSkillSubState()
}

function onKeyFrameFlag_Pikesword(CQDSZYWxMAnBfoaTdwCn, CQRiwilXcBNGTxEbh)
{
	if (!CQDSZYWxMAnBfoaTdwCn) return false
switch(CQRiwilXcBNGTxEbh)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Pikesword(CQim4HKIscWaRJExzQb)
{
	if(!CQim4HKIscWaRJExzQb) return
local CQ1TE5owgO6W7vpm = CQim4HKIscWaRJExzQb.getSkillSubState()
switch(CQ1TE5owgO6W7vpm)
	{
	case 0:

		break
}
}