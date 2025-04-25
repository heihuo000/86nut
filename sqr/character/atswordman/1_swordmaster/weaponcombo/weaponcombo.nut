
function checkExecutableSkill_Weaponcombo(CQYq4bxLU35oKEXQGLL)
{
	if (!CQYq4bxLU35oKEXQGLL) return false
local CQSlQp5EVjEQDfXn = CQYq4bxLU35oKEXQGLL.sq_IsUseSkill(147)
if (CQSlQp5EVjEQDfXn)
	{
		CQYq4bxLU35oKEXQGLL.sq_StopMove()
CQYq4bxLU35oKEXQGLL.sq_IntVectClear()
CQYq4bxLU35oKEXQGLL.sq_IntVectPush(0)
CQYq4bxLU35oKEXQGLL.sq_AddSetStatePacket(147, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Weaponcombo(CQf84KHklogxLLZr9I)
{
	if (!CQf84KHklogxLLZr9I) return false
if(CQf84KHklogxLLZr9I.getZPos() > 10)
		return false
return true
}

function onSetState_Weaponcombo(CQuBE7u3p1SfFnLqg64a, CQMFjYcHdgx3OCLbT, CQnGGuXUeuZZGqKecZr, CQGEnHagJBqAPdJU)
{
	if(!CQuBE7u3p1SfFnLqg64a) return
local CQhwM5UMvY1oEsJWEI = CQuBE7u3p1SfFnLqg64a.sq_GetVectorData(CQnGGuXUeuZZGqKecZr, 0)
CQuBE7u3p1SfFnLqg64a.setSkillSubState(CQhwM5UMvY1oEsJWEI)
CQuBE7u3p1SfFnLqg64a.sq_SetMoveDirection(CQuBE7u3p1SfFnLqg64a.getDirection(), ENUM_DIRECTION_NEUTRAL)
CQuBE7u3p1SfFnLqg64a.sq_SetStaticMoveInfo(0, 80, -400, false)
local CQpxnzRuOtyQARHQP7OT = CQuBE7u3p1SfFnLqg64a.getWeaponSubType()
CQuBE7u3p1SfFnLqg64a.sq_IsEnterSkillLastKeyUnits(147)
CQuBE7u3p1SfFnLqg64a.endSkillCoolTime(147)
local CQ3dMtVvhC8xaZGuF = CQuBE7u3p1SfFnLqg64a.sq_GetBonusRateWithPassive(174, -1, 0, getATSwordmanBonus(CQuBE7u3p1SfFnLqg64a,1.0,147))/10
local CQqMyDINyxIRuUGr36f = ["R_SW_1ATK","R_SW_2ATK","R_SW_3ATK"]
if((CQpxnzRuOtyQARHQP7OT == 3 || CQpxnzRuOtyQARHQP7OT == 1) && CQhwM5UMvY1oEsJWEI < 3)
		CQuBE7u3p1SfFnLqg64a.sq_PlaySound(CQqMyDINyxIRuUGr36f[CQhwM5UMvY1oEsJWEI])
else if(CQpxnzRuOtyQARHQP7OT == 2 && CQhwM5UMvY1oEsJWEI < 2)
		CQuBE7u3p1SfFnLqg64a.sq_PlaySound(CQqMyDINyxIRuUGr36f[CQhwM5UMvY1oEsJWEI])
switch(CQhwM5UMvY1oEsJWEI)
	{
	case 0:
		local CQKHd2TAXIk3sVNp = [33,39,42,37]
local CQTaAT2WmZGZiEByfZ = [30,27,24,22]
local CQseceD9DTvSrfBsjlY5 = [341,338,332,335]
local CQ6cXAWX8aVooIVoe = ["WeaponComboShortSword1","WeaponComboKatana1_body","WeaponComboClub1_body","WeaponComboHeavy1_body"]
CQuBE7u3p1SfFnLqg64a.getVar("WeaponcomboWeapon3").setBool(0,false)
BodyMagicSword(CQuBE7u3p1SfFnLqg64a, CQ6cXAWX8aVooIVoe[CQpxnzRuOtyQARHQP7OT])
if(MagicSword_IsAppebd(CQuBE7u3p1SfFnLqg64a))
			CQuBE7u3p1SfFnLqg64a.sq_SetCurrentAnimation(CQseceD9DTvSrfBsjlY5[CQpxnzRuOtyQARHQP7OT])
else
			CQuBE7u3p1SfFnLqg64a.sq_SetCurrentAnimation(CQKHd2TAXIk3sVNp[CQpxnzRuOtyQARHQP7OT])
CQuBE7u3p1SfFnLqg64a.sq_SetCurrentAttackInfo(CQTaAT2WmZGZiEByfZ[CQpxnzRuOtyQARHQP7OT])
CQuBE7u3p1SfFnLqg64a.applyBasicAttackUp(sq_GetCurrentAttackInfo(CQuBE7u3p1SfFnLqg64a),CQuBE7u3p1SfFnLqg64a.getState())
sq_SetCurrentAttackInfo(CQuBE7u3p1SfFnLqg64a, sq_GetCurrentAttackInfo(CQuBE7u3p1SfFnLqg64a))
if(CQpxnzRuOtyQARHQP7OT == 0)
		{
			CQuBE7u3p1SfFnLqg64a.sq_StartWrite()
CQuBE7u3p1SfFnLqg64a.sq_WriteDword(147)
CQuBE7u3p1SfFnLqg64a.sq_WriteDword(0)
CQuBE7u3p1SfFnLqg64a.sq_WriteDword(GetMagicSwordAppIndex(CQuBE7u3p1SfFnLqg64a))
CQuBE7u3p1SfFnLqg64a.sq_WriteDword(CQ3dMtVvhC8xaZGuF)
CQuBE7u3p1SfFnLqg64a.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 0)
}
		break
case 1:
		CQuBE7u3p1SfFnLqg64a.getVar("Weaponcombo").setBool(0,true)
local CQKHd2TAXIk3sVNp = [34,40,43,38]
local CQTaAT2WmZGZiEByfZ = [31,28,25,23]
local CQseceD9DTvSrfBsjlY5 = [342,339,333,337]
local CQ6cXAWX8aVooIVoe = ["WeaponComboShortSword2","WeaponComboKatana2_body","WeaponComboClub2_body","WeaponComboHeavy2_body"]
BodyMagicSword(CQuBE7u3p1SfFnLqg64a, CQ6cXAWX8aVooIVoe[CQpxnzRuOtyQARHQP7OT])
if(MagicSword_IsAppebd(CQuBE7u3p1SfFnLqg64a))
			CQuBE7u3p1SfFnLqg64a.sq_SetCurrentAnimation(CQseceD9DTvSrfBsjlY5[CQpxnzRuOtyQARHQP7OT])
else
			CQuBE7u3p1SfFnLqg64a.sq_SetCurrentAnimation(CQKHd2TAXIk3sVNp[CQpxnzRuOtyQARHQP7OT])
CQuBE7u3p1SfFnLqg64a.sq_SetCurrentAttackInfo(CQTaAT2WmZGZiEByfZ[CQpxnzRuOtyQARHQP7OT])
CQuBE7u3p1SfFnLqg64a.applyBasicAttackUp(sq_GetCurrentAttackInfo(CQuBE7u3p1SfFnLqg64a),CQuBE7u3p1SfFnLqg64a.getState())
sq_SetCurrentAttackInfo(CQuBE7u3p1SfFnLqg64a, sq_GetCurrentAttackInfo(CQuBE7u3p1SfFnLqg64a))
if(CQpxnzRuOtyQARHQP7OT == 0)
		{
			CQuBE7u3p1SfFnLqg64a.sq_StartWrite()
CQuBE7u3p1SfFnLqg64a.sq_WriteDword(147)
CQuBE7u3p1SfFnLqg64a.sq_WriteDword(1)
CQuBE7u3p1SfFnLqg64a.sq_WriteDword(GetMagicSwordAppIndex(CQuBE7u3p1SfFnLqg64a))
CQuBE7u3p1SfFnLqg64a.sq_WriteDword(CQ3dMtVvhC8xaZGuF)
CQuBE7u3p1SfFnLqg64a.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 0)
}

		HeavyswordmasteryAddAppend(CQuBE7u3p1SfFnLqg64a)
break
case 2:
		local CQKHd2TAXIk3sVNp = [35,41,44,45]
local CQTaAT2WmZGZiEByfZ = [32,29,26,24]
local CQseceD9DTvSrfBsjlY5 = [343,340,334,336]
local CQ6cXAWX8aVooIVoe = ["WeaponComboShortSword3","WeaponComboKatana3_body","WeaponComboClub3_body","WeaponComboHeavy1_body"]
BodyMagicSword(CQuBE7u3p1SfFnLqg64a, CQ6cXAWX8aVooIVoe[CQpxnzRuOtyQARHQP7OT])
if(MagicSword_IsAppebd(CQuBE7u3p1SfFnLqg64a))
			CQuBE7u3p1SfFnLqg64a.sq_SetCurrentAnimation(CQseceD9DTvSrfBsjlY5[CQpxnzRuOtyQARHQP7OT])
else
			CQuBE7u3p1SfFnLqg64a.sq_SetCurrentAnimation(CQKHd2TAXIk3sVNp[CQpxnzRuOtyQARHQP7OT])
CQuBE7u3p1SfFnLqg64a.sq_SetCurrentAttackInfo(CQTaAT2WmZGZiEByfZ[CQpxnzRuOtyQARHQP7OT])
local CQu426NUCPMrjV2A = 140
CQuBE7u3p1SfFnLqg64a.applyBasicAttackUp(sq_GetCurrentAttackInfo(CQuBE7u3p1SfFnLqg64a),CQuBE7u3p1SfFnLqg64a.getState())
sq_SetCurrentAttackInfo(CQuBE7u3p1SfFnLqg64a, sq_GetCurrentAttackInfo(CQuBE7u3p1SfFnLqg64a))
if(CQpxnzRuOtyQARHQP7OT == 0)
		{
			CQuBE7u3p1SfFnLqg64a.sq_StartWrite()
CQuBE7u3p1SfFnLqg64a.sq_WriteDword(147)
CQuBE7u3p1SfFnLqg64a.sq_WriteDword(2)
CQuBE7u3p1SfFnLqg64a.sq_WriteDword(GetMagicSwordAppIndex(CQuBE7u3p1SfFnLqg64a))
CQuBE7u3p1SfFnLqg64a.sq_WriteDword(CQ3dMtVvhC8xaZGuF)
CQuBE7u3p1SfFnLqg64a.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 0)
}
		break
case 3:
		local CQKHd2TAXIk3sVNp = [36,39,42,37]
local CQseceD9DTvSrfBsjlY5 = [344,338,332,335]
local CQ6cXAWX8aVooIVoe = ["WeaponComboShortSword4","WeaponComboKatana1_body","WeaponComboClub1_body","WeaponComboHeavy1_body"]
BodyMagicSword(CQuBE7u3p1SfFnLqg64a, CQ6cXAWX8aVooIVoe[CQpxnzRuOtyQARHQP7OT])
if(MagicSword_IsAppebd(CQuBE7u3p1SfFnLqg64a))
			CQuBE7u3p1SfFnLqg64a.sq_SetCurrentAnimation(CQseceD9DTvSrfBsjlY5[CQpxnzRuOtyQARHQP7OT])
else
			CQuBE7u3p1SfFnLqg64a.sq_SetCurrentAnimation(CQKHd2TAXIk3sVNp[CQpxnzRuOtyQARHQP7OT])
CQuBE7u3p1SfFnLqg64a.sq_SetCurrentAttackInfo(33)
local CQu426NUCPMrjV2A = 140
CQuBE7u3p1SfFnLqg64a.applyBasicAttackUp(sq_GetCurrentAttackInfo(CQuBE7u3p1SfFnLqg64a),CQuBE7u3p1SfFnLqg64a.getState())
sq_SetCurrentAttackInfo(CQuBE7u3p1SfFnLqg64a, sq_GetCurrentAttackInfo(CQuBE7u3p1SfFnLqg64a))
if(CQpxnzRuOtyQARHQP7OT == 0)
		{
			CQuBE7u3p1SfFnLqg64a.sq_StartWrite()
CQuBE7u3p1SfFnLqg64a.sq_WriteDword(147)
CQuBE7u3p1SfFnLqg64a.sq_WriteDword(3)
CQuBE7u3p1SfFnLqg64a.sq_WriteDword(GetMagicSwordAppIndex(CQuBE7u3p1SfFnLqg64a))
CQuBE7u3p1SfFnLqg64a.sq_WriteDword(CQ3dMtVvhC8xaZGuF)
CQuBE7u3p1SfFnLqg64a.sq_SendCreatePassiveObjectPacket(24383, 0, 0, 0, 0)
}
		break
}
	CQuBE7u3p1SfFnLqg64a.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Weaponcombo(CQpjDlSB1TFFgXNV)
{
	if(!CQpjDlSB1TFFgXNV) return
local CQ36YrcAYEYa8mBL4Z = CQpjDlSB1TFFgXNV.getSkillSubState()
switch(CQ36YrcAYEYa8mBL4Z)
	{
	case 0:
		if(CQpjDlSB1TFFgXNV.getVar("WeaponcomboWeapon3").getBool(0))
		{
			CQpjDlSB1TFFgXNV.sq_IntVectClear()
CQpjDlSB1TFFgXNV.sq_IntVectPush(1)
CQpjDlSB1TFFgXNV.sq_AddSetStatePacket(147, STATE_PRIORITY_IGNORE_FORCE, true)
}
		else
		{
			CQpjDlSB1TFFgXNV.sq_IntVectClear()
CQpjDlSB1TFFgXNV.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
case 1:
		CQpjDlSB1TFFgXNV.sq_IntVectClear()
CQpjDlSB1TFFgXNV.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQpjDlSB1TFFgXNV.sq_IntVectClear()
CQpjDlSB1TFFgXNV.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQpjDlSB1TFFgXNV.sq_IntVectClear()
CQpjDlSB1TFFgXNV.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Weaponcombo(CQqCVS6YI3XrhBBMzzyv, CQKSW1J8hjQt9aVCv, CQTiVjiXyo3U4RVKql2, CQsmrwYrZMiTNICN)
{
	if(!CQqCVS6YI3XrhBBMzzyv)	return false
if(CQqCVS6YI3XrhBBMzzyv.getWeaponSubType() !=0)
	{
		MagicSword_BasiconAttack(CQqCVS6YI3XrhBBMzzyv, CQKSW1J8hjQt9aVCv, CQTiVjiXyo3U4RVKql2, CQsmrwYrZMiTNICN)
MagicswordupOccur(CQqCVS6YI3XrhBBMzzyv, CQKSW1J8hjQt9aVCv, CQTiVjiXyo3U4RVKql2, CQsmrwYrZMiTNICN)
}

}

function onEnterFrame_Weaponcombo(CQ6T7P7lUbd85nXXS6, CQe7IBs5SuOMMCX2Hwhf)
{
	if(!CQ6T7P7lUbd85nXXS6) return
local CQPVlgms7BlJXq5BZZV = CQ6T7P7lUbd85nXXS6.getSkillSubState()
local CQ9DLqRqpcJI1N45 = CQ6T7P7lUbd85nXXS6.getWeaponSubType()
switch(CQPVlgms7BlJXq5BZZV)
	{
	case 2:
		if(CQ9DLqRqpcJI1N45 == 2 && CQe7IBs5SuOMMCX2Hwhf == 2)
		{
			CQ6T7P7lUbd85nXXS6.sq_StartWrite()
CQ6T7P7lUbd85nXXS6.sq_WriteDword(147)
CQ6T7P7lUbd85nXXS6.sq_WriteDword(20)
CQ6T7P7lUbd85nXXS6.sq_WriteDword(CQ6T7P7lUbd85nXXS6.sq_GetBonusRateWithPassive(174, -1, 0, getATSwordmanBonus(CQ6T7P7lUbd85nXXS6,1.0,147))/10)
CQ6T7P7lUbd85nXXS6.sq_WriteDword(sq_GetIntData(CQ6T7P7lUbd85nXXS6,147, 5)+20)
CQ6T7P7lUbd85nXXS6.sq_SendCreatePassiveObjectPacket(24383, 0, 110, 0, 0)
}
		break
case 1:
		if(CQ6T7P7lUbd85nXXS6.getWeaponSubType() == 3 && CQe7IBs5SuOMMCX2Hwhf == 2)
		{
			sq_SetMyShake(CQ6T7P7lUbd85nXXS6,1,150)
local CQtoqsBjNPnyCs41hI = 100
local CQBq3COJeCBUJg38l68a = sq_GetSkillLevel(CQ6T7P7lUbd85nXXS6, 12)
if(CQ6T7P7lUbd85nXXS6.getVar("WeaponcomboWeapon3").getBool(0) && CQBq3COJeCBUJg38l68a > 0 && CQ6T7P7lUbd85nXXS6.getWeaponSubType() == 3)
				CQtoqsBjNPnyCs41hI = 100 + sq_GetLevelData(CQ6T7P7lUbd85nXXS6,12, 13, CQBq3COJeCBUJg38l68a)
CQ6T7P7lUbd85nXXS6.sq_StartWrite()
CQ6T7P7lUbd85nXXS6.sq_WriteDword(147)
CQ6T7P7lUbd85nXXS6.sq_WriteDword(10)
CQ6T7P7lUbd85nXXS6.sq_WriteDword(CQ6T7P7lUbd85nXXS6.sq_GetBonusRateWithPassive(174, -1, 0, getATSwordmanBonus(CQ6T7P7lUbd85nXXS6,1.0,147))/10+200)
CQ6T7P7lUbd85nXXS6.sq_WriteDword(CQtoqsBjNPnyCs41hI)
CQ6T7P7lUbd85nXXS6.sq_SendCreatePassiveObjectPacket(24383, 0, 90, 0, 0)
CQ6T7P7lUbd85nXXS6.getVar("Weaponcombo").setBool(0,false)
}
		break
}
}

function onProc_Weaponcombo(CQvlqdQpJzrTVP24Y)
{
	if(!CQvlqdQpJzrTVP24Y) return
local CQDz3n3hRs69Km2fUZu = CQvlqdQpJzrTVP24Y.getSkillSubState()
local CQR9pEF1O5EMDV16 = CQvlqdQpJzrTVP24Y.getCurrentAnimation()
local CQiMgLtF4TgJLQMgPL = CQvlqdQpJzrTVP24Y.sq_GetCurrentFrameIndex(CQR9pEF1O5EMDV16)
local CQ1HF8zbbESOFfM9FlDQ = CQvlqdQpJzrTVP24Y.getWeaponSubType()
procSetIsMove(CQvlqdQpJzrTVP24Y)
CQvlqdQpJzrTVP24Y.setSkillCommandEnable(147, true)
ForcePush_ATSwordman(CQvlqdQpJzrTVP24Y,169,[1,1,200],6)
switch(CQDz3n3hRs69Km2fUZu)
	{
	case 0:
		switch(CQ1HF8zbbESOFfM9FlDQ)
		{
		case 0:
			if(CQiMgLtF4TgJLQMgPL > 3 && CQvlqdQpJzrTVP24Y.isDownSkillLastKey())
			{
				CQvlqdQpJzrTVP24Y.sq_IntVectClear()
CQvlqdQpJzrTVP24Y.sq_IntVectPush(1)
CQvlqdQpJzrTVP24Y.sq_AddSetStatePacket(147, STATE_PRIORITY_IGNORE_FORCE, true)
}
			break
case 1:
			if(CQiMgLtF4TgJLQMgPL > 4 && CQvlqdQpJzrTVP24Y.isDownSkillLastKey())
			{
				CQvlqdQpJzrTVP24Y.sq_IntVectClear()
CQvlqdQpJzrTVP24Y.sq_IntVectPush(1)
CQvlqdQpJzrTVP24Y.sq_AddSetStatePacket(147, STATE_PRIORITY_IGNORE_FORCE, true)
}
			break
case 2:
			if(CQiMgLtF4TgJLQMgPL > 2 && CQvlqdQpJzrTVP24Y.isDownSkillLastKey())
			{
				CQvlqdQpJzrTVP24Y.sq_IntVectClear()
CQvlqdQpJzrTVP24Y.sq_IntVectPush(1)
CQvlqdQpJzrTVP24Y.sq_AddSetStatePacket(147, STATE_PRIORITY_IGNORE_FORCE, true)
}
			break
case 3:
			if(CQiMgLtF4TgJLQMgPL <= 5 )
			{
				if(CQvlqdQpJzrTVP24Y.isDownSkillLastKey())
					CQvlqdQpJzrTVP24Y.getVar("WeaponcomboWeapon3").setBool(0,true)
else
					CQvlqdQpJzrTVP24Y.getVar("WeaponcomboWeapon3").setBool(0,false)
}
			else
			{
				if(!CQvlqdQpJzrTVP24Y.getVar("WeaponcomboWeapon3").getBool(0) && CQvlqdQpJzrTVP24Y.isDownSkillLastKey())
				{
					CQvlqdQpJzrTVP24Y.sq_IntVectClear()
CQvlqdQpJzrTVP24Y.sq_IntVectPush(1)
CQvlqdQpJzrTVP24Y.sq_AddSetStatePacket(147, STATE_PRIORITY_IGNORE_FORCE, true)
}
			}
			break
}
		break
case 1:
		switch(CQ1HF8zbbESOFfM9FlDQ)
		{
		case 0:
			if(CQiMgLtF4TgJLQMgPL > 4 && CQvlqdQpJzrTVP24Y.isDownSkillLastKey())
			{
				CQvlqdQpJzrTVP24Y.sq_IntVectClear()
CQvlqdQpJzrTVP24Y.sq_IntVectPush(2)
CQvlqdQpJzrTVP24Y.sq_AddSetStatePacket(147, STATE_PRIORITY_IGNORE_FORCE, true)
}
			break
case 1:
			if(CQiMgLtF4TgJLQMgPL > 4 && CQvlqdQpJzrTVP24Y.isDownSkillLastKey())
			{
				CQvlqdQpJzrTVP24Y.sq_IntVectClear()
CQvlqdQpJzrTVP24Y.sq_IntVectPush(2)
CQvlqdQpJzrTVP24Y.sq_AddSetStatePacket(147, STATE_PRIORITY_IGNORE_FORCE, true)
}
			break
case 2:
			if(CQiMgLtF4TgJLQMgPL > 3 && CQvlqdQpJzrTVP24Y.isDownSkillLastKey())
			{
				CQvlqdQpJzrTVP24Y.sq_IntVectClear()
CQvlqdQpJzrTVP24Y.sq_IntVectPush(2)
CQvlqdQpJzrTVP24Y.sq_AddSetStatePacket(147, STATE_PRIORITY_IGNORE_FORCE, true)
}
			break
case 3:
			if(CQiMgLtF4TgJLQMgPL > 1)
				CQvlqdQpJzrTVP24Y.sq_SetStaticMoveInfo(0, 0, 0, false)
break
}
		break
case 2:
		switch(CQ1HF8zbbESOFfM9FlDQ)
		{
		case 0:
			if(CQiMgLtF4TgJLQMgPL > 3 && CQvlqdQpJzrTVP24Y.isDownSkillLastKey())
			{
				CQvlqdQpJzrTVP24Y.sq_IntVectClear()
CQvlqdQpJzrTVP24Y.sq_IntVectPush(3)
CQvlqdQpJzrTVP24Y.sq_AddSetStatePacket(147, STATE_PRIORITY_IGNORE_FORCE, true)
}
			break
}
		break
}
}
