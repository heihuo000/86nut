
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_mage_chasercluster(rBzERVpuv_c4)
{
 if(!rBzERVpuv_c4) return false; 
 
 local KrpKoM45CRSBujGMJsdn6m = rBzERVpuv_c4.getMyPassiveObjectCount(24372); 
 if(KrpKoM45CRSBujGMJsdn6m > 0)
 {
 local iA3NnInwH43kdPzOKb59p = false; 
 for(local PdcciUT9bAyjq6t0bhdk = 0; PdcciUT9bAyjq6t0bhdk < KrpKoM45CRSBujGMJsdn6m; PdcciUT9bAyjq6t0bhdk++)
 {
 local Xr_lufTc01jxj4Oz3hLbUbpw = rBzERVpuv_c4.getMyPassiveObject(24372, PdcciUT9bAyjq6t0bhdk); 
 if(!Xr_lufTc01jxj4Oz3hLbUbpw) continue; 
 local EfzK_UFLFG9c21p0TvPJBS1 = Xr_lufTc01jxj4Oz3hLbUbpw.getVar("skill").get_vector(0); 
 if(EfzK_UFLFG9c21p0TvPJBS1 != 242) continue; 
 local Ex0cCusXHbP0wY0sR = Xr_lufTc01jxj4Oz3hLbUbpw.getVar("state").get_vector(0); 
 if(Ex0cCusXHbP0wY0sR == 11)
 {
 
 local IinN0gmb11Wd_FsBovY = sq_GetGlobalIntVector();
 sq_IntVectorClear(IinN0gmb11Wd_FsBovY);
 Xr_lufTc01jxj4Oz3hLbUbpw.addSetStatePacket(12, IinN0gmb11Wd_FsBovY, STATE_PRIORITY_AUTO, false, "");
 if(iA3NnInwH43kdPzOKb59p == false) iA3NnInwH43kdPzOKb59p = true;
 }
 }
 if(iA3NnInwH43kdPzOKb59p == true)
 {
 
 rBzERVpuv_c4.sq_IntVectClear();
 rBzERVpuv_c4.sq_IntVectPush(1); 
 rBzERVpuv_c4.sq_AddSetStatePacket(242, STATE_PRIORITY_USER, true); 
 return true;
 }
 }
 local NvluIvopJ_cfep = rBzERVpuv_c4.sq_IsUseSkill(242); 
 if(NvluIvopJ_cfep) 
 {
 rBzERVpuv_c4.sq_IntVectClear();
 rBzERVpuv_c4.sq_IntVectPush(0); 
 rBzERVpuv_c4.sq_AddSetStatePacket(242, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_chasercluster(oE5EOHK5BJOfMbm)
{
 if(!oE5EOHK5BJOfMbm) return false; 
 local r8MwI9zFZCTfBic = oE5EOHK5BJOfMbm.sq_GetState(); 
 if(r8MwI9zFZCTfBic == STATE_STAND) 
 return true; 
 if(r8MwI9zFZCTfBic == STATE_ATTACK) 
 {
 return oE5EOHK5BJOfMbm.sq_IsCommandEnable(242); 
 }
 return true; 
} ;

 
function onSetState_mage_chasercluster(R6ogHnfBxZjID, NTdbFwfIOu, KVv1HzKIqmXxRwia0, baOFVk3e8tAJZg1L0ELVT)
{
 if(!R6ogHnfBxZjID) return; 
 R6ogHnfBxZjID.sq_StopMove(); 
 local R_El3qAdcLfVuVH2 = R6ogHnfBxZjID.sq_GetVectorData(KVv1HzKIqmXxRwia0, 0); 
 R6ogHnfBxZjID.setSkillSubState(R_El3qAdcLfVuVH2); 
 if(R_El3qAdcLfVuVH2 == 0)
 {
 if(!setCurrentAnimation_mage_avatar(R6ogHnfBxZjID, "CHASERCLUSTERBODYSTART_09.ani")) 
 R6ogHnfBxZjID.sq_SetCurrentAnimation(82); 
 R6ogHnfBxZjID.sq_SetCurrentAttackInfo(38); 
 }
 else if(R_El3qAdcLfVuVH2 == 1)
 {
 if(!setCurrentAnimation_mage_avatar(R6ogHnfBxZjID, "CHASERCLUSTERBODYEND_06.ani")) 
 R6ogHnfBxZjID.sq_SetCurrentAnimation(83); 
 }
 R6ogHnfBxZjID.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onKeyFrameFlag_mage_chasercluster(fiOEGOhVfUCI6tBfiN, jogoJHmKVCPUo6Su9gdumD9m)
{
 if(!fiOEGOhVfUCI6tBfiN) return false;
 if(!fiOEGOhVfUCI6tBfiN.sq_IsMyControlObject()) return true;
 local v91xnChSxBuL_ZFtLz1T_RQ = fiOEGOhVfUCI6tBfiN.getSkillSubState(); 
 if(v91xnChSxBuL_ZFtLz1T_RQ == 0)
 {
 if(jogoJHmKVCPUo6Su9gdumD9m == 1)
 {
 sq_SetMyShake(fiOEGOhVfUCI6tBfiN, 5, 100);
 local NFMVOjn9JjhYndf = sq_GetSkillLevel(fiOEGOhVfUCI6tBfiN, 242); 
 fiOEGOhVfUCI6tBfiN.sq_StartWrite();
 fiOEGOhVfUCI6tBfiN.sq_WriteDword(242); 
 fiOEGOhVfUCI6tBfiN.sq_WriteDword(fiOEGOhVfUCI6tBfiN.sq_GetBonusRateWithPassive(242, 242, 0, 1.0)); 
 fiOEGOhVfUCI6tBfiN.sq_WriteDword(sq_GetLevelData(fiOEGOhVfUCI6tBfiN, 242, 1, NFMVOjn9JjhYndf)); 
 fiOEGOhVfUCI6tBfiN.sq_WriteDword(sq_GetLevelData(fiOEGOhVfUCI6tBfiN, 242, 2, NFMVOjn9JjhYndf)); 
 fiOEGOhVfUCI6tBfiN.sq_SendCreatePassiveObjectPacket(24372, 0, 232, 0, 50);
 }
 else if(jogoJHmKVCPUo6Su9gdumD9m == 2)
 {
 sq_flashScreen(fiOEGOhVfUCI6tBfiN, 160, 0, 80, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK);
 }
 }
 else if(v91xnChSxBuL_ZFtLz1T_RQ == 1)
 {
 if(jogoJHmKVCPUo6Su9gdumD9m == 1)
 sq_flashScreen(fiOEGOhVfUCI6tBfiN, 0, 80, 160, 127, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER);
 }
 return true;
} ;

 
function onEndCurrentAni_mage_chasercluster(Nz7JFZkCizhIjjV6ehwkt6L)
{
 if(!Nz7JFZkCizhIjjV6ehwkt6L) return;
 if(Nz7JFZkCizhIjjV6ehwkt6L.sq_IsMyControlObject())
 Nz7JFZkCizhIjjV6ehwkt6L.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

