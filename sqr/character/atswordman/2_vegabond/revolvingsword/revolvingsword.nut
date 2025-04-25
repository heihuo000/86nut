
function checkExecutableSkill_Revolvingsword(CQGZKgC9SUU7WYceKu)
{
	if (!CQGZKgC9SUU7WYceKu) return false
local CQ6HUimrgQjrM7f81z = CQGZKgC9SUU7WYceKu.sq_IsUseSkill(227)
if (CQ6HUimrgQjrM7f81z)
	{
		CQGZKgC9SUU7WYceKu.sq_IntVectClear()
CQGZKgC9SUU7WYceKu.sq_IntVectPush(0)
CQGZKgC9SUU7WYceKu.sq_AddSetStatePacket(227, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Revolvingsword(CQvXTcHr45MDeevDUOk)
{
	if (!CQvXTcHr45MDeevDUOk) return false
return true
}

function onSetState_Revolvingsword(CQCz117zWD1fDirT2GX, CQx9ikK6Ldy2Z7Ig, CQPNReoLbW94GGsxc, CQ9GDXvQPXICPcakn27)
{
	if(!CQCz117zWD1fDirT2GX) return
local CQtEfdVkk8kDEKav = CQCz117zWD1fDirT2GX.sq_GetVectorData(CQPNReoLbW94GGsxc, 0)
CQCz117zWD1fDirT2GX.setSkillSubState(CQtEfdVkk8kDEKav)
switch(CQtEfdVkk8kDEKav)
	{
	case 0:
		CQCz117zWD1fDirT2GX.sq_StopMove()
CQCz117zWD1fDirT2GX.sq_PlaySound("SW_REVOLVING_SWORD")
CQCz117zWD1fDirT2GX.sq_SetCurrentAnimation(530)
CQCz117zWD1fDirT2GX.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 1:
		CQCz117zWD1fDirT2GX.sq_SetCurrentAnimation(531)
CQCz117zWD1fDirT2GX.sq_SetCurrentAttackInfo(149)
local CQBwSnI3ieGpAyEzPH = CQCz117zWD1fDirT2GX.sq_GetBonusRateWithPassive(103, -1, 0, getATSwordmanBonus(CQCz117zWD1fDirT2GX,1.0,227))
CQCz117zWD1fDirT2GX.sq_SetCurrentAttackBonusRate(CQBwSnI3ieGpAyEzPH)
local CQvxYpqpVLvwa6EUFhl2 = sq_GetIntData(CQCz117zWD1fDirT2GX,103, 0)
local CQDdVLhUQTVYuopYK = sq_GetIntData(CQCz117zWD1fDirT2GX,103, 5)
CQCz117zWD1fDirT2GX.setTimeEvent(0,CQDdVLhUQTVYuopYK,CQvxYpqpVLvwa6EUFhl2,true)
CQCz117zWD1fDirT2GX.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0);
break
case 2:
		CQCz117zWD1fDirT2GX.sq_SetCurrentAnimation(529)
CQCz117zWD1fDirT2GX.sq_SetCurrentAttackInfo(149)
local CQBwSnI3ieGpAyEzPH = CQCz117zWD1fDirT2GX.sq_GetBonusRateWithPassive(103, -1, 1, getATSwordmanBonus(CQCz117zWD1fDirT2GX,1.0,227))
CQCz117zWD1fDirT2GX.sq_SetCurrentAttackBonusRate(CQBwSnI3ieGpAyEzPH)
CQCz117zWD1fDirT2GX.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
}
	
}

function onEndCurrentAni_Revolvingsword(CQiH7YPGdJ44iJon)
{
	if(!CQiH7YPGdJ44iJon) return
local CQ1aIizushoCrYicj1 = CQiH7YPGdJ44iJon.getSkillSubState()
switch(CQ1aIizushoCrYicj1)
	{
	case 0:
		CQiH7YPGdJ44iJon.sq_IntVectClear()
CQiH7YPGdJ44iJon.sq_IntVectPush(1)
CQiH7YPGdJ44iJon.sq_AddSetStatePacket(227, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		
		break
case 2:
		CQiH7YPGdJ44iJon.sq_IntVectClear()
CQiH7YPGdJ44iJon.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onTimeEvent_Revolvingsword(CQUslH4v2oRDoLuqzUVE, CQHrI5GNtGApWuubb, CQjYlxyAZRzeq7yephn)
{
	if(!CQUslH4v2oRDoLuqzUVE)	return false
switch(CQHrI5GNtGApWuubb)
	{
	case 0:
		CQUslH4v2oRDoLuqzUVE.resetHitObjectList()
if(CQjYlxyAZRzeq7yephn >= sq_GetIntData(CQUslH4v2oRDoLuqzUVE,103, 0))
		{
			CQUslH4v2oRDoLuqzUVE.sq_IntVectClear()
CQUslH4v2oRDoLuqzUVE.sq_IntVectPush(2)
CQUslH4v2oRDoLuqzUVE.sq_AddSetStatePacket(227, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
case 1:

		break
}

}

function onEnterFrame_Revolvingsword(CQEgKtxYhyKYtpPm, CQ43qF59ABUgQcPtS2)
{
	if(!CQEgKtxYhyKYtpPm) return
local CQQL33aX6dM5bKOQHUuq = CQEgKtxYhyKYtpPm.getSkillSubState()
switch(CQQL33aX6dM5bKOQHUuq)
	{
	case 3:

		break
case 4:

		break
}
}

function onEndState_Revolvingsword(CQIOpTUrmWtCwbIu5, CQ7thrfzBX7Bn6Ir)
{
	if(!CQIOpTUrmWtCwbIu5) return
local CQrbFAC5z8aHxisphG = CQIOpTUrmWtCwbIu5.getSkillSubState()
switch(CQrbFAC5z8aHxisphG)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onProc_Revolvingsword(CQChgMssEejsj8aylgeV)
{
	if(!CQChgMssEejsj8aylgeV) return
local CQc4FjmQfLFWcHasW = CQChgMssEejsj8aylgeV.getSkillSubState()
}

function onKeyFrameFlag_Revolvingsword(CQAZbQ1krkYnkYEoi1B, CQdPBOSJ3QXkfLpt)
{
	if (!CQAZbQ1krkYnkYEoi1B) return false
switch(CQdPBOSJ3QXkfLpt)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Revolvingsword(CQyytBrpbJw7TupaAG)
{
	if(!CQyytBrpbJw7TupaAG) return
local CQNn9RTUPh3NR7oiMh9A = CQyytBrpbJw7TupaAG.getSkillSubState()
switch(CQNn9RTUPh3NR7oiMh9A)
	{
	case 1:
		if(sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL))
		{
			CQyytBrpbJw7TupaAG.sq_IntVectClear()
CQyytBrpbJw7TupaAG.sq_IntVectPush(2)
CQyytBrpbJw7TupaAG.sq_AddSetStatePacket(227, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
}
}