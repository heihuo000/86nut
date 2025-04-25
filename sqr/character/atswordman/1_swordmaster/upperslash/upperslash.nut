
function checkExecutableSkill_Upperslash(CQ7jTaT4RWNOQfWM)
{
	if (!CQ7jTaT4RWNOQfWM) return false
local CQvfHLoqouF7S8vp7yP = CQ7jTaT4RWNOQfWM.sq_IsUseSkill(128)
if (CQvfHLoqouF7S8vp7yP)
	{
		CQ7jTaT4RWNOQfWM.sq_StopMove()
CheckUseAddloadDrawsword(CQ7jTaT4RWNOQfWM,128,{[0] = true,[108] = true,[14] = true},0)
CQ7jTaT4RWNOQfWM.sq_IntVectClear()
CQ7jTaT4RWNOQfWM.sq_IntVectPush(0)
CQ7jTaT4RWNOQfWM.sq_AddSetStatePacket(128, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Upperslash(CQE5IFRqwgtvqxbTrMc8)
{
	if (!CQE5IFRqwgtvqxbTrMc8) return false
if(CQE5IFRqwgtvqxbTrMc8.getZPos() > 10)
		return false
return CheckForceDrawsword(CQE5IFRqwgtvqxbTrMc8,128,{[0] = true,[108] = true,[14] = true})
}


function onSetState_Upperslash(CQgqUQqjVZySPiPD86MQ, CQol1OgJll8FE8OZR, CQ2zUBFoGasaAEIGkZq, CQm91RtndKkraYIC)
{
	if(!CQgqUQqjVZySPiPD86MQ) return
local CQJNimz1sjGvuLsKuI = CQgqUQqjVZySPiPD86MQ.sq_GetVectorData(CQ2zUBFoGasaAEIGkZq, 0)
CQgqUQqjVZySPiPD86MQ.setSkillSubState(CQJNimz1sjGvuLsKuI)
switch(CQJNimz1sjGvuLsKuI)
	{
	case 0:

		BodyMagicSword(CQgqUQqjVZySPiPD86MQ, "UpperSlash1")
if(MagicSword_IsAppebd(CQgqUQqjVZySPiPD86MQ))
			CQgqUQqjVZySPiPD86MQ.sq_SetCurrentAnimation(329)
else
			CQgqUQqjVZySPiPD86MQ.sq_SetCurrentAnimation(77)
CQgqUQqjVZySPiPD86MQ.sq_SetCurrentAttackInfo(60)
local CQkHfa4D2pvjenaNE6p6 = CQgqUQqjVZySPiPD86MQ.sq_GetBonusRateWithPassive(128, -1, 0,getATSwordmanBonus(CQgqUQqjVZySPiPD86MQ,1.0,128))
CQgqUQqjVZySPiPD86MQ.sq_SetCurrentAttackBonusRate(CQkHfa4D2pvjenaNE6p6)
CQgqUQqjVZySPiPD86MQ.sq_SetMoveDirection(CQgqUQqjVZySPiPD86MQ.getDirection(), ENUM_DIRECTION_NEUTRAL)
CQgqUQqjVZySPiPD86MQ.sq_SetStaticMoveInfo(0, 400, -1000, false)
local CQEaSXGyv1C6o6JXO = sq_GetIntData(CQgqUQqjVZySPiPD86MQ,128, 3) + 1
local CQ4eYdyfLgeVWoH2BZ = sq_GetCurrentAnimation(CQgqUQqjVZySPiPD86MQ)
local CQQcVb9Vhu4Gq9GB2zHE = sq_GetDelaySum(CQ4eYdyfLgeVWoH2BZ)
CQgqUQqjVZySPiPD86MQ.setTimeEvent(0,CQQcVb9Vhu4Gq9GB2zHE/CQEaSXGyv1C6o6JXO,CQEaSXGyv1C6o6JXO,true)
break
case 1:
		CQgqUQqjVZySPiPD86MQ.sq_StopMove()
BodyMagicSword(CQgqUQqjVZySPiPD86MQ, "UpperSlash2")
if(MagicSword_IsAppebd(CQgqUQqjVZySPiPD86MQ))
			CQgqUQqjVZySPiPD86MQ.sq_SetCurrentAnimation(330)
else
			CQgqUQqjVZySPiPD86MQ.sq_SetCurrentAnimation(78)
CQgqUQqjVZySPiPD86MQ.sq_SetCurrentAttackInfo(61)
local CQkHfa4D2pvjenaNE6p6 = CQgqUQqjVZySPiPD86MQ.sq_GetBonusRateWithPassive(128, -1, 1, getATSwordmanBonus(CQgqUQqjVZySPiPD86MQ,1.0,128))
CQgqUQqjVZySPiPD86MQ.sq_SetCurrentAttackBonusRate(CQkHfa4D2pvjenaNE6p6)
break
case 2:
		BodyMagicSword(CQgqUQqjVZySPiPD86MQ, "UpperSlash2Lv95Passive_Body")
if(MagicSword_IsAppebd(CQgqUQqjVZySPiPD86MQ))
			CQgqUQqjVZySPiPD86MQ.sq_SetCurrentAnimation(331)
else
			CQgqUQqjVZySPiPD86MQ.sq_SetCurrentAnimation(80)
CQgqUQqjVZySPiPD86MQ.sq_SetCurrentAttackInfo(62)
local CQkHfa4D2pvjenaNE6p6 = CQgqUQqjVZySPiPD86MQ.sq_GetBonusRateWithPassive(128, -1, 2, getATSwordmanBonus(CQgqUQqjVZySPiPD86MQ,1.0,128))
CQgqUQqjVZySPiPD86MQ.sq_SetCurrentAttackBonusRate(CQkHfa4D2pvjenaNE6p6)
break
}
	CQgqUQqjVZySPiPD86MQ.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Upperslash(CQrJr7n7mtPvbZFVUs)
{
	if(!CQrJr7n7mtPvbZFVUs) return
local CQCs7YfOBVzjwUD4w6A9 = CQrJr7n7mtPvbZFVUs.getSkillSubState()
switch(CQCs7YfOBVzjwUD4w6A9)
	{
	case 0:
		CQrJr7n7mtPvbZFVUs.sq_IntVectClear()
CQrJr7n7mtPvbZFVUs.sq_IntVectPush(1)
CQrJr7n7mtPvbZFVUs.sq_AddSetStatePacket(128, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQrJr7n7mtPvbZFVUs.sq_IntVectClear()
CQrJr7n7mtPvbZFVUs.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQrJr7n7mtPvbZFVUs.sq_IntVectClear()
CQrJr7n7mtPvbZFVUs.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onTimeEvent_Upperslash(CQcrIuCezxK6n8SMt, CQAYTHelErUVxES7oZg, CQdRK5kLfZNGUdA3)
{
	if(!CQcrIuCezxK6n8SMt)	return false
switch(CQAYTHelErUVxES7oZg)
	{
	case 0:
		CQcrIuCezxK6n8SMt.resetHitObjectList()
break
}
}

function onAttack_Upperslash(CQy2qz1arltacKPdCI, CQNK3tSqKa7IkbP616bV, CQbIqFr3bKayYXOg5, CQFt22THOjhUToL9xZJ)
{
	if(!CQy2qz1arltacKPdCI)	return false
local CQgyoTJo4pDTR9Lk = CQy2qz1arltacKPdCI.getSkillSubState()
MagicswordupOccur(CQy2qz1arltacKPdCI, CQNK3tSqKa7IkbP616bV, CQbIqFr3bKayYXOg5, CQFt22THOjhUToL9xZJ)
switch(CQgyoTJo4pDTR9Lk)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Upperslash(CQongrogu1Y97aKfqL, CQ2jFAvMCgXMgRJlrl3y)
{
	if(!CQongrogu1Y97aKfqL) return
local CQm5bM8DquQJ8ZJhD = CQongrogu1Y97aKfqL.getSkillSubState()
switch(CQm5bM8DquQJ8ZJhD)
	{
	case 3:

		break
case 4:

		break
}
}

function onEndState_Upperslash(CQJXBhLvFN2O3nHdJ6e, CQkAtQpd9Yiy9CGT)
{
	if(!CQJXBhLvFN2O3nHdJ6e) return
local CQauBOgSatdU4pGgNZ = CQJXBhLvFN2O3nHdJ6e.getSkillSubState()
switch(CQauBOgSatdU4pGgNZ)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onKeyFrameFlag_Upperslash(CQ5UtVBt1COlNdFxhleY, CQwk8ROxYxT95sDkl)
{
	if (!CQ5UtVBt1COlNdFxhleY) return false
switch(CQwk8ROxYxT95sDkl)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Upperslash(CQZ6OmQCLIJMMbDvv6B)
{
	if(!CQZ6OmQCLIJMMbDvv6B) return
local CQ8CzahOhZnKXXSzme = CQZ6OmQCLIJMMbDvv6B.getSkillSubState()
switch(CQ8CzahOhZnKXXSzme)
	{
	case 0:

		break
}
}

function onProc_Upperslash(CQWSZXMwPTBO1mVUsZUK)
{
	if(!CQWSZXMwPTBO1mVUsZUK) return
local CQViwdy65aryV8CYA = CQWSZXMwPTBO1mVUsZUK.getSkillSubState()
}
