
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_mage_avatar") 
 appendage.sq_AddFunctionName("onStartMap", "onStartMap_appendage_mage_avatar") 
 appendage.sq_AddFunctionName("proc", "proc_appendage_mage_avatar") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_mage_avatar") 
}



function onStart_appendage_mage_avatar(PQTqYWyoPjv4ektK)
{
 if(!PQTqYWyoPjv4ektK) return;
 local vQHyclEdSW = PQTqYWyoPjv4ektK.getSource(); 
 if(!vQHyclEdSW)
 {
 PQTqYWyoPjv4ektK.setValid(false);
 return;
 }
 vQHyclEdSW.sq_PlaySound("AVATAR_AURA_LOOP", 9001); 
 local a1CxAVeoauXhYfVpTwmp7_2k = PQTqYWyoPjv4ektK.sq_GetOcularSpectrum("ocularSpectrum"); 
 if(!a1CxAVeoauXhYfVpTwmp7_2k) 
 {
 a1CxAVeoauXhYfVpTwmp7_2k = PQTqYWyoPjv4ektK.sq_AddOcularSpectrum("ocularSpectrum", vQHyclEdSW, vQHyclEdSW, 100); 
 sq_SetParameterOcularSpectrum(a1CxAVeoauXhYfVpTwmp7_2k, 500, 50, true, sq_RGBA(255, 244, 77, 150), sq_RGBA(255, 244, 77, 0), 2, 2, 2); 
 }
 PQTqYWyoPjv4ektK.getVar("skill").setBool(0, false); 
 
 creationAuraEffect_appendage_mage_avatar(PQTqYWyoPjv4ektK, vQHyclEdSW); 
} ;

function onStartMap_appendage_mage_avatar(zS3gTSiiEr04vRtWVLFBqe)
{
 if(!zS3gTSiiEr04vRtWVLFBqe) return;
 local pYvvg5V8V8 = zS3gTSiiEr04vRtWVLFBqe.getParent(); 
 if(!pYvvg5V8V8) 
 {
 zS3gTSiiEr04vRtWVLFBqe.setValid(false); 
 return;
 }
 creationAuraEffect_appendage_mage_avatar(zS3gTSiiEr04vRtWVLFBqe, pYvvg5V8V8); 
} ;

function proc_appendage_mage_avatar(rBzERVpuv_c4)
{
 if(!rBzERVpuv_c4) return;
 local KrpKoM45CRSBujGMJsdn6m = sq_GetCNRDObjectToSQRCharacter(rBzERVpuv_c4.getParent()); 
 if(!KrpKoM45CRSBujGMJsdn6m)
 { 
 rBzERVpuv_c4.setValid(false); 
 return;
 }
 KrpKoM45CRSBujGMJsdn6m.setSkillCommandEnable(83, false); 
 
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(KrpKoM45CRSBujGMJsdn6m, "character/mage/avatar/ap_avatar_icon.nut"))
 {
 local iA3NnInwH43kdPzOKb59p = KrpKoM45CRSBujGMJsdn6m.getState(); 
 switch(iA3NnInwH43kdPzOKb59p)
 {
 case STATE_STAND:
 case STATE_ATTACK:
 case STATE_DASH:
 if(KrpKoM45CRSBujGMJsdn6m.sq_IsMyControlObject())
 {
 
 KrpKoM45CRSBujGMJsdn6m.sq_IntVectClear();
 KrpKoM45CRSBujGMJsdn6m.sq_IntVectPush(0);
 KrpKoM45CRSBujGMJsdn6m.sq_AddSetStatePacket(246, STATE_PRIORITY_USER, true); 
 return;
 }
 break;
 }
 }
 if(KrpKoM45CRSBujGMJsdn6m.getZPos() > 0)
 {
 if(rBzERVpuv_c4.getVar("aura").getBool(0) == false) 
 {
 local PdcciUT9bAyjq6t0bhdk = rBzERVpuv_c4.getVar("aniobj").get_obj_vector(0); 
 local Xr_lufTc01jxj4Oz3hLbUbpw = rBzERVpuv_c4.getVar("aniobj").get_obj_vector(1); 
 
 sq_moveWithParent(PdcciUT9bAyjq6t0bhdk, PdcciUT9bAyjq6t0bhdk);
 sq_moveWithParent(Xr_lufTc01jxj4Oz3hLbUbpw, Xr_lufTc01jxj4Oz3hLbUbpw);
 
 PdcciUT9bAyjq6t0bhdk.setCurrentAnimation(sq_CreateAnimation("", "character/mage/effect/animation/avatar/avatarauraendtop_eff_01.ani"));
 Xr_lufTc01jxj4Oz3hLbUbpw.setCurrentAnimation(sq_CreateAnimation("", "character/mage/effect/animation/avatar/avatarauraendbot_eff_01.ani"));
 rBzERVpuv_c4.getVar("aura").setBool(0, true); 
 }
 else 
 {
 local PdcciUT9bAyjq6t0bhdk = rBzERVpuv_c4.getVar("aniobj").get_obj_vector(0); 
 local Xr_lufTc01jxj4Oz3hLbUbpw = rBzERVpuv_c4.getVar("aniobj").get_obj_vector(1); 
 local IinN0gmb11Wd_FsBovY = KrpKoM45CRSBujGMJsdn6m.getXPos(); 
 local NvluIvopJ_cfep = KrpKoM45CRSBujGMJsdn6m.getYPos(); 
 if(!sq_IsEnd(PdcciUT9bAyjq6t0bhdk.getCurrentAnimation())) 
 PdcciUT9bAyjq6t0bhdk.setCurrentPos(IinN0gmb11Wd_FsBovY, NvluIvopJ_cfep, 0); 
 if(!sq_IsEnd(Xr_lufTc01jxj4Oz3hLbUbpw.getCurrentAnimation())) 
 Xr_lufTc01jxj4Oz3hLbUbpw.setCurrentPos(IinN0gmb11Wd_FsBovY, NvluIvopJ_cfep - 1, 0); 
 }
 return; 
 }
 else 
 {
 if(rBzERVpuv_c4.getVar("aura").getBool(0) == true) 
 {
 local PdcciUT9bAyjq6t0bhdk = rBzERVpuv_c4.getVar("aniobj").get_obj_vector(0); 
 local Xr_lufTc01jxj4Oz3hLbUbpw = rBzERVpuv_c4.getVar("aniobj").get_obj_vector(1); 
 local IinN0gmb11Wd_FsBovY = KrpKoM45CRSBujGMJsdn6m.getXPos(); 
 local NvluIvopJ_cfep = KrpKoM45CRSBujGMJsdn6m.getYPos(); 
 PdcciUT9bAyjq6t0bhdk.setCurrentPos(IinN0gmb11Wd_FsBovY, NvluIvopJ_cfep, 0); 
 Xr_lufTc01jxj4Oz3hLbUbpw.setCurrentPos(IinN0gmb11Wd_FsBovY, NvluIvopJ_cfep - 1, 0); 
 
 sq_moveWithParent(KrpKoM45CRSBujGMJsdn6m, PdcciUT9bAyjq6t0bhdk);
 sq_moveWithParent(KrpKoM45CRSBujGMJsdn6m, Xr_lufTc01jxj4Oz3hLbUbpw);
 
 PdcciUT9bAyjq6t0bhdk.setCurrentAnimation(sq_CreateAnimation("", "character/mage/effect/animation/avatar/avatarauralooptop_eff_01.ani"));
 Xr_lufTc01jxj4Oz3hLbUbpw.setCurrentAnimation(sq_CreateAnimation("", "character/mage/effect/animation/avatar/avatarauraloopbot_eff_01.ani"));
 rBzERVpuv_c4.getVar("aura").setBool(0, false); 
 }
 }
} ;

 
function onEnd_appendage_mage_avatar(fiOEGOhVfUCI6tBfiN)
{
 if(!fiOEGOhVfUCI6tBfiN)return;
 local jogoJHmKVCPUo6Su9gdumD9m = fiOEGOhVfUCI6tBfiN.getParent(); 
 if(!jogoJHmKVCPUo6Su9gdumD9m)
 { 
 fiOEGOhVfUCI6tBfiN.setValid(false); 
 return;
 }
 local v91xnChSxBuL_ZFtLz1T_RQ = fiOEGOhVfUCI6tBfiN.sq_GetOcularSpectrum("ocularSpectrum"); 
 if(v91xnChSxBuL_ZFtLz1T_RQ) 
 v91xnChSxBuL_ZFtLz1T_RQ.endCreateSpectrum(); 
 jogoJHmKVCPUo6Su9gdumD9m.stopSound(9001); 
 RemoveAllAni(fiOEGOhVfUCI6tBfiN); 
} ;

 
function creationAuraEffect_appendage_mage_avatar(Nz7JFZkCizhIjjV6ehwkt6L,yaSdGRXPcsNho6s)
{
 RemoveAllAni(Nz7JFZkCizhIjjV6ehwkt6L); 
 
 Nz7JFZkCizhIjjV6ehwkt6L.sq_DeleteEffectBack(); 
 Nz7JFZkCizhIjjV6ehwkt6L.sq_AddEffectBack("character/mage/effect/animation/avatar/avataraurabody_eff_00.ani"); 
 
 local spfpvWi3YFRgA9ILQPPz74 = sq_CreateDrawOnlyObject(yaSdGRXPcsNho6s, "character/mage/effect/animation/avatar/avatarauralooptop_eff_01.ani", ENUM_DRAWLAYER_NORMAL, false); 
 local OmUe5zbG63a = sq_CreateDrawOnlyObject(yaSdGRXPcsNho6s, "character/mage/effect/animation/avatar/avatarauraloopbot_eff_01.ani", ENUM_DRAWLAYER_NORMAL, false); 
 sq_setCurrentAxisPos(OmUe5zbG63a, 1, yaSdGRXPcsNho6s.getYPos() - 1); 
 sq_moveWithParent(yaSdGRXPcsNho6s, spfpvWi3YFRgA9ILQPPz74); 
 sq_moveWithParent(yaSdGRXPcsNho6s, OmUe5zbG63a); 
 Nz7JFZkCizhIjjV6ehwkt6L.getVar("aniobj").clear_obj_vector(); 
 local VPmZv2OI10cMs = Nz7JFZkCizhIjjV6ehwkt6L.getVar("aniobj"); 
 VPmZv2OI10cMs.push_obj_vector(spfpvWi3YFRgA9ILQPPz74); 
 VPmZv2OI10cMs.push_obj_vector(OmUe5zbG63a); 
 
 Nz7JFZkCizhIjjV6ehwkt6L.getVar("aura").setBool(0, false); 
} ;
