
function checkExecutableSkill_Gigaslash(CQk636QXERfKMjJmCOM)
{
	if (!CQk636QXERfKMjJmCOM) return false
local CQwHuwhke6FKIAALWk = CQk636QXERfKMjJmCOM.sq_IsUseSkill(164)
if (CQwHuwhke6FKIAALWk)
	{
		CQk636QXERfKMjJmCOM.sq_IntVectClear()
CQk636QXERfKMjJmCOM.sq_IntVectPush(0)
CQk636QXERfKMjJmCOM.sq_AddSetStatePacket(164, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Gigaslash(CQAS9LApV9iTfIie)
{
	if (!CQAS9LApV9iTfIie) return false
return true
}

function onSetState_Gigaslash(CQ2JMF9pFAvWKZFdT, CQnhPQnUTpbC9f8EK, CQG4xOdgFHVD4I8S, CQhZXBXG8gepNh7IMl)
{
	if(!CQ2JMF9pFAvWKZFdT) return
local CQpAwReuQi4e5C6GkKQZ = CQ2JMF9pFAvWKZFdT.sq_GetVectorData(CQG4xOdgFHVD4I8S, 0)
CQ2JMF9pFAvWKZFdT.setSkillSubState(CQpAwReuQi4e5C6GkKQZ)
switch(CQpAwReuQi4e5C6GkKQZ)
	{
	case 0:
		CQ2JMF9pFAvWKZFdT.sq_StopMove()
CQ2JMF9pFAvWKZFdT.sq_PlaySound("SW_GIGASLASH")
if(CQ2JMF9pFAvWKZFdT.isMyControlObject())
			sq_flashScreen(CQ2JMF9pFAvWKZFdT,200,550,100,102,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
CQ2JMF9pFAvWKZFdT.sq_SetCurrentAnimation(422)
break
case 1:
		CQ2JMF9pFAvWKZFdT.sq_SetMoveDirection(CQ2JMF9pFAvWKZFdT.getDirection(), ENUM_DIRECTION_NEUTRAL)
CQ2JMF9pFAvWKZFdT.sq_SetStaticMoveInfo(0, 300, -100, false)
if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT , ENUM_SUBKEY_TYPE_ALL) && CQ2JMF9pFAvWKZFdT.getDirection() == 1)
			CQ2JMF9pFAvWKZFdT.sq_SetStaticMoveInfo(0, 0, -100, false);	
		else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT , ENUM_SUBKEY_TYPE_ALL) && CQ2JMF9pFAvWKZFdT.getDirection() == 0)
			CQ2JMF9pFAvWKZFdT.sq_SetStaticMoveInfo(0, 0, -100, false);	
		else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP , ENUM_SUBKEY_TYPE_ALL))
			CQ2JMF9pFAvWKZFdT.sq_SetStaticMoveInfo(0, 600, -100, false);	
		
		CQ2JMF9pFAvWKZFdT.sq_SetCurrentAnimation(423)
	CQ2JMF9pFAvWKZFdT.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
case 2:
		CQ2JMF9pFAvWKZFdT.sq_StopMove()
CQ2JMF9pFAvWKZFdT.sq_SetCurrentAnimation(421)
		if(CQ2JMF9pFAvWKZFdT.isMyControlObject())
		{
			sq_SetMyShake(CQ2JMF9pFAvWKZFdT,8,400)
sq_flashScreen(CQ2JMF9pFAvWKZFdT,0,0,200,255,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
CQ2JMF9pFAvWKZFdT.sq_StartWrite()
CQ2JMF9pFAvWKZFdT.sq_WriteDword(164)
CQ2JMF9pFAvWKZFdT.sq_WriteDword(0)
CQ2JMF9pFAvWKZFdT.sq_WriteDword(CQ2JMF9pFAvWKZFdT.sq_GetBonusRateWithPassive(164, -1, 0, getATSwordmanBonus(CQ2JMF9pFAvWKZFdT,1.0,164)))
CQ2JMF9pFAvWKZFdT.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 0)
}
break
}

}


function onEndCurrentAni_Gigaslash(CQ3uZmkRMFpWMq6Ax)
{
	if(!CQ3uZmkRMFpWMq6Ax) return
local CQmUwa1NcfRbXB5Kba = CQ3uZmkRMFpWMq6Ax.getSkillSubState()
switch(CQmUwa1NcfRbXB5Kba)
	{
	case 0:
		CQ3uZmkRMFpWMq6Ax.sq_IntVectClear()
CQ3uZmkRMFpWMq6Ax.sq_IntVectPush(1)
CQ3uZmkRMFpWMq6Ax.sq_AddSetStatePacket(164, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQ3uZmkRMFpWMq6Ax.sq_IntVectClear()
CQ3uZmkRMFpWMq6Ax.sq_IntVectPush(2)
CQ3uZmkRMFpWMq6Ax.sq_AddSetStatePacket(164, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQ3uZmkRMFpWMq6Ax.sq_IntVectClear()
CQ3uZmkRMFpWMq6Ax.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Gigaslash(CQJk5XSAKtAkHw4Fq5Qq, CQk6adrYgVz7CR4ZI, CQaCjbT9t9KBJO3HSLC, CQ5SHp2C5rmHSj2V)
{
	if(!CQJk5XSAKtAkHw4Fq5Qq || CQ5SHp2C5rmHSj2V)	return false
local CQwiULirUZMsKV2LXs = CQJk5XSAKtAkHw4Fq5Qq.getSkillSubState()
Calldaimus_onAttack(CQJk5XSAKtAkHw4Fq5Qq,CQk6adrYgVz7CR4ZI, CQaCjbT9t9KBJO3HSLC, CQ5SHp2C5rmHSj2V)
switch(CQwiULirUZMsKV2LXs)
	{
	case 0:

		break
case 1:

		break
}

}

function onEndState_Gigaslash(CQ8VuHpQBjj7OgdN, CQWDf5bkwpFNpPdXoL)
{
	if(!CQ8VuHpQBjj7OgdN) return
local CQVFSzBJHHYHPm92sTSL = CQ8VuHpQBjj7OgdN.getSkillSubState()
switch(CQVFSzBJHHYHPm92sTSL)
	{
	case 3:

		break
case 4:

		break
}
	
}

function onProc_Gigaslash(CQYEctOpYgXsEB8BA)
{
	if(!CQYEctOpYgXsEB8BA) return
local CQSwCFQUIuwtyw85G5h = CQYEctOpYgXsEB8BA.getSkillSubState()
}

function onKeyFrameFlag_Gigaslash(CQfxr2h23N3na171, CQndCTNFyfimuO688Lsv)
{
	if (!CQfxr2h23N3na171) return false
switch(CQndCTNFyfimuO688Lsv)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Gigaslash(CQGMrrPnXtdzej64g)
{
	if(!CQGMrrPnXtdzej64g) return
local CQhH6AzRkVPdmA5fTs9 = CQGMrrPnXtdzej64g.getSkillSubState()
switch(CQhH6AzRkVPdmA5fTs9)
	{
	case 0:

		break
}
}