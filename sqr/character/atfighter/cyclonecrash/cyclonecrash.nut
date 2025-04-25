
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function checkExecutableSkill_atfighter_cyclonecrash(IjmyD09HAvdjrRaIAQv9MXJ)
{
 if(!IjmyD09HAvdjrRaIAQv9MXJ) return false; 
 local gd6PwboCvL0ErO8xrMy8 = IjmyD09HAvdjrRaIAQv9MXJ.sq_IsUseSkill(229); 
 if(gd6PwboCvL0ErO8xrMy8) 
 {
 local Kdl_D0wynCAQLMhCjTrr = 0; 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(IjmyD09HAvdjrRaIAQv9MXJ, "character/atfighter/appendage/ap_definitegrab.nut")) 
 Kdl_D0wynCAQLMhCjTrr = 1; 
 IjmyD09HAvdjrRaIAQv9MXJ.sq_IntVectClear();
 IjmyD09HAvdjrRaIAQv9MXJ.sq_IntVectPush(Kdl_D0wynCAQLMhCjTrr); 
 IjmyD09HAvdjrRaIAQv9MXJ.sq_AddSetStatePacket(229, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atfighter_cyclonecrash(IjmyD09HAvdjrRaIAQv9MXJ)
{
 if(!IjmyD09HAvdjrRaIAQv9MXJ) return false; 
 local gd6PwboCvL0ErO8xrMy8 = IjmyD09HAvdjrRaIAQv9MXJ.sq_GetState(); 
 if(gd6PwboCvL0ErO8xrMy8 == STATE_STAND) 
 return true; 
 if(gd6PwboCvL0ErO8xrMy8 == STATE_ATTACK) 
 {
 return IjmyD09HAvdjrRaIAQv9MXJ.sq_IsCommandEnable(229); 
 }
 return true; 
} ;

 
function onSetState_atfighter_cyclonecrash(kEMzSqqGTpKjb, kjY0PiCWkiQ7094kvdClOK, btDY83QGuE1, IrGcSsPqOXR)
{
 if(!kEMzSqqGTpKjb) return; 
 local wArFcc57zoeD = kEMzSqqGTpKjb.sq_GetVectorData(btDY83QGuE1, 0); 
 kEMzSqqGTpKjb.setSkillSubState(wArFcc57zoeD); 
 switch(wArFcc57zoeD)
 {
 case 0: case 1:
 kEMzSqqGTpKjb.getVar().clear_vector(); 
 kEMzSqqGTpKjb.getVar("atkobj").clear_obj_vector(); 
 kEMzSqqGTpKjb.getVar().setInt(0, 0); 
 kEMzSqqGTpKjb.getVar().setInt(1, 0); 
 break;
 }
 switch(wArFcc57zoeD)
 {
 case 0:
 kEMzSqqGTpKjb.sq_StopMove(); 
 kEMzSqqGTpKjb.sq_SetCurrentAnimation(174);
 kEMzSqqGTpKjb.sq_SetCurrentAttackInfo(100);
 break;
 case 1:
 kEMzSqqGTpKjb.sq_StopMove(); 
 kEMzSqqGTpKjb.sq_SetCurrentAnimation(173);
 kEMzSqqGTpKjb.sq_SetCurrentAttackInfo(100);
 break;
 case 2:
 kEMzSqqGTpKjb.sq_SetCurrentAnimation(175);
 break;
 case 3:
 kEMzSqqGTpKjb.sq_SetCurrentAnimation(176);
 break;
 }
 kEMzSqqGTpKjb.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onAttack_atfighter_cyclonecrash(D5wyKXIYqdn, laIPNjbuW8UAr0po9Mzf, Adis1AoJPSx1dJ, tfMOmScWjk1KQhveZ)
{
 if(!D5wyKXIYqdn) return;
 local vTNhgVUtkLfw = D5wyKXIYqdn.getSkillSubState();
 switch(vTNhgVUtkLfw)
 {
 case 0:
 case 1:
 if(!laIPNjbuW8UAr0po9Mzf|| !laIPNjbuW8UAr0po9Mzf.isObjectType(OBJECTTYPE_ACTIVE)) return;
 if(vTNhgVUtkLfw == 0 && D5wyKXIYqdn.getVar("atkobj").get_obj_vector_size() > 0) break; 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(laIPNjbuW8UAr0po9Mzf, "character/atfighter/cyclonecrash/ap_cyclonecrash.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(laIPNjbuW8UAr0po9Mzf, "character/atfighter/cyclonecrash/ap_cyclonecrash.nut");
 local ZqHeF_SJbeDLX_XOjrmW = -1; 
 D5wyKXIYqdn.getVar().setInt(1, D5wyKXIYqdn.getVar().getInt(1) + 1); 
 
 if(sq_IsHoldable(D5wyKXIYqdn, laIPNjbuW8UAr0po9Mzf) && !sq_IsFixture(laIPNjbuW8UAr0po9Mzf) && sq_IsGrabable(D5wyKXIYqdn, laIPNjbuW8UAr0po9Mzf))
 {
 D5wyKXIYqdn.getVar("atkobj").push_obj_vector(laIPNjbuW8UAr0po9Mzf); 
 local BevI_21aaRrrOqUDrPe8sZ = CNSquirrelAppendage.sq_AppendAppendage(laIPNjbuW8UAr0po9Mzf, D5wyKXIYqdn, 229, false, "character/atfighter/cyclonecrash/ap_cyclonecrash.nut", true); 
 
 sq_HoldAndDelayDie(laIPNjbuW8UAr0po9Mzf, D5wyKXIYqdn, true, true, true, 100, 450, ENUM_DIRECTION_NEUTRAL, BevI_21aaRrrOqUDrPe8sZ);
 if(vTNhgVUtkLfw == 0) 
 ZqHeF_SJbeDLX_XOjrmW = 2; 
 }
 else 
 {
 if(vTNhgVUtkLfw == 0) 
 ZqHeF_SJbeDLX_XOjrmW = 3; 
 else if(vTNhgVUtkLfw == 1)
 D5wyKXIYqdn.getVar().setInt(0, D5wyKXIYqdn.getVar().getInt(0) + 1); 
 }
 if(ZqHeF_SJbeDLX_XOjrmW != -1 && D5wyKXIYqdn.sq_IsMyControlObject())
 {
 D5wyKXIYqdn.sq_IntVectClear();
 D5wyKXIYqdn.sq_IntVectPush(ZqHeF_SJbeDLX_XOjrmW); 
 D5wyKXIYqdn.sq_AddSetStatePacket(229, STATE_PRIORITY_USER, true); 
 }
 break;
 }
} ;

function onKeyFrameFlag_atfighter_cyclonecrash(ul0IHtSEMVnP_PUqGiCvkb, XGb87CFXy6LAF9cCKP1fde)
{
 if(!ul0IHtSEMVnP_PUqGiCvkb) return false;
 local lEa5hN4qfQW8Z = ul0IHtSEMVnP_PUqGiCvkb.getSkillSubState();
 switch(lEa5hN4qfQW8Z)
 {
 case 1:
 switch(XGb87CFXy6LAF9cCKP1fde)
 {
 case 1:
 onSetAllApObjPos_atfighter_cyclonecrash(ul0IHtSEMVnP_PUqGiCvkb, true, 78, 1, 3, 0, false, 0, false, 0); 
 break;
 case 2:
 onSetAllApObjPos_atfighter_cyclonecrash(ul0IHtSEMVnP_PUqGiCvkb, true, 45, -1, 18, 0, false, 0, false, 0); 
 break;
 case 3:
 onSetAllApObjPos_atfighter_cyclonecrash(ul0IHtSEMVnP_PUqGiCvkb, true, -40, -1, 21, 0, false, 0, false, 0); 
 break;
 case 4:
 onSetAllApObjPos_atfighter_cyclonecrash(ul0IHtSEMVnP_PUqGiCvkb, true, -44, 1, 4, 0, false, 0, false, 0); 
 break;
 case 5:
 onSetAllApObjPos_atfighter_cyclonecrash(ul0IHtSEMVnP_PUqGiCvkb, true, 65, 1, 6, 0, false, 0, false, 0); 
 break;
 }
 break;
 case 2:
 switch(XGb87CFXy6LAF9cCKP1fde)
 {
 case 1:
 onSetAllApObjPos_atfighter_cyclonecrash(ul0IHtSEMVnP_PUqGiCvkb, true, 50, -1, 66, 0, true, 10.0, true, sq_GetOppositeDirection(ul0IHtSEMVnP_PUqGiCvkb.getDirection())); 
 break;
 case 2:
 onSetAllApObjPos_atfighter_cyclonecrash(ul0IHtSEMVnP_PUqGiCvkb, true, -56, -1, 119, 0, true, -90.0, true, sq_GetOppositeDirection(ul0IHtSEMVnP_PUqGiCvkb.getDirection())); 
 break;
 case 3:
 onSetAllApObjPos_atfighter_cyclonecrash(ul0IHtSEMVnP_PUqGiCvkb, true, -10, 1, 16, 0, true, 15.0, true, ul0IHtSEMVnP_PUqGiCvkb.getDirection()); 
 break;
 case 4:
 onSetAllApObjPos_atfighter_cyclonecrash(ul0IHtSEMVnP_PUqGiCvkb, true, -1, 1, 16, 0, true, 5.0, true, ul0IHtSEMVnP_PUqGiCvkb.getDirection()); 
 break;
 case 5:
 onSetAllApObjPos_atfighter_cyclonecrash(ul0IHtSEMVnP_PUqGiCvkb, true, 22, 1, 95, 0, true, -120.0, true, ul0IHtSEMVnP_PUqGiCvkb.getDirection()); 
 break;
 case 6:
 onSetAllApObjPos_atfighter_cyclonecrash(ul0IHtSEMVnP_PUqGiCvkb, true, 115, 0, 6, 0, true, 180.0, true, ul0IHtSEMVnP_PUqGiCvkb.getDirection()); 
 if(ul0IHtSEMVnP_PUqGiCvkb.sq_IsMyControlObject())
 {
 local yRIw2oR7MZ1of3 = sq_GetSkillLevel(ul0IHtSEMVnP_PUqGiCvkb, 229); 
 ul0IHtSEMVnP_PUqGiCvkb.sq_StartWrite();
 ul0IHtSEMVnP_PUqGiCvkb.sq_WriteDword(229); 
 ul0IHtSEMVnP_PUqGiCvkb.sq_WriteDword(1); 
 ul0IHtSEMVnP_PUqGiCvkb.sq_WriteDword(ul0IHtSEMVnP_PUqGiCvkb.sq_GetBonusRateWithPassive(229, 229, 0, 1.0)); 
 ul0IHtSEMVnP_PUqGiCvkb.sq_WriteDword(ul0IHtSEMVnP_PUqGiCvkb.sq_GetLevelData(229, 1, yRIw2oR7MZ1of3)); 
 ul0IHtSEMVnP_PUqGiCvkb.sq_WriteDword(ul0IHtSEMVnP_PUqGiCvkb.sq_GetBonusRateWithPassive(229, 229, 2, 1.0)); 
 ul0IHtSEMVnP_PUqGiCvkb.sq_WriteDword(ul0IHtSEMVnP_PUqGiCvkb.sq_GetBonusRateWithPassive(229, 229, 3, 1.0)); 
 ul0IHtSEMVnP_PUqGiCvkb.sq_SendCreatePassiveObjectPacket(24375, 0, 106, 1, 0);
 }
 break;
 }
 break;
 case 3:
 if(XGb87CFXy6LAF9cCKP1fde == 1 && ul0IHtSEMVnP_PUqGiCvkb.sq_IsMyControlObject())
 {
 ul0IHtSEMVnP_PUqGiCvkb.sq_StartWrite();
 ul0IHtSEMVnP_PUqGiCvkb.sq_WriteDword(229); 
 ul0IHtSEMVnP_PUqGiCvkb.sq_WriteDword(2); 
 ul0IHtSEMVnP_PUqGiCvkb.sq_WriteDword(ul0IHtSEMVnP_PUqGiCvkb.sq_GetBonusRateWithPassive(229, 229, 3, 1.0)); 
 ul0IHtSEMVnP_PUqGiCvkb.sq_SendCreatePassiveObjectPacket(24375, 0, 103, 0, 71);
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_atfighter_cyclonecrash(Vp2CXoakpmt2lR1)
{
 if(!Vp2CXoakpmt2lR1) return;
 if(!Vp2CXoakpmt2lR1.sq_IsMyControlObject()) return;
 local Bm7DMxix1Vu6D8i9iiFPwnW = Vp2CXoakpmt2lR1.getSkillSubState(); 
 switch(Bm7DMxix1Vu6D8i9iiFPwnW)
 {
 case 0:
 case 2:
 case 3:
 Vp2CXoakpmt2lR1.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 case 1: 
 local HCO8Wy4ebnQ7YQgj2mZN2rYq = 2; 
 if(Vp2CXoakpmt2lR1.getVar().getInt(1) <= 0) 
 {
 Vp2CXoakpmt2lR1.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 return;
 }
 else if(Vp2CXoakpmt2lR1.getVar().getInt(0) == Vp2CXoakpmt2lR1.getVar().getInt(1)) 
 HCO8Wy4ebnQ7YQgj2mZN2rYq = 3; 
 Vp2CXoakpmt2lR1.sq_IntVectClear();
 Vp2CXoakpmt2lR1.sq_IntVectPush(HCO8Wy4ebnQ7YQgj2mZN2rYq); 
 Vp2CXoakpmt2lR1.sq_AddSetStatePacket(229, STATE_PRIORITY_USER, true); 
 break;
 }
} ;

 
function onEndState_atfighter_cyclonecrash(jGyI00KoJEBs, ugttNVST1vNUH)
{
 if(!jGyI00KoJEBs) return;
 if(ugttNVST1vNUH != 229)
 {
 local fKUtwTvk9h77lBch3F = jGyI00KoJEBs.getSkillSubState(); 
 if(ugttNVST1vNUH != STATE_STAND
 || (ugttNVST1vNUH == STATE_STAND && fKUtwTvk9h77lBch3F == 1))
 onDeleteAllApAndRestoreRotate_atfighter_cyclonecrash(jGyI00KoJEBs); 
 }
} ;

function onSetAllApObjPos_atfighter_cyclonecrash(qMYC_wZuAgksQagN9g, XQP6vMWzUAQ, U367hpLeAgYrxZFn, I9nYNFMiZ8BgO, E9NHoze_Yoegx, WRRw1t2W1FTu8KbqCG1w73v, Q62TxulQo3S, QSfxqB7qq1sdl, xgdpGz5mIVeg6Ds4N, tiYqkb0wVfZ)
{
 local GIw_Z3r_uo9V3loS = qMYC_wZuAgksQagN9g.getVar("atkobj").get_obj_vector_size(); 
 if(GIw_Z3r_uo9V3loS > 0)
 {
 local lJ63uuqJrNJoEbPYtqce6Z = qMYC_wZuAgksQagN9g.getVar("atkobj"); 
 for(local LMHG7P6_tydmbF = 0; LMHG7P6_tydmbF < GIw_Z3r_uo9V3loS; LMHG7P6_tydmbF++)
 {
 local Qj1qY6gITSkiJiF = lJ63uuqJrNJoEbPYtqce6Z.get_obj_vector(LMHG7P6_tydmbF); 
 if(!Qj1qY6gITSkiJiF) continue; 
 local Dznu5lz367MW3uNwLH = CNSquirrelAppendage.sq_GetAppendage(Qj1qY6gITSkiJiF, "character/atfighter/cyclonecrash/ap_cyclonecrash.nut"); 
 if(Dznu5lz367MW3uNwLH && Dznu5lz367MW3uNwLH.isValid())
 {
 if(XQP6vMWzUAQ) 
 {
 local rwVtwloq2IliOlUE6_np = E9NHoze_Yoegx; 
 if(QSfxqB7qq1sdl == 180.0 && E9NHoze_Yoegx == 50) 
 rwVtwloq2IliOlUE6_np += sq_GetHeightObject(Qj1qY6gITSkiJiF); 
 sq_MoveToAppendageForce(Qj1qY6gITSkiJiF, qMYC_wZuAgksQagN9g, qMYC_wZuAgksQagN9g, U367hpLeAgYrxZFn, I9nYNFMiZ8BgO, rwVtwloq2IliOlUE6_np, WRRw1t2W1FTu8KbqCG1w73v, true, Dznu5lz367MW3uNwLH); 
 }
 if(Q62TxulQo3S && Qj1qY6gITSkiJiF.getState() == STATE_HOLD) 
 Qj1qY6gITSkiJiF.setCustomRotate(true, sq_ToRadian(QSfxqB7qq1sdl)); 
 if(xgdpGz5mIVeg6Ds4N) sq_SetCurrentDirection(Qj1qY6gITSkiJiF, tiYqkb0wVfZ); 
 }
 }
 }
} ;

function onDeleteAllApAndRestoreRotate_atfighter_cyclonecrash(yTiC44k6qtTYO1S_ft70w)
{
 local BmCyUtO1E5JVz5jqGb0gPJwa = yTiC44k6qtTYO1S_ft70w.getVar("atkobj").get_obj_vector_size(); 
 if(BmCyUtO1E5JVz5jqGb0gPJwa > 0)
 {
 local fPSbwi_m8O = yTiC44k6qtTYO1S_ft70w.getVar("atkobj"); 
 for(local _Jheh8RnJDnYmrkW_Fy6 = 0; _Jheh8RnJDnYmrkW_Fy6 < BmCyUtO1E5JVz5jqGb0gPJwa; _Jheh8RnJDnYmrkW_Fy6++)
 {
 local TehcNcjGJdafPqB = fPSbwi_m8O.get_obj_vector(_Jheh8RnJDnYmrkW_Fy6); 
 if(!TehcNcjGJdafPqB) continue; 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(TehcNcjGJdafPqB, "character/atfighter/cyclonecrash/ap_cyclonecrash.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(TehcNcjGJdafPqB, "character/atfighter/cyclonecrash/ap_cyclonecrash.nut");
 }
 yTiC44k6qtTYO1S_ft70w.getVar("atkobj").clear_obj_vector(); 
 }
} ;


