
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_atmage_judekatheeternal(B74PVUwp1h)
{
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 if(!B74PVUwp1h) return false; 
 local Wp5xWEER1lYn77EGo1qZc1yH = B74PVUwp1h.sq_IsUseSkill(248); 
 if(Wp5xWEER1lYn77EGo1qZc1yH) 
 {
 B74PVUwp1h.sq_IntVectClear();
 B74PVUwp1h.sq_IntVectPush(0); 
 B74PVUwp1h.sq_AddSetStatePacket(248, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atmage_judekatheeternal(B74PVUwp1h)
{
 if(!B74PVUwp1h) return false; 
return true; 
 local Wp5xWEER1lYn77EGo1qZc1yH = B74PVUwp1h.sq_GetState(); 
 if(Wp5xWEER1lYn77EGo1qZc1yH == STATE_STAND) 
 return true; 
 if(Wp5xWEER1lYn77EGo1qZc1yH == STATE_ATTACK) 
 {
 return B74PVUwp1h.sq_IsCommandEnable(248); 
 }
 return true; 
} ;

 
function onSetState_atmage_judekatheeternal(B74PVUwp1h, Wp5xWEER1lYn77EGo1qZc1yH, Pu4_oeBhaVMEmOM5, BmumNWaLZiLblx4u3Vd)
{
 if(!B74PVUwp1h) return; 
 B74PVUwp1h.sq_StopMove(); 
 local UAuP9GeRePaeGL5UmK = B74PVUwp1h.sq_GetVectorData(Pu4_oeBhaVMEmOM5, 0); 
 B74PVUwp1h.setSkillSubState(UAuP9GeRePaeGL5UmK); 
 switch(UAuP9GeRePaeGL5UmK)
 {
 case 0:
 B74PVUwp1h.sq_SetCurrentAnimation(107);
 break;
 case 1:
 B74PVUwp1h.sq_SetCurrentAnimation(108);
 break;
 }
 local OA8hC4ZLkCdvFEb1epnj = B74PVUwp1h.sq_GetDelaySum(); 
 B74PVUwp1h.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local cOU9NUPWhgIe = B74PVUwp1h.sq_GetDelaySum(); 
 B74PVUwp1h.getVar("speedRate").setFloat(0, OA8hC4ZLkCdvFEb1epnj.tofloat() / cOU9NUPWhgIe.tofloat()); 
 B74PVUwp1h.getVar("speedRate").setFloat(1, cOU9NUPWhgIe.tofloat() / OA8hC4ZLkCdvFEb1epnj.tofloat()); 
 switch(UAuP9GeRePaeGL5UmK)
 {
 case 0:
 CreateAniRate(B74PVUwp1h, "character/mage/effect/animation/atjudekatheeternal/cast/judekatheeternal_back.ani", ENUM_DRAWLAYER_NORMAL, B74PVUwp1h.getXPos(), B74PVUwp1h.getYPos()-1, B74PVUwp1h.getZPos(), false, B74PVUwp1h.getVar("speedRate").getFloat(0) * 100.0); 
 return;
 if(B74PVUwp1h.sq_IsMyControlObject())
 {
 local AHcssTiVDPKrb = sq_flashScreen(B74PVUwp1h, cOU9NUPWhgIe, 99999, 0, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 B74PVUwp1h.getVar("flashobj").clear_obj_vector(); 
 B74PVUwp1h.getVar("flashobj").push_obj_vector(AHcssTiVDPKrb); 
 local fKXf1kmu1lyBh9i2vT = B74PVUwp1h.getObjectManager(); 
 CreateAniRate(B74PVUwp1h, "character/mage/effect/animation/atoverfreezeextension/atoverfreezeextension_bgsnow.ani", ENUM_DRAWLAYER_COVER, fKXf1kmu1lyBh9i2vT.getFieldXPos((B74PVUwp1h.getDirection() == ENUM_DIRECTION_RIGHT) ? 0 : 800, ENUM_DRAWLAYER_NORMAL), B74PVUwp1h.getYPos(), fKXf1kmu1lyBh9i2vT.getFieldZPos(0, B74PVUwp1h.getYPos(), ENUM_DRAWLAYER_NORMAL), false, B74PVUwp1h.getVar("speedRate").getFloat(0) * 100.0); 
 }
 break;
 case 1:
 sq_myFlashScreen_qq506807329(B74PVUwp1h, 0, 120, 300, 102, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK, false); 
 sq_mySetShake_qq506807329(B74PVUwp1h, 7, 160, false); 
 CreateAniRate(B74PVUwp1h, "character/mage/effect/animation/atjudekatheeternal/start/judekatheeternal_starteffect_back.ani", ENUM_DRAWLAYER_NORMAL, B74PVUwp1h.getXPos(), B74PVUwp1h.getYPos() - 1, B74PVUwp1h.getZPos(), false, B74PVUwp1h.getVar("speedRate").getFloat(0) * 100.0); 
 CreateAniRate(B74PVUwp1h, "character/mage/effect/animation/atjudekatheeternal/start/judekatheeternal_starteffect_front.ani", ENUM_DRAWLAYER_NORMAL, B74PVUwp1h.getXPos(), B74PVUwp1h.getYPos(), B74PVUwp1h.getZPos(), false, B74PVUwp1h.getVar("speedRate").getFloat(0) * 100.0); 
 
 if(B74PVUwp1h.sq_IsMyControlObject())
 {
 B74PVUwp1h.sq_StartWrite();
 B74PVUwp1h.sq_WriteDword(248); 
 B74PVUwp1h.sq_WriteDword(1); 
 B74PVUwp1h.sq_WriteDword(B74PVUwp1h.sq_GetBonusRateWithPassive(248, 248, 0, 1.0)); 
 B74PVUwp1h.sq_WriteDword(B74PVUwp1h.sq_GetBonusRateWithPassive(248, 248, 1, 1.0)); 
 B74PVUwp1h.sq_WriteDword(B74PVUwp1h.sq_GetBonusRateWithPassive(248, 248, 3, 1.0)); 
 B74PVUwp1h.sq_WriteDword(B74PVUwp1h.sq_GetBonusRateWithPassive(248, 248, 2, 1.0)); 
 B74PVUwp1h.sq_SendCreatePassiveObjectPacket(24379, 0, 0, 0, 75);
 }
 break;
 }
} ;

function onKeyFrameFlag_atmage_judekatheeternal(wFIP1mA9lyqJj, ZEJlR93Xfq3u0L_E3MG4q)
{
 if(!wFIP1mA9lyqJj) return false;
 local JmYGXVlARzl = wFIP1mA9lyqJj.getSkillSubState(); 
 switch(JmYGXVlARzl)
 {
 case 0:
 switch(ZEJlR93Xfq3u0L_E3MG4q)
 {
 case 1:
 sq_myFlashScreen_qq506807329(wFIP1mA9lyqJj, 0, 80, 160, 51, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK, false); 
 break;
 case 2:
 sq_myFlashScreen_qq506807329(wFIP1mA9lyqJj, 160, 880, 320, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK, false); 
 break;
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_atmage_judekatheeternal(wFIP1mA9lyqJj)
{
 if(!wFIP1mA9lyqJj) return;
 if(!wFIP1mA9lyqJj.sq_IsMyControlObject()) return;
 local ZEJlR93Xfq3u0L_E3MG4q = wFIP1mA9lyqJj.getSkillSubState(); 
 switch(ZEJlR93Xfq3u0L_E3MG4q)
 {
 case 0:
 wFIP1mA9lyqJj.sq_IntVectClear();
 wFIP1mA9lyqJj.sq_IntVectPush(ZEJlR93Xfq3u0L_E3MG4q + 1); 
 wFIP1mA9lyqJj.sq_AddSetStatePacket(248, STATE_PRIORITY_USER, true); 
 break;
 case 1:
 wFIP1mA9lyqJj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

function onEndState_atmage_judekatheeternal(wFIP1mA9lyqJj, ZEJlR93Xfq3u0L_E3MG4q)
{
 if(!wFIP1mA9lyqJj) return;
 local JmYGXVlARzl = wFIP1mA9lyqJj.getSkillSubState(); 
 if(ZEJlR93Xfq3u0L_E3MG4q != 248
 && ZEJlR93Xfq3u0L_E3MG4q == STATE_STAND 
 && JmYGXVlARzl == 1) 
 {
 CreateAniRate(wFIP1mA9lyqJj, "character/mage/effect/animation/atjudekatheeternal/start/bowdisappear_arroweffect.ani", ENUM_DRAWLAYER_NORMAL, wFIP1mA9lyqJj.getXPos(), wFIP1mA9lyqJj.getYPos() - 1, wFIP1mA9lyqJj.getZPos(), false, wFIP1mA9lyqJj.getVar("speedRate").getFloat(0) * 100.0); 
 }
} ;


