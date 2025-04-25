
function checkExecutableSkill_Whipswordbal(CQlwO6ki6hvnv7Kcikh)
{
	if (!CQlwO6ki6hvnv7Kcikh) return false
local CQIxzc1gmoVklpJk = CQlwO6ki6hvnv7Kcikh.sq_IsUseSkill(149)
if (CQIxzc1gmoVklpJk)
	{
		CQlwO6ki6hvnv7Kcikh.sq_IntVectClear()
CQlwO6ki6hvnv7Kcikh.sq_IntVectPush(0)
CQlwO6ki6hvnv7Kcikh.sq_AddSetStatePacket(149, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Whipswordbal(CQ7dZuuMDMe7gdHvP4)
{
	if (!CQ7dZuuMDMe7gdHvP4) return false
if(sq_GetSkillLevel(CQ7dZuuMDMe7gdHvP4, 163) < 1)
	{
		local CQrMzGYSzv4NxsHzMQn7 = CQ7dZuuMDMe7gdHvP4.sq_GetState()
if(CQrMzGYSzv4NxsHzMQn7 == 0 || CQrMzGYSzv4NxsHzMQn7 == 108 || CQrMzGYSzv4NxsHzMQn7 == 14)
			return true
else
			return false
}
	
	return true
}


function onSetState_Whipswordbal(CQCHZ47vEyoHjvGU4, CQcsQlKdMBRsdZFY8TK, CQAr4WoCrcAWkUFQ, CQdYEDvWKOznf8Dnm5)
{
	if(!CQCHZ47vEyoHjvGU4) return
local CQbRj1VxvXKk6ESce = CQCHZ47vEyoHjvGU4.sq_GetVectorData(CQAr4WoCrcAWkUFQ, 0)
CQCHZ47vEyoHjvGU4.setSkillSubState(CQbRj1VxvXKk6ESce)
switch(CQbRj1VxvXKk6ESce)
	{
	case 0:
		CQCHZ47vEyoHjvGU4.sq_StopMove()
CQCHZ47vEyoHjvGU4.sq_PlaySound("SW_WHIPSWORDBAL")
if(sq_GetSkillLevel(CQCHZ47vEyoHjvGU4, 163) > 0)
		{
			BodyCalldaimus(CQCHZ47vEyoHjvGU4, "whipswordbal1")
CQCHZ47vEyoHjvGU4.sq_SetCurrentAnimation(448)
}
		else
		{
			BodyCalldaimus(CQCHZ47vEyoHjvGU4, "whipswordbal1_devil")
CQCHZ47vEyoHjvGU4.sq_SetCurrentAnimation(449)
}
		CQCHZ47vEyoHjvGU4.sq_SetCurrentAttackInfo(86)
local CQF2GkI6OzUlRfSqu4D = CQCHZ47vEyoHjvGU4.sq_GetBonusRateWithPassive(149, -1, 0,getATSwordmanBonus(CQCHZ47vEyoHjvGU4,1.0,149))
CQCHZ47vEyoHjvGU4.sq_SetCurrentAttackBonusRate(CQF2GkI6OzUlRfSqu4D)
break
case 1:
		if(sq_GetSkillLevel(CQCHZ47vEyoHjvGU4, 163) > 0)
		{
			BodyCalldaimus(CQCHZ47vEyoHjvGU4, "whipswordbal2")
CQCHZ47vEyoHjvGU4.sq_SetCurrentAnimation(450)
}
		else
		{
			BodyCalldaimus(CQCHZ47vEyoHjvGU4, "Whipswordbal3")
CQCHZ47vEyoHjvGU4.sq_SetCurrentAnimation(451)
}
		CQCHZ47vEyoHjvGU4.sq_SetCurrentAttackInfo(0)
local CQF2GkI6OzUlRfSqu4D = CQCHZ47vEyoHjvGU4.sq_GetBonusRateWithPassive(149, -1, 0, getATSwordmanBonus(CQCHZ47vEyoHjvGU4,1.0,149))
CQCHZ47vEyoHjvGU4.sq_SetCurrentAttackBonusRate(CQF2GkI6OzUlRfSqu4D)
break
}
	CQCHZ47vEyoHjvGU4.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Whipswordbal(CQoLGPgwu4t12nAeZK)
{
	if(!CQoLGPgwu4t12nAeZK) return
local CQ2OnNBkCk7K8XXmBkBn = CQoLGPgwu4t12nAeZK.getSkillSubState()
switch(CQ2OnNBkCk7K8XXmBkBn)
	{
	case 0:
		CQoLGPgwu4t12nAeZK.sq_IntVectClear()
CQoLGPgwu4t12nAeZK.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQoLGPgwu4t12nAeZK.sq_IntVectClear()
CQoLGPgwu4t12nAeZK.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Whipswordbal(CQmtMhPKTEaP3oZt2, CQJbyqzEF2juB9Zw64U, CQkhdI4k9nFm4aLi, CQa4ACG2wiYzNvKWUK)
{
	if(!CQmtMhPKTEaP3oZt2)	return false
local CQ5ZcfyG1MXdZZKEwTm2 = CQmtMhPKTEaP3oZt2.getSkillSubState()
Calldaimus_onAttack(CQmtMhPKTEaP3oZt2,CQJbyqzEF2juB9Zw64U, CQkhdI4k9nFm4aLi, CQa4ACG2wiYzNvKWUK)
switch(CQ5ZcfyG1MXdZZKEwTm2)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Whipswordbal(CQwPCUxUYvQ1GUJut, CQZuxE5RLy3LXVHsFkZ)
{
	if(!CQwPCUxUYvQ1GUJut) return
local CQlUXZENgViPHEHo = CQwPCUxUYvQ1GUJut.getSkillSubState()
switch(CQZuxE5RLy3LXVHsFkZ)
	{
	case 4:
		local CQIke9nutcduAdGPC = sq_GetIntData(CQwPCUxUYvQ1GUJut,149, 0)
local CQ766vdY5OOqJsFa1q5 = sq_GetIntData(CQwPCUxUYvQ1GUJut,149, 1)
local CQrCsoC9UXlzSbFi = 0
if(sq_GetSkillLevel(CQwPCUxUYvQ1GUJut, 163) > 0)
			CQrCsoC9UXlzSbFi = 1
for (local CQCSkJsASlJdsXDOxk = 0; CQCSkJsASlJdsXDOxk < CQIke9nutcduAdGPC ; CQCSkJsASlJdsXDOxk++)
		{
			CQwPCUxUYvQ1GUJut.sq_StartWrite()
CQwPCUxUYvQ1GUJut.sq_WriteDword(149)
CQwPCUxUYvQ1GUJut.sq_WriteDword(CQrCsoC9UXlzSbFi)
CQwPCUxUYvQ1GUJut.sq_WriteDword(CQwPCUxUYvQ1GUJut.sq_GetBonusRateWithPassive(149, -1, 0, getATSwordmanBonus(CQwPCUxUYvQ1GUJut,1.0,149)))
CQwPCUxUYvQ1GUJut.sq_SendCreatePassiveObjectPacket(24383, 0, 180 + CQ766vdY5OOqJsFa1q5*CQCSkJsASlJdsXDOxk, 0, 0)
}
		break
}
}

function onEndState_Whipswordbal(CQciJ6mWlsngDmVEbaTg, CQAmmc1zp4B4I9VSq)
{
	if(!CQciJ6mWlsngDmVEbaTg) return
local CQdTJySXdkWXoaCIIQP = CQciJ6mWlsngDmVEbaTg.getSkillSubState()
switch(CQdTJySXdkWXoaCIIQP)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onProc_Whipswordbal(CQblUGrIep6DORCGDK)
{
	if(!CQblUGrIep6DORCGDK) return
local CQF814TQJ2EpELXAJTRL = CQblUGrIep6DORCGDK.getSkillSubState()
}

function onKeyFrameFlag_Whipswordbal(CQgBil25vngwynZKX, CQoFRWDKIiScwCZFdkp)
{
	if (!CQgBil25vngwynZKX) return false
switch(CQoFRWDKIiScwCZFdkp)
	{
	case 1:
		
		break
}
	return true
}


function onProcCon_Whipswordbal(CQ2pDDvq3McgupLX)
{
	if(!CQ2pDDvq3McgupLX) return
local CQmwY18jyvZ4edKJl4 = CQ2pDDvq3McgupLX.getSkillSubState()
switch(CQmwY18jyvZ4edKJl4)
	{
	case 0:

		break
}
}