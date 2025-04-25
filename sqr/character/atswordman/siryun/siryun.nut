
function checkExecutableSkill_Siryun(CQkj8wP6iOyaGSUjDNdX)
{
	if (!CQkj8wP6iOyaGSUjDNdX) return false
local CQa5WPes7X9rPTUf2 = CQkj8wP6iOyaGSUjDNdX.sq_IsUseSkill(88)
if (CQa5WPes7X9rPTUf2)
	{
		CheckUseAddloadDrawsword(CQkj8wP6iOyaGSUjDNdX,143,{[0] = true,[108] = true,[14] = true},0)
CQkj8wP6iOyaGSUjDNdX.sq_IntVectClear()
CQkj8wP6iOyaGSUjDNdX.sq_IntVectPush(0)
CQkj8wP6iOyaGSUjDNdX.sq_AddSetStatePacket(88, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Siryun(CQ5X8BkQqlIvHFnl6Do)
{
	if (!CQ5X8BkQqlIvHFnl6Do) return false
if(CQ5X8BkQqlIvHFnl6Do.getZPos() > 10)
		return false
return CheckForceDrawsword(CQ5X8BkQqlIvHFnl6Do,143,{[0] = true,[108] = true,[14] = true})
}


function onSetState_Siryun(CQwAOg1kFskUAenh, CQZuzmSJx4GTa2bcjS, CQzmLsrpakv8StvTwfGr, CQOTQC6URpVMskvbt)
{
	if(!CQwAOg1kFskUAenh) return
local CQV74dJ2W2eJiDYxoNT = CQwAOg1kFskUAenh.sq_GetVectorData(CQzmLsrpakv8StvTwfGr, 0)
CQwAOg1kFskUAenh.setSkillSubState(CQV74dJ2W2eJiDYxoNT)
switch(CQV74dJ2W2eJiDYxoNT)
	{
	case 0:
		CQwAOg1kFskUAenh.sq_StopMove()
BodyMagicSword(CQwAOg1kFskUAenh, "Siryun")
if(MagicSword_IsAppebd(CQwAOg1kFskUAenh))
			CQwAOg1kFskUAenh.sq_SetCurrentAnimation(222)
else
		{
			if(sq_GetSkillLevel(CQwAOg1kFskUAenh, 148) > 0)
			{
				BodyCalldaimus(CQwAOg1kFskUAenh, "Siryun")
CQwAOg1kFskUAenh.sq_SetCurrentAnimation(396)
}
			else
				CQwAOg1kFskUAenh.sq_SetCurrentAnimation(11)
}
			
		break
}
	//CQwAOg1kFskUAenh.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Siryun(CQYVEniFLn4IIzcmsv)
{
	if(!CQYVEniFLn4IIzcmsv) return
local CQSD4EYunioyo1cvVDPg = CQYVEniFLn4IIzcmsv.getSkillSubState()
switch(CQSD4EYunioyo1cvVDPg)
	{
	case 0:
		CQYVEniFLn4IIzcmsv.sq_IntVectClear()
CQYVEniFLn4IIzcmsv.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onEnterFrame_Siryun(CQfopL7RAMRUtrxz1, CQuqh8LB6vATE3wU5uR)
{
	if(!CQfopL7RAMRUtrxz1) return
switch(CQuqh8LB6vATE3wU5uR)
	{
	case 1:
		CQfopL7RAMRUtrxz1.sq_StartWrite()
CQfopL7RAMRUtrxz1.sq_WriteDword(88)
CQfopL7RAMRUtrxz1.sq_WriteDword(0)
CQfopL7RAMRUtrxz1.sq_WriteDword(CQfopL7RAMRUtrxz1.sq_GetBonusRateWithPassive(88, -1, 0, getATSwordmanBonus(CQfopL7RAMRUtrxz1,1.0,87)))
CQfopL7RAMRUtrxz1.sq_WriteDword(sq_GetLevelData(CQfopL7RAMRUtrxz1,88, 2, sq_GetSkillLevel(CQfopL7RAMRUtrxz1, 88)))
CQfopL7RAMRUtrxz1.sq_SendCreatePassiveObjectPacket(24383, 0, 120, 0, 50)
break
case 4:
		CQfopL7RAMRUtrxz1.sq_StartWrite()
CQfopL7RAMRUtrxz1.sq_WriteDword(88)
CQfopL7RAMRUtrxz1.sq_WriteDword(0)
CQfopL7RAMRUtrxz1.sq_WriteDword(CQfopL7RAMRUtrxz1.sq_GetBonusRateWithPassive(88, -1, 0, getATSwordmanBonus(CQfopL7RAMRUtrxz1,1.0,87)))
CQfopL7RAMRUtrxz1.sq_WriteDword(sq_GetLevelData(CQfopL7RAMRUtrxz1,88, 2, sq_GetSkillLevel(CQfopL7RAMRUtrxz1, 88)))
CQfopL7RAMRUtrxz1.sq_SendCreatePassiveObjectPacket(24383, 0, 120, 0, 50)
break
}
}

function onProc_Siryun(CQMlGYqAoAz8yywY)
{
	if(!CQMlGYqAoAz8yywY) return
local CQn8nigYVVKMwTQqbb = CQMlGYqAoAz8yywY.getSkillSubState()
}
function onAttack_Siryun(CQGBMJB8QcmJuFqbqBvG, CQhFy5OXGOMIexqeW, CQppdxQrd6tyU2mmiSH, CQ3Qyyhlsl7UctUt)
{
	if(!CQGBMJB8QcmJuFqbqBvG) return false
local CQqwdFNZ2saTm4UwXy = CQGBMJB8QcmJuFqbqBvG.getSkillSubState()
MagicswordupOccur(CQGBMJB8QcmJuFqbqBvG, CQhFy5OXGOMIexqeW, CQppdxQrd6tyU2mmiSH, CQ3Qyyhlsl7UctUt)
}