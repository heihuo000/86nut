
function checkExecutableSkill_Overdrive(CQtef59UmuEriPpT)
{
	if (!CQtef59UmuEriPpT) return false
local CQ6TwEkGmt1NCSnsHiG = CQtef59UmuEriPpT.sq_IsUseSkill(146)
if (CQ6TwEkGmt1NCSnsHiG)
	{
		CheckUseAddloadDrawsword(CQtef59UmuEriPpT,146,{[0] = true,[108] = true,[14] = true},0)
CreateBuffCutin(CQtef59UmuEriPpT,"etc/ultimateskillani/atsword_swordmaster_neo_buff.ani")
CQtef59UmuEriPpT.sq_IntVectClear()
CQtef59UmuEriPpT.sq_IntVectPush(0)
CQtef59UmuEriPpT.sq_AddSetStatePacket(146, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Overdrive(CQEE3cri5j1vgKtfm)
{
	if (!CQEE3cri5j1vgKtfm) return false
return CheckForceDrawsword(CQEE3cri5j1vgKtfm,146,{[0] = true,[108] = true,[14] = true})
}


function onSetState_Overdrive(CQ4woyTvUpyn8bP7e6b, CQQxgG3NS19Th5Oh, CQLdF3FSlbI89iIdpZ, CQlMblttpukN48IkLzy3)
{
	if(!CQ4woyTvUpyn8bP7e6b) return
local CQIHNW89NNGJNHsRV = CQ4woyTvUpyn8bP7e6b.sq_GetVectorData(CQLdF3FSlbI89iIdpZ, 0)
CQ4woyTvUpyn8bP7e6b.setSkillSubState(CQIHNW89NNGJNHsRV)
switch(CQIHNW89NNGJNHsRV)
	{
	case 0:
		CQ4woyTvUpyn8bP7e6b.sq_StopMove()
BodyMagicSword(CQ4woyTvUpyn8bP7e6b, "OverDrive_ON_Body")
if(MagicSword_IsAppebd(CQ4woyTvUpyn8bP7e6b))
			CQ4woyTvUpyn8bP7e6b.sq_SetCurrentAnimation(313)
else
			CQ4woyTvUpyn8bP7e6b.sq_SetCurrentAnimation(81)
local CQ7stSLCeYbI5Yaz272  = sq_GetCastTime(CQ4woyTvUpyn8bP7e6b, 146, sq_GetSkillLevel(CQ4woyTvUpyn8bP7e6b, 146))
local CQrrB1pOJtVtMLaj = sq_GetCurrentAnimation(CQ4woyTvUpyn8bP7e6b)
local CQCYtkbzYCeUXuEYdX = sq_GetFrameStartTime(CQrrB1pOJtVtMLaj, 4)
local CQcR9w96Ix4T17plnz2E = CQCYtkbzYCeUXuEYdX.tofloat() / CQ7stSLCeYbI5Yaz272.tofloat()
CQ4woyTvUpyn8bP7e6b.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, CQcR9w96Ix4T17plnz2E, CQcR9w96Ix4T17plnz2E)
sq_StartDrawCastGauge(CQ4woyTvUpyn8bP7e6b, CQCYtkbzYCeUXuEYdX, true)
break
}
	CQ4woyTvUpyn8bP7e6b.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Overdrive(CQA2OPZL3Ip8VophQ)
{
	if(!CQA2OPZL3Ip8VophQ) return
local CQNKzNQQyZRMK9oc = CQA2OPZL3Ip8VophQ.getSkillSubState()
switch(CQNKzNQQyZRMK9oc)
	{
	case 0:
		CQA2OPZL3Ip8VophQ.sq_IntVectClear()
CQA2OPZL3Ip8VophQ.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onEnterFrame_Overdrive(CQbIZgjkXTAJBJiTiI, CQFWwqM3kazILvibK6Vd)
{
	if(!CQbIZgjkXTAJBJiTiI) return
local CQgv5sAED3KtFZSxC = CQbIZgjkXTAJBJiTiI.getSkillSubState()
switch(CQFWwqM3kazILvibK6Vd)
	{
	case 4:
		local CQogQCeU8jmUZiSmMZn = sq_GetLevelData(CQbIZgjkXTAJBJiTiI,146, 0, sq_GetSkillLevel(CQbIZgjkXTAJBJiTiI, 146))
local CQ234fk2EoMTG8Av = "character/atswordman/1_swordmaster/overdrive/ap_overdrive.nut"
local CQm4EnHGM1tzPEPwzI = CNSquirrelAppendage.sq_AppendAppendage(CQbIZgjkXTAJBJiTiI, CQbIZgjkXTAJBJiTiI, -1, false, CQ234fk2EoMTG8Av, false)
CQm4EnHGM1tzPEPwzI.sq_SetValidTime(CQogQCeU8jmUZiSmMZn)
CQm4EnHGM1tzPEPwzI.setEnableIsBuff(true)
CQm4EnHGM1tzPEPwzI.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(CQbIZgjkXTAJBJiTiI), 146, sq_GetSkillLevel(CQbIZgjkXTAJBJiTiI, 146))
CNSquirrelAppendage.sq_Append(CQm4EnHGM1tzPEPwzI, CQbIZgjkXTAJBJiTiI, CQbIZgjkXTAJBJiTiI, true)
break
}
}

function onEndState_Overdrive(CQJZjEuucb7fHYPUv7iV, CQkPHZcRJus2AKOWq)
{
	if(!CQJZjEuucb7fHYPUv7iV) return
local CQaun86NRBjLabIQrX4 = CQJZjEuucb7fHYPUv7iV.getSkillSubState()
switch(CQaun86NRBjLabIQrX4)
	{
	case 3:

		break
case 4:

		break
}
	
}


function onProcCon_Overdrive(CQ5UMvKAWYFAu6Iu)
{
	if(!CQ5UMvKAWYFAu6Iu) return
local CQwkuooY4PYisosrHZ = CQ5UMvKAWYFAu6Iu.getSkillSubState()
switch(CQwkuooY4PYisosrHZ)
	{
	case 0:

		break
}
}

function onProc_Overdrive(CQZ6M2R9nCXqi9amZljA)
{
	if(!CQZ6M2R9nCXqi9amZljA) return
local CQzCuTVXAzwxrJatB = CQZ6M2R9nCXqi9amZljA.getSkillSubState()
}
function CreateBuffCutin(CQOSdeIrTI3fovEwh6I,CQ8iAAqzo5i2WZGi)
{
	local CQWmcMg69TdZqnGWYZ = sq_CreateAnimation("",CQ8iAAqzo5i2WZGi)
local CQVTChBswaPAt7FEUzLv = sq_CreatePooledObject(CQWmcMg69TdZqnGWYZ,true)
local CQY7eQWQH3liQpDua = CQOSdeIrTI3fovEwh6I.getObjectManager()
local CQuVXOlkYjJQbdDIP7c = CQOSdeIrTI3fovEwh6I.getXPos()
local CQMDeV4JsonxwKSpGe = CQY7eQWQH3liQpDua.getFieldYPos(0, 0, 7)
CQVTChBswaPAt7FEUzLv = sq_SetEnumDrawLayer(CQVTChBswaPAt7FEUzLv, ENUM_DRAWLAYER_BOTTOM)
CQVTChBswaPAt7FEUzLv.setCurrentPos(CQuVXOlkYjJQbdDIP7c +480,CQMDeV4JsonxwKSpGe ,0)
sq_AddObject(CQOSdeIrTI3fovEwh6I,CQVTChBswaPAt7FEUzLv,2,false)
}