
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_atfighter_finalextremestrike(YIPd8o2XhTHNx75zkBv)
{
 if(!YIPd8o2XhTHNx75zkBv) return false; 
 local IEBAkhORkiejhVe = YIPd8o2XhTHNx75zkBv.sq_IsUseSkill(231); 
 if(IEBAkhORkiejhVe) 
 {
 local zNQXvkK2UD2j34 = 0; 
 if(YIPd8o2XhTHNx75zkBv.getState() != 6) 
 if(YIPd8o2XhTHNx75zkBv.getZPos() > 0) 
 zNQXvkK2UD2j34 = 1;
 else 
 zNQXvkK2UD2j34 = 2;
 YIPd8o2XhTHNx75zkBv.sq_IntVectClear();
 YIPd8o2XhTHNx75zkBv.sq_IntVectPush(zNQXvkK2UD2j34); 
 YIPd8o2XhTHNx75zkBv.sq_AddSetStatePacket(231, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atfighter_finalextremestrike(_qV7y1mSVObiiEzFP)
{
 if(!_qV7y1mSVObiiEzFP) return false; 
 local kfa9we4p0FvH9lD = _qV7y1mSVObiiEzFP.sq_GetState(); 
 if(kfa9we4p0FvH9lD == STATE_STAND) 
 return true; 
 if(kfa9we4p0FvH9lD == STATE_ATTACK) 
 {
 return _qV7y1mSVObiiEzFP.sq_IsCommandEnable(231); 
 }
 return true; 
} ;

 
function onSetState_atfighter_finalextremestrike(_qV7y1mSVObiiEzFP, kfa9we4p0FvH9lD, LIQb5jU1nNZK, X2HULqEwJ_P2V1)
{
 if(!_qV7y1mSVObiiEzFP) return; 
 local d6n5c7DDeruCIoEtar17P = _qV7y1mSVObiiEzFP.sq_GetVectorData(LIQb5jU1nNZK, 0); 
 _qV7y1mSVObiiEzFP.setSkillSubState(d6n5c7DDeruCIoEtar17P); 
 switch(d6n5c7DDeruCIoEtar17P)
 {
 case 0: case 1: case 2:
 
 local iiiq_0OLx9hXFkhFf97u = sq_GetXPos(_qV7y1mSVObiiEzFP); 
 local nEuVZtSgJCX2vNuGa8S = sq_GetYPos(_qV7y1mSVObiiEzFP); 
 local kA6vGvqJbH = _qV7y1mSVObiiEzFP.sq_findNearLinearMovableXPos(iiiq_0OLx9hXFkhFf97u, nEuVZtSgJCX2vNuGa8S, sq_GetDistancePos(iiiq_0OLx9hXFkhFf97u, sq_GetDirection(_qV7y1mSVObiiEzFP), 300), nEuVZtSgJCX2vNuGa8S, 10); ; 
 if(!_qV7y1mSVObiiEzFP.isMovablePos(kA6vGvqJbH, nEuVZtSgJCX2vNuGa8S)) 
 kA6vGvqJbH = _qV7y1mSVObiiEzFP.sq_findNearLinearMovableXPos(iiiq_0OLx9hXFkhFf97u, nEuVZtSgJCX2vNuGa8S, sq_GetDistancePos(iiiq_0OLx9hXFkhFf97u, sq_GetDirection(_qV7y1mSVObiiEzFP), -300), nEuVZtSgJCX2vNuGa8S, 10); ; 
 sq_setCurrentAxisPos(_qV7y1mSVObiiEzFP, 0, kA6vGvqJbH); 
 _qV7y1mSVObiiEzFP.sq_StopMove(); 
 _qV7y1mSVObiiEzFP.sq_ZStop(); 
 _qV7y1mSVObiiEzFP.getVar().clear_obj_vector(); 
 _qV7y1mSVObiiEzFP.getVar("atkobj").clear_obj_vector(); 
 _qV7y1mSVObiiEzFP.getVar("aniobj").clear_obj_vector(); 
 
 _qV7y1mSVObiiEzFP.getVar("speed").clear_vector(); 
 _qV7y1mSVObiiEzFP.getVar("speed").push_vector(0); 
 _qV7y1mSVObiiEzFP.getVar("speed").push_vector(5); 
 _qV7y1mSVObiiEzFP.getVar("speed").push_vector(100); 
 _qV7y1mSVObiiEzFP.getVar("speed").push_vector(20); 
 break;
 }
 switch(d6n5c7DDeruCIoEtar17P)
 {
 case 0: 
 _qV7y1mSVObiiEzFP.sq_SetCurrentAnimation(185);
 break;
 case 1: 
 _qV7y1mSVObiiEzFP.sq_SetCurrentAnimation(186);
 break;
 case 2: 
 _qV7y1mSVObiiEzFP.sq_SetCurrentAnimation(189);
 break;
 case 3: 
 _qV7y1mSVObiiEzFP.sq_SetCurrentAnimation(187);
 sq_setCurrentAxisPos(_qV7y1mSVObiiEzFP, 2, 0); 
 break;
 case 4: 
 _qV7y1mSVObiiEzFP.sq_SetCurrentAnimation(188);
 sq_setCurrentAxisPos(_qV7y1mSVObiiEzFP, 2, 0); 
 break;
 case 5: 
 _qV7y1mSVObiiEzFP.setCurrentAnimation(null); 
 if(_qV7y1mSVObiiEzFP.sq_IsMyControlObject())
 {
 
 _qV7y1mSVObiiEzFP.sq_StartWrite();
 _qV7y1mSVObiiEzFP.sq_WriteDword(231); 
 _qV7y1mSVObiiEzFP.sq_WriteDword(1); 
 _qV7y1mSVObiiEzFP.sq_WriteDword(_qV7y1mSVObiiEzFP.sq_GetBonusRateWithPassive(231, 231, 1, 1.0)); 
 _qV7y1mSVObiiEzFP.sq_WriteDword(_qV7y1mSVObiiEzFP.getVar("speed").get_vector(2)); 
 _qV7y1mSVObiiEzFP.sq_SendCreatePassiveObjectPacket(24375, 0, 0, 0, 0);
 }
 break;
 case 6: 
 _qV7y1mSVObiiEzFP.sq_SetCurrentAnimation(192);
 local qz5UU0y6DNxTycKiz9M31dr = sq_GetObject(_qV7y1mSVObiiEzFP, _qV7y1mSVObiiEzFP.sq_GetVectorData(LIQb5jU1nNZK, 1), _qV7y1mSVObiiEzFP.sq_GetVectorData(LIQb5jU1nNZK, 2)); 
 if(qz5UU0y6DNxTycKiz9M31dr)
 _qV7y1mSVObiiEzFP.getVar("atkobj").push_obj_vector(qz5UU0y6DNxTycKiz9M31dr); 
 sq_SetMyShake(_qV7y1mSVObiiEzFP, 7, 80); 
 break;
 case 7: 
 _qV7y1mSVObiiEzFP.sq_SetCurrentAnimation(190);
 break;
 case 8: 
 _qV7y1mSVObiiEzFP.sq_SetCurrentAnimation(191);
 break;
 case 9: 
 _qV7y1mSVObiiEzFP.sq_SetCurrentAnimation(193);
 break;
 case 10: 
 _qV7y1mSVObiiEzFP.sq_SetCurrentAnimation(194);
 local FcS7f3VK01XQjo = _qV7y1mSVObiiEzFP.getVar("atkobj").get_obj_vector(0); 
 if(FcS7f3VK01XQjo)
 {
 local J41M6K5L0NyOUnFKTu = CNSquirrelAppendage.sq_GetAppendage(FcS7f3VK01XQjo, "character/atfighter/finalextremestrike/ap_finalextremestrike.nut"); 
 if(J41M6K5L0NyOUnFKTu && J41M6K5L0NyOUnFKTu.isValid())
 {
 sq_AccelMoveToAppendageForce(FcS7f3VK01XQjo, _qV7y1mSVObiiEzFP, _qV7y1mSVObiiEzFP, 0, 0, 0, 300, true, J41M6K5L0NyOUnFKTu, false); 
 FcS7f3VK01XQjo.setCustomRotate(true, sq_ToRadian(90.0)); 
 sq_SetCurrentDirection(FcS7f3VK01XQjo, sq_GetOppositeDirection(_qV7y1mSVObiiEzFP.getDirection())); 
 }
 }
 break;
 case 11: 
 _qV7y1mSVObiiEzFP.sq_SetCurrentAnimation(195);
 break;
 case 12: 
 _qV7y1mSVObiiEzFP.sq_SetCurrentAnimation(196);
 break;
 case 13: 
 _qV7y1mSVObiiEzFP.sq_SetCurrentAnimation(197);
 break;
 }
 
 switch(d6n5c7DDeruCIoEtar17P)
 {
 case 2:case 3:case 4:
 _qV7y1mSVObiiEzFP.sq_SetCurrentAttackInfo(103);
 local Bqu8AP2RTrEiKqmwM0f6kT = _qV7y1mSVObiiEzFP.sq_GetBonusRateWithPassive(231, 231, 0, 1.0); 
 _qV7y1mSVObiiEzFP.sq_SetCurrentAttackBonusRate(Bqu8AP2RTrEiKqmwM0f6kT); 
 if(_qV7y1mSVObiiEzFP.sq_IsMyControlObject()) 
 {
 local Fq8dyptwypRdjbBou4t = _qV7y1mSVObiiEzFP.getObjectManager(); 
 local OhIgb7dGJi9divbN = Fq8dyptwypRdjbBou4t.getFieldXPos(400, ENUM_DRAWLAYER_NORMAL); 
 local lFph1dNtH8T2P62re0a = Fq8dyptwypRdjbBou4t.getFieldYPos(300, 0, ENUM_DRAWLAYER_NORMAL); 
 local DJ7BksN9u5X0NUCiX = sq_CreateDrawOnlyObject(_qV7y1mSVObiiEzFP, "character/fighter/effect/animation/atfinalextremestrike/b/bigrock_rockblur3.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_setCurrentAxisPos(DJ7BksN9u5X0NUCiX, 0, OhIgb7dGJi9divbN); 
 sq_setCurrentAxisPos(DJ7BksN9u5X0NUCiX, 1, lFph1dNtH8T2P62re0a); 
 }
 local U3PqP_PS7w = sq_CreateDrawOnlyObject(_qV7y1mSVObiiEzFP, "character/fighter/effect/animation/atfinalextremestrike/b/cracksmall_normal.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 _qV7y1mSVObiiEzFP.getVar("aniobj").push_obj_vector(U3PqP_PS7w); 
 sq_SetMyShake(_qV7y1mSVObiiEzFP, 15, 400); 
 _qV7y1mSVObiiEzFP.sq_PlaySound("MF_FINAL_EXTREME_STRIKE_01"); 
 break;
 case 10:case 11:
 local o5vecZvUfMU = 800; 
 sq_setCurrentAxisPos(_qV7y1mSVObiiEzFP, 2, o5vecZvUfMU); 
 _qV7y1mSVObiiEzFP.getVar().clear_vector(); 
 _qV7y1mSVObiiEzFP.getVar().push_vector(o5vecZvUfMU); 
 _qV7y1mSVObiiEzFP.getVar().push_vector(0); 
 _qV7y1mSVObiiEzFP.getVar().push_vector(300); 
 if(_qV7y1mSVObiiEzFP.sq_IsMyControlObject()) 
 {
 local JNAyT42wDo9giSn = sq_flashScreen(_qV7y1mSVObiiEzFP, 200, 99990, 0, 220, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 _qV7y1mSVObiiEzFP.getVar("flashobj").clear_obj_vector(); 
 _qV7y1mSVObiiEzFP.getVar("flashobj").push_obj_vector(JNAyT42wDo9giSn); 
 }
 break;
 case 12:case 13:
 RemoveAllAni(_qV7y1mSVObiiEzFP); 
 if(_qV7y1mSVObiiEzFP.sq_IsMyControlObject())
 {
 
 _qV7y1mSVObiiEzFP.sq_StartWrite();
 _qV7y1mSVObiiEzFP.sq_WriteDword(231); 
 _qV7y1mSVObiiEzFP.sq_WriteDword(2); 
 _qV7y1mSVObiiEzFP.sq_WriteDword(_qV7y1mSVObiiEzFP.sq_GetBonusRateWithPassive(231, 231, 2, 1.0)); 
 _qV7y1mSVObiiEzFP.sq_SendCreatePassiveObjectPacket(24375, 0, 0, 0, 0);
 
 local Fq8dyptwypRdjbBou4t = _qV7y1mSVObiiEzFP.getObjectManager(); 
 local OhIgb7dGJi9divbN = Fq8dyptwypRdjbBou4t.getFieldXPos(400, ENUM_DRAWLAYER_NORMAL); 
 local lFph1dNtH8T2P62re0a = Fq8dyptwypRdjbBou4t.getFieldYPos(300, 0, ENUM_DRAWLAYER_NORMAL); 
 local DJ7BksN9u5X0NUCiX = sq_CreateDrawOnlyObject(_qV7y1mSVObiiEzFP, "character/fighter/effect/animation/atfinalextremestrike/d/d2_background.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_setCurrentAxisPos(DJ7BksN9u5X0NUCiX, 0, OhIgb7dGJi9divbN); 
 sq_setCurrentAxisPos(DJ7BksN9u5X0NUCiX, 1, lFph1dNtH8T2P62re0a); 
 }
 sq_CreateDrawOnlyObject(_qV7y1mSVObiiEzFP, "character/fighter/effect/animation/atfinalextremestrike/e/cracklarge_normal.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 break;
 }
} ;

function onAttack_atfighter_finalextremestrike(iQ30byZ0uepv5rLGok7s, VLR_BxOVtU3cH_jI, LACQH4kJryZYhczuitPj, YDw51bu1ir)
{
 if(!iQ30byZ0uepv5rLGok7s) return;
 local yQWfkL6FeqPyHiHq = iQ30byZ0uepv5rLGok7s.getSkillSubState();
 switch(yQWfkL6FeqPyHiHq)
 {
 case 2:
 case 3:
 case 4:
 if(YDw51bu1ir || !VLR_BxOVtU3cH_jI || !VLR_BxOVtU3cH_jI.isObjectType(OBJECTTYPE_ACTIVE)) break;
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(VLR_BxOVtU3cH_jI, "character/atfighter/finalextremestrike/ap_finalextremestrike.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(VLR_BxOVtU3cH_jI, "character/atfighter/finalextremestrike/ap_finalextremestrike.nut");
 
 if(sq_IsHoldable(iQ30byZ0uepv5rLGok7s, VLR_BxOVtU3cH_jI) && !sq_IsFixture(VLR_BxOVtU3cH_jI) && sq_IsGrabable(iQ30byZ0uepv5rLGok7s, VLR_BxOVtU3cH_jI))
 {
 iQ30byZ0uepv5rLGok7s.getVar().push_obj_vector(VLR_BxOVtU3cH_jI); 
 local dbDOoOyMAcFnwGB2kn = CNSquirrelAppendage.sq_AppendAppendage(VLR_BxOVtU3cH_jI, iQ30byZ0uepv5rLGok7s, 231, false, "character/atfighter/finalextremestrike/ap_finalextremestrike.nut", true); 
 
 sq_HoldAndDelayDie(VLR_BxOVtU3cH_jI, iQ30byZ0uepv5rLGok7s, true, true, true, 100, 450, ENUM_DIRECTION_NEUTRAL, dbDOoOyMAcFnwGB2kn);
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(VLR_BxOVtU3cH_jI, "character/atfighter/finalextremestrike/ap_finalextremestrike_move.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(VLR_BxOVtU3cH_jI, "character/atfighter/finalextremestrike/ap_finalextremestrike_move.nut");
 
 local C6Hj7VtKLbdGrdIFAlAHLd = CNSquirrelAppendage.sq_AppendAppendage(VLR_BxOVtU3cH_jI, iQ30byZ0uepv5rLGok7s, 231, false, "character/atfighter/finalextremestrike/ap_finalextremestrike_move.nut", true); 
 C6Hj7VtKLbdGrdIFAlAHLd.sq_SetValidTime(70); 
 sq_MoveToAppendage(VLR_BxOVtU3cH_jI, iQ30byZ0uepv5rLGok7s, VLR_BxOVtU3cH_jI, 0, 0, VLR_BxOVtU3cH_jI.getZPos()/-1, 100, true, C6Hj7VtKLbdGrdIFAlAHLd); 
 }
 break;
 }
} ;

function onKeyFrameFlag_atfighter_finalextremestrike(R4yDTMhLFu1JXOy7WJ, k7l66TJFK0DR5Z3TKVodu4q)
{
 if(!R4yDTMhLFu1JXOy7WJ) return false;
 local _TVlOLgqhbuk5N98F = R4yDTMhLFu1JXOy7WJ.getSkillSubState();
 switch(_TVlOLgqhbuk5N98F)
 {
 case 7:
 switch(k7l66TJFK0DR5Z3TKVodu4q)
 {
 case 1:
 local RK1RBNK4gwpx = R4yDTMhLFu1JXOy7WJ.getVar("atkobj").get_obj_vector(0); 
 if(RK1RBNK4gwpx)
 {
 local gNB7lOg4MEWtnERnZF9b = CNSquirrelAppendage.sq_GetAppendage(RK1RBNK4gwpx, "character/atfighter/finalextremestrike/ap_finalextremestrike.nut"); 
 if(gNB7lOg4MEWtnERnZF9b && gNB7lOg4MEWtnERnZF9b.isValid())
 sq_AccelMoveToAppendageForce(RK1RBNK4gwpx, R4yDTMhLFu1JXOy7WJ, R4yDTMhLFu1JXOy7WJ, 0, 0, 800, 250, true, gNB7lOg4MEWtnERnZF9b, false); 
 }
 break;
 }
 break;
 case 9:
 if(R4yDTMhLFu1JXOy7WJ.sq_IsMyControlObject()) 
 switch(k7l66TJFK0DR5Z3TKVodu4q)
 {
 case 1:
 local WpcdOMETzr = R4yDTMhLFu1JXOy7WJ.getObjectManager(); 
 local VL_z9JOjj7Qyjhgstvch9BW = WpcdOMETzr.getFieldXPos(400, ENUM_DRAWLAYER_NORMAL); 
 local OlDAADjchPpIR9h24A7BV = WpcdOMETzr.getFieldYPos(300, 0, ENUM_DRAWLAYER_NORMAL); 
 local rBaRg8MGPN = sq_CreateDrawOnlyObject(R4yDTMhLFu1JXOy7WJ, "character/fighter/effect/animation/atfinalextremestrike/e/e2_background.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_setCurrentAxisPos(rBaRg8MGPN, 0, VL_z9JOjj7Qyjhgstvch9BW); 
 sq_setCurrentAxisPos(rBaRg8MGPN, 1, OlDAADjchPpIR9h24A7BV); 
 break;
 case 2:
 sq_flashScreen(R4yDTMhLFu1JXOy7WJ, 200, 300, 0, 127, sq_RGB(0, 0, 0), GRAPHICEFFECT_DARK, ENUM_DRAWLAYER_BOTTOM); 
 break;
 }
 break;
 case 12:
 case 13:
 switch(k7l66TJFK0DR5Z3TKVodu4q)
 {
 case 1000:
 onDeleteAllApAndRestoreRotate_atfighter_finalextremestrike(R4yDTMhLFu1JXOy7WJ); 
 RemoveAllFlash(R4yDTMhLFu1JXOy7WJ); 
 if(R4yDTMhLFu1JXOy7WJ.sq_IsMyControlObject()) 
 sq_flashScreen(R4yDTMhLFu1JXOy7WJ, 0, 0, 400, 220, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 break;
 }
 break;
 }
 return true;
} ;

function onProc_atfighter_finalextremestrike(Bk5rEpzJQJ0Jn6)
{
 if(!Bk5rEpzJQJ0Jn6) return;
 local RkOpWMLittsEU = Bk5rEpzJQJ0Jn6.getSkillSubState();
 switch(RkOpWMLittsEU)
 {
 case 10:
 case 11:
 local T3BUt2dADvHNz8KJHNJ67 = Bk5rEpzJQJ0Jn6.getVar(); 
 local O3Yo49K_uOD20D39a4 = Bk5rEpzJQJ0Jn6.getCurrentAnimation(); 
 local KYwcRcPkhhgDWUMhX0VNeXS = sq_GetCurrentTime(O3Yo49K_uOD20D39a4); 
 local uek84DUTDtoVz = T3BUt2dADvHNz8KJHNJ67.get_vector(2); 
 local eGsPkWLVwf1f99g7YC = sq_GetAccel(T3BUt2dADvHNz8KJHNJ67.get_vector(0), T3BUt2dADvHNz8KJHNJ67.get_vector(1), KYwcRcPkhhgDWUMhX0VNeXS, uek84DUTDtoVz, false); 
 sq_setCurrentAxisPos(Bk5rEpzJQJ0Jn6, 2, eGsPkWLVwf1f99g7YC); 
 if(KYwcRcPkhhgDWUMhX0VNeXS >= uek84DUTDtoVz && Bk5rEpzJQJ0Jn6.sq_IsMyControlObject()) 
 {
 Bk5rEpzJQJ0Jn6.sq_IntVectClear();
 Bk5rEpzJQJ0Jn6.sq_IntVectPush(RkOpWMLittsEU + 2); 
 Bk5rEpzJQJ0Jn6.sq_AddSetStatePacket(231, STATE_PRIORITY_USER, true); 
 }
 break;
 }
} ;

function onProcCon_atfighter_finalextremestrike(w6IrIe0Y1Ue8UGQQ)
{
 if(!w6IrIe0Y1Ue8UGQQ) return;
 sq_SetKeyxEnable(w6IrIe0Y1Ue8UGQQ, E_ATTACK_COMMAND, true); 
 if(sq_IsEnterCommand(w6IrIe0Y1Ue8UGQQ, E_ATTACK_COMMAND)) 
 {
 local RaOQ67iq0HyS1rjl3f2 = w6IrIe0Y1Ue8UGQQ.getVar("speed"); 
 local t7RQrTe8fkLePmwdLZV_j3 = RaOQ67iq0HyS1rjl3f2.get_vector(0); 
 local xDC_lFIRknAQjO8flC9F = RaOQ67iq0HyS1rjl3f2.get_vector(1); 
 if(t7RQrTe8fkLePmwdLZV_j3 < xDC_lFIRknAQjO8flC9F) 
 {
 local N32l23Qqk2k1ktHoTA = RaOQ67iq0HyS1rjl3f2.get_vector(2) + RaOQ67iq0HyS1rjl3f2.get_vector(3); 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteDword(N32l23Qqk2k1ktHoTA); 
 sq_SendChangeSkillEffectPacket(w6IrIe0Y1Ue8UGQQ, 231); 
 }
 }
} ;

function onChangeSkillEffect_atfighter_finalextremestrike(w6IrIe0Y1Ue8UGQQ, RaOQ67iq0HyS1rjl3f2, t7RQrTe8fkLePmwdLZV_j3)
{
 if(!w6IrIe0Y1Ue8UGQQ) return;
 local xDC_lFIRknAQjO8flC9F = t7RQrTe8fkLePmwdLZV_j3.readWord(); 
 switch(xDC_lFIRknAQjO8flC9F)
 {
 case 1:
 local N32l23Qqk2k1ktHoTA = t7RQrTe8fkLePmwdLZV_j3.readDword();
 w6IrIe0Y1Ue8UGQQ.getVar("speed").set_vector(0, w6IrIe0Y1Ue8UGQQ.getVar("speed").get_vector(0) + 1); 
 w6IrIe0Y1Ue8UGQQ.getVar("speed").set_vector(2, N32l23Qqk2k1ktHoTA); 
 w6IrIe0Y1Ue8UGQQ.sq_SetStaticSpeedInfo(0, 0, SPEED_VALUE_DEFAULT, (SPEED_VALUE_DEFAULT * N32l23Qqk2k1ktHoTA/100.0).tointeger(), 1.0, 1.0); 
 
 local AHkT__DYAvz4iu8 = onGetMyPassiveObject_My(w6IrIe0Y1Ue8UGQQ, 24375, 231, 1);
 if(AHkT__DYAvz4iu8)
 {
 local SZbjA6l_con_za4G = AHkT__DYAvz4iu8.getCurrentAnimation();
 if(SZbjA6l_con_za4G)
 SZbjA6l_con_za4G.setSpeedRate(N32l23Qqk2k1ktHoTA.tofloat()); 
 AHkT__DYAvz4iu8.getVar("speed").clear_vector(); 
 AHkT__DYAvz4iu8.getVar("speed").push_vector(N32l23Qqk2k1ktHoTA); 
 }
 break;
 }
} ;

 
function onEndCurrentAni_atfighter_finalextremestrike(iDprF5mclvhlGcBRZga)
{
 if(!iDprF5mclvhlGcBRZga) return;
 if(!iDprF5mclvhlGcBRZga.sq_IsMyControlObject()) return;
 local psBp6Y1HPzgZtZPO_gPjwV = iDprF5mclvhlGcBRZga.getSkillSubState(); 
 switch(psBp6Y1HPzgZtZPO_gPjwV)
 {
 case 12:
 case 13:
 iDprF5mclvhlGcBRZga.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 default:
 local EjCVXopbPU5z = psBp6Y1HPzgZtZPO_gPjwV + 1; 
 switch(psBp6Y1HPzgZtZPO_gPjwV)
 {
 case 0: EjCVXopbPU5z = 3; break;
 case 1: EjCVXopbPU5z = 4; break;
 case 2:
 case 3: EjCVXopbPU5z = 5; break;
 case 6:
 if(iDprF5mclvhlGcBRZga.getVar("atkobj").get_obj_vector_size() > 0) 
 EjCVXopbPU5z = 7;
 else 
 EjCVXopbPU5z = 8;
 break;
 case 7:
 case 8: EjCVXopbPU5z = 9; break;
 case 9:
 if(iDprF5mclvhlGcBRZga.getVar("atkobj").get_obj_vector_size() > 0) 
 EjCVXopbPU5z = 10;
 else 
 EjCVXopbPU5z = 11;
 break;
 case 10:case 11:
 return;
 }
 iDprF5mclvhlGcBRZga.sq_IntVectClear();
 iDprF5mclvhlGcBRZga.sq_IntVectPush(EjCVXopbPU5z); 
 iDprF5mclvhlGcBRZga.sq_AddSetStatePacket(231, STATE_PRIORITY_USER, true); 
 break;
 }
} ;

 
function onEndState_atfighter_finalextremestrike(KNPkDuWzso, b7OBdFHvN62bZghBtWfWpRl)
{
 if(!KNPkDuWzso) return;
 if(b7OBdFHvN62bZghBtWfWpRl != 231)
 RemoveAllAni(KNPkDuWzso); 
} ;

function onDeleteAllApAndRestoreRotate_atfighter_finalextremestrike(KNPkDuWzso)
{
 local b7OBdFHvN62bZghBtWfWpRl = KNPkDuWzso.getVar().get_obj_vector_size(); 
 if(b7OBdFHvN62bZghBtWfWpRl > 0)
 {
 local MX7HOR6NMvdwzhwA = KNPkDuWzso.getVar(); 
 for(local BiCFjK2dadZMIQG = 0; BiCFjK2dadZMIQG < b7OBdFHvN62bZghBtWfWpRl; BiCFjK2dadZMIQG++)
 {
 local hMlU0Ha05nd2txJjRuf = MX7HOR6NMvdwzhwA.get_obj_vector(BiCFjK2dadZMIQG); 
 if(!hMlU0Ha05nd2txJjRuf) continue; 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(hMlU0Ha05nd2txJjRuf, "character/atfighter/finalextremestrike/ap_finalextremestrike.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(hMlU0Ha05nd2txJjRuf, "character/atfighter/finalextremestrike/ap_finalextremestrike.nut");
 }
 KNPkDuWzso.getVar().clear_obj_vector(); 
 KNPkDuWzso.getVar("atkobj").clear_obj_vector(); 
 }
} ;

