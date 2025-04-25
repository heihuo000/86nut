
function checkExecutableSkill_Madness(CQlVQB4NoCoqv7ob)
{
	if (!CQlVQB4NoCoqv7ob) return false
local CQID4RGS9zfxlGixTR = CQlVQB4NoCoqv7ob.sq_IsUseSkill(72)
if (CQID4RGS9zfxlGixTR)
	{
		CQlVQB4NoCoqv7ob.sq_IntVectClear()
CQlVQB4NoCoqv7ob.sq_IntVectPush(0)
CQlVQB4NoCoqv7ob.sq_AddSetStatePacket(72, STATE_PRIORITY_IGNORE_FORCE, true)
CQlVQB4NoCoqv7ob.getVar("Madness_Uid").clear_vector()
return true
}

	return false
}

function checkCommandEnable_Madness(CQ7opmyYwIPfbcumri7D)
{
	if (!CQ7opmyYwIPfbcumri7D) return false
local CQrqhs99HZz2zKuvi = CQ7opmyYwIPfbcumri7D.sq_GetSkillLoad(65)
if(!CQrqhs99HZz2zKuvi)
		return false
local CQClpXZCYTK5hbywany = CQrqhs99HZz2zKuvi.getRemainLoadNumber()
local CQc8hdarsEUCx6AU = CQ7opmyYwIPfbcumri7D.sq_GetLevelData(72, 0, sq_GetSkillLevel(CQ7opmyYwIPfbcumri7D, 72))
local CQABGnUz23NDkiPWNb = CQ7opmyYwIPfbcumri7D.sq_GetLevelData(77, 1, sq_GetSkillLevel(CQ7opmyYwIPfbcumri7D, 77))
if(sq_GetSkillLevel(CQ7opmyYwIPfbcumri7D, 77)>0)
		CQc8hdarsEUCx6AU = (CQc8hdarsEUCx6AU*(1.0 + (CQABGnUz23NDkiPWNb/100.0))).tointeger()
if(CQClpXZCYTK5hbywany < CQc8hdarsEUCx6AU)
		return false
return true
}

function onSetState_Madness(CQdGbpf6tjWEf8OQ3DSn, CQyENLCsZo7e6HOu7, CQNwy7sQUMaYRYIrRi3, CQbxdYkkSbhg7Lsp)
{
	if(!CQdGbpf6tjWEf8OQ3DSn) return
local CQFdAi1K7uD52usyen = CQdGbpf6tjWEf8OQ3DSn.sq_GetVectorData(CQNwy7sQUMaYRYIrRi3, 0)
CQdGbpf6tjWEf8OQ3DSn.setSkillSubState(CQFdAi1K7uD52usyen)
switch(CQFdAi1K7uD52usyen)
	{
	case 0:
		CQdGbpf6tjWEf8OQ3DSn.sq_StopMove()
CQdGbpf6tjWEf8OQ3DSn.sq_SetCurrentAnimation(506)
CQdGbpf6tjWEf8OQ3DSn.sq_PlaySound("SW_MADNESS")
break
}
	//CQdGbpf6tjWEf8OQ3DSn.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Madness(CQgf9HSppBYC87asyFhg)
{
	if(!CQgf9HSppBYC87asyFhg) return
local CQo1P5rUNcXD3pEip = CQgf9HSppBYC87asyFhg.getSkillSubState()
switch(CQo1P5rUNcXD3pEip)
	{
	case 0:
		CQgf9HSppBYC87asyFhg.sq_IntVectClear()
CQgf9HSppBYC87asyFhg.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onKeyFrameFlag_Madness(CQJJxxT2xtQEBcEW, CQksXt3FJC2e4JpEB1)
{
	if (!CQJJxxT2xtQEBcEW) return false
switch(CQksXt3FJC2e4JpEB1)
	{
	case 0:
		CQJJxxT2xtQEBcEW.sq_StartWrite()
CQJJxxT2xtQEBcEW.sq_WriteDword(72)
CQJJxxT2xtQEBcEW.sq_WriteDword(0)
CQJJxxT2xtQEBcEW.sq_WriteDword(sq_GetIntData(CQJJxxT2xtQEBcEW, 72, 0))
CQJJxxT2xtQEBcEW.sq_WriteDword(CQJJxxT2xtQEBcEW.sq_GetBonusRateWithPassive(72, -1, 1, getATSwordmanBonus(CQJJxxT2xtQEBcEW,1.0,72)))
CQJJxxT2xtQEBcEW.sq_WriteDword(sq_GetIntData(CQJJxxT2xtQEBcEW, 72, 7))
CQJJxxT2xtQEBcEW.sq_SendCreatePassiveObjectPacket(24381, 0, sq_GetIntData(CQJJxxT2xtQEBcEW, 72, 0), 0, 0)
break
case 1:
		local CQareFonfzuYNvou2u9I = CQJJxxT2xtQEBcEW.getDirection()
local CQ5Y52vRrIdhZ5oI6 = 190
if(CQareFonfzuYNvou2u9I==0)
			CQ5Y52vRrIdhZ5oI6 = -CQ5Y52vRrIdhZ5oI6
local CQwRaT8B3ZO5MiDpcbi = CQJJxxT2xtQEBcEW.sq_GetLevelData(72, 0, sq_GetSkillLevel(CQJJxxT2xtQEBcEW, 72))
local CQZ25rLybTTCX8SA = CQJJxxT2xtQEBcEW.getVar("Madness_Uid").size_vector()
if(CQZ25rLybTTCX8SA > 0)
			for(local CQzKaApYXEHNHESsQR=0; CQzKaApYXEHNHESsQR<CQwRaT8B3ZO5MiDpcbi; CQzKaApYXEHNHESsQR++)
				AtSwordmanDecreaseEvolve(CQJJxxT2xtQEBcEW)
local CQ5Y52vRrIdhZ5oI6 = 0
for(local CQzKaApYXEHNHESsQR=0; CQzKaApYXEHNHESsQR<CQZ25rLybTTCX8SA; CQzKaApYXEHNHESsQR++)
		{
			CQ5Y52vRrIdhZ5oI6++
CQJJxxT2xtQEBcEW.sq_StartWrite()
CQJJxxT2xtQEBcEW.sq_WriteDword(72)
CQJJxxT2xtQEBcEW.sq_WriteDword(1)
CQJJxxT2xtQEBcEW.sq_WriteDword(CQJJxxT2xtQEBcEW.sq_GetBonusRateWithPassive(72, -1, 1, getATSwordmanBonus(CQJJxxT2xtQEBcEW,1.0,72)))
CQJJxxT2xtQEBcEW.sq_WriteDword(CQJJxxT2xtQEBcEW.getVar("Madness_Uid").get_vector(CQzKaApYXEHNHESsQR))
CQJJxxT2xtQEBcEW.sq_WriteDword(CQ5Y52vRrIdhZ5oI6)
CQJJxxT2xtQEBcEW.sq_SendCreatePassiveObjectPacket(24381, 0, -50, 0, 60)
}

		break
}
	return true
}

function DarktemplerCreateAniPooledObjEX(CQrbUQOr8ortSbPJKn, CQCh1OQzQM5ns6ODCFNL, CQc4iBjZGbpkDoOZM, CQAZfRMscug8I9IHjim, CQdPumAQsBSNoJsS, CQyyfax4RcxHOvsLbu, CQNnSX5JWPLIpZaGqMow,CQbUYcHqLCqttiHCI)
{
	local CQFkCyuhnz1nE8HJSF5 = sq_CreateAnimation("",CQCh1OQzQM5ns6ODCFNL)
CQFkCyuhnz1nE8HJSF5.setImageRateFromOriginal(CQbUYcHqLCqttiHCI, CQbUYcHqLCqttiHCI)
local CQg6rGc1AsyTupGB = sq_CreatePooledObject(CQFkCyuhnz1nE8HJSF5,CQAZfRMscug8I9IHjim)
CQrbUQOr8ortSbPJKn.getVar("aniobj").push_obj_vector(CQg6rGc1AsyTupGB)
CQg6rGc1AsyTupGB.setCurrentPos(CQdPumAQsBSNoJsS,CQyyfax4RcxHOvsLbu,CQNnSX5JWPLIpZaGqMow)
if(CQc4iBjZGbpkDoOZM)
		sq_moveWithParent(CQrbUQOr8ortSbPJKn, CQg6rGc1AsyTupGB)
sq_SetCurrentDirection(CQg6rGc1AsyTupGB, CQrbUQOr8ortSbPJKn.getDirection())
sq_AddObject(CQrbUQOr8ortSbPJKn, CQg6rGc1AsyTupGB, OBJECTTYPE_DRAWONLY, false)
}

function getScrollBasisPos_Madness(CQmC746o6588ecFZXi)
{
	if (!CQmC746o6588ecFZXi) return false
local CQJSIlanoTINiKF1d = CQmC746o6588ecFZXi.getSkillSubState()
if (!CQmC746o6588ecFZXi.isMyControlObject()) return false
local CQki7WmfBEk1rbDVhnM = sq_GetIntData(CQmC746o6588ecFZXi, 72, 0)
if(CQmC746o6588ecFZXi.getDirection()==0)
		CQki7WmfBEk1rbDVhnM = -CQki7WmfBEk1rbDVhnM
CQmC746o6588ecFZXi.sq_SetCameraScrollPosition(CQmC746o6588ecFZXi.getXPos()+CQki7WmfBEk1rbDVhnM, CQmC746o6588ecFZXi.getYPos(), 0)
return true
}










