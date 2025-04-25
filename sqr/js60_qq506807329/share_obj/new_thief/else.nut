
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
 
function onAttack_po_qq506807329new_thief_24378(o3mkAjPCLBZSWTYLdUD6S, B3XcINIaSmti6qcspHY, ZbKjNHiFMnMW_v7vbtASr, ppvpbxf0fNk_FgexnL)
{
 if(!o3mkAjPCLBZSWTYLdUD6S) return 0;
 local CsrQRoW3MH44CnadnXTi = o3mkAjPCLBZSWTYLdUD6S.getVar("skill").get_vector(0);
 local cNq0q_APp2IL5aeNPZ0Bk = o3mkAjPCLBZSWTYLdUD6S.getVar("subType").get_vector(0); 
 local apZvkl2YWCWZxf3 = o3mkAjPCLBZSWTYLdUD6S.getVar("state").get_vector(0); 
 switch(CsrQRoW3MH44CnadnXTi)
 {
 case 221: 
 if(ppvpbxf0fNk_FgexnL || !B3XcINIaSmti6qcspHY.isObjectType(OBJECTTYPE_ACTIVE))return; 
 if(sq_IsHoldable(o3mkAjPCLBZSWTYLdUD6S, B3XcINIaSmti6qcspHY) && sq_IsGrabable(o3mkAjPCLBZSWTYLdUD6S, B3XcINIaSmti6qcspHY) && !sq_IsFixture(B3XcINIaSmti6qcspHY))
 if(cNq0q_APp2IL5aeNPZ0Bk == 1 && o3mkAjPCLBZSWTYLdUD6S.getVar().getBool(0)==true && !CNSquirrelAppendage.sq_IsAppendAppendage(B3XcINIaSmti6qcspHY, "character/new_thief/distribution/ap_distribution.nut")) 
 {
 local noLaUDgrHt8gH1Rsd1 = o3mkAjPCLBZSWTYLdUD6S.getParent(); 
 if(noLaUDgrHt8gH1Rsd1)
 {
 local Z8TmiITlDueJHC9jP56Oj = CNSquirrelAppendage.sq_AppendAppendage(B3XcINIaSmti6qcspHY, noLaUDgrHt8gH1Rsd1, 221, true, "character/new_thief/distribution/ap_distribution.nut", true); 
 sq_HoldAndDelayDie(B3XcINIaSmti6qcspHY, noLaUDgrHt8gH1Rsd1, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, Z8TmiITlDueJHC9jP56Oj); 
 sq_MoveToAppendage(B3XcINIaSmti6qcspHY, noLaUDgrHt8gH1Rsd1, noLaUDgrHt8gH1Rsd1, 0, 0, 0, 100, true, Z8TmiITlDueJHC9jP56Oj); 
 }
 }
 break;
 case 222: 
 if(ppvpbxf0fNk_FgexnL || !B3XcINIaSmti6qcspHY.isObjectType(OBJECTTYPE_ACTIVE))return; 
 if(sq_IsHoldable(o3mkAjPCLBZSWTYLdUD6S, B3XcINIaSmti6qcspHY) && sq_IsGrabable(o3mkAjPCLBZSWTYLdUD6S, B3XcINIaSmti6qcspHY) && !sq_IsFixture(B3XcINIaSmti6qcspHY))
 if(cNq0q_APp2IL5aeNPZ0Bk == 1)
 {
 local noLaUDgrHt8gH1Rsd1 = o3mkAjPCLBZSWTYLdUD6S.getParent(); 
 if(noLaUDgrHt8gH1Rsd1)
 {
 local Z8TmiITlDueJHC9jP56Oj = CNSquirrelAppendage.sq_GetAppendage(B3XcINIaSmti6qcspHY, "character/new_thief/novaremnant/ap_novaremnant.nut"); 
 if(Z8TmiITlDueJHC9jP56Oj) 
 {
 if(isSameObject(noLaUDgrHt8gH1Rsd1, Z8TmiITlDueJHC9jP56Oj.getSource())) 
 sq_MoveToAppendage(B3XcINIaSmti6qcspHY, noLaUDgrHt8gH1Rsd1, o3mkAjPCLBZSWTYLdUD6S, o3mkAjPCLBZSWTYLdUD6S.getVar().getInt(0), 0, 0, 30, true, Z8TmiITlDueJHC9jP56Oj); 
 return;
 }
 Z8TmiITlDueJHC9jP56Oj = CNSquirrelAppendage.sq_AppendAppendage(B3XcINIaSmti6qcspHY, noLaUDgrHt8gH1Rsd1, 222, true, "character/new_thief/novaremnant/ap_novaremnant.nut", true); 
 sq_HoldAndDelayDie(B3XcINIaSmti6qcspHY, noLaUDgrHt8gH1Rsd1, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, Z8TmiITlDueJHC9jP56Oj); 
 sq_MoveToAppendage(B3XcINIaSmti6qcspHY, noLaUDgrHt8gH1Rsd1, o3mkAjPCLBZSWTYLdUD6S, o3mkAjPCLBZSWTYLdUD6S.getVar().getInt(0), 0, 0, 30, true, Z8TmiITlDueJHC9jP56Oj); 
 }
 }
 break;
 case 225: 
 if(ppvpbxf0fNk_FgexnL || !B3XcINIaSmti6qcspHY.isObjectType(OBJECTTYPE_ACTIVE))return; 
 switch(cNq0q_APp2IL5aeNPZ0Bk)
 {
 case 2:
 if(
 sq_GetAnimationFrameIndex(o3mkAjPCLBZSWTYLdUD6S.getCurrentAnimation()) >= 28 &&
 sq_IsHoldable(o3mkAjPCLBZSWTYLdUD6S, B3XcINIaSmti6qcspHY) && 
 sq_IsGrabable(o3mkAjPCLBZSWTYLdUD6S, B3XcINIaSmti6qcspHY) && 
 !sq_IsFixture(B3XcINIaSmti6qcspHY) &&
 !CNSquirrelAppendage.sq_IsAppendAppendage(B3XcINIaSmti6qcspHY, "character/new_thief/ballacreadvent/ap_ballacreadvent.nut")
 )
 {
 local Z8TmiITlDueJHC9jP56Oj = CNSquirrelAppendage.sq_AppendAppendage(B3XcINIaSmti6qcspHY, o3mkAjPCLBZSWTYLdUD6S, 225, true, "character/new_thief/ballacreadvent/ap_ballacreadvent.nut", true); 
 sq_AccelMoveToAppendage(B3XcINIaSmti6qcspHY, o3mkAjPCLBZSWTYLdUD6S, o3mkAjPCLBZSWTYLdUD6S, 220, -1, 160, 250, true, Z8TmiITlDueJHC9jP56Oj, false);
 sq_HoldAndDelayDie(B3XcINIaSmti6qcspHY, o3mkAjPCLBZSWTYLdUD6S, true, true, true, 10, 10, ENUM_DIRECTION_NEUTRAL, Z8TmiITlDueJHC9jP56Oj); 
 
 }
 break;
 }
 break;
 }
} 
 

 
 
function onKeyFrameFlag_po_qq506807329new_thief_24378(fPwkJpuAoD43Ps1XQvDrfZD5, oXvTDV106lKRYCEivfZ9Nk)
{
 if(!fPwkJpuAoD43Ps1XQvDrfZD5) return false;
 local xgB4oGQfN5WUjS5bK23EXq = fPwkJpuAoD43Ps1XQvDrfZD5.getVar("skill").get_vector(0);
 local VEqBKvZBZP38uG = fPwkJpuAoD43Ps1XQvDrfZD5.getVar("subType").get_vector(0); 
 local Feb4Xb4tebjK16CHNr61l7 = fPwkJpuAoD43Ps1XQvDrfZD5.getVar("state").get_vector(0); 
 switch(xgB4oGQfN5WUjS5bK23EXq)
 {
 case 222: 
 switch(VEqBKvZBZP38uG)
 {
 case 1:
 switch(oXvTDV106lKRYCEivfZ9Nk)
 {
 case 1:
 sq_SetMyShake(fPwkJpuAoD43Ps1XQvDrfZD5, 25, 150); 
 break;
 case 2:
 if(fPwkJpuAoD43Ps1XQvDrfZD5.isMyControlObject())
 sq_flashScreen(fPwkJpuAoD43Ps1XQvDrfZD5, 40, 0, 40, 120, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 case 3:
 if(fPwkJpuAoD43Ps1XQvDrfZD5.isMyControlObject())
 sq_flashScreen(fPwkJpuAoD43Ps1XQvDrfZD5, 40, 0, 40, 120, sq_RGB(255, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 }
 break;
 case 3:
 switch(oXvTDV106lKRYCEivfZ9Nk)
 {
 case 1:
 if(fPwkJpuAoD43Ps1XQvDrfZD5.isMyControlObject())
 {
 sq_SetShake(fPwkJpuAoD43Ps1XQvDrfZD5, 10, 300);
 sq_flashScreen(fPwkJpuAoD43Ps1XQvDrfZD5, 0, 100, 0, 102, sq_RGB(211, 211, 211), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 case 2:
 if(fPwkJpuAoD43Ps1XQvDrfZD5.isMyControlObject())
 {
 sq_flashScreen(fPwkJpuAoD43Ps1XQvDrfZD5, 0, 200,100, 153, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 }
 break;
 }
 break;
 case 225: 
 switch(VEqBKvZBZP38uG)
 {
 case 1:
 switch(oXvTDV106lKRYCEivfZ9Nk)
 {
 case 1:
 if(fPwkJpuAoD43Ps1XQvDrfZD5.isMyControlObject())
 {
 sq_flashScreen(fPwkJpuAoD43Ps1XQvDrfZD5, 0, 210, 140, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 sq_SetShake(fPwkJpuAoD43Ps1XQvDrfZD5, 8, 140); 
 }
 break;
 }
 break;
 case 2:
 switch(oXvTDV106lKRYCEivfZ9Nk)
 {
 case 3000:
 RemoveAllAni(fPwkJpuAoD43Ps1XQvDrfZD5);
 RemoveAllAniEx(fPwkJpuAoD43Ps1XQvDrfZD5, "aniobj1"); 
 RemoveAllAniEx(fPwkJpuAoD43Ps1XQvDrfZD5, "aniobj2"); 
 if(fPwkJpuAoD43Ps1XQvDrfZD5.isMyControlObject())
 {
 sq_AddDrawOnlyAniFromParent(fPwkJpuAoD43Ps1XQvDrfZD5, "character/thief/effect/animation/ballacreadvent/bg/bgend_set07d02.ani", 0, -2, 0); 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(225);
 sq_BinaryWriteDword(3);
 sq_BinaryWriteDword(fPwkJpuAoD43Ps1XQvDrfZD5.getVar().getInt(0)); 
 sq_SendCreatePassiveObjectPacket(fPwkJpuAoD43Ps1XQvDrfZD5, 24378, 0, 220, 0, 200, fPwkJpuAoD43Ps1XQvDrfZD5.getDirection());
 }
 break;
 case 1:
 sq_SetCurrentAttackInfoFromCustomIndex(fPwkJpuAoD43Ps1XQvDrfZD5, 9); 
 break;
 case 2:
 RemoveAllAni(fPwkJpuAoD43Ps1XQvDrfZD5);
 local DK49ONdEHO0pK5HiAKgMhkY = sq_AddDrawOnlyAniFromParent(fPwkJpuAoD43Ps1XQvDrfZD5, "passiveobject/script_sqr_nut_qq506807329/thief/animation/ballacreadvent/ballacrebeadfocus/beadfocusb_05.ani", 0, 0, 0); 
 fPwkJpuAoD43Ps1XQvDrfZD5.getVar("aniobj").push_obj_vector(DK49ONdEHO0pK5HiAKgMhkY); 
 break;
 case 3:
 sq_SetMyShake(fPwkJpuAoD43Ps1XQvDrfZD5, 3, 40); 
 break;
 }
 
 break;
 case 3:
 switch(oXvTDV106lKRYCEivfZ9Nk)
 {
 case 1:
 if(fPwkJpuAoD43Ps1XQvDrfZD5.isMyControlObject())
 sq_flashScreen(fPwkJpuAoD43Ps1XQvDrfZD5, 0, 300, 600, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 }
 break;
 }
 break;
 }
 return true;
} 
 

 
 
function onTimeEvent_po_qq506807329new_thief_24378(lgGjVeHQPEif, efVFdFaM8W8FH65Er5cFVF, FNchXyZtlcVZxMCWW)
{
 if(!lgGjVeHQPEif) return false;
 local otGUT66ANc = lgGjVeHQPEif.getVar("skill").get_vector(0);
 switch(otGUT66ANc)
 {
 case -1: 
 break;
 }
 return false;
} 

 
 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); 
function onDestroyObject_po_qq506807329new_thief_24378(lgGjVeHQPEif, efVFdFaM8W8FH65Er5cFVF)
{
 if(!lgGjVeHQPEif) return;
 local FNchXyZtlcVZxMCWW = lgGjVeHQPEif.getVar("skill").get_vector(0);
 switch(FNchXyZtlcVZxMCWW)
 {
 case -1:
 break;
 }
} 


 
 
function destroy_po_qq506807329new_thief_24378(lgGjVeHQPEif)
{
 if(!lgGjVeHQPEif) return;
 local efVFdFaM8W8FH65Er5cFVF = lgGjVeHQPEif.getVar("skill").get_vector(0);
 switch(efVFdFaM8W8FH65Er5cFVF)
 {
 case 225: 
 RemoveAllAni(lgGjVeHQPEif); 
 RemoveAllAniEx(lgGjVeHQPEif,"aniobj1"); 
 RemoveAllAniEx(lgGjVeHQPEif, "aniobj2"); 
 local FNchXyZtlcVZxMCWW = lgGjVeHQPEif.getVar("subType").get_vector(0); 
 switch(FNchXyZtlcVZxMCWW)
 {
 case 2:
 local otGUT66ANc = sq_GetCNRDObjectToSQRCharacter(lgGjVeHQPEif.getParent()); 
 if(otGUT66ANc)
 {
 local HQCyKwJKfkPyfUiZt = otGUT66ANc.getMyPassiveObject(25012, 0); 
 if(HQCyKwJKfkPyfUiZt)
 {
 if(HQCyKwJKfkPyfUiZt.getState() == 10 && HQCyKwJKfkPyfUiZt.isMyControlObject())
 HQCyKwJKfkPyfUiZt.sendStateOnlyPacket(3); 
 }
 }
 break;
 }
 break;
 case 223: 
 RemoveAllFlash(lgGjVeHQPEif); 
 break;
 }
} 


 

function onChangeSkillEffect_po_qq506807329new_thief_24378(lgGjVeHQPEif, efVFdFaM8W8FH65Er5cFVF, FNchXyZtlcVZxMCWW)
{
 if(!lgGjVeHQPEif) return;
 local otGUT66ANc = lgGjVeHQPEif.getVar("skill").get_vector(0);
 switch(otGUT66ANc)
 {
 case -1:
 break;
 }
} 

 

