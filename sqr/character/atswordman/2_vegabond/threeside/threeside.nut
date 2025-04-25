
function checkExecutableSkill_Threeside(CQpOktazMyVuid2A4)
{
	if (!CQpOktazMyVuid2A4) return false
local CQ3tEDUXcVemrs1KzUf = CQpOktazMyVuid2A4.sq_IsUseSkill(204)
if (CQ3tEDUXcVemrs1KzUf)
	{
		CQpOktazMyVuid2A4.sq_IntVectClear()
CQpOktazMyVuid2A4.sq_IntVectPush(0)
CQpOktazMyVuid2A4.sq_AddSetStatePacket(204, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Threeside(CQqbj2fIKx5zogMF)
{
	if (!CQqbj2fIKx5zogMF) return false
return true
}


function onSetState_Threeside(CQKhHTCQgrpdWXMPqh, CQT4Ues5tXR1qmNJrpRq, CQsZMAmK5lALvBBDS, CQ6PuM2pnaxPQEBZHoE)
{
	if(!CQKhHTCQgrpdWXMPqh) return
local CQxyfhDjAKLSbfVHZ1 = CQKhHTCQgrpdWXMPqh.sq_GetVectorData(CQsZMAmK5lALvBBDS, 0)
CQKhHTCQgrpdWXMPqh.setSkillSubState(CQxyfhDjAKLSbfVHZ1)
switch(CQxyfhDjAKLSbfVHZ1)
	{
	case 0:
		CQKhHTCQgrpdWXMPqh.sq_StopMove()
CQKhHTCQgrpdWXMPqh.getVar("Threeside").setBool(0,false)
CQKhHTCQgrpdWXMPqh.sq_PlaySound("SW_THREE_SIDE")
CQKhHTCQgrpdWXMPqh.sq_SetCurrentAnimation(535)
CQKhHTCQgrpdWXMPqh.sq_SetCurrentAttackInfo(151)
local CQPnSEW2TkmpzIVVNU7V = CQKhHTCQgrpdWXMPqh.sq_GetBonusRateWithPassive(103, -1, 3,getATSwordmanBonus(CQKhHTCQgrpdWXMPqh,1.0,204))
CQKhHTCQgrpdWXMPqh.sq_SetCurrentAttackBonusRate(CQPnSEW2TkmpzIVVNU7V)
	CQKhHTCQgrpdWXMPqh.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 1:
		CQKhHTCQgrpdWXMPqh.sq_SetCurrentAnimation(532)
	CQKhHTCQgrpdWXMPqh.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 2:
		CQKhHTCQgrpdWXMPqh.sq_SetCurrentAnimation(533)
break
}
}

function onEndCurrentAni_Threeside(CQ9jfLlFopMwnnCLh)
{
	if(!CQ9jfLlFopMwnnCLh) return
local CQt6A83n91tcxCXMlhy = CQ9jfLlFopMwnnCLh.getSkillSubState()
switch(CQt6A83n91tcxCXMlhy)
	{
	case 0:
		CQ9jfLlFopMwnnCLh.sq_IntVectClear()
if(!CQ9jfLlFopMwnnCLh.getVar("Threeside").getBool(0))
			CQ9jfLlFopMwnnCLh.sq_IntVectPush(1)
else
			CQ9jfLlFopMwnnCLh.sq_IntVectPush(2)
CQ9jfLlFopMwnnCLh.sq_AddSetStatePacket(204, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQ9jfLlFopMwnnCLh.sq_IntVectClear()
CQ9jfLlFopMwnnCLh.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQ9jfLlFopMwnnCLh.sq_IntVectClear()
CQ9jfLlFopMwnnCLh.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Threeside(CQB7cvFRwg8gjqXC, CQvVCivNHis4cd53U2, CQDDrJ8yYNjXks4NaUAA, CQRo76LYIYFDfg46A)
{
	if(!CQB7cvFRwg8gjqXC || CQRo76LYIYFDfg46A)	return false
local CQiqsxpB3yvplO32Ghg = CQB7cvFRwg8gjqXC.getSkillSubState()
Calldaimus_onAttack(CQB7cvFRwg8gjqXC,CQvVCivNHis4cd53U2, CQDDrJ8yYNjXks4NaUAA, CQRo76LYIYFDfg46A)
switch(CQiqsxpB3yvplO32Ghg)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Threeside(CQ1lTynPyVCwgU29, CQU8sFdrXxwc8V258g)
{
	if(!CQ1lTynPyVCwgU29) return
local CQHBT3P8jr3ghQ1MRobv = CQ1lTynPyVCwgU29.getSkillSubState()
switch(CQHBT3P8jr3ghQ1MRobv)
	{
	case 2:
		if(CQU8sFdrXxwc8V258g != 3)
			break
CQ1lTynPyVCwgU29.sq_StartWrite()
CQ1lTynPyVCwgU29.sq_WriteDword(204)
CQ1lTynPyVCwgU29.sq_WriteDword(0)
CQ1lTynPyVCwgU29.sq_WriteDword(CQ1lTynPyVCwgU29.sq_GetBonusRateWithPassive(103, -1, 4, getATSwordmanBonus(CQ1lTynPyVCwgU29,1.0,204)))
CQ1lTynPyVCwgU29.sq_SendCreatePassiveObjectPacket(24381, 0, 0, 0, 0)
break
case 4:

		break
}
}

function onEndState_Threeside(CQjFKlwZSXo49fM7k, CQEpmrjs7lfX4IM3cUJ)
{
	if(!CQjFKlwZSXo49fM7k) return
local CQ4Q2SMlpaPDNhNd = CQjFKlwZSXo49fM7k.getSkillSubState()
switch(CQ4Q2SMlpaPDNhNd)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onProc_Threeside(CQQzo1A4NKlp5CB6Eh)
{
	if(!CQQzo1A4NKlp5CB6Eh) return
local CQL9gjeJxkJaMmBgOo3f = CQQzo1A4NKlp5CB6Eh.getSkillSubState()
}

function onKeyFrameFlag_Threeside(CQlNDw5qJpUWXBV9D, CQIHRPHjR1Nb1a7k2Ue)
{
	if (!CQlNDw5qJpUWXBV9D) return false
switch(CQIHRPHjR1Nb1a7k2Ue)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Threeside(CQCaDBi1WgWjCR7R)
{
	if(!CQCaDBi1WgWjCR7R) return
local CQcevgYo4i67JO6zfnBa = CQCaDBi1WgWjCR7R.getSkillSubState()
switch(CQcevgYo4i67JO6zfnBa)
	{
	case 0:
		CQCaDBi1WgWjCR7R.setSkillCommandEnable(204,true)
local CQAcBm7nnNaBVU6jj = sq_GetCurrentAnimation(CQCaDBi1WgWjCR7R)
local CQdYWsKfCYhGKV5YwgU = CQCaDBi1WgWjCR7R.sq_GetCurrentFrameIndex(CQAcBm7nnNaBVU6jj)
if(CQCaDBi1WgWjCR7R.sq_IsEnterSkill(204) != -1 && CQdYWsKfCYhGKV5YwgU > 1)
			CQCaDBi1WgWjCR7R.getVar("Threeside").setBool(0,true)
break
}
}