
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_priest_nuclearpunch(jsSCBvCHA9)
{
 if(!jsSCBvCHA9) return false; 
 if(jsSCBvCHA9.isCarryWeapon())return false; 
 local Z4kt61Bkbda3rkuc0 = jsSCBvCHA9.sq_IsUseSkill(242); 
 if(Z4kt61Bkbda3rkuc0) 
 {
 jsSCBvCHA9.sq_IntVectClear();
 jsSCBvCHA9.sq_IntVectPush(0); 
 jsSCBvCHA9.sq_AddSetStatePacket(242, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_nuclearpunch(yeF81QcR4FtqvaQKqr)
{
 if(!yeF81QcR4FtqvaQKqr) return false; 
 if(yeF81QcR4FtqvaQKqr.isCarryWeapon())return false; 
 local HZuxHYUR_xYzLgJ5Vww = yeF81QcR4FtqvaQKqr.sq_GetState(); 
 if(HZuxHYUR_xYzLgJ5Vww == STATE_STAND) 
 return true; 
 if(HZuxHYUR_xYzLgJ5Vww == STATE_ATTACK) 
 {
 return yeF81QcR4FtqvaQKqr.sq_IsCommandEnable(242); 
 }
 return true; 
} ;

 
function onSetState_priest_nuclearpunch(aLg77z2zcRjxT1VZg3RXx, jLWaJml6RaqYjEpcW, DjEi4rft7Au6i6uU, EvFRx1h_6a_EamZlwq)
{
 if(!aLg77z2zcRjxT1VZg3RXx) return; 
 aLg77z2zcRjxT1VZg3RXx.sq_StopMove(); 
 local C1GgBEkOJb2 = aLg77z2zcRjxT1VZg3RXx.sq_GetVectorData(DjEi4rft7Au6i6uU, 0); 
 aLg77z2zcRjxT1VZg3RXx.setSkillSubState(C1GgBEkOJb2); 
 switch(C1GgBEkOJb2)
 {
 case 0:
 aLg77z2zcRjxT1VZg3RXx.sq_SetCurrentAnimation(135);
 break;
 case 1:
 aLg77z2zcRjxT1VZg3RXx.sq_SetCurrentAnimation(136);
 aLg77z2zcRjxT1VZg3RXx.sq_SetCurrentAttackInfo(105);
 aLg77z2zcRjxT1VZg3RXx.sq_SetCurrentAttackBonusRate(aLg77z2zcRjxT1VZg3RXx.sq_GetBonusRateWithPassive(242, 242, 0, 1.0)); 
 aLg77z2zcRjxT1VZg3RXx.getVar().setBool(0, false); 
 break;
 case 2:
 aLg77z2zcRjxT1VZg3RXx.sq_SetCurrentAnimation(137);
 sq_SetMyShake(aLg77z2zcRjxT1VZg3RXx, 5, 200); 
 if(aLg77z2zcRjxT1VZg3RXx.sq_IsMyControlObject())
 sq_flashScreen(aLg77z2zcRjxT1VZg3RXx, 10, 60, 120, 104, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 case 3:
 aLg77z2zcRjxT1VZg3RXx.sq_SetCurrentAnimation(138);
 break;
 }
 aLg77z2zcRjxT1VZg3RXx.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onKeyFrameFlag_priest_nuclearpunch(tg2sijw7u5a6tRTUA, LuRImcDgq6uZ)
{
 if(!tg2sijw7u5a6tRTUA) return;
 local A7XGrzLXsh3k = tg2sijw7u5a6tRTUA.getSkillSubState(); 
 if(A7XGrzLXsh3k == 0)
 {
 if(LuRImcDgq6uZ == 1)
 {
 tg2sijw7u5a6tRTUA.sq_PlaySound("PR_NUCLEAR_PUNCH");
 sq_SetMyShake(tg2sijw7u5a6tRTUA, 1, 120); 
 if(tg2sijw7u5a6tRTUA.sq_IsMyControlObject())
 sq_flashScreen(tg2sijw7u5a6tRTUA, 50, 80, 10, 153, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 }
 return true;
} ;

function onAttack_priest_nuclearpunch(Xt4mdzSVWO, cUb0kZk2v9, M7_Go57ynWopJ9cCQjl, Fw9AskTyWBS8XyuNmnwUHsqj)
{
 if(!Xt4mdzSVWO) return;
 if(Fw9AskTyWBS8XyuNmnwUHsqj || !cUb0kZk2v9.isObjectType(OBJECTTYPE_ACTIVE))return;
 local zIKVMLE3rZD = Xt4mdzSVWO.getSkillSubState(); 
 switch(zIKVMLE3rZD)
 {
 case 1:
 if(Xt4mdzSVWO.getVar().getBool(0) == false) 
 {
 Xt4mdzSVWO.getVar().setBool(0, true);
 if(Xt4mdzSVWO.sq_IsMyControlObject())
 {
 Xt4mdzSVWO.sq_StartWrite();
 Xt4mdzSVWO.sq_WriteDword(242); 
 Xt4mdzSVWO.sq_WriteDword(Xt4mdzSVWO.sq_GetBonusRateWithPassive(242, 242, 1, 1.0)); 
 Xt4mdzSVWO.sq_SendCreatePassiveObjectPacket(24374, 0, 150, 0, 60);
 }
 }
 break;
 }
} ;

 
function onEndCurrentAni_priest_nuclearpunch(P56FjbsSVsOP8jdw1Ot)
{
 if(!P56FjbsSVsOP8jdw1Ot) return;
 if(!P56FjbsSVsOP8jdw1Ot.sq_IsMyControlObject())return;
 local AmgPteh4NWVxzPZ5bNucc = P56FjbsSVsOP8jdw1Ot.getSkillSubState(); 
 if(AmgPteh4NWVxzPZ5bNucc == 0)
 {
 P56FjbsSVsOP8jdw1Ot.sq_IntVectClear();
 P56FjbsSVsOP8jdw1Ot.sq_IntVectPush(AmgPteh4NWVxzPZ5bNucc + 1); 
 P56FjbsSVsOP8jdw1Ot.sq_AddSetStatePacket(242, STATE_PRIORITY_USER, true); 
 }
 else if(AmgPteh4NWVxzPZ5bNucc == 1)
 {
 P56FjbsSVsOP8jdw1Ot.sq_IntVectClear();
 if(P56FjbsSVsOP8jdw1Ot.getVar().getBool(0) == true) 
 P56FjbsSVsOP8jdw1Ot.sq_IntVectPush(2); 
 else 
 P56FjbsSVsOP8jdw1Ot.sq_IntVectPush(3); 
 P56FjbsSVsOP8jdw1Ot.sq_AddSetStatePacket(242, STATE_PRIORITY_USER, true); 
 }
 else
 P56FjbsSVsOP8jdw1Ot.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

