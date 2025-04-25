
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_atfighter_chainbrake(b5auQt29ZJBGNtERo)
{
 if(!b5auQt29ZJBGNtERo) return false; 
 local WCDjwRh3IWyTM_NtayN5VXM = b5auQt29ZJBGNtERo.sq_IsUseSkill(230); 
 if(WCDjwRh3IWyTM_NtayN5VXM) 
 {
 b5auQt29ZJBGNtERo.sq_IntVectClear();
 b5auQt29ZJBGNtERo.sq_IntVectPush(0); 
 b5auQt29ZJBGNtERo.sq_AddSetStatePacket(230, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atfighter_chainbrake(b5auQt29ZJBGNtERo)
{
 if(!b5auQt29ZJBGNtERo) return false; 
 local WCDjwRh3IWyTM_NtayN5VXM = b5auQt29ZJBGNtERo.sq_GetState(); 
 if(WCDjwRh3IWyTM_NtayN5VXM == STATE_STAND) 
 return true; 
 if(WCDjwRh3IWyTM_NtayN5VXM == STATE_ATTACK) 
 {
 return b5auQt29ZJBGNtERo.sq_IsCommandEnable(230); 
 }
 return true; 
} ;

 
function onSetState_atfighter_chainbrake(Lmb1IBm0hXY6DPN, YpaXlNk63NMAawV1szMUwYl, o5VdaHELFpH1U9ZZ, vMANHUtMTDpA)
{
 if(!Lmb1IBm0hXY6DPN) return; 
 Lmb1IBm0hXY6DPN.sq_StopMove(); 
 Lmb1IBm0hXY6DPN.sq_ZStop(); 
 local FVKCAd14Dts6N1 = Lmb1IBm0hXY6DPN.sq_GetVectorData(o5VdaHELFpH1U9ZZ, 0); 
 Lmb1IBm0hXY6DPN.setSkillSubState(FVKCAd14Dts6N1); 
 Lmb1IBm0hXY6DPN.getVar().setBool(0, false); 
 switch(FVKCAd14Dts6N1)
 {
 case 0: 
 Lmb1IBm0hXY6DPN.getVar().clear_obj_vector(); 
 Lmb1IBm0hXY6DPN.sq_SetCurrentAnimation(177);
 Lmb1IBm0hXY6DPN.getVar("count").clear_vector(); 
 Lmb1IBm0hXY6DPN.getVar("count").push_vector(Lmb1IBm0hXY6DPN.sq_GetLevelData(230, 0, sq_GetSkillLevel(Lmb1IBm0hXY6DPN, 230))); 
 if(Lmb1IBm0hXY6DPN.sq_IsMyControlObject())
 {
 
 Lmb1IBm0hXY6DPN.sq_StartWrite();
 Lmb1IBm0hXY6DPN.sq_WriteDword(230); 
 Lmb1IBm0hXY6DPN.sq_WriteDword(1); 
 Lmb1IBm0hXY6DPN.sq_WriteDword(Lmb1IBm0hXY6DPN.sq_GetBonusRateWithPassive(230, YpaXlNk63NMAawV1szMUwYl, 1, 1.0)); 
 Lmb1IBm0hXY6DPN.sq_WriteDword(Lmb1IBm0hXY6DPN.sq_GetBonusRateWithPassive(230, YpaXlNk63NMAawV1szMUwYl, 2, 1.0)); 
 Lmb1IBm0hXY6DPN.sq_SendCreatePassiveObjectPacket(24375, 0, 0, 0, 0);
 }
 break;
 case 1: 
 Lmb1IBm0hXY6DPN.sq_SetCurrentAnimation(178);
 Lmb1IBm0hXY6DPN.sq_SetCurrentAttackInfo(101);
 sq_SetAddWeaponDamage(sq_GetCurrentAttackInfo(Lmb1IBm0hXY6DPN), false); 
 Lmb1IBm0hXY6DPN.getVar().clear_vector(); 
 Lmb1IBm0hXY6DPN.getVar().push_vector(Lmb1IBm0hXY6DPN.getXPos()); 
 Lmb1IBm0hXY6DPN.getVar().push_vector(150); 
 break;
 case 2: 
 Lmb1IBm0hXY6DPN.sq_SetCurrentAnimation(179);
 Lmb1IBm0hXY6DPN.getVar("count").set_vector(0, Lmb1IBm0hXY6DPN.getVar("count").get_vector(0) - 1); 
 local CdeQ5bSIOksjOgU = Lmb1IBm0hXY6DPN.sq_GetVectorData(o5VdaHELFpH1U9ZZ, 1); 
 local j7xnXqShvK = Lmb1IBm0hXY6DPN.sq_GetVectorData(o5VdaHELFpH1U9ZZ, 2); 
 local PShLLYZ4oQP = Lmb1IBm0hXY6DPN.sq_GetVectorData(o5VdaHELFpH1U9ZZ, 3); 
 Lmb1IBm0hXY6DPN.getVar().clear_vector(); 
 local G0y8zhBaU5q1_xzzAWF = Lmb1IBm0hXY6DPN.getVar(); 
 G0y8zhBaU5q1_xzzAWF.push_vector(Lmb1IBm0hXY6DPN.getXPos()); 
 G0y8zhBaU5q1_xzzAWF.push_vector(Lmb1IBm0hXY6DPN.getYPos()); 
 G0y8zhBaU5q1_xzzAWF.push_vector(CdeQ5bSIOksjOgU); 
 G0y8zhBaU5q1_xzzAWF.push_vector(j7xnXqShvK); 
 G0y8zhBaU5q1_xzzAWF.push_vector(PShLLYZ4oQP); 
 if(Lmb1IBm0hXY6DPN.getXPos() > CdeQ5bSIOksjOgU) 
 Lmb1IBm0hXY6DPN.setDirection(ENUM_DIRECTION_LEFT); 
 else
 Lmb1IBm0hXY6DPN.setDirection(ENUM_DIRECTION_RIGHT); 
 break;
 case 3: 
 Lmb1IBm0hXY6DPN.sq_SetCurrentAnimation(178);
 Lmb1IBm0hXY6DPN.sq_SetCurrentAttackInfo(101);
 sq_SetAddWeaponDamage(sq_GetCurrentAttackInfo(Lmb1IBm0hXY6DPN), false); 
 break;
 case 4: 
 Lmb1IBm0hXY6DPN.sq_SetCurrentAnimation(180);
 local sl5VpQxSHa = Lmb1IBm0hXY6DPN.getZPos(); 
 Lmb1IBm0hXY6DPN.getVar().clear_vector(); 
 Lmb1IBm0hXY6DPN.getVar().push_vector(sl5VpQxSHa); 
 Lmb1IBm0hXY6DPN.getVar().push_vector(sl5VpQxSHa + 30); 
 Lmb1IBm0hXY6DPN.sq_PlaySound("R_MF_CHAINBRAKE_02"); 
 if(Lmb1IBm0hXY6DPN.sq_IsMyControlObject())
 {
 Lmb1IBm0hXY6DPN.sq_StartWrite();
 Lmb1IBm0hXY6DPN.sq_WriteDword(230); 
 Lmb1IBm0hXY6DPN.sq_WriteDword(2); 
 Lmb1IBm0hXY6DPN.sq_WriteDword(Lmb1IBm0hXY6DPN.sq_GetBonusRateWithPassive(230, YpaXlNk63NMAawV1szMUwYl, 3, 1.0)); 
 Lmb1IBm0hXY6DPN.sq_SendCreatePassiveObjectPacket(24375, 0, 0, 0, 0);
 }
 break;
 case 5: 
 Lmb1IBm0hXY6DPN.sq_SetCurrentAnimation(181);
 local mQlOnT1i0QnhQQf = (Lmb1IBm0hXY6DPN.getDirection() == ENUM_DIRECTION_LEFT)?800:0; 
 local xwjsIFUkpVaJXVwcsIIkbDC = 270; 
 local SaFxU3cdVP6Qh_OOC1gRaw = Lmb1IBm0hXY6DPN.getObjectManager(); 
 local tg23ZXBsWuWRf_e = SaFxU3cdVP6Qh_OOC1gRaw.getFieldXPos(mQlOnT1i0QnhQQf, ENUM_DRAWLAYER_NORMAL); 
 local fjNCwHE6d_MbvgocvBP6R = SaFxU3cdVP6Qh_OOC1gRaw.getFieldZPos(xwjsIFUkpVaJXVwcsIIkbDC, Lmb1IBm0hXY6DPN.getYPos(), ENUM_DRAWLAYER_NORMAL); 
 Lmb1IBm0hXY6DPN.getVar().clear_vector(); 
 local G0y8zhBaU5q1_xzzAWF = Lmb1IBm0hXY6DPN.getVar(); 
 G0y8zhBaU5q1_xzzAWF.push_vector(Lmb1IBm0hXY6DPN.getXPos()); 
 G0y8zhBaU5q1_xzzAWF.push_vector(Lmb1IBm0hXY6DPN.getZPos()); 
 G0y8zhBaU5q1_xzzAWF.push_vector(tg23ZXBsWuWRf_e); 
 G0y8zhBaU5q1_xzzAWF.push_vector(fjNCwHE6d_MbvgocvBP6R); 
 break;
 case 6: 
 Lmb1IBm0hXY6DPN.sq_SetCurrentAnimation(182);
 break;
 case 7: 
 Lmb1IBm0hXY6DPN.sq_SetCurrentAnimation(183);
 Lmb1IBm0hXY6DPN.sq_SetCurrentAttackInfo(102);
 local f8rdieuDVOXCjHrN66ju = Lmb1IBm0hXY6DPN.sq_GetBonusRateWithPassive(230, YpaXlNk63NMAawV1szMUwYl, 4, 1.0); 
 Lmb1IBm0hXY6DPN.sq_SetCurrentAttackBonusRate(f8rdieuDVOXCjHrN66ju); 
 sq_CreateDrawOnlyObject(Lmb1IBm0hXY6DPN, "character/fighter/effect/animation/atchainbrake/finishatkeffb_01.ani", ENUM_DRAWLAYER_NORMAL, true); 
 local uuGvBGaoo_T = sq_Atan2(
 sq_Abs(Lmb1IBm0hXY6DPN.getVar().get_vector(3)).tofloat(),
 sq_Abs(sq_GetDistancePos(Lmb1IBm0hXY6DPN.getVar().get_vector(0), Lmb1IBm0hXY6DPN.getDirection(), 30)- Lmb1IBm0hXY6DPN.getVar().get_vector(2)).tofloat()
 )/-1; 
 
 local Kyy58yAlaOoPn = sq_AddDrawOnlyAniFromParent(Lmb1IBm0hXY6DPN, "character/fighter/effect/animation/atchainbrake/nnfinish_atk_effa.ani", -100, 0, 35); 
 local RidOuClE8ZjKahBxTI = sq_AddDrawOnlyAniFromParent(Lmb1IBm0hXY6DPN, "character/fighter/effect/animation/atchainbrake/atkeffadd_eff_a.ani", -10, 0, 5); 
 
 sq_moveWithParent(Lmb1IBm0hXY6DPN, Kyy58yAlaOoPn);
 sq_moveWithParent(Lmb1IBm0hXY6DPN, RidOuClE8ZjKahBxTI);
 
 sq_SetCustomRotate(Kyy58yAlaOoPn, uuGvBGaoo_T+ sq_ToRadian(-15.0));
 sq_SetCustomRotate(RidOuClE8ZjKahBxTI, uuGvBGaoo_T);
 local OEQMZNKIHFjN4 = Kyy58yAlaOoPn.getCurrentAnimation(); 
 if(OEQMZNKIHFjN4)
 OEQMZNKIHFjN4.setImageRateFromOriginal(1.7, 1.0); 
 break;
 case 8: 
 Lmb1IBm0hXY6DPN.sq_SetCurrentAnimation(184);
 break;
 }
 Lmb1IBm0hXY6DPN.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 switch(FVKCAd14Dts6N1)
 {
 case 1:
 case 2:
 local cy2VQPSHr7dUoCavJ4WxCBMp = 2; 
 local GhrRJPVsXVqCn3MxG = Lmb1IBm0hXY6DPN.sq_GetDelaySum(); 
 if(FVKCAd14Dts6N1 == 2)
 {
 GhrRJPVsXVqCn3MxG = Lmb1IBm0hXY6DPN.getVar().get_vector(4); 
 local nEeYBdoBddQ3luO = sqrt((Lmb1IBm0hXY6DPN.getVar().get_vector(0) - Lmb1IBm0hXY6DPN.getVar().get_vector(2)) * (Lmb1IBm0hXY6DPN.getVar().get_vector(0) - Lmb1IBm0hXY6DPN.getVar().get_vector(2)) +
 (Lmb1IBm0hXY6DPN.getVar().get_vector(1) - Lmb1IBm0hXY6DPN.getVar().get_vector(3)) * (Lmb1IBm0hXY6DPN.getVar().get_vector(1) - Lmb1IBm0hXY6DPN.getVar().get_vector(3))); 
 cy2VQPSHr7dUoCavJ4WxCBMp = (nEeYBdoBddQ3luO/80+1).tointeger(); 
 }
 
 Lmb1IBm0hXY6DPN.getVar().clear_timer_vector();
 Lmb1IBm0hXY6DPN.getVar().push_timer_vector();
 local LabeggkahMqEi0EM = Lmb1IBm0hXY6DPN.getVar().get_timer_vector(0);
 LabeggkahMqEi0EM.setParameter(GhrRJPVsXVqCn3MxG / cy2VQPSHr7dUoCavJ4WxCBMp, cy2VQPSHr7dUoCavJ4WxCBMp); 
 LabeggkahMqEi0EM.resetInstant(0); 
 LabeggkahMqEi0EM.setEventOnStart(true); 
 break;
 }
 
 sq_SetCustomDamageType(Lmb1IBm0hXY6DPN, true, 2); 
} ;

 
function onProc_atfighter_chainbrake(Vp2CXoakpmt2lR1)
{
 if(!Vp2CXoakpmt2lR1) return;
 local Bm7DMxix1Vu6D8i9iiFPwnW = Vp2CXoakpmt2lR1.getCurrentAnimation(); 
 local HCO8Wy4ebnQ7YQgj2mZN2rYq = sq_GetCurrentTime(Bm7DMxix1Vu6D8i9iiFPwnW); 
 local tSqJpSgNw_3F8Z = Bm7DMxix1Vu6D8i9iiFPwnW.getDelaySum(false); 
 local Z3Qtn9cIXdIEYTXmubLcz = Vp2CXoakpmt2lR1.getVar(); 
 local ztFeqzWsRXY56MTkE8Q4ixW = Vp2CXoakpmt2lR1.getSkillSubState();
 switch(ztFeqzWsRXY56MTkE8Q4ixW)
 {
 case 1:
 case 2:
 
 local DaijGuigpBIs = Vp2CXoakpmt2lR1.getVar().get_timer_vector(0);
 if(DaijGuigpBIs)
 if(DaijGuigpBIs.isOnEvent(sq_GetObjectTime(Vp2CXoakpmt2lR1)) == true)
 {
 local l_16mPGNQbCCHCAC = sq_AddDrawOnlyAniFromParent(Vp2CXoakpmt2lR1, "character/fighter/effect/animation/atchainbrake/movetop_01.ani", 0, -1, 0); 
 local OZEYxJeqbfEiD9oo = l_16mPGNQbCCHCAC.getCurrentAnimation();
 if(OZEYxJeqbfEiD9oo)
 OZEYxJeqbfEiD9oo.addLayerAnimation(-1, sq_CreateAnimation("", "character/fighter/effect/animation/atchainbrake/nnmovebot.ani"), true); 
 }
 break;
 }
 switch(ztFeqzWsRXY56MTkE8Q4ixW)
 {
 case 1:
 if(Vp2CXoakpmt2lR1.getVar().size_vector() > 0)
 {
 local f8nNOSHw9FdvMsnzXoGADZ9H = Vp2CXoakpmt2lR1.getVar().get_vector(1); 
 local wdwIGfREHYWfkV8Gxs3JYm2 = sq_GetDistancePos(Vp2CXoakpmt2lR1.getVar().get_vector(0),
 Vp2CXoakpmt2lR1.getDirection(),
 sq_GetUniformVelocity(0, f8nNOSHw9FdvMsnzXoGADZ9H, HCO8Wy4ebnQ7YQgj2mZN2rYq, tSqJpSgNw_3F8Z)); 
 if(Vp2CXoakpmt2lR1.isMovablePos(wdwIGfREHYWfkV8Gxs3JYm2, Vp2CXoakpmt2lR1.getYPos())) 
 sq_setCurrentAxisPos(Vp2CXoakpmt2lR1, 0, wdwIGfREHYWfkV8Gxs3JYm2); 
 else 
 {
 local JLLcmtfMP2U = sq_Abs(wdwIGfREHYWfkV8Gxs3JYm2 - Vp2CXoakpmt2lR1.getXPos());
 if(JLLcmtfMP2U != 0)
 Vp2CXoakpmt2lR1.getVar().set_vector(1, (f8nNOSHw9FdvMsnzXoGADZ9H > 0) ? f8nNOSHw9FdvMsnzXoGADZ9H - JLLcmtfMP2U : f8nNOSHw9FdvMsnzXoGADZ9H + JLLcmtfMP2U);
 }
 }
 break;
 case 2:
 if(Vp2CXoakpmt2lR1.getVar().size_vector() > 0)
 {
 tSqJpSgNw_3F8Z = Z3Qtn9cIXdIEYTXmubLcz.get_vector(4); 
 local wdwIGfREHYWfkV8Gxs3JYm2 = sq_GetUniformVelocity(Z3Qtn9cIXdIEYTXmubLcz.get_vector(0), Z3Qtn9cIXdIEYTXmubLcz.get_vector(2), HCO8Wy4ebnQ7YQgj2mZN2rYq, tSqJpSgNw_3F8Z); 
 local _ulp6ZVv73W = sq_GetUniformVelocity(Z3Qtn9cIXdIEYTXmubLcz.get_vector(1), Z3Qtn9cIXdIEYTXmubLcz.get_vector(3), HCO8Wy4ebnQ7YQgj2mZN2rYq, tSqJpSgNw_3F8Z); 
 sq_setCurrentAxisPos(Vp2CXoakpmt2lR1, 0, wdwIGfREHYWfkV8Gxs3JYm2); 
 sq_setCurrentAxisPos(Vp2CXoakpmt2lR1, 1, _ulp6ZVv73W); 
 if(HCO8Wy4ebnQ7YQgj2mZN2rYq >= tSqJpSgNw_3F8Z && Vp2CXoakpmt2lR1.sq_IsMyControlObject()) 
 {
 Vp2CXoakpmt2lR1.sq_IntVectClear();
 Vp2CXoakpmt2lR1.sq_IntVectPush(3); 
 Vp2CXoakpmt2lR1.sq_AddSetStatePacket(230, STATE_PRIORITY_USER, true); 
 }
 }
 break;
 case 4:
 local UThyP9__Y6Djf7 = sq_GetUniformVelocity(Z3Qtn9cIXdIEYTXmubLcz.get_vector(0), Z3Qtn9cIXdIEYTXmubLcz.get_vector(1), HCO8Wy4ebnQ7YQgj2mZN2rYq, tSqJpSgNw_3F8Z); 
 sq_setCurrentAxisPos(Vp2CXoakpmt2lR1, 2, UThyP9__Y6Djf7); 
 break;
 case 5:
 HCO8Wy4ebnQ7YQgj2mZN2rYq = Vp2CXoakpmt2lR1.sq_GetStateTimer(); 
 tSqJpSgNw_3F8Z = 250; 
 local wdwIGfREHYWfkV8Gxs3JYm2 = sq_GetUniformVelocity(Z3Qtn9cIXdIEYTXmubLcz.get_vector(0), Z3Qtn9cIXdIEYTXmubLcz.get_vector(2), HCO8Wy4ebnQ7YQgj2mZN2rYq, tSqJpSgNw_3F8Z); 
 local UThyP9__Y6Djf7 = sq_GetUniformVelocity(Z3Qtn9cIXdIEYTXmubLcz.get_vector(1), Z3Qtn9cIXdIEYTXmubLcz.get_vector(3), HCO8Wy4ebnQ7YQgj2mZN2rYq, tSqJpSgNw_3F8Z); 
 sq_setCurrentAxisPos(Vp2CXoakpmt2lR1, 0, wdwIGfREHYWfkV8Gxs3JYm2); 
 sq_setCurrentAxisPos(Vp2CXoakpmt2lR1, 2, UThyP9__Y6Djf7); 
 if(HCO8Wy4ebnQ7YQgj2mZN2rYq >= tSqJpSgNw_3F8Z && Vp2CXoakpmt2lR1.sq_IsMyControlObject()) 
 {
 Vp2CXoakpmt2lR1.sq_IntVectClear();
 Vp2CXoakpmt2lR1.sq_IntVectPush(6); 
 Vp2CXoakpmt2lR1.sq_AddSetStatePacket(230, STATE_PRIORITY_USER, true); 
 }
 break;
 case 7:
 tSqJpSgNw_3F8Z = 130; 
 local PzPCR_TEgQDxVZ_D = Z3Qtn9cIXdIEYTXmubLcz.get_vector(2); 
 local lfXKRilKir9mj = sq_GetDistancePos(Z3Qtn9cIXdIEYTXmubLcz.get_vector(0), Vp2CXoakpmt2lR1.getDirection(), 30); 
 local wdwIGfREHYWfkV8Gxs3JYm2 = sq_GetUniformVelocity(PzPCR_TEgQDxVZ_D, lfXKRilKir9mj, HCO8Wy4ebnQ7YQgj2mZN2rYq, tSqJpSgNw_3F8Z); 
 local UThyP9__Y6Djf7 = sq_GetUniformVelocity(Z3Qtn9cIXdIEYTXmubLcz.get_vector(3), 0, HCO8Wy4ebnQ7YQgj2mZN2rYq, tSqJpSgNw_3F8Z); 
 sq_setCurrentAxisPos(Vp2CXoakpmt2lR1, 0, wdwIGfREHYWfkV8Gxs3JYm2); 
 sq_setCurrentAxisPos(Vp2CXoakpmt2lR1, 2, UThyP9__Y6Djf7); 
 if(HCO8Wy4ebnQ7YQgj2mZN2rYq >= tSqJpSgNw_3F8Z && Vp2CXoakpmt2lR1.sq_IsMyControlObject()) 
 {
 
 Vp2CXoakpmt2lR1.sq_StartWrite();
 Vp2CXoakpmt2lR1.sq_WriteDword(230); 
 Vp2CXoakpmt2lR1.sq_WriteDword(3); 
 Vp2CXoakpmt2lR1.sq_WriteDword(Vp2CXoakpmt2lR1.sq_GetBonusRateWithPassive(230, 230, 5, 1.0)); 
 Vp2CXoakpmt2lR1.sq_WriteBool(true); 
 Vp2CXoakpmt2lR1.sq_SendCreatePassiveObjectPacket(24375, 0, 0, 0, 0);
 Vp2CXoakpmt2lR1.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 }
 break;
 }
} ;

 
function onProcCon_atfighter_chainbrake(aaXXqN_BW4JMJP61W477FeDW)
{
 if(!aaXXqN_BW4JMJP61W477FeDW) return;
 local CZGUzDnESHSnzhaE8tqxZb = aaXXqN_BW4JMJP61W477FeDW.getSkillSubState();
 switch(CZGUzDnESHSnzhaE8tqxZb)
 {
 case 2:
 case 3:
 aaXXqN_BW4JMJP61W477FeDW.setSkillCommandEnable(230, true); 
 if(aaXXqN_BW4JMJP61W477FeDW.sq_IsEnterSkill(230) != -1)
 {
 aaXXqN_BW4JMJP61W477FeDW.sq_IntVectClear();
 aaXXqN_BW4JMJP61W477FeDW.sq_IntVectPush(4); 
 aaXXqN_BW4JMJP61W477FeDW.sq_AddSetStatePacket(230, STATE_PRIORITY_USER, true); 
 }
 break;
 }
} ;

 
function getScrollBasisPos_atfighter_chainbrake(Ccp7980CcLaN9X)
{
 if(!Ccp7980CcLaN9X) return false;
 if(!Ccp7980CcLaN9X.sq_IsMyControlObject()) return false;
 local FvcayOCdq8T = Ccp7980CcLaN9X.getSkillSubState();
 switch(FvcayOCdq8T)
 {
 case 5:
 case 6:
 case 7:
 Ccp7980CcLaN9X.sq_SetCameraScrollPosition(Ccp7980CcLaN9X.getVar().get_vector(0), Ccp7980CcLaN9X.getYPos(), 0); 
 return true;
 }
 return false;
} ;

function onAttack_atfighter_chainbrake(Ccp7980CcLaN9X, FvcayOCdq8T, smf_M0sc0lrxE4i2EQaFJ, sOsLhWM98_csGd7ZsNHj5oo1)
{
 if(!Ccp7980CcLaN9X) return;
 local pkZSWHLBisUT7WSvLatM = Ccp7980CcLaN9X.getSkillSubState();
 switch(pkZSWHLBisUT7WSvLatM)
 {
 case 1:
 case 3:
 if(!FvcayOCdq8T.isObjectType(OBJECTTYPE_ACTIVE))return; 
 local gVCAtdMkKCha9r = true; 
 if(sq_IsHoldable(Ccp7980CcLaN9X, FvcayOCdq8T) && sq_IsGrabable(Ccp7980CcLaN9X, FvcayOCdq8T) && !sq_IsFixture(FvcayOCdq8T)) 
 {
 
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(FvcayOCdq8T, "character/atfighter/chainbrake/ap_chainbrake.nut")
 && !Ccp7980CcLaN9X.getVar().is_obj_vector(FvcayOCdq8T))
 {
 local yhnqRgv0lttd = CNSquirrelAppendage.sq_AppendAppendage(FvcayOCdq8T, Ccp7980CcLaN9X, 230, false, "character/atfighter/chainbrake/ap_chainbrake.nut", true);
 sq_HoldAndDelayDie(FvcayOCdq8T, Ccp7980CcLaN9X, true, true, true, 0, 0, sq_GetOppositeDirection(Ccp7980CcLaN9X.getDirection()), yhnqRgv0lttd); 
 onSendAttack_atfighter_chainbrake(Ccp7980CcLaN9X, FvcayOCdq8T, 1); 
 }
 else
 gVCAtdMkKCha9r = false; 
 }
 else
 onSendAttack_atfighter_chainbrake(Ccp7980CcLaN9X, FvcayOCdq8T, 2); 
 if(Ccp7980CcLaN9X.getVar().getBool(0) == false && gVCAtdMkKCha9r) 
 {
 Ccp7980CcLaN9X.getVar().setBool(0, true); 
 sq_SetMyShake(Ccp7980CcLaN9X, 6, 200); 
 sq_CreateDrawOnlyObject(Ccp7980CcLaN9X, "character/fighter/effect/animation/atchainbrake/nndashhit.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 Ccp7980CcLaN9X.getVar().push_obj_vector(FvcayOCdq8T); 
 break;
 }
} ;

function onKeyFrameFlag_atfighter_chainbrake(_qV7y1mSVObiiEzFP, kfa9we4p0FvH9lD)
{
 if(!_qV7y1mSVObiiEzFP) return false;
 local LIQb5jU1nNZK = _qV7y1mSVObiiEzFP.getSkillSubState();
 switch(LIQb5jU1nNZK)
 {
 case 8:
 if(kfa9we4p0FvH9lD == 1 && _qV7y1mSVObiiEzFP.sq_IsMyControlObject())
 {
 _qV7y1mSVObiiEzFP.sq_StartWrite();
 _qV7y1mSVObiiEzFP.sq_WriteDword(230); 
 _qV7y1mSVObiiEzFP.sq_WriteDword(3); 
 _qV7y1mSVObiiEzFP.sq_WriteDword(_qV7y1mSVObiiEzFP.sq_GetBonusRateWithPassive(230, 230, 5, 1.0)); 
 _qV7y1mSVObiiEzFP.sq_WriteBool(false); 
 _qV7y1mSVObiiEzFP.sq_SendCreatePassiveObjectPacket(24375, 0, 0, 0, 0);
 }
 break;
 case 4:
 if(kfa9we4p0FvH9lD == 1)
 sq_SetMyShake(_qV7y1mSVObiiEzFP, 7, 300); 
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_atfighter_chainbrake(AdssrwWAJx1iEHlcYFvcyJ)
{
 if(!AdssrwWAJx1iEHlcYFvcyJ) return;
 if(!AdssrwWAJx1iEHlcYFvcyJ.sq_IsMyControlObject()) return;
 local Gf3CehPfZwSnBxuqI7qdg = AdssrwWAJx1iEHlcYFvcyJ.getSkillSubState(); 
 switch(Gf3CehPfZwSnBxuqI7qdg)
 {
 case 1:
 if(AdssrwWAJx1iEHlcYFvcyJ.getVar().getBool(0) == true
 && AdssrwWAJx1iEHlcYFvcyJ.getVar("count").get_vector(0)>0) 
 {
 
 local jvl9UXckHEJQmMqiga6785Ki = searchTargetAndSetState_atfighter_chainbrake(AdssrwWAJx1iEHlcYFvcyJ); 
 if(!jvl9UXckHEJQmMqiga6785Ki) 
 {
 AdssrwWAJx1iEHlcYFvcyJ.sq_IntVectClear();
 AdssrwWAJx1iEHlcYFvcyJ.sq_IntVectPush(4); 
 AdssrwWAJx1iEHlcYFvcyJ.sq_AddSetStatePacket(230, STATE_PRIORITY_USER, true); 
 }
 return;
 }
 
 
 AdssrwWAJx1iEHlcYFvcyJ.sq_IntVectClear();
 AdssrwWAJx1iEHlcYFvcyJ.sq_IntVectPush(8); 
 AdssrwWAJx1iEHlcYFvcyJ.sq_AddSetStatePacket(230, STATE_PRIORITY_USER, true); 
 break;
 case 3: 
 if(AdssrwWAJx1iEHlcYFvcyJ.getVar("count").get_vector(0) > 0) 
 {
 
 local jvl9UXckHEJQmMqiga6785Ki = searchTargetAndSetState_atfighter_chainbrake(AdssrwWAJx1iEHlcYFvcyJ); 
 if(jvl9UXckHEJQmMqiga6785Ki) return; 
 }
 
 AdssrwWAJx1iEHlcYFvcyJ.sq_IntVectClear();
 AdssrwWAJx1iEHlcYFvcyJ.sq_IntVectPush(4); 
 AdssrwWAJx1iEHlcYFvcyJ.sq_AddSetStatePacket(230, STATE_PRIORITY_USER, true); 
 break;
 case 2: 
 case 7:
 break;
 case 8:
 AdssrwWAJx1iEHlcYFvcyJ.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 default:
 AdssrwWAJx1iEHlcYFvcyJ.sq_IntVectClear();
 AdssrwWAJx1iEHlcYFvcyJ.sq_IntVectPush(Gf3CehPfZwSnBxuqI7qdg + 1); 
 AdssrwWAJx1iEHlcYFvcyJ.sq_AddSetStatePacket(230, STATE_PRIORITY_USER, true); 
 break;
 }
} ;

 
function onEndState_atfighter_chainbrake(H1Nsp49mua, YAvHbZRvEK5EG)
{
 if(!H1Nsp49mua) return;
 if(YAvHbZRvEK5EG != 230)
 {
 local S7SfqbsNQZREQD = H1Nsp49mua.getSkillSubState();
 if(S7SfqbsNQZREQD == 7 && YAvHbZRvEK5EG == STATE_STAND) 
 sq_SimpleMoveToNearMovablePos(H1Nsp49mua, 200); 
 sq_SetCustomDamageType(H1Nsp49mua, false, 2); 
 }
} ;

 
function searchTargetAndSetState_atfighter_chainbrake(H1Nsp49mua)
{
 if(!H1Nsp49mua) return false;
 local YAvHbZRvEK5EG = 600; 
 local S7SfqbsNQZREQD = H1Nsp49mua.getXPos(); 
 local DCLAuL0zyiL1S1eIh = H1Nsp49mua.getYPos(); 
 local wWNge5FZR9Rw = H1Nsp49mua.getObjectManager(); 
 for(local hK1ZBtLnlOTv6pcWBferzbq = 0; hK1ZBtLnlOTv6pcWBferzbq < wWNge5FZR9Rw.getCollisionObjectNumber(); hK1ZBtLnlOTv6pcWBferzbq++)
 {
 local lPDBgtKK3dmwP9ulnW = wWNge5FZR9Rw.getCollisionObject(hK1ZBtLnlOTv6pcWBferzbq); 
 if(lPDBgtKK3dmwP9ulnW 
 && H1Nsp49mua.isEnemy(lPDBgtKK3dmwP9ulnW) 
 && lPDBgtKK3dmwP9ulnW.isObjectType(OBJECTTYPE_ACTIVE) 
 && lPDBgtKK3dmwP9ulnW.isInDamagableState(H1Nsp49mua) 
 && !CNSquirrelAppendage.sq_IsAppendAppendage(lPDBgtKK3dmwP9ulnW, "character/atfighter/chainbrake/ap_chainbrake.nut") 
 && !H1Nsp49mua.getVar().is_obj_vector(lPDBgtKK3dmwP9ulnW)) 
 {
 local CpL5DiiIFkMlDUxbtl = lPDBgtKK3dmwP9ulnW.getXPos(); 
 local orKGlSSaZG6AYLBitxR_Y6b = lPDBgtKK3dmwP9ulnW.getYPos(); 
 
 if(sq_GetDistance(S7SfqbsNQZREQD, DCLAuL0zyiL1S1eIh, CpL5DiiIFkMlDUxbtl, orKGlSSaZG6AYLBitxR_Y6b, true) <= YAvHbZRvEK5EG
 && sq_GetZPos(lPDBgtKK3dmwP9ulnW) <= 120) 
 {
 H1Nsp49mua.sq_IntVectClear();
 H1Nsp49mua.sq_IntVectPush(2); 
 H1Nsp49mua.sq_IntVectPush(CpL5DiiIFkMlDUxbtl); 
 H1Nsp49mua.sq_IntVectPush(orKGlSSaZG6AYLBitxR_Y6b); 
 H1Nsp49mua.sq_IntVectPush(130); 
 H1Nsp49mua.sq_AddSetStatePacket(230, STATE_PRIORITY_USER, true); 
 return true;
 }
 }
 }
 return false;
} ;

function onSendAttack_atfighter_chainbrake(XImshNIhIqkXK, pm5lbAlakKyda, lEOHAhtpAZfosT)
{
 local tmhccsZJn4tGnuO = sq_GetCNRDObjectToActiveObject(pm5lbAlakKyda); 
 local eTf34zEql_K = onGetMyPassiveObject_My(XImshNIhIqkXK, 24375, 230, 1); 
 if(eTf34zEql_K && tmhccsZJn4tGnuO)
 if(!tmhccsZJn4tGnuO.isDead()) 
 {
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(eTf34zEql_K), XImshNIhIqkXK.sq_GetBonusRateWithPassive(230, 230, lEOHAhtpAZfosT, 1.0)); 
 if(eTf34zEql_K.isMyControlObject())
 sq_SendHitObjectPacket(eTf34zEql_K, tmhccsZJn4tGnuO, 0, 0, sq_GetHeightObject(tmhccsZJn4tGnuO) / 2); 
 }
} ;


