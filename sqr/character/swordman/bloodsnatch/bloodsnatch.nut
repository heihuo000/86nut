
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_swordman_bloodsnatch(zLzzxrpnDWJ3ADROPE)
{
 if(!zLzzxrpnDWJ3ADROPE) return false; 
 local Xm47UdGwFpDGa = zLzzxrpnDWJ3ADROPE.sq_IsUseSkill(233); 
 if(Xm47UdGwFpDGa) 
 {
 
 zLzzxrpnDWJ3ADROPE.sq_IntVectClear();
 zLzzxrpnDWJ3ADROPE.sq_IntVectPush(0); 
 zLzzxrpnDWJ3ADROPE.sq_AddSetStatePacket(233, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_swordman_bloodsnatch(zLzzxrpnDWJ3ADROPE)
{
 if(!zLzzxrpnDWJ3ADROPE) return false; 
 local Xm47UdGwFpDGa = zLzzxrpnDWJ3ADROPE.sq_GetState(); 
 if(Xm47UdGwFpDGa == STATE_STAND) 
 return true; 
 if(Xm47UdGwFpDGa == STATE_ATTACK) 
 {
 return zLzzxrpnDWJ3ADROPE.sq_IsCommandEnable(233); 
 }
 return true; 
} ;


 
function onSetState_swordman_bloodsnatch(HdUyQBJhpTnfni_1, w0LtEd80Iz, xpSfZBLENmjrapbOH7VTpbj, dTeq_byXzC0M)
{
 if(!HdUyQBJhpTnfni_1) return; 
 local pxWhg3lEGbV4YpZDHELZQ8t = HdUyQBJhpTnfni_1.sq_GetVectorData(xpSfZBLENmjrapbOH7VTpbj, 0); 
 HdUyQBJhpTnfni_1.setSkillSubState(pxWhg3lEGbV4YpZDHELZQ8t); 
 HdUyQBJhpTnfni_1.sq_StopMove(); 
 HdUyQBJhpTnfni_1.sq_ZStop(); 
 HdUyQBJhpTnfni_1.getVar().setBool(1, false); 
 switch(pxWhg3lEGbV4YpZDHELZQ8t)
 {
 case 0:
 HdUyQBJhpTnfni_1.getVar().setBool(0, false); 
 HdUyQBJhpTnfni_1.sq_SetCurrentAnimation(135); 
 break;
 case 1:
 HdUyQBJhpTnfni_1.sq_SetCurrentAnimation(136); 
 
 sq_AddDrawOnlyAniFromParent(HdUyQBJhpTnfni_1, "character/swordman/effect/animation/bloodsnatch/bloodsnatchdash_dust.ani", 0, -1, 0);
 
 HdUyQBJhpTnfni_1.getVar().clear_vector();
 HdUyQBJhpTnfni_1.getVar().push_vector(220); 
 HdUyQBJhpTnfni_1.getVar().push_vector(HdUyQBJhpTnfni_1.getXPos()); 
 HdUyQBJhpTnfni_1.getVar().push_vector(30); 
 break;
 case 2:
 HdUyQBJhpTnfni_1.sq_SetCurrentAnimation(137); 
 HdUyQBJhpTnfni_1.sq_SetCurrentAttackInfo(90); 
 HdUyQBJhpTnfni_1.sq_SetCurrentAttackBonusRate(HdUyQBJhpTnfni_1.sq_GetBonusRateWithPassive(233, 233, 0, 1.0)); 
 
 HdUyQBJhpTnfni_1.getVar().clear_vector();
 HdUyQBJhpTnfni_1.getVar().push_vector(220); 
 HdUyQBJhpTnfni_1.getVar().push_vector(HdUyQBJhpTnfni_1.getXPos()); 
 HdUyQBJhpTnfni_1.getVar().push_vector(70); 
 break;
 case 3:
 HdUyQBJhpTnfni_1.sq_SetCurrentAnimation(138); 
 HdUyQBJhpTnfni_1.sq_SetCurrentAttackInfo(90); 
 HdUyQBJhpTnfni_1.sq_SetCurrentAttackBonusRate(HdUyQBJhpTnfni_1.sq_GetBonusRateWithPassive(233, 233, 0, 1.0)); 
 break;
 case 4:
 HdUyQBJhpTnfni_1.sq_SetCurrentAnimation(139); 
 HdUyQBJhpTnfni_1.getVar().clear_vector();
 local SEkabAjonHYRatCxMmk7u = HdUyQBJhpTnfni_1.getVar(); 
 SEkabAjonHYRatCxMmk7u.push_vector(HdUyQBJhpTnfni_1.getXPos()); 
 SEkabAjonHYRatCxMmk7u.push_vector(HdUyQBJhpTnfni_1.getZPos()); 
 SEkabAjonHYRatCxMmk7u.push_vector(100 / 2); 
 SEkabAjonHYRatCxMmk7u.push_vector(120); 
 SEkabAjonHYRatCxMmk7u.push_vector(0); 
 SEkabAjonHYRatCxMmk7u.push_vector(90); 
 break;
 case 5:
 HdUyQBJhpTnfni_1.sq_SetCurrentAnimation(140); 
 local SEkabAjonHYRatCxMmk7u = HdUyQBJhpTnfni_1.getVar(); 
 SEkabAjonHYRatCxMmk7u.set_vector(0, HdUyQBJhpTnfni_1.getXPos()); 
 SEkabAjonHYRatCxMmk7u.set_vector(4, 90); 
 SEkabAjonHYRatCxMmk7u.set_vector(5, 180); 
 break;
 }
 switch(pxWhg3lEGbV4YpZDHELZQ8t)
 {
 case 1:
 case 2:
 HdUyQBJhpTnfni_1.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 break;
 }
} ;


 
function onAttack_swordman_bloodsnatch(ReOzY_hrTitU_wdDqor6DnFA, yWXyY8u3dXn_E, hgeLxr7YyvM, kG3r0jNtmhvMM9NRTiG)
{
 if(!ReOzY_hrTitU_wdDqor6DnFA) return;
 local EeCPmIob7kdgy3Gz_8X72 = ReOzY_hrTitU_wdDqor6DnFA.getSkillSubState(); 
 switch(EeCPmIob7kdgy3Gz_8X72)
 {
 case 1:
 case 2:
 case 3:
 if(kG3r0jNtmhvMM9NRTiG || !yWXyY8u3dXn_E.isObjectType(OBJECTTYPE_ACTIVE)) return;
 if(ReOzY_hrTitU_wdDqor6DnFA.getVar().getBool(0) == false)
 ReOzY_hrTitU_wdDqor6DnFA.getVar().setBool(0, true);
 
 if(sq_IsGrabable(ReOzY_hrTitU_wdDqor6DnFA, yWXyY8u3dXn_E)
 && sq_IsHoldable(ReOzY_hrTitU_wdDqor6DnFA, yWXyY8u3dXn_E)
 && !sq_IsFixture(yWXyY8u3dXn_E))
 {
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(yWXyY8u3dXn_E, "character/swordman/bloodsnatch/ap_bloodsnatch.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(yWXyY8u3dXn_E, "character/swordman/bloodsnatch/ap_bloodsnatch.nut");
 local EXZtZsyc1NOr48Z = CNSquirrelAppendage.sq_AppendAppendage(yWXyY8u3dXn_E, ReOzY_hrTitU_wdDqor6DnFA, 233, true, "character/swordman/bloodsnatch/ap_bloodsnatch.nut", true);
 sq_HoldAndDelayDie(yWXyY8u3dXn_E, ReOzY_hrTitU_wdDqor6DnFA, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, EXZtZsyc1NOr48Z);
 }
 if(EeCPmIob7kdgy3Gz_8X72 == 1) return;
 
 local Op8j6737PVscRcf = sq_CreateAnimation("", "character/swordman/effect/animation/bloodsnatch/bloodsnatchshot1.ani"); 
 Op8j6737PVscRcf.addLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/bloodsnatch/bloodsnatchshot2.ani"), true); 
 local FqT1JaHBoRjgU2MUmYxm = sq_CreatePooledObject(Op8j6737PVscRcf, true); 
 sq_SetCurrentDirection(FqT1JaHBoRjgU2MUmYxm, ReOzY_hrTitU_wdDqor6DnFA.getDirection()); 
 FqT1JaHBoRjgU2MUmYxm.setCurrentPos(yWXyY8u3dXn_E.getXPos(),
 yWXyY8u3dXn_E.getYPos() + 1,
 yWXyY8u3dXn_E.getZPos() + sq_GetCenterZPos(hgeLxr7YyvM)); 
 FqT1JaHBoRjgU2MUmYxm = sq_SetEnumDrawLayer(FqT1JaHBoRjgU2MUmYxm, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(ReOzY_hrTitU_wdDqor6DnFA, FqT1JaHBoRjgU2MUmYxm, OBJECTTYPE_DRAWONLY, false); 
 break;
 }
} ;

 
function onKeyFrameFlag_swordman_bloodsnatch(NQbCRszwkKrUTQst0qWd, NNZHEjA0zm8Lbo3G6iK)
{
 if(!NQbCRszwkKrUTQst0qWd) return false;
 local Wxdg_qfSO2Qaz5 = NQbCRszwkKrUTQst0qWd.getSkillSubState();
 switch(Wxdg_qfSO2Qaz5)
 {
 case 5:
 if(NNZHEjA0zm8Lbo3G6iK == 1)
 {
 if(NQbCRszwkKrUTQst0qWd.sq_IsMyControlObject())
 {
 NQbCRszwkKrUTQst0qWd.sq_StartWrite();
 NQbCRszwkKrUTQst0qWd.sq_WriteDword(233); 
 NQbCRszwkKrUTQst0qWd.sq_WriteDword(NQbCRszwkKrUTQst0qWd.sq_GetBonusRateWithPassive(233, 233, 1, 1.0)); 
 NQbCRszwkKrUTQst0qWd.sq_SendCreatePassiveObjectPacket(24370, 0, 100, 0, 0); 
 sq_SetMyShake(NQbCRszwkKrUTQst0qWd, 5, 400);
 sq_flashScreen(NQbCRszwkKrUTQst0qWd, 0, 60, 0, 178, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER);
 }
 
 local UT60CPqNo5H7iojCXA56xWxG = sq_CreateAnimation("", "character/swordman/effect/animation/bloodsnatch/bloodsnatchboomb_00.ani"); 
 UT60CPqNo5H7iojCXA56xWxG.addLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/bloodsnatch/bloodsnatchboomb_01.ani"), true); 
 UT60CPqNo5H7iojCXA56xWxG.addLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/bloodsnatch/bloodsnatchboomb_02.ani"), true); 
 local e_pkMGgkok90uBns = sq_CreatePooledObject(UT60CPqNo5H7iojCXA56xWxG, true); 
 sq_SetCurrentDirection(e_pkMGgkok90uBns, NQbCRszwkKrUTQst0qWd.getDirection()); 
 e_pkMGgkok90uBns.setCurrentPos(sq_GetDistancePos(NQbCRszwkKrUTQst0qWd.getXPos(), NQbCRszwkKrUTQst0qWd.getDirection(), 100),
 NQbCRszwkKrUTQst0qWd.getYPos(),
 NQbCRszwkKrUTQst0qWd.getZPos()); 
 e_pkMGgkok90uBns = sq_SetEnumDrawLayer(e_pkMGgkok90uBns, ENUM_DRAWLAYER_BOTTOM); 
 sq_AddObject(NQbCRszwkKrUTQst0qWd, e_pkMGgkok90uBns, OBJECTTYPE_DRAWONLY, false); 
 }
 break;
 }
 return true;
} ;


 
function onEndCurrentAni_swordman_bloodsnatch(ey9CPt10LIj_DiIut0ExteD)
{
 if(!ey9CPt10LIj_DiIut0ExteD) return; 
 if(!ey9CPt10LIj_DiIut0ExteD.sq_IsMyControlObject())return;
 local FuRpMCPWTdRPVhZYXy_OInT = ey9CPt10LIj_DiIut0ExteD.getSkillSubState(); 
 switch(FuRpMCPWTdRPVhZYXy_OInT)
 {
 case 0:
 local Lp06TUUKlt9lWO1 = ey9CPt10LIj_DiIut0ExteD.getDirection(); 
 ey9CPt10LIj_DiIut0ExteD.sq_IntVectClear();
 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && Lp06TUUKlt9lWO1 == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && Lp06TUUKlt9lWO1 == ENUM_DIRECTION_RIGHT)
 ey9CPt10LIj_DiIut0ExteD.sq_IntVectPush(1);
 else 
 ey9CPt10LIj_DiIut0ExteD.sq_IntVectPush(3);
 ey9CPt10LIj_DiIut0ExteD.sq_AddSetStatePacket(233, STATE_PRIORITY_USER, true);
 break;
 case 2:
 case 3:
 if(ey9CPt10LIj_DiIut0ExteD.getVar().getBool(0) == false) 
 ey9CPt10LIj_DiIut0ExteD.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 else 
 {
 ey9CPt10LIj_DiIut0ExteD.sq_IntVectClear();
 ey9CPt10LIj_DiIut0ExteD.sq_IntVectPush(4);
 ey9CPt10LIj_DiIut0ExteD.sq_AddSetStatePacket(233, STATE_PRIORITY_USER, true);
 }
 break;
 case 5:
 ey9CPt10LIj_DiIut0ExteD.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 break;
 default:
 ey9CPt10LIj_DiIut0ExteD.sq_IntVectClear();
 ey9CPt10LIj_DiIut0ExteD.sq_IntVectPush(FuRpMCPWTdRPVhZYXy_OInT + 1);
 ey9CPt10LIj_DiIut0ExteD.sq_AddSetStatePacket(233, STATE_PRIORITY_USER, true);
 break;
 }
} ;


 
 
function onProc_swordman_bloodsnatch(bPdUHBnLhA8oQD3mbhjz)
{
 if(!bPdUHBnLhA8oQD3mbhjz) return;
 local F1ghqVl3lUR0Wi99Mgw3JIE = bPdUHBnLhA8oQD3mbhjz.getSkillSubState(); 
 switch(F1ghqVl3lUR0Wi99Mgw3JIE)
 {
 case 1:
 case 2:
 if(bPdUHBnLhA8oQD3mbhjz.getVar().getBool(1) == true) return;
 local OZLJ3D0IUJPINiY15GB4ciM = bPdUHBnLhA8oQD3mbhjz.getVar(); 
 local Vjn1tj43jxSi3R0IY = bPdUHBnLhA8oQD3mbhjz.getCurrentAnimation(); 
 local kSmlwIA9N1AnhdXfCTr_luSY = sq_GetCurrentTime(Vjn1tj43jxSi3R0IY); 
 local nbfNzGuhmBtVlr = Vjn1tj43jxSi3R0IY.getDelaySum(false); 
 local h5l2pL5ggIOdzUz4_XqPqd = OZLJ3D0IUJPINiY15GB4ciM.get_vector(0); 
 local mtx9KjUlzjfI = OZLJ3D0IUJPINiY15GB4ciM.get_vector(1); 
 
 local KPdjg8_iDkFP5Zt = sq_GetDistancePos(mtx9KjUlzjfI, bPdUHBnLhA8oQD3mbhjz.getDirection(),
 sq_GetUniformVelocity(0, (OZLJ3D0IUJPINiY15GB4ciM.get_vector(2) / 100.0 * h5l2pL5ggIOdzUz4_XqPqd).tointeger(), kSmlwIA9N1AnhdXfCTr_luSY, nbfNzGuhmBtVlr)
 );
 if(bPdUHBnLhA8oQD3mbhjz.isMovablePos(KPdjg8_iDkFP5Zt, bPdUHBnLhA8oQD3mbhjz.getYPos())) 
 sq_setCurrentAxisPos(bPdUHBnLhA8oQD3mbhjz, 0, KPdjg8_iDkFP5Zt); 
 else
 bPdUHBnLhA8oQD3mbhjz.getVar().setBool(1, true);
 break;
 case 4:
 case 5:
 local Vjn1tj43jxSi3R0IY = bPdUHBnLhA8oQD3mbhjz.getCurrentAnimation(); 
 local kSmlwIA9N1AnhdXfCTr_luSY = -1;
 local nbfNzGuhmBtVlr = -1;
 local d28ozkiH32jwRhg13qZ6Xwo1 = true; 
 switch(F1ghqVl3lUR0Wi99Mgw3JIE)
 {
 case 4:
 local HVcNYA2rcEKhhUP_ezl = bPdUHBnLhA8oQD3mbhjz.sq_GetCurrentFrameIndex(Vjn1tj43jxSi3R0IY); 
 if(HVcNYA2rcEKhhUP_ezl >= 3)
 {
 kSmlwIA9N1AnhdXfCTr_luSY = sq_GetCurrentTime(Vjn1tj43jxSi3R0IY) - Vjn1tj43jxSi3R0IY.getDelaySum(0, 2); 
 nbfNzGuhmBtVlr = Vjn1tj43jxSi3R0IY.getDelaySum(3, 5); 
 }
 else
 d28ozkiH32jwRhg13qZ6Xwo1 = false;
 break;
 case 5:
 kSmlwIA9N1AnhdXfCTr_luSY = sq_GetCurrentTime(Vjn1tj43jxSi3R0IY); 
 nbfNzGuhmBtVlr = Vjn1tj43jxSi3R0IY.getDelaySum(0, 3); 
 break;
 }
 if(d28ozkiH32jwRhg13qZ6Xwo1 == true)
 {
 local OZLJ3D0IUJPINiY15GB4ciM = bPdUHBnLhA8oQD3mbhjz.getVar(); 
 if(bPdUHBnLhA8oQD3mbhjz.getVar().getBool(1) == false)
 {
 local mtx9KjUlzjfI = OZLJ3D0IUJPINiY15GB4ciM.get_vector(0); 
 local rjPBcePiDhn6oDMtea49Z = OZLJ3D0IUJPINiY15GB4ciM.get_vector(2); 
 local KPdjg8_iDkFP5Zt = sq_GetDistancePos(mtx9KjUlzjfI, bPdUHBnLhA8oQD3mbhjz.getDirection(),
 sq_GetUniformVelocity(0, rjPBcePiDhn6oDMtea49Z, kSmlwIA9N1AnhdXfCTr_luSY, nbfNzGuhmBtVlr)
 );
 if(bPdUHBnLhA8oQD3mbhjz.isMovablePos(KPdjg8_iDkFP5Zt, bPdUHBnLhA8oQD3mbhjz.getYPos())) 
 sq_setCurrentAxisPos(bPdUHBnLhA8oQD3mbhjz, 0, KPdjg8_iDkFP5Zt); 
 else
 bPdUHBnLhA8oQD3mbhjz.getVar().setBool(1, true);
 }
 local aPyksZvVCfR = OZLJ3D0IUJPINiY15GB4ciM.get_vector(1); 
 local ZleaBIfrYj1rwBwOkfNK = OZLJ3D0IUJPINiY15GB4ciM.get_vector(3); 
 local Jjx9QxV_Oj0Iyx74zZ = aPyksZvVCfR + ZleaBIfrYj1rwBwOkfNK * sq_SinTable(sq_GetUniformVelocity(OZLJ3D0IUJPINiY15GB4ciM.get_vector(4), OZLJ3D0IUJPINiY15GB4ciM.get_vector(5), kSmlwIA9N1AnhdXfCTr_luSY, nbfNzGuhmBtVlr));
 sq_setCurrentAxisPos(bPdUHBnLhA8oQD3mbhjz, 2, Jjx9QxV_Oj0Iyx74zZ.tointeger()); 
 }
 break;
 }
} ;


