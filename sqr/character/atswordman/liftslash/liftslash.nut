
function checkExecutableSkill_Liftslash(CQIzWWtlEE6F9Q6xAb)
{
	if (!CQIzWWtlEE6F9Q6xAb) return false
local CQ7x8Sz5M2HajM6kGDLj = CQIzWWtlEE6F9Q6xAb.sq_IsUseSkill(86)
if (CQ7x8Sz5M2HajM6kGDLj)
	{
		CheckUseAddloadDrawsword(CQIzWWtlEE6F9Q6xAb,143,{[0] = true,[108] = true,[14] = true},0)
CQIzWWtlEE6F9Q6xAb.sq_IntVectClear()
CQIzWWtlEE6F9Q6xAb.sq_IntVectPush(0)
CQIzWWtlEE6F9Q6xAb.sq_AddSetStatePacket(86, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Liftslash(CQcdI14acjnrdIkvZ)
{
	
	if (!CQcdI14acjnrdIkvZ) return false
if(CQcdI14acjnrdIkvZ.getZPos() > 10)
		return false
return CheckForceDrawsword(CQcdI14acjnrdIkvZ,143,{[0] = true,[108] = true,[14] = true})
}

function onSetState_Liftslash(CQA1lkGqKoBv5hkz, CQ9JLwyjgMrjfPjUg, CQtsQPxJtv566khYTyF, CQBr4NXo5upV1BhQ)
{
	if(!CQA1lkGqKoBv5hkz) return
local CQvYpganUBgG7wgnuv = CQA1lkGqKoBv5hkz.sq_GetVectorData(CQtsQPxJtv566khYTyF, 0)
CQA1lkGqKoBv5hkz.setSkillSubState(CQvYpganUBgG7wgnuv)
switch(CQvYpganUBgG7wgnuv)
	{
	case 0:
		CQA1lkGqKoBv5hkz.sq_StopMove()
CQA1lkGqKoBv5hkz.sq_SetMoveDirection(CQA1lkGqKoBv5hkz.getDirection(), ENUM_DIRECTION_NEUTRAL)
CQA1lkGqKoBv5hkz.sq_SetStaticMoveInfo(0, 150, 150, false)
BodyMagicSword(CQA1lkGqKoBv5hkz, "LiftSlash")
if(MagicSword_IsAppebd(CQA1lkGqKoBv5hkz))
			CQA1lkGqKoBv5hkz.sq_SetCurrentAnimation(218)
else
		{
			if(sq_GetSkillLevel(CQA1lkGqKoBv5hkz, 148) > 0)
			{
				BodyCalldaimus(CQA1lkGqKoBv5hkz, "LiftSlash")
CQA1lkGqKoBv5hkz.sq_SetCurrentAnimation(392)
}
			else
				CQA1lkGqKoBv5hkz.sq_SetCurrentAnimation(6)
}
		CQA1lkGqKoBv5hkz.sq_SetCurrentAttackInfo(5)
local CQDR3qU1ScSa21RraDNl = CQA1lkGqKoBv5hkz.sq_GetBonusRateWithPassive(86, -1, 0, getATSwordmanBonus(CQA1lkGqKoBv5hkz,1.0,86))
CQA1lkGqKoBv5hkz.sq_SetCurrentAttackBonusRate(CQDR3qU1ScSa21RraDNl)
sq_SetCurrentAttacknUpForce(sq_GetCurrentAttackInfo(CQA1lkGqKoBv5hkz),sq_GetLevelData(CQA1lkGqKoBv5hkz,86, 2, sq_GetSkillLevel(CQA1lkGqKoBv5hkz, 86)))
break
}
	CQA1lkGqKoBv5hkz.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}


function onAttack_Liftslash(CQR2psfDTWxrVORqP, CQiKhCCboCLyKjfbFum, CQ1IGfsf9zqUBSde, CQUWbnkVws1TLQdU7b)
{
	if(!CQR2psfDTWxrVORqP) return false
local CQHvNE1tHLy9GN9WfDpX = CQR2psfDTWxrVORqP.getSkillSubState()
switch(CQHvNE1tHLy9GN9WfDpX)
	{
	case 0:
		MagicSword_BasiconAttack(CQR2psfDTWxrVORqP, CQiKhCCboCLyKjfbFum, CQ1IGfsf9zqUBSde, CQUWbnkVws1TLQdU7b)
break
case 1:
		
		break
}

}
function onEndCurrentAni_Liftslash(CQjgyZScYT8MXe8Qk)
{
	if(!CQjgyZScYT8MXe8Qk) return
local CQE3d8r8IEIJHgzueS6 = CQjgyZScYT8MXe8Qk.getSkillSubState()
switch(CQE3d8r8IEIJHgzueS6)
	{
	case 0:
		CQjgyZScYT8MXe8Qk.sq_IntVectClear()
CQjgyZScYT8MXe8Qk.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onProc_Liftslash(CQ4LyvlO32kIAPlr)
{
	if(!CQ4LyvlO32kIAPlr) return
local CQQP9i3eyhGyJkTppy = CQ4LyvlO32kIAPlr.getSkillSubState()
}
