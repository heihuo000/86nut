
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C



 
function checkExecutableSkill_Ripper(obj)
{
 if(!obj) return false;
 local yBbaFpXtbeG0l = obj.sq_IsUseSkill(117);
 if(yBbaFpXtbeG0l)
 {
		obj.sq_IntVectClear();
 obj.sq_addSetStatePacket(65, STATE_PRIORITY_USER, false);
 return true;
 }
 return false;
} ;

 
function checkCommandEnable_Ripper(JIcLMEsck9QXTpJ2qStrn)
{
 if(!JIcLMEsck9QXTpJ2qStrn) return false;
 local iJumk69yqCCjS6BHXc1SU = JIcLMEsck9QXTpJ2qStrn.sq_GetSTATE();
 if(iJumk69yqCCjS6BHXc1SU == STATE_ATTACK)
 {
 
 return JIcLMEsck9QXTpJ2qStrn.sq_IsCommandEnable(117);
 }
 return true;
} ;

 


 
function onIsCheckHitCollision_Ripper(QLC6NDdzsB4Z, WJS5wjsxzAgnpsv29gda0kdJ)
{
 return true;
} ;

function isForceHitCheck_Ripper(Cd7L3cZaZ_FrD1e4gWtsq0MK)
{
 return true;
} ;

function onAttack_Ripper(Cd7L3cZaZ_FrD1e4gWtsq0MK, sTY7IagIy5F3, QpTceXgar4e)
{
 local Ux9tHXfyUKKtewYgvbVh0y = Cd7L3cZaZ_FrD1e4gWtsq0MK.getVar();
 Ux9tHXfyUKKtewYgvbVh0y.setBool(0, true); 
 local BIUH5xL_mzo = Ux9tHXfyUKKtewYgvbVh0y.getBool(1); 
 if(!BIUH5xL_mzo)
 {
 Ux9tHXfyUKKtewYgvbVh0y.push_obj_vector(sTY7IagIy5F3);
 sq_AtrractionForce(Cd7L3cZaZ_FrD1e4gWtsq0MK, sTY7IagIy5F3, false, 270, -1, 2000.0, 1500.0, false); 
 sq_EffectLayerAppendage(sTY7IagIy5F3, sq_RGB(255, 255, 255), 155, 0, 80, 0);
 }
} ;


function onEndState_Ripper(Ae958nz8rExvtCnHv, bQIBhzjEDTM2OoZY8P5wef)
{
 if(!Ae958nz8rExvtCnHv) return;
 local xvUFpBYjiGRPTJSGUYvD = Ae958nz8rExvtCnHv.getVar();
 xvUFpBYjiGRPTJSGUYvD.clear_obj_vector();
 local oqXwTmFJPsU3ZpkPI6U6tI = sq_GetCurrentAnimation(Ae958nz8rExvtCnHv);
 if(oqXwTmFJPsU3ZpkPI6U6tI)
 {
 local tmyHgCjvUWZrs = xvUFpBYjiGRPTJSGUYvD.getFloat(2);
 oqXwTmFJPsU3ZpkPI6U6tI.setAttackBoundingBoxSizeRate(1.0 / tmyHgCjvUWZrs, true);
 }
 Ae958nz8rExvtCnHv.sq_setXScrollStop(0);
} ;


 
function onSetState_Ripper(HZD5tk1MTlUJdECKAOkI, ptvdiMrBxZSYxz, sxFwp7114LkIvZS, wKjETuPNzG29)
{
 if(!HZD5tk1MTlUJdECKAOkI) return;
 local BwL8vRuCygwqekcJiI = HZD5tk1MTlUJdECKAOkI.getVar();
 HZD5tk1MTlUJdECKAOkI.sq_stopMove();
 HZD5tk1MTlUJdECKAOkI.sq_setCurrentAnimation(91);
 HZD5tk1MTlUJdECKAOkI.sq_setCurrentAttackInfo(73);
 HZD5tk1MTlUJdECKAOkI.sq_setAttackPowerWithPassive(117, ptvdiMrBxZSYxz, -1, 0, 1.0);
 BwL8vRuCygwqekcJiI.setBool(0, false);
 BwL8vRuCygwqekcJiI.setBool(1, false);
 BwL8vRuCygwqekcJiI.setFloat(2, 1.0);
 HZD5tk1MTlUJdECKAOkI.sq_setXScroll(180, 100, HZD5tk1MTlUJdECKAOkI.sq_getDelaySum()-200, 100);
 HZD5tk1MTlUJdECKAOkI.sq_PlaySound("PR_RIPPER_READY");
} ;

function onEndCurrentAni_Ripper(TPGpocWFM5f8Gc)
{
 TPGpocWFM5f8Gc.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 TPGpocWFM5f8Gc.sq_setfindNearMovablePos(TPGpocWFM5f8Gc.getXPos(), TPGpocWFM5f8Gc.getYPos(), 50, 1, 5);
} ;

function onKeyFrameFlag_Ripper(gCrbiURDLLL88OysGhH, FJtIZk0EUAz)
{
 local dxeQ9imnHq9 = gCrbiURDLLL88OysGhH.getVar();
 if(FJtIZk0EUAz == 1) 
 gCrbiURDLLL88OysGhH.sq_setShake(gCrbiURDLLL88OysGhH, 4, 60);
 else if(FJtIZk0EUAz == 2)
 gCrbiURDLLL88OysGhH.sq_setShake(gCrbiURDLLL88OysGhH, 2, 30);
 else if(FJtIZk0EUAz == 3)
 {
 sq_SetMyShake(gCrbiURDLLL88OysGhH, 3, 60); 
 }
 else if(FJtIZk0EUAz == 4)
 sq_SetMyShake(gCrbiURDLLL88OysGhH, 2, 30); 
 else if(FJtIZk0EUAz == 6)
 {
 gCrbiURDLLL88OysGhH.sq_setCurrentAttackInfo(73);
 local RojKJeqBLlZkY = gCrbiURDLLL88OysGhH.sq_GetSTATE();
 gCrbiURDLLL88OysGhH.sq_setAttackPowerWithPassive(117, RojKJeqBLlZkY, -1, 0, 1.0);
 }
 else if(FJtIZk0EUAz == 5 && dxeQ9imnHq9.getBool(0))
 {
 local RojKJeqBLlZkY = gCrbiURDLLL88OysGhH.sq_GetSTATE();
 gCrbiURDLLL88OysGhH.sq_setCurrentAttackInfo(85);
 
 local A_7Q0qDxQbrDWSCRRO = sq_GetSkillLevel(gCrbiURDLLL88OysGhH, 165);
 if(!sq_isPVPMode() && A_7Q0qDxQbrDWSCRRO > 0)
 {
 local J41KFgDsq1R6WeoSUh3JcyW = sq_GetLevelData(gCrbiURDLLL88OysGhH, 117, 2, A_7Q0qDxQbrDWSCRRO);
 J41KFgDsq1R6WeoSUh3JcyW = J41KFgDsq1R6WeoSUh3JcyW * 0.01;
 local Xm83SDnX7hlvU9seyH = sq_GetCurrentAnimation(gCrbiURDLLL88OysGhH);
 if(Xm83SDnX7hlvU9seyH)
 {
 Xm83SDnX7hlvU9seyH.setAttackBoundingBoxSizeRate(J41KFgDsq1R6WeoSUh3JcyW, true);
 dxeQ9imnHq9.setFloat(2, J41KFgDsq1R6WeoSUh3JcyW);
 }
 }
 gCrbiURDLLL88OysGhH.sq_setAttackPowerWithPassive(117, RojKJeqBLlZkY, -1, 1, 1.0);
 sq_AddDrawOnlyAniFromParent(gCrbiURDLLL88OysGhH, "Character/Priest/Effect/Animation/Ripper/etc/33p_1_burst1-handup_normal.ani", 0, 1, 0);
 sq_AddDrawOnlyAniFromParent(gCrbiURDLLL88OysGhH, "Character/Priest/Effect/Animation/Ripper/etc/33p_burst1-handup_normal.ani", 0, 1, 0);
 local nBjRQp0ttmZgmzzMruO = sq_flashScreen(gCrbiURDLLL88OysGhH, 80, 80, 0, 255, sq_RGBA(255, 255, 255, 128), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 sq_addFlashScreen(nBjRQp0ttmZgmzzMruO, 0, 0, 400, 255, sq_RGBA(0, 0, 0, 180), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 local czPMeAF5v3LWUR9WlV = dxeQ9imnHq9.get_obj_vector_size();
 for(local FAbaay0X3ew8Bvye_r = 0; FAbaay0X3ew8Bvye_r < czPMeAF5v3LWUR9WlV; ++FAbaay0X3ew8Bvye_r)
 {
 local gCrbiURDLLL88OysGhH = dxeQ9imnHq9.get_obj_vector(FAbaay0X3ew8Bvye_r);
 if(gCrbiURDLLL88OysGhH == null)
 continue;
 sq_EffectLayerAppendage(gCrbiURDLLL88OysGhH, sq_RGB(0, 0, 0), 255, 0, 160, 160);
 }
 }
 else if(FJtIZk0EUAz == 7 && dxeQ9imnHq9.getBool(0))
 {
 dxeQ9imnHq9.setBool(1, true);
 sq_SendCreatePassiveObjectPacket(gCrbiURDLLL88OysGhH, 24102, 0, 267, 1, 83, gCrbiURDLLL88OysGhH.getDirection());
 gCrbiURDLLL88OysGhH.sq_PlaySound("R_PR_RIPPER");
 }
 return true;
} ;



