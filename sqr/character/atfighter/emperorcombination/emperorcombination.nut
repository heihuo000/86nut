
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_atfighter_emperorcombination(JJI83yl5418)
{
 if(!JJI83yl5418) return false; 
 local wrAPoUa86Ub8e_QYWVG = JJI83yl5418.sq_IsUseSkill(225); 
 if(wrAPoUa86Ub8e_QYWVG) 
 {
 JJI83yl5418.sq_IntVectClear();
 JJI83yl5418.sq_IntVectPush(0); 
 JJI83yl5418.sq_AddSetStatePacket(225, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atfighter_emperorcombination(JJI83yl5418)
{
 if(!JJI83yl5418) return false; 
 local wrAPoUa86Ub8e_QYWVG = JJI83yl5418.sq_GetState(); 
 if(wrAPoUa86Ub8e_QYWVG == STATE_STAND) 
 return true; 
 if(wrAPoUa86Ub8e_QYWVG == STATE_ATTACK) 
 {
 return JJI83yl5418.sq_IsCommandEnable(225); 
 }
 return true; 
} ;

 
function onSetState_atfighter_emperorcombination(aaXXqN_BW4JMJP61W477FeDW, CZGUzDnESHSnzhaE8tqxZb, KdcOWe9_no3i5w, uood4Csz7UFcYN)
{
 if(!aaXXqN_BW4JMJP61W477FeDW) return; 
 aaXXqN_BW4JMJP61W477FeDW.getVar().clear_vector(); 
 aaXXqN_BW4JMJP61W477FeDW.getVar().clear_ct_vector(); 
 aaXXqN_BW4JMJP61W477FeDW.getVar().clear_timer_vector();
 
 aaXXqN_BW4JMJP61W477FeDW.getVar().setBool(0, false);
 aaXXqN_BW4JMJP61W477FeDW.getVar().setBool(1, false); 
 local yMdWMaM3BhWHruj8yj = aaXXqN_BW4JMJP61W477FeDW.sq_GetVectorData(KdcOWe9_no3i5w, 0); 
 aaXXqN_BW4JMJP61W477FeDW.setSkillSubState(yMdWMaM3BhWHruj8yj); 
 switch(yMdWMaM3BhWHruj8yj)
 {
 case 0:
 aaXXqN_BW4JMJP61W477FeDW.getVar("aniobj").clear_obj_vector(); 
 aaXXqN_BW4JMJP61W477FeDW.getVar("atkobj").clear_obj_vector(); 
 aaXXqN_BW4JMJP61W477FeDW.sq_StopMove(); 
 aaXXqN_BW4JMJP61W477FeDW.sq_SetCurrentAnimation(161);
 setAttackInfo_atfighter_emperorcombination(aaXXqN_BW4JMJP61W477FeDW, 93, 0); 
 break;
 case 1:
 aaXXqN_BW4JMJP61W477FeDW.sq_SetCurrentAnimation(162);
 setAttackInfo_atfighter_emperorcombination(aaXXqN_BW4JMJP61W477FeDW, 94, 1); 
 aaXXqN_BW4JMJP61W477FeDW.setDirection(sq_GetOppositeDirection(aaXXqN_BW4JMJP61W477FeDW.getDirection())); 
 sq_SetMyShake(aaXXqN_BW4JMJP61W477FeDW, 3, 300); 
 break;
 case 2:
 aaXXqN_BW4JMJP61W477FeDW.sq_SetCurrentAnimation(163);
 aaXXqN_BW4JMJP61W477FeDW.sq_SetCurrentAttackInfo(96);
 aaXXqN_BW4JMJP61W477FeDW.setDirection(sq_GetOppositeDirection(aaXXqN_BW4JMJP61W477FeDW.getDirection())); 
 sq_SetMyShake(aaXXqN_BW4JMJP61W477FeDW, 8, 500); 
 sq_AddDrawOnlyAniFromParent(aaXXqN_BW4JMJP61W477FeDW, "character/fighter/effect/animation/emperorcombination/opatkcbot_05.ani", 0, -1, 0); 
 sq_CreateDrawOnlyObject(aaXXqN_BW4JMJP61W477FeDW, "character/fighter/effect/animation/emperorcombination/opatkctop_01.ani", ENUM_DRAWLAYER_NORMAL, true); 
 if(aaXXqN_BW4JMJP61W477FeDW.sq_IsMyControlObject()) 
 {
 
 local yLevzgxZf2GIc0Nw5CxrB9 = aaXXqN_BW4JMJP61W477FeDW.getCurrentAnimation().getDelaySum(0, 8); 
 local lNz58eOnn4GZO = sq_flashScreen(aaXXqN_BW4JMJP61W477FeDW, yLevzgxZf2GIc0Nw5CxrB9, 99990, 0, 160, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 aaXXqN_BW4JMJP61W477FeDW.getVar("flashobj").clear_obj_vector(); 
 aaXXqN_BW4JMJP61W477FeDW.getVar("flashobj").push_obj_vector(lNz58eOnn4GZO); 
 }
 
 break;
 }
 
 aaXXqN_BW4JMJP61W477FeDW.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onAttack_atfighter_emperorcombination(_qV7y1mSVObiiEzFP, kfa9we4p0FvH9lD, LIQb5jU1nNZK, X2HULqEwJ_P2V1)
{
 if(!_qV7y1mSVObiiEzFP) return;
 if(X2HULqEwJ_P2V1)return;
 local d6n5c7DDeruCIoEtar17P = _qV7y1mSVObiiEzFP.getSkillSubState(); 
 switch(d6n5c7DDeruCIoEtar17P)
 {
 case 0:
 case 1:
 if(_qV7y1mSVObiiEzFP.getVar().getBool(0) == false)
 {
 _qV7y1mSVObiiEzFP.getVar().setBool(0, true); 
 sq_CreateDrawOnlyObject(_qV7y1mSVObiiEzFP, "character/fighter/effect/animation/emperorcombination/opatka_00.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_CreateDrawOnlyObject(_qV7y1mSVObiiEzFP, "character/fighter/effect/animation/emperorcombination/opatkb_00.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_SetMyShake(_qV7y1mSVObiiEzFP, 4, 160); 
 if(_qV7y1mSVObiiEzFP.sq_IsMyControlObject())
 sq_flashScreen(_qV7y1mSVObiiEzFP, 0, 80, 320, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 if(kfa9we4p0FvH9lD.isObjectType(OBJECTTYPE_ACTIVE) && !_qV7y1mSVObiiEzFP.getVar("atkobj").is_obj_vector(kfa9we4p0FvH9lD))
 {
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(kfa9we4p0FvH9lD, "character/atfighter/emperorcombination/ap_emperorcombination.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(kfa9we4p0FvH9lD, "character/atfighter/emperorcombination/ap_emperorcombination.nut");
 if(sq_IsHoldable(_qV7y1mSVObiiEzFP, kfa9we4p0FvH9lD)) 
 {
 local iiiq_0OLx9hXFkhFf97u = CNSquirrelAppendage.sq_AppendAppendage(kfa9we4p0FvH9lD, _qV7y1mSVObiiEzFP, 225, false, "character/atfighter/emperorcombination/ap_emperorcombination.nut", true); 
 sq_HoldAndDelayDie(kfa9we4p0FvH9lD, _qV7y1mSVObiiEzFP, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, iiiq_0OLx9hXFkhFf97u); 
 _qV7y1mSVObiiEzFP.getVar("atkobj").push_obj_vector(kfa9we4p0FvH9lD); 
 }
 }
 break;
 case 2:
 local nEuVZtSgJCX2vNuGa8S = sq_GetCurrentFrameIndex(_qV7y1mSVObiiEzFP); 
 if(nEuVZtSgJCX2vNuGa8S < 17)
 {
 if(_qV7y1mSVObiiEzFP.getVar().getBool(0) == false)
 {
 _qV7y1mSVObiiEzFP.getVar().setBool(0, true); 
 
 local kA6vGvqJbH = _qV7y1mSVObiiEzFP.getObjectManager(); 
 local qz5UU0y6DNxTycKiz9M31dr = kA6vGvqJbH.getCollisionObjectNumber(); 
 for(local FcS7f3VK01XQjo = 0; FcS7f3VK01XQjo < qz5UU0y6DNxTycKiz9M31dr; FcS7f3VK01XQjo++)
 {
 local J41M6K5L0NyOUnFKTu = kA6vGvqJbH.getCollisionObject(FcS7f3VK01XQjo); 
 if(J41M6K5L0NyOUnFKTu) sq_AddHitObject(_qV7y1mSVObiiEzFP, J41M6K5L0NyOUnFKTu); 
 }
 sq_CreateDrawOnlyObject(_qV7y1mSVObiiEzFP, "character/fighter/effect/animation/emperorcombination/opatkd_00.ani", ENUM_DRAWLAYER_NORMAL, true); 
 if(_qV7y1mSVObiiEzFP.sq_IsMyControlObject()) 
 {
 sq_flashScreen(_qV7y1mSVObiiEzFP, 0, 50, 0, 180, sq_RGB(255, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 sq_flashScreen(_qV7y1mSVObiiEzFP, 750, 50, 50, 180, sq_RGB(255, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 local Bqu8AP2RTrEiKqmwM0f6kT = sq_CreateDrawOnlyObject(_qV7y1mSVObiiEzFP, "character/fighter/effect/animation/emperorcombination/opfont_01.ani", ENUM_DRAWLAYER_COVER, true); 
 sq_SetCurrentDirection(Bqu8AP2RTrEiKqmwM0f6kT, ENUM_DIRECTION_RIGHT); 
 _qV7y1mSVObiiEzFP.getVar("aniobj").push_obj_vector(Bqu8AP2RTrEiKqmwM0f6kT); 
 }
 }
 }
 else 
 {
 
 if(sq_IsHoldable(_qV7y1mSVObiiEzFP, kfa9we4p0FvH9lD)
 && sq_IsGrabable(_qV7y1mSVObiiEzFP, kfa9we4p0FvH9lD)
 && !sq_IsFixture(kfa9we4p0FvH9lD)
 && !CNSquirrelAppendage.sq_IsAppendAppendage(_qV7y1mSVObiiEzFP, "character/atfighter/emperorcombination/ap_emperorcombination_rotate.nut")
 && kfa9we4p0FvH9lD.isObjectType(OBJECTTYPE_ACTIVE))
 {
 CNSquirrelAppendage.sq_AppendAppendage(kfa9we4p0FvH9lD, _qV7y1mSVObiiEzFP, 225, true, "character/atfighter/emperorcombination/ap_emperorcombination_rotate.nut", true); 
 }
 }
 break;
 }
} ;

function onKeyFrameFlag_atfighter_emperorcombination(H1Nsp49mua, YAvHbZRvEK5EG)
{
 if(!H1Nsp49mua) return false;
 local S7SfqbsNQZREQD = H1Nsp49mua.getSkillSubState(); 
 switch(YAvHbZRvEK5EG)
 {
 case 1:
 local DCLAuL0zyiL1S1eIh = 0; 
 local wWNge5FZR9Rw = -1; 
 local hK1ZBtLnlOTv6pcWBferzbq = -1; 
 switch(S7SfqbsNQZREQD)
 {
 case 0:
 case 1:
 DCLAuL0zyiL1S1eIh = 450; 
 wWNge5FZR9Rw = 3; 
 hK1ZBtLnlOTv6pcWBferzbq = 5; 
 sq_SetMyShake(H1Nsp49mua, 3, 300); 
 break;
 case 2:
 DCLAuL0zyiL1S1eIh = 530; 
 wWNge5FZR9Rw = 13; 
 hK1ZBtLnlOTv6pcWBferzbq = 19; 
 break;
 }
 H1Nsp49mua.getVar().clear_vector(); 
 H1Nsp49mua.getVar().push_vector(H1Nsp49mua.getXPos()); 
 H1Nsp49mua.getVar().push_vector(DCLAuL0zyiL1S1eIh); 
 H1Nsp49mua.getVar().push_vector(wWNge5FZR9Rw); 
 H1Nsp49mua.getVar().push_vector(hK1ZBtLnlOTv6pcWBferzbq); 
 break;
 case 3:
 sq_SetMyShake(H1Nsp49mua, 4, 160); 
 break;
 case 4:
 onDeleteAllObjAp_atfighter_emperorcombination(H1Nsp49mua); 
 setAttackInfo_atfighter_emperorcombination(H1Nsp49mua, 95, 2); 
 if(H1Nsp49mua.sq_IsMyControlObject())
 sq_flashScreen(H1Nsp49mua, 0, 80, 320, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 if(H1Nsp49mua.getVar().getBool(0) == true) 
 {
 sq_CreateDrawOnlyObject(H1Nsp49mua, "character/fighter/effect/animation/emperorcombination/opatke_01.ani", ENUM_DRAWLAYER_NORMAL, true); 
 if(H1Nsp49mua.sq_IsMyControlObject()) 
 {
 local lPDBgtKK3dmwP9ulnW = sq_CreateDrawOnlyObject(H1Nsp49mua, "character/fighter/effect/animation/emperorcombination/opatkf_00.ani", ENUM_DRAWLAYER_COVER, true); 
 H1Nsp49mua.getVar("aniobj").push_obj_vector(lPDBgtKK3dmwP9ulnW); 
 }
 }
 break;
 }
 return true;
} ;

 
function onProc_atfighter_emperorcombination(XImshNIhIqkXK)
{
 if(!XImshNIhIqkXK) return;
 local pm5lbAlakKyda = XImshNIhIqkXK.getSkillSubState(); 
 if(XImshNIhIqkXK.getVar().getBool(0) == true && XImshNIhIqkXK.getVar().getBool(1) == false)
 {
 XImshNIhIqkXK.getVar().setBool(1, true); 
 setAttackInfo_atfighter_emperorcombination(XImshNIhIqkXK, 95, pm5lbAlakKyda); 
 }
 if(XImshNIhIqkXK.getVar().size_vector() > 0)
 {
 local lEOHAhtpAZfosT = XImshNIhIqkXK.getVar(); 
 local tmhccsZJn4tGnuO = XImshNIhIqkXK.getCurrentAnimation(); 
 local eTf34zEql_K = sq_GetCurrentTime(tmhccsZJn4tGnuO) - tmhccsZJn4tGnuO.getDelaySum(0, lEOHAhtpAZfosT.get_vector(2) - 1); 
 local s5tgGNdiJLJMzF9SvEI31D = tmhccsZJn4tGnuO.getDelaySum(lEOHAhtpAZfosT.get_vector(2), lEOHAhtpAZfosT.get_vector(3)); 
 local OMQoENy2vx3RzJJ = lEOHAhtpAZfosT.get_vector(1); 
 local TXkuqGgWoaLTKoHGjAQhtUAa = sq_GetDistancePos(lEOHAhtpAZfosT.get_vector(0),
 XImshNIhIqkXK.getDirection(), 
 sq_GetUniformVelocity(0, OMQoENy2vx3RzJJ, eTf34zEql_K, s5tgGNdiJLJMzF9SvEI31D)); 
 if(XImshNIhIqkXK.isMovablePos(TXkuqGgWoaLTKoHGjAQhtUAa, XImshNIhIqkXK.getYPos())) 
 sq_setCurrentAxisPos(XImshNIhIqkXK, 0, TXkuqGgWoaLTKoHGjAQhtUAa); 
 else
 {
 local LpcjqUCYR69QbqKQ_0 = sq_Abs(TXkuqGgWoaLTKoHGjAQhtUAa - XImshNIhIqkXK.getXPos());
 if(LpcjqUCYR69QbqKQ_0 != 0)
 XImshNIhIqkXK.getVar().set_vector(1, (OMQoENy2vx3RzJJ > 0) ? OMQoENy2vx3RzJJ - LpcjqUCYR69QbqKQ_0 : OMQoENy2vx3RzJJ + LpcjqUCYR69QbqKQ_0);
 }
 }
 switch(pm5lbAlakKyda)
 {
 case 0:
 case 1:
 local tmhccsZJn4tGnuO = XImshNIhIqkXK.getCurrentAnimation(); 
 local kcXq8YB_teUtXmPJtYl = 7; 
 local _T6KwNVYtLw_z = tmhccsZJn4tGnuO.getDelaySum(3, 5) / kcXq8YB_teUtXmPJtYl;
 local LdUHLT8EN1_1pqbWbyILUUg = XImshNIhIqkXK.getVar().get_timer_vector(0); 
 if(LdUHLT8EN1_1pqbWbyILUUg)
 {
 
 if(LdUHLT8EN1_1pqbWbyILUUg.getEventTerm() != _T6KwNVYtLw_z)
 LdUHLT8EN1_1pqbWbyILUUg.setEventTerm(_T6KwNVYtLw_z);
 local eTf34zEql_K = sq_GetCurrentTime(tmhccsZJn4tGnuO) - tmhccsZJn4tGnuO.getDelaySum(0, 2); 
 if(LdUHLT8EN1_1pqbWbyILUUg.isOnEvent(eTf34zEql_K) == true) 
 sq_CreateDrawOnlyObject(XImshNIhIqkXK, "character/fighter/effect/animation/emperorcombination/opdasheff_00.ani", ENUM_DRAWLAYER_NORMAL, true);
 }
 else
 {
 XImshNIhIqkXK.getVar().push_timer_vector();
 LdUHLT8EN1_1pqbWbyILUUg = XImshNIhIqkXK.getVar().get_timer_vector(0);
 LdUHLT8EN1_1pqbWbyILUUg.setEventOnStart(true); 
 LdUHLT8EN1_1pqbWbyILUUg.setParameter(_T6KwNVYtLw_z, kcXq8YB_teUtXmPJtYl); 
 LdUHLT8EN1_1pqbWbyILUUg.resetInstant(0); 
 }
 break;
 }
} ;

 
function onProcCon_atfighter_emperorcombination(zP1FlepeVQEe)
{
 if(!zP1FlepeVQEe) return;
 local jv39qC6CMk1DbfP4Zo9 = zP1FlepeVQEe.getVar("aniobj").get_obj_vector_size(); 
 if(jv39qC6CMk1DbfP4Zo9 > 0)
 {
 local cNxUU9YKIco3Jz = zP1FlepeVQEe.getObjectManager(); 
 local PetsXKygi_1VJQ72izZ = cNxUU9YKIco3Jz.getFieldXPos(400, ENUM_DRAWLAYER_NORMAL);
 local l1fx0uyrx9MV3 = cNxUU9YKIco3Jz.getFieldYPos(600, 0, ENUM_DRAWLAYER_NORMAL);
 for(local eZTNyz9QrUYrJiQl0QBy = 0; eZTNyz9QrUYrJiQl0QBy < jv39qC6CMk1DbfP4Zo9; eZTNyz9QrUYrJiQl0QBy++)
 {
 local OHSaTW1X815Z7v = zP1FlepeVQEe.getVar("aniobj").get_obj_vector(eZTNyz9QrUYrJiQl0QBy); 
 if(OHSaTW1X815Z7v)
 {
 sq_setCurrentAxisPos(OHSaTW1X815Z7v, 0, PetsXKygi_1VJQ72izZ); 
 sq_setCurrentAxisPos(OHSaTW1X815Z7v, 1, l1fx0uyrx9MV3); 
 }
 }
 }
} ;

 
function onEndCurrentAni_atfighter_emperorcombination(GrrnmCJ3lRavkHZdlmP5WvIx)
{
 if(!GrrnmCJ3lRavkHZdlmP5WvIx) return;
 if(!GrrnmCJ3lRavkHZdlmP5WvIx.sq_IsMyControlObject()) return;
 local vYLqjywITECXyUw1 = GrrnmCJ3lRavkHZdlmP5WvIx.getSkillSubState(); 
 if(vYLqjywITECXyUw1 != 2)
 {
 GrrnmCJ3lRavkHZdlmP5WvIx.sq_IntVectClear();
 GrrnmCJ3lRavkHZdlmP5WvIx.sq_IntVectPush(vYLqjywITECXyUw1 + 1); 
 GrrnmCJ3lRavkHZdlmP5WvIx.sq_AddSetStatePacket(225, STATE_PRIORITY_USER, true); 
 }
 else
 GrrnmCJ3lRavkHZdlmP5WvIx.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

 
function onEndState_atfighter_emperorcombination(GrrnmCJ3lRavkHZdlmP5WvIx, vYLqjywITECXyUw1)
{
 if(!GrrnmCJ3lRavkHZdlmP5WvIx) return;
 
 if(vYLqjywITECXyUw1 != 225)
 {
 RemoveAllFlash(GrrnmCJ3lRavkHZdlmP5WvIx); 
 if(GrrnmCJ3lRavkHZdlmP5WvIx.sq_IsMyControlObject() && vYLqjywITECXyUw1 == STATE_STAND && GrrnmCJ3lRavkHZdlmP5WvIx.getSkillSubState() == 2) 
 sq_flashScreen(GrrnmCJ3lRavkHZdlmP5WvIx, 0, 0, 300, 160, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
} ;

function onDeleteAllObjAp_atfighter_emperorcombination(ngRFn5K2djHvD0L)
{
 local z0Vrvri3Owm = ngRFn5K2djHvD0L.getVar("atkobj").get_obj_vector_size(); 
 local ealE6toqGMSlzj = ngRFn5K2djHvD0L.getVar("atkobj"); 
 for(local IsgNIDGeLr = 0; IsgNIDGeLr < z0Vrvri3Owm; IsgNIDGeLr++)
 {
 local Lt7Q4fvm_2 = ealE6toqGMSlzj.get_obj_vector(IsgNIDGeLr); 
 if(Lt7Q4fvm_2
 && CNSquirrelAppendage.sq_IsAppendAppendage(Lt7Q4fvm_2, "character/atfighter/emperorcombination/ap_emperorcombination.nut")) 
 CNSquirrelAppendage.sq_RemoveAppendage(Lt7Q4fvm_2, "character/atfighter/emperorcombination/ap_emperorcombination.nut"); 
 }
 ngRFn5K2djHvD0L.getVar("atkobj").clear_obj_vector(); 
} ;

 
function setAttackInfo_atfighter_emperorcombination(ngRFn5K2djHvD0L, z0Vrvri3Owm, ealE6toqGMSlzj)
{
 if(!ngRFn5K2djHvD0L) return;
 ngRFn5K2djHvD0L.sq_SetCurrentAttackInfo(z0Vrvri3Owm);
 local IsgNIDGeLr = ngRFn5K2djHvD0L.sq_GetBonusRateWithPassive(225, 225, ealE6toqGMSlzj, 1.0); 
 ngRFn5K2djHvD0L.sq_SetCurrentAttackBonusRate(IsgNIDGeLr); 
} ;

