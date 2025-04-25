
function checkExecutableSkill_Fistofexplosion(CQXLvPerlxiijMcRgjmq)
{
	if (!CQXLvPerlxiijMcRgjmq) return false
local CQxOBNkzGOdqdexz = CQXLvPerlxiijMcRgjmq.sq_IsUseSkill(219)
if (CQxOBNkzGOdqdexz)
	{
		CQXLvPerlxiijMcRgjmq.sq_IntVectClear()
CQXLvPerlxiijMcRgjmq.sq_IntVectPush(0)
CQXLvPerlxiijMcRgjmq.sq_AddSetStatePacket(219, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Fistofexplosion(CQPttg15dXOx52zjY3)
{
	if (!CQPttg15dXOx52zjY3) return false
return true
}


function onSetState_Fistofexplosion(CQ9b9qisellfMtzfiqpM, CQthOsYQ2aJ26klla, CQB4zC7kv4nZ1DThPm6, CQvZZYKJOkBACzTc)
{
	if(!CQ9b9qisellfMtzfiqpM) return
local CQDPzuopjpWi21kT3j = CQ9b9qisellfMtzfiqpM.sq_GetVectorData(CQB4zC7kv4nZ1DThPm6, 0)
CQ9b9qisellfMtzfiqpM.setSkillSubState(CQDPzuopjpWi21kT3j)
switch(CQDPzuopjpWi21kT3j)
	{
	case 0:
		CQ9b9qisellfMtzfiqpM.sq_StopMove()
CQ9b9qisellfMtzfiqpM.sq_SetCurrentAnimation(573)
CQ9b9qisellfMtzfiqpM.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 1:
		CQ9b9qisellfMtzfiqpM.sq_SetCurrentAnimation(572)
CQ9b9qisellfMtzfiqpM.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
break
case 2:
		CQ9b9qisellfMtzfiqpM.sq_SetCurrentAnimation(574)
break
}
	//
}

function onEndCurrentAni_Fistofexplosion(CQRyLHvju16QVWmb8pTo)
{
	if(!CQRyLHvju16QVWmb8pTo) return
local CQinQ5V17nExL3UxR = CQRyLHvju16QVWmb8pTo.getSkillSubState()
switch(CQinQ5V17nExL3UxR)
	{
	case 0:
		CQRyLHvju16QVWmb8pTo.sq_IntVectClear()
CQRyLHvju16QVWmb8pTo.sq_IntVectPush(1)
CQRyLHvju16QVWmb8pTo.sq_AddSetStatePacket(219, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQRyLHvju16QVWmb8pTo.sq_IntVectClear()
CQRyLHvju16QVWmb8pTo.sq_IntVectPush(2)
CQRyLHvju16QVWmb8pTo.sq_AddSetStatePacket(219, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQRyLHvju16QVWmb8pTo.sq_IntVectClear()
CQRyLHvju16QVWmb8pTo.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Fistofexplosion(CQ1j4zIFqigfNAnmkmP, CQU5EtqnDNS2ZTnv, CQHXjFhfzvcZGFbwyj, CQjSG2NBEyZAXevUpEXU)
{
	if(!CQ1j4zIFqigfNAnmkmP || CQjSG2NBEyZAXevUpEXU)	return false
local CQEihTPyMVqDH2vWO = CQ1j4zIFqigfNAnmkmP.getSkillSubState()
switch(CQEihTPyMVqDH2vWO)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Fistofexplosion(CQLmGezcrx1EAtYQBqv, CQlqnA48KOuea5cu22)
{
	if(!CQLmGezcrx1EAtYQBqv || !CQLmGezcrx1EAtYQBqv.isMyControlObject()) return
local CQIlMMGPgX9YSDcr6mHX = CQLmGezcrx1EAtYQBqv.getSkillSubState()
switch(CQIlMMGPgX9YSDcr6mHX)
	{
	case 2:
		switch(CQlqnA48KOuea5cu22)
		{
		case 1:
			sq_SetMyShake(CQLmGezcrx1EAtYQBqv,7,180)
sq_flashScreen(CQLmGezcrx1EAtYQBqv,0,0,150,153,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
CQLmGezcrx1EAtYQBqv.sq_StartWrite()
CQLmGezcrx1EAtYQBqv.sq_WriteDword(219)
CQLmGezcrx1EAtYQBqv.sq_WriteDword(0)
CQLmGezcrx1EAtYQBqv.sq_WriteDword(CQLmGezcrx1EAtYQBqv.sq_GetBonusRateWithPassive(219, -1, 2, getATSwordmanBonus(CQLmGezcrx1EAtYQBqv,1.0,219)))
CQLmGezcrx1EAtYQBqv.sq_WriteDword(CQLmGezcrx1EAtYQBqv.sq_GetBonusRateWithPassive(219, -1, 1, getATSwordmanBonus(CQLmGezcrx1EAtYQBqv,1.0,219)))
CQLmGezcrx1EAtYQBqv.sq_WriteDword(sq_GetIntData(CQLmGezcrx1EAtYQBqv,219, 2))
CQLmGezcrx1EAtYQBqv.sq_WriteDword(sq_GetLevelData(CQLmGezcrx1EAtYQBqv,219, 0, sq_GetSkillLevel(CQLmGezcrx1EAtYQBqv, 219)))
CQLmGezcrx1EAtYQBqv.sq_SendCreatePassiveObjectPacket(24381, 0, 20, 0, 85)
break
}
		break
case 4:

		break
}
}

function onEndState_Fistofexplosion(CQ78yhyrPlIhslxmd, CQrBdQxl5ak5iGztnjl)
{
	if(!CQ78yhyrPlIhslxmd) return
local CQCFAO5Zi4GCIrww = CQ78yhyrPlIhslxmd.getSkillSubState()
switch(CQCFAO5Zi4GCIrww)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onProc_Fistofexplosion(CQcpcVEsVkbFo3Qit3)
{
	if(!CQcpcVEsVkbFo3Qit3) return
local CQAQARUqlpVEWyqWoqwO = CQcpcVEsVkbFo3Qit3.getSkillSubState()
}

function onKeyFrameFlag_Fistofexplosion(CQdzxUf4F1eepTqEK, CQy9XaCJ9n4vtFmuCkV)
{
	if (!CQdzxUf4F1eepTqEK) return false
switch(CQy9XaCJ9n4vtFmuCkV)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Fistofexplosion(CQNNeXsmwiphQxUI)
{
	if(!CQNNeXsmwiphQxUI) return
local CQbG69mh1NR5y1Up54 = CQNNeXsmwiphQxUI.getSkillSubState()
switch(CQbG69mh1NR5y1Up54)
	{
	case 0:

		break
}
}