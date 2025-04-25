


 
function checkExecutableSkill_priest_jupiter(YK1q0x4NdFq8BlNC1hJ6U)
{
 if(!YK1q0x4NdFq8BlNC1hJ6U) return false; 
 local xrKgOCBOfXUJfHhvjP9Peb = YK1q0x4NdFq8BlNC1hJ6U.sq_IsUseSkill(250); 
 if(xrKgOCBOfXUJfHhvjP9Peb) 
 {
 YK1q0x4NdFq8BlNC1hJ6U.sq_IntVectClear();
 YK1q0x4NdFq8BlNC1hJ6U.sq_IntVectPush(0); 
 YK1q0x4NdFq8BlNC1hJ6U.sq_AddSetStatePacket(250, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_jupiter(AvTq5fRGFRfl49aByyJro3ry)
{
 if(!AvTq5fRGFRfl49aByyJro3ry) return false; 
 local wCzC9ndlYPcbJ0bSlOZd7 = AvTq5fRGFRfl49aByyJro3ry.sq_GetState(); 
 if(wCzC9ndlYPcbJ0bSlOZd7 == STATE_STAND) 
 return true; 
 if(wCzC9ndlYPcbJ0bSlOZd7 == STATE_ATTACK) 
 {
 return AvTq5fRGFRfl49aByyJro3ry.sq_IsCommandEnable(250); 
 }
 return true; 
} ;

 
function onSetState_priest_jupiter(tZzE3PUSWrdlOnph57tz, nggdnApIMMty, y0spw5TDaSb0pC3X9Hd_mE, tyvMf4Rt8eZko3FV8)
{
 if(!tZzE3PUSWrdlOnph57tz) return; 
 tZzE3PUSWrdlOnph57tz.sq_StopMove(); 
 local x8TKdtJuFH9Luuxvu3U7iI = tZzE3PUSWrdlOnph57tz.sq_GetVectorData(y0spw5TDaSb0pC3X9Hd_mE, 0); 
 tZzE3PUSWrdlOnph57tz.setSkillSubState(x8TKdtJuFH9Luuxvu3U7iI); 
 switch(x8TKdtJuFH9Luuxvu3U7iI)
 {
 case 0:
 local WhGjzSJfZtqwxKtZi96i = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(tZzE3PUSWrdlOnph57tz, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 WhGjzSJfZtqwxKtZi96i = sq_GetCustomAni(tZzE3PUSWrdlOnph57tz, 180);
 }
 else
 WhGjzSJfZtqwxKtZi96i = tZzE3PUSWrdlOnph57tz.sq_GetThrowChargeAni(2);
 tZzE3PUSWrdlOnph57tz.setCurrentAnimation(WhGjzSJfZtqwxKtZi96i);
 sq_SetCustomDamageType(tZzE3PUSWrdlOnph57tz, true, 2); 
 break;
 case 1:
 local WhGjzSJfZtqwxKtZi96i = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(tZzE3PUSWrdlOnph57tz, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 WhGjzSJfZtqwxKtZi96i = sq_GetCustomAni(tZzE3PUSWrdlOnph57tz, 184);
 }
 else
 WhGjzSJfZtqwxKtZi96i = tZzE3PUSWrdlOnph57tz.sq_GetThrowShootAni(2);
 tZzE3PUSWrdlOnph57tz.setCurrentAnimation(WhGjzSJfZtqwxKtZi96i);
 tZzE3PUSWrdlOnph57tz.sq_PlaySound("PR_THUNDERHAMMER_01"); 
 break;
 }
 tZzE3PUSWrdlOnph57tz.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onEndState_priest_jupiter(r4AHpndyFvlfjKfrY4j, XZz4zuijzrI3MXJoRM4DV8Yr)
{
 if(!r4AHpndyFvlfjKfrY4j) return;
 if(XZz4zuijzrI3MXJoRM4DV8Yr != 250)
 sq_SetCustomDamageType(r4AHpndyFvlfjKfrY4j, false, 2); 
} ;

 
function onEndCurrentAni_priest_jupiter(Gu92oPgrIo)
{
 if(!Gu92oPgrIo) return;
 if(!Gu92oPgrIo.sq_IsMyControlObject()) return;
 local zA2fBQcR5HW3TS1wJd7Xcgxv = Gu92oPgrIo.getSkillSubState(); 
 switch(zA2fBQcR5HW3TS1wJd7Xcgxv)
 {
 case 0:
 Gu92oPgrIo.sq_IntVectClear();
 Gu92oPgrIo.sq_IntVectPush(1); 
 Gu92oPgrIo.sq_AddSetStatePacket(250, STATE_PRIORITY_USER, true); 
 break;
 case 1:
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(Gu92oPgrIo, "character/new_priest/jupiter/ap_jupiter.nut")) 
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_SendChangeSkillEffectPacket(Gu92oPgrIo, 250); 
 }
 Gu92oPgrIo.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

function onAppendAppendage_priest_jupiter(R6wufFN21VTIeBPOPS)
{
 if(!R6wufFN21VTIeBPOPS) return;
 /*	if(CNSquirrelAppendage.sq_IsAppendAppendage(R6wufFN21VTIeBPOPS, "appendage/character/ap_holymace.nut"))
		CNSquirrelAppendage.sq_RemoveAppendage(R6wufFN21VTIeBPOPS, "appendage/character/ap_holymace.nut" );*/
 local ksbxy_jpHezigmZmxmDK8j = CNSquirrelAppendage.sq_AppendAppendage(R6wufFN21VTIeBPOPS, R6wufFN21VTIeBPOPS, 250, false, "character/new_priest/jupiter/ap_jupiter.nut", false); 
 local Jk0v0PFZUHhj = sq_GetSkillLevel(R6wufFN21VTIeBPOPS, 250); 
 ksbxy_jpHezigmZmxmDK8j.setAppendCauseSkill(BUFF_CAUSE_SKILL, ENUM_CHARACTERJOB_PRIEST, 250, Jk0v0PFZUHhj); 
 CNSquirrelAppendage.sq_AppendAppendageID(ksbxy_jpHezigmZmxmDK8j, R6wufFN21VTIeBPOPS, R6wufFN21VTIeBPOPS, 250, false); 
 ksbxy_jpHezigmZmxmDK8j.setEnableIsBuff(true);
 ksbxy_jpHezigmZmxmDK8j.setBuffIconImage(76); 
 local qRBiBz9JnTy7p = ksbxy_jpHezigmZmxmDK8j.sq_getChangeStatus("changeStatus"); 
 if(!qRBiBz9JnTy7p) 
 qRBiBz9JnTy7p = ksbxy_jpHezigmZmxmDK8j.sq_AddChangeStatusAppendageID(R6wufFN21VTIeBPOPS, R6wufFN21VTIeBPOPS, 0, CHANGE_STATUS_TYPE_HP_MAX, false, 0, APID_COMMON);
 if(qRBiBz9JnTy7p) 
 {
 local d8NVIXqA2tzjW2a = (sq_GetLevelData(R6wufFN21VTIeBPOPS, 250, 0, Jk0v0PFZUHhj)).tofloat(); 
 qRBiBz9JnTy7p.clearParameter(); 
 qRBiBz9JnTy7p.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, true, d8NVIXqA2tzjW2a); 
 qRBiBz9JnTy7p.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, true, d8NVIXqA2tzjW2a); 
 }
} ;

ADDEXTRANUT <- 0 