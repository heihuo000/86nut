
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
SUBSTATE_PANDEMONIUM_EX_START <- 0;
SUBSTATE_PANDEMONIUM_EX_END   <- 1;

 
PEND_EX_MAGIC_FIELD     <- 0;
PEND_EX_IS_ENDED     <- 1;
PEND_EX_CREATE_DEVIL_COUNT   <- 2;
PEND_EX_MAGIC_OVER     <- 3;
PEND_EX_FLASHSCREEN     <- 4; 

PEND_EVENT_TIMER_CREATE_DEVIL <- 0;


function sendSubState_PandemoniumEx(nSZFySt43Yp6L, I7Q2tvx5AR)
{ 
 if(!nSZFySt43Yp6L) return;
 nSZFySt43Yp6L.sq_IntVectClear();
 nSZFySt43Yp6L.sq_IntVectPush(I7Q2tvx5AR); 
 nSZFySt43Yp6L.sq_addSetStatePacket(73, STATE_PRIORITY_IGNORE_FORCE, true);
} ;
 

 
function checkExecutableSkill_PandemoniumEx(Xt4mdzSVWO) 
{
 if(!Xt4mdzSVWO) return false;
 local cUb0kZk2v9 = Xt4mdzSVWO.sq_IsUseSkill(133);
 if(cUb0kZk2v9) {
 sendSubState_PandemoniumEx(Xt4mdzSVWO,0);
 return true;
 } 
 
 return false;
} ;

function checkCommandEnable_PandemoniumEx(fWC0pHGXgo_jaV_ZPpjS0)
{
 if(!fWC0pHGXgo_jaV_ZPpjS0) return false;
 return true;
} ;
 
function resetDungeonStart_PandemoniumEx(P56FjbsSVsOP8jdw1Ot, AmgPteh4NWVxzPZ5bNucc, rNbA41KOF6anV5Ignr7uFa, syjnuY4lAyLckwc8, syHJqVFFg9h2fy2)
{
 P56FjbsSVsOP8jdw1Ot.sq_setXScrollStop(0);
} ;

 
function onIsCheckHitCollision_PandemoniumEx(P56FjbsSVsOP8jdw1Ot,AmgPteh4NWVxzPZ5bNucc)
{
 local rNbA41KOF6anV5Ignr7uFa = P56FjbsSVsOP8jdw1Ot.getSkillSubState(); 
 if(rNbA41KOF6anV5Ignr7uFa == SUBSTATE_POWER_OF_DARKNESS_START) 
 return true;
 
 
 return true;
} ;


 
function onSetState_PandemoniumEx(GSPDvjZQdwC2u7OryntZoG, GqLERV26NybrS, gLo7mQpJim3BpSRTSvV, MEYGuYp4NFPXBmMIV)
{ 
 if(!GSPDvjZQdwC2u7OryntZoG) return;
 local DtCCZomUEozpc1itIYrcK = GSPDvjZQdwC2u7OryntZoG.getVar(); 
 local gtZcK9_SDBO0FPE2PdyQ21W = GSPDvjZQdwC2u7OryntZoG.sq_getVectorData(gLo7mQpJim3BpSRTSvV, 0); 
 GSPDvjZQdwC2u7OryntZoG.setSkillSubState(gtZcK9_SDBO0FPE2PdyQ21W);
 if(gtZcK9_SDBO0FPE2PdyQ21W == 0) { 
 GSPDvjZQdwC2u7OryntZoG.sq_stopMove();
 
 if(isAvengerAwakenning(GSPDvjZQdwC2u7OryntZoG)) {
 local hIRPLazkZHNI2glhILc = GSPDvjZQdwC2u7OryntZoG.getVar().GetAnimationMap("PAND_EX_START", "Character/Priest/Animation/AvengerAwakening/PandemoniumStart.ani"); 
 GSPDvjZQdwC2u7OryntZoG.setCurrentAnimation(hIRPLazkZHNI2glhILc);
 GSPDvjZQdwC2u7OryntZoG.sq_setCurrentAttackInfo(97);
 }
 else {
 GSPDvjZQdwC2u7OryntZoG.sq_setCurrentAnimation(115);
 GSPDvjZQdwC2u7OryntZoG.sq_setCurrentAttackInfo(96);
 }
 
 
 local UxtnETBKyoZyRye9v = GSPDvjZQdwC2u7OryntZoG.sq_getBonusRateWithPassive(133, 73, 0,1.0);
 
 
 if(isAvengerAwakenning(GSPDvjZQdwC2u7OryntZoG)) {
 local Clzu8MSV0aXJXq = GSPDvjZQdwC2u7OryntZoG.sq_getIntData(0);
 UxtnETBKyoZyRye9v = UxtnETBKyoZyRye9v * (Clzu8MSV0aXJXq + 100) * 0.01;
 }
 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(GSPDvjZQdwC2u7OryntZoG),UxtnETBKyoZyRye9v.tointeger()); 
 GSPDvjZQdwC2u7OryntZoG.sq_setXScrollStart(300,150); 
 }
 else if(gtZcK9_SDBO0FPE2PdyQ21W == 1) {
 if(isAvengerAwakenning(GSPDvjZQdwC2u7OryntZoG)) {
 local hIRPLazkZHNI2glhILc = GSPDvjZQdwC2u7OryntZoG.getVar().GetAnimationMap("PAND_EX_END", "Character/Priest/Animation/AvengerAwakening/PandemoniumEnd.ani"); 
 GSPDvjZQdwC2u7OryntZoG.setCurrentAnimation(hIRPLazkZHNI2glhILc);
 }
 else {
 GSPDvjZQdwC2u7OryntZoG.sq_setCurrentAnimation(116);
 }
 GSPDvjZQdwC2u7OryntZoG.sq_setXScrollStop(300); 
 sq_SetMyShake(GSPDvjZQdwC2u7OryntZoG,0,0); 
 
 
 local cM33dduGITEBjhOPnrhIkwY = DtCCZomUEozpc1itIYrcK.getObject(4); 
 if(cM33dduGITEBjhOPnrhIkwY) { 
 local Z4n22Lr9WBx = sq_GetCNRDObjectToFlashScreen(cM33dduGITEBjhOPnrhIkwY);
 if(Z4n22Lr9WBx)
 Z4n22Lr9WBx.fadeOut();
 } 
 }
} ;

function onEndState_PandemoniumEx(KctYPDY0yKxNV1DrQG1AHs,i9KX_f0l5wd) 
{ 
 if(!KctYPDY0yKxNV1DrQG1AHs) return;
 
 if(i9KX_f0l5wd != 1) {
 
 local KY90JAgs56 = KctYPDY0yKxNV1DrQG1AHs.getVar(); 
 
 local wgInvARe1xj5vZLYRygg = KY90JAgs56.getObject(0);
 if(wgInvARe1xj5vZLYRygg)
 wgInvARe1xj5vZLYRygg.setValid(false);
 
 local T_BmkFe_j__2lHcoHxPzM = KY90JAgs56.getObject(3);
 if(T_BmkFe_j__2lHcoHxPzM)
 T_BmkFe_j__2lHcoHxPzM.setValid(false);
 
 
 local EgmT8N5S6IOCkhA = KY90JAgs56.getBool(1);
 if(!EgmT8N5S6IOCkhA) { 
 
 local tBjeWxk233fdHSYVFtlm_FYy = sq_CreateDrawOnlyObject(KctYPDY0yKxNV1DrQG1AHs,"Character/Priest/Effect/Animation/Pandemonium/end/base.ani",ENUM_DRAWLAYER_NORMAL,true);
 local PXosbf6nHhF2FA3NvQ5WPBs = sq_CreateDrawOnlyObject(KctYPDY0yKxNV1DrQG1AHs,"Character/Priest/Effect/Animation/Pandemonium/end/OverEffectbase.ani",ENUM_DRAWLAYER_NORMAL,true);
 
 if(isAvengerAwakenning(KctYPDY0yKxNV1DrQG1AHs)) {
 local H8rBe_oowo = sq_GetDistancePos(tBjeWxk233fdHSYVFtlm_FYy.getXPos(), KctYPDY0yKxNV1DrQG1AHs.getDirection(), 80); 
 tBjeWxk233fdHSYVFtlm_FYy.setCurrentPos(H8rBe_oowo, tBjeWxk233fdHSYVFtlm_FYy.getYPos(), tBjeWxk233fdHSYVFtlm_FYy.getZPos()+20); 
 
 
 PXosbf6nHhF2FA3NvQ5WPBs.setCurrentPos(tBjeWxk233fdHSYVFtlm_FYy.getXPos(), tBjeWxk233fdHSYVFtlm_FYy.getYPos()+2, tBjeWxk233fdHSYVFtlm_FYy.getZPos()); 
 }
 
 KY90JAgs56.setBool(1,true);
 }
 
 KctYPDY0yKxNV1DrQG1AHs.sq_setXScrollStop(300);
 sq_SetMyShake(KctYPDY0yKxNV1DrQG1AHs,0,0); 
 }
} ;


function onTimeEvent_PandemoniumEx(JIcLMEsck9QXTpJ2qStrn, iJumk69yqCCjS6BHXc1SU, tFP26rTBJ1t2bUEjqt)
{ 
 local aMYMtmA6sKPwG5Q = JIcLMEsck9QXTpJ2qStrn.getVar(); 
 local mJg_BWr5XeOmuexsGjxmj = JIcLMEsck9QXTpJ2qStrn.sq_getIntData(1);
 local Qzf7o66JjNBV8WFtgWDm41 = JIcLMEsck9QXTpJ2qStrn.sq_getIntData(2); 
 local oJ9dggfW1pUaCRHp7_4DSR = JIcLMEsck9QXTpJ2qStrn.sq_getIntData(3); 
 local rXnm1ZGKPxEro9 = JIcLMEsck9QXTpJ2qStrn.sq_getIntData(4);
 local Sk3dCRzuLEQoTQ0y7bc5l = aMYMtmA6sKPwG5Q.getInt(2);
 
 if(Sk3dCRzuLEQoTQ0y7bc5l == mJg_BWr5XeOmuexsGjxmj) {
 JIcLMEsck9QXTpJ2qStrn.setTimeEvent(0,30,0,false); 
 aMYMtmA6sKPwG5Q.setInt(2,Sk3dCRzuLEQoTQ0y7bc5l+1);
 }
 else if(Sk3dCRzuLEQoTQ0y7bc5l > mJg_BWr5XeOmuexsGjxmj) {
 sendSubState_PandemoniumEx(JIcLMEsck9QXTpJ2qStrn,1);
 return true;
 }
 else { 
 local LsPrlBKphb9giTPgPOWTIV = Sk3dCRzuLEQoTQ0y7bc5l%2 == 1 ? sq_getRandom(-20,-45) : sq_getRandom(20,45);
 
 local YqiPtcIF4iZWOTOq = sq_getRandom(0,4); 
 
 
 local vne38ypdbPHFcJ8ZZ = JIcLMEsck9QXTpJ2qStrn.sq_getIntData(0);
 local ewtEHPA57h2 = isAvengerAwakenning(JIcLMEsck9QXTpJ2qStrn) ? (vne38ypdbPHFcJ8ZZ + 100)* 0.01 : 1.0;
 local F0n4r8AhlX = JIcLMEsck9QXTpJ2qStrn.sq_getBonusRateWithPassive(133, 73, 0, ewtEHPA57h2);
 local zODL_QkAOGvY_oGAxp28CacN = 85;
 local fjE09cU8rLC2KAvUUartd = 64;
 
 if(isAvengerAwakenning(JIcLMEsck9QXTpJ2qStrn)) {
 zODL_QkAOGvY_oGAxp28CacN = 160;
 fjE09cU8rLC2KAvUUartd = 80; 
 } 
 
 JIcLMEsck9QXTpJ2qStrn.sq_binaryData_startWrite(); 
 JIcLMEsck9QXTpJ2qStrn.sq_binaryData_writeWord(YqiPtcIF4iZWOTOq);
 JIcLMEsck9QXTpJ2qStrn.sq_binaryData_writeWord(Qzf7o66JjNBV8WFtgWDm41);
 JIcLMEsck9QXTpJ2qStrn.sq_binaryData_writeWord(oJ9dggfW1pUaCRHp7_4DSR); 
 JIcLMEsck9QXTpJ2qStrn.sq_binaryData_writeWord(rXnm1ZGKPxEro9);
 JIcLMEsck9QXTpJ2qStrn.sq_binaryData_writeDword(F0n4r8AhlX.tointeger()); 
 
 
 sq_SendCreatePassiveObjectPacket(JIcLMEsck9QXTpJ2qStrn,24110, 0, zODL_QkAOGvY_oGAxp28CacN, 1, fjE09cU8rLC2KAvUUartd + LsPrlBKphb9giTPgPOWTIV, JIcLMEsck9QXTpJ2qStrn.getDirection()); 
 
 
 
 aMYMtmA6sKPwG5Q.setInt(2,Sk3dCRzuLEQoTQ0y7bc5l+1);
 local Hjhu5hF32eF4A9JAmp = sq_getRandom(50,90);
 
 JIcLMEsck9QXTpJ2qStrn.setTimeEvent(0,Hjhu5hF32eF4A9JAmp,0,false); 
 } 
 
 return false; 
} ;


function onEndCurrentAni_PandemoniumEx(TPGpocWFM5f8Gc)
{
 local UZMTBJ8T7WU5w = TPGpocWFM5f8Gc.getSkillSubState();
 if(UZMTBJ8T7WU5w == 1)
 {
 TPGpocWFM5f8Gc.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 } 
} ;
  
function onKeyFrameFlag_PandemoniumEx(gCrbiURDLLL88OysGhH,FJtIZk0EUAz)
{ 
 if(FJtIZk0EUAz == 1)
 { 
 local dxeQ9imnHq9 = gCrbiURDLLL88OysGhH.getVar(); 
 local RojKJeqBLlZkY = sq_CreateDrawOnlyObject(gCrbiURDLLL88OysGhH,"Character/Priest/Effect/Animation/Pandemonium/start/base.ani",ENUM_DRAWLAYER_NORMAL,false); 
 local OKY058gFCTvUwbKiy = sq_CreateDrawOnlyObject(gCrbiURDLLL88OysGhH,"Character/Priest/Effect/Animation/Pandemonium/start/OverEffectbase.ani",ENUM_DRAWLAYER_NORMAL,false); 
 
 if(isAvengerAwakenning(gCrbiURDLLL88OysGhH)) {
 local A_7Q0qDxQbrDWSCRRO = sq_GetDistancePos(RojKJeqBLlZkY.getXPos(), gCrbiURDLLL88OysGhH.getDirection(), 80); 
 RojKJeqBLlZkY.setCurrentPos(A_7Q0qDxQbrDWSCRRO, RojKJeqBLlZkY.getYPos(), RojKJeqBLlZkY.getZPos()+20); 
 }
 dxeQ9imnHq9.setObject(0, RojKJeqBLlZkY); 
 dxeQ9imnHq9.setObject(3, OKY058gFCTvUwbKiy); 
 
 
 OKY058gFCTvUwbKiy.setCurrentPos(RojKJeqBLlZkY.getXPos(), RojKJeqBLlZkY.getYPos()+2, RojKJeqBLlZkY.getZPos());
 
 local J41KFgDsq1R6WeoSUh3JcyW = sq_getRandom(50,90); 
 gCrbiURDLLL88OysGhH.setTimeEvent(0,J41KFgDsq1R6WeoSUh3JcyW,0,true);
 
 sq_SetMyShake(gCrbiURDLLL88OysGhH,4,3000);
 
 local Xm83SDnX7hlvU9seyH = sq_flashScreen(gCrbiURDLLL88OysGhH,80,5000,240,150, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 dxeQ9imnHq9.setObject(4,Xm83SDnX7hlvU9seyH);
 } 
 return true; 
} ;
