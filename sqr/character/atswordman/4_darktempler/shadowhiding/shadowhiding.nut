
function checkExecutableSkill_ShadowHiding(CQQYEkk16gRVziiFTur8)
{
	if (!CQQYEkk16gRVziiFTur8) return false
local CQLRje1DmuAFh7SXc = CQQYEkk16gRVziiFTur8.sq_IsUseSkill(60)
if (CQLRje1DmuAFh7SXc)
	{
		CQQYEkk16gRVziiFTur8.sq_IntVectClear()
CQQYEkk16gRVziiFTur8.sq_IntVectPush(0)
CQQYEkk16gRVziiFTur8.sq_AddSetStatePacket(60, STATE_PRIORITY_IGNORE_FORCE, true)
CQQYEkk16gRVziiFTur8.getVar("ShadowHiding").clear_vector()
CQQYEkk16gRVziiFTur8.getVar("ShadowHiding").push_vector(CQQYEkk16gRVziiFTur8.getXPos())
CQQYEkk16gRVziiFTur8.getVar("ShadowHiding").push_vector(CQQYEkk16gRVziiFTur8.getYPos())
CQQYEkk16gRVziiFTur8.getVar("ShadowHiding").push_vector(CQQYEkk16gRVziiFTur8.getXPos())
CQQYEkk16gRVziiFTur8.getVar("ShadowHiding").push_vector(CQQYEkk16gRVziiFTur8.getYPos())
local CQl2HADyBNzaxpAJnbN = "character/atswordman/4_darktempler/shadowhiding/ap_shadowhiding.nut"
local CQIKnNWfzfLrjcAD = CNSquirrelAppendage.sq_AppendAppendage(CQQYEkk16gRVziiFTur8, CQQYEkk16gRVziiFTur8, -1, false, CQl2HADyBNzaxpAJnbN, true)
local CQ7IMh7BEtmtdKPZOR = CQIKnNWfzfLrjcAD.getAppendageInfo()
CQ7IMh7BEtmtdKPZOR.setValidTime(CQQYEkk16gRVziiFTur8.sq_GetLevelData(60, 0, sq_GetSkillLevel(CQQYEkk16gRVziiFTur8, 60)))
return true
}

	return false
}

function checkCommandEnable_ShadowHiding(CQrWuqKPfCMUkbOHFudX)
{
	if (!CQrWuqKPfCMUkbOHFudX) return false
return true
}

function onSetState_ShadowHiding(CQCvfIocrxtTf6OVK, CQcguVv8Kr786oILCbo, CQA4df8ZbZsMR9sN, CQBZAULeOTjJ7JsXjR)
{
	if(!CQCvfIocrxtTf6OVK) return
local CQvPcaql4aFI2Ya2 = CQCvfIocrxtTf6OVK.sq_GetVectorData(CQA4df8ZbZsMR9sN, 0)
CQCvfIocrxtTf6OVK.setSkillSubState(CQvPcaql4aFI2Ya2)
switch(CQvPcaql4aFI2Ya2)
	{
	case 0:
		CQCvfIocrxtTf6OVK.sq_StopMove()
CQCvfIocrxtTf6OVK.sq_SetCurrentAnimation(503)
break
case 1:
		CQCvfIocrxtTf6OVK.sq_SetCurrentAnimation(504)
CQCvfIocrxtTf6OVK.sq_SetStaticMoveInfo(0, 400, 450, true)
CQCvfIocrxtTf6OVK.sq_SetStaticMoveInfo(1, 400, 450, true)
CQCvfIocrxtTf6OVK.sq_SetMoveDirection(CQCvfIocrxtTf6OVK.getDirection(), ENUM_DIRECTION_NEUTRAL)
break
case 2:
		CQCvfIocrxtTf6OVK.sq_StopMove()
CQCvfIocrxtTf6OVK.sq_SetCurrentAnimation(505)
break
}
}

function onEndCurrentAni_ShadowHiding(CQDyCZgLuKYyVLEBbf)
{
	if(!CQDyCZgLuKYyVLEBbf) return
local CQRnr9NaCjCU3uE5pu6B = CQDyCZgLuKYyVLEBbf.getSkillSubState()
switch(CQRnr9NaCjCU3uE5pu6B)
	{
	case 0:
		CQDyCZgLuKYyVLEBbf.sq_IntVectClear()
CQDyCZgLuKYyVLEBbf.sq_IntVectPush(1)
CQDyCZgLuKYyVLEBbf.sq_AddSetStatePacket(60, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQDyCZgLuKYyVLEBbf.sq_IntVectClear()
CQDyCZgLuKYyVLEBbf.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onProc_ShadowHiding(CQiU6vPqqowTB7p1I)
{
	if(!CQiU6vPqqowTB7p1I) return
local CQ1ksow4F139LpF8Sbt = CQiU6vPqqowTB7p1I.getSkillSubState()
switch(CQ1ksow4F139LpF8Sbt)
	{
	case 0:

		break
case 1:
		local CQU66KjH9giMNcF4 = CQiU6vPqqowTB7p1I.getVar("ShadowHiding").get_vector(2)
local CQHCs6GoaufJZKDM5R = CQiU6vPqqowTB7p1I.getVar("ShadowHiding").get_vector(3)
local CQjSkcyh1BPOGbD7duPu = CQiU6vPqqowTB7p1I.getVar("ShadowHiding").get_vector(0)
local CQEiJuxMYflyCZS3h = CQiU6vPqqowTB7p1I.getVar("ShadowHiding").get_vector(1)
local CQ4mmG5DLtJUJiAdlbR = sq_GetDistance( CQU66KjH9giMNcF4, CQHCs6GoaufJZKDM5R, CQiU6vPqqowTB7p1I.getXPos(), CQiU6vPqqowTB7p1I.getYPos(), true)
local CQQT24HbgCnqS8A6 = CQiU6vPqqowTB7p1I.sq_GetLevelData(60, 0, sq_GetSkillLevel(CQiU6vPqqowTB7p1I, 60))
local CQL7ozidPxNxKEPgiv = CQiU6vPqqowTB7p1I.sq_GetLevelData(60, 1, sq_GetSkillLevel(CQiU6vPqqowTB7p1I, 60))
local CQlBRWfV5rWfDYO9aDvb = CQiU6vPqqowTB7p1I.sq_GetStateTimer()
local CQIFiDCtUZ62ILOkA = 3
if(CQlBRWfV5rWfDYO9aDvb>CQQT24HbgCnqS8A6 || CQ4mmG5DLtJUJiAdlbR>CQL7ozidPxNxKEPgiv)
		{
			CQiU6vPqqowTB7p1I.sq_IntVectClear()
CQiU6vPqqowTB7p1I.sq_IntVectPush(2)
CQiU6vPqqowTB7p1I.sq_AddSetStatePacket(60, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
}
}










