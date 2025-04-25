
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_fighter_finalheaven(ElpnBTbJT_hv0UHrV)
{
 if(!ElpnBTbJT_hv0UHrV) return false; 
 local cvfDCz5u7ll3tGuEb = ElpnBTbJT_hv0UHrV.sq_IsUseSkill(232); 
 if(cvfDCz5u7ll3tGuEb) 
 {
 ElpnBTbJT_hv0UHrV.sq_IntVectClear();
 ElpnBTbJT_hv0UHrV.sq_IntVectPush(0); 
 ElpnBTbJT_hv0UHrV.sq_AddSetStatePacket(232, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_fighter_finalheaven(ElpnBTbJT_hv0UHrV)
{
 if(!ElpnBTbJT_hv0UHrV) return false; 
 local cvfDCz5u7ll3tGuEb = ElpnBTbJT_hv0UHrV.sq_GetState(); 
 if(cvfDCz5u7ll3tGuEb == STATE_STAND) 
 return true; 
 if(cvfDCz5u7ll3tGuEb == STATE_ATTACK) 
 {
 return ElpnBTbJT_hv0UHrV.sq_IsCommandEnable(232); 
 }
 return true; 
} ;

 
function onSetState_fighter_finalheaven(sTPDVHmHbFXvsZHBLCWToz, ef11ZaNkyYetFpEho, swTMHcs22ZM1MbS8IhX, AxmsYK8T2Ruvo24oK3mvU)
{
 if(!sTPDVHmHbFXvsZHBLCWToz) return; 
 sTPDVHmHbFXvsZHBLCWToz.sq_StopMove(); 
 local h5lrIUxTRrxcVARpaNfO0h = sTPDVHmHbFXvsZHBLCWToz.sq_GetVectorData(swTMHcs22ZM1MbS8IhX, 0); 
 sTPDVHmHbFXvsZHBLCWToz.setSkillSubState(h5lrIUxTRrxcVARpaNfO0h); 
 switch(h5lrIUxTRrxcVARpaNfO0h)
 {
 case 0:
 sTPDVHmHbFXvsZHBLCWToz.sq_SetCurrentAnimation(120); 
 break;
 case 1:
 sTPDVHmHbFXvsZHBLCWToz.sq_SetCurrentAnimation(121); 
 break;
 case 2:
 sTPDVHmHbFXvsZHBLCWToz.sq_SetCurrentAnimation(122); 
 sTPDVHmHbFXvsZHBLCWToz.sq_SetCurrentAttackInfo(69); 
 sTPDVHmHbFXvsZHBLCWToz.getVar().setBool(0, false); 
 if(sTPDVHmHbFXvsZHBLCWToz.sq_IsMyControlObject())
 sq_flashScreen(sTPDVHmHbFXvsZHBLCWToz, 0, 0, 300, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_LINEARDODGE, ENUM_DRAWLAYER_COVER);
 break;
 }
 local nPVlzoRKg6KwxZkqz9g = sTPDVHmHbFXvsZHBLCWToz.sq_GetDelaySum(); 
 sTPDVHmHbFXvsZHBLCWToz.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local e2G7sUnAW9 = sTPDVHmHbFXvsZHBLCWToz.sq_GetDelaySum(); 
 local KXz0xSr1d_f5h4m8jZGXnRhm = nPVlzoRKg6KwxZkqz9g.tofloat() / e2G7sUnAW9.tofloat() * 100.0; 
 sTPDVHmHbFXvsZHBLCWToz.getVar("speedRate").setFloat(0, KXz0xSr1d_f5h4m8jZGXnRhm); 
 local BH7GAXyy62o0ZNhy = sTPDVHmHbFXvsZHBLCWToz.getXPos(); local w0UBg3Db7KF = sTPDVHmHbFXvsZHBLCWToz.getYPos(); local bexXQmV6tE67J = sTPDVHmHbFXvsZHBLCWToz.getZPos();
 switch(h5lrIUxTRrxcVARpaNfO0h)
 {
 case 0:
 CreateAniRate(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/effect/animation/finalheaven/start/floorstart_04.ani", ENUM_DRAWLAYER_BOTTOM, BH7GAXyy62o0ZNhy, w0UBg3Db7KF, bexXQmV6tE67J, false, KXz0xSr1d_f5h4m8jZGXnRhm); 
 break;
 case 1:
 if(sTPDVHmHbFXvsZHBLCWToz.sq_IsMyControlObject())
 {
 
 sTPDVHmHbFXvsZHBLCWToz.sq_StartWrite();
 sTPDVHmHbFXvsZHBLCWToz.sq_WriteDword(232); 
 sTPDVHmHbFXvsZHBLCWToz.sq_WriteDword(1); 
 sTPDVHmHbFXvsZHBLCWToz.sq_WriteFloat(KXz0xSr1d_f5h4m8jZGXnRhm); 
 sTPDVHmHbFXvsZHBLCWToz.sq_SendCreatePassiveObjectPacket(24373, 0, 0, 0, 0);
 }
 CreateAniRate(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/effect/animation/finalheaven/ready/backbgready_black.ani", ENUM_DRAWLAYER_BOTTOM, BH7GAXyy62o0ZNhy, w0UBg3Db7KF, bexXQmV6tE67J, false, KXz0xSr1d_f5h4m8jZGXnRhm); 
 CreateAniRate(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/effect/animation/finalheaven/ready/floorready_06.ani", ENUM_DRAWLAYER_BOTTOM, BH7GAXyy62o0ZNhy, w0UBg3Db7KF, bexXQmV6tE67J, false, KXz0xSr1d_f5h4m8jZGXnRhm); 
 CreateAniRate(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/effect/animation/finalheaven/ready/backdustready_00.ani", ENUM_DRAWLAYER_BOTTOM, BH7GAXyy62o0ZNhy, w0UBg3Db7KF, bexXQmV6tE67J, false, KXz0xSr1d_f5h4m8jZGXnRhm); 
 CreateAniRate(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/effect/animation/finalheaven/ready/frontdustready_00.ani", ENUM_DRAWLAYER_NORMAL, BH7GAXyy62o0ZNhy, w0UBg3Db7KF, bexXQmV6tE67J, false, KXz0xSr1d_f5h4m8jZGXnRhm); 
 CreateAniRate(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/effect/animation/finalheaven/ready/windready_00.ani", ENUM_DRAWLAYER_NORMAL, BH7GAXyy62o0ZNhy, w0UBg3Db7KF, bexXQmV6tE67J, false, KXz0xSr1d_f5h4m8jZGXnRhm); 
 break;
 case 2:
 CreateAniRate(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/effect/animation/finalheaven/attack/backbgattack_black.ani", ENUM_DRAWLAYER_BOTTOM, BH7GAXyy62o0ZNhy, w0UBg3Db7KF, bexXQmV6tE67J, false, KXz0xSr1d_f5h4m8jZGXnRhm); 
 CreateAniRate(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/effect/animation/finalheaven/attack/floorattack_00.ani", ENUM_DRAWLAYER_BOTTOM, BH7GAXyy62o0ZNhy, w0UBg3Db7KF, bexXQmV6tE67J, false, KXz0xSr1d_f5h4m8jZGXnRhm); 
 CreateAniRate(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/effect/animation/finalheaven/attack/backblastattack_00.ani", ENUM_DRAWLAYER_NORMAL, BH7GAXyy62o0ZNhy, w0UBg3Db7KF, bexXQmV6tE67J, false, KXz0xSr1d_f5h4m8jZGXnRhm); 
 CreateAniRate(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/effect/animation/finalheaven/attack/frontdustattack_05.ani", ENUM_DRAWLAYER_NORMAL, BH7GAXyy62o0ZNhy, w0UBg3Db7KF, bexXQmV6tE67J, false, KXz0xSr1d_f5h4m8jZGXnRhm); 
 CreateAniRate(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/effect/animation/finalheaven/attack/backdustattack_13.ani", ENUM_DRAWLAYER_BOTTOM, BH7GAXyy62o0ZNhy, w0UBg3Db7KF, bexXQmV6tE67J, false, KXz0xSr1d_f5h4m8jZGXnRhm); 
 CreateAniRate(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/effect/animation/finalheaven/attack/frontstoneattack_06.ani", ENUM_DRAWLAYER_NORMAL, BH7GAXyy62o0ZNhy, w0UBg3Db7KF, bexXQmV6tE67J, false, KXz0xSr1d_f5h4m8jZGXnRhm); 
 CreateAniRate(sTPDVHmHbFXvsZHBLCWToz, "character/fighter/effect/animation/finalheaven/attack/finalheavenattack_01.ani", ENUM_DRAWLAYER_NORMAL, BH7GAXyy62o0ZNhy, w0UBg3Db7KF, bexXQmV6tE67J, false, KXz0xSr1d_f5h4m8jZGXnRhm); 
 break;
 }
} ;

function onAttack_fighter_finalheaven(WTQDexrpJoclPMX1, bW_7e_9eMYmtoBT_Y, KIbeIkkOUZlNja, HmMWoaYjmtJY5bdLl2O4sM)
{
 if(!WTQDexrpJoclPMX1) return;
 if(HmMWoaYjmtJY5bdLl2O4sM || !bW_7e_9eMYmtoBT_Y.isObjectType(OBJECTTYPE_ACTIVE)) return;
 if(WTQDexrpJoclPMX1.getSkillSubState() == 2 && WTQDexrpJoclPMX1.getVar().getBool(0) == false) 
 {
 WTQDexrpJoclPMX1.getVar().setBool(0, true); 
 local VmIxpiA1ttgvd = WTQDexrpJoclPMX1.getVar("speedRate").getFloat(0); 
 local cfBquNMKFswa10CPucF = WTQDexrpJoclPMX1.getXPos(); local r2EJs9JrEjI1_e3 = WTQDexrpJoclPMX1.getYPos(); local GC41u3Dso_uP6cNXO2Ed = WTQDexrpJoclPMX1.getZPos();
 
 CreateAniRate(WTQDexrpJoclPMX1, "character/fighter/effect/animation/finalheaven/attack/frontbgeffectattack_02.ani", ENUM_DRAWLAYER_COVER, cfBquNMKFswa10CPucF, r2EJs9JrEjI1_e3, GC41u3Dso_uP6cNXO2Ed, false, VmIxpiA1ttgvd); 
 CreateAniRate(WTQDexrpJoclPMX1, "character/fighter/effect/animation/finalheaven/attack/frontblastattackhit_32.ani", ENUM_DRAWLAYER_NORMAL, cfBquNMKFswa10CPucF, r2EJs9JrEjI1_e3, GC41u3Dso_uP6cNXO2Ed, false, VmIxpiA1ttgvd); 
 CreateAniRate(WTQDexrpJoclPMX1, "character/fighter/effect/animation/finalheaven/attack/backblastattackhit_03.ani", ENUM_DRAWLAYER_BOTTOM, cfBquNMKFswa10CPucF, r2EJs9JrEjI1_e3, GC41u3Dso_uP6cNXO2Ed, false, VmIxpiA1ttgvd); 
 CreateAniRate(WTQDexrpJoclPMX1, "character/fighter/effect/animation/finalheaven/attack/frontblastattack_06.ani", ENUM_DRAWLAYER_NORMAL, cfBquNMKFswa10CPucF, r2EJs9JrEjI1_e3, GC41u3Dso_uP6cNXO2Ed, false, VmIxpiA1ttgvd); 
 CreateAniRate(WTQDexrpJoclPMX1, "character/fighter/effect/animation/finalheaven/attack/frontstoneattackhit_02.ani", ENUM_DRAWLAYER_NORMAL, cfBquNMKFswa10CPucF, r2EJs9JrEjI1_e3, GC41u3Dso_uP6cNXO2Ed, false, VmIxpiA1ttgvd); 
 CreateAniRate(WTQDexrpJoclPMX1, "character/fighter/effect/animation/finalheaven/attack/frontdustattackhit_08.ani", ENUM_DRAWLAYER_NORMAL, cfBquNMKFswa10CPucF, r2EJs9JrEjI1_e3, GC41u3Dso_uP6cNXO2Ed, false, VmIxpiA1ttgvd); 
 CreateAniRate(WTQDexrpJoclPMX1, "character/fighter/effect/animation/finalheaven/attack/backdustattackhit_13.ani", ENUM_DRAWLAYER_BOTTOM, cfBquNMKFswa10CPucF, r2EJs9JrEjI1_e3, GC41u3Dso_uP6cNXO2Ed, false, VmIxpiA1ttgvd); 
 }
} ;

function onKeyFrameFlag_fighter_finalheaven(C0hrqHuiRZz, zfZxfp_yNWqoDxxg)
{
 if(!C0hrqHuiRZz) return false;
 local ufcGKYac1f = C0hrqHuiRZz.getSkillSubState(); 
 switch(ufcGKYac1f)
 {
 case 0:
 if(zfZxfp_yNWqoDxxg == 1)
 sq_SetMyShake(C0hrqHuiRZz, 4, 320); 
 break;
 case 1:
 if(zfZxfp_yNWqoDxxg == 1)
 sq_SetMyShake(C0hrqHuiRZz, 2, 1000); 
 break;
 case 2:
 if(zfZxfp_yNWqoDxxg == 1)
 if(C0hrqHuiRZz.getVar().getBool(0) == false) 
 {
 C0hrqHuiRZz.sq_PlaySound("FT_BEAT_DRIVE_FIN");
 if(C0hrqHuiRZz.sq_IsMyControlObject())
 {
 C0hrqHuiRZz.sq_StartWrite();
 C0hrqHuiRZz.sq_WriteDword(232); 
 C0hrqHuiRZz.sq_WriteDword(2); 
 C0hrqHuiRZz.sq_WriteDword(C0hrqHuiRZz.sq_GetBonusRateWithPassive(232, 232, 1, 1.0)); 
 C0hrqHuiRZz.sq_WriteFloat(C0hrqHuiRZz.getVar("speedRate").getFloat(0)); 
 C0hrqHuiRZz.sq_SendCreatePassiveObjectPacket(24373, 0, 0, 0, 0);
 }
 }
 else if(C0hrqHuiRZz.getVar().getBool(0) == true) 
 {
 C0hrqHuiRZz.sq_PlaySound("FT_FINALHEAVEN_02");
 sq_SetMyShake(C0hrqHuiRZz, 25, 300); 
 if(C0hrqHuiRZz.sq_IsMyControlObject())
 {
 C0hrqHuiRZz.sq_StartWrite();
 C0hrqHuiRZz.sq_WriteDword(232); 
 C0hrqHuiRZz.sq_WriteDword(3); 
 C0hrqHuiRZz.sq_WriteDword(C0hrqHuiRZz.sq_GetBonusRateWithPassive(232, 232, 0, 1.0)); 
 C0hrqHuiRZz.sq_WriteFloat(C0hrqHuiRZz.getVar("speedRate").getFloat(0)); 
 C0hrqHuiRZz.sq_SendCreatePassiveObjectPacket(24373, 0, 0, 0, 0);
 }
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_fighter_finalheaven(_I1euPH63OISc4)
{
 if(!_I1euPH63OISc4) return;
 if(!_I1euPH63OISc4.sq_IsMyControlObject())return;
 local WW8_fmK_aO8IB = _I1euPH63OISc4.getSkillSubState(); 
 if(WW8_fmK_aO8IB != 2)
 {
 _I1euPH63OISc4.sq_IntVectClear();
 _I1euPH63OISc4.sq_IntVectPush(WW8_fmK_aO8IB + 1); 
 _I1euPH63OISc4.sq_AddSetStatePacket(232, STATE_PRIORITY_USER, true); 
 }
 else if(WW8_fmK_aO8IB == 2) 
 _I1euPH63OISc4.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

