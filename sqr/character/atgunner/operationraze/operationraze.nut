
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_atgunner_operationraze(Y8MzuLvB5EFfBGpWB)
{
 if(!Y8MzuLvB5EFfBGpWB) return false; 
 local P5knwlwwNiP2Y9m_NlX3v = Y8MzuLvB5EFfBGpWB.sq_IsUseSkill(235); 
 if(P5knwlwwNiP2Y9m_NlX3v) 
 {
 Y8MzuLvB5EFfBGpWB.sq_IntVectClear();
 Y8MzuLvB5EFfBGpWB.sq_IntVectPush(0); 
 Y8MzuLvB5EFfBGpWB.sq_AddSetStatePacket(235, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atgunner_operationraze(Y8MzuLvB5EFfBGpWB)
{
 if(!Y8MzuLvB5EFfBGpWB) return false; 
 local P5knwlwwNiP2Y9m_NlX3v = Y8MzuLvB5EFfBGpWB.sq_GetState(); 
 if(P5knwlwwNiP2Y9m_NlX3v == STATE_STAND) 
 return true; 
 if(P5knwlwwNiP2Y9m_NlX3v == STATE_ATTACK) 
 {
 return Y8MzuLvB5EFfBGpWB.sq_IsCommandEnable(235); 
 }
 return true; 
} ;

 
function onSetState_atgunner_operationraze(hpgIy2nC_gifu0paZqLrdyS, nVZIEBZQMm, SGGE7j0NRIhvU1rraHQ, enftpqLp2vIhUdWb5)
{
 if(!hpgIy2nC_gifu0paZqLrdyS) return; 
 local FFdo8a4jeUgAmSg4Eq = hpgIy2nC_gifu0paZqLrdyS.sq_GetVectorData(SGGE7j0NRIhvU1rraHQ, 0); 
 hpgIy2nC_gifu0paZqLrdyS.setSkillSubState(FFdo8a4jeUgAmSg4Eq); 
 switch(FFdo8a4jeUgAmSg4Eq)
 {
 case 0:
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().setBool(0, false); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().setBool(1, false); 
 hpgIy2nC_gifu0paZqLrdyS.sq_StopMove(); 
 hpgIy2nC_gifu0paZqLrdyS.sq_SetCurrentAnimation(111);
 
 sq_AddDrawOnlyAniFromParent(hpgIy2nC_gifu0paZqLrdyS, "character/gunner/effect/animation/atoperationraze/start/startbackoperation_02.ani", -40, -1, 0);
 
 sq_AddDrawOnlyAniFromParent(hpgIy2nC_gifu0paZqLrdyS, "character/gunner/effect/animation/atoperationraze/start/startfront1_02.ani", -40, -1, 0);
 
 sq_AddDrawOnlyAniFromParent(hpgIy2nC_gifu0paZqLrdyS, "character/gunner/effect/animation/atoperationraze/start/startfront2_01.ani", -40, 0, 0);
 break;
 case 1:
 hpgIy2nC_gifu0paZqLrdyS.sq_SetCurrentAnimation(112);
 break;
 case 2:
 hpgIy2nC_gifu0paZqLrdyS.sq_SetCurrentAnimation(114);
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/atgunner/particle/atoperationrazeattack1.ptl", hpgIy2nC_gifu0paZqLrdyS, 0, 0, 0, true, 80, 0, 999); 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/atgunner/particle/atoperationrazeattack4.ptl", hpgIy2nC_gifu0paZqLrdyS, 0, 0, 0, true, 80, 0, 999); 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/atgunner/particle/atoperationrazeattack4.ptl", hpgIy2nC_gifu0paZqLrdyS, 0, 0, 15, true, 80, 0, 999); 
 hpgIy2nC_gifu0paZqLrdyS.setTimeEvent(0, 100, -1, false); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(2); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(2); 
 hpgIy2nC_gifu0paZqLrdyS.sq_PlaySound("FG_OPERATION_RAZE_02"); 
 if(hpgIy2nC_gifu0paZqLrdyS.sq_IsMyControlObject())
 {
 
 hpgIy2nC_gifu0paZqLrdyS.sq_StartWrite();
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(235); 
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(5); 
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(hpgIy2nC_gifu0paZqLrdyS.sq_GetBonusRateWithPassive(235, 235, 5, 1.0)); 
 hpgIy2nC_gifu0paZqLrdyS.sq_SendCreatePassiveObjectPacket(24376, 0, 0, 0, 0);
 
 hpgIy2nC_gifu0paZqLrdyS.sq_StartWrite();
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(235); 
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(8); 
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(hpgIy2nC_gifu0paZqLrdyS.sq_GetBonusRateWithPassive(235, 235, 2, 1.0)); 
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(100); 
 hpgIy2nC_gifu0paZqLrdyS.sq_SendCreatePassiveObjectPacket(24376, 0, 0, 0, 0);
 
 hpgIy2nC_gifu0paZqLrdyS.sq_StartWrite();
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(235); 
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(9); 
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(hpgIy2nC_gifu0paZqLrdyS.sq_GetBonusRateWithPassive(235, 235, 3, 1.0)); 
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(80); 
 hpgIy2nC_gifu0paZqLrdyS.sq_SendCreatePassiveObjectPacket(24376, 0, 0, 0, 0);
 }
 break;
 case 3:
 hpgIy2nC_gifu0paZqLrdyS.sq_SetCurrentAnimation(113);
 local ToNmIC6_0JajI7S5 = hpgIy2nC_gifu0paZqLrdyS.getVar().GetparticleCreaterMap("operationrazedestroy", "passiveobject/script_sqr_nut_qq506807329/atgunner/particle/operationrazedestroy.ptl", hpgIy2nC_gifu0paZqLrdyS); 
 ToNmIC6_0JajI7S5.Restart(0); 
 ToNmIC6_0JajI7S5.SetPos(sq_GetDistancePos(hpgIy2nC_gifu0paZqLrdyS.getXPos(), hpgIy2nC_gifu0paZqLrdyS.getDirection(), -10), hpgIy2nC_gifu0paZqLrdyS.getYPos(), hpgIy2nC_gifu0paZqLrdyS.getZPos() + 80); 
 sq_AddParticleObject(hpgIy2nC_gifu0paZqLrdyS, ToNmIC6_0JajI7S5); 
 if(hpgIy2nC_gifu0paZqLrdyS.sq_IsMyControlObject())
 {
 local oSh29ZNwCpNV0EAk6cuDt = hpgIy2nC_gifu0paZqLrdyS.sq_GetBonusRateWithPassive(235, 235, 6, 1.0); 
 
 hpgIy2nC_gifu0paZqLrdyS.sq_StartWrite();
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(235); 
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(7); 
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(oSh29ZNwCpNV0EAk6cuDt); 
 hpgIy2nC_gifu0paZqLrdyS.sq_SendCreatePassiveObjectPacket(24376, 0, 350, 0, 600);
 
 hpgIy2nC_gifu0paZqLrdyS.sq_StartWrite();
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(235); 
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(7); 
 hpgIy2nC_gifu0paZqLrdyS.sq_WriteDword(oSh29ZNwCpNV0EAk6cuDt); 
 hpgIy2nC_gifu0paZqLrdyS.sq_SendCreatePassiveObjectPacket(24376, 0, 500, 0, 600);
 }
 break;
 }
 
} ;

function onEndState_atgunner_operationraze(pJ2ChMUmSLq_KW17yi3, Qk1YT_etjAjBVH2aB9)
{
 if(!pJ2ChMUmSLq_KW17yi3) return;
 sq_RemoveParticle("passiveobject/script_sqr_nut_qq506807329/atgunner/particle/atoperationrazeattack1.ptl", pJ2ChMUmSLq_KW17yi3); 
 sq_RemoveParticle("passiveobject/script_sqr_nut_qq506807329/atgunner/particle/atoperationrazeattack4.ptl", pJ2ChMUmSLq_KW17yi3); 
} ;

function onTimeEvent_atgunner_operationraze(pJ2ChMUmSLq_KW17yi3, Qk1YT_etjAjBVH2aB9, q5RFSfBAoaid0Oe7SHfihFk)
{
 if(!pJ2ChMUmSLq_KW17yi3) return false;
 switch(Qk1YT_etjAjBVH2aB9)
 {
 case 0:
 if(pJ2ChMUmSLq_KW17yi3.sq_IsMyControlObject())
 {
 
 pJ2ChMUmSLq_KW17yi3.sq_StartWrite();
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(235); 
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(4); 
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(pJ2ChMUmSLq_KW17yi3.sq_GetBonusRateWithPassive(235, 235, 4, 1.0)); 
 pJ2ChMUmSLq_KW17yi3.sq_SendCreatePassiveObjectPacket(24376, 0, 110, 0, 35);
 }
 break;
 }
 return false;
} ;

function onKeyFrameFlag_atgunner_operationraze(pJ2ChMUmSLq_KW17yi3, Qk1YT_etjAjBVH2aB9)
{
 if(!pJ2ChMUmSLq_KW17yi3) return false;
 local q5RFSfBAoaid0Oe7SHfihFk = pJ2ChMUmSLq_KW17yi3.getSkillSubState(); 
 switch(q5RFSfBAoaid0Oe7SHfihFk)
 {
 case 0:
 if(Qk1YT_etjAjBVH2aB9 == 1)
 {
 
 local qkr31mIq5g3x = pJ2ChMUmSLq_KW17yi3.getVar().GetparticleCreaterMap("operationrazestart", "passiveobject/script_sqr_nut_qq506807329/atgunner/particle/operationrazestart.ptl", pJ2ChMUmSLq_KW17yi3); 
 qkr31mIq5g3x.Restart(0); 
 qkr31mIq5g3x.SetPos(pJ2ChMUmSLq_KW17yi3.getXPos(), pJ2ChMUmSLq_KW17yi3.getYPos(), pJ2ChMUmSLq_KW17yi3.getZPos()); 
 sq_AddParticleObject(pJ2ChMUmSLq_KW17yi3, qkr31mIq5g3x); 
 sq_SetMyShake(pJ2ChMUmSLq_KW17yi3, 10, 500); 
 if(pJ2ChMUmSLq_KW17yi3.sq_IsMyControlObject())
 {
 pJ2ChMUmSLq_KW17yi3.sq_StartWrite();
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(235); 
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(1); 
 pJ2ChMUmSLq_KW17yi3.sq_SendCreatePassiveObjectPacket(24376, 0, 0, 0, 0);
 }
 }
 break;
 case 2:
 switch(Qk1YT_etjAjBVH2aB9)
 {
 case 1:
 if(pJ2ChMUmSLq_KW17yi3.sq_IsMyControlObject())
 {
 
 pJ2ChMUmSLq_KW17yi3.sq_StartWrite();
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(235); 
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(2); 
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(pJ2ChMUmSLq_KW17yi3.sq_GetBonusRateWithPassive(235, 235, 0, 1.0)); 
 pJ2ChMUmSLq_KW17yi3.sq_SendCreatePassiveObjectPacket(24376, 0, 0, 0, 0);
 
 pJ2ChMUmSLq_KW17yi3.sq_StartWrite();
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(235); 
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(3); 
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(pJ2ChMUmSLq_KW17yi3.sq_GetBonusRateWithPassive(235, 235, 1, 1.0)); 
 pJ2ChMUmSLq_KW17yi3.sq_SendCreatePassiveObjectPacket(24376, 0, 0, 0, 0);
 }
 local OuiOuXX9fjtPIicQZxtTxS = pJ2ChMUmSLq_KW17yi3.getVar().get_vector(1); 
 if(OuiOuXX9fjtPIicQZxtTxS > 0) 
 {
 pJ2ChMUmSLq_KW17yi3.getVar().set_vector(1, OuiOuXX9fjtPIicQZxtTxS - 1); 
 local oZOAR7iEYPu6n5 = OuiOuXX9fjtPIicQZxtTxS % 2; 
 local iZn_R1_ssieWeXJJfK = onGetMyPassiveObject_My(pJ2ChMUmSLq_KW17yi3, 24376, 235, 5); 
 if(iZn_R1_ssieWeXJJfK && iZn_R1_ssieWeXJJfK.isMyControlObject())
 {
 local uHnqi26GQ0kqBxpss6c8oqbf = [-38, -9]; 
 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(235); 
 sq_BinaryWriteDword(6); 
 sq_SendCreatePassiveObjectPacket(iZn_R1_ssieWeXJJfK, 24376, 0, uHnqi26GQ0kqBxpss6c8oqbf[oZOAR7iEYPu6n5], 0, 105, pJ2ChMUmSLq_KW17yi3.getDirection());
 }
 switch(oZOAR7iEYPu6n5)
 {
 case 0:
 if(pJ2ChMUmSLq_KW17yi3.getVar().getBool(1) == false)
 {
 pJ2ChMUmSLq_KW17yi3.sq_AddStateLayerAnimation(-1, pJ2ChMUmSLq_KW17yi3.sq_CreateCNRDAnimation("effect/animation/atoperationraze/artillery/artillery2_01.ani"), 0, 0);
 pJ2ChMUmSLq_KW17yi3.getVar().setBool(1, true); 
 }
 break;
 case 1:
 if(pJ2ChMUmSLq_KW17yi3.getVar().getBool(0) == false)
 {
 pJ2ChMUmSLq_KW17yi3.sq_AddStateLayerAnimation(-1, pJ2ChMUmSLq_KW17yi3.sq_CreateCNRDAnimation("effect/animation/atoperationraze/artillery/artillery2_02.ani"), 0, 0);
 pJ2ChMUmSLq_KW17yi3.getVar().setBool(0, true); 
 }
 break;
 }
 }
 break;
 case 2:
 local bb4OHZZtENSWOiNb = pJ2ChMUmSLq_KW17yi3.getVar().get_vector(0) - 1; 
 if(bb4OHZZtENSWOiNb <= 0) 
 {
 if(pJ2ChMUmSLq_KW17yi3.sq_IsMyControlObject())
 {
 pJ2ChMUmSLq_KW17yi3.sq_IntVectClear();
 pJ2ChMUmSLq_KW17yi3.sq_IntVectPush(3); 
 pJ2ChMUmSLq_KW17yi3.sq_AddSetStatePacket(235, STATE_PRIORITY_USER, true); 
 }
 }
 else
 pJ2ChMUmSLq_KW17yi3.getVar().set_vector(0, bb4OHZZtENSWOiNb); 
 break;
 case 2001:
 pJ2ChMUmSLq_KW17yi3.sq_PlaySound("R_OPERATION_RAZE"); 
 break;
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_atgunner_operationraze(PZxdlrod_idoEOfWpM)
{
 if(!PZxdlrod_idoEOfWpM) return;
 if(!PZxdlrod_idoEOfWpM.sq_IsMyControlObject()) return;
 local NB41JqqyTq_0icHS = PZxdlrod_idoEOfWpM.getSkillSubState(); 
 if(NB41JqqyTq_0icHS != 3)
 {
 PZxdlrod_idoEOfWpM.sq_IntVectClear();
 PZxdlrod_idoEOfWpM.sq_IntVectPush(NB41JqqyTq_0icHS + 1); 
 PZxdlrod_idoEOfWpM.sq_AddSetStatePacket(235, STATE_PRIORITY_USER, true); 
 }
 else
 PZxdlrod_idoEOfWpM.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

function getScrollBasisPos_atgunner_operationraze(rdI8mVHrva4EjeP)
{
 if(!rdI8mVHrva4EjeP) return;
 if(!rdI8mVHrva4EjeP.sq_IsMyControlObject()) return;
 local UguBREupG3bFybNpZ3jV6vw = rdI8mVHrva4EjeP.getSkillSubState();
 switch(UguBREupG3bFybNpZ3jV6vw)
 {
 case 2:
 local GuEZ4xNVTsvIEHAl5gavh2N = rdI8mVHrva4EjeP.sq_GetStateTimer(); 
 local zSPfFGF5rfwf0gya6E8X1iO3 = 150; 
 local NKPeUxAiRvpSW8 = rdI8mVHrva4EjeP.getXPos(); 
 local EkxtTdlO9_hFX4N52U3JN4 = sq_GetUniformVelocity(NKPeUxAiRvpSW8, sq_GetDistancePos(NKPeUxAiRvpSW8, rdI8mVHrva4EjeP.getDirection(), 300), GuEZ4xNVTsvIEHAl5gavh2N, zSPfFGF5rfwf0gya6E8X1iO3);
 rdI8mVHrva4EjeP.sq_SetCameraScrollPosition(EkxtTdlO9_hFX4N52U3JN4, rdI8mVHrva4EjeP.getYPos(), 0);
 return true;
 case 3:
 local EXl5fLVQvzodWGxjBc9QeuI = rdI8mVHrva4EjeP.getCurrentAnimation(); 
 local GuEZ4xNVTsvIEHAl5gavh2N = sq_GetCurrentTime(EXl5fLVQvzodWGxjBc9QeuI); 
 local zSPfFGF5rfwf0gya6E8X1iO3 = EXl5fLVQvzodWGxjBc9QeuI.getDelaySum(false); 
 local NKPeUxAiRvpSW8 = rdI8mVHrva4EjeP.getXPos(); 
 local EkxtTdlO9_hFX4N52U3JN4 = sq_GetUniformVelocity(sq_GetDistancePos(NKPeUxAiRvpSW8, rdI8mVHrva4EjeP.getDirection(), 300), NKPeUxAiRvpSW8, GuEZ4xNVTsvIEHAl5gavh2N, zSPfFGF5rfwf0gya6E8X1iO3);
 rdI8mVHrva4EjeP.sq_SetCameraScrollPosition(EkxtTdlO9_hFX4N52U3JN4, rdI8mVHrva4EjeP.getYPos(), 0);
 return true;
 }
 return false;
} ;



