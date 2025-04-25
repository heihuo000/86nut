
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
S_AWAKENING_0 <-0
 S_AWAKENING_1 <-1
 S_AWAKENING_2 <-2
 S_AWAKENING_3 <-3

  
 FM_SI_C_TIME <-0   
 FM_SI_MULTI_HIT_COUNT <-1  
 FM_SI_MOVE_VEL <-2  

  
 FM_LI_HIT_RATE <-0  
 FM_LI_MOVE_LEN <-1  

 VECTOR_I_SRC_X <-0  




  
function checkExecutableSkill_Awakening(esvHOCQDrDLbW)
{
 if(!esvHOCQDrDLbW) return false;
 local uY5LkvHM6hcPf3k5 = esvHOCQDrDLbW.sq_IsUseSkill(119);
 if(uY5LkvHM6hcPf3k5)
 {
 if(CNSquirrelAppendage.sq_IsAppendAppendage(esvHOCQDrDLbW, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 {
 esvHOCQDrDLbW.sq_IntVectClear();
 esvHOCQDrDLbW.sq_IntVectPush(7); 
 esvHOCQDrDLbW.sq_addSetStatePacket(67, STATE_PRIORITY_USER, true);
 }
 else
 {
 esvHOCQDrDLbW.sq_IntVectClear();
 esvHOCQDrDLbW.sq_IntVectPush(0); 
 esvHOCQDrDLbW.sq_addSetStatePacket(67, STATE_PRIORITY_USER, true);
 }
 return true;
 }
 return false;
} ;

 
function checkCommandEnable_Awakening(dUSGZIUk5ku9LKKPbb)
{
 if(!dUSGZIUk5ku9LKKPbb) return false;
 if(dUSGZIUk5ku9LKKPbb.getVar("takingAwakenSkillBack").size_vector() == 0)
 {
 dUSGZIUk5ku9LKKPbb.getVar("takingAwakenSkillBack").push_vector(0);
 dUSGZIUk5ku9LKKPbb.getVar("takingAwakenSkillBack").push_vector(0);
 }
 local G2zDxf1FwfMtWnEz = dUSGZIUk5ku9LKKPbb.getVar("takingAwakenSkillBack").get_vector(0);
 local LpORuSjDfL7XJPnb2e = false;
 if(!G2zDxf1FwfMtWnEz)
 LpORuSjDfL7XJPnb2e = true;
 else
 {
 dUSGZIUk5ku9LKKPbb.getVar("takingAwakenSkillBack").set_vector(0, 0);
 LpORuSjDfL7XJPnb2e = false;
 }
 return LpORuSjDfL7XJPnb2e;
} ;

 
function onSetState_Awakening(ksfGMQtuvizl_nrSAflZR, YbaI_Asjg3ajHuNEojLx, uUjWVVav3dj9TSKxoWxV5Zg, RPBF84109Dz)
{
 if(!ksfGMQtuvizl_nrSAflZR) return;
 local C54G0CsOCiwv780JgmJtii = ksfGMQtuvizl_nrSAflZR.sq_getVectorData(uUjWVVav3dj9TSKxoWxV5Zg, 0); 
 ksfGMQtuvizl_nrSAflZR.setSkillSubState(C54G0CsOCiwv780JgmJtii); 
 ksfGMQtuvizl_nrSAflZR.sq_stopMove();
 local a_ngMah_Lu = ksfGMQtuvizl_nrSAflZR.getXPos();
 local TebUCwnIri = ksfGMQtuvizl_nrSAflZR.getYPos();
 local vY_4eRWVyQE2LHzvdf = ksfGMQtuvizl_nrSAflZR.getZPos();
 local hpy7mGpOTYUQ4SYmL = ksfGMQtuvizl_nrSAflZR.getVar();
 local V8FhV1kNqYLlYwp = sq_GetSkillLevel(ksfGMQtuvizl_nrSAflZR, 119);
 ksfGMQtuvizl_nrSAflZR.sq_setCurrentAttackInfo(71);
 if(C54G0CsOCiwv780JgmJtii == 0)
 {
 hpy7mGpOTYUQ4SYmL.clear_vector();
 hpy7mGpOTYUQ4SYmL.clear_obj_vector();
 hpy7mGpOTYUQ4SYmL.clear_ani_vector();
 hpy7mGpOTYUQ4SYmL.push_vector(0);
 ksfGMQtuvizl_nrSAflZR.sq_setCurrentAnimation(86);
 }
 else if(C54G0CsOCiwv780JgmJtii == 1)
 {
 local _twnkuXVBim_noryQ7ly = ksfGMQtuvizl_nrSAflZR.sq_createCNRDAnimation("Effect/Animation/Awakening/Transform/01/2_body_normal.ani");
 hpy7mGpOTYUQ4SYmL.push_ani_vector(_twnkuXVBim_noryQ7ly);
 hpy7mGpOTYUQ4SYmL.push_vector(0);
 ksfGMQtuvizl_nrSAflZR.sq_setCurrentAnimation(87);
 }
 else if(C54G0CsOCiwv780JgmJtii == 2)
 {
 local XftIWTTJw0cudSjgsNYt = hpy7mGpOTYUQ4SYmL.get_vector(0);
 ksfGMQtuvizl_nrSAflZR.setCurrentPos(a_ngMah_Lu, TebUCwnIri, XftIWTTJw0cudSjgsNYt);
 ksfGMQtuvizl_nrSAflZR.sq_setCurrentAnimation(88);
 addAppendAppendage_Awakening(ksfGMQtuvizl_nrSAflZR); 
 }
 else if(C54G0CsOCiwv780JgmJtii == 3)
 {
 ksfGMQtuvizl_nrSAflZR.getVar().clear_vector();
 ksfGMQtuvizl_nrSAflZR.getVar().push_vector(vY_4eRWVyQE2LHzvdf); 
 ksfGMQtuvizl_nrSAflZR.getVar().push_vector(0); 
 ksfGMQtuvizl_nrSAflZR.getVar().set_vector(1, 0);
 ksfGMQtuvizl_nrSAflZR.getVar().get_vector(0); 
 
 ksfGMQtuvizl_nrSAflZR.sq_bottomcreateFlash(0, 240, 280, 150, 0);
 
 local nYlkjLlRZnA4_7KBLJEy5S = ksfGMQtuvizl_nrSAflZR.getVar().GetAnimationMap("Awakening4", "Character/Priest/Animation/Awakening4.ani"); 
 ksfGMQtuvizl_nrSAflZR.setCurrentAnimation(nYlkjLlRZnA4_7KBLJEy5S);
 
 local rPwbGKy9F0KjPD = ksfGMQtuvizl_nrSAflZR.sq_createCNRDAnimation("Effect/Animation/Awakening/Transform/03/1_change_light_dodge_00.ani"); 
 local pDerplSedTmkz = ksfGMQtuvizl_nrSAflZR.sq_createCNRDPooledObject(rPwbGKy9F0KjPD, true);
 if(pDerplSedTmkz)
 {
 
 local e_FOgfOtsTS = sq_GetDistancePos(a_ngMah_Lu, ksfGMQtuvizl_nrSAflZR.getDirection(), 15);
 pDerplSedTmkz.setCurrentPos(e_FOgfOtsTS, TebUCwnIri - 2, vY_4eRWVyQE2LHzvdf + 75);
 ksfGMQtuvizl_nrSAflZR.sq_AddObject(pDerplSedTmkz);
 }
 
 if(ksfGMQtuvizl_nrSAflZR.isOverSkillLevel(119, 4))
 {
 ksfGMQtuvizl_nrSAflZR.endSkillCoolTime(133);
 ksfGMQtuvizl_nrSAflZR.endSkillCoolTime(134);
 }
 }
 else if(C54G0CsOCiwv780JgmJtii == 4)
 {
 local xB49I8qEYJ3LlHabJZt = ksfGMQtuvizl_nrSAflZR.getVar().GetAnimationMap("avengerjumpatk_body", "character/priest/animation/avengerawakening/avengerjumpatk_body.ani");
 ksfGMQtuvizl_nrSAflZR.setCurrentAnimation(xB49I8qEYJ3LlHabJZt);
 ksfGMQtuvizl_nrSAflZR.sq_ZStop(); 
 ksfGMQtuvizl_nrSAflZR.getVar("move").clear_vector(); 
 }
 else if(C54G0CsOCiwv780JgmJtii == 5)
 {
 local xB49I8qEYJ3LlHabJZt = ksfGMQtuvizl_nrSAflZR.getVar().GetAnimationMap("avengerjumpatk_body_finish", "character/priest/animation/avengerawakening/avengerjumpatk_body_finish.ani");
 ksfGMQtuvizl_nrSAflZR.setCurrentAnimation(xB49I8qEYJ3LlHabJZt);
 ksfGMQtuvizl_nrSAflZR.sq_setCurrentAttackInfo(135);
 ksfGMQtuvizl_nrSAflZR.sq_setCurrentAttackBonusRate(ksfGMQtuvizl_nrSAflZR.sq_getBonusRateWithPassive(119, 7, 11, 1.0)); 
 ksfGMQtuvizl_nrSAflZR.sq_PlaySound("PR_DGUARDIAN_CHOP");
 sq_SetMyShake(ksfGMQtuvizl_nrSAflZR, 4, 160); 
 if(ksfGMQtuvizl_nrSAflZR.sq_isMyControlObject())
 sq_flashScreen(ksfGMQtuvizl_nrSAflZR, 0, 0, 80, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 
 sq_CreateDrawOnlyObject(ksfGMQtuvizl_nrSAflZR, "character/priest/effect/animation/avengerawakening/avengerjumpatk_eff_04.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_CreateDrawOnlyObject(ksfGMQtuvizl_nrSAflZR, "character/priest/effect/animation/avengerawakening/avengerjumpatksmoke_smoke_00.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 else if(C54G0CsOCiwv780JgmJtii == 6)
 {
 local xB49I8qEYJ3LlHabJZt = ksfGMQtuvizl_nrSAflZR.getVar().GetAnimationMap("avengergrasphandofanger_avenger", "character/priest/animation/avengerawakening/avengergrasphandofanger/avengergrasphandofanger_avenger.ani");
 ksfGMQtuvizl_nrSAflZR.setCurrentAnimation(xB49I8qEYJ3LlHabJZt);
 ksfGMQtuvizl_nrSAflZR.sq_setCurrentAttackInfo(141);
 local phljsZde34 = ksfGMQtuvizl_nrSAflZR.sq_getPowerWithPassive(64, 13, 0, -1, 1.0+ ksfGMQtuvizl_nrSAflZR.sq_getIntData(64, 1) / 100.0); 
 ksfGMQtuvizl_nrSAflZR.sq_setCurrentAttackPower(phljsZde34); 
 }
 else if(C54G0CsOCiwv780JgmJtii == 7)
 {
 ksfGMQtuvizl_nrSAflZR.sq_setCurrentAnimation(245);
 }
 else if(C54G0CsOCiwv780JgmJtii == 8)
 {
 local xB49I8qEYJ3LlHabJZt = ksfGMQtuvizl_nrSAflZR.getVar().GetAnimationMap("awakeningend_body", "character/priest/animation/metamorphosis/awakening/awakeningend_body.ani");
 ksfGMQtuvizl_nrSAflZR.setCurrentAnimation(xB49I8qEYJ3LlHabJZt);
 if(ksfGMQtuvizl_nrSAflZR.sq_isMyControlObject())
 {
 local M86GOW58MRxGSGkcx = ksfGMQtuvizl_nrSAflZR.sq_getBonusRateWithPassive(139, YbaI_Asjg3ajHuNEojLx, 11, 1.0);
 ksfGMQtuvizl_nrSAflZR.sq_binaryData_startWrite();
 ksfGMQtuvizl_nrSAflZR.sq_binaryData_writeDword(139); 
 ksfGMQtuvizl_nrSAflZR.sq_binaryData_writeDword(3); 
 ksfGMQtuvizl_nrSAflZR.sq_binaryData_writeDword(M86GOW58MRxGSGkcx); 
 ksfGMQtuvizl_nrSAflZR.sq_binaryData_writeDword(ksfGMQtuvizl_nrSAflZR.sq_getLevelData(139, 12, sq_GetSkillLevel(ksfGMQtuvizl_nrSAflZR, 139))); 
 ksfGMQtuvizl_nrSAflZR.sq_p00_sendCreatePassiveObjectPacket(24374, 0, 0, 0, 0);
 }
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(ksfGMQtuvizl_nrSAflZR, "character/new_priest/metamorphosis/ap_metamorphosis.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(ksfGMQtuvizl_nrSAflZR, "character/new_priest/metamorphosis/ap_metamorphosis.nut");
 addAppendAppendage_Awakening(ksfGMQtuvizl_nrSAflZR); 
 }
} ;


 
function prepareDraw_Awakening(GJynTBjRW8ryAkgH)
{
 if(!GJynTBjRW8ryAkgH) return;
} ;

 
function onProc_Awakening(oalaSYBx8wVmb)
{
 if(!oalaSYBx8wVmb) return;
 local G8gGKBq11ZAczpernSCF6Jn = oalaSYBx8wVmb.getSkillSubState();
 local Vg7VIEp_r9OdPSaC48omQye = oalaSYBx8wVmb.getXPos();
 local gCRqYSJVQcZlJtshQSo = oalaSYBx8wVmb.getYPos();
 local YKcGk_ONb_oYez = oalaSYBx8wVmb.getZPos();
 local HM8slaFDrLL4JGX_JNL = oalaSYBx8wVmb.sq_getCurrentAni();
 local vhHAY3LgQe = oalaSYBx8wVmb.sq_ani_GetCurrentFrameIndex(HM8slaFDrLL4JGX_JNL);
 local gdQmkkjJ_H4oV = sq_GetCurrentTime(HM8slaFDrLL4JGX_JNL);
 local VLqT0zOpktf9hUhzgw = oalaSYBx8wVmb.getVar();
 if(G8gGKBq11ZAczpernSCF6Jn == 0)
 {
 }
 else if(G8gGKBq11ZAczpernSCF6Jn == 1)
 {
 local IWPuylnj7Z = 1200; 
 local z6ZqAeISQPbNC = IWPuylnj7Z;
 local pi2AkvjZipNeWVw = 40;
 local eQheLuitBrDTEo6R = 0;
 eQheLuitBrDTEo6R = sq_GetAccel(0, pi2AkvjZipNeWVw, gdQmkkjJ_H4oV, z6ZqAeISQPbNC, true);
 oalaSYBx8wVmb.setCurrentPos(Vg7VIEp_r9OdPSaC48omQye, gCRqYSJVQcZlJtshQSo, eQheLuitBrDTEo6R);
 if(eQheLuitBrDTEo6R >= pi2AkvjZipNeWVw)
 {
 local V3wvUIfHxJmrnWDm7UBnP = VLqT0zOpktf9hUhzgw.get_ani_vector(0);
 local B_GGtSFu_epjIL_Vf = VLqT0zOpktf9hUhzgw.get_vector(1); 
 if(!B_GGtSFu_epjIL_Vf)
 {
 HM8slaFDrLL4JGX_JNL.addLayerAnimation(10010, V3wvUIfHxJmrnWDm7UBnP, true);
 VLqT0zOpktf9hUhzgw.set_vector(1, 1);
 }
 local wggkO0hE_4cEq63k8wPZlR1 = sq_IsEnd(V3wvUIfHxJmrnWDm7UBnP);
 local LdX8CCmwo3vs5 = oalaSYBx8wVmb.sq_ani_GetCurrentFrameIndex(V3wvUIfHxJmrnWDm7UBnP);
 local hFhESPSf2rdyAHrxk = sq_GetCurrentTime(V3wvUIfHxJmrnWDm7UBnP);
 if(wggkO0hE_4cEq63k8wPZlR1 == true)
 {
 local l9Qs7uO5cpp7QPsR = HM8slaFDrLL4JGX_JNL.getLastAlsObject();
 VLqT0zOpktf9hUhzgw.set_vector(0, eQheLuitBrDTEo6R); 
 if(oalaSYBx8wVmb.sq_isMyControlObject())
 {
 oalaSYBx8wVmb.sq_IntVectClear();
 oalaSYBx8wVmb.sq_IntVectPush(2);
 oalaSYBx8wVmb.sq_addSetStatePacket(67, STATE_PRIORITY_USER, true);
 }
 }
 }
 else
 {
 if(eQheLuitBrDTEo6R >= (pi2AkvjZipNeWVw - 10))
 {
 local B_GGtSFu_epjIL_Vf = VLqT0zOpktf9hUhzgw.get_vector(1); 
 if(!B_GGtSFu_epjIL_Vf)
 {
 local V3wvUIfHxJmrnWDm7UBnP = VLqT0zOpktf9hUhzgw.get_ani_vector(0);
 HM8slaFDrLL4JGX_JNL.addLayerAnimation(10010, V3wvUIfHxJmrnWDm7UBnP, true);
 VLqT0zOpktf9hUhzgw.set_vector(1, 1);
 }
 }
 }
 }
 else if(G8gGKBq11ZAczpernSCF6Jn == 2)
 {
 local QcxAhPNudVw61hf = VLqT0zOpktf9hUhzgw.get_vector(0);
 local z6ZqAeISQPbNC = HM8slaFDrLL4JGX_JNL.getDelaySum(false); 
 local pi2AkvjZipNeWVw = 3;
 local eQheLuitBrDTEo6R = 0;
 eQheLuitBrDTEo6R = sq_GetAccel(0, pi2AkvjZipNeWVw, gdQmkkjJ_H4oV, z6ZqAeISQPbNC, false);
 oalaSYBx8wVmb.setCurrentPos(Vg7VIEp_r9OdPSaC48omQye, gCRqYSJVQcZlJtshQSo, QcxAhPNudVw61hf + eQheLuitBrDTEo6R);
 }
 else if(G8gGKBq11ZAczpernSCF6Jn == 3)
 { 
 local NXtyUXT9aw_W5uKiWXQkLC = 2;
 local uflX0BRBaALIx = HM8slaFDrLL4JGX_JNL.getDelaySum(0, NXtyUXT9aw_W5uKiWXQkLC); 
 local ww_1nqDGnKFw = 120; 
 if(vhHAY3LgQe > NXtyUXT9aw_W5uKiWXQkLC && (uflX0BRBaALIx + ww_1nqDGnKFw) >= gdQmkkjJ_H4oV)
 {
 local QcxAhPNudVw61hf = oalaSYBx8wVmb.getVar().get_vector(0);
 
 local eQheLuitBrDTEo6R = 0;
 eQheLuitBrDTEo6R = sq_GetAccel(QcxAhPNudVw61hf, 0, gdQmkkjJ_H4oV - uflX0BRBaALIx, ww_1nqDGnKFw, false);
 local J29N_gsxb8IEeJpXJz4 = gdQmkkjJ_H4oV - uflX0BRBaALIx;
 oalaSYBx8wVmb.setCurrentPos(Vg7VIEp_r9OdPSaC48omQye, gCRqYSJVQcZlJtshQSo, eQheLuitBrDTEo6R);
 }
 else if(vhHAY3LgQe <= NXtyUXT9aw_W5uKiWXQkLC)
 {
 local QcxAhPNudVw61hf = oalaSYBx8wVmb.getVar().get_vector(0);
 oalaSYBx8wVmb.setCurrentPos(Vg7VIEp_r9OdPSaC48omQye, gCRqYSJVQcZlJtshQSo, QcxAhPNudVw61hf);
 }
 if(oalaSYBx8wVmb.getVar().get_vector(1) == 0 && oalaSYBx8wVmb.getZPos() == 0 && (uflX0BRBaALIx + ww_1nqDGnKFw) < gdQmkkjJ_H4oV)
 { 
 
 oalaSYBx8wVmb.sq_setShake(oalaSYBx8wVmb, 2, 500);
 
 local gCw7_X_wiQHwwgmy5d6QTNIA = oalaSYBx8wVmb.sq_createCNRDAnimation("Effect/Animation/Awakening/Transform/03/sub_dodge.ani");
 local fiorx5Z3P_a = oalaSYBx8wVmb.sq_createCNRDPooledObject(gCw7_X_wiQHwwgmy5d6QTNIA, true);
 fiorx5Z3P_a.setCurrentDirection(oalaSYBx8wVmb.getDirection());
 local NE_GbyumjqbMKagxka = 25;
 local sk1AROMGcB8zht = sq_GetDistancePos(Vg7VIEp_r9OdPSaC48omQye, oalaSYBx8wVmb.getDirection(), NE_GbyumjqbMKagxka);
 fiorx5Z3P_a.setCurrentPos(sk1AROMGcB8zht, gCRqYSJVQcZlJtshQSo - 1, 0);
 oalaSYBx8wVmb.sq_AddObject(fiorx5Z3P_a);
 local iA7F6OkwU5Aad9IhEgT = oalaSYBx8wVmb.sq_createCNRDAnimation("Effect/Animation/Awakening/Transform/03/5_crack_normal.ani");
 local oVZf6nlSEoI = oalaSYBx8wVmb.sq_createCNRDPooledObject(iA7F6OkwU5Aad9IhEgT, true);
 oVZf6nlSEoI.setCurrentDirection(oalaSYBx8wVmb.getDirection());
 oVZf6nlSEoI.setCurrentPos(Vg7VIEp_r9OdPSaC48omQye, gCRqYSJVQcZlJtshQSo + 1, 0);
 oalaSYBx8wVmb.sq_AddObject(oVZf6nlSEoI);
 oalaSYBx8wVmb.getVar().set_vector(1, 1);
 }
 }
 else if(G8gGKBq11ZAczpernSCF6Jn == 4)
 {
 if(oalaSYBx8wVmb.getVar("move").size_vector()>0)
 {
 local HM8slaFDrLL4JGX_JNL = oalaSYBx8wVmb.getCurrentAnimation(); 
 local gdQmkkjJ_H4oV = sq_GetCurrentTime(HM8slaFDrLL4JGX_JNL) - HM8slaFDrLL4JGX_JNL.getDelaySum(0, 2); 
 local w1Nw2aCQrxOVHB4DRgROMGRN = HM8slaFDrLL4JGX_JNL.getDelaySum(3, 4); 
 local l6UNiuHzUDvmXOFWRTu = oalaSYBx8wVmb.getVar("move").get_vector(0); 
 if(l6UNiuHzUDvmXOFWRTu != 0) 
 {
 local sk1AROMGcB8zht = sq_GetDistancePos(l6UNiuHzUDvmXOFWRTu,
 oalaSYBx8wVmb.getDirection(),
 sq_GetUniformVelocity(0, 55, gdQmkkjJ_H4oV, w1Nw2aCQrxOVHB4DRgROMGRN)); 
 if(oalaSYBx8wVmb.isMovablePos(sk1AROMGcB8zht, oalaSYBx8wVmb.getYPos()))
 sq_setCurrentAxisPos(oalaSYBx8wVmb, 0, sk1AROMGcB8zht); 
 else
 oalaSYBx8wVmb.getVar("move").set_vector(0, 0); 
 }
 local QcxAhPNudVw61hf = sq_GetUniformVelocity(oalaSYBx8wVmb.getVar("move").get_vector(1), 0, gdQmkkjJ_H4oV, w1Nw2aCQrxOVHB4DRgROMGRN);
 sq_setCurrentAxisPos(oalaSYBx8wVmb, 2, QcxAhPNudVw61hf); 
 if(oalaSYBx8wVmb.sq_isMyControlObject()) 
 if(gdQmkkjJ_H4oV >= w1Nw2aCQrxOVHB4DRgROMGRN) 
 {
 oalaSYBx8wVmb.sq_IntVectClear();
 oalaSYBx8wVmb.sq_IntVectPush(5); 
 oalaSYBx8wVmb.sq_addSetStatePacket(67, STATE_PRIORITY_USER, true);
 }
 }
 }
} ;

 
function onProcCon_Awakening(naNoWMuxMcQMLjY15VR)
{
 if(!naNoWMuxMcQMLjY15VR) return;
 local o_ljIxMuGipF487 = naNoWMuxMcQMLjY15VR.sq_getCurrentAni();
 local tBoPKjmpj_GbHOpt81 = naNoWMuxMcQMLjY15VR.sq_ani_IsEnd(o_ljIxMuGipF487);
 local mZnE6__UOwFCPo4C = naNoWMuxMcQMLjY15VR.sq_ani_GetCurrentFrameIndex(o_ljIxMuGipF487);
 local ICbAj8_IUkl6 = naNoWMuxMcQMLjY15VR.getSkillSubState();
 if(ICbAj8_IUkl6 == 0)
 {
 }
 else if(ICbAj8_IUkl6 == 1)
 {
 }
 else if(ICbAj8_IUkl6 == 2)
 {
 }
 else if(ICbAj8_IUkl6 == 3)
 {
 }
 if(naNoWMuxMcQMLjY15VR.getVar("takingAwakenSkillBack").size_vector() > 0)
 {
 if(naNoWMuxMcQMLjY15VR.getVar("takingAwakenSkillBack").get_vector(0))
 {
 naNoWMuxMcQMLjY15VR.sq_IntVectClear();
 naNoWMuxMcQMLjY15VR.sq_IntVectPush(0); 
 naNoWMuxMcQMLjY15VR.sq_addSetStatePacket(69, STATE_PRIORITY_IGNORE_FORCE, true);
 return;
 }
 }
 if(tBoPKjmpj_GbHOpt81)
 {
 if(ICbAj8_IUkl6 == 0)
 {
 naNoWMuxMcQMLjY15VR.sq_IntVectClear();
 naNoWMuxMcQMLjY15VR.sq_IntVectPush(1);
 naNoWMuxMcQMLjY15VR.sq_addSetStatePacket(67, STATE_PRIORITY_USER, true);
 }
 else if(ICbAj8_IUkl6 == 1)
 {
 }
 else if(ICbAj8_IUkl6 == 2)
 {
 naNoWMuxMcQMLjY15VR.sq_IntVectClear();
 naNoWMuxMcQMLjY15VR.sq_IntVectPush(3);
 naNoWMuxMcQMLjY15VR.sq_addSetStatePacket(67, STATE_PRIORITY_USER, true);
 }
 else if(ICbAj8_IUkl6 == 3)
 {
 naNoWMuxMcQMLjY15VR.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 }
 }
} ;

function onKeyFrameFlag_Awakening(bvtcKGBNqGUCmPPJYL, XXhb6FevfQv1RGeKLfEwh8)
{
 if(!bvtcKGBNqGUCmPPJYL) return false;
 local CFh5vwrfkksKU2_8OTomf = bvtcKGBNqGUCmPPJYL.getSkillSubState(); 
 if(CFh5vwrfkksKU2_8OTomf == 4)
 {
 if(XXhb6FevfQv1RGeKLfEwh8 == 0)
 sq_CreateDrawOnlyObject(bvtcKGBNqGUCmPPJYL, "character/priest/effect/animation/avengerawakening/avengerjumpatk_andeff.ani", ENUM_DRAWLAYER_NORMAL, true); 
 else if(XXhb6FevfQv1RGeKLfEwh8 == 1)
 {
 bvtcKGBNqGUCmPPJYL.getVar("move").clear_vector(); 
 bvtcKGBNqGUCmPPJYL.getVar("move").push_vector(bvtcKGBNqGUCmPPJYL.getXPos()); 
 bvtcKGBNqGUCmPPJYL.getVar("move").push_vector(bvtcKGBNqGUCmPPJYL.getZPos()); 
 }
 }
 else if(CFh5vwrfkksKU2_8OTomf == 6)
 {
 if(XXhb6FevfQv1RGeKLfEwh8 == 1)
 {
 sq_SetMyShake(bvtcKGBNqGUCmPPJYL, 5, 180); 
 local H36fLKz3IlA7cAIOIa9 = bvtcKGBNqGUCmPPJYL.sq_getPowerWithPassive(64, 13, 1, -1, 1.0 + bvtcKGBNqGUCmPPJYL.sq_getIntData(64, 1) / 100.0); 
 bvtcKGBNqGUCmPPJYL.sq_setCurrentAttackPower(H36fLKz3IlA7cAIOIa9); 
 bvtcKGBNqGUCmPPJYL.resetHitObjectList(); 
 }
 else if(XXhb6FevfQv1RGeKLfEwh8 == 2)
 sq_CreateDrawOnlyObject(bvtcKGBNqGUCmPPJYL, "character/priest/effect/animation/avengergrasphandofanger/avengergrasphandofanger_wind.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 return true;
} ;

function onEndCurrentAni_Awakening(k2ZP0S4EVumb9p)
{
 if(!k2ZP0S4EVumb9p) return;
 if(!k2ZP0S4EVumb9p.sq_isMyControlObject())return;
 local I1_3t2WFANuJChpn = k2ZP0S4EVumb9p.getSkillSubState(); 
 switch(I1_3t2WFANuJChpn)
 {
 case 5:
 case 6:
 case 8:
 k2ZP0S4EVumb9p.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 break;
 case 7:
 k2ZP0S4EVumb9p.sq_IntVectClear();
 k2ZP0S4EVumb9p.sq_IntVectPush(8);
 k2ZP0S4EVumb9p.sq_addSetStatePacket(67, STATE_PRIORITY_USER, true);
 break;
 }
} ;

function onAfterSetState_Awakening(vOcP6TRld6DJi0GYy, edTJEFXC3xfSPlbyQqYi55, otyhqtJR2mYnULW6, KwW95Efpp1kT0MSMVxWs)
{
 if(!vOcP6TRld6DJi0GYy) return;
} ;

 
function onBeforeAttack_Awakening(uXCB5HYkuXuJWrFfquyxmbe, aUNXuYBZVJujm0q, Zp3IxEzgAXDoGZo)
{
} ;

 
function onAttack_Awakening(K4aq4_UhqUSJC, H65OlEcyFCxkZa8m, jsjNUzSyTpzK)
{
} ;

 
function onAfterAttack_Awakening(K4aq4_UhqUSJC, H65OlEcyFCxkZa8m, jsjNUzSyTpzK)
{
} ;

 
function onBeforeDamage_Awakening(smbBwOeuIPl, DC9hg6yWqD1f, kqzt66dOYE5)
{
} ;

 
function onDamage_Awakening(smbBwOeuIPl, DC9hg6yWqD1f, kqzt66dOYE5)
{
} ;

 
function onAfterDamage_Awakening(smbBwOeuIPl, DC9hg6yWqD1f, kqzt66dOYE5)
{
} ;

 
function addAppendAppendage_Awakening(VABqqZtyWvN93688)
{
 if(!VABqqZtyWvN93688) return;
 local ElP6xENj55Z60a = sq_GetSkillLevel(VABqqZtyWvN93688, 119);
 local yypsW3KlVefzZWr_BdBlf = CNSquirrelAppendage.sq_AppendAppendage(VABqqZtyWvN93688, VABqqZtyWvN93688, 119, false, "Appendage/Character/ap_avenger_awakening.nut", false);
 local kk7_A4Fs8Qeq2F = sq_GetLevelData(VABqqZtyWvN93688, 119, 0, ElP6xENj55Z60a);
 yypsW3KlVefzZWr_BdBlf.sq_SetValidTime(kk7_A4Fs8Qeq2F);
 yypsW3KlVefzZWr_BdBlf.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(VABqqZtyWvN93688), 119, ElP6xENj55Z60a);
 CNSquirrelAppendage.sq_Append(yypsW3KlVefzZWr_BdBlf, VABqqZtyWvN93688, VABqqZtyWvN93688);
 if(yypsW3KlVefzZWr_BdBlf)
 {
 local JnyI0GX694HL6VS3ZhHVLr = sq_GetLevelData(VABqqZtyWvN93688, 119, 1, ElP6xENj55Z60a);
 yypsW3KlVefzZWr_BdBlf.sq_var.clear_vector();
 yypsW3KlVefzZWr_BdBlf.sq_var.push_vector(kk7_A4Fs8Qeq2F); 
 local jDYQ3FiOmhw9GOSfxja = VABqqZtyWvN93688.getVar("awakening");
 jDYQ3FiOmhw9GOSfxja.clear_ct_vector();
 jDYQ3FiOmhw9GOSfxja.push_ct_vector();
 jDYQ3FiOmhw9GOSfxja.get_ct_vector(0).Reset();
 jDYQ3FiOmhw9GOSfxja.get_ct_vector(0).Start(0, 0);
 if(jDYQ3FiOmhw9GOSfxja.size_vector() == 0)
 {
 jDYQ3FiOmhw9GOSfxja.push_vector(0);
 }
 else
 {
 jDYQ3FiOmhw9GOSfxja.set_vector(0, 0);
 }
 local VVeIjfvpDrZBQBCCstJaLful = sq_GetAbilityConvertRate(VABqqZtyWvN93688, CONVERT_TABLE_TYPE_HP);
 local GNd71scbyIhmNqIuNBdbtQK = JnyI0GX694HL6VS3ZhHVLr.tofloat() * VVeIjfvpDrZBQBCCstJaLful.tofloat();
 yypsW3KlVefzZWr_BdBlf.sq_var.push_vector(GNd71scbyIhmNqIuNBdbtQK.tointeger());
 yypsW3KlVefzZWr_BdBlf.sq_var.push_vector(1);
 local L2uW06nYADTjqeAZgjauv = yypsW3KlVefzZWr_BdBlf.sq_getChangeStatus("changeStatus");
 if(!L2uW06nYADTjqeAZgjauv)
 L2uW06nYADTjqeAZgjauv = yypsW3KlVefzZWr_BdBlf.sq_AddChangeStatus("changeStatus", VABqqZtyWvN93688, VABqqZtyWvN93688, 0, CHANGE_STATUS_TYPE_ATTACK_SPEED, true, 0);
 if(L2uW06nYADTjqeAZgjauv)
 {
 local x493CjCVIw6mi_4 = sq_GetLevelData(VABqqZtyWvN93688, 119, 2, ElP6xENj55Z60a); 
 local W89AHevu5Dez9HuWucYekBe = sq_GetLevelData(VABqqZtyWvN93688, 119, 3, ElP6xENj55Z60a); 
 local GH4laECSGzL = sq_GetLevelData(VABqqZtyWvN93688, 119, 4, ElP6xENj55Z60a); 
 local yFvwnXM9rkFL = sq_GetLevelData(VABqqZtyWvN93688, 119, 5, ElP6xENj55Z60a); 
 L2uW06nYADTjqeAZgjauv.clearParameter();
 L2uW06nYADTjqeAZgjauv.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_DEFENSE, false, x493CjCVIw6mi_4.tofloat());
 L2uW06nYADTjqeAZgjauv.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, W89AHevu5Dez9HuWucYekBe.tofloat());
 L2uW06nYADTjqeAZgjauv.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, true, GH4laECSGzL.tofloat());
 L2uW06nYADTjqeAZgjauv.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, yFvwnXM9rkFL.tofloat());
 }
 local QoFsZzQV1M073VxKlYUV3xz = yypsW3KlVefzZWr_BdBlf.sq_getHpMaxUp("HpMaxUp");
 if(!QoFsZzQV1M073VxKlYUV3xz)
 QoFsZzQV1M073VxKlYUV3xz = yypsW3KlVefzZWr_BdBlf.sq_AddHpMaxUp("HpMaxUp", VABqqZtyWvN93688, VABqqZtyWvN93688, kk7_A4Fs8Qeq2F, JnyI0GX694HL6VS3ZhHVLr, 0);
 
 if(isInDevilStrikeSkill(VABqqZtyWvN93688)) 
 addDevilGauge(VABqqZtyWvN93688, getDevilMaxGaugeValue(VABqqZtyWvN93688)); 
 }
} ;





