
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 

 
function checkExecutableSkill_atmage_convergencecannon(dVYcNc9a7RzvMZcLIwj)
{
 
 
 
 
 
 
 
 
 
 
 
 
 if(!dVYcNc9a7RzvMZcLIwj) return false; 
 local WNNmJKXZ8yU4RY8wDvMPK27 = dVYcNc9a7RzvMZcLIwj.sq_IsUseSkill(244); 
 if(WNNmJKXZ8yU4RY8wDvMPK27) 
 {
 dVYcNc9a7RzvMZcLIwj.sq_IntVectClear();
 dVYcNc9a7RzvMZcLIwj.sq_IntVectPush(0); 
 dVYcNc9a7RzvMZcLIwj.sq_AddSetStatePacket(244, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atmage_convergencecannon(B74PVUwp1h)
{
 if(!B74PVUwp1h) return false; 
return true; 
 local Wp5xWEER1lYn77EGo1qZc1yH = B74PVUwp1h.sq_GetState(); 
 if(Wp5xWEER1lYn77EGo1qZc1yH == STATE_STAND) 
 return true; 
 if(Wp5xWEER1lYn77EGo1qZc1yH == STATE_ATTACK) 
 {
 return B74PVUwp1h.sq_IsCommandEnable(244); 
 }
 return true; 
} ;

 
function onSetState_atmage_convergencecannon(B74PVUwp1h, Wp5xWEER1lYn77EGo1qZc1yH, Pu4_oeBhaVMEmOM5, BmumNWaLZiLblx4u3Vd)
{
 if(!B74PVUwp1h) return; 
 B74PVUwp1h.sq_StopMove(); 
 local UAuP9GeRePaeGL5UmK = B74PVUwp1h.sq_GetVectorData(Pu4_oeBhaVMEmOM5, 0); 
 B74PVUwp1h.setSkillSubState(UAuP9GeRePaeGL5UmK); 
 switch(UAuP9GeRePaeGL5UmK)
 {
 case 0:
 B74PVUwp1h.getVar("move").clear_vector(); 
 B74PVUwp1h.sq_SetCurrentAnimation(98);
 break;
 case 1:
 B74PVUwp1h.sq_SetCurrentAnimation(99);
 if(B74PVUwp1h.sq_IsMyControlObject())
 {
 local OA8hC4ZLkCdvFEb1epnj = sq_GetSkillLevel(B74PVUwp1h, 244); 
 B74PVUwp1h.sq_StartWrite();
 B74PVUwp1h.sq_WriteDword(244); 
 B74PVUwp1h.sq_WriteDword(1); 
 B74PVUwp1h.sq_WriteDword(B74PVUwp1h.sq_GetBonusRateWithPassive(244, 244, 0, 1.0)); 
 B74PVUwp1h.sq_WriteDword(B74PVUwp1h.sq_GetLevelData(244, 1, OA8hC4ZLkCdvFEb1epnj)); 
 B74PVUwp1h.sq_WriteDword(B74PVUwp1h.sq_GetIntData(244, 2)); 
 B74PVUwp1h.sq_SendCreatePassiveObjectPacket(24379, 0, 130, -1, 0);
 }
 break;
 case 2:
 B74PVUwp1h.sq_SetCurrentAnimation(100);
 local cOU9NUPWhgIe = B74PVUwp1h.sq_GetVectorData(Pu4_oeBhaVMEmOM5, 1); 
 B74PVUwp1h.getVar("move").clear_vector(); 
 B74PVUwp1h.getVar("move").push_vector(B74PVUwp1h.getXPos()); 
 B74PVUwp1h.getVar("move").push_vector(cOU9NUPWhgIe); 
 break;
 }
 local AHcssTiVDPKrb = B74PVUwp1h.sq_GetDelaySum(); 
 B74PVUwp1h.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local fKXf1kmu1lyBh9i2vT = B74PVUwp1h.sq_GetDelaySum(); 
 B74PVUwp1h.getVar("speedRate").setFloat(0, AHcssTiVDPKrb.tofloat() / fKXf1kmu1lyBh9i2vT.tofloat()); 
 B74PVUwp1h.getVar("speedRate").setFloat(1, fKXf1kmu1lyBh9i2vT.tofloat() / AHcssTiVDPKrb.tofloat()); 
 switch(UAuP9GeRePaeGL5UmK)
 {
 case 1:
 sq_myFlashScreen_qq506807329(B74PVUwp1h, 0, 0, 360, 153, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM, false); 
 RemoveAllAni(B74PVUwp1h); 
 local TCPvKNX9rTMJVj = CreateAniRate(B74PVUwp1h, "character/mage/effect/animation/atconvergencecannon/create/createback_stone03b.ani", ENUM_DRAWLAYER_BOTTOM, B74PVUwp1h.getXPos(), B74PVUwp1h.getYPos(), B74PVUwp1h.getZPos(), false, B74PVUwp1h.getVar("speedRate").getFloat(0)*100.0); 
 sq_moveWithParent(B74PVUwp1h, TCPvKNX9rTMJVj); 
 B74PVUwp1h.getVar("aniobj").clear_obj_vector(); 
 B74PVUwp1h.getVar("aniobj").push_obj_vector(TCPvKNX9rTMJVj); 
 break;
 case 2:
 sq_mySetShake_qq506807329(B74PVUwp1h, 6, 180, false); 
 sq_myFlashScreen_qq506807329(B74PVUwp1h, 0, 60, 360, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM, false); 
 CreateAniRate(B74PVUwp1h, "character/mage/effect/animation/atconvergencecannon/shot/shotfront_circle.ani", ENUM_DRAWLAYER_NORMAL, B74PVUwp1h.getXPos(), B74PVUwp1h.getYPos(), B74PVUwp1h.getZPos(), false, B74PVUwp1h.getVar("speedRate").getFloat(0) * 100.0); 
 CreateAniRate(B74PVUwp1h, "character/mage/effect/animation/atconvergencecannon/shot/shotback_floor.ani", ENUM_DRAWLAYER_BOTTOM, B74PVUwp1h.getXPos(), B74PVUwp1h.getYPos(), B74PVUwp1h.getZPos(), false, B74PVUwp1h.getVar("speedRate").getFloat(0) * 100.0); 
 break;
 }
} ;

function onKeyFrameFlag_atmage_convergencecannon(kWix2gOqnzUJ6QKXC0j18e, YDc6k6IJbhxxKXHQvlDTp)
{
 if(!kWix2gOqnzUJ6QKXC0j18e) return false;
 local wr4nkP_IBP8HIPnou3 = kWix2gOqnzUJ6QKXC0j18e.getSkillSubState(); 
 switch(wr4nkP_IBP8HIPnou3)
 {
 case 0:
 switch(YDc6k6IJbhxxKXHQvlDTp)
 {
 case 1:
 sq_myFlashScreen_qq506807329(kWix2gOqnzUJ6QKXC0j18e, 0, 0, 240, 102, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM, false); 
 break;
 case 2:
 sq_myFlashScreen_qq506807329(kWix2gOqnzUJ6QKXC0j18e, 120, 0, 0, 102, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM, false); 
 break;
 case 3:
 sq_myFlashScreen_qq506807329(kWix2gOqnzUJ6QKXC0j18e, 0, 300, 0, 102, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM, false); 
 break;
 }
 break;
 case 1:
 switch(YDc6k6IJbhxxKXHQvlDTp)
 {
 case 1:
 sq_mySetShake_qq506807329(kWix2gOqnzUJ6QKXC0j18e, 2, 100,false); 
 sq_myFlashScreen_qq506807329(kWix2gOqnzUJ6QKXC0j18e, 360, 0, 0, 102, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM, false); 
 break;
 }
 break;
 case 2:
 break;
 }
 return true;
} ;

function onProc_atmage_convergencecannon(wFIP1mA9lyqJj)
{
 if(!wFIP1mA9lyqJj) return;
 local ZEJlR93Xfq3u0L_E3MG4q = wFIP1mA9lyqJj.getSkillSubState(); 
 switch(ZEJlR93Xfq3u0L_E3MG4q)
 {
 case 2:
 if(wFIP1mA9lyqJj.getVar("move").size_vector() <= 0)return;
 local JmYGXVlARzl = wFIP1mA9lyqJj.getCurrentAnimation(); 
 local PpBEN997hbYDnZ9Kee1 = sq_GetCurrentTime(JmYGXVlARzl); 
 local UAJuFJy7lRbWGfe = JmYGXVlARzl.getDelaySum(false); 
 local Pk1YC3OuCXy1DWnkl51C = wFIP1mA9lyqJj.getVar("move").get_vector(1); 
 local PJ8X1UD_4MwUzwSqd = sq_GetDistancePos(wFIP1mA9lyqJj.getVar("move").get_vector(0),
 wFIP1mA9lyqJj.getDirection(), 
 sq_GetUniformVelocity(0, Pk1YC3OuCXy1DWnkl51C, PpBEN997hbYDnZ9Kee1, UAJuFJy7lRbWGfe)); 
 if(wFIP1mA9lyqJj.isMovablePos(PJ8X1UD_4MwUzwSqd, wFIP1mA9lyqJj.getYPos()))
 sq_setCurrentAxisPos(wFIP1mA9lyqJj, 0, PJ8X1UD_4MwUzwSqd); 
 else
 {
 local R2mdZQtsK568Odir = sq_Abs(PJ8X1UD_4MwUzwSqd - wFIP1mA9lyqJj.getXPos());
 if(R2mdZQtsK568Odir != 0)
 wFIP1mA9lyqJj.getVar("move").set_vector(1, (Pk1YC3OuCXy1DWnkl51C > 0) ? Pk1YC3OuCXy1DWnkl51C - R2mdZQtsK568Odir : Pk1YC3OuCXy1DWnkl51C + R2mdZQtsK568Odir);
 }
 break;
 }
} ;

 
function onEndCurrentAni_atmage_convergencecannon(wFIP1mA9lyqJj)
{
 if(!wFIP1mA9lyqJj) return;
 if(!wFIP1mA9lyqJj.sq_IsMyControlObject()) return;
 local ZEJlR93Xfq3u0L_E3MG4q = wFIP1mA9lyqJj.getSkillSubState(); 
 if(ZEJlR93Xfq3u0L_E3MG4q != 2)
 {
 wFIP1mA9lyqJj.sq_IntVectClear();
 wFIP1mA9lyqJj.sq_IntVectPush(ZEJlR93Xfq3u0L_E3MG4q+1); 
 if(ZEJlR93Xfq3u0L_E3MG4q == 1) 
 {
 local JmYGXVlARzl = (wFIP1mA9lyqJj.sq_GetInputDirection(0) != wFIP1mA9lyqJj.getDirection())
 ? wFIP1mA9lyqJj.sq_GetIntData(244, 0) 
 : wFIP1mA9lyqJj.sq_GetIntData(244, 1); 
 wFIP1mA9lyqJj.sq_IntVectPush(JmYGXVlARzl); 
 }
 wFIP1mA9lyqJj.sq_AddSetStatePacket(244, STATE_PRIORITY_USER, true); 
 }
 else
 wFIP1mA9lyqJj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

function onEndState_atmage_convergencecannon(DN6B0AS7d2YJSMKsSL, gMENAd0ViZvuhrYLdIpS5s)
{
 if(!DN6B0AS7d2YJSMKsSL) return;
 local fwOCOeFq9yr = DN6B0AS7d2YJSMKsSL.getSkillSubState(); 
 if(fwOCOeFq9yr == 1 
 && gMENAd0ViZvuhrYLdIpS5s != 244 
 && gMENAd0ViZvuhrYLdIpS5s != STATE_STAND) 
 {
 RemoveAllAni(DN6B0AS7d2YJSMKsSL); 
 }
} ;

