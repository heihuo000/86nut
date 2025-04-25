
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C




 
function checkExecutableSkill_priest_spearofdestiny(tZzE3PUSWrdlOnph57tz)
{
 if(!tZzE3PUSWrdlOnph57tz) return false; 
 local nggdnApIMMty = tZzE3PUSWrdlOnph57tz.sq_IsUseSkill(249); 
 if(nggdnApIMMty) 
 {
 tZzE3PUSWrdlOnph57tz.sq_AddSetStatePacket(249, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_spearofdestiny(pn5E9EtW12mSJyUkpNtWSOr)
{
 if(!pn5E9EtW12mSJyUkpNtWSOr) return false; 
 local heBLTj8I1YlIzEFZ = pn5E9EtW12mSJyUkpNtWSOr.sq_GetState(); 
 if(heBLTj8I1YlIzEFZ == STATE_STAND) 
 return true; 
 if(heBLTj8I1YlIzEFZ == STATE_ATTACK) 
 {
 return pn5E9EtW12mSJyUkpNtWSOr.sq_IsCommandEnable(249); 
 }
 return true; 
} ;

 
function onSetState_priest_spearofdestiny(grOWtcFjlZS, MB1zbFtOdB3, dK9kELpqGxFfWVgU, dsk86iNy66Z_hSaqydgssGQ)
{
 if(!grOWtcFjlZS) return; 
 grOWtcFjlZS.sq_StopMove(); 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(grOWtcFjlZS, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 grOWtcFjlZS.sq_SetCurrentAnimation(198);
 else
 {
 grOWtcFjlZS.sq_SetCurrentAnimation(168);
 if(CNSquirrelAppendage.sq_IsAppendAppendage(grOWtcFjlZS, "appendage/character/ap_holymace.nut"))
 ChangQing_751675335_BodyHolyMace(grOWtcFjlZS, "SpearOfDestiny_Cast_body")
 }
 grOWtcFjlZS.sq_SetCurrentAttackInfo(114); 
 sq_CreateDrawOnlyObject(grOWtcFjlZS, "character/priest/effect/animation/spearofdestiny/spearofdestiny_cast_flooreff.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 if(grOWtcFjlZS.sq_IsMyControlObject())
 {
 sq_flashScreen(grOWtcFjlZS, 120, 60, 360, 153, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 
 grOWtcFjlZS.sq_StartWrite();
 grOWtcFjlZS.sq_WriteDword(249); 
 grOWtcFjlZS.sq_WriteDword(0); 
 grOWtcFjlZS.sq_WriteDword(grOWtcFjlZS.sq_GetBonusRateWithPassive(249, 249, 0, 1.0)); 
 grOWtcFjlZS.sq_WriteDword(grOWtcFjlZS.sq_GetBonusRateWithPassive(249, 249, 1, 1.0)); 
 grOWtcFjlZS.sq_WriteDword(grOWtcFjlZS.sq_GetBonusRateWithPassive(249, 249, 2, 1.0)); 
 grOWtcFjlZS.sq_SendCreatePassiveObjectPacket(24374, 0, 300, 0, 0);
 }
 grOWtcFjlZS.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onKeyFrameFlag_priest_spearofdestiny(oAdHhkC4rdYInnAyZCk4x7, yhCxMkYKbSOqMA)
{
 if(!oAdHhkC4rdYInnAyZCk4x7) return false;
 if(yhCxMkYKbSOqMA == 100)
 {
 oAdHhkC4rdYInnAyZCk4x7.sq_PlaySound("PR_SPEAR_DESTINY"); 
 sq_CreateDrawOnlyObject(oAdHhkC4rdYInnAyZCk4x7, "character/priest/effect/animation/spearofdestiny/spearofdestiny_shot_eff05.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 return true;
} ;

 
function onEndCurrentAni_priest_spearofdestiny(R6wufFN21VTIeBPOPS)
{
 if(!R6wufFN21VTIeBPOPS) return;
 if(R6wufFN21VTIeBPOPS.sq_IsMyControlObject())
 R6wufFN21VTIeBPOPS.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


ADDEXTRANUT <- 0 