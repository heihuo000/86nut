
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



S_SPINCUTTER_THROW <-0
 S_SPINCUTTER_RECALL <-1
 S_SPINCUTTER_ARRIVAL <-2

 CSI_THROW_LEN <-0
 CSI_STAY_TIME <-1
 CSI_SPIN_HIT_COUNT <-2

 I_OBJ_VECTOR_ROPE_ANI <-0
 I_OBJ_VECTOR_ROPE_DODGE_ANI <-1



  
function checkExecutableSkill_Spincutter(HJLkU0A4fy9J)
{
 if(!HJLkU0A4fy9J) return false;
 local EfxGJ3oDLpPM1YZJGCH = HJLkU0A4fy9J.sq_IsUseSkill(113);
 if(EfxGJ3oDLpPM1YZJGCH)
 {
 HJLkU0A4fy9J.sq_IntVectClear();
 HJLkU0A4fy9J.sq_IntVectPush(0); 
 HJLkU0A4fy9J.sq_IntVectPush(HJLkU0A4fy9J.getDirection()); 
 HJLkU0A4fy9J.sq_addSetStatePacket(61, STATE_PRIORITY_IGNORE_FORCE, true);
 return true;
 }
 return false;
} ;



 
function checkCommandEnable_Spincutter(m1iYYwS3i2TKMAfrPu)
{
 if(!m1iYYwS3i2TKMAfrPu) return false;
 local vOmXoiFmpPP8u = m1iYYwS3i2TKMAfrPu.sq_GetSTATE();
 if(vOmXoiFmpPP8u == STATE_ATTACK)
 {
 
 return m1iYYwS3i2TKMAfrPu.sq_IsCommandEnable(113); 
 }
 return true;
} ;


 
function onProc_spincutter(TIXYA4pZOZK97kAyB6ubo)
{
 if(!TIXYA4pZOZK97kAyB6ubo) return;
 local DarkDLIqoPJNuEwJ4GHBlj = TIXYA4pZOZK97kAyB6ubo.getSkillSubState();
 if(isAvengerAwakenning(TIXYA4pZOZK97kAyB6ubo) == false) 
 {
 local U9W4AnYGykDNQlpokenQ7 = TIXYA4pZOZK97kAyB6ubo.getXPos();
 local iw7462lPfdobWi = TIXYA4pZOZK97kAyB6ubo.getYPos();
 local JBETVWbcTWgS = TIXYA4pZOZK97kAyB6ubo.getZPos();
 local zAXKUo0jBUkEdv4jY = TIXYA4pZOZK97kAyB6ubo.getVar();
 local Z17RyVBeAE = TIXYA4pZOZK97kAyB6ubo.sq_getCurrentAni();
 local nzPiBdRllLoiSLiq1m4l = TIXYA4pZOZK97kAyB6ubo.sq_ani_GetCurrentFrameIndex(Z17RyVBeAE);
 local _mbAgAcNCxn = sq_GetCurrentTime(Z17RyVBeAE);
 if(DarkDLIqoPJNuEwJ4GHBlj == 0)
 {
 local FzePsjqkNrwmSfD = Z17RyVBeAE.GetFrameStartTime(1);
 local GCRUqWxXebnE8xbgAX0g4lU9 = Z17RyVBeAE.getDelaySum(0, 6);
 local q8DgNM1Nbe_KXr9_ovHLmpl = zAXKUo0jBUkEdv4jY.get_obj_vector(0); 
 local JHLdgZpyxD9zOvtnvTWi = zAXKUo0jBUkEdv4jY.get_obj_vector(1); 
 local EKUKgDVLisOY5W97Um = q8DgNM1Nbe_KXr9_ovHLmpl.getCurrentAnimation();
 local CSf73IiFoudCOw8uMwc = JHLdgZpyxD9zOvtnvTWi.getCurrentAnimation();
 local yffeklGRV5kK4NhF9PRq7_TW = q8DgNM1Nbe_KXr9_ovHLmpl.getXPos();
 local v_xBawBqQbvfwIWZYKeJvKA = zAXKUo0jBUkEdv4jY.get_vector(1);
 local l6ymsZ6PDi0zaUWCxIxjL = TIXYA4pZOZK97kAyB6ubo.sq_getIntData(113, 1) + GCRUqWxXebnE8xbgAX0g4lU9;
 local M21iz9kDhQtOWtVg = 1.0;
 if(_mbAgAcNCxn > FzePsjqkNrwmSfD && _mbAgAcNCxn < l6ymsZ6PDi0zaUWCxIxjL)
 {
 
 local SjFWXU8mMuosJdsXV7rb4h = sq_GetAccel(50, v_xBawBqQbvfwIWZYKeJvKA, _mbAgAcNCxn, 650, true);
 M21iz9kDhQtOWtVg = SjFWXU8mMuosJdsXV7rb4h / 1000.0;
 }
 else if(_mbAgAcNCxn >= l6ymsZ6PDi0zaUWCxIxjL)
 {
 M21iz9kDhQtOWtVg = v_xBawBqQbvfwIWZYKeJvKA / 1000.0;
 }
 
 EKUKgDVLisOY5W97Um.setImageRate(M21iz9kDhQtOWtVg, 1.0);
 CSf73IiFoudCOw8uMwc.setImageRate(M21iz9kDhQtOWtVg, 1.0);
 local h_LkyE5fM5LD_6H4fZPxX9kQ = sq_GetAniRealImageSize(CSf73IiFoudCOw8uMwc, ENUM_DIRECTION_RIGHT);
 local CGY6PKSolcW2t = sq_GetDistancePos(yffeklGRV5kK4NhF9PRq7_TW, TIXYA4pZOZK97kAyB6ubo.getDirection(), h_LkyE5fM5LD_6H4fZPxX9kQ);
 local NXZpyNWsG73KYsV48mitsHj = TIXYA4pZOZK97kAyB6ubo.getMyPassiveObject(24101, TIXYA4pZOZK97kAyB6ubo.getMyPassiveObjectCount(24101) - 1); 
 if(NXZpyNWsG73KYsV48mitsHj)
 {
 NXZpyNWsG73KYsV48mitsHj.setCurrentPos(CGY6PKSolcW2t, iw7462lPfdobWi, JBETVWbcTWgS);
 }
 local fy7xbWr28_DW0H = TIXYA4pZOZK97kAyB6ubo.getMyPassiveObject(24100, TIXYA4pZOZK97kAyB6ubo.getMyPassiveObjectCount(24100) - 1); 
 if(fy7xbWr28_DW0H)
 {
 fy7xbWr28_DW0H.setCurrentPos(CGY6PKSolcW2t, iw7462lPfdobWi - 1, JBETVWbcTWgS);
 }
 if(nzPiBdRllLoiSLiq1m4l >= 2 && nzPiBdRllLoiSLiq1m4l < 6)
 {
 local URn0n3Zehfgd = zAXKUo0jBUkEdv4jY.get_vector(0);
 if(URn0n3Zehfgd == 0)
 {
 local G0n8zE30J6 = 110;
 local sX0OYQa4pgYEGHZrf2P69r = zAXKUo0jBUkEdv4jY.get_obj_vector(1); 
 local CSf73IiFoudCOw8uMwc = sX0OYQa4pgYEGHZrf2P69r.getCurrentAnimation();
 local h_LkyE5fM5LD_6H4fZPxX9kQ = sq_GetAniRealImageSize(CSf73IiFoudCOw8uMwc, ENUM_DIRECTION_RIGHT);
 local SPQrVeUbtZ541rqrcX4JqnwP = h_LkyE5fM5LD_6H4fZPxX9kQ + G0n8zE30J6;
 if(TIXYA4pZOZK97kAyB6ubo.sq_isMyControlObject())
 {
 local kbM5wYv4GBpWaXJTbhro = TIXYA4pZOZK97kAyB6ubo.sq_getBonusRateWithPassive(113, TIXYA4pZOZK97kAyB6ubo.sq_GetSTATE(), 1, 1.0);
 local hftzxtVJHqnKvEUIk2tm = TIXYA4pZOZK97kAyB6ubo.sq_getIntData(113, 2);
 TIXYA4pZOZK97kAyB6ubo.sq_binaryData_startWrite();
 TIXYA4pZOZK97kAyB6ubo.sq_binaryData_writeDword(1); 
 TIXYA4pZOZK97kAyB6ubo.sq_binaryData_writeDword(hftzxtVJHqnKvEUIk2tm);
 TIXYA4pZOZK97kAyB6ubo.sq_binaryData_writeDword(kbM5wYv4GBpWaXJTbhro);
 TIXYA4pZOZK97kAyB6ubo.sq_p00_sendCreatePassiveObjectPacket(24100, 0, SPQrVeUbtZ541rqrcX4JqnwP, -1, 0);
 }
 zAXKUo0jBUkEdv4jY.set_vector(0, 1);
 }
 }
 else if(nzPiBdRllLoiSLiq1m4l >= 6)
 {
 local l6ymsZ6PDi0zaUWCxIxjL = TIXYA4pZOZK97kAyB6ubo.sq_getIntData(113, 1);
 local _mbAgAcNCxn = sq_GetCurrentTime(Z17RyVBeAE) - Z17RyVBeAE.getDelaySum(false);
 TIXYA4pZOZK97kAyB6ubo.setSkillCommandEnable(113, true);
 local YvBHsF_Dtx4ZfP4yv = TIXYA4pZOZK97kAyB6ubo.sq_IsEnterSkill(113);
 if(_mbAgAcNCxn >= l6ymsZ6PDi0zaUWCxIxjL || YvBHsF_Dtx4ZfP4yv != -1)
 { 
 local URn0n3Zehfgd = zAXKUo0jBUkEdv4jY.get_vector(2);
 if(!URn0n3Zehfgd)
 {
 zAXKUo0jBUkEdv4jY.set_vector(2, 1);
 if(TIXYA4pZOZK97kAyB6ubo.sq_isMyControlObject())
 {
 TIXYA4pZOZK97kAyB6ubo.sq_IntVectClear();
 TIXYA4pZOZK97kAyB6ubo.sq_IntVectPush(1);
 TIXYA4pZOZK97kAyB6ubo.sq_IntVectPush(TIXYA4pZOZK97kAyB6ubo.getDirection()); 
 TIXYA4pZOZK97kAyB6ubo.sq_addSetStatePacket(61, STATE_PRIORITY_USER, true);
 }
 }
 }
 }
 }
 else if(DarkDLIqoPJNuEwJ4GHBlj == 1)
 {
 }
 else if(DarkDLIqoPJNuEwJ4GHBlj == 2)
 {
 }
 }
 else
 {
 switch(DarkDLIqoPJNuEwJ4GHBlj)
 {
 case 0:
 local DCLRpMBcRhUy = TIXYA4pZOZK97kAyB6ubo.getXPos(); 
 local Z17RyVBeAE = TIXYA4pZOZK97kAyB6ubo.sq_getCurrentAni(); 
 local _mbAgAcNCxn = sq_GetCurrentTime(Z17RyVBeAE); 
 local GCRUqWxXebnE8xbgAX0g4lU9 = Z17RyVBeAE.getDelaySum(0, 1) + Z17RyVBeAE.getDelaySum(2, 2) / 3; 
 local olxFAOW3buvL = sq_GetDistancePos(DCLRpMBcRhUy, TIXYA4pZOZK97kAyB6ubo.getDirection(), sq_GetAccel(0, 280, _mbAgAcNCxn, GCRUqWxXebnE8xbgAX0g4lU9, true)); 
 local NXZpyNWsG73KYsV48mitsHj = TIXYA4pZOZK97kAyB6ubo.getMyPassiveObject(24101, TIXYA4pZOZK97kAyB6ubo.getMyPassiveObjectCount(24101) - 1); 
 if(NXZpyNWsG73KYsV48mitsHj)
 NXZpyNWsG73KYsV48mitsHj.setCurrentPos(olxFAOW3buvL, TIXYA4pZOZK97kAyB6ubo.getYPos(), TIXYA4pZOZK97kAyB6ubo.getZPos() + 80); 
 break;
 case 1:
 if(TIXYA4pZOZK97kAyB6ubo.sq_isMyControlObject())
 {
 TIXYA4pZOZK97kAyB6ubo.setSkillCommandEnable(113, true); 
 if(TIXYA4pZOZK97kAyB6ubo.sq_IsEnterSkill(113) != -1)
 {
 TIXYA4pZOZK97kAyB6ubo.sq_IntVectClear();
 TIXYA4pZOZK97kAyB6ubo.sq_IntVectPush(2);
 TIXYA4pZOZK97kAyB6ubo.sq_addSetStatePacket(61, STATE_PRIORITY_USER, true);
 }
 }
 break;
 case 3:
 local Z17RyVBeAE = TIXYA4pZOZK97kAyB6ubo.sq_getCurrentAni(); 
 local _mbAgAcNCxn = sq_GetCurrentTime(Z17RyVBeAE); 
 local GCRUqWxXebnE8xbgAX0g4lU9 = Z17RyVBeAE.getDelaySum(false); 
 local NXZpyNWsG73KYsV48mitsHj = TIXYA4pZOZK97kAyB6ubo.getMyPassiveObject(24100, TIXYA4pZOZK97kAyB6ubo.getMyPassiveObjectCount(24100) - 1); 
 if(NXZpyNWsG73KYsV48mitsHj)
 {
 local DCLRpMBcRhUy = TIXYA4pZOZK97kAyB6ubo.getXPos(); 
 local olxFAOW3buvL = sq_GetAccel(sq_GetDistancePos(DCLRpMBcRhUy, TIXYA4pZOZK97kAyB6ubo.getDirection(), 280),
 sq_GetDistancePos(DCLRpMBcRhUy, TIXYA4pZOZK97kAyB6ubo.getDirection(), 80), _mbAgAcNCxn, GCRUqWxXebnE8xbgAX0g4lU9, false);
 NXZpyNWsG73KYsV48mitsHj.setCurrentPos(olxFAOW3buvL, TIXYA4pZOZK97kAyB6ubo.getYPos(), TIXYA4pZOZK97kAyB6ubo.getZPos() + 80); 
 }
 break;
 }
 }
} ;

 
function onProcCon_spincutter(AUHwGHUWEoCe2VdAy2UNT)
{
 if(!AUHwGHUWEoCe2VdAy2UNT) return;
 local OGlrL7loBHAFQr91xqXWPB = AUHwGHUWEoCe2VdAy2UNT.sq_getCurrentAni();
 local LrC8mYVPd8K11P = AUHwGHUWEoCe2VdAy2UNT.sq_ani_IsEnd(OGlrL7loBHAFQr91xqXWPB);
 local Nm9as5lys9Qrmc437U = AUHwGHUWEoCe2VdAy2UNT.sq_ani_GetCurrentFrameIndex(OGlrL7loBHAFQr91xqXWPB);
 local U_N_ZR16fYAw7pXta = AUHwGHUWEoCe2VdAy2UNT.getVar();
 
 local cEtgMmM_lfto4Psb = AUHwGHUWEoCe2VdAy2UNT.getSkillSubState();
 if(isAvengerAwakenning(AUHwGHUWEoCe2VdAy2UNT) == false) 
 {
 if(cEtgMmM_lfto4Psb == 1)
 {
 }
 else if(cEtgMmM_lfto4Psb == 2)
 {
 }
 if(LrC8mYVPd8K11P)
 {
 if(cEtgMmM_lfto4Psb == 0)
 {
 }
 else if(cEtgMmM_lfto4Psb == 1)
 {
 AUHwGHUWEoCe2VdAy2UNT.sq_IntVectClear();
 AUHwGHUWEoCe2VdAy2UNT.sq_IntVectPush(2);
 AUHwGHUWEoCe2VdAy2UNT.sq_IntVectPush(AUHwGHUWEoCe2VdAy2UNT.getDirection()); 
 AUHwGHUWEoCe2VdAy2UNT.sq_addSetStatePacket(61, STATE_PRIORITY_USER, true);
 }
 else if(cEtgMmM_lfto4Psb == 2)
 {
 AUHwGHUWEoCe2VdAy2UNT.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 }
 }
 }
} ;

 
function onEndState_spincutter(gfZEBVJtinoHBP4yvW4lOAz, V1759_OR6W)
{
 if(!gfZEBVJtinoHBP4yvW4lOAz) return;
 if(isAvengerAwakenning(gfZEBVJtinoHBP4yvW4lOAz) == false) 
 {
 if(V1759_OR6W != 61)
 {
 local rr8La0ffv6HI5mx1yZw = gfZEBVJtinoHBP4yvW4lOAz.getVar();
 local EXZOCHS4oJUO = rr8La0ffv6HI5mx1yZw.get_obj_vector(0); 
 local r_2gPAlsfNC6s1v = rr8La0ffv6HI5mx1yZw.get_obj_vector(1); 
 if(EXZOCHS4oJUO)
 {
 EXZOCHS4oJUO.setValid(false);
 }
 if(r_2gPAlsfNC6s1v)
 {
 r_2gPAlsfNC6s1v.setValid(false);
 }
 }
 }
} ;

 
function onSetState_spincutter(z2cE2Hg4Ogc, rjjiAj4QaMp, LIaT7kZ5Zk, Fskz8R7ZLg)
{
 if(!z2cE2Hg4Ogc) return;
 local p7Y5_DegDgAlDdc = z2cE2Hg4Ogc.getVar();
 local NivhyTjUBpNBNr6lYxceM = z2cE2Hg4Ogc.sq_getVectorData(LIaT7kZ5Zk, 0); 
 local b6XxYE1ZU6 = z2cE2Hg4Ogc.sq_getVectorData(LIaT7kZ5Zk, 1); 
 z2cE2Hg4Ogc.setSkillSubState(NivhyTjUBpNBNr6lYxceM); 
 z2cE2Hg4Ogc.sq_stopMove();
 p7Y5_DegDgAlDdc.clear_vector();
 
 p7Y5_DegDgAlDdc.push_vector(0);
 local XqWd_7nOM9IHukmoiGi = z2cE2Hg4Ogc.sq_getIntData(113, 0);
 p7Y5_DegDgAlDdc.push_vector(XqWd_7nOM9IHukmoiGi);
 p7Y5_DegDgAlDdc.push_vector(0);
 local hSCJjvSMHT3RKp42c5YfNx = z2cE2Hg4Ogc.getXPos();
 local XSiT36pA4g = z2cE2Hg4Ogc.getYPos();
 local k8yDBzdmXs63B = z2cE2Hg4Ogc.getZPos();
 if(isAvengerAwakenning(z2cE2Hg4Ogc) == false) 
 {
 if(NivhyTjUBpNBNr6lYxceM == 0)
 {
 p7Y5_DegDgAlDdc.clear_ani_vector(); 
 z2cE2Hg4Ogc.sq_setCurrentAttackInfo(70); 
 local zvGe8XZGA258ZOZcCMyWMBGP = z2cE2Hg4Ogc.sq_getBonusRateWithPassive(113, rjjiAj4QaMp, 0, 1.0);
 z2cE2Hg4Ogc.sq_setCurrentAttackBonusRate(zvGe8XZGA258ZOZcCMyWMBGP);
 if(z2cE2Hg4Ogc.sq_isMyControlObject())
 {
 z2cE2Hg4Ogc.sq_binaryData_startWrite();
 z2cE2Hg4Ogc.sq_binaryData_writeDword(1); 
 z2cE2Hg4Ogc.sq_binaryData_writeDword(zvGe8XZGA258ZOZcCMyWMBGP);
 z2cE2Hg4Ogc.sq_p00_sendCreatePassiveObjectPacket(24101, 0, 0, 0, 0);
 }
 
 z2cE2Hg4Ogc.sq_setCurrentAnimation(79);
 local a1gEUDIaIIQc = z2cE2Hg4Ogc.sq_getCurrentAni();
 local BcfbgeUHWTIgj7HfMj = z2cE2Hg4Ogc.sq_createCNRDAnimation("Effect/Animation/Spincutter/throw/4_rope_normal_0.ani");
 local r2BZce4ihGw1o_d2Arkn = z2cE2Hg4Ogc.sq_createCNRDAnimation("Effect/Animation/Spincutter/throw/5_rope_dodge_0.ani");
 
 BcfbgeUHWTIgj7HfMj.setImageRate(0.1, 1.0);
 r2BZce4ihGw1o_d2Arkn.setImageRate(0.1, 1.0);
 local raEgOryYZNPuKkc_RL = 101;
 local kVi0hEgg4449bL8 = sq_GetDistancePos(hSCJjvSMHT3RKp42c5YfNx, b6XxYE1ZU6, raEgOryYZNPuKkc_RL);
 local SscFMHEbKl = z2cE2Hg4Ogc.sq_createCNRDPooledObject(BcfbgeUHWTIgj7HfMj, false);
 local bmK37s6tYFaeDpHwWGGeg = z2cE2Hg4Ogc.sq_createCNRDPooledObject(r2BZce4ihGw1o_d2Arkn, false);
 
 SscFMHEbKl.setCurrentDirection(b6XxYE1ZU6);
 bmK37s6tYFaeDpHwWGGeg.setCurrentDirection(b6XxYE1ZU6);
 
 SscFMHEbKl.setCurrentPos(kVi0hEgg4449bL8, XSiT36pA4g, k8yDBzdmXs63B);
 bmK37s6tYFaeDpHwWGGeg.setCurrentPos(kVi0hEgg4449bL8, XSiT36pA4g, k8yDBzdmXs63B);
 p7Y5_DegDgAlDdc.clear_obj_vector();
 p7Y5_DegDgAlDdc.push_obj_vector(SscFMHEbKl);
 p7Y5_DegDgAlDdc.push_obj_vector(bmK37s6tYFaeDpHwWGGeg);
 
 z2cE2Hg4Ogc.sq_AddObject(SscFMHEbKl);
 z2cE2Hg4Ogc.sq_AddObject(bmK37s6tYFaeDpHwWGGeg);
 
 local vGY75dvaAqBKBJr0BHjT = sq_GetAniRealImageSize(r2BZce4ihGw1o_d2Arkn, b6XxYE1ZU6);
 
 }
 else if(NivhyTjUBpNBNr6lYxceM == 1)
 {
 z2cE2Hg4Ogc.sq_setCurrentAnimation(80);
 local sg8Pz9T1P2ufA83gM = z2cE2Hg4Ogc.sq_getCurrentAni();
 z2cE2Hg4Ogc.sq_setAnimationSpeedRate(sg8Pz9T1P2ufA83gM, 120.0);
 local FOs29uCf_NQKM = p7Y5_DegDgAlDdc.get_obj_vector(0); 
 local FyrhbhErZo18UxeO9RBQY = p7Y5_DegDgAlDdc.get_obj_vector(1); 
 if(FOs29uCf_NQKM)
 {
 FOs29uCf_NQKM.setValid(false);
 }
 if(FyrhbhErZo18UxeO9RBQY)
 {
 FyrhbhErZo18UxeO9RBQY.setValid(false);
 }
 }
 else if(NivhyTjUBpNBNr6lYxceM == 2)
 {
 z2cE2Hg4Ogc.sq_setCurrentAnimation(81);
 }
 }
 else 
 {
 switch(NivhyTjUBpNBNr6lYxceM)
 {
 case 0:
 local uqyZG6qUkL3cRxCYLWRbJ211 = z2cE2Hg4Ogc.getVar().GetAnimationMap("devilspincutter_startbody", "character/priest/animation/avengerawakening/devilspincutter/devilspincutter_startbody.ani");
 z2cE2Hg4Ogc.setCurrentAnimation(uqyZG6qUkL3cRxCYLWRbJ211);
 if(z2cE2Hg4Ogc.sq_isMyControlObject())
 {
 local zvGe8XZGA258ZOZcCMyWMBGP = z2cE2Hg4Ogc.sq_getBonusRateWithPassive(113, rjjiAj4QaMp, 0, 1.0 +
 z2cE2Hg4Ogc.sq_getLevelData(113, 2, sq_GetSkillLevel(z2cE2Hg4Ogc, 113)) / 100.0); 
 z2cE2Hg4Ogc.sq_binaryData_startWrite();
 z2cE2Hg4Ogc.sq_binaryData_writeDword(2); 
 z2cE2Hg4Ogc.sq_binaryData_writeDword(zvGe8XZGA258ZOZcCMyWMBGP);
 z2cE2Hg4Ogc.sq_p00_sendCreatePassiveObjectPacket(24101, 0, 0, 0, 80);
 }
 break;
 case 1:
 local uqyZG6qUkL3cRxCYLWRbJ211 = z2cE2Hg4Ogc.getVar().GetAnimationMap("devilspincutter_loopstartbody", "character/priest/animation/avengerawakening/devilspincutter/devilspincutter_loopstartbody.ani");
 z2cE2Hg4Ogc.setCurrentAnimation(uqyZG6qUkL3cRxCYLWRbJ211);
 if(z2cE2Hg4Ogc.sq_isMyControlObject())
 {
 local sofVZLxNTgHf = z2cE2Hg4Ogc.sq_getIntData(113, 2); 
 local mr06zTwLBgmzxpemlBO2ZBs = z2cE2Hg4Ogc.sq_getBonusRateWithPassive(113, rjjiAj4QaMp, 1, 1.0+
 z2cE2Hg4Ogc.sq_getLevelData(113, 2, sq_GetSkillLevel(z2cE2Hg4Ogc, 113))/100.0); 
 z2cE2Hg4Ogc.sq_binaryData_startWrite();
 z2cE2Hg4Ogc.sq_binaryData_writeDword(2); 
 z2cE2Hg4Ogc.sq_binaryData_writeDword(sofVZLxNTgHf);
 z2cE2Hg4Ogc.sq_binaryData_writeDword(mr06zTwLBgmzxpemlBO2ZBs);
 z2cE2Hg4Ogc.sq_p00_sendCreatePassiveObjectPacket(24100, 0, 280, -1, 80);
 }
 break;
 case 2:
 local uqyZG6qUkL3cRxCYLWRbJ211 = z2cE2Hg4Ogc.getVar().GetAnimationMap("devilspincutter_loopendbody", "character/priest/animation/avengerawakening/devilspincutter/devilspincutter_loopendbody.ani");
 z2cE2Hg4Ogc.setCurrentAnimation(uqyZG6qUkL3cRxCYLWRbJ211);
 local PzXouCGlgnogwl6s_bLFco = z2cE2Hg4Ogc.getMyPassiveObject(24100, z2cE2Hg4Ogc.getMyPassiveObjectCount(24100) - 1); 
 if(PzXouCGlgnogwl6s_bLFco && PzXouCGlgnogwl6s_bLFco.isExistTimeEvent(0))
 PzXouCGlgnogwl6s_bLFco.stopTimeEvent(0); 
 break;
 case 3:
 local uqyZG6qUkL3cRxCYLWRbJ211 = z2cE2Hg4Ogc.getVar().GetAnimationMap("devilspincutter_consumebody", "character/priest/animation/avengerawakening/devilspincutter/devilspincutter_consumebody.ani");
 z2cE2Hg4Ogc.setCurrentAnimation(uqyZG6qUkL3cRxCYLWRbJ211);
 local Alh9FF5GysN_VxUnsfq = z2cE2Hg4Ogc.getMyPassiveObject(24100, z2cE2Hg4Ogc.getMyPassiveObjectCount(24100)-1); 
 if(Alh9FF5GysN_VxUnsfq && Alh9FF5GysN_VxUnsfq.isMyControlObject())
 Alh9FF5GysN_VxUnsfq.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "");
 break;
 case 4:
 local uqyZG6qUkL3cRxCYLWRbJ211 = z2cE2Hg4Ogc.getVar().GetAnimationMap("devilspincutter_endbody", "character/priest/animation/avengerawakening/devilspincutter/devilspincutter_endbody.ani");
 z2cE2Hg4Ogc.setCurrentAnimation(uqyZG6qUkL3cRxCYLWRbJ211);
 break;
 }
 }
 z2cE2Hg4Ogc.sq_setStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;


function onEndCurrentAni_spincutter(TghQFy9t7LBtir)
{
 if(!TghQFy9t7LBtir) return;
 if(!TghQFy9t7LBtir.sq_isMyControlObject()) return;
 if(isAvengerAwakenning(TghQFy9t7LBtir) == true) 
 {
 local urPLXOOCnK1R3S2zYuNUHAwy = TghQFy9t7LBtir.getSkillSubState();
 if(urPLXOOCnK1R3S2zYuNUHAwy != 4)
 {
 TghQFy9t7LBtir.sq_IntVectClear();
 TghQFy9t7LBtir.sq_IntVectPush(urPLXOOCnK1R3S2zYuNUHAwy + 1);
 TghQFy9t7LBtir.sq_addSetStatePacket(61, STATE_PRIORITY_USER, true);
 }
 else
 TghQFy9t7LBtir.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 }
} ;


 
 

function onAfterSetState_spincutter(P31QZ8O4nO9bhCa9k, Z1pBSQFUJEPxR72F1c, QKzfWSQcfFcSkQu0cqApkF, h5s441cEZHiBI)
{
 if(!P31QZ8O4nO9bhCa9k) return;
} ;

 
function onBeforeAttack_spincutter(tbtd_KtV5SLKeh, nANU0_z_3km8SG1Q9j1Y, t3fMbwlxPz0MAws93caWnwX)
{
} ;

 
function onAttack_spincutter(tbtd_KtV5SLKeh, nANU0_z_3km8SG1Q9j1Y, t3fMbwlxPz0MAws93caWnwX)
{
} ;

 
function onAfterAttack_spincutter(GPTQN1uXMbdKbEUwYgK, VwQRPa2qIVFQ, Ufw_GluMsuCGCubK2mFpOA)
{
} ;

 
function onBeforeDamage_spincutter(GPTQN1uXMbdKbEUwYgK, VwQRPa2qIVFQ, Ufw_GluMsuCGCubK2mFpOA)
{
} ;

 
function onDamage_spincutter(nC3GBwiZZa, LKGUCQJ3uJZqw14NWmJ01r, rkXnbnjc4dXdc)
{
} ;

 
function onAfterDamage_spincutter(nC3GBwiZZa, LKGUCQJ3uJZqw14NWmJ01r, rkXnbnjc4dXdc)
{
} ;



