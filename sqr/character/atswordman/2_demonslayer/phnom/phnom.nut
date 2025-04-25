
function checkExecutableSkill_Phnom(CQzBFrpKKERpCrlkuLf)
{
	if (!CQzBFrpKKERpCrlkuLf) return false
if(CQzBFrpKKERpCrlkuLf.getHp() < sq_GetLevelData(CQzBFrpKKERpCrlkuLf,161, 0, sq_GetSkillLevel(CQzBFrpKKERpCrlkuLf, 161)))
	{
		sq_AddMessage(3599)
return false
}
	local CQOFvSgpb3SwJ3qR = CQzBFrpKKERpCrlkuLf.sq_IsUseSkill(161)
if (CQOFvSgpb3SwJ3qR)
	{
		local CQ8EB1BjPjxcSyqzXs = sq_GetLevelData(CQzBFrpKKERpCrlkuLf,161, 0, sq_GetSkillLevel(CQzBFrpKKERpCrlkuLf, 161))
CQzBFrpKKERpCrlkuLf.setHp(CQzBFrpKKERpCrlkuLf.getHp() - CQ8EB1BjPjxcSyqzXs, null, true)
CQzBFrpKKERpCrlkuLf.sq_IntVectClear()
CQzBFrpKKERpCrlkuLf.sq_IntVectPush(0)
CQzBFrpKKERpCrlkuLf.sq_AddSetStatePacket(161, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Phnom(CQrwvjO25oLgKkmjNTY)
{
	if (!CQrwvjO25oLgKkmjNTY) return false
if(sq_GetSkillLevel(CQrwvjO25oLgKkmjNTY, 163) < 1)
	{
		local CQCxBwQGiMm4DDUY = CQrwvjO25oLgKkmjNTY.sq_GetState()
if(CQCxBwQGiMm4DDUY == 0 || CQCxBwQGiMm4DDUY == 108 || CQCxBwQGiMm4DDUY == 14)
			return true
else
			return false
}
	return true
}


function onSetState_Phnom(CQcdtPjnVgMXIzUll5, CQAM8BMRQuyDF1nhYQtL, CQdHOgyNGB8pOWbcm, CQyazmxy9cswp4bTeT1)
{
	if(!CQcdtPjnVgMXIzUll5) return
local CQNeZs5YatjYtuvb = CQcdtPjnVgMXIzUll5.sq_GetVectorData(CQdHOgyNGB8pOWbcm, 0)
CQcdtPjnVgMXIzUll5.setSkillSubState(CQNeZs5YatjYtuvb)
switch(CQNeZs5YatjYtuvb)
	{
	case 0:
		CQcdtPjnVgMXIzUll5.sq_StopMove()
BodyCalldaimus(CQcdtPjnVgMXIzUll5, "phnomcast")
CQcdtPjnVgMXIzUll5.sq_SetCurrentAnimation(425)
break
case 1:
		BodyCalldaimus(CQcdtPjnVgMXIzUll5, "phnomkelkus")
CQcdtPjnVgMXIzUll5.sq_SetCurrentAnimation(429)
CQcdtPjnVgMXIzUll5.sq_SetCurrentAttackInfo(107)
local CQbcwCHB1CGgElYxG5 = CQcdtPjnVgMXIzUll5.sq_GetBonusRateWithPassive(161, -1, 0, getATSwordmanBonus(CQcdtPjnVgMXIzUll5,1.0,161))
CQcdtPjnVgMXIzUll5.sq_SetCurrentAttackBonusRate(CQbcwCHB1CGgElYxG5)
CQcdtPjnVgMXIzUll5.setTimeEvent(0,sq_GetIntData(CQcdtPjnVgMXIzUll5,161, 2),sq_GetIntData(CQcdtPjnVgMXIzUll5,161, 1),false)
break
case 2:
		BodyCalldaimus(CQcdtPjnVgMXIzUll5, "phnomdaimus")
CQcdtPjnVgMXIzUll5.sq_SetCurrentAnimation(426)
CQcdtPjnVgMXIzUll5.sq_SetCurrentAttackInfo(108)
local CQbcwCHB1CGgElYxG5 = CQcdtPjnVgMXIzUll5.sq_GetBonusRateWithPassive(161, -1, 0, getATSwordmanBonus(CQcdtPjnVgMXIzUll5,1.0,161))
CQcdtPjnVgMXIzUll5.sq_SetCurrentAttackBonusRate(CQbcwCHB1CGgElYxG5)
CQcdtPjnVgMXIzUll5.setTimeEvent(1,160,sq_GetIntData(CQcdtPjnVgMXIzUll5,161, 0),false)
break
case 3:
		BodyCalldaimus(CQcdtPjnVgMXIzUll5, "phnomexplosion")
CQcdtPjnVgMXIzUll5.sq_SetCurrentAnimation(427)
CQcdtPjnVgMXIzUll5.sq_SetCurrentAttackInfo(109)
local CQbcwCHB1CGgElYxG5 = CQcdtPjnVgMXIzUll5.sq_GetBonusRateWithPassive(161, -1, 0, getATSwordmanBonus(CQcdtPjnVgMXIzUll5,1.0,161))
CQcdtPjnVgMXIzUll5.sq_SetCurrentAttackBonusRate(CQbcwCHB1CGgElYxG5)
break
}
	CQcdtPjnVgMXIzUll5.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Phnom(CQmJ4EX8hZwBi2eQ)
{
	if(!CQmJ4EX8hZwBi2eQ) return
local CQJsELaXyT4GrtenTK = CQmJ4EX8hZwBi2eQ.getSkillSubState()
switch(CQJsELaXyT4GrtenTK)
	{
	case 0:
		CQmJ4EX8hZwBi2eQ.sq_IntVectClear()
CQmJ4EX8hZwBi2eQ.sq_IntVectPush(1)
CQmJ4EX8hZwBi2eQ.sq_AddSetStatePacket(161, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQmJ4EX8hZwBi2eQ.sq_IntVectClear()
CQmJ4EX8hZwBi2eQ.sq_IntVectPush(2)
CQmJ4EX8hZwBi2eQ.sq_AddSetStatePacket(161, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQmJ4EX8hZwBi2eQ.sq_IntVectClear()
CQmJ4EX8hZwBi2eQ.sq_IntVectPush(3)
CQmJ4EX8hZwBi2eQ.sq_AddSetStatePacket(161, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQmJ4EX8hZwBi2eQ.sq_IntVectClear()
CQmJ4EX8hZwBi2eQ.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Phnom(CQkrj8ms6Eoam5wrcTCf, CQavGYRlm2fWWDQqn, CQ5gniV5BjPbqzQyE5b, CQwhMJIJzoQjvHqe)
{
	if(!CQkrj8ms6Eoam5wrcTCf || CQwhMJIJzoQjvHqe)	return false
local CQZ4n5TqEM37QWqoFL = CQkrj8ms6Eoam5wrcTCf.getSkillSubState()
Calldaimus_onAttack(CQkrj8ms6Eoam5wrcTCf,CQavGYRlm2fWWDQqn, CQ5gniV5BjPbqzQyE5b, CQwhMJIJzoQjvHqe)
switch(CQZ4n5TqEM37QWqoFL)
	{
	case 0:

		break
case 1:

		break
}

}

function onTimeEvent_Phnom(CQzZNx2jdviBb3mtKTuF, CQOPyyD1eudGzyUw7, CQ8ydFWoJBOsnTUif53)
{
	if(!CQzZNx2jdviBb3mtKTuF) return
switch(CQOPyyD1eudGzyUw7)
	{
	case 0:
		CQzZNx2jdviBb3mtKTuF.resetHitObjectList()
break
case 1:
		local CQWnA3lnvclWxFnW = CQ8ydFWoJBOsnTUif53%4
CQzZNx2jdviBb3mtKTuF.sq_StartWrite()
CQzZNx2jdviBb3mtKTuF.sq_WriteDword(161)
CQzZNx2jdviBb3mtKTuF.sq_WriteDword(1)
CQzZNx2jdviBb3mtKTuF.sq_WriteDword(CQzZNx2jdviBb3mtKTuF.sq_GetBonusRateWithPassive(161, -1, 2, getATSwordmanBonus(CQzZNx2jdviBb3mtKTuF,1.0,161)))
CQzZNx2jdviBb3mtKTuF.sq_WriteDword(CQWnA3lnvclWxFnW)
CQzZNx2jdviBb3mtKTuF.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 60)
if(CQzZNx2jdviBb3mtKTuF.isMyControlObject())
		{
			CQzZNx2jdviBb3mtKTuF.sq_SetShake(CQzZNx2jdviBb3mtKTuF,3,40)
sq_flashScreen(CQzZNx2jdviBb3mtKTuF, 35, 15, 35, 180, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, 0)
}
		if(CQ8ydFWoJBOsnTUif53 >= sq_GetIntData(CQzZNx2jdviBb3mtKTuF,161, 0))
		{
			CQzZNx2jdviBb3mtKTuF.sq_IntVectClear()
CQzZNx2jdviBb3mtKTuF.sq_IntVectPush(3)
CQzZNx2jdviBb3mtKTuF.sq_AddSetStatePacket(161, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
}
}

function onEnterFrame_Phnom(CQVjcl3MOWJbjxbEzL, CQY5XrpDjCnkdJbuyQhi)
{
	if(!CQVjcl3MOWJbjxbEzL) return
local CQSXxSbyuzB7kttIp = CQVjcl3MOWJbjxbEzL.getSkillSubState()
switch(CQSXxSbyuzB7kttIp)
	{
	case 3:
		if(CQY5XrpDjCnkdJbuyQhi == 3 && CQVjcl3MOWJbjxbEzL.isMyControlObject())
		{
			CQVjcl3MOWJbjxbEzL.sq_SetShake(CQVjcl3MOWJbjxbEzL,4,40)
sq_flashScreen(CQVjcl3MOWJbjxbEzL, 35, 50, 35, 180, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, 0)
CQVjcl3MOWJbjxbEzL.sq_StartWrite()
CQVjcl3MOWJbjxbEzL.sq_WriteDword(161)
CQVjcl3MOWJbjxbEzL.sq_WriteDword(2)
CQVjcl3MOWJbjxbEzL.sq_WriteDword(CQVjcl3MOWJbjxbEzL.sq_GetBonusRateWithPassive(161, -1, 4, getATSwordmanBonus(CQVjcl3MOWJbjxbEzL,1.0,161)))
CQVjcl3MOWJbjxbEzL.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 60)
}
		break
case 4:

		break
}
}

function onEndState_Phnom(CQfAXM9fCsr9f5WpITs, CQuuejZVqL616iWA)
{
	if(!CQfAXM9fCsr9f5WpITs) return
local CQMU6wEPFTEKRlra15 = CQfAXM9fCsr9f5WpITs.getSkillSubState()
switch(CQMU6wEPFTEKRlra15)
	{
	case 3:

		break
case 4:

		break
}

}

function onProc_Phnom(CQnTaOnc9EgO7GeD5QKg)
{
	if(!CQnTaOnc9EgO7GeD5QKg) return
local CQp7kBN7E2Su2ceO9Li = CQnTaOnc9EgO7GeD5QKg.getSkillSubState()
}

function onKeyFrameFlag_Phnom(CQ3VJgPZMjcm83wH, CQqDmmwecoZl3yQSQs)
{
	if (!CQ3VJgPZMjcm83wH) return false
switch(CQqDmmwecoZl3yQSQs)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Phnom(CQKoJsjTKMqdB6QIW5DZ)
{
	if(!CQKoJsjTKMqdB6QIW5DZ) return
local CQTpUC14gv114FqGi = CQKoJsjTKMqdB6QIW5DZ.getSkillSubState()
switch(CQTpUC14gv114FqGi)
	{
	case 2:
		if(sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL))
		{
			CQKoJsjTKMqdB6QIW5DZ.sq_IntVectClear()
CQKoJsjTKMqdB6QIW5DZ.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
}
}