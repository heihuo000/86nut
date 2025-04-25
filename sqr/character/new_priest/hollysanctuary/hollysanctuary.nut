
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C



 
function checkExecutableSkill_priest_hollysanctuary(lQ14dbvgh96YoK72)
{
 if(!lQ14dbvgh96YoK72) return false; 
 local EJvrgG4ZfzpFRM_loq7 = lQ14dbvgh96YoK72.sq_IsUseSkill(248); 
 if(EJvrgG4ZfzpFRM_loq7) 
 {
 
 lQ14dbvgh96YoK72.sq_IsEnterSkillLastKeyUnits(248);
 lQ14dbvgh96YoK72.sq_IntVectClear();
 lQ14dbvgh96YoK72.sq_IntVectPush(0); 
 lQ14dbvgh96YoK72.sq_AddSetStatePacket(248, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_hollysanctuary(nyR4lj4rK_oNjnx4ZfH)
{
 if(!nyR4lj4rK_oNjnx4ZfH) return false; 
 local KRR6H2ULS49zt7cG0YD = nyR4lj4rK_oNjnx4ZfH.sq_GetState(); 
 if(KRR6H2ULS49zt7cG0YD == STATE_STAND) 
 return true; 
 if(KRR6H2ULS49zt7cG0YD == STATE_ATTACK) 
 {
 return nyR4lj4rK_oNjnx4ZfH.sq_IsCommandEnable(248); 
 }
 return true; 
} ;

 
function onSetState_priest_hollysanctuary(LEzvjS7wTmiN4Nl, DtrXU1GyhncObZQs1, CpH8Bov6rHIhqK, HaknpIHGr7ZyjTSMBVD4)
{
 if(!LEzvjS7wTmiN4Nl) return; 
 LEzvjS7wTmiN4Nl.sq_StopMove(); 
 local SWoVfQH_n_fR = LEzvjS7wTmiN4Nl.sq_GetVectorData(CpH8Bov6rHIhqK, 0); 
 LEzvjS7wTmiN4Nl.setSkillSubState(SWoVfQH_n_fR); 
 switch(SWoVfQH_n_fR)
 {
 case 0:
 if(CNSquirrelAppendage.sq_IsAppendAppendage(LEzvjS7wTmiN4Nl, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 LEzvjS7wTmiN4Nl.sq_SetCurrentAnimation(196);
else
 {
 LEzvjS7wTmiN4Nl.sq_SetCurrentAnimation(166);
 if(CNSquirrelAppendage.sq_IsAppendAppendage(LEzvjS7wTmiN4Nl, "appendage/character/ap_holymace.nut"))
 ChangQing_751675335_BodyHolyMace(LEzvjS7wTmiN4Nl, "HollySanctuaryCast1") 
 }
 LEzvjS7wTmiN4Nl.getVar().clear_obj_vector(); 
 if(LEzvjS7wTmiN4Nl.sq_IsMyControlObject())
 {
 local Dm8FOE4cW0 = sq_GetSkillLevel(LEzvjS7wTmiN4Nl, 248); 
 LEzvjS7wTmiN4Nl.sq_StartWrite();
 LEzvjS7wTmiN4Nl.sq_WriteDword(248); 
 LEzvjS7wTmiN4Nl.sq_WriteDword(1); 
 LEzvjS7wTmiN4Nl.sq_WriteDword(LEzvjS7wTmiN4Nl.sq_GetLevelData(248, 0, Dm8FOE4cW0)); 
 LEzvjS7wTmiN4Nl.sq_WriteDword(LEzvjS7wTmiN4Nl.sq_GetBonusRateWithPassive(248, 248, 1, 1.0)); 
 LEzvjS7wTmiN4Nl.sq_WriteDword(LEzvjS7wTmiN4Nl.sq_GetLevelData(248, 2, Dm8FOE4cW0)); 
 LEzvjS7wTmiN4Nl.sq_WriteDword(LEzvjS7wTmiN4Nl.sq_GetBonusRateWithPassive(248, 248, 3, 1.0)); 
 LEzvjS7wTmiN4Nl.sq_SendCreatePassiveObjectPacket(24374, 0, 150, 0, 0);
 }
 break;
 case 1:
 if(CNSquirrelAppendage.sq_IsAppendAppendage(LEzvjS7wTmiN4Nl, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 LEzvjS7wTmiN4Nl.sq_SetCurrentAnimation(197);
 else
 {
 LEzvjS7wTmiN4Nl.sq_SetCurrentAnimation(167);
 if(CNSquirrelAppendage.sq_IsAppendAppendage(LEzvjS7wTmiN4Nl, "appendage/character/ap_holymace.nut"))
 ChangQing_751675335_BodyHolyMace(LEzvjS7wTmiN4Nl, "HollySanctuaryCast2") 
 }
 break;
 }
 LEzvjS7wTmiN4Nl.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onProcCon_priest_hollysanctuary(W_9NYSJTAYLX6lb4tRE)
{
 if(!W_9NYSJTAYLX6lb4tRE) return;
 local l9xcG0Nte1cWqBpKM = W_9NYSJTAYLX6lb4tRE.getSkillSubState(); 
 if(l9xcG0Nte1cWqBpKM == 0)
 if(W_9NYSJTAYLX6lb4tRE.sq_GetStateTimer() > 500 || !W_9NYSJTAYLX6lb4tRE.isDownSkillLastKey()) 
 {
 W_9NYSJTAYLX6lb4tRE.sq_IntVectClear();
 W_9NYSJTAYLX6lb4tRE.sq_IntVectPush(1); 
 W_9NYSJTAYLX6lb4tRE.sq_AddSetStatePacket(248, STATE_PRIORITY_USER, true); 
 }
 if(W_9NYSJTAYLX6lb4tRE.getVar().get_obj_vector_size() > 0) 
 {
 local VyyEdPDB84rpYi0sad = 0; 
 local OqTGWkO9iA99U4IOd = 0; 
 local DGSPLZZ1ZfrWG = 2; 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)) 
 OqTGWkO9iA99U4IOd -= DGSPLZZ1ZfrWG;
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) 
 OqTGWkO9iA99U4IOd += DGSPLZZ1ZfrWG;
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)) 
 VyyEdPDB84rpYi0sad -= DGSPLZZ1ZfrWG;
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL)) 
 VyyEdPDB84rpYi0sad += DGSPLZZ1ZfrWG;
 local BsdgilYwTQceMVnyMQR = W_9NYSJTAYLX6lb4tRE.getVar().get_obj_vector(0); 
 if(BsdgilYwTQceMVnyMQR)
 {
 if(VyyEdPDB84rpYi0sad!=0)
 sq_setCurrentAxisPos(BsdgilYwTQceMVnyMQR, 0, sq_GetXPos(BsdgilYwTQceMVnyMQR) + VyyEdPDB84rpYi0sad); 
 if(OqTGWkO9iA99U4IOd!=0)
 sq_setCurrentAxisPos(BsdgilYwTQceMVnyMQR, 1, sq_GetYPos(BsdgilYwTQceMVnyMQR) + OqTGWkO9iA99U4IOd); 
 }
 }
} ;

function onKeyFrameFlag_priest_hollysanctuary(J__BVkc91qxJx, UqZ8RK9ZNEEMQV5d0M)
{
 if(!J__BVkc91qxJx) return false;
 local vsXfzPT5JZSUQWqv7 = J__BVkc91qxJx.getSkillSubState(); 
 if(vsXfzPT5JZSUQWqv7 == 1)
 {
 if(UqZ8RK9ZNEEMQV5d0M == 1)
 J__BVkc91qxJx.sq_PlaySound("PR_HOLYSANCTUARY_02"); 
 }
 return true;
} ;

 
function onEndCurrentAni_priest_hollysanctuary(QwhqCWv7VNMHGSWZGmH)
{
 if(!QwhqCWv7VNMHGSWZGmH) return;
 if(!QwhqCWv7VNMHGSWZGmH.sq_IsMyControlObject())return;
 local tQnwXPcsMurkX019irHVbMIe = QwhqCWv7VNMHGSWZGmH.getSkillSubState(); 
 if(tQnwXPcsMurkX019irHVbMIe == 1)
 QwhqCWv7VNMHGSWZGmH.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

ADDEXTRANUT <- 0 