
function checkExecutableSkill_Rapidstep(CQHLXkRI5aYMTV4tM)
{
	if (!CQHLXkRI5aYMTV4tM) return false
local CQjOeeSwi3XKRE3a4UG = CQHLXkRI5aYMTV4tM.sq_IsUseSkill(210)
if (CQjOeeSwi3XKRE3a4UG)
	{
		CQHLXkRI5aYMTV4tM.sq_IntVectClear()
CQHLXkRI5aYMTV4tM.sq_IntVectPush(0)
CQHLXkRI5aYMTV4tM.sq_AddSetStatePacket(210, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Rapidstep(CQEt6Ar6VjQO7f2i)
{
	if (!CQEt6Ar6VjQO7f2i) return false
return true
}


function onSetState_Rapidstep(CQ4baNTKlp2ygI2Obh, CQQhkh3QG1im8g1EqpMJ, CQL4aqFkdbdl3XMSr, CQlZkIt3euO99mMsuoq)
{
	if(!CQ4baNTKlp2ygI2Obh) return
local CQIPJV8p2NTR4BNF = CQ4baNTKlp2ygI2Obh.sq_GetVectorData(CQL4aqFkdbdl3XMSr, 0)
CQ4baNTKlp2ygI2Obh.setSkillSubState(CQIPJV8p2NTR4BNF)
switch(CQIPJV8p2NTR4BNF)
	{
	case 0:
		CQ4baNTKlp2ygI2Obh.sq_StopMove()
CQ4baNTKlp2ygI2Obh.sq_PlaySound("SW_1ATK_02")
CQ4baNTKlp2ygI2Obh.sq_SetCurrentAnimation(542)
local CQ7uUfLUvYJ3NaBPXU = sq_GetCurrentAnimation(CQ4baNTKlp2ygI2Obh)
local CQrU1UpgOPnZ5RBJNGpE = 0
CQ4baNTKlp2ygI2Obh.getVar("Rapidstep").clear_vector()
CQ4baNTKlp2ygI2Obh.getVar("Rapidstep").push_vector(CQ4baNTKlp2ygI2Obh.getXPos())
CQ4baNTKlp2ygI2Obh.getVar("Rapidstep").push_vector(CQrU1UpgOPnZ5RBJNGpE)
CQ4baNTKlp2ygI2Obh.getVar("Rapidstep").push_vector(aniSumTime2)
break
}

}

function onEndCurrentAni_Rapidstep(CQCkiabFhCBSMOVD3)
{
	if(!CQCkiabFhCBSMOVD3) return
local CQc6RZ9uyxroXUCZlo6 = CQCkiabFhCBSMOVD3.getSkillSubState()
switch(CQc6RZ9uyxroXUCZlo6)
	{
	case 0:
		CQCkiabFhCBSMOVD3.sq_IntVectClear()
CQCkiabFhCBSMOVD3.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onEnterFrame_Rapidstep(CQA7S9Zv6I6Q2CCH, CQdVfbQBm5EcVq6SUU)
{
	if(!CQA7S9Zv6I6Q2CCH) return
if(CQdVfbQBm5EcVq6SUU < 9)
	{
		CQA7S9Zv6I6Q2CCH.sq_StartWrite()
CQA7S9Zv6I6Q2CCH.sq_WriteDword(210)
CQA7S9Zv6I6Q2CCH.sq_WriteDword(0)
CQA7S9Zv6I6Q2CCH.sq_WriteDword(CQA7S9Zv6I6Q2CCH.sq_GetBonusRateWithPassive(210, -1, 0, getATSwordmanBonus(CQA7S9Zv6I6Q2CCH,1.0,210)))
CQA7S9Zv6I6Q2CCH.sq_WriteDword(CQdVfbQBm5EcVq6SUU)
CQA7S9Zv6I6Q2CCH.sq_SendCreatePassiveObjectPacket(24381, 0, 0, 0, 65)
}
}

function onEndState_Rapidstep(CQyDSojADTgRKd5LwHlq, CQFoYKMWzaS3Bs5GAhH)
{
	if(!CQyDSojADTgRKd5LwHlq) return
if(CQFoYKMWzaS3Bs5GAhH != 210)
		sq_SimpleMoveToNearMovablePos(CQyDSojADTgRKd5LwHlq,900)
}

function onProc_Rapidstep(CQgqV6A9E3xZLg4C)
{
	if(!CQgqV6A9E3xZLg4C) return
local CQolrceXMUZSFP4KLg = CQgqV6A9E3xZLg4C.getSkillSubState()
switch(CQolrceXMUZSFP4KLg)
	{
	case 0:
		local CQ287ukIroqoOm3NVo2V = sq_GetIntData(CQgqV6A9E3xZLg4C,210, 0)
local CQmBIGHzK11QGB2X1 = CQgqV6A9E3xZLg4C.getVar("Rapidstep").get_vector(0)
local CQJFl4u5bbycPw22kUw = sq_GetDistancePos(CQmBIGHzK11QGB2X1, CQgqV6A9E3xZLg4C.getDirection(), CQ287ukIroqoOm3NVo2V)
local CQkpIzcsOu9REf1B = sq_GetDistancePos(CQmBIGHzK11QGB2X1, CQgqV6A9E3xZLg4C.getDirection(), CQ287ukIroqoOm3NVo2V)
local CQawTW6Q4BI3AIM5nh = sq_GetCurrentAnimation(CQgqV6A9E3xZLg4C)
local CQ5xKDKjuYk6ahM1Qoay = CQgqV6A9E3xZLg4C.sq_GetCurrentFrameIndex(CQawTW6Q4BI3AIM5nh)
local CQwdq2oJCPGVuCN8O = CQgqV6A9E3xZLg4C.sq_GetStateTimer()
if(CQ5xKDKjuYk6ahM1Qoay < 7)
		{
			local CQZM3kRpTCvFsq93DU8 = sq_GetAccel(CQgqV6A9E3xZLg4C.getXPos(), CQJFl4u5bbycPw22kUw, CQwdq2oJCPGVuCN8O, 550, false)
local CQzHpeVnFzVaiN9N = sq_GetAccel(CQgqV6A9E3xZLg4C.getZPos(), 100, CQwdq2oJCPGVuCN8O, 550, false)
if(CQgqV6A9E3xZLg4C.isMovablePos(CQZM3kRpTCvFsq93DU8, CQgqV6A9E3xZLg4C.getYPos()))
			{
				sq_setCurrentAxisPos(CQgqV6A9E3xZLg4C, 0, CQZM3kRpTCvFsq93DU8)
sq_setCurrentAxisPos(CQgqV6A9E3xZLg4C, 2, CQzHpeVnFzVaiN9N)
}
		}else if(CQ5xKDKjuYk6ahM1Qoay >= 7 && CQ5xKDKjuYk6ahM1Qoay < 10)
		{
			
			local CQZM3kRpTCvFsq93DU8 = sq_GetAccel(CQgqV6A9E3xZLg4C.getXPos(), CQkpIzcsOu9REf1B, CQwdq2oJCPGVuCN8O, 100, false)
local CQzHpeVnFzVaiN9N = sq_GetAccel(CQgqV6A9E3xZLg4C.getZPos(), 0, CQwdq2oJCPGVuCN8O, 100, false)
if(CQgqV6A9E3xZLg4C.isMovablePos(CQZM3kRpTCvFsq93DU8, CQgqV6A9E3xZLg4C.getYPos()))
			{
				sq_setCurrentAxisPos(CQgqV6A9E3xZLg4C, 0, CQZM3kRpTCvFsq93DU8)
sq_setCurrentAxisPos(CQgqV6A9E3xZLg4C, 2, CQzHpeVnFzVaiN9N)
}
		}
		else
			CQgqV6A9E3xZLg4C.sq_SetStaticSpeedInfo(2, 2,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
}
}

function onKeyFrameFlag_Rapidstep(CQWcghgu1TojWO79j, CQVYFqBfYaR6qU65zoS)
{
	if (!CQWcghgu1TojWO79j) return false
switch(CQVYFqBfYaR6qU65zoS)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Rapidstep(CQYRvIWBL3AVtV5R)
{
	if(!CQYRvIWBL3AVtV5R) return
local CQS2BVlAhUzGQQ58oU = CQYRvIWBL3AVtV5R.getSkillSubState()
switch(CQS2BVlAhUzGQQ58oU)
	{
	case 0:

		break
}
}