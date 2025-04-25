
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_priest_unholyfury(wTekTO4eCrFYx7)
{
 wTekTO4eCrFYx7 = sq_GetCNRDObjectToSQRCharacter(wTekTO4eCrFYx7);
 if(!wTekTO4eCrFYx7) return false; 
 local nlbJxihYbCkD0vY4 = wTekTO4eCrFYx7.sq_IsUseSkill(138); 
 if(nlbJxihYbCkD0vY4) 
 {
 wTekTO4eCrFYx7.sq_IntVectClear();
 wTekTO4eCrFYx7.sq_IntVectPush(0); 
 if(!isAvengerAwakenning(wTekTO4eCrFYx7)) 
 wTekTO4eCrFYx7.sq_IntVectPush(0); 
 else 
 wTekTO4eCrFYx7.sq_IntVectPush(1); 
 wTekTO4eCrFYx7.sq_AddSetStatePacket(138, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_unholyfury(KctYPDY0yKxNV1DrQG1AHs)
{
 KctYPDY0yKxNV1DrQG1AHs = sq_GetCNRDObjectToSQRCharacter(KctYPDY0yKxNV1DrQG1AHs);
 if(!KctYPDY0yKxNV1DrQG1AHs) return false; 
 local i9KX_f0l5wd = KctYPDY0yKxNV1DrQG1AHs.sq_GetState(); 
 if(i9KX_f0l5wd == STATE_STAND) 
 return true; 
 if(i9KX_f0l5wd == STATE_ATTACK) 
 {
 return KctYPDY0yKxNV1DrQG1AHs.sq_IsCommandEnable(138); 
 }
 return true; 
} ;

 
function onSetState_priest_unholyfury(VqKYGYeKUU, g4P7yGT1KjQXw5c6mslE, MwfcFzERd8KkhycjG9, fBhEsuUmpnTct48pL)
{
 VqKYGYeKUU = sq_GetCNRDObjectToSQRCharacter(VqKYGYeKUU);
 if(!VqKYGYeKUU) return; 
 local Izs1hcoPzFK_UDw = VqKYGYeKUU.sq_GetVectorData(MwfcFzERd8KkhycjG9, 0); 
 VqKYGYeKUU.setSkillSubState(Izs1hcoPzFK_UDw); 
 switch(Izs1hcoPzFK_UDw)
 {
 case 0:
 VqKYGYeKUU.sq_StopMove(); 
 VqKYGYeKUU.sq_SetStaticSpeedInfo(0, 0, SPEED_VALUE_DEFAULT, (SPEED_VALUE_DEFAULT*1.3).tointeger(), 1.0, 1.0); 
 VqKYGYeKUU.getVar().setBool(0, true); 
 VqKYGYeKUU.getVar().setBool(1, false); 
 local zEmQ1t7Xo4ORRfuVR4qI8tbX = VqKYGYeKUU.sq_GetVectorData(MwfcFzERd8KkhycjG9, 1); 
 if(zEmQ1t7Xo4ORRfuVR4qI8tbX==0) 
 VqKYGYeKUU.getVar().setBool(2, false); 
 else
 VqKYGYeKUU.getVar().setBool(2, true); 
 VqKYGYeKUU.getVar("speed").clear_vector(); 
 VqKYGYeKUU.getVar("speed").push_vector(0); 
 VqKYGYeKUU.getVar("speed").push_vector(5); 
 VqKYGYeKUU.getVar("speed").push_vector(130); 
 VqKYGYeKUU.getVar("speed").push_vector(230); 
 VqKYGYeKUU.getVar("speed").push_vector(130); 
 if(VqKYGYeKUU.getVar().getBool(2)==false) 
 {
 VqKYGYeKUU.sq_SetCurrentAnimation(233);
 VqKYGYeKUU.sq_SetCurrentAttackInfo(126);
 VqKYGYeKUU.sq_SetCurrentAttackBonusRate(VqKYGYeKUU.sq_GetBonusRateWithPassive(138, 138, 0, 1.0)); 
 VqKYGYeKUU.sq_PlaySound("PR_UNHOLYFURY_01");
 }
 else
 {
 local UFZPaLZaiOvSpp = VqKYGYeKUU.getVar().GetAnimationMap("priest_avenger_unholyfury_start_demon", "character/priest/animation/avengerawakening/unholyfury/start_demon.ani");
 VqKYGYeKUU.setCurrentAnimation(UFZPaLZaiOvSpp);
 VqKYGYeKUU.sq_SetCurrentAttackInfo(126);
 local llPaFY66vCdEWxG = VqKYGYeKUU.sq_GetLevelData(138, 7, sq_GetSkillLevel(VqKYGYeKUU, 138)) / 100.0; 
 VqKYGYeKUU.sq_SetCurrentAttackBonusRate(VqKYGYeKUU.sq_GetBonusRateWithPassive(138, 138, 0, 1.0 + llPaFY66vCdEWxG)); 
 VqKYGYeKUU.sq_PlaySound("PR_DGUARDIAN_UNHOLYFURY_01");
 }
 break;
 case 1:
 local UFZPaLZaiOvSpp = VqKYGYeKUU.getVar().GetAnimationMap("priest_avenger_unholyfury_start_body", "character/priest/animation/avengerawakening/unholyfury/start_body.ani");
 VqKYGYeKUU.setCurrentAnimation(UFZPaLZaiOvSpp);
 VqKYGYeKUU.sq_SetCurrentAttackInfo(124);
 if(VqKYGYeKUU.getVar().getBool(2) == false) 
 VqKYGYeKUU.sq_SetCurrentAttackBonusRate(VqKYGYeKUU.sq_GetBonusRateWithPassive(138, 138, 1, 1.0)); 
 else 
 VqKYGYeKUU.sq_SetCurrentAttackBonusRate(VqKYGYeKUU.sq_GetBonusRateWithPassive(138, 138, 1, 1.0 + VqKYGYeKUU.sq_GetLevelData(138, 7, sq_GetSkillLevel(VqKYGYeKUU, 138)) / 100.0)); 
 VqKYGYeKUU.getVar().setBool(0, false); 
 break;
 case 2:
 local UFZPaLZaiOvSpp = VqKYGYeKUU.getVar().GetAnimationMap("priest_avenger_unholyfury_loop_body", "character/priest/animation/avengerawakening/unholyfury/loop_body.ani");
 VqKYGYeKUU.setCurrentAnimation(UFZPaLZaiOvSpp);
 VqKYGYeKUU.sq_SetCurrentAttackInfo(124);
 if(VqKYGYeKUU.getVar().getBool(2) == false) 
 VqKYGYeKUU.sq_SetCurrentAttackBonusRate(VqKYGYeKUU.sq_GetBonusRateWithPassive(138, 138, 1, 1.0)); 
 else 
 VqKYGYeKUU.sq_SetCurrentAttackBonusRate(VqKYGYeKUU.sq_GetBonusRateWithPassive(138, 138, 1, 1.0 + VqKYGYeKUU.sq_GetLevelData(138, 7, sq_GetSkillLevel(VqKYGYeKUU, 138)) / 100.0)); 
 break;
 case 3:
 local UFZPaLZaiOvSpp = VqKYGYeKUU.getVar().GetAnimationMap("priest_avenger_unholyfury_endstart_body", "character/priest/animation/avengerawakening/unholyfury/endstart_body.ani");
 VqKYGYeKUU.setCurrentAnimation(UFZPaLZaiOvSpp);
 VqKYGYeKUU.sq_SetCurrentAttackInfo(127);
 if(VqKYGYeKUU.getVar().getBool(2) == false) 
 VqKYGYeKUU.sq_SetCurrentAttackBonusRate(VqKYGYeKUU.sq_GetBonusRateWithPassive(138, 138, 3, 1.0)); 
 else 
 VqKYGYeKUU.sq_SetCurrentAttackBonusRate(VqKYGYeKUU.sq_GetBonusRateWithPassive(138, 138, 3, 1.0 + VqKYGYeKUU.sq_GetLevelData(138, 7, sq_GetSkillLevel(VqKYGYeKUU, 138)) / 100.0)); 
 VqKYGYeKUU.getVar().setBool(0, true); 
 break;
 case 4:
 local UFZPaLZaiOvSpp = VqKYGYeKUU.getVar().GetAnimationMap("priest_avenger_unholyfury_endpang_body", "character/priest/animation/avengerawakening/unholyfury/endpang_body.ani");
 VqKYGYeKUU.setCurrentAnimation(UFZPaLZaiOvSpp);
 VqKYGYeKUU.sq_PlaySound("UNHOLYFURY_GAUGE");
 sq_AddDrawOnlyAniFromParent(VqKYGYeKUU, "character/priest/effect/animation/unholyfury/end/endpang_dodge.ani", 0, 1, 0); 
 break;
 case 5:
 local cS4qpSyE5VgzY = VqKYGYeKUU.sq_GetVectorData(MwfcFzERd8KkhycjG9, 1); 
 local llPaFY66vCdEWxG = VqKYGYeKUU.sq_GetVectorData(MwfcFzERd8KkhycjG9, 2)/100.0; 
 if(cS4qpSyE5VgzY!=0)consumeDevilGauge(VqKYGYeKUU, cS4qpSyE5VgzY); 
 VqKYGYeKUU.getVar("move").clear_vector(); 
 VqKYGYeKUU.getVar("move").push_vector(VqKYGYeKUU.getXPos()); 
 if(VqKYGYeKUU.getVar().getBool(2) == false) 
 {
 VqKYGYeKUU.sq_SetCurrentAnimation(234);
 VqKYGYeKUU.getVar("move").push_vector(0); 
 VqKYGYeKUU.getVar("move").push_vector(3); 
 }
 else 
 {
 local UFZPaLZaiOvSpp = VqKYGYeKUU.getVar().GetAnimationMap("priest_avenger_unholyfury_last_demon", "character/priest/animation/avengerawakening/unholyfury/last_demon.ani");
 VqKYGYeKUU.setCurrentAnimation(UFZPaLZaiOvSpp);
 VqKYGYeKUU.getVar("move").push_vector(0); 
 VqKYGYeKUU.getVar("move").push_vector(7); 
 }
 VqKYGYeKUU.sq_SetCurrentAttackInfo(125);
 VqKYGYeKUU.sq_SetCurrentAttackBonusRate(VqKYGYeKUU.sq_GetBonusRateWithPassive(138, 138, 4, 1.0+llPaFY66vCdEWxG)); 
 break;
 }
} ;

function onProcCon_priest_unholyfury(ZEiNjFFhb7yS2vNK5NtmG)
{
 ZEiNjFFhb7yS2vNK5NtmG = sq_GetCNRDObjectToSQRCharacter(ZEiNjFFhb7yS2vNK5NtmG);
 if(!ZEiNjFFhb7yS2vNK5NtmG) return;
 local tXsyyQgktZWpilrfBOVV = ZEiNjFFhb7yS2vNK5NtmG.getSkillSubState(); 
 switch(tXsyyQgktZWpilrfBOVV)
 {
 case 1:
 case 2:
 sq_SetKeyxEnable(ZEiNjFFhb7yS2vNK5NtmG, 1, true); 
 if(sq_IsEnterCommand(ZEiNjFFhb7yS2vNK5NtmG, 1)) 
 {
 ZEiNjFFhb7yS2vNK5NtmG.sq_IntVectClear();
 ZEiNjFFhb7yS2vNK5NtmG.sq_IntVectPush(3); 
 ZEiNjFFhb7yS2vNK5NtmG.sq_AddSetStatePacket(138, STATE_PRIORITY_USER, true); 
 }
 break;
 }
 sq_SetKeyxEnable(ZEiNjFFhb7yS2vNK5NtmG, 0, true); 
 if(sq_IsEnterCommand(ZEiNjFFhb7yS2vNK5NtmG, 0)) 
 {
 local JsiX1u7bu1iV8nfRwbr15 = ZEiNjFFhb7yS2vNK5NtmG.getVar("speed").get_vector(0); 
 local zqPtvRO0vRLVim3drpuCMLp = ZEiNjFFhb7yS2vNK5NtmG.getVar("speed").get_vector(1); 
 if(JsiX1u7bu1iV8nfRwbr15 < zqPtvRO0vRLVim3drpuCMLp) 
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1);
 sq_BinaryWriteWord(JsiX1u7bu1iV8nfRwbr15+1);
 sq_SendChangeSkillEffectPacket(ZEiNjFFhb7yS2vNK5NtmG, 138); 
 }
 if(ZEiNjFFhb7yS2vNK5NtmG.getVar().getBool(1) == false) 
 ZEiNjFFhb7yS2vNK5NtmG.getVar().setBool(1, true); 
 }
 sq_SetKeyxEnable(ZEiNjFFhb7yS2vNK5NtmG, 6, true); 
 if(sq_IsEnterCommand(ZEiNjFFhb7yS2vNK5NtmG, 6)) 
 if(ZEiNjFFhb7yS2vNK5NtmG.getVar().getBool(1) == false) 
 ZEiNjFFhb7yS2vNK5NtmG.getVar().setBool(1, true); 
} ;

function onProc_priest_unholyfury(iR7NOlkCJTKIjW)
{
 iR7NOlkCJTKIjW = sq_GetCNRDObjectToSQRCharacter(iR7NOlkCJTKIjW);
 if(!iR7NOlkCJTKIjW) return;
 local BAzyCRkm09 = iR7NOlkCJTKIjW.getSkillSubState(); 
 switch(BAzyCRkm09)
 {
 case 5:
 if(iR7NOlkCJTKIjW.getVar("move").size_vector() > 0)
 {
 local XuiFPiCDpxWoA = iR7NOlkCJTKIjW.getCurrentAnimation(); 
 local G9pJtCd7nVk = sq_GetCurrentTime(XuiFPiCDpxWoA); 
 local MXIO37GxQwR3CQDTomslP8 = XuiFPiCDpxWoA.getDelaySum(iR7NOlkCJTKIjW.getVar("move").get_vector(1), iR7NOlkCJTKIjW.getVar("move").get_vector(2)); 
 local m8ADtLSOdsZp = sq_GetDistancePos(iR7NOlkCJTKIjW.getVar("move").get_vector(0),
 iR7NOlkCJTKIjW.getDirection(),
 sq_GetAccel(0, 160, G9pJtCd7nVk, MXIO37GxQwR3CQDTomslP8, true)); 
 if(iR7NOlkCJTKIjW.isMovablePos(m8ADtLSOdsZp, iR7NOlkCJTKIjW.getYPos())) 
 sq_setCurrentAxisPos(iR7NOlkCJTKIjW, 0, m8ADtLSOdsZp); 
 else 
 iR7NOlkCJTKIjW.getVar("move").clear_vector();
 }
 break;
 }
} ;


if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onChangeSkillEffect_priest_unholyfury(kK_RAK4UNJb0vCf9PEH, qFqSM8H5CBb3XdAC, KWSPdyxGGWJ_63u3)
{
 if(!kK_RAK4UNJb0vCf9PEH) return;
 local YbUtYE1_D0ox69qlPX04 = KWSPdyxGGWJ_63u3.readWord(); 
 switch(YbUtYE1_D0ox69qlPX04)
 {
 case 1: 
 local OnUBqn_5GXi_wDeyeq_O = KWSPdyxGGWJ_63u3.readWord(); 
 kK_RAK4UNJb0vCf9PEH.getVar("speed").set_vector(0, OnUBqn_5GXi_wDeyeq_O); 
 local TtwaIkYng9u_1V__ox32 = kK_RAK4UNJb0vCf9PEH.getVar("speed").get_vector(1); 
 local M71cCgMrvP0sM4pcRz6anhA = sq_GetUniformVelocity(kK_RAK4UNJb0vCf9PEH.getVar("speed").get_vector(2),
 kK_RAK4UNJb0vCf9PEH.getVar("speed").get_vector(3), 
 OnUBqn_5GXi_wDeyeq_O, TtwaIkYng9u_1V__ox32); 
 kK_RAK4UNJb0vCf9PEH.getVar("speed").set_vector(4, M71cCgMrvP0sM4pcRz6anhA); 
 kK_RAK4UNJb0vCf9PEH.sq_SetStaticSpeedInfo(0, 0, SPEED_VALUE_DEFAULT, (M71cCgMrvP0sM4pcRz6anhA / 100.0 * SPEED_VALUE_DEFAULT).tointeger(), 1.0, 1.0); 
 break;
 }
} ;

function onAttack_priest_unholyfury(WwrECRwdHvBRDp6rqoJYtuHH, btrJJLMl0jiIlGdBJuqhXn, ap_aI8DydgDxgMv_TNqSZHv, mxOg0TjNZs1bJnoayqVo)
{
 WwrECRwdHvBRDp6rqoJYtuHH = sq_GetCNRDObjectToSQRCharacter(WwrECRwdHvBRDp6rqoJYtuHH);
 if(!WwrECRwdHvBRDp6rqoJYtuHH) return;
 if(mxOg0TjNZs1bJnoayqVo || !btrJJLMl0jiIlGdBJuqhXn.isObjectType(OBJECTTYPE_ACTIVE)) return;
 if(WwrECRwdHvBRDp6rqoJYtuHH.getVar().getBool(0) == false)
 {
 WwrECRwdHvBRDp6rqoJYtuHH.getVar().setBool(0, true); 
 if(isInDevilStrikeSkill(WwrECRwdHvBRDp6rqoJYtuHH)) 
 addDevilGauge(WwrECRwdHvBRDp6rqoJYtuHH, WwrECRwdHvBRDp6rqoJYtuHH.sq_GetLevelData(138, 2, sq_GetSkillLevel(WwrECRwdHvBRDp6rqoJYtuHH, 138))); 
 }
} ;

function onKeyFrameFlag_priest_unholyfury(j1yJ_ISq98RVtelMpn, CSryk4KdeU)
{
 j1yJ_ISq98RVtelMpn = sq_GetCNRDObjectToSQRCharacter(j1yJ_ISq98RVtelMpn);
 if(!j1yJ_ISq98RVtelMpn) return;
 local fZRjlrPcxk_O = j1yJ_ISq98RVtelMpn.getSkillSubState(); 
 switch(fZRjlrPcxk_O)
 {
 case 0:
 switch(CSryk4KdeU)
 {
 case 1:
 case 100:
 if(j1yJ_ISq98RVtelMpn.sq_IsMyControlObject())
 {
 local NGZoxhDqxunF6FHS9a = sq_flashScreen(j1yJ_ISq98RVtelMpn, 200, 99990, 240, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 j1yJ_ISq98RVtelMpn.getVar("flashobj").clear_obj_vector(); 
 j1yJ_ISq98RVtelMpn.getVar("flashobj").push_obj_vector(NGZoxhDqxunF6FHS9a); 
 }
 if(CSryk4KdeU == 100)
 {
 sq_AddDrawOnlyAniFromParent(j1yJ_ISq98RVtelMpn, "character/priest/effect/animation/unholyfury/start02/start_add05.ani", 0, -1, 0); 
 sq_AddDrawOnlyAniFromParent(j1yJ_ISq98RVtelMpn, "character/priest/effect/animation/unholyfury/start02/start_add06.ani", 0, 2, 0); 
 sq_AddDrawOnlyAniFromParent(j1yJ_ISq98RVtelMpn, "character/priest/effect/animation/unholyfury/start02/start_add04.ani", 0, 3, 0); 
 sq_AddDrawOnlyAniFromParent(j1yJ_ISq98RVtelMpn, "character/priest/effect/animation/unholyfury/start02/start_add03.ani", 0, 4, 0); 
 sq_AddDrawOnlyAniFromParent(j1yJ_ISq98RVtelMpn, "character/priest/effect/animation/unholyfury/start02/start_add02.ani", 0, 5, 0); 
 sq_AddDrawOnlyAniFromParent(j1yJ_ISq98RVtelMpn, "character/priest/effect/animation/unholyfury/start02/start_add01.ani", 0, 6, 0); 
 }
 break;
 }
 break;
 case 1:
 case 2:
 local mNXSoGStyH4WX2RoTe = 0; 
 local XFV0DE5RdjXAs6kyE3 = 0; 
 local TcAqvdjUTA = 0.0; 
 local QwmWlDnN78rqgHd4O = ""; 
 if(fZRjlrPcxk_O == 1)
 {
 switch(CSryk4KdeU)
 {
 case 10: sq_SetMyShake(j1yJ_ISq98RVtelMpn, 5, 200); mNXSoGStyH4WX2RoTe = 249; XFV0DE5RdjXAs6kyE3 = 91; TcAqvdjUTA = -58.0; QwmWlDnN78rqgHd4O = "scratch02_normal.ani"; break;
 case 11: sq_SetMyShake(j1yJ_ISq98RVtelMpn, 5, 170); mNXSoGStyH4WX2RoTe = 218; XFV0DE5RdjXAs6kyE3 = 56; TcAqvdjUTA = 30.0; QwmWlDnN78rqgHd4O = "scratch02_normal.ani"; break;
 case 12: sq_SetMyShake(j1yJ_ISq98RVtelMpn, 4, 140); mNXSoGStyH4WX2RoTe = 164; XFV0DE5RdjXAs6kyE3 = 204; TcAqvdjUTA = 42.0; QwmWlDnN78rqgHd4O = "scratch02_normal.ani"; break;
 case 13: sq_SetMyShake(j1yJ_ISq98RVtelMpn, 6, 160); mNXSoGStyH4WX2RoTe = 278; XFV0DE5RdjXAs6kyE3 = 86; TcAqvdjUTA = -55.0; QwmWlDnN78rqgHd4O = "scratch02_normal.ani"; break;
 case 14: sq_SetMyShake(j1yJ_ISq98RVtelMpn, 3, 120); mNXSoGStyH4WX2RoTe = 259; XFV0DE5RdjXAs6kyE3 = 45; TcAqvdjUTA = 20.0; QwmWlDnN78rqgHd4O = "scratch02_normal.ani"; break;
 case 15: sq_SetMyShake(j1yJ_ISq98RVtelMpn, 4, 120); mNXSoGStyH4WX2RoTe = 230; XFV0DE5RdjXAs6kyE3 = 124; TcAqvdjUTA = -55.0; QwmWlDnN78rqgHd4O = "scratch02_normal.ani"; break;
 case 16: sq_SetMyShake(j1yJ_ISq98RVtelMpn, 3, 110); mNXSoGStyH4WX2RoTe = 234; XFV0DE5RdjXAs6kyE3 = 32; TcAqvdjUTA = 52.0; QwmWlDnN78rqgHd4O = "scratch02_normal.ani"; break;
 }
 }
 else if(fZRjlrPcxk_O == 2)
 {
 switch(CSryk4KdeU)
 {
 case 10: sq_SetMyShake(j1yJ_ISq98RVtelMpn, 4, 60); mNXSoGStyH4WX2RoTe = 198; XFV0DE5RdjXAs6kyE3 = 143; TcAqvdjUTA = -18.0; QwmWlDnN78rqgHd4O = "scratch02_normal.ani"; break;
 case 11: sq_SetMyShake(j1yJ_ISq98RVtelMpn, 4, 80); mNXSoGStyH4WX2RoTe = 148; XFV0DE5RdjXAs6kyE3 = 75; TcAqvdjUTA = 10.0; QwmWlDnN78rqgHd4O = "scratch03_normal.ani"; break;
 case 12: mNXSoGStyH4WX2RoTe = 259; XFV0DE5RdjXAs6kyE3 = 80; TcAqvdjUTA = -65.0; QwmWlDnN78rqgHd4O = "scratch02_normal.ani"; break;
 case 13: mNXSoGStyH4WX2RoTe = 238; XFV0DE5RdjXAs6kyE3 = 87; TcAqvdjUTA = 26.0; QwmWlDnN78rqgHd4O = "scratch03_normal.ani"; break;
 }
 }
 
 if(QwmWlDnN78rqgHd4O != "")
 {
 
 local nF0tWE39RhTdBlZXC = sq_CreateAnimation("character/priest/effect/animation/unholyfury/", QwmWlDnN78rqgHd4O); 
 nF0tWE39RhTdBlZXC.setSpeedRate(j1yJ_ISq98RVtelMpn.getVar("speed").get_vector(4) * 1.0); 
 local pSTYIYBCfasdqoIwwMlu = sq_CreatePooledObject(nF0tWE39RhTdBlZXC, true); 
 sq_SetCurrentDirection(pSTYIYBCfasdqoIwwMlu, j1yJ_ISq98RVtelMpn.getDirection()); 
 pSTYIYBCfasdqoIwwMlu.setCurrentPos(sq_GetDistancePos(j1yJ_ISq98RVtelMpn.getXPos(), j1yJ_ISq98RVtelMpn.getDirection(), mNXSoGStyH4WX2RoTe), j1yJ_ISq98RVtelMpn.getYPos(), j1yJ_ISq98RVtelMpn.getZPos() + XFV0DE5RdjXAs6kyE3); 
 pSTYIYBCfasdqoIwwMlu = sq_SetEnumDrawLayer(pSTYIYBCfasdqoIwwMlu, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(j1yJ_ISq98RVtelMpn, pSTYIYBCfasdqoIwwMlu, OBJECTTYPE_DRAWONLY, false); 
 sq_SetCustomRotate(pSTYIYBCfasdqoIwwMlu, sq_ToRadian(TcAqvdjUTA)); 
 if(j1yJ_ISq98RVtelMpn.sq_IsMyControlObject())
 sq_flashScreen(j1yJ_ISq98RVtelMpn, 30, 30, 30, 127, sq_RGB(255, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 case 3:
 switch(CSryk4KdeU)
 {
 case 10:
 sq_AddDrawOnlyAniFromParent(j1yJ_ISq98RVtelMpn, "character/priest/effect/animation/unholyfury/end/endstart_claw02.ani", 0, 0, 0); 
 break;
 case 11:
 
 local nF0tWE39RhTdBlZXC = sq_CreateAnimation("", "character/priest/effect/animation/unholyfury/end/endx_normal.ani"); 
 nF0tWE39RhTdBlZXC.setSpeedRate(j1yJ_ISq98RVtelMpn.getVar("speed").get_vector(4) * 1.0); 
 local pSTYIYBCfasdqoIwwMlu = sq_CreatePooledObject(nF0tWE39RhTdBlZXC, true); 
 sq_SetCurrentDirection(pSTYIYBCfasdqoIwwMlu, j1yJ_ISq98RVtelMpn.getDirection()); 
 pSTYIYBCfasdqoIwwMlu.setCurrentPos(sq_GetDistancePos(j1yJ_ISq98RVtelMpn.getXPos(), j1yJ_ISq98RVtelMpn.getDirection(), 101), j1yJ_ISq98RVtelMpn.getYPos(), j1yJ_ISq98RVtelMpn.getZPos() + 140); 
 pSTYIYBCfasdqoIwwMlu = sq_SetEnumDrawLayer(pSTYIYBCfasdqoIwwMlu, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(j1yJ_ISq98RVtelMpn, pSTYIYBCfasdqoIwwMlu, OBJECTTYPE_DRAWONLY, false); 
 sq_SetCustomRotate(pSTYIYBCfasdqoIwwMlu, sq_ToRadian(45.0)); 
 sq_AddDrawOnlyAniFromParent(j1yJ_ISq98RVtelMpn, "character/priest/effect/animation/unholyfury/end/endstart_dust03.ani", 0, 0, 0); 
 sq_AddDrawOnlyAniFromParent(j1yJ_ISq98RVtelMpn, "character/priest/effect/animation/unholyfury/end/endstart_dust02.ani", 0, 0, 0); 
 sq_AddDrawOnlyAniFromParent(j1yJ_ISq98RVtelMpn, "character/priest/effect/animation/unholyfury/end/endstart_dust01.ani", 0, 0, 0); 
 sq_AddDrawOnlyAniFromParent(j1yJ_ISq98RVtelMpn, "character/priest/effect/animation/unholyfury/end/endstart_clawshot02.ani", 0, 0, 0); 
 break;
 case 12:
 sq_AddDrawOnlyAniFromParent(j1yJ_ISq98RVtelMpn, "character/priest/effect/animation/unholyfury/end/endstart_claw01.ani", 0, 0, 0); 
 sq_AddDrawOnlyAniFromParent(j1yJ_ISq98RVtelMpn, "character/priest/effect/animation/unholyfury/end/endstart_clawshot01.ani", 0, 0, 0); 
 break;
 case 13:
 
 local nF0tWE39RhTdBlZXC = sq_CreateAnimation("", "character/priest/effect/animation/unholyfury/end/endx_normal.ani"); 
 nF0tWE39RhTdBlZXC.setSpeedRate(j1yJ_ISq98RVtelMpn.getVar("speed").get_vector(4) * 1.0); 
 local pSTYIYBCfasdqoIwwMlu = sq_CreatePooledObject(nF0tWE39RhTdBlZXC, true); 
 sq_SetCurrentDirection(pSTYIYBCfasdqoIwwMlu, j1yJ_ISq98RVtelMpn.getDirection()); 
 pSTYIYBCfasdqoIwwMlu.setCurrentPos(sq_GetDistancePos(j1yJ_ISq98RVtelMpn.getXPos(), j1yJ_ISq98RVtelMpn.getDirection(), 102), j1yJ_ISq98RVtelMpn.getYPos(), j1yJ_ISq98RVtelMpn.getZPos() + 138); 
 pSTYIYBCfasdqoIwwMlu = sq_SetEnumDrawLayer(pSTYIYBCfasdqoIwwMlu, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(j1yJ_ISq98RVtelMpn, pSTYIYBCfasdqoIwwMlu, OBJECTTYPE_DRAWONLY, false); 
 sq_SetCustomRotate(pSTYIYBCfasdqoIwwMlu, sq_ToRadian(-45.0)); 
 break;
 }
 break;
 case 5:
 if(CSryk4KdeU == 10)
 j1yJ_ISq98RVtelMpn.sq_PlaySound("PR_UNHOLYFURY_02");
 else if(CSryk4KdeU == 11 || CSryk4KdeU == 100)
 {
 
 sq_SetMyShake(j1yJ_ISq98RVtelMpn, 10, 600); 
 if(j1yJ_ISq98RVtelMpn.sq_IsMyControlObject())
 sq_flashScreen(j1yJ_ISq98RVtelMpn, 40, 100, 500, 127, sq_RGB(255, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 if(CSryk4KdeU == 100)
 {
 j1yJ_ISq98RVtelMpn.sq_PlaySound("PR_DGUARDIAN_UNHOLYFURY_02");
 j1yJ_ISq98RVtelMpn.sq_PlaySound("UNHOLYFURY_EXP");
 sq_AddDrawOnlyAniFromParent(j1yJ_ISq98RVtelMpn, "character/priest/effect/animation/unholyfury/last/last_dust03.ani", 0, 3, 0); 
 sq_AddDrawOnlyAniFromParent(j1yJ_ISq98RVtelMpn, "character/priest/effect/animation/unholyfury/last/last_dust02.ani", 0, 4, 0); 
 sq_AddDrawOnlyAniFromParent(j1yJ_ISq98RVtelMpn, "character/priest/effect/animation/unholyfury/last/last_dust01.ani", 0, 5, 0); 
 }
 }
 break;
 }
 switch(fZRjlrPcxk_O)
 {
 case 1:
 case 2:
 if(CSryk4KdeU == 1)
 {
 j1yJ_ISq98RVtelMpn.sq_PlaySound("R_UNHOLYFURY_SWISH");
 j1yJ_ISq98RVtelMpn.getVar().setBool(0, false); 
 }
 break;
 }
 if(CSryk4KdeU == 1)
 j1yJ_ISq98RVtelMpn.resetHitObjectList(); 
 return true;
} ;

function onEndState_priest_unholyfury(qbMQBPW1bc_YdwO9p5Taj, VkUPqofDNBq07gz7giCF)
{
 qbMQBPW1bc_YdwO9p5Taj = sq_GetCNRDObjectToSQRCharacter(qbMQBPW1bc_YdwO9p5Taj);
 if(!qbMQBPW1bc_YdwO9p5Taj) return;
 if(VkUPqofDNBq07gz7giCF != 138)
 RemoveAllFlash(qbMQBPW1bc_YdwO9p5Taj); 
} ;

 
function onEndCurrentAni_priest_unholyfury(SOgGVZR0joz)
{
 SOgGVZR0joz = sq_GetCNRDObjectToSQRCharacter(SOgGVZR0joz);
 if(!SOgGVZR0joz) return;
 if(!SOgGVZR0joz.sq_IsMyControlObject()) return;
 local PgOZtbJlsjc0Nx4PuUq = SOgGVZR0joz.getSkillSubState(); 
 if(PgOZtbJlsjc0Nx4PuUq != 5)
 {
 if(PgOZtbJlsjc0Nx4PuUq == 4) 
 {
 local TWHTfLxmdBM0rkf = 0; 
 local YPAxgLDoegKkHCSS7654m3c = 0; 
 local eu6hkcGv6w7bBUM = getDevilGauge(SOgGVZR0joz); 
 if(isInDevilStrikeSkill(SOgGVZR0joz) 
 && eu6hkcGv6w7bBUM > 0 
 && SOgGVZR0joz.getVar().getBool(1) == true) 
 {
 local Kvk_12SletZ6spanrfk7 = sq_GetSkillLevel(SOgGVZR0joz, 138); 
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(SOgGVZR0joz, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 TWHTfLxmdBM0rkf = SOgGVZR0joz.sq_GetLevelData(138, 6, Kvk_12SletZ6spanrfk7); 
 YPAxgLDoegKkHCSS7654m3c += sq_GetUniformVelocity(0, SOgGVZR0joz.sq_GetLevelData(138, 5, Kvk_12SletZ6spanrfk7), eu6hkcGv6w7bBUM, TWHTfLxmdBM0rkf); 
 if(SOgGVZR0joz.getVar().getBool(2) == true) 
 YPAxgLDoegKkHCSS7654m3c += SOgGVZR0joz.sq_GetLevelData(138, 7, sq_GetSkillLevel(SOgGVZR0joz, 138)); 
 }
 SOgGVZR0joz.sq_IntVectClear();
 SOgGVZR0joz.sq_IntVectPush(PgOZtbJlsjc0Nx4PuUq + 1); 
 SOgGVZR0joz.sq_IntVectPush(TWHTfLxmdBM0rkf); 
 SOgGVZR0joz.sq_IntVectPush(YPAxgLDoegKkHCSS7654m3c); 
 SOgGVZR0joz.sq_AddSetStatePacket(138, STATE_PRIORITY_USER, true); 
 return;
 }
 SOgGVZR0joz.sq_IntVectClear();
 SOgGVZR0joz.sq_IntVectPush(PgOZtbJlsjc0Nx4PuUq + 1); 
 SOgGVZR0joz.sq_AddSetStatePacket(138, STATE_PRIORITY_USER, true); 
 }
 else
 SOgGVZR0joz.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


