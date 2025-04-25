
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C



 
function checkExecutableSkill_swordman_slashofboom(OuvLJe_v0vUaxKUtQYhi1L)
{
 if(!OuvLJe_v0vUaxKUtQYhi1L) return false; 
 local TvrSNxpM17wUvJg4gzBg = OuvLJe_v0vUaxKUtQYhi1L.sq_IsUseSkill(237); 
 if(TvrSNxpM17wUvJg4gzBg) 
 {
 
 OuvLJe_v0vUaxKUtQYhi1L.sq_IntVectClear();
 OuvLJe_v0vUaxKUtQYhi1L.sq_IntVectPush(0); 
 OuvLJe_v0vUaxKUtQYhi1L.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;


 
function checkCommandEnable_swordman_slashofboom(lkV5Hf1cCpqaF)
{
 if(!lkV5Hf1cCpqaF) return false; 
 local OBc5EhNWo8 = lkV5Hf1cCpqaF.sq_GetState(); 
 if(OBc5EhNWo8 == STATE_STAND) 
 return true; 
 if(OBc5EhNWo8 == STATE_ATTACK) 
 {
 return lkV5Hf1cCpqaF.sq_IsCommandEnable(237); 
 }
 return true; 
} ;

 
function onSetState_swordman_slashofboom(lkV5Hf1cCpqaF, OBc5EhNWo8, MUffrwzbDfDA89UC6rZGTV, laPGYEuS8GiKIT8I)
{
 if(!lkV5Hf1cCpqaF) return; 
 local SG2UXrfVVxJ = lkV5Hf1cCpqaF.sq_GetVectorData(MUffrwzbDfDA89UC6rZGTV, 0); 
 lkV5Hf1cCpqaF.setSkillSubState(SG2UXrfVVxJ); 
 lkV5Hf1cCpqaF.sq_StopMove(); 
 switch(SG2UXrfVVxJ)
 {
 case 0:
 lkV5Hf1cCpqaF.sq_SetCurrentAnimation(153); 
 break;
 case 1:
 lkV5Hf1cCpqaF.sq_SetCurrentAnimation(154); 
 if(lkV5Hf1cCpqaF.sq_IsMyControlObject())
 {
 local vsq1y12xgGCcRRV = sq_GetSkillLevel(lkV5Hf1cCpqaF, 237); 
 
 lkV5Hf1cCpqaF.sq_StartWrite();
 lkV5Hf1cCpqaF.sq_WriteDword(237); 
 lkV5Hf1cCpqaF.sq_WriteDword(sq_GetLevelData(lkV5Hf1cCpqaF, 237, 0, vsq1y12xgGCcRRV)); 
 lkV5Hf1cCpqaF.sq_WriteDword(lkV5Hf1cCpqaF.sq_GetBonusRateWithPassive(237, 237, 1, 1.0)); 
 lkV5Hf1cCpqaF.sq_SendCreatePassiveObjectPacket(24370, 0, 170, 0, 0); 
 sq_SetMyShake(lkV5Hf1cCpqaF, 5, 300); 
 }
 break;
 }
 lkV5Hf1cCpqaF.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onEndCurrentAni_swordman_slashofboom(FV8LC5ndkd)
{
 if(!FV8LC5ndkd) return; 
 if(!FV8LC5ndkd.sq_IsMyControlObject()) return;
 local OEm1uGxjgR7nElLMvlS8cX0 = FV8LC5ndkd.getSkillSubState(); 
 switch(OEm1uGxjgR7nElLMvlS8cX0)
 {
 case 0:
 FV8LC5ndkd.sq_IntVectClear();
 FV8LC5ndkd.sq_IntVectPush(1);
 FV8LC5ndkd.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, true);
 break;
 case 1:
 
 FV8LC5ndkd.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 break;
 }
} ;



