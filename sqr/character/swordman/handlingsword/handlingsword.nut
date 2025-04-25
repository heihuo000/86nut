
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C




 
function checkExecutableSkill_swordman_handlingsword(oPcIniZd6tvd)
{
 if(!oPcIniZd6tvd) return false; 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(oPcIniZd6tvd, "character/swordman/handlingsword/ap_handlingsword_buff.nut")) 
 {
 
 onEndRangeAttack_appendage_swordman_handlingsword_buff(oPcIniZd6tvd);
 
 CNSquirrelAppendage.sq_RemoveAppendage(oPcIniZd6tvd, "character/swordman/handlingsword/ap_handlingsword_buff.nut"); 
 return false;
 }
 local PMzLXh751niQ = oPcIniZd6tvd.sq_IsUseSkill(246); 
 if(PMzLXh751niQ) 
 {
 oPcIniZd6tvd.sq_AddSetStatePacket(246, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_swordman_handlingsword(oPcIniZd6tvd)
{
 if(!oPcIniZd6tvd) return false; 
 local PMzLXh751niQ = oPcIniZd6tvd.sq_GetState(); 
 if(PMzLXh751niQ == STATE_STAND) 
 return true; 
 if(PMzLXh751niQ == STATE_ATTACK) 
 {
 return oPcIniZd6tvd.sq_IsCommandEnable(246); 
 }
 return true; 
} ;

 
function onSetState_swordman_handlingsword(ReOzY_hrTitU_wdDqor6DnFA, yWXyY8u3dXn_E, hgeLxr7YyvM, kG3r0jNtmhvMM9NRTiG)
{
 if(!ReOzY_hrTitU_wdDqor6DnFA) return; 
 ReOzY_hrTitU_wdDqor6DnFA.sq_StopMove(); 
 ReOzY_hrTitU_wdDqor6DnFA.sq_SetCurrentAnimation(168); 
 ReOzY_hrTitU_wdDqor6DnFA.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onKeyFrameFlag_swordman_handlingsword(ReOzY_hrTitU_wdDqor6DnFA, yWXyY8u3dXn_E)
{
 if(!ReOzY_hrTitU_wdDqor6DnFA) return false;
 if(yWXyY8u3dXn_E == 1 && ReOzY_hrTitU_wdDqor6DnFA.sq_IsMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1);
 sq_SendChangeSkillEffectPacket(ReOzY_hrTitU_wdDqor6DnFA, 246); 
 }
 return true;
} ;

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onEndCurrentAni_swordman_handlingsword(fg7ITqkeb4PUafs)
{
 if(!fg7ITqkeb4PUafs) return;
 if(!fg7ITqkeb4PUafs.sq_IsMyControlObject()) return;
 fg7ITqkeb4PUafs.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

function onChangeSkillEffect_swordman_handlingsword(fg7ITqkeb4PUafs, tAhtIufpbLca8msOl, YGXdwQJdUVpnCGRKHN4uT01F)
{
 if(!fg7ITqkeb4PUafs) return;
 local HY74MP1rfFnW = YGXdwQJdUVpnCGRKHN4uT01F.readWord(); 
 switch(HY74MP1rfFnW)
 {
 case 1:
 if(CNSquirrelAppendage.sq_IsAppendAppendage(fg7ITqkeb4PUafs, "character/swordman/handlingsword/ap_handlingsword_buff.nut")) 
 CNSquirrelAppendage.sq_RemoveAppendage(fg7ITqkeb4PUafs, "character/swordman/handlingsword/ap_handlingsword_buff.nut");
 local EJhaWk0MBOIiAgReoWD5 = sq_GetSkillLevel(fg7ITqkeb4PUafs, 246); 
 local cCPoIrisb15y = CNSquirrelAppendage.sq_AppendAppendage(fg7ITqkeb4PUafs, fg7ITqkeb4PUafs, 246, false, "character/swordman/handlingsword/ap_handlingsword_buff.nut", false);
 cCPoIrisb15y.setAppendCauseSkill(BUFF_CAUSE_SKILL, ENUM_CHARACTERJOB_SWORDMAN, 246, EJhaWk0MBOIiAgReoWD5); 
 cCPoIrisb15y.sq_SetValidTime(sq_GetLevelData(fg7ITqkeb4PUafs, 246, 0, EJhaWk0MBOIiAgReoWD5)); 
 CNSquirrelAppendage.sq_AppendAppendageID(cCPoIrisb15y, fg7ITqkeb4PUafs, fg7ITqkeb4PUafs, 229, false); 
 break;
 }
} ;

 
function setState_Swordman_swordman_handlingsword(NQbCRszwkKrUTQst0qWd, NNZHEjA0zm8Lbo3G6iK, Wxdg_qfSO2Qaz5, UT60CPqNo5H7iojCXA56xWxG)
{
 if(!NQbCRszwkKrUTQst0qWd) return;
 
 local e_pkMGgkok90uBns = CNSquirrelAppendage.sq_GetAppendage(NQbCRszwkKrUTQst0qWd, "character/swordman/handlingsword/ap_handlingsword_buff.nut");
 if(e_pkMGgkok90uBns && e_pkMGgkok90uBns.isValid()) 
 {
 local rpw25zi8IQgMv0qin = 0; 
 local DLbpijU_KiXRGbSNbwRhMb = NQbCRszwkKrUTQst0qWd.sq_GetVectorData(Wxdg_qfSO2Qaz5, 0); 
 switch(NNZHEjA0zm8Lbo3G6iK)
 {
 case STATE_DIE: 
 
 onEndRangeAttack_appendage_swordman_handlingsword_buff(NQbCRszwkKrUTQst0qWd);
 CNSquirrelAppendage.sq_RemoveAppendage(NQbCRszwkKrUTQst0qWd, "character/swordman/handlingsword/ap_handlingsword_buff.nut"); 
 return;
 case 7: case 8: case 15: case 22: case 39: rpw25zi8IQgMv0qin = 1; break; 
 case 62: case 63: case 64: rpw25zi8IQgMv0qin = 2; break; 
 case 40: 
 case 234: 
 if(DLbpijU_KiXRGbSNbwRhMb == 0)rpw25zi8IQgMv0qin = 4;
 break;
 case 58: 
 if(DLbpijU_KiXRGbSNbwRhMb == 99)rpw25zi8IQgMv0qin = 5;
 break;
 }
 if(rpw25zi8IQgMv0qin != 0)
 e_pkMGgkok90uBns.getVar().set_vector(0, rpw25zi8IQgMv0qin); 
 }
} ;

 
function onEndRangeAttack_appendage_swordman_handlingsword_buff(l3AIA3_2MXV_l4Obpm)
{
 if(!l3AIA3_2MXV_l4Obpm)return;
 if(l3AIA3_2MXV_l4Obpm.isMyControlObject()) 
 {
 local locedzvOZ60vqtDV = sq_GetSkillLevel(l3AIA3_2MXV_l4Obpm, 246); 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(246); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(l3AIA3_2MXV_l4Obpm.sq_GetBonusRateWithPassive(246, 246, 2, 1.0)); 
 sq_BinaryWriteDword(l3AIA3_2MXV_l4Obpm.sq_GetBonusRateWithPassive(246, 246, 3, 1.0)); 
 sq_BinaryWriteDword(l3AIA3_2MXV_l4Obpm.sq_GetLevelData(246, 4, locedzvOZ60vqtDV)); 
 sq_BinaryWriteDword(l3AIA3_2MXV_l4Obpm.sq_GetLevelData(246, 5, locedzvOZ60vqtDV)); 
 sq_BinaryWriteDword(l3AIA3_2MXV_l4Obpm.sq_GetLevelData(246, 6, locedzvOZ60vqtDV)); 
 sq_SendCreatePassiveObjectPacketPos(l3AIA3_2MXV_l4Obpm, 24370, 0, l3AIA3_2MXV_l4Obpm.getXPos(), l3AIA3_2MXV_l4Obpm.getYPos(), l3AIA3_2MXV_l4Obpm.getZPos()); 
 }
} ;


