
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
 
function onAttack_po_qq506807329new_gunner_24371(kUyu6ilA80Ua, CyqJIjoiffBhfmW, _bs_IqHJZZgSN, WvBboUR4khSZNopKAOKc9zaa)
{
 if(!kUyu6ilA80Ua)return 0;
 local DjsNG1bphKjlJiVEC5V = kUyu6ilA80Ua.getVar("skill").get_vector(0);
 switch(DjsNG1bphKjlJiVEC5V)
 {
 case 232: 
 if(WvBboUR4khSZNopKAOKc9zaa || !CyqJIjoiffBhfmW.isObjectType(OBJECTTYPE_ACTIVE)) return; 
 local Jebb19ICzH3eW = kUyu6ilA80Ua.getVar("state").get_vector(0); 
 if(Jebb19ICzH3eW < 12) 
 {
 
 if(sq_IsHoldable(kUyu6ilA80Ua, CyqJIjoiffBhfmW)
 && sq_IsGrabable(kUyu6ilA80Ua, CyqJIjoiffBhfmW)
 && !sq_IsFixture(CyqJIjoiffBhfmW))
 {
 kUyu6ilA80Ua.getVar().push_obj_vector(CyqJIjoiffBhfmW); 
 }
 else if(kUyu6ilA80Ua.isMyControlObject())
 {
 kUyu6ilA80Ua.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 if(Jebb19ICzH3eW == 10 && kUyu6ilA80Ua.isMyControlObject())
 kUyu6ilA80Ua.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 234: 
 
 if(WvBboUR4khSZNopKAOKc9zaa
 || !CyqJIjoiffBhfmW.isObjectType(OBJECTTYPE_ACTIVE)
 || CNSquirrelAppendage.sq_IsAppendAppendage(CyqJIjoiffBhfmW, "character/gunner/plasmaboost/ap_plasmaboost.nut")
 || !sq_IsHoldable(kUyu6ilA80Ua, CyqJIjoiffBhfmW)) return;
 local Ruo7TfrQmkZhCjCXyfg5LbZ = CNSquirrelAppendage.sq_AppendAppendage(CyqJIjoiffBhfmW, kUyu6ilA80Ua, 234, true, "character/gunner/plasmaboost/ap_plasmaboost.nut", true);
 sq_HoldAndDelayDie(CyqJIjoiffBhfmW, kUyu6ilA80Ua, true, false, false, 0, 0, ENUM_DIRECTION_NEUTRAL, Ruo7TfrQmkZhCjCXyfg5LbZ);
 Ruo7TfrQmkZhCjCXyfg5LbZ.getVar().clear_vector(); 
 Ruo7TfrQmkZhCjCXyfg5LbZ.getVar().push_vector(kUyu6ilA80Ua.getVar().get_vector(0)); 
 break;
 case 235: 
 if(WvBboUR4khSZNopKAOKc9zaa || !CyqJIjoiffBhfmW.isObjectType(OBJECTTYPE_ACTIVE)) return;
 local BTsRKWGtJBPUaGlm1rT5TE = kUyu6ilA80Ua.getVar("subType").get_vector(0); 
 if(BTsRKWGtJBPUaGlm1rT5TE == 1) 
 {
 if(sq_IsHoldable(kUyu6ilA80Ua, CyqJIjoiffBhfmW) && sq_IsGrabable(kUyu6ilA80Ua, CyqJIjoiffBhfmW) && !sq_IsFixture(CyqJIjoiffBhfmW))
 {
 local g_QQUGv01fxwM = kUyu6ilA80Ua.getTopCharacter(); 
 if(g_QQUGv01fxwM)
 {
 local YAMTYmNIyn = CNSquirrelAppendage.sq_GetAppendage(CyqJIjoiffBhfmW, "character/gunner/bursterbeamnew/ap_bursterbeamnew.nut"); 
 if(YAMTYmNIyn)YAMTYmNIyn.setValid(false); 
 
 YAMTYmNIyn = CNSquirrelAppendage.sq_AppendAppendage(CyqJIjoiffBhfmW, g_QQUGv01fxwM, 235, true, "character/gunner/bursterbeamnew/ap_bursterbeamnew.nut", true); 
 if(YAMTYmNIyn)
 {
 sq_HoldAndDelayDie(CyqJIjoiffBhfmW, g_QQUGv01fxwM, true, true, true, 80, 200, ENUM_DIRECTION_NEUTRAL, YAMTYmNIyn); 
 sq_MoveToAppendage(CyqJIjoiffBhfmW, g_QQUGv01fxwM, g_QQUGv01fxwM, 445, 0, g_QQUGv01fxwM.getZPos() / -1, 200, true, YAMTYmNIyn); 
 }
 }
 }
 }
 break;
 case 239: 
 
 if(!CyqJIjoiffBhfmW || !CyqJIjoiffBhfmW.isObjectType(OBJECTTYPE_ACTIVE) || WvBboUR4khSZNopKAOKc9zaa) return;
 local BJ4TZGqoh4Ru08kp = sq_GetWidthObject(CyqJIjoiffBhfmW) / 2 / 2; 
 local ApKElvkxUl_4oQA08ANld9mp = sq_GetCenterZPos(_bs_IqHJZZgSN); 
 
 local YMNzNcry1_BPJzpTqrswt7x = sq_CreateAnimation("", "character/gunner/effect/animation/fastdraw/hit_light.ani"); 
 local fZgzLQnAbPLnz1OBDHuQGop = sq_CreatePooledObject(YMNzNcry1_BPJzpTqrswt7x, true); 
 sq_SetCurrentDirection(fZgzLQnAbPLnz1OBDHuQGop, kUyu6ilA80Ua.getDirection()); 
 fZgzLQnAbPLnz1OBDHuQGop.setCurrentPos(sq_GetDistancePos(CyqJIjoiffBhfmW.getXPos(), kUyu6ilA80Ua.getDirection(), BJ4TZGqoh4Ru08kp), CyqJIjoiffBhfmW.getYPos(), CyqJIjoiffBhfmW.getZPos() + ApKElvkxUl_4oQA08ANld9mp); 
 fZgzLQnAbPLnz1OBDHuQGop = sq_SetEnumDrawLayer(fZgzLQnAbPLnz1OBDHuQGop, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(kUyu6ilA80Ua, fZgzLQnAbPLnz1OBDHuQGop, OBJECTTYPE_DRAWONLY, false); 
 break;
 case 240: 
 
 if(!CyqJIjoiffBhfmW || !CyqJIjoiffBhfmW.isObjectType(OBJECTTYPE_ACTIVE) || WvBboUR4khSZNopKAOKc9zaa) return;
 
 local YMNzNcry1_BPJzpTqrswt7x = sq_CreateAnimation("", "character/gunner/effect/animation/seventhflow/add_attack/attack_normal.ani"); 
 local fZgzLQnAbPLnz1OBDHuQGop = sq_CreatePooledObject(YMNzNcry1_BPJzpTqrswt7x, true); 
 sq_SetCurrentDirection(fZgzLQnAbPLnz1OBDHuQGop, sq_GetOppositeDirection(sq_GetDirection(CyqJIjoiffBhfmW))); 
 fZgzLQnAbPLnz1OBDHuQGop.setCurrentPos(CyqJIjoiffBhfmW.getXPos(), CyqJIjoiffBhfmW.getYPos() + 1, CyqJIjoiffBhfmW.getZPos() + sq_GetCenterZPos(_bs_IqHJZZgSN)); 
 fZgzLQnAbPLnz1OBDHuQGop = sq_SetEnumDrawLayer(fZgzLQnAbPLnz1OBDHuQGop, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(kUyu6ilA80Ua, fZgzLQnAbPLnz1OBDHuQGop, OBJECTTYPE_DRAWONLY, false); 
 break;
 case 245: 
 local Jebb19ICzH3eW = kUyu6ilA80Ua.getVar("state").get_vector(0);
 if(Jebb19ICzH3eW != 11) return; 
 
 if(!CyqJIjoiffBhfmW 
 || !CyqJIjoiffBhfmW.isObjectType(OBJECTTYPE_ACTIVE) 
 || WvBboUR4khSZNopKAOKc9zaa 
 || !sq_IsHoldable(kUyu6ilA80Ua, CyqJIjoiffBhfmW)) return;
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(CyqJIjoiffBhfmW, "character/gunner/supernova/ap_supernova.nut")) 
 {
 local Ruo7TfrQmkZhCjCXyfg5LbZ = CNSquirrelAppendage.sq_AppendAppendage(CyqJIjoiffBhfmW, kUyu6ilA80Ua, 245, true, "character/gunner/supernova/ap_supernova.nut", true); 
 }
 local XY2kHPyRm_yc0Bs4KUD = ENUM_DIRECTION_RIGHT; 
 local sIDsLmhN1F = CyqJIjoiffBhfmW.getXPos(); 
 local ZfzVgaqOIHDvhm8J4 = kUyu6ilA80Ua.getXPos(); 
 if(ZfzVgaqOIHDvhm8J4 > sIDsLmhN1F) 
 XY2kHPyRm_yc0Bs4KUD = ENUM_DIRECTION_LEFT; 
 
 local YMNzNcry1_BPJzpTqrswt7x = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/hit_shadow.ani"); 
 local fZgzLQnAbPLnz1OBDHuQGop = sq_CreatePooledObject(YMNzNcry1_BPJzpTqrswt7x, true); 
 sq_SetCurrentDirection(fZgzLQnAbPLnz1OBDHuQGop, XY2kHPyRm_yc0Bs4KUD); 
 fZgzLQnAbPLnz1OBDHuQGop.setCurrentPos(sIDsLmhN1F, CyqJIjoiffBhfmW.getYPos(), CyqJIjoiffBhfmW.getZPos() + sq_GetObjectHeight(CyqJIjoiffBhfmW) / 2); 
 fZgzLQnAbPLnz1OBDHuQGop = sq_SetEnumDrawLayer(fZgzLQnAbPLnz1OBDHuQGop, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(kUyu6ilA80Ua, fZgzLQnAbPLnz1OBDHuQGop, OBJECTTYPE_DRAWONLY, false); 
 break;
 }
} ;
 


 
 
function onKeyFrameFlag_po_qq506807329new_gunner_24371(StsCalew8ZSuOWpkyc11Le, G5WVmF2U2bCiRV1BTVR)
{
 if(!StsCalew8ZSuOWpkyc11Le) return false;
 local ZICS3a0EC8_NvWQHPvTg5rO = StsCalew8ZSuOWpkyc11Le.getVar("skill").get_vector(0);
 switch(ZICS3a0EC8_NvWQHPvTg5rO)
 {
 case 232: 
 local HpUvtmf6tiD4qKZyFjSX = StsCalew8ZSuOWpkyc11Le.getVar("state").get_vector(0); 
 if(HpUvtmf6tiD4qKZyFjSX == 12 && G5WVmF2U2bCiRV1BTVR == 1) 
 sq_SetMyShake(StsCalew8ZSuOWpkyc11Le, 10, 120); 
 break;
 case 233: 
 local ND1ser7oyJYMwNATxg = StsCalew8ZSuOWpkyc11Le.getVar("subType").get_vector(0); 
 if(ND1ser7oyJYMwNATxg == 1)
 {
 local HpUvtmf6tiD4qKZyFjSX = StsCalew8ZSuOWpkyc11Le.getVar("state").get_vector(0); 
 if(HpUvtmf6tiD4qKZyFjSX == 13) 
 {
 switch(G5WVmF2U2bCiRV1BTVR)
 {
 case 1: StsCalew8ZSuOWpkyc11Le.resetHitObjectList(); break;
 case 2: sq_SetMyShake(StsCalew8ZSuOWpkyc11Le, 3, 150); break;
 }
 }
 else if(HpUvtmf6tiD4qKZyFjSX == 15 && G5WVmF2U2bCiRV1BTVR == 2) 
 if(StsCalew8ZSuOWpkyc11Le.isMyControlObject())
 sq_flashScreen(StsCalew8ZSuOWpkyc11Le, 0, 80, 100, 76, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 case 235: 
 local ND1ser7oyJYMwNATxg = StsCalew8ZSuOWpkyc11Le.getVar("subType").get_vector(0); 
 if(ND1ser7oyJYMwNATxg == 2 && StsCalew8ZSuOWpkyc11Le.isMyControlObject()) 
 switch(G5WVmF2U2bCiRV1BTVR)
 {
 case 1: 
 sq_flashScreen(StsCalew8ZSuOWpkyc11Le, 40, 60, 80, 153, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 sq_SetMyShake(StsCalew8ZSuOWpkyc11Le, 2, 240); 
 break;
 case 2: 
 sq_flashScreen(StsCalew8ZSuOWpkyc11Le, 40, 60, 80, 165, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 sq_SetMyShake(StsCalew8ZSuOWpkyc11Le, 3, 180); 
 break;
 case 3: 
 sq_flashScreen(StsCalew8ZSuOWpkyc11Le, 40, 60, 160, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 sq_SetMyShake(StsCalew8ZSuOWpkyc11Le, 5, 120); 
 break;
 case 4: 
 sq_flashScreen(StsCalew8ZSuOWpkyc11Le, 80, 480, 480, 229, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 sq_SetMyShake(StsCalew8ZSuOWpkyc11Le, 20, 2000); 
 break;
 case 5: 
 sq_SetMyShake(StsCalew8ZSuOWpkyc11Le, 1, 480); 
 break;
 }
 break;
 case 242: 
 if(StsCalew8ZSuOWpkyc11Le.isMyControlObject())
 if(StsCalew8ZSuOWpkyc11Le.getVar("state").get_vector(0) == 14) 
 switch(G5WVmF2U2bCiRV1BTVR)
 {
 case 1:
 sq_flashScreen(StsCalew8ZSuOWpkyc11Le, 0, 50, 0, 102, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 case 2:
 sq_flashScreen(StsCalew8ZSuOWpkyc11Le, 0, 20, 180, 127, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 sq_SetMyShake(StsCalew8ZSuOWpkyc11Le, 3, 200); 
 break;
 }
 break;
 case 245: 
 local ND1ser7oyJYMwNATxg = StsCalew8ZSuOWpkyc11Le.getVar("subType").get_vector(0); 
 if(ND1ser7oyJYMwNATxg == 1)
 {
 local HpUvtmf6tiD4qKZyFjSX = StsCalew8ZSuOWpkyc11Le.getVar("state").get_vector(0); 
 if(HpUvtmf6tiD4qKZyFjSX == 11) 
 {
 switch(G5WVmF2U2bCiRV1BTVR)
 {
 case 1: sq_SetMyShake(StsCalew8ZSuOWpkyc11Le, 4, 200); break; 
 case 2: sq_SetMyShake(StsCalew8ZSuOWpkyc11Le, 2, 120); break; 
 case 3: sq_SetMyShake(StsCalew8ZSuOWpkyc11Le, 1, 160); break; 
 }
 }
 else if(HpUvtmf6tiD4qKZyFjSX == 12) 
 {
 if(G5WVmF2U2bCiRV1BTVR == 1)
 sq_SetMyShake(StsCalew8ZSuOWpkyc11Le, 1, 80); 
 }
 }
 break;
 case 247: 
 local ND1ser7oyJYMwNATxg = StsCalew8ZSuOWpkyc11Le.getVar("subType").get_vector(0); 
 if(ND1ser7oyJYMwNATxg == 3) 
 {
 local hCCMAVRMYfYQxSc = StsCalew8ZSuOWpkyc11Le.getVar().get_vector(0) - 1; 
 if(hCCMAVRMYfYQxSc <= 0)hCCMAVRMYfYQxSc = 1; 
 local XsN6sv9bxnebMX1O = sq_GetCurrentAnimation(StsCalew8ZSuOWpkyc11Le); 
 local ccFvIuWqaMUN = sq_GetAnimationFrameIndex(XsN6sv9bxnebMX1O); 
 local yyBBWYGH_DSfcwP50DdVh4uO = XsN6sv9bxnebMX1O.getDelaySum(ccFvIuWqaMUN, ccFvIuWqaMUN); 
 StsCalew8ZSuOWpkyc11Le.setTimeEvent(5, yyBBWYGH_DSfcwP50DdVh4uO / hCCMAVRMYfYQxSc, hCCMAVRMYfYQxSc, false); 
 }
 break;
 }
 return true;
} ;
 

 
 
function onTimeEvent_po_qq506807329new_gunner_24371(xW1dmlCTtMs, D5fMSZjRbao0, rg5zwWpYmOq6kCWY9)
{
 if(!xW1dmlCTtMs) return false;
 sq_IntVectorClear(sq_GetGlobalIntVector()); 
 local GDlOiJbNSW0 = xW1dmlCTtMs.getVar("skill").get_vector(0);
 switch(GDlOiJbNSW0)
 {
 case 234: 
 if(D5fMSZjRbao0 == 0)
 xW1dmlCTtMs.resetHitObjectList(); 
 break;
 case 237: 
 if(D5fMSZjRbao0 == 0)
 xW1dmlCTtMs.resetHitObjectList(); 
 break;
 case 240: 
 if(D5fMSZjRbao0 == 0)
 xW1dmlCTtMs.resetHitObjectList(); 
 break;
 case 242: 
 switch(D5fMSZjRbao0)
 {
 case 0:
 if(xW1dmlCTtMs.isMyControlObject())
 xW1dmlCTtMs.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 break;
 case 1:
 xW1dmlCTtMs.resetHitObjectList(); 
 break;
 case 2:
 if(xW1dmlCTtMs.isMyControlObject())
 xW1dmlCTtMs.addSetStatePacket(14, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 break;
 }
 break;
 case 243: 
 switch(D5fMSZjRbao0)
 {
 case 0:
 local ro0Lc4Hw2f2bqgeLaB = xW1dmlCTtMs.getVar().get_vector(1); 
 if(ro0Lc4Hw2f2bqgeLaB > 0) 
 {
 if(xW1dmlCTtMs.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(243); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteWord(sq_getRandom(17, 20)); 
 sq_BinaryWriteDword(xW1dmlCTtMs.getVar().get_vector(0)); 
 sq_BinaryWriteDword(xW1dmlCTtMs.getXPos()); 
 sq_BinaryWriteDword(xW1dmlCTtMs.getYPos()); 
 sq_BinaryWriteWord(xW1dmlCTtMs.getVar().getInt(0)); 
 sq_SendCreatePassiveObjectPacketPos(xW1dmlCTtMs, 24371, 0, xW1dmlCTtMs.getVar().get_vector(3), xW1dmlCTtMs.getVar().get_vector(4), 1000); 
 }
 xW1dmlCTtMs.getVar().set_vector(1, ro0Lc4Hw2f2bqgeLaB - 1); 
 }
 else if(xW1dmlCTtMs.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(xW1dmlCTtMs); 
 break;
 case 1:
 case 2:
 local Mfuby2d7yVtJOYMTL6mjbH = null; 
 if(D5fMSZjRbao0 == 1) 
 Mfuby2d7yVtJOYMTL6mjbH = sq_CreateDrawOnlyObject(xW1dmlCTtMs, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangersmoke.ani", ENUM_DRAWLAYER_NORMAL, true);
 else if(D5fMSZjRbao0 == 2) 
 sq_AddDrawOnlyAniFromParent(xW1dmlCTtMs, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/missilesmoke" + (sq_getRandom(1, 3)).tostring() + ".ani", 0, -1, 0);
 local wgACbZTYRGF2rGDDH8NQyHba = (xW1dmlCTtMs.getVar().get_vector(5)).tofloat(); 
 sq_SetCustomRotate(Mfuby2d7yVtJOYMTL6mjbH, sq_ToRadian(wgACbZTYRGF2rGDDH8NQyHba)); 
 break;
 }
 break;
 case 244: 
 switch(D5fMSZjRbao0)
 {
 case 0:
 if(xW1dmlCTtMs.isMyControlObject()) 
 xW1dmlCTtMs.addSetStatePacket(14, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 break;
 case 1:
 break;
 }
 break;
 case 245: 
 switch(D5fMSZjRbao0)
 {
 case 0:
 if(xW1dmlCTtMs.isMyControlObject())
 xW1dmlCTtMs.addSetStatePacket(13, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 break;
 case 1:
 xW1dmlCTtMs.resetHitObjectList(); 
 break;
 case 2:
 if(xW1dmlCTtMs.isMyControlObject())
 sq_flashScreen(xW1dmlCTtMs, xW1dmlCTtMs.getVar().getInt(0) + 200, 50, 300, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER); 
 break;
 case 3:
 if(xW1dmlCTtMs.isMyControlObject())
 xW1dmlCTtMs.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 break;
 }
 break;
 case 246: 
 switch(D5fMSZjRbao0)
 {
 case 0: 
 local aSsDSbo8ht9c7HtEiW2VESH = sq_GetCNRDObjectToCollisionObject(xW1dmlCTtMs.getParent()); 
 if(aSsDSbo8ht9c7HtEiW2VESH && aSsDSbo8ht9c7HtEiW2VESH.getVar("state").get_vector(0) < 16) 
 {
 local kSomuPrLh2s = aSsDSbo8ht9c7HtEiW2VESH.getVar("atkcount").get_vector(0); 
 local hZZucXHQEuI = aSsDSbo8ht9c7HtEiW2VESH.getVar("atkcount").get_vector(1); 
 if(hZZucXHQEuI < kSomuPrLh2s) 
 {
 xW1dmlCTtMs.resetHitObjectList(); 
 aSsDSbo8ht9c7HtEiW2VESH.getVar("atkcount").set_vector(1, hZZucXHQEuI + 1);
 }
 }
 else if(xW1dmlCTtMs.isMyControlObject()) 
 sq_SendDestroyPacketPassiveObject(xW1dmlCTtMs); 
 break;
 case 1:
 sq_AddDrawOnlyAniFromParent(xW1dmlCTtMs, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missilesmoke_00.ani", 0, -1, 0);
 break;
 }
 break;
 case 247: 
 switch(D5fMSZjRbao0)
 {
 case 0: 
 if(xW1dmlCTtMs.isMyControlObject())
 sq_flashScreen(xW1dmlCTtMs, 0, 80, 600, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 break;
 case 1: 
 sq_SetMyShake(xW1dmlCTtMs, 2, 1000); 
 break;
 case 2: 
 if(xW1dmlCTtMs.isMyControlObject())
 sq_flashScreen(xW1dmlCTtMs, 0, 0, 160, 178, sq_RGB(255, 255, 255), GRAPHICEFFECT_DODGE, ENUM_DRAWLAYER_BOTTOM);
 break;
 case 3: 
 if(xW1dmlCTtMs.isMyControlObject())
 xW1dmlCTtMs.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 break;
 case 4: 
 sq_SetMyShake(xW1dmlCTtMs, 1, 100); 
 break;
 case 5: 
 xW1dmlCTtMs.resetHitObjectList(); 
 break;
 }
 break;
 }
} ;
 

 
function getCustomHitEffectFileName_po_qq506807329new_gunner_24371(nlCmXw8MK7Tkm5, LnURtZ_rAbk8SrLxEwlD8v)
{
 if(!nlCmXw8MK7Tkm5) return "";
 local c5nuCQ34XBsF3c72 = nlCmXw8MK7Tkm5.getVar("skill").get_vector(0);
 switch(c5nuCQ34XBsF3c72)
 {
 case 237: 
 local myq1z3gSMT2u7aY = nlCmXw8MK7Tkm5.getVar("subType").get_vector(0); 
 if(myq1z3gSMT2u7aY == 2) 
 return "character/gunner/effect/animation/hiteffect/updefault.ani"; 
 return "";
 case 236: 
 case 239: 
 case 240: 
 return "character/gunner/effect/animation/hiteffect/updefault.ani"; 
 default: 
 return "";
 }
} ;

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onChangeSkillEffect_po_qq506807329new_gunner_24371(nlCmXw8MK7Tkm5, LnURtZ_rAbk8SrLxEwlD8v, c5nuCQ34XBsF3c72)
{
 if(!nlCmXw8MK7Tkm5) return;
 switch(LnURtZ_rAbk8SrLxEwlD8v)
 {
 case 244: 
 local myq1z3gSMT2u7aY = sq_GetObject(nlCmXw8MK7Tkm5, c5nuCQ34XBsF3c72.readDword(), c5nuCQ34XBsF3c72.readDword()); 
 nlCmXw8MK7Tkm5.getVar().push_obj_vector(myq1z3gSMT2u7aY); 
 sq_SetCurrentDirection(nlCmXw8MK7Tkm5, c5nuCQ34XBsF3c72.readWord()); 
 nlCmXw8MK7Tkm5.getVar().setBool(0, false); 
 
 sq_AddDrawOnlyAniFromParent(nlCmXw8MK7Tkm5, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/staydust01.ani", 0, -1, 0);
 break;
 }
} ;

 
function destroy_po_qq506807329new_gunner_24371(oTaFZdqBSX8kXoGmz6H)
{
 if(!oTaFZdqBSX8kXoGmz6H) return;
 local JIGoHw2q6DI2Q2l = oTaFZdqBSX8kXoGmz6H.getVar("skill").get_vector(0);
 switch(JIGoHw2q6DI2Q2l)
 {
 case 247: 
 local v9cd_jP09v9vlTu = oTaFZdqBSX8kXoGmz6H.getVar("subType").get_vector(0); 
 if(v9cd_jP09v9vlTu == 1)
 {
 local xyHzK1NIp_KN = ["aniobj", "aniobj1", "aniobj2"];
 for(local yLKJh8aEzdgMD = 0; yLKJh8aEzdgMD < xyHzK1NIp_KN.len(); yLKJh8aEzdgMD++)
 {
 local j2bPlvmYar_b = oTaFZdqBSX8kXoGmz6H.getVar(xyHzK1NIp_KN[yLKJh8aEzdgMD]); 
 for(local aG30mSG3YoI3vBbC = 0; aG30mSG3YoI3vBbC < 999; aG30mSG3YoI3vBbC++)
 {
 local vc3LYYFihzYkbTJLA8HhdJr = j2bPlvmYar_b.get_obj_vector(aG30mSG3YoI3vBbC); 
 if(vc3LYYFihzYkbTJLA8HhdJr)
 vc3LYYFihzYkbTJLA8HhdJr.setValid(false); 
 else
 break;
 }
 }
 }
 break;
 default:
 break;
 }
} ;



