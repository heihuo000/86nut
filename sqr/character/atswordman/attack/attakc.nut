
function onSetState_AtSwordman_Attack(CQBk85PJf2mFfnVlCy, CQv6OzwmIj1E6CChMNnO, CQiCltjh3oye1qXcjv9, CQ1SLFG1yM8v7d6T)
{
	if(!CQBk85PJf2mFfnVlCy) return
local CQUiQ2uiZvsh2s5bbf = CQBk85PJf2mFfnVlCy.sq_GetVectorData(CQiCltjh3oye1qXcjv9, 0)
CQBk85PJf2mFfnVlCy.setSkillSubState(CQUiQ2uiZvsh2s5bbf)
CQBk85PJf2mFfnVlCy.sq_StopMove()
local CQHm4Tcbjuj5Vg5xquxg = CQBk85PJf2mFfnVlCy.sq_GetBonusRateWithPassive(174, -1, 0, getATSwordmanBonus(CQBk85PJf2mFfnVlCy,1.0,-1))/10+100
switch(CQUiQ2uiZvsh2s5bbf)
	{
	case 0:
		CQBk85PJf2mFfnVlCy.sq_SetCurrentAttackInfo(0)
local CQjTEe6fSBGV3X4mI = 100
if(sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 3) > 0)
		{
			BodyMagicSword(CQBk85PJf2mFfnVlCy, "InnerBladeAttack1")
			CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(47)
}
		else if(sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 148) > 0)
		{
			BodyCalldaimus(CQBk85PJf2mFfnVlCy, "CallDaimusAttack1")
CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(367)
}
		else if(sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 62) > 0)
		{
			CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(508)
CQBk85PJf2mFfnVlCy.sq_SetCurrentAttackInfo(128)
local CQE83AJS7cvFBm3vSbD = sq_GetLevelData(CQBk85PJf2mFfnVlCy,62, 0, sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 62))
CQHm4Tcbjuj5Vg5xquxg = CQHm4Tcbjuj5Vg5xquxg + CQE83AJS7cvFBm3vSbD
}
		else if(sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 202) > 0)
		{
			CQBk85PJf2mFfnVlCy.sq_PlaySound("R_SW_1ATK")
local CQ4BpMitqOCELB3w = checkAppend_Dualweapon(CQBk85PJf2mFfnVlCy)
CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(SetChrAniIndex_Dualweapon(CQBk85PJf2mFfnVlCy,CQ4BpMitqOCELB3w))
CQBk85PJf2mFfnVlCy.sq_SetCurrentAttackInfo(SetChrAtkIndex_Dualweapon(CQBk85PJf2mFfnVlCy,CQ4BpMitqOCELB3w))
}
		else
		{
			CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(0)
}
		sq_SetCurrentAttackInfo(CQBk85PJf2mFfnVlCy, sq_GetCurrentAttackInfo(CQBk85PJf2mFfnVlCy))
CQBk85PJf2mFfnVlCy.sq_SetStaticSpeedInfo(2, 2, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
case 1:
		CQBk85PJf2mFfnVlCy.sq_SetCurrentAttackInfo(1)
local CQjTEe6fSBGV3X4mI = 120
if(sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 3) > 0)
		{
			BodyMagicSword(CQBk85PJf2mFfnVlCy, "InnerBladeAttack2")
			if(MagicSword_IsAppebd(CQBk85PJf2mFfnVlCy))
				CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(288)
else
				CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(48)
}
		else if(sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 148) > 0)
		{
			BodyCalldaimus(CQBk85PJf2mFfnVlCy, "CallDaimusAttack2")
CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(368)
}
		else if(sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 62) > 0)
		{
			CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(509)
CQBk85PJf2mFfnVlCy.sq_SetCurrentAttackInfo(129)
}
		else if(sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 202) > 0)
		{
			CQBk85PJf2mFfnVlCy.sq_PlaySound("R_SW_2ATK")
local CQ4BpMitqOCELB3w = checkAppend_Dualweapon(CQBk85PJf2mFfnVlCy)
}
		else
		{
			CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(1)
}
		sq_SetCurrentAttackInfo(CQBk85PJf2mFfnVlCy, sq_GetCurrentAttackInfo(CQBk85PJf2mFfnVlCy))
CQBk85PJf2mFfnVlCy.sq_SetStaticSpeedInfo(2, 2, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
case 2:
		CQBk85PJf2mFfnVlCy.sq_SetCurrentAttackInfo(2)
local CQjTEe6fSBGV3X4mI = 150
if(sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 3) > 0)
		{
			BodyMagicSword(CQBk85PJf2mFfnVlCy, "InnerBladeAttack3")
			if(MagicSword_IsAppebd(CQBk85PJf2mFfnVlCy))
				CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(289)
else
				CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(49)
CQBk85PJf2mFfnVlCy.sq_SetStaticSpeedInfo(2, 2, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}
		else if(sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 148) > 0)
		{
			BodyCalldaimus(CQBk85PJf2mFfnVlCy, "CallDaimusAttack3")
CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(369)
CQBk85PJf2mFfnVlCy.sq_SetStaticSpeedInfo(2, 2, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}
		else if(sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 62) > 0)
		{
			CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(510)
CQBk85PJf2mFfnVlCy.sq_SetCurrentAttackInfo(130)
local CQE83AJS7cvFBm3vSbD = sq_GetLevelData(CQBk85PJf2mFfnVlCy,62, 0, sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 62))
CQHm4Tcbjuj5Vg5xquxg = CQHm4Tcbjuj5Vg5xquxg + CQE83AJS7cvFBm3vSbD
}
		else if(sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 202) > 0)
		{
			CQBk85PJf2mFfnVlCy.sq_PlaySound("R_SW_3ATK")
CQBk85PJf2mFfnVlCy.sq_SetStaticSpeedInfo(2, 2, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}
		else
		{
			CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(2)
CQBk85PJf2mFfnVlCy.sq_SetStaticSpeedInfo(2, 2, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}
		CQBk85PJf2mFfnVlCy.applyBasicAttackUp(sq_GetCurrentAttackInfo(CQBk85PJf2mFfnVlCy),CQBk85PJf2mFfnVlCy.getState())
sq_SetCurrentAttackInfo(CQBk85PJf2mFfnVlCy, sq_GetCurrentAttackInfo(CQBk85PJf2mFfnVlCy))
break
case 3:
		if(sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 148) > 0)
		{
			BodyCalldaimus(CQBk85PJf2mFfnVlCy, "CallDaimusAttack4")
CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(370)
}
		CQBk85PJf2mFfnVlCy.sq_SetCurrentAttackInfo(82)
local CQjTEe6fSBGV3X4mI = 150
break
case 4:
		if(sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 148) > 0)
		{
			BodyCalldaimus(CQBk85PJf2mFfnVlCy, "CallDaimusAttack5")
CQBk85PJf2mFfnVlCy.sq_SetCurrentAnimation(371)
}
		CQBk85PJf2mFfnVlCy.sq_SetCurrentAttackInfo(83)
local CQjTEe6fSBGV3X4mI = 150
break
}
	
	if(sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 62) > 0)
	{
		local CQXGyaWan2KHsN9taDo = sq_GetCurrentAttackBonusRate(CQBk85PJf2mFfnVlCy)
local CQxHdXlTPnUIDs8w = CQBk85PJf2mFfnVlCy.sq_GetLevelData(62, 0, sq_GetSkillLevel(CQBk85PJf2mFfnVlCy, 62))
CQBk85PJf2mFfnVlCy.sq_SetCurrentAttackBonusRate(CQXGyaWan2KHsN9taDo + CQxHdXlTPnUIDs8w)
}
	
}

function onProcCon_AtSwordman_Attack(CQPaP933koNtIR8iGu)
{
	if(!CQPaP933koNtIR8iGu) return
local CQ9exbFEiMWnoO7WLMF1 = CQPaP933koNtIR8iGu.getSkillSubState()
local CQtcXptmVv7TOU6E8 = CQPaP933koNtIR8iGu.getCurrentAnimation()
local CQBfeKzgQya8pV6uRFk = CQtcXptmVv7TOU6E8.GetCurrentFrameIndex()
if(sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL))
	{
		switch(CQ9exbFEiMWnoO7WLMF1)
		{
		case 0:
			if(CQPaP933koNtIR8iGu.isCurrentCutomAniIndex(0) && CQBfeKzgQya8pV6uRFk>3)
			{
				CQPaP933koNtIR8iGu.sq_IntVectClear()
CQPaP933koNtIR8iGu.sq_IntVectPush(1)
CQPaP933koNtIR8iGu.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true)
}
			else if(sq_GetSkillLevel(CQPaP933koNtIR8iGu, 3) > 0 && CQBfeKzgQya8pV6uRFk>5)
			{
				CQPaP933koNtIR8iGu.sq_IntVectClear()
CQPaP933koNtIR8iGu.sq_IntVectPush(1)
CQPaP933koNtIR8iGu.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true)
}
			else if(sq_GetSkillLevel(CQPaP933koNtIR8iGu, 148) > 0 && CQBfeKzgQya8pV6uRFk>2)
			{
				CQPaP933koNtIR8iGu.sq_IntVectClear()
CQPaP933koNtIR8iGu.sq_IntVectPush(1)
CQPaP933koNtIR8iGu.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true)
}
			else if(sq_GetSkillLevel(CQPaP933koNtIR8iGu, 62) > 0 && CQBfeKzgQya8pV6uRFk>3)
			{
				CQPaP933koNtIR8iGu.sq_IntVectClear()
CQPaP933koNtIR8iGu.sq_IntVectPush(1)
CQPaP933koNtIR8iGu.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true)
}
			else if(sq_GetSkillLevel(CQPaP933koNtIR8iGu, 202) > 0 && CQBfeKzgQya8pV6uRFk>2)
			{
				CQPaP933koNtIR8iGu.sq_IntVectClear()
CQPaP933koNtIR8iGu.sq_IntVectPush(1)
CQPaP933koNtIR8iGu.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true)
}
			break
case 1:
			if(CQPaP933koNtIR8iGu.isCurrentCutomAniIndex(1) && CQBfeKzgQya8pV6uRFk>3)
			{
				CQPaP933koNtIR8iGu.sq_IntVectClear()
CQPaP933koNtIR8iGu.sq_IntVectPush(2)
CQPaP933koNtIR8iGu.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true)
}
			else if(sq_GetSkillLevel(CQPaP933koNtIR8iGu, 3) > 0 && CQBfeKzgQya8pV6uRFk>5)
			{
				CQPaP933koNtIR8iGu.sq_IntVectClear()
CQPaP933koNtIR8iGu.sq_IntVectPush(2)
CQPaP933koNtIR8iGu.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true)
}
			else if(sq_GetSkillLevel(CQPaP933koNtIR8iGu, 148) > 0 && CQBfeKzgQya8pV6uRFk>3)
			{
				CQPaP933koNtIR8iGu.sq_IntVectClear()
CQPaP933koNtIR8iGu.sq_IntVectPush(2)
CQPaP933koNtIR8iGu.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true)
}
			else if(sq_GetSkillLevel(CQPaP933koNtIR8iGu, 62) > 0 && CQBfeKzgQya8pV6uRFk>2)
			{
				CQPaP933koNtIR8iGu.sq_IntVectClear()
CQPaP933koNtIR8iGu.sq_IntVectPush(2)
CQPaP933koNtIR8iGu.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true)
}
			else if(sq_GetSkillLevel(CQPaP933koNtIR8iGu, 202) > 0 && CQBfeKzgQya8pV6uRFk>3)
			{
				CQPaP933koNtIR8iGu.sq_IntVectClear()
CQPaP933koNtIR8iGu.sq_IntVectPush(2)
CQPaP933koNtIR8iGu.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true)
}
			break
case 2:
			if(sq_GetSkillLevel(CQPaP933koNtIR8iGu, 148) > 0 && CQBfeKzgQya8pV6uRFk>3)
			{
				CQPaP933koNtIR8iGu.sq_IntVectClear()
CQPaP933koNtIR8iGu.sq_IntVectPush(3)
CQPaP933koNtIR8iGu.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true)
}
			break
case 3:
			if(sq_GetSkillLevel(CQPaP933koNtIR8iGu, 148) > 0 && CQBfeKzgQya8pV6uRFk>2)
			{
				CQPaP933koNtIR8iGu.sq_IntVectClear()
CQPaP933koNtIR8iGu.sq_IntVectPush(4)
CQPaP933koNtIR8iGu.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true)
}
			break
}
	}
	
	ForcePush_ATSwordman(CQPaP933koNtIR8iGu,169,[1,1,200],6)
}

function onAttack_AtSwordman_Attack(CQR157LGGBnNtQ5I, CQiKaYpiccBJEf5pcDWs, CQ1I5ubbsOWIyI4Au, CQUWaHdN2X6twh3sEuM)
{
	if(!CQR157LGGBnNtQ5I) return false
local CQHvk4XStzEUuA3F = CQR157LGGBnNtQ5I.getSkillSubState()
MagicSword_BasiconAttack(CQR157LGGBnNtQ5I, CQiKaYpiccBJEf5pcDWs, CQ1I5ubbsOWIyI4Au, CQUWaHdN2X6twh3sEuM)
Calldaimus_onAttack(CQR157LGGBnNtQ5I,CQiKaYpiccBJEf5pcDWs, CQ1I5ubbsOWIyI4Au, CQUWaHdN2X6twh3sEuM)
}


function onEndCurrentAni_AtSwordman_Attack(CQjgHzatZsgTem2PDb)
{
	if(!CQjgHzatZsgTem2PDb) return
CQjgHzatZsgTem2PDb.sq_IntVectClear()
CQjgHzatZsgTem2PDb.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
}