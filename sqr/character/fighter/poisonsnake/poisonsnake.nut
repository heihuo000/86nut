
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_fighter_poisonsnake(fSD5TJIeH3Ypkf0Qf4Fzo)
{
 if(!fSD5TJIeH3Ypkf0Qf4Fzo) return false; 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(fSD5TJIeH3Ypkf0Qf4Fzo, "character/fighter/poisonsnake/ap_poisonsnake.nut"))return false;
 local QFmkglshr238xjLJawFDRd = fSD5TJIeH3Ypkf0Qf4Fzo.sq_IsUseSkill(235); 
 if(QFmkglshr238xjLJawFDRd) 
 {
 local cfMEWXvj3khuN = fSD5TJIeH3Ypkf0Qf4Fzo.sq_GetState(); 
 switch(cfMEWXvj3khuN)
 {
 case STATE_STAND:
 case STATE_ATTACK:
 case STATE_DASH:
 fSD5TJIeH3Ypkf0Qf4Fzo.sq_AddSetStatePacket(235, STATE_PRIORITY_USER, false); 
 return true; 
 default:
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_SendChangeSkillEffectPacket(fSD5TJIeH3Ypkf0Qf4Fzo, 235); 
 return true;
 }
 }
 return false; 
} ;

 
function checkCommandEnable_fighter_poisonsnake(OyMKSmr3d6fRtLfZUz)
{
 if(!OyMKSmr3d6fRtLfZUz) return false; 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(OyMKSmr3d6fRtLfZUz, "character/fighter/poisonsnake/ap_poisonsnake.nut"))return false;
 local nMgAuraUWjBq4kf8J5g = OyMKSmr3d6fRtLfZUz.sq_GetState(); 
 if(nMgAuraUWjBq4kf8J5g == STATE_STAND) 
 return true; 
 if(nMgAuraUWjBq4kf8J5g == STATE_ATTACK) 
 {
 return OyMKSmr3d6fRtLfZUz.sq_IsCommandEnable(235); 
 }
 return true; 
} ;

 
function onSetState_fighter_poisonsnake(lkg4APy2yXLEm4fEWCGWC5a, Q5W1pKgcJNJ5_8VMhv8OvV, qOeL2Au1u5nmT8tAgvdFWt, Ul_HwgNRpmrQp6)
{
 if(!lkg4APy2yXLEm4fEWCGWC5a) return; 
 lkg4APy2yXLEm4fEWCGWC5a.sq_StopMove(); 
 lkg4APy2yXLEm4fEWCGWC5a.sq_SetCurrentAnimation(137);
 lkg4APy2yXLEm4fEWCGWC5a.sq_SetCurrentAttackInfo(79);
 lkg4APy2yXLEm4fEWCGWC5a.sq_SetCurrentAttackBonusRate(lkg4APy2yXLEm4fEWCGWC5a.sq_GetBonusRateWithPassive(235, 235, 1, 1.0)); 
 lkg4APy2yXLEm4fEWCGWC5a.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onKeyFrameFlag_fighter_poisonsnake(FCQKJlDXFBQVdmACZpEQQ, To9MZqggsbrexvrOkxm)
{
 if(!FCQKJlDXFBQVdmACZpEQQ) return false;
 switch(To9MZqggsbrexvrOkxm)
 {
 case 1:
 sq_SetMyShake(FCQKJlDXFBQVdmACZpEQQ, 8, 150);
 break;
 case 2:
 FCQKJlDXFBQVdmACZpEQQ.sq_PlaySound("FT_POISONSNAKE");
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_fighter_poisonsnake(FCQKJlDXFBQVdmACZpEQQ)
{
 if(!FCQKJlDXFBQVdmACZpEQQ) return;
 if(!FCQKJlDXFBQVdmACZpEQQ.sq_IsMyControlObject()) return;
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_SendChangeSkillEffectPacket(FCQKJlDXFBQVdmACZpEQQ, 235); 
 FCQKJlDXFBQVdmACZpEQQ.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

 
function onAppendApEff_qq506807329_fighter_poisonsnake(b604HEGZUA4)
{
 if(!b604HEGZUA4) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(b604HEGZUA4, "character/fighter/poisonsnake/ap_poisonsnake.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(b604HEGZUA4, "character/fighter/poisonsnake/ap_poisonsnake.nut");
 local ADATGSGOvaqLlAGQionNEFq = sq_GetSkillLevel(b604HEGZUA4, 235); 
 local ulbD0yT3Hcd2GGJQ3zE7C = sq_GetLevelData(b604HEGZUA4, 235, 0, ADATGSGOvaqLlAGQionNEFq); 
 
 local I5HrWgw6pXQ = CNSquirrelAppendage.sq_AppendAppendage(b604HEGZUA4, b604HEGZUA4, 235, false, "character/fighter/poisonsnake/ap_poisonsnake.nut", false);
 I5HrWgw6pXQ.setAppendCauseSkill(BUFF_CAUSE_SKILL, ENUM_CHARACTERJOB_FIGHTER, 235, ADATGSGOvaqLlAGQionNEFq); 
 CNSquirrelAppendage.sq_AppendAppendageID(I5HrWgw6pXQ, b604HEGZUA4, b604HEGZUA4, 235, false); 
 local Wdt1IuI73BgDDzzMC9q3J_Hk = I5HrWgw6pXQ.sq_getChangeStatus("changeStatus"); 
 if(!Wdt1IuI73BgDDzzMC9q3J_Hk) 
 Wdt1IuI73BgDDzzMC9q3J_Hk = I5HrWgw6pXQ.sq_AddChangeStatusAppendageID(b604HEGZUA4, b604HEGZUA4, 0, CHANGE_STATUS_TYPE_ACTIVESTATUS_TOLERANCE_ALL, false, 0, APID_COMMON);
 if(Wdt1IuI73BgDDzzMC9q3J_Hk) 
 {
 Wdt1IuI73BgDDzzMC9q3J_Hk.clearParameter(); 
 Wdt1IuI73BgDDzzMC9q3J_Hk.addParameter(CHANGE_STATUS_TYPE_ACTIVESTATUS_TOLERANCE_ALL, false, ulbD0yT3Hcd2GGJQ3zE7C.tofloat());
 }
} ;

