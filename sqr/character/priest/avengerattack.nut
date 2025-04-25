


function onSetState_AvengerAttack(up0_PmNGzc1, OuiqpYHBSBrC, zyORbQ6tDBjswV7XgNUdg3Y, z6iZ1sq554)
{
 if(!up0_PmNGzc1) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(up0_PmNGzc1, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 {
 local kuqVCVBZaKH8PO2 = up0_PmNGzc1.sq_getVectorData(zyORbQ6tDBjswV7XgNUdg3Y, 0); 
 if(kuqVCVBZaKH8PO2==0)
 {
 up0_PmNGzc1.setAttackXVelocity(0);
 up0_PmNGzc1.setAttackXAccel(0);
 up0_PmNGzc1.setAttackXVelocityFast(0);
 up0_PmNGzc1.setAttackXAccelFast(0);
 }
 else if(kuqVCVBZaKH8PO2==1)
 {
 up0_PmNGzc1.setAttackXVelocity(100);
 up0_PmNGzc1.setAttackXAccel(-300);
 up0_PmNGzc1.setAttackXVelocityFast(200);
 up0_PmNGzc1.setAttackXAccelFast(-300);
 }
 else if(kuqVCVBZaKH8PO2==2)
 {
 up0_PmNGzc1.setAttackXVelocity(50);
 up0_PmNGzc1.setAttackXAccel(-300);
 up0_PmNGzc1.setAttackXVelocityFast(50);
 up0_PmNGzc1.setAttackXAccelFast(-300);
 }
 return;
 }
 else if(isAvengerAwakenning(up0_PmNGzc1) == false) {
 up0_PmNGzc1.getVar().clear_vector();
 up0_PmNGzc1.getVar().push_vector(0); 
 up0_PmNGzc1.getVar().push_vector(0); 
 up0_PmNGzc1.getVar().push_vector(0); 
 up0_PmNGzc1.getVar().push_vector(0); 
 up0_PmNGzc1.getVar().push_vector(0); 
 
 if(up0_PmNGzc1.getAttackIndex() == 0)
 {
 up0_PmNGzc1.setAttackXVelocity(100);
 up0_PmNGzc1.setAttackXAccel(-300);
 up0_PmNGzc1.setAttackXVelocityFast(200);
 up0_PmNGzc1.setAttackXAccelFast(-300); 
 }
 else if(up0_PmNGzc1.getAttackIndex() == 1) { 
 up0_PmNGzc1.setAttackXVelocity(50);
 up0_PmNGzc1.setAttackXAccel(-300);
 up0_PmNGzc1.setAttackXVelocityFast(50);
 up0_PmNGzc1.setAttackXAccelFast(-300); 
 } 
 
 else if(up0_PmNGzc1.getAttackIndex() == 2) { 
 up0_PmNGzc1.setAttackXVelocity(20);
 up0_PmNGzc1.setAttackXAccel(-300);
 up0_PmNGzc1.setAttackXVelocityFast(50);
 up0_PmNGzc1.setAttackXAccelFast(-30);
 }
 else if(up0_PmNGzc1.getAttackIndex() == 3) 
 { 
 }
 return;
 }
 
 up0_PmNGzc1.sq_stopMove();
 local _nmbamIukprekFa = up0_PmNGzc1.getXPos();
 local yQGTr2Skkqsqb = up0_PmNGzc1.getYPos();
 local RwM_wnvn1SmCcEOSlnvn18Ch = up0_PmNGzc1.getZPos(); 
 local NF859tvPzA2r = sq_GetDirection(up0_PmNGzc1);
 up0_PmNGzc1.getVar().clear_vector();
 up0_PmNGzc1.getVar().push_vector(0);
 
 up0_PmNGzc1.setAttackXVelocity(0);
 up0_PmNGzc1.setAttackXAccel(0);
 up0_PmNGzc1.setAttackXVelocityFast(0);
 up0_PmNGzc1.setAttackXAccelFast(0);
 
} ;


function onAfterSetState_AvengerAttack(TbPT2Ru5Zrph8YIzBpjFB1oD, fHr92XubJhXmRWqUGj, KXAzSsEiVz0mtB6, K2VKa2ZpuFXpOu79WBBTc)
{
 if (!TbPT2Ru5Zrph8YIzBpjFB1oD) return;
 if (isAvengerAwakenning(TbPT2Ru5Zrph8YIzBpjFB1oD))
 {
 local nGjEs4JJURbHsTL = TbPT2Ru5Zrph8YIzBpjFB1oD.sq_getVectorData(KXAzSsEiVz0mtB6, 0); 
 if(nGjEs4JJURbHsTL<4)
 {
 local wF1krNlpmYdKMo_zuz = TbPT2Ru5Zrph8YIzBpjFB1oD.sq_getBonusRateWithPassive(119, fHr92XubJhXmRWqUGj, 6 + nGjEs4JJURbHsTL, 1.0); 
 TbPT2Ru5Zrph8YIzBpjFB1oD.sq_setCurrentAttackBonusRate(sq_GetCurrentAttackBonusRate(TbPT2Ru5Zrph8YIzBpjFB1oD) + wF1krNlpmYdKMo_zuz); 
 }
 switch (nGjEs4JJURbHsTL)
 {
 case 0:
 sq_CreateDrawOnlyObject(TbPT2Ru5Zrph8YIzBpjFB1oD, "character/priest/effect/animation/avengerawakening/attack01effect_dust.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 case 1:
 sq_CreateDrawOnlyObject(TbPT2Ru5Zrph8YIzBpjFB1oD, "character/priest/effect/animation/avengerawakening/attack02effect_dust01.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 case 2:
 sq_CreateDrawOnlyObject(TbPT2Ru5Zrph8YIzBpjFB1oD, "character/priest/effect/animation/avengerawakening/attack03effect_dust03.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 case 3:
 sq_CreateDrawOnlyObject(TbPT2Ru5Zrph8YIzBpjFB1oD, "character/priest/effect/animation/avengerawakening/attack04effect_dust01.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 case 4:
 TbPT2Ru5Zrph8YIzBpjFB1oD.getVar().set_vector(0, 1);
 sq_CreateDrawOnlyObject(TbPT2Ru5Zrph8YIzBpjFB1oD, "character/priest/effect/animation/avengerawakening/attack05start_dust01.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 case 5:
 TbPT2Ru5Zrph8YIzBpjFB1oD.getVar().set_vector(1, 1);
 TbPT2Ru5Zrph8YIzBpjFB1oD.sq_setCurrentAttackInfo(136);
 local ukPIGxk7iFXCzi0CqE = TbPT2Ru5Zrph8YIzBpjFB1oD.sq_getBonusRateWithPassive(119, fHr92XubJhXmRWqUGj, 13,1.0); 
 local ucd62UPMLgR = TbPT2Ru5Zrph8YIzBpjFB1oD.sq_getBonusRateWithPassive(119, fHr92XubJhXmRWqUGj, 14,1.0); 
 local RL4S8p6tND = TbPT2Ru5Zrph8YIzBpjFB1oD.sq_getVectorData(KXAzSsEiVz0mtB6, 1); 
 local pvUSZQNfHKes4DaU15cQAR = sq_GetUniformVelocity(ukPIGxk7iFXCzi0CqE, ucd62UPMLgR, RL4S8p6tND, 500); 
 TbPT2Ru5Zrph8YIzBpjFB1oD.sq_setCurrentAttackBonusRate(pvUSZQNfHKes4DaU15cQAR); 
 local l2gbZW4g7dYwWdVJgX0G = TbPT2Ru5Zrph8YIzBpjFB1oD.getVar("awakening");
 l2gbZW4g7dYwWdVJgX0G.get_ct_vector(0).Reset();
 l2gbZW4g7dYwWdVJgX0G.get_ct_vector(0).Start(0,0);
 
 local zb0MGT48lr6bF = TbPT2Ru5Zrph8YIzBpjFB1oD.sq_getIntData(119, 1); 
 l2gbZW4g7dYwWdVJgX0G.set_vector(0, zb0MGT48lr6bF);
 break;
 }
 }
 else if (CNSquirrelAppendage.sq_IsAppendAppendage(TbPT2Ru5Zrph8YIzBpjFB1oD, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 {
 local nGjEs4JJURbHsTL = TbPT2Ru5Zrph8YIzBpjFB1oD.sq_getVectorData(KXAzSsEiVz0mtB6, 0); 
 if (nGjEs4JJURbHsTL == 0)
 TbPT2Ru5Zrph8YIzBpjFB1oD.sq_PlaySound("PR_AVG1ATK");
 else if (nGjEs4JJURbHsTL == 1)
 TbPT2Ru5Zrph8YIzBpjFB1oD.sq_PlaySound("PR_AVG3ATK");
 else if (nGjEs4JJURbHsTL == 2)
 TbPT2Ru5Zrph8YIzBpjFB1oD.sq_PlaySound("PR_AVG4ATK");
 local PAJvMvgn5NM = TbPT2Ru5Zrph8YIzBpjFB1oD.sq_getBonusRateWithPassive(139, fHr92XubJhXmRWqUGj, 2, 1.0); 
 TbPT2Ru5Zrph8YIzBpjFB1oD.sq_setCurrentAttackBonusRate(sq_GetCurrentAttackBonusRate(TbPT2Ru5Zrph8YIzBpjFB1oD) + PAJvMvgn5NM); 
 }
} ;



function onKeyFrameFlag_AvengerAttack(ik3okQ6eADFNASzGGG1DSarY, HWoTMdXROe3)
{
 if (!ik3okQ6eADFNASzGGG1DSarY) return;
 if (CNSquirrelAppendage.sq_IsAppendAppendage(ik3okQ6eADFNASzGGG1DSarY, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 {
 local cL04BhgWNVpQV6Hi7yHrfeT = ik3okQ6eADFNASzGGG1DSarY.getAttackIndex(); 
 if (cL04BhgWNVpQV6Hi7yHrfeT == 0) 
 {
 if (HWoTMdXROe3 == 0)
 {
 ik3okQ6eADFNASzGGG1DSarY.sq_PlaySound("PR_AVG2ATK"); 
 ik3okQ6eADFNASzGGG1DSarY.resetHitObjectList(); 
 }
 }
 else if (cL04BhgWNVpQV6Hi7yHrfeT == 1) 
 {
 if (HWoTMdXROe3 == 0)
 {
 sq_CreateDrawOnlyObject(ik3okQ6eADFNASzGGG1DSarY, "character/priest/effect/animation/metamorphosis/effect/upper.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_SetMyShake(ik3okQ6eADFNASzGGG1DSarY, 2, 150); 
 }
 }
 else if (cL04BhgWNVpQV6Hi7yHrfeT == 2) 
 {
 if (HWoTMdXROe3 == 0)
 sq_CreateDrawOnlyObject(ik3okQ6eADFNASzGGG1DSarY, "character/priest/effect/animation/metamorphosis/effect/lower.ani", ENUM_DRAWLAYER_NORMAL, true); 
 else if (HWoTMdXROe3 == 1)
 {
 ik3okQ6eADFNASzGGG1DSarY.resetHitObjectList(); 
 sq_SetMyShake(ik3okQ6eADFNASzGGG1DSarY, 3, 150); 
 }
 }
 }
 else if (isAvengerAwakenning(ik3okQ6eADFNASzGGG1DSarY))
 {
 if (HWoTMdXROe3 == 100)
 ik3okQ6eADFNASzGGG1DSarY.resetHitObjectList(); 
 if (ik3okQ6eADFNASzGGG1DSarY.getAttackIndex() == 3 && HWoTMdXROe3 == 1)
 ik3okQ6eADFNASzGGG1DSarY.sq_PlaySound("PR_DGUARDIAN_3ATK"); 
 }
 return true;
} ;

 

 
function onProcCon_AvengerAttack(D87AQOuJh1w)
{
 if (!D87AQOuJh1w) return;
 if (isAvengerAwakenning(D87AQOuJh1w) == true)
 {
 
 if (D87AQOuJh1w.getAttackIndex() < 4) {
 sq_SetKeyxEnable(D87AQOuJh1w, 6, true);
 local Onwp5sjuHr3ZmEJusU = sq_IsEnterCommand(D87AQOuJh1w, 6);
 if (Onwp5sjuHr3ZmEJusU)
 {
 local SMbuVNctqeP = D87AQOuJh1w.getVar("awakening");
 local NfBgx0Kx8j = SMbuVNctqeP.get_ct_vector(0).Get();
 
 if (SMbuVNctqeP.get_ct_vector(0).Get() > SMbuVNctqeP.get_vector(0)) { 
 D87AQOuJh1w.sq_IntVectClear();
 D87AQOuJh1w.sq_IntVectPush(4); 
 D87AQOuJh1w.sq_addSetStatePacket(STATE_ATTACK, STATE_PRIORITY_USER, true);
 }
 else { 
 D87AQOuJh1w.startCantUseSkillWarning();
 if (D87AQOuJh1w.isMessage()) {
 sq_AddMessage(414); 
 }
 }
 return;
 }
 }
 
 
 if (D87AQOuJh1w.getAttackIndex() == 4) {
 
 local hv4tqML0xPXxW7iusW7y35w6 = sq_IsDownKey(D87AQOuJh1w, 6, false);
 local Ursyxe_u3ySKAaupw = 500; 
 local j2XsieSvZ0wLr = D87AQOuJh1w.sq_getStateTimer();
 
 if (!hv4tqML0xPXxW7iusW7y35w6 || j2XsieSvZ0wLr >= Ursyxe_u3ySKAaupw) {
 
 D87AQOuJh1w.sq_IntVectClear();
 D87AQOuJh1w.sq_IntVectPush(5); 
 D87AQOuJh1w.sq_IntVectPush(j2XsieSvZ0wLr); 
 
 D87AQOuJh1w.sq_addSetStatePacket(STATE_ATTACK, STATE_PRIORITY_USER, true);
 return;
 }
 }
 
 if(!sq_GetSkill(D87AQOuJh1w, 64).isInCoolTime()){
 if(D87AQOuJh1w.sq_IsEnterSkill(64) != -1)
 {
 sq_GetCNRDObjectToSQRCharacter(D87AQOuJh1w).startSkillCoolTime(64, sq_GetSkillLevel(D87AQOuJh1w, 64), -1); 
 D87AQOuJh1w.sq_IntVectClear();
 D87AQOuJh1w.sq_IntVectPush(6);
 D87AQOuJh1w.sq_addSetStatePacket(67, STATE_PRIORITY_USER, true); 
 }
 }
 }
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(D87AQOuJh1w, "character/new_priest/metamorphosis/ap_metamorphosis.nut") == false) {
 local MOnDvS_bCrnZbhW = D87AQOuJh1w.sq_getCurrentAni();
 local ZBLJL4EiV9cMpN = D87AQOuJh1w.sq_ani_IsEnd(MOnDvS_bCrnZbhW);
 local p1hZ1DcFkuD = D87AQOuJh1w.sq_ani_GetCurrentFrameIndex(MOnDvS_bCrnZbhW);
 if (D87AQOuJh1w.getAttackIndex() == 2) 
 {
 
 if (p1hZ1DcFkuD >= 5) 
 {
 if (D87AQOuJh1w.getVar().get_vector(2) == 0)
 { 
 D87AQOuJh1w.getVar().set_vector(2, 1); 
 
 D87AQOuJh1w.sq_setCurrentAttackInfo(93); 
 }
 }
 }
 
 if (D87AQOuJh1w.getAttackIndex() == 3) 
 {
 if (p1hZ1DcFkuD >= 7) {
 if (D87AQOuJh1w.getVar().get_vector(3) == 0)
 { 
 
 
 D87AQOuJh1w.sq_setCurrentAttackInfo(94);
 D87AQOuJh1w.getVar().set_vector(3, 1); 
 }
 }
 if (p1hZ1DcFkuD >= 8) 
 {
 if (D87AQOuJh1w.getVar().get_vector(2) == 0)
 { 
 D87AQOuJh1w.sq_setShake(D87AQOuJh1w, 1, 200); 
 D87AQOuJh1w.getVar().set_vector(2, 1); 
 }
 }
 }
 return;
 }
} ;
