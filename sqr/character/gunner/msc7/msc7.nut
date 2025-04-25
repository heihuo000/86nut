
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_gunner_msc7(rMOFGzE7p4B7DWkv)
{
 if(!rMOFGzE7p4B7DWkv) return false; 
 local gHyelMuZbJE8a = rMOFGzE7p4B7DWkv.sq_IsUseSkill(232); 
 if(gHyelMuZbJE8a) 
 {
 rMOFGzE7p4B7DWkv.sq_IntVectClear();
 rMOFGzE7p4B7DWkv.sq_IntVectPush(0); 
 rMOFGzE7p4B7DWkv.sq_AddSetStatePacket(232, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function checkCommandEnable_gunner_msc7(rMOFGzE7p4B7DWkv)
{
 if(!rMOFGzE7p4B7DWkv) return false; 
 local gHyelMuZbJE8a = rMOFGzE7p4B7DWkv.sq_GetState(); 
 if(gHyelMuZbJE8a == STATE_STAND) 
 return true; 
 if(gHyelMuZbJE8a == STATE_ATTACK) 
 {
 return rMOFGzE7p4B7DWkv.sq_IsCommandEnable(232); 
 }
 return true; 
} ;

 
function onSetState_gunner_msc7(rMOFGzE7p4B7DWkv, gHyelMuZbJE8a, TGr7OoJXmgUrUKMYx, eoE42tE0kXuR0MM)
{
 if(!rMOFGzE7p4B7DWkv) return; 
 local zanzPtjfuLbyohCLdy = rMOFGzE7p4B7DWkv.sq_GetVectorData(TGr7OoJXmgUrUKMYx, 0); 
 rMOFGzE7p4B7DWkv.setSkillSubState(zanzPtjfuLbyohCLdy); 
 rMOFGzE7p4B7DWkv.sq_StopMove(); 
 switch(zanzPtjfuLbyohCLdy)
 {
 case 0:
 rMOFGzE7p4B7DWkv.sq_SetCurrentAnimation(103); 
 break;
 case 1:
 rMOFGzE7p4B7DWkv.sq_SetCurrentAnimation(104); 
 sq_SetMyShake(rMOFGzE7p4B7DWkv, 5, 150); 
 rMOFGzE7p4B7DWkv.getVar().clear_vector(); 
 rMOFGzE7p4B7DWkv.getVar().push_vector(rMOFGzE7p4B7DWkv.getXPos()); 
 break;
 }
 rMOFGzE7p4B7DWkv.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onKeyFrameFlag_gunner_msc7(nlCmXw8MK7Tkm5, LnURtZ_rAbk8SrLxEwlD8v)
{
 if(!nlCmXw8MK7Tkm5)return false;
 if(LnURtZ_rAbk8SrLxEwlD8v == 1 && nlCmXw8MK7Tkm5.sq_IsMyControlObject())
 {
 local c5nuCQ34XBsF3c72 = sq_GetSkillLevel(nlCmXw8MK7Tkm5, 232); 
 nlCmXw8MK7Tkm5.sq_StartWrite();
 nlCmXw8MK7Tkm5.sq_WriteDword(232); 
 nlCmXw8MK7Tkm5.sq_WriteDword(nlCmXw8MK7Tkm5.sq_GetBonusRateWithPassive(232, 232, 0, 1.0)); 
 nlCmXw8MK7Tkm5.sq_WriteDword(nlCmXw8MK7Tkm5.sq_GetBonusRateWithPassive(232, 232, 1, 1.0)); 
 nlCmXw8MK7Tkm5.sq_WriteDword(sq_GetLevelData(nlCmXw8MK7Tkm5, 232, 2, c5nuCQ34XBsF3c72)); 
 local myq1z3gSMT2u7aY = sq_GetLevelData(nlCmXw8MK7Tkm5, 232, 4, c5nuCQ34XBsF3c72); 
 nlCmXw8MK7Tkm5.sq_WriteDword(sq_getRandom(myq1z3gSMT2u7aY / 5, myq1z3gSMT2u7aY)); 
 nlCmXw8MK7Tkm5.sq_WriteDword(sq_GetLevelData(nlCmXw8MK7Tkm5, 232, 3, c5nuCQ34XBsF3c72)); 
 nlCmXw8MK7Tkm5.sq_SendCreatePassiveObjectPacket(24371, 0, 168, -1, 92); 
 }
 return true;
} ;

 
function onProc_gunner_msc7(oTaFZdqBSX8kXoGmz6H)
{
 if(!oTaFZdqBSX8kXoGmz6H) return;
 local JIGoHw2q6DI2Q2l = oTaFZdqBSX8kXoGmz6H.getSkillSubState(); 
 switch(JIGoHw2q6DI2Q2l)
 {
 case 1:
 if(oTaFZdqBSX8kXoGmz6H.getVar().size_vector() <= 0)return;
 local v9cd_jP09v9vlTu = oTaFZdqBSX8kXoGmz6H.sq_GetCurrentAni(); 
 local xyHzK1NIp_KN = sq_GetCurrentTime(v9cd_jP09v9vlTu); 
 local yLKJh8aEzdgMD = v9cd_jP09v9vlTu.getDelaySum(0, 0); 
 local j2bPlvmYar_b = sq_GetDistancePos(oTaFZdqBSX8kXoGmz6H.getVar().get_vector(0),
 oTaFZdqBSX8kXoGmz6H.getDirection(), 
 sq_GetAccel(0, -40, xyHzK1NIp_KN, yLKJh8aEzdgMD, true)); 
 if(oTaFZdqBSX8kXoGmz6H.isMovablePos(j2bPlvmYar_b, oTaFZdqBSX8kXoGmz6H.getYPos()) && xyHzK1NIp_KN<= yLKJh8aEzdgMD) 
 sq_setCurrentAxisPos(oTaFZdqBSX8kXoGmz6H, 0, j2bPlvmYar_b); 
 else
 oTaFZdqBSX8kXoGmz6H.getVar().clear_vector(); 
 break;
 }
} ;

 
function onEndCurrentAni_gunner_msc7(fpBFMyPFwAsS1_9QIBJxjC)
{
 if(!fpBFMyPFwAsS1_9QIBJxjC) return;
 if(!fpBFMyPFwAsS1_9QIBJxjC.sq_IsMyControlObject())return;
 local kDJyA4rLvdLG4nl6qE9 = fpBFMyPFwAsS1_9QIBJxjC.getSkillSubState(); 
 if(kDJyA4rLvdLG4nl6qE9 != 1)
 {
 fpBFMyPFwAsS1_9QIBJxjC.sq_IntVectClear();
 fpBFMyPFwAsS1_9QIBJxjC.sq_IntVectPush(kDJyA4rLvdLG4nl6qE9+1); 
 fpBFMyPFwAsS1_9QIBJxjC.sq_AddSetStatePacket(232, STATE_PRIORITY_USER, true); 
 }else
 fpBFMyPFwAsS1_9QIBJxjC.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


