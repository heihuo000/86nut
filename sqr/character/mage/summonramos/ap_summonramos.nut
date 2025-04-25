
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_mage_summonramos") 
 appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_mage_summonramos") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_mage_summonramos") 
 appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_mage_summonramos") 
}




function proc_appendage_mage_summonramos(WdlxwJi181Zy2vOk3XFh1hGo)
{
 if(!WdlxwJi181Zy2vOk3XFh1hGo) return;
 local ZbjiQddQrSmTLEIElssi = WdlxwJi181Zy2vOk3XFh1hGo.getParent();
 if(!ZbjiQddQrSmTLEIElssi)
 {
 WdlxwJi181Zy2vOk3XFh1hGo.setValid(false);
 return;
 }
 
 if(WdlxwJi181Zy2vOk3XFh1hGo.getVar("isStartAtk").getBool(0) == true)
 {
 if(ZbjiQddQrSmTLEIElssi.isMyControlObject())
 {
 
 local nZcd7C6FB7mqGaoKAmT = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(nZcd7C6FB7mqGaoKAmT); 
 sq_IntVectorPush(nZcd7C6FB7mqGaoKAmT, 0); 
 sq_AddSetStatePacketActiveObject(ZbjiQddQrSmTLEIElssi, STATE_ATTACK, nZcd7C6FB7mqGaoKAmT, STATE_PRIORITY_USER); 
 }
 WdlxwJi181Zy2vOk3XFh1hGo.getVar("isStartAtk").setBool(0, false); 
 return;
 }
 local OHD9Fei5GQ3l00hYC = WdlxwJi181Zy2vOk3XFh1hGo.getTimer().Get(); 
 if(OHD9Fei5GQ3l00hYC < 500)return;
 local nlyGiT0x3igSPFIS0T7smCR = WdlxwJi181Zy2vOk3XFh1hGo.getVar("sqrChr").get_obj_vector(0);
 if(!nlyGiT0x3igSPFIS0T7smCR || nlyGiT0x3igSPFIS0T7smCR.getState() == STATE_DIE) 
 {
 WdlxwJi181Zy2vOk3XFh1hGo.setValid(false);
 return;
 }
 local _f369GVTCG = ZbjiQddQrSmTLEIElssi.getState(); 
 switch(_f369GVTCG)
 {
 case STATE_STAND:
 if(OHD9Fei5GQ3l00hYC >= WdlxwJi181Zy2vOk3XFh1hGo.getVar("endTime").get_vector(0)) 
 {
 if(ZbjiQddQrSmTLEIElssi.isMyControlObject())
 {
 local nZcd7C6FB7mqGaoKAmT = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(nZcd7C6FB7mqGaoKAmT); 
 sq_IntVectorPush(nZcd7C6FB7mqGaoKAmT, 15); 
 sq_AddSetStatePacketActiveObject(ZbjiQddQrSmTLEIElssi, STATE_ATTACK, nZcd7C6FB7mqGaoKAmT, STATE_PRIORITY_USER);
 ZbjiQddQrSmTLEIElssi.flushSetStatePacket();
 }
 return;
 }
 if(ZbjiQddQrSmTLEIElssi.getSendState() > STATE_STAND)return;
 if((WdlxwJi181Zy2vOk3XFh1hGo.getVar("atkTime").get_timer_vector(0)).isOnEvent(OHD9Fei5GQ3l00hYC) != true)return;
 RemoveAllAni(WdlxwJi181Zy2vOk3XFh1hGo); 
 nlyGiT0x3igSPFIS0T7smCR = sq_GetCNRDObjectToSQRCharacter(nlyGiT0x3igSPFIS0T7smCR); 
 local gDu_SbQdnHyGCQXsudSJXI = sq_FindTarget(ZbjiQddQrSmTLEIElssi, -50, 330, 50, 300); 
 if(gDu_SbQdnHyGCQXsudSJXI)
 {
 local n96_euDRpNvGaZGw6 = WdlxwJi181Zy2vOk3XFh1hGo.getVar("sqrChrSkill").get_timer_vector(2);
 if(n96_euDRpNvGaZGw6 && n96_euDRpNvGaZGw6.isOnEvent(OHD9Fei5GQ3l00hYC) == true) 
 {
 if(ZbjiQddQrSmTLEIElssi.isMyControlObject())
 {
 local nZcd7C6FB7mqGaoKAmT = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(nZcd7C6FB7mqGaoKAmT); 
 sq_IntVectorPush(nZcd7C6FB7mqGaoKAmT, 7); 
 sq_AddSetStatePacketActiveObject(ZbjiQddQrSmTLEIElssi, STATE_ATTACK, nZcd7C6FB7mqGaoKAmT, STATE_PRIORITY_USER);
 }
 
 if(nlyGiT0x3igSPFIS0T7smCR)
 {
 local JKTbg5DwVJgFQl = sq_GetLevelData(nlyGiT0x3igSPFIS0T7smCR, 139, 12, sq_GetSkillLevel(nlyGiT0x3igSPFIS0T7smCR, 139)); 
 if(n96_euDRpNvGaZGw6.getEventTerm() != JKTbg5DwVJgFQl)n96_euDRpNvGaZGw6.setEventTerm(JKTbg5DwVJgFQl); 
 }
 return;
 }
 }
 local pTck94j5xlNoX_dS = sq_FindTarget(ZbjiQddQrSmTLEIElssi, -50, 240, 50, 300); 
 if(pTck94j5xlNoX_dS)
 {
 local s14NbmBfFt6ttSUvjz = WdlxwJi181Zy2vOk3XFh1hGo.getVar("sqrChrSkill").get_timer_vector(1);
 if(s14NbmBfFt6ttSUvjz && s14NbmBfFt6ttSUvjz.isOnEvent(OHD9Fei5GQ3l00hYC) == true) 
 {
 if(ZbjiQddQrSmTLEIElssi.isMyControlObject())
 {
 local nZcd7C6FB7mqGaoKAmT = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(nZcd7C6FB7mqGaoKAmT); 
 sq_IntVectorPush(nZcd7C6FB7mqGaoKAmT, 3); 
 sq_AddSetStatePacketActiveObject(ZbjiQddQrSmTLEIElssi, STATE_ATTACK, nZcd7C6FB7mqGaoKAmT, STATE_PRIORITY_USER);
 }
 
 if(nlyGiT0x3igSPFIS0T7smCR)
 {
 local RngcT4m3dKaLyOoDzv353F = sq_GetLevelData(nlyGiT0x3igSPFIS0T7smCR, 139, 8, sq_GetSkillLevel(nlyGiT0x3igSPFIS0T7smCR, 139)); 
 if(s14NbmBfFt6ttSUvjz.getEventTerm() != RngcT4m3dKaLyOoDzv353F)s14NbmBfFt6ttSUvjz.setEventTerm(RngcT4m3dKaLyOoDzv353F); 
 }
 return;
 }
 }
 local SefxvQC2n9hw78CJt8l4d3 = sq_FindTarget(ZbjiQddQrSmTLEIElssi, -50, 110, 50, 300); 
 if(SefxvQC2n9hw78CJt8l4d3)
 {
 local Cg91hUc_DDAIpuQ2xlHDOKc = WdlxwJi181Zy2vOk3XFh1hGo.getVar("sqrChrSkill").get_timer_vector(0);
 if(Cg91hUc_DDAIpuQ2xlHDOKc && Cg91hUc_DDAIpuQ2xlHDOKc.isOnEvent(OHD9Fei5GQ3l00hYC) == true) 
 {
 if(ZbjiQddQrSmTLEIElssi.isMyControlObject())
 {
 local nZcd7C6FB7mqGaoKAmT = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(nZcd7C6FB7mqGaoKAmT); 
 sq_IntVectorPush(nZcd7C6FB7mqGaoKAmT, 1); 
 sq_AddSetStatePacketActiveObject(ZbjiQddQrSmTLEIElssi, STATE_ATTACK, nZcd7C6FB7mqGaoKAmT, STATE_PRIORITY_USER);
 }
 
 if(nlyGiT0x3igSPFIS0T7smCR)
 {
 local Rcf2qRjgkEmT5NE = sq_GetLevelData(nlyGiT0x3igSPFIS0T7smCR, 139, 4, sq_GetSkillLevel(nlyGiT0x3igSPFIS0T7smCR, 139)); 
 if(Cg91hUc_DDAIpuQ2xlHDOKc.getEventTerm() != Rcf2qRjgkEmT5NE)Cg91hUc_DDAIpuQ2xlHDOKc.setEventTerm(Rcf2qRjgkEmT5NE); 
 }
 return;
 }
 }
 break;
 case STATE_ATTACK:
 local hq3LMfKMU2q2i2_FxU = ZbjiQddQrSmTLEIElssi.getAttackIndex(); 
 switch(hq3LMfKMU2q2i2_FxU)
 {
 case 10: 
 case 15: 
 case 12: 
 if((WdlxwJi181Zy2vOk3XFh1hGo.getVar().get_timer_vector(0)).isOnEvent(OHD9Fei5GQ3l00hYC) == true)
 ZbjiQddQrSmTLEIElssi.resetHitObjectList(); 
 break;
 case 11: 
 if(sq_GetAnimationFrameIndex(sq_GetCurrentAnimation(ZbjiQddQrSmTLEIElssi)) >= 10)
 if(WdlxwJi181Zy2vOk3XFh1hGo.getVar("isAtk").getBool(1) == true) 
 {
 local NlAnr6FeB7wLR7Cd8jtgqYgd = WdlxwJi181Zy2vOk3XFh1hGo.getVar().get_timer_vector(0); 
 if(NlAnr6FeB7wLR7Cd8jtgqYgd)
 if(NlAnr6FeB7wLR7Cd8jtgqYgd.isOnEvent(OHD9Fei5GQ3l00hYC) == true)
 {
 local nf6hEFqh1U5 = WdlxwJi181Zy2vOk3XFh1hGo.getVar("atkobj").get_obj_vector_size(); 
 local IKDeqXLcqnVfULfyoS = WdlxwJi181Zy2vOk3XFh1hGo.getVar("atkobj"); 
 for(local rfjSPUGsa0zEkG = 0; rfjSPUGsa0zEkG < nf6hEFqh1U5; rfjSPUGsa0zEkG++)
 {
 local Wmzw_SvKNClPPShC6ug0qe = IKDeqXLcqnVfULfyoS.get_obj_vector(rfjSPUGsa0zEkG); 
 if(!Wmzw_SvKNClPPShC6ug0qe)continue;
 local evfmbcOBxnK = sq_GetCNRDObjectToActiveObject(Wmzw_SvKNClPPShC6ug0qe); 
 if(evfmbcOBxnK && !evfmbcOBxnK.isDead()) 
 if(ZbjiQddQrSmTLEIElssi.isMyControlObject()) 
 sq_SendHitObjectPacket(ZbjiQddQrSmTLEIElssi, evfmbcOBxnK, 0, 0, sq_GetObjectHeight(evfmbcOBxnK) / 2); 
 }
 }
 }
 break;
 }
 break;
 }
} ;

function onSourceKeyFrameFlag_appendage_mage_summonramos(hhSCvAbaYBUxeP80D, p8pDoQ0MevC)
{
 if(!hhSCvAbaYBUxeP80D) return;
 local n5cIvFNQelBO = hhSCvAbaYBUxeP80D.getParent();
 if(!n5cIvFNQelBO)
 {
 hhSCvAbaYBUxeP80D.setValid(false);
 return;
 }
 local YYAX77xjoL = sq_GetCNRDObjectToSQRCharacter(hhSCvAbaYBUxeP80D.getVar("sqrChr").get_obj_vector(0)); 
 if(!YYAX77xjoL)return true;
 switch(p8pDoQ0MevC)
 {
 case 101: 
 if(YYAX77xjoL.sq_IsMyControlObject())
 {
 sq_SetMyShake(n5cIvFNQelBO, 3, 150);
 sq_flashScreen(n5cIvFNQelBO, 0, 0, 1000, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 sq_flashScreen(n5cIvFNQelBO, 0, 50, 0, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_LINEARDODGE, ENUM_DRAWLAYER_BOTTOM);
 }
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(n5cIvFNQelBO), sq_GetBonusRateWithPassive(YYAX77xjoL, 139, 139, 1, 1.0)); 
 break;
 case 102: 
 if(n5cIvFNQelBO.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(139); 
 sq_BinaryWriteDword(3); 
 sq_BinaryWriteDword(sq_GetBonusRateWithPassive(YYAX77xjoL, 139, 139, 9, 1.0)); 
 sq_BinaryWriteDword(sq_GetBonusRateWithPassive(YYAX77xjoL, 139, 139, 11, 1.0)); 
 sq_BinaryWriteDword(sq_GetLevelData(YYAX77xjoL, 139, 10, sq_GetSkillLevel(YYAX77xjoL, 139))); 
 sq_SendCreatePassiveObjectPacket(n5cIvFNQelBO, 24372, 0, 145, 0, 40, n5cIvFNQelBO.getDirection()); 
 }
 break;
 case 103: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(n5cIvFNQelBO), sq_GetBonusRateWithPassive(YYAX77xjoL, 139, 139, 2, 1.0)); 
 break;
 case 104: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(n5cIvFNQelBO), sq_GetBonusRateWithPassive(YYAX77xjoL, 139, 139, 3, 1.0)); 
 break;
 case 105: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(n5cIvFNQelBO), sq_GetBonusRateWithPassive(YYAX77xjoL, 139, 139, 5, 1.0)); 
 break;
 case 106: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(n5cIvFNQelBO), sq_GetBonusRateWithPassive(YYAX77xjoL, 139, 139, 6, 1.0)); 
 break;
 case 107: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(n5cIvFNQelBO), sq_GetBonusRateWithPassive(YYAX77xjoL, 139, 139, 7, 1.0)); 
 break;
 case 108: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(n5cIvFNQelBO), sq_GetBonusRateWithPassive(YYAX77xjoL, 139, 139, 13, 1.0)); 
 
 hhSCvAbaYBUxeP80D.getVar().clear_timer_vector();
 hhSCvAbaYBUxeP80D.getVar().push_timer_vector();
 local ov6qXbb1hx = hhSCvAbaYBUxeP80D.getVar().get_timer_vector(0);
 ov6qXbb1hx.setParameter(sq_GetLevelData(YYAX77xjoL, 139, 14, sq_GetSkillLevel(YYAX77xjoL, 139)), -1); 
 ov6qXbb1hx.resetInstant(0);
 sq_CreateDrawOnlyObject(n5cIvFNQelBO, "monster/character/mage/ramos/animation/gather/gathereffect_03.ani", ENUM_DRAWLAYER_NORMAL, true);
 break;
 case 109: 
 sq_CreateDrawOnlyObject(n5cIvFNQelBO, "monster/character/mage/ramos/animation/disappear/disappearbottom_03.ani", ENUM_DRAWLAYER_BOTTOM, true);
 break;
 case 110: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(n5cIvFNQelBO), sq_GetBonusRateWithPassive(YYAX77xjoL, 139, 139, 16, 1.0)); 
 
 hhSCvAbaYBUxeP80D.getVar().clear_timer_vector();
 hhSCvAbaYBUxeP80D.getVar().push_timer_vector();
 local ov6qXbb1hx = hhSCvAbaYBUxeP80D.getVar().get_timer_vector(0);
 ov6qXbb1hx.setParameter(sq_GetLevelData(YYAX77xjoL, 139, 17, sq_GetSkillLevel(YYAX77xjoL, 139)), -1);
 ov6qXbb1hx.resetInstant(0);
 sq_CreateDrawOnlyObject(n5cIvFNQelBO, "monster/character/mage/ramos/animation/disappear/disappear_front_02.ani", ENUM_DRAWLAYER_NORMAL, true);
 sq_AddDrawOnlyAniFromParent(n5cIvFNQelBO, "monster/character/mage/ramos/animation/disappear/disappear_back_32.ani", 0, -1, 0);
 break;
 case 111: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(n5cIvFNQelBO), sq_GetBonusRateWithPassive(YYAX77xjoL, 126, 126, 0, 1.0)); 
 local vAqezb_UFUYCVpv6 = sq_CreateDrawOnlyObject(n5cIvFNQelBO, "monster/character/mage/ramos/animation/meal/3background_30.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 local GhVSktd9Km = sq_CreateDrawOnlyObject(n5cIvFNQelBO, "monster/character/mage/ramos/animation/meal/3front_12.ani", ENUM_DRAWLAYER_COVER, true); 
 RemoveAllAni(hhSCvAbaYBUxeP80D); 
 hhSCvAbaYBUxeP80D.getVar("aniobj").push_obj_vector(vAqezb_UFUYCVpv6); 
 hhSCvAbaYBUxeP80D.getVar("aniobj").push_obj_vector(GhVSktd9Km); 
 hhSCvAbaYBUxeP80D.getVar("atkobj").clear_obj_vector(); 
 hhSCvAbaYBUxeP80D.getVar("isAtk").setBool(0, false); 
 hhSCvAbaYBUxeP80D.getVar("isAtk").setBool(1, false); 
 break;
 case 112: 
 sq_CreateDrawOnlyObject(n5cIvFNQelBO, "monster/character/mage/ramos/animation/meal/2down_03.ani", ENUM_DRAWLAYER_NORMAL, true);
 break;
 case 113: 
 sq_CreateDrawOnlyObject(n5cIvFNQelBO, "monster/character/mage/ramos/animation/meal/4start_41.ani", ENUM_DRAWLAYER_COVER, true); 
 sq_CreateDrawOnlyObject(n5cIvFNQelBO, "monster/character/mage/ramos/animation/meal/4start_backgound_00.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(n5cIvFNQelBO), sq_GetBonusRateWithPassive(YYAX77xjoL, 126, 126, 3, 1.0)); 
 
 hhSCvAbaYBUxeP80D.getVar().clear_timer_vector();
 hhSCvAbaYBUxeP80D.getVar().push_timer_vector();
 local ov6qXbb1hx = hhSCvAbaYBUxeP80D.getVar().get_timer_vector(0);
 ov6qXbb1hx.setParameter(sq_GetLevelData(YYAX77xjoL, 126, 4, sq_GetSkillLevel(YYAX77xjoL, 126)), -1); 
 ov6qXbb1hx.resetInstant(0);
 break;
 case 114: 
 RemoveAllAni(hhSCvAbaYBUxeP80D); 
 break;
 case 115: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(n5cIvFNQelBO), sq_GetBonusRateWithPassive(YYAX77xjoL, 126, 126, 5, 1.0)); 
 sq_CreateDrawOnlyObject(n5cIvFNQelBO, "monster/character/mage/ramos/animation/meal/4end_07.ani", ENUM_DRAWLAYER_COVER, true); 
 sq_CreateDrawOnlyObject(n5cIvFNQelBO, "monster/character/mage/ramos/animation/meal/4end_bottom_69.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 sq_CreateDrawOnlyObject(n5cIvFNQelBO, "monster/character/mage/ramos/animation/meal/4end_backgound_00.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 RemoveAllAni(hhSCvAbaYBUxeP80D); 
 break;
 case 116: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(n5cIvFNQelBO), sq_GetBonusRateWithPassive(YYAX77xjoL, 126, 126, 1, 1.0)); 
 
 hhSCvAbaYBUxeP80D.getVar().clear_timer_vector();
 hhSCvAbaYBUxeP80D.getVar().push_timer_vector();
 local ov6qXbb1hx = hhSCvAbaYBUxeP80D.getVar().get_timer_vector(0);
 ov6qXbb1hx.setParameter(sq_GetLevelData(YYAX77xjoL, 126, 2, sq_GetSkillLevel(YYAX77xjoL, 126)), -1); 
 ov6qXbb1hx.resetInstant(0);
 hhSCvAbaYBUxeP80D.getVar("isAtk").setBool(1, true); 
 break;
 case 117: 
 if(n5cIvFNQelBO.isMyControlObject())
 {
 local GUyjP5qI5aWocFg7FpMNr = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(GUyjP5qI5aWocFg7FpMNr); 
 if(hhSCvAbaYBUxeP80D.getVar("isAtk").getBool(0) == true) 
 sq_IntVectorPush(GUyjP5qI5aWocFg7FpMNr, 12); 
 else 
 sq_IntVectorPush(GUyjP5qI5aWocFg7FpMNr, 13); 
 sq_AddSetStatePacketActiveObject(n5cIvFNQelBO, STATE_ATTACK, GUyjP5qI5aWocFg7FpMNr, STATE_PRIORITY_USER);
 n5cIvFNQelBO.flushSetStatePacket();
 }
 break;
 case 118: 
 case 119: 
 if(n5cIvFNQelBO.isMyControlObject())
 {
 local GUyjP5qI5aWocFg7FpMNr = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(GUyjP5qI5aWocFg7FpMNr); 
 switch(p8pDoQ0MevC)
 {
 case 118: sq_IntVectorPush(GUyjP5qI5aWocFg7FpMNr, 2); break;
 case 119: sq_IntVectorPush(GUyjP5qI5aWocFg7FpMNr, 4); break;
 }
 sq_AddSetStatePacketActiveObject(n5cIvFNQelBO, STATE_ATTACK, GUyjP5qI5aWocFg7FpMNr, STATE_PRIORITY_USER);
 }
 break;
 }
 return true;
} ;
 
function onAttackParent_appendage_mage_summonramos(PNKQACiDYJS, RheieBFLXWmhOrml, sWF2VRQ2PyI7gNVJO, CSLMDEut4hk, WsHoktMfRFEtzI5AvTRQ_6Y)
{
 if(!PNKQACiDYJS)return;
 local UyJwDImwWKPsp5bOKax7 = PNKQACiDYJS.getParent();
 if(!UyJwDImwWKPsp5bOKax7)
 {
 PNKQACiDYJS.setValid(false);
 return;
 }
 if(!sWF2VRQ2PyI7gNVJO || !sWF2VRQ2PyI7gNVJO.isObjectType(OBJECTTYPE_ACTIVE) || WsHoktMfRFEtzI5AvTRQ_6Y) return; 
 local Ic4vvPjDLZkU = UyJwDImwWKPsp5bOKax7.getAttackIndex(); 
 switch(Ic4vvPjDLZkU)
 {
 case 10: 
 local AwhGEVtkRRB = sq_CreateAnimation("", "monster/character/mage/ramos/animation/gather/gatherhit_03.ani"); 
 local bj7VPYEnQMSSYuN8hANoY = sq_CreatePooledObject(AwhGEVtkRRB, true); 
 sq_SetCurrentDirection(bj7VPYEnQMSSYuN8hANoY, UyJwDImwWKPsp5bOKax7.getDirection()); 
 bj7VPYEnQMSSYuN8hANoY.setCurrentPos(sWF2VRQ2PyI7gNVJO.getXPos(), sWF2VRQ2PyI7gNVJO.getYPos() + 1, sWF2VRQ2PyI7gNVJO.getZPos() + sq_GetCenterZPos(CSLMDEut4hk)); 
 bj7VPYEnQMSSYuN8hANoY = sq_SetEnumDrawLayer(bj7VPYEnQMSSYuN8hANoY, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(UyJwDImwWKPsp5bOKax7, bj7VPYEnQMSSYuN8hANoY, OBJECTTYPE_DRAWONLY, false); 
 break;
 case 11: 
 if(PNKQACiDYJS.getVar("isAtk").getBool(0) == false) 
 PNKQACiDYJS.getVar("isAtk").setBool(0, true);
 if(PNKQACiDYJS.getVar("isAtk").getBool(1) == false
 && isSameObject(UyJwDImwWKPsp5bOKax7, RheieBFLXWmhOrml)) 
 {
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(sWF2VRQ2PyI7gNVJO, "character/mage/summonramos/ap_summonramos_attackeff.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(sWF2VRQ2PyI7gNVJO, "character/mage/summonramos/ap_summonramos_attackeff.nut");
 
 CNSquirrelAppendage.sq_AppendAppendage(sWF2VRQ2PyI7gNVJO, UyJwDImwWKPsp5bOKax7, -1, true, "character/mage/summonramos/ap_summonramos_attackeff.nut", true);
 PNKQACiDYJS.getVar("atkobj").push_obj_vector(sWF2VRQ2PyI7gNVJO); 
 }
 break;
 }
} ;

function onEnd_appendage_mage_summonramos(nHZGGNKQ_llP0pn2srM7)
{
 if(!nHZGGNKQ_llP0pn2srM7) return;
 local EM0VEIkaQMIrsYv4 = nHZGGNKQ_llP0pn2srM7.getParent(); 
 if(!EM0VEIkaQMIrsYv4)
 {
 nHZGGNKQ_llP0pn2srM7.setValid(false);
 return;
 }
 EM0VEIkaQMIrsYv4.sendDestroyPacket(true); 
} ;

 
function setStartInfo_appendage_mage_summonramos(nHZGGNKQ_llP0pn2srM7, EM0VEIkaQMIrsYv4)
{
 EM0VEIkaQMIrsYv4.getVar("sqrChrSkill").clear_timer_vector(); 
 local BDwiiOrOKxNa9VwUuCJLK = EM0VEIkaQMIrsYv4.getVar("sqrChrSkill"); 
 
 local ghyhxDvYT2Nm = sq_GetSkillLevel(nHZGGNKQ_llP0pn2srM7, 139); 
 
 BDwiiOrOKxNa9VwUuCJLK.push_timer_vector();
 local aV9uuFtDex_j3c = BDwiiOrOKxNa9VwUuCJLK.get_timer_vector(0);
 aV9uuFtDex_j3c.setParameter(sq_GetLevelData(nHZGGNKQ_llP0pn2srM7, 139, 4, ghyhxDvYT2Nm), -1); 
 aV9uuFtDex_j3c.resetInstant(0); 
 aV9uuFtDex_j3c.setEventOnStart(true); 
 
 BDwiiOrOKxNa9VwUuCJLK.push_timer_vector();
 local tSUrCScD1LtlwwKVfQ = BDwiiOrOKxNa9VwUuCJLK.get_timer_vector(1);
 tSUrCScD1LtlwwKVfQ.setParameter(sq_GetLevelData(nHZGGNKQ_llP0pn2srM7, 139, 8, ghyhxDvYT2Nm), -1); 
 tSUrCScD1LtlwwKVfQ.resetInstant(0); 
 tSUrCScD1LtlwwKVfQ.setEventOnStart(true); 
 
 BDwiiOrOKxNa9VwUuCJLK.push_timer_vector();
 local _A6Tm5Tj5Vu_juMQXdA = BDwiiOrOKxNa9VwUuCJLK.get_timer_vector(2);
 _A6Tm5Tj5Vu_juMQXdA.setParameter(sq_GetLevelData(nHZGGNKQ_llP0pn2srM7, 139, 12, ghyhxDvYT2Nm), -1); 
 _A6Tm5Tj5Vu_juMQXdA.resetInstant(0); 
 _A6Tm5Tj5Vu_juMQXdA.setEventOnStart(true); 
 
 BDwiiOrOKxNa9VwUuCJLK.push_timer_vector();
 local WOq7h2s2QsnRJhvGN66 = BDwiiOrOKxNa9VwUuCJLK.get_timer_vector(3);
 WOq7h2s2QsnRJhvGN66.setParameter(sq_GetLevelData(nHZGGNKQ_llP0pn2srM7, 139, 15, ghyhxDvYT2Nm), -1); 
 WOq7h2s2QsnRJhvGN66.resetInstant(0); 
 WOq7h2s2QsnRJhvGN66.setEventOnStart(true); 
 
 EM0VEIkaQMIrsYv4.getVar("sqrChr").clear_obj_vector(); 
 EM0VEIkaQMIrsYv4.getVar("sqrChr").push_obj_vector(nHZGGNKQ_llP0pn2srM7); 
 
 EM0VEIkaQMIrsYv4.getVar("atkTime").clear_timer_vector();
 EM0VEIkaQMIrsYv4.getVar("atkTime").push_timer_vector();
 local gahJDZGwrWV = EM0VEIkaQMIrsYv4.getVar("atkTime").get_timer_vector(0);
 gahJDZGwrWV.setParameter(1200, -1);
 gahJDZGwrWV.resetInstant(0);
 
 EM0VEIkaQMIrsYv4.getVar("endTime").clear_vector();
 EM0VEIkaQMIrsYv4.getVar("endTime").push_vector(sq_GetLevelData(nHZGGNKQ_llP0pn2srM7, 139, 0, ghyhxDvYT2Nm));
 EM0VEIkaQMIrsYv4.getVar("isStartAtk").setBool(0, true); 
} ;


