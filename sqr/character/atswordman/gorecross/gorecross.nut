
function checkExecutableSkill_Gorecross(CQYWlTnSu8wgDMvJG)
{
	if (!CQYWlTnSu8wgDMvJG) return false
local CQSvKrdvXx35IrYBLfK = CQYWlTnSu8wgDMvJG.sq_IsUseSkill(94)
if (CQSvKrdvXx35IrYBLfK)
	{
		CheckUseAddloadDrawsword(CQYWlTnSu8wgDMvJG,143,{[0] = true,[108] = true,[14] = true},0)
CQYWlTnSu8wgDMvJG.sq_IntVectClear()
CQYWlTnSu8wgDMvJG.sq_IntVectPush(0)
CQYWlTnSu8wgDMvJG.sq_AddSetStatePacket(94, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Gorecross(CQfgqSXdmOoCo3cZ)
{
	if (!CQfgqSXdmOoCo3cZ) return false
if(CQfgqSXdmOoCo3cZ.getZPos() > 10)
		return false
return CheckForceDrawsword(CQfgqSXdmOoCo3cZ,143,{[0] = true,[108] = true,[14] = true})
}

function onSetState_Gorecross(CQu33MaCD6fDOAc1RN, CQGLpjjW8QPEpTxVk, CQhO3wMxEaletFz4cDD, CQptoOA6M4JYQxzM)
{
	if(!CQu33MaCD6fDOAc1RN) return
local CQ3bgBrIcmUhy1Q7Eu = CQu33MaCD6fDOAc1RN.sq_GetVectorData(CQhO3wMxEaletFz4cDD, 0)
CQu33MaCD6fDOAc1RN.setSkillSubState(CQ3bgBrIcmUhy1Q7Eu)
switch(CQ3bgBrIcmUhy1Q7Eu)
	{
	case 0:
		CQu33MaCD6fDOAc1RN.getVar("Gorecross").setBool(0,false)
CQu33MaCD6fDOAc1RN.sq_IsEnterSkillLastKeyUnits(94)
CQu33MaCD6fDOAc1RN.sq_StopMove()
BodyMagicSword(CQu33MaCD6fDOAc1RN, "GoreCross")
if(MagicSword_IsAppebd(CQu33MaCD6fDOAc1RN))
			CQu33MaCD6fDOAc1RN.sq_SetCurrentAnimation(214)
else
		{
			if(sq_GetSkillLevel(CQu33MaCD6fDOAc1RN, 148) > 0)
			{
				BodyCalldaimus(CQu33MaCD6fDOAc1RN, "GoreCross")
CQu33MaCD6fDOAc1RN.sq_SetCurrentAnimation(388)
}
			else
				CQu33MaCD6fDOAc1RN.sq_SetCurrentAnimation(9)
}
			
		CQu33MaCD6fDOAc1RN.sq_SetCurrentAttackInfo(8)
local CQqhFRTwKGN5wWq3ONBz = CQu33MaCD6fDOAc1RN.sq_GetBonusRateWithPassive(94, -1, 0, getATSwordmanBonus(CQu33MaCD6fDOAc1RN,1.0,94))
CQu33MaCD6fDOAc1RN.sq_SetCurrentAttackBonusRate(CQqhFRTwKGN5wWq3ONBz)
break
case 1:
		BodyMagicSword(CQu33MaCD6fDOAc1RN, "GoreCross_Finish")
if(MagicSword_IsAppebd(CQu33MaCD6fDOAc1RN))
			CQu33MaCD6fDOAc1RN.sq_SetCurrentAnimation(215)
else
		{
			if(sq_GetSkillLevel(CQu33MaCD6fDOAc1RN, 148) > 0)
			{
				BodyCalldaimus(CQu33MaCD6fDOAc1RN, "GoreCross_Finish")
CQu33MaCD6fDOAc1RN.sq_SetCurrentAnimation(389)
}
			else
				CQu33MaCD6fDOAc1RN.sq_SetCurrentAnimation(10)
}
			
		CQu33MaCD6fDOAc1RN.sq_SetCurrentAttackInfo(9)
local CQqhFRTwKGN5wWq3ONBz = CQu33MaCD6fDOAc1RN.sq_GetBonusRateWithPassive(94, -1, 4, getATSwordmanBonus(CQu33MaCD6fDOAc1RN,1.0,94))
CQu33MaCD6fDOAc1RN.sq_SetCurrentAttackBonusRate(CQqhFRTwKGN5wWq3ONBz)
break
}
	//CQu33MaCD6fDOAc1RN.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}
function onEndCurrentAni_Gorecross(CQT5NsiKtn6FeSm5JDU)
{
	if(!CQT5NsiKtn6FeSm5JDU) return
local CQsCtXYE5DaHUlUR = CQT5NsiKtn6FeSm5JDU.getSkillSubState()
switch(CQsCtXYE5DaHUlUR)
	{
	case 0:
		if(CQT5NsiKtn6FeSm5JDU.getVar("Gorecross").getBool(0))
		{
			CQT5NsiKtn6FeSm5JDU.sq_IntVectClear()
CQT5NsiKtn6FeSm5JDU.sq_IntVectPush(1)
CQT5NsiKtn6FeSm5JDU.sq_AddSetStatePacket(94, STATE_PRIORITY_IGNORE_FORCE, true)
}
		else
		{
			CQT5NsiKtn6FeSm5JDU.sq_IntVectClear()
CQT5NsiKtn6FeSm5JDU.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
case 1:
		CQT5NsiKtn6FeSm5JDU.sq_IntVectClear()
CQT5NsiKtn6FeSm5JDU.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}
function onAttack_Gorecross(CQ6S9d7kUNhscGU8fS, CQeitnK2CYDtmrn4jfo7, CQXm9poGTAcnY3bfz, CQxTOLvUo8Xkltb7vN5)
{
	if(!CQ6S9d7kUNhscGU8fS) return false
local CQP7z8VR9xQ8bkvh = CQ6S9d7kUNhscGU8fS.getSkillSubState()
MagicswordupOccur(CQ6S9d7kUNhscGU8fS, CQeitnK2CYDtmrn4jfo7, CQXm9poGTAcnY3bfz, CQxTOLvUo8Xkltb7vN5)
}
function onEnterFrame_Gorecross(CQ9VZYONwI2NzDYdsD, CQtDwiQuH6uHhzYTSfkX)
{
	if(!CQ9VZYONwI2NzDYdsD) return
local CQBo5HhvYQ9sx1rgH = CQ9VZYONwI2NzDYdsD.getSkillSubState()
switch(CQBo5HhvYQ9sx1rgH)
	{
	case 0:
		if(CQtDwiQuH6uHhzYTSfkX == 2)
		{
			CQ9VZYONwI2NzDYdsD.sq_StartWrite()
CQ9VZYONwI2NzDYdsD.sq_WriteDword(94)
CQ9VZYONwI2NzDYdsD.sq_WriteDword(0)
CQ9VZYONwI2NzDYdsD.sq_WriteDword(CQ9VZYONwI2NzDYdsD.sq_GetBonusRateWithPassive(94, -1, 2, 1.0))
CQ9VZYONwI2NzDYdsD.sq_SendCreatePassiveObjectPacket(24383, 0, 80, 0, 60)
}
		break
case 1:
		if(CQtDwiQuH6uHhzYTSfkX == 2)
		{
			CQ9VZYONwI2NzDYdsD.sq_StartWrite()
CQ9VZYONwI2NzDYdsD.sq_WriteDword(94)
CQ9VZYONwI2NzDYdsD.sq_WriteDword(1)
CQ9VZYONwI2NzDYdsD.sq_WriteDword(CQ9VZYONwI2NzDYdsD.sq_GetBonusRateWithPassive(94, -1, 6, 1.0))
CQ9VZYONwI2NzDYdsD.sq_SendCreatePassiveObjectPacket(24383, 0, 80, 0, 60)
}
		break
}
}

function onProcCon_Gorecross(CQvqE5N9IaOtjWrx5NO)
{
	if(!CQvqE5N9IaOtjWrx5NO) return
local CQDl4xPA33Tnd4ek = CQvqE5N9IaOtjWrx5NO.getSkillSubState()
switch(CQDl4xPA33Tnd4ek)
	{
	case 0:
		local CQR8EtzWymHk5uwvgD = CQvqE5N9IaOtjWrx5NO.getCurrentAnimation()
local CQUBjF4zXGb8flwzTvPr = CQvqE5N9IaOtjWrx5NO.sq_GetCurrentFrameIndex(CQR8EtzWymHk5uwvgD)
if(CQUBjF4zXGb8flwzTvPr < 3)
			break
if(sq_IsKeyDown(OPTION_HOTKEY_ATTACK , ENUM_SUBKEY_TYPE_ALL) || CQvqE5N9IaOtjWrx5NO.isDownSkillLastKey())
			CQvqE5N9IaOtjWrx5NO.getVar("Gorecross").setBool(0,true)
break
}
}


function onAttack_Gorecross(CQHFH3GXU1BN6FQUWSq, CQjEnTyISbrH1xqY, CQEwMrcQ7D5I72qQay, CQ4euS65pdpP2tmnPNE2)
{
	if(!CQHFH3GXU1BN6FQUWSq) return false
Calldaimus_onAttack(CQHFH3GXU1BN6FQUWSq,CQjEnTyISbrH1xqY, CQEwMrcQ7D5I72qQay, CQ4euS65pdpP2tmnPNE2)
}

function onProc_Gorecross(CQQcfMaKNYRuV5UxN)
{
	if(!CQQcfMaKNYRuV5UxN) return
local CQLfujUqxPSq3DUm3D6 = CQQcfMaKNYRuV5UxN.getSkillSubState()
}
