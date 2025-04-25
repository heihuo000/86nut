
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_atfighter_chaindrive(kEMzSqqGTpKjb)
{
 if(!kEMzSqqGTpKjb) return false; 
 local kjY0PiCWkiQ7094kvdClOK = kEMzSqqGTpKjb.sq_IsUseSkill(226); 
 if(kjY0PiCWkiQ7094kvdClOK) 
 {
 kEMzSqqGTpKjb.sq_IntVectClear();
 kEMzSqqGTpKjb.sq_IntVectPush(0); 
 kEMzSqqGTpKjb.sq_IntVectPush(sq_getRandom(25, 70)); 
 kEMzSqqGTpKjb.sq_AddSetStatePacket(226, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atfighter_chaindrive(kEMzSqqGTpKjb)
{
 if(!kEMzSqqGTpKjb) return false; 
 local kjY0PiCWkiQ7094kvdClOK = kEMzSqqGTpKjb.sq_GetState(); 
 if(kjY0PiCWkiQ7094kvdClOK == STATE_STAND) 
 return true; 
 if(kjY0PiCWkiQ7094kvdClOK == STATE_ATTACK) 
 {
 return kEMzSqqGTpKjb.sq_IsCommandEnable(226); 
 }
 return true; 
} ;

 
function onSetState_atfighter_chaindrive(D5wyKXIYqdn, laIPNjbuW8UAr0po9Mzf, Adis1AoJPSx1dJ, tfMOmScWjk1KQhveZ)
{
 if(!D5wyKXIYqdn) return; 
 D5wyKXIYqdn.getVar().clear_vector(); 
 local vTNhgVUtkLfw = D5wyKXIYqdn.sq_GetVectorData(Adis1AoJPSx1dJ, 0); 
 D5wyKXIYqdn.setSkillSubState(vTNhgVUtkLfw); 
 switch(vTNhgVUtkLfw)
 {
 case 0:
 D5wyKXIYqdn.getVar().clear_obj_vector(); 
 D5wyKXIYqdn.getVar("atkobj").clear_obj_vector(); 
 D5wyKXIYqdn.sq_StopMove(); 
 D5wyKXIYqdn.sq_SetCurrentAnimation(164);
 D5wyKXIYqdn.sq_SetCurrentAttackInfo(97); 
 local ZqHeF_SJbeDLX_XOjrmW = sq_GetSkillLevel(D5wyKXIYqdn, 226); 
 local BevI_21aaRrrOqUDrPe8sZ = sq_GetCurrentAttackInfo(D5wyKXIYqdn); 
 sq_SetChangeStatusIntoAttackInfo(BevI_21aaRrrOqUDrPe8sZ, 0, ACTIVESTATUS_BLEEDING,
 D5wyKXIYqdn.sq_GetLevelData(226, 3, ZqHeF_SJbeDLX_XOjrmW),
 D5wyKXIYqdn.sq_GetLevelData(226, 4, ZqHeF_SJbeDLX_XOjrmW),
 D5wyKXIYqdn.sq_GetLevelData(226, 5, ZqHeF_SJbeDLX_XOjrmW),
 D5wyKXIYqdn.sq_GetLevelData(226, 6, ZqHeF_SJbeDLX_XOjrmW)); 
 local abxBFb0YHWZVMovF = D5wyKXIYqdn.sq_GetBonusRateWithPassive(226, 226, 0, 1.0); 
 sq_SetCurrentAttackBonusRate(BevI_21aaRrrOqUDrPe8sZ, abxBFb0YHWZVMovF); 
 D5wyKXIYqdn.getVar().push_vector(D5wyKXIYqdn.sq_GetVectorData(Adis1AoJPSx1dJ, 1)); 
 D5wyKXIYqdn.getVar().setBool(0, false); 
 break;
 case 1:
 D5wyKXIYqdn.sq_SetCurrentAnimation(165);
 break;
 case 2:
 D5wyKXIYqdn.sq_SetCurrentAnimation(166);
 onSetGrabPos_atfighter_chaindrive(D5wyKXIYqdn, -15, -1, 199, 40); 
 local DcemnYwHtVrxdzc1Aa9c6yFp = D5wyKXIYqdn.sq_GetVectorData(Adis1AoJPSx1dJ, 1); 
 if(DcemnYwHtVrxdzc1Aa9c6yFp == 1)
 D5wyKXIYqdn.getVar().push_vector(215); 
 else if(DcemnYwHtVrxdzc1Aa9c6yFp == 2)
 D5wyKXIYqdn.getVar().push_vector(90); 
 break;
 case 3:
 D5wyKXIYqdn.sq_SetCurrentAnimation(167);
 D5wyKXIYqdn.getVar().push_vector(420); 
 break;
 }
 D5wyKXIYqdn.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onAttack_atfighter_chaindrive(WBrzVBizcMy2Gr2x5IO, u56sljju0aKiz6grd, vfXE4uhdQ4o, oL8qvkKL1cb0zw8NmIJJ61)
{
 if(!WBrzVBizcMy2Gr2x5IO) return;
 local lRv0JB6KdNqqN = WBrzVBizcMy2Gr2x5IO.getSkillSubState();
 switch(lRv0JB6KdNqqN)
 {
 case 0:
 if(oL8qvkKL1cb0zw8NmIJJ61 || !u56sljju0aKiz6grd.isObjectType(OBJECTTYPE_ACTIVE)) break; 
 if(sq_IsHoldable(WBrzVBizcMy2Gr2x5IO, u56sljju0aKiz6grd) && sq_IsGrabable(WBrzVBizcMy2Gr2x5IO, u56sljju0aKiz6grd) && !sq_IsFixture(u56sljju0aKiz6grd))
 {
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(WBrzVBizcMy2Gr2x5IO, "character/atfighter/chaindrive/ap_chaindrive.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(WBrzVBizcMy2Gr2x5IO, "character/atfighter/chaindrive/ap_chaindrive.nut");
 local hQNfc3VKZ8X8 = CNSquirrelAppendage.sq_AppendAppendage(u56sljju0aKiz6grd, WBrzVBizcMy2Gr2x5IO, 226, false, "character/atfighter/chaindrive/ap_chaindrive.nut", true);
 sq_AccelMoveToAppendageForce(u56sljju0aKiz6grd, WBrzVBizcMy2Gr2x5IO, WBrzVBizcMy2Gr2x5IO, WBrzVBizcMy2Gr2x5IO.getVar().get_vector(0), -1, 130, 450, true, hQNfc3VKZ8X8, true); 
 sq_HoldAndDelayDie(u56sljju0aKiz6grd, WBrzVBizcMy2Gr2x5IO, true, true, true, 0, 0, ENUM_DIRECTION_NEUTRAL, hQNfc3VKZ8X8); 
 WBrzVBizcMy2Gr2x5IO.getVar().push_obj_vector(u56sljju0aKiz6grd); 
 if(WBrzVBizcMy2Gr2x5IO.getVar().getBool(0) == false)
 WBrzVBizcMy2Gr2x5IO.getVar().setBool(0, true); 
 }
 else
 {
 if(!WBrzVBizcMy2Gr2x5IO.getVar("atkobj").is_obj_vector(u56sljju0aKiz6grd)) 
 {
 local HZyxP8WFn0k1VCYq = sq_GetCNRDObjectToActiveObject(u56sljju0aKiz6grd); 
 if(HZyxP8WFn0k1VCYq && !HZyxP8WFn0k1VCYq.isDead() && WBrzVBizcMy2Gr2x5IO.sq_IsMyControlObject())
 sq_SendHitObjectPacketWithNoStuck(WBrzVBizcMy2Gr2x5IO, HZyxP8WFn0k1VCYq, 0, 0, sq_GetWidthObject(HZyxP8WFn0k1VCYq) / 2); 
 WBrzVBizcMy2Gr2x5IO.getVar("atkobj").push_obj_vector(u56sljju0aKiz6grd); 
 }
 }
 break;
 }
} ;

function onKeyFrameFlag_atfighter_chaindrive(Vp2CXoakpmt2lR1, Bm7DMxix1Vu6D8i9iiFPwnW)
{
 if(!Vp2CXoakpmt2lR1) return false;
 local HCO8Wy4ebnQ7YQgj2mZN2rYq = Vp2CXoakpmt2lR1.getSkillSubState();
 switch(HCO8Wy4ebnQ7YQgj2mZN2rYq)
 {
 case 0:
 switch(Bm7DMxix1Vu6D8i9iiFPwnW)
 {
 case 1:
 sq_SetMyShake(Vp2CXoakpmt2lR1, 2, 80); 
 break;
 case 2:
 sq_CreateDrawOnlyObject(Vp2CXoakpmt2lR1, "character/fighter/effect/animation/atchaindrive/chaindrivestep1b_stonepiece1.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_CreateDrawOnlyObject(Vp2CXoakpmt2lR1, "character/fighter/effect/animation/atchaindrive/chaindrivestep1c_floorbreakno.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 break;
 case 3:
 sq_SetMyShake(Vp2CXoakpmt2lR1, 5, 80); 
 if(Vp2CXoakpmt2lR1.sq_IsMyControlObject())
 sq_flashScreen(Vp2CXoakpmt2lR1, 0, 160, 40, 102, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 }
 break;
 case 1:
 switch(Bm7DMxix1Vu6D8i9iiFPwnW)
 {
 case 1:
 sq_AddDrawOnlyAniFromParent(Vp2CXoakpmt2lR1, "character/fighter/effect/animation/atchaindrive/chaindrivehit_a.ani", 50, 0, 200); 
 sq_SetMyShake(Vp2CXoakpmt2lR1, 2, 100); 
 break;
 case 2:
 onSetGrabPos_atfighter_chaindrive(Vp2CXoakpmt2lR1, 35, 0, 175, 40); 
 break;
 case 3:
 onSetGrabPos_atfighter_chaindrive(Vp2CXoakpmt2lR1, 30, 0, 163, 40); 
 break;
 }
 break;
 case 2:
 switch(Bm7DMxix1Vu6D8i9iiFPwnW)
 {
 case 1:
 onSetGrabPos_atfighter_chaindrive(Vp2CXoakpmt2lR1, -81, -1, 188, 40); 
 break;
 case 2:
 sq_SetMyShake(Vp2CXoakpmt2lR1, 10, 200); 
 if(Vp2CXoakpmt2lR1.sq_IsMyControlObject())
 sq_flashScreen(Vp2CXoakpmt2lR1, 0, 80, 0, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 
 onEndSetGrabPosAndCreatePassiveObject_atfighter_chaindrive(Vp2CXoakpmt2lR1, true, Vp2CXoakpmt2lR1.getVar().get_vector(0), 0, 0, true);
 break;
 case 3:
 if(Vp2CXoakpmt2lR1.sq_IsMyControlObject())
 sq_flashScreen(Vp2CXoakpmt2lR1, 0, 40, 200, 153, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 }
 break;
 case 3:
 switch(Bm7DMxix1Vu6D8i9iiFPwnW)
 {
 case 1:
 onSetGrabPos_atfighter_chaindrive(Vp2CXoakpmt2lR1, -175, 0, 179, 40); 
 break;
 case 2:
 sq_SetMyShake(Vp2CXoakpmt2lR1, 10, 200); 
 if(Vp2CXoakpmt2lR1.sq_IsMyControlObject())
 sq_flashScreen(Vp2CXoakpmt2lR1, 0, 80, 0, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 
 onEndSetGrabPosAndCreatePassiveObject_atfighter_chaindrive(Vp2CXoakpmt2lR1, true, Vp2CXoakpmt2lR1.getVar().get_vector(0), 0, 0, true);
 break;
 case 3:
 if(Vp2CXoakpmt2lR1.sq_IsMyControlObject())
 sq_flashScreen(Vp2CXoakpmt2lR1, 0, 40, 200, 153, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_atfighter_chaindrive(czLI5Xh7ul9YfHA)
{
 if(!czLI5Xh7ul9YfHA) return;
 if(!czLI5Xh7ul9YfHA.sq_IsMyControlObject()) return;
 local nGVZuus_ExSHG = czLI5Xh7ul9YfHA.getSkillSubState(); 
 switch(nGVZuus_ExSHG)
 {
 case 2:
 case 3:
 czLI5Xh7ul9YfHA.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 default:
 if(nGVZuus_ExSHG == 1)
 {
 local xTjsDJbjPyn = czLI5Xh7ul9YfHA.getDirection(); 
 local Cg6ZGOEXpn1F8 = 1; 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)) 
 {
 czLI5Xh7ul9YfHA.sq_IntVectClear();
 czLI5Xh7ul9YfHA.sq_IntVectPush(3); 
 czLI5Xh7ul9YfHA.sq_AddSetStatePacket(226, STATE_PRIORITY_USER, true); 
 return;
 }
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && xTjsDJbjPyn == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && xTjsDJbjPyn == ENUM_DIRECTION_RIGHT)
 {
 Cg6ZGOEXpn1F8 = 2; 
 }
 czLI5Xh7ul9YfHA.sq_IntVectClear();
 czLI5Xh7ul9YfHA.sq_IntVectPush(2); 
 czLI5Xh7ul9YfHA.sq_IntVectPush(Cg6ZGOEXpn1F8); 
 czLI5Xh7ul9YfHA.sq_AddSetStatePacket(226, STATE_PRIORITY_USER, true); 
 }
 else
 {
 if(czLI5Xh7ul9YfHA.getVar().getBool(0)) 
 {
 czLI5Xh7ul9YfHA.sq_IntVectClear();
 czLI5Xh7ul9YfHA.sq_IntVectPush(nGVZuus_ExSHG + 1); 
 czLI5Xh7ul9YfHA.sq_AddSetStatePacket(226, STATE_PRIORITY_USER, true); 
 }
 else
 czLI5Xh7ul9YfHA.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 }
 break;
 }
} ;

function onSetGrabPos_atfighter_chaindrive(yTiC44k6qtTYO1S_ft70w, BmCyUtO1E5JVz5jqGb0gPJwa, fPSbwi_m8O, _Jheh8RnJDnYmrkW_Fy6, TehcNcjGJdafPqB)
{
 local J_QeRciO3waA = yTiC44k6qtTYO1S_ft70w.getVar().get_obj_vector_size(); 
 for(local _DZEsjT_IkTeS_hroK2z = 0; _DZEsjT_IkTeS_hroK2z < J_QeRciO3waA; _DZEsjT_IkTeS_hroK2z++)
 {
 local aGUCA4CIlDwU6JQk = yTiC44k6qtTYO1S_ft70w.getVar().get_obj_vector(_DZEsjT_IkTeS_hroK2z); 
 if(!aGUCA4CIlDwU6JQk) continue; 
 local zSa97nV0ZvLcDsiiyGMrI = CNSquirrelAppendage.sq_GetAppendage(aGUCA4CIlDwU6JQk, "character/atfighter/chaindrive/ap_chaindrive.nut"); 
 if(!zSa97nV0ZvLcDsiiyGMrI)continue; 
 sq_AccelMoveToAppendageForce(aGUCA4CIlDwU6JQk, yTiC44k6qtTYO1S_ft70w, yTiC44k6qtTYO1S_ft70w, BmCyUtO1E5JVz5jqGb0gPJwa, fPSbwi_m8O, _Jheh8RnJDnYmrkW_Fy6, TehcNcjGJdafPqB, true, zSa97nV0ZvLcDsiiyGMrI, true); 
 }
} ;

function onEndSetGrabPosAndCreatePassiveObject_atfighter_chaindrive(JJI83yl5418, wrAPoUa86Ub8e_QYWVG, dvqsaCZHlnbuiDoHJ, FGne07pmV3YGx8eEjv3, xgFcUm9uKjISHMe0, wv21DMJqT3g4YsFDktd12vkN)
{
 local ScdX_vBwTg = []; 
 local wfEhNs2vSew4X_fSK_Vv43_3 = JJI83yl5418.getXPos(); 
 if(wrAPoUa86Ub8e_QYWVG)
 {
 local niTnlZ1NGS3EB4OxC = JJI83yl5418.getVar().get_obj_vector_size(); 
 local LbklXRS5eOZCB = JJI83yl5418.getDirection(); 
 local RBc4gNoa976yp9X = JJI83yl5418.getYPos(); 
 for(local d19H8b20f1GdUa4ZFU3_QT6 = 0; d19H8b20f1GdUa4ZFU3_QT6 < niTnlZ1NGS3EB4OxC; d19H8b20f1GdUa4ZFU3_QT6++)
 {
 local BbfpdYpWwixKD8y1CcOdqVTH = JJI83yl5418.getVar().get_obj_vector(d19H8b20f1GdUa4ZFU3_QT6); 
 if(!BbfpdYpWwixKD8y1CcOdqVTH) continue; 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(BbfpdYpWwixKD8y1CcOdqVTH, "character/atfighter/chaindrive/ap_chaindrive.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(BbfpdYpWwixKD8y1CcOdqVTH, "character/atfighter/chaindrive/ap_chaindrive.nut");
 sq_MoveToNearMovablePos(BbfpdYpWwixKD8y1CcOdqVTH, 
 sq_GetDistancePos(wfEhNs2vSew4X_fSK_Vv43_3, LbklXRS5eOZCB, dvqsaCZHlnbuiDoHJ), RBc4gNoa976yp9X, 0,
 wfEhNs2vSew4X_fSK_Vv43_3, RBc4gNoa976yp9X, 0,
 sq_Abs(dvqsaCZHlnbuiDoHJ), -1, 5); 
 ScdX_vBwTg.push(BbfpdYpWwixKD8y1CcOdqVTH.getXPos()); 
 }
 }
 if(wv21DMJqT3g4YsFDktd12vkN && JJI83yl5418.sq_IsMyControlObject())
 {
 local szT5CsWVwZ = 0; 
 foreach(intSum in ScdX_vBwTg)
 szT5CsWVwZ += intSum; 
 if(szT5CsWVwZ == 0) szT5CsWVwZ = dvqsaCZHlnbuiDoHJ; 
 else szT5CsWVwZ = sq_Abs(szT5CsWVwZ / ScdX_vBwTg.len() - wfEhNs2vSew4X_fSK_Vv43_3); 
 local oPTOPewgKr7Tj255BAF = JJI83yl5418.sq_GetBonusRateWithPassive(226, 226, 2, 1.0); 
 JJI83yl5418.sq_StartWrite();
 JJI83yl5418.sq_WriteDword(226); 
 JJI83yl5418.sq_WriteDword(oPTOPewgKr7Tj255BAF); 
 JJI83yl5418.sq_SendCreatePassiveObjectPacket(24375, 0, szT5CsWVwZ, FGne07pmV3YGx8eEjv3, xgFcUm9uKjISHMe0);
 }
} ;

