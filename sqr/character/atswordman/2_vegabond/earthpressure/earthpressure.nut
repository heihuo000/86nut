
function checkExecutableSkill_Earthpressure(CQLMjWbRpoW5ja7J9J)
{
	if (!CQLMjWbRpoW5ja7J9J) return false
local CQlHHD9FNM6VdR6Dgjbg = CQLMjWbRpoW5ja7J9J.sq_IsUseSkill(214)
if (CQlHHD9FNM6VdR6Dgjbg)
	{
		CQLMjWbRpoW5ja7J9J.sq_IntVectClear()
CQLMjWbRpoW5ja7J9J.sq_IntVectPush(0)
CQLMjWbRpoW5ja7J9J.sq_AddSetStatePacket(214, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Earthpressure(CQIaU2ZueREF5O5ZQ)
{
	if (!CQIaU2ZueREF5O5ZQ) return false
return true
}


function onSetState_Earthpressure(CQ7eMkEYJugEfj5HW3J, CQrcueUBRBDr6C4V, CQCffPMAOdcv1q3LaJ, CQc1SNAW4WZhCN3NXk2H)
{
	if(!CQ7eMkEYJugEfj5HW3J) return
local CQA2Yhe8nCq62s2XN = CQ7eMkEYJugEfj5HW3J.sq_GetVectorData(CQCffPMAOdcv1q3LaJ, 0)
CQ7eMkEYJugEfj5HW3J.setSkillSubState(CQA2Yhe8nCq62s2XN)
switch(CQA2Yhe8nCq62s2XN)
	{
	case 0:
		CQ7eMkEYJugEfj5HW3J.sq_StopMove()
CQ7eMkEYJugEfj5HW3J.sq_PlaySound("SW_EARTH_PRESSURE")
local CQdLAqkXCz2VVg1244w = "character/swordman/effect/animation/atearthpressure/earthpressureeffect_effect.ani"
DarktemplerCreateAniPooledObj(CQ7eMkEYJugEfj5HW3J, CQdLAqkXCz2VVg1244w , true , true, CQ7eMkEYJugEfj5HW3J.getXPos(), CQ7eMkEYJugEfj5HW3J.getYPos(), 0,1.0)
CQ7eMkEYJugEfj5HW3J.sq_SetCurrentAnimation(553)
CQ7eMkEYJugEfj5HW3J.sq_SetCurrentAttackInfo(0)
local CQyOcI1ITeuFKP1B = CQ7eMkEYJugEfj5HW3J.sq_GetBonusRateWithPassive(214, -1, 0,getATSwordmanBonus(CQ7eMkEYJugEfj5HW3J,1.0,214))
CQ7eMkEYJugEfj5HW3J.sq_SetCurrentAttackBonusRate(CQyOcI1ITeuFKP1B)
CQ7eMkEYJugEfj5HW3J.sq_StartWrite()
CQ7eMkEYJugEfj5HW3J.sq_WriteDword(214)
CQ7eMkEYJugEfj5HW3J.sq_WriteDword(0)
CQ7eMkEYJugEfj5HW3J.sq_WriteDword(CQ7eMkEYJugEfj5HW3J.sq_GetBonusRateWithPassive(214, -1, 0, getATSwordmanBonus(CQ7eMkEYJugEfj5HW3J,1.0,214)))
CQ7eMkEYJugEfj5HW3J.sq_WriteDword(sq_GetIntData(CQ7eMkEYJugEfj5HW3J,214, 0))
CQ7eMkEYJugEfj5HW3J.sq_SendCreatePassiveObjectPacket(24381, 0, 0, -1, 0)
break
}
	CQ7eMkEYJugEfj5HW3J.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Earthpressure(CQNtCVSliL9aBmM5v3)
{
	if(!CQNtCVSliL9aBmM5v3) return
local CQbbrfc58TIrLBN1mmao = CQNtCVSliL9aBmM5v3.getSkillSubState()
switch(CQbbrfc58TIrLBN1mmao)
	{
	case 0:
		CQNtCVSliL9aBmM5v3.sq_IntVectClear()
CQNtCVSliL9aBmM5v3.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Earthpressure(CQFh6U6sQETvGQN8e, CQg4saJqMJHjXf94yj8, CQoZTZojchb6HI8f, CQ2PK9vJsoVVAh87Z3)
{
	if(!CQFh6U6sQETvGQN8e || CQ2PK9vJsoVVAh87Z3)	return false
local CQmyTv8pgMeNJC73Bq9U = CQFh6U6sQETvGQN8e.getSkillSubState()
switch(CQmyTv8pgMeNJC73Bq9U)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Earthpressure(CQanJoIntR5JSq7d2, CQ5jmKq1ZypIsN66)
{
	if(!CQanJoIntR5JSq7d2) return
local CQw526gFUBRtDe5gcE = CQanJoIntR5JSq7d2.getSkillSubState()
switch(CQ5jmKq1ZypIsN66)
	{
	case 6:
		sq_SetMyShake(CQanJoIntR5JSq7d2,2,250)
sq_flashScreen(CQanJoIntR5JSq7d2,0,100,0,102,sq_RGB(192,192,192),GRAPHICEFFECT_LINEARDODGE,ENUM_DRAWLAYER_BOTTOM)
break
case 4:

		break
}
}

function onEndState_Earthpressure(CQZXocByScAUIg59nj4X, CQzAguOfTWxToO4kw)
{
	if(!CQZXocByScAUIg59nj4X) return
local CQOiDGQBoXL8Wj3RP3r = CQZXocByScAUIg59nj4X.getSkillSubState()
switch(CQOiDGQBoXL8Wj3RP3r)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onProc_Earthpressure(CQ8mv44PBzmMpV3z)
{
	if(!CQ8mv44PBzmMpV3z) return
local CQWTDzGcwsMJtQ2jKJ = CQ8mv44PBzmMpV3z.getSkillSubState()
}

function onKeyFrameFlag_Earthpressure(CQVlvWy8HLtIQMRcCjIO, CQY8BDxZfk8yyIRTf)
{
	if (!CQVlvWy8HLtIQMRcCjIO) return false
switch(CQY8BDxZfk8yyIRTf)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Earthpressure(CQSBW15eIEsUwhfbk3d)
{
	if(!CQSBW15eIEsUwhfbk3d) return
local CQfF8kHl3JjTnAdx = CQSBW15eIEsUwhfbk3d.getSkillSubState()
switch(CQfF8kHl3JjTnAdx)
	{
	case 0:

		break
}
}