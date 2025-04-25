
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_swordman_indaramang(DEJsBtPxNF0X)
{
 if(!DEJsBtPxNF0X) return false; 
 
 local GSGPg05Xalq9A4JY4YLD_3 = onGetMyPassiveObject_My(DEJsBtPxNF0X, 24370, 242, 1); 
 if(GSGPg05Xalq9A4JY4YLD_3)
 {
 if(GSGPg05Xalq9A4JY4YLD_3.getState() != 10) 
 GSGPg05Xalq9A4JY4YLD_3.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
 return false;
 }
 local uHKRED8ED4EEfH = DEJsBtPxNF0X.sq_IsUseSkill(242); 
 if(uHKRED8ED4EEfH) 
 {
 DEJsBtPxNF0X.sq_AddSetStatePacket(242, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_swordman_indaramang(u6173NuscH)
{
 if(!u6173NuscH) return false; 
 local dEu861GH5mLITGRfMAEW = u6173NuscH.sq_GetState(); 
 if(dEu861GH5mLITGRfMAEW == STATE_STAND) 
 return true; 
 if(dEu861GH5mLITGRfMAEW == STATE_ATTACK) 
 {
 return u6173NuscH.sq_IsCommandEnable(242); 
 }
 return true; 
} ;


 
function onSetState_swordman_indaramang(u6173NuscH, dEu861GH5mLITGRfMAEW, itOIsgf8FdJv_wJ4dQ6KqOl, cgpjQiWXtH5fmj)
{
 if(!u6173NuscH) return; 
 u6173NuscH.sq_StopMove(); 
 u6173NuscH.sq_SetCurrentAnimation(160); 
 u6173NuscH.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;


 
function onKeyFrameFlag_swordman_indaramang(Kils27ipgRrtVz7, Nt0ecmor5gogEvHanHgBy7)
{
 if(!Kils27ipgRrtVz7) return false;
 if(Nt0ecmor5gogEvHanHgBy7 == 1)
 {
 
 local vtcTN4R5RzkpxjCZ = Kils27ipgRrtVz7.getDirection(); 
 local _tyYJZIZGZU64 = sq_GetDistancePos(Kils27ipgRrtVz7.getXPos(), vtcTN4R5RzkpxjCZ, 300); 
 local YHDWM_Va8zoT = Kils27ipgRrtVz7.getYPos(); 
 local peaCTV8N0ZGQsGS9eBMmoKx = Kils27ipgRrtVz7.getZPos(); 
 if(Kils27ipgRrtVz7.sq_IsMyControlObject())
 {
 
 local LVCaY6FdwNvIzM2wBrWV = sq_GetCurrentAnimation(Kils27ipgRrtVz7).getDelaySum(8, 15); 
 sq_flashScreen(Kils27ipgRrtVz7, 0, LVCaY6FdwNvIzM2wBrWV, 150, 80, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 local qRwqwBba5TsOR4O0GoC5lhgo = sq_GetSkillLevel(Kils27ipgRrtVz7, 242); 
 local AtXGE4unAH = Kils27ipgRrtVz7.sq_GetBonusRateWithPassive(242, 242, 0, 1.0); 
 local Dqx9y15pw_KXsq = sq_GetLevelData(Kils27ipgRrtVz7, 242, 4, qRwqwBba5TsOR4O0GoC5lhgo); 
 local BIKbEyZ6cORv = sq_GetLevelData(Kils27ipgRrtVz7, 242, 5, qRwqwBba5TsOR4O0GoC5lhgo); 
 local R59ZyhiTGSKjp474H = sq_GetLevelData(Kils27ipgRrtVz7, 242, 6, qRwqwBba5TsOR4O0GoC5lhgo); 
 local RRx9mIrt3K3MlEc = sq_GetLevelData(Kils27ipgRrtVz7, 242, 7, qRwqwBba5TsOR4O0GoC5lhgo); 
 local G6JNTVZc7B06oqD1Uf4 = sq_GetLevelData(Kils27ipgRrtVz7, 242, 2, qRwqwBba5TsOR4O0GoC5lhgo); 
 local _jvzU1skQHotCIp0yLIRAM1 = sq_GetLevelData(Kils27ipgRrtVz7, 242, 1, qRwqwBba5TsOR4O0GoC5lhgo); 
 local A6VX42p4nEEsWfiRWkC = Kils27ipgRrtVz7.sq_GetBonusRateWithPassive(242, 242, 3, 1.0); 
 Kils27ipgRrtVz7.sq_StartWrite();
 Kils27ipgRrtVz7.sq_WriteDword(242); 
 Kils27ipgRrtVz7.sq_WriteDword(1); 
 Kils27ipgRrtVz7.sq_WriteDword(AtXGE4unAH); 
 Kils27ipgRrtVz7.sq_WriteDword(Dqx9y15pw_KXsq); 
 Kils27ipgRrtVz7.sq_WriteDword(BIKbEyZ6cORv); 
 Kils27ipgRrtVz7.sq_WriteDword(R59ZyhiTGSKjp474H); 
 Kils27ipgRrtVz7.sq_WriteDword(RRx9mIrt3K3MlEc); 
 Kils27ipgRrtVz7.sq_WriteDword(G6JNTVZc7B06oqD1Uf4); 
 Kils27ipgRrtVz7.sq_WriteDword(_jvzU1skQHotCIp0yLIRAM1); 
 Kils27ipgRrtVz7.sq_WriteDword(A6VX42p4nEEsWfiRWkC); 
 Kils27ipgRrtVz7.sq_SendCreatePassiveObjectPacket(24370, 0, 300, 0, 0); 
 }
 local IDeWKDFGIk91gL = sq_CreatePooledObject(sq_CreateAnimation("", "character/swordman/effect/animation/indaramang/attack_wave.ani"), true);
 IDeWKDFGIk91gL.setCurrentPos(_tyYJZIZGZU64, YHDWM_Va8zoT, peaCTV8N0ZGQsGS9eBMmoKx); 
 sq_SetCurrentDirection(IDeWKDFGIk91gL, vtcTN4R5RzkpxjCZ); 
 IDeWKDFGIk91gL = sq_SetEnumDrawLayer(IDeWKDFGIk91gL, ENUM_DRAWLAYER_BOTTOM); 
 sq_AddObject(Kils27ipgRrtVz7, IDeWKDFGIk91gL, OBJECTTYPE_DRAWONLY, false); 
 }
 return true;
} ;


 
function onEndCurrentAni_swordman_indaramang(U8xm7wL8PyXbgfzW5crl1vOG)
{
 if(!U8xm7wL8PyXbgfzW5crl1vOG) return;
 if(!U8xm7wL8PyXbgfzW5crl1vOG.sq_IsMyControlObject()) return;
 U8xm7wL8PyXbgfzW5crl1vOG.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


