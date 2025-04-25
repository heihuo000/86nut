
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
 
 
 
 
 

 
function checkExecutableSkill_swordman_swordofmind(N46TK2Nn6Awa9YUcY)
{
 if(!N46TK2Nn6Awa9YUcY) return false; 
 local s96w70tlKbWhS = N46TK2Nn6Awa9YUcY.sq_IsUseSkill(234); 
 if(s96w70tlKbWhS) 
 {
 
 N46TK2Nn6Awa9YUcY.sq_IntVectClear();
 N46TK2Nn6Awa9YUcY.sq_IntVectPush(0);
 N46TK2Nn6Awa9YUcY.sq_IntVectPush(N46TK2Nn6Awa9YUcY.getWeaponSubType()); 
 N46TK2Nn6Awa9YUcY.sq_AddSetStatePacket(234, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_swordman_swordofmind(OuvLJe_v0vUaxKUtQYhi1L)
{
 if(!OuvLJe_v0vUaxKUtQYhi1L) return false; 
 local TvrSNxpM17wUvJg4gzBg = OuvLJe_v0vUaxKUtQYhi1L.sq_GetState(); 
 if(TvrSNxpM17wUvJg4gzBg == STATE_STAND) 
 return true; 
 if(TvrSNxpM17wUvJg4gzBg == STATE_ATTACK) 
 {
 return OuvLJe_v0vUaxKUtQYhi1L.sq_IsCommandEnable(234); 
 }
 return true; 
} ;

 
function onSetState_swordman_swordofmind(OuvLJe_v0vUaxKUtQYhi1L, TvrSNxpM17wUvJg4gzBg, SeOLyzvwghJSnBdE, w2OnTepw9geQ1G4x)
{
 if(!OuvLJe_v0vUaxKUtQYhi1L) return; 
 local ZavXP0FGRPsVN = OuvLJe_v0vUaxKUtQYhi1L.sq_GetVectorData(SeOLyzvwghJSnBdE, 0); 
 OuvLJe_v0vUaxKUtQYhi1L.setSkillSubState(ZavXP0FGRPsVN); 
 OuvLJe_v0vUaxKUtQYhi1L.sq_StopMove(); 
 switch(ZavXP0FGRPsVN)
 {
 case 0:
 OuvLJe_v0vUaxKUtQYhi1L.getVar().clear_obj_vector(); 
 local elBkCIX3_hI54aWfWSii526 = OuvLJe_v0vUaxKUtQYhi1L.sq_GetVectorData(SeOLyzvwghJSnBdE, 1); 
 OuvLJe_v0vUaxKUtQYhi1L.getVar().clear_vector(); 
 OuvLJe_v0vUaxKUtQYhi1L.getVar().push_vector(elBkCIX3_hI54aWfWSii526); 
 local j1CS0xNuwv984fqGdF = sq_GetSkillLevel(OuvLJe_v0vUaxKUtQYhi1L, 234); 
 if(elBkCIX3_hI54aWfWSii526 != 0)
 OuvLJe_v0vUaxKUtQYhi1L.sq_SetCurrentAnimation(141); 
 else
 {
 
 local yrRBzru7WYIG0s = OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 16, j1CS0xNuwv984fqGdF); 
 local uZF93ckkXmqlotQz = OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 17, j1CS0xNuwv984fqGdF); 
 local gO_aI5knSddEcO9FUyo1eSH = sq_AttractToMe(OuvLJe_v0vUaxKUtQYhi1L, yrRBzru7WYIG0s, 190, uZF93ckkXmqlotQz); 
 OuvLJe_v0vUaxKUtQYhi1L.getVar().setAppendage(0, gO_aI5knSddEcO9FUyo1eSH); 
 OuvLJe_v0vUaxKUtQYhi1L.sq_SetCurrentAnimation(142); 
 }
 OuvLJe_v0vUaxKUtQYhi1L.sq_PlaySound("GUE_FLEETNESS_CAST"); 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(OuvLJe_v0vUaxKUtQYhi1L, "character/swordman/swordofmind/ap_swordofmind.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(OuvLJe_v0vUaxKUtQYhi1L, "character/swordman/swordofmind/ap_swordofmind.nut");
 CNSquirrelAppendage.sq_AppendAppendage(OuvLJe_v0vUaxKUtQYhi1L, OuvLJe_v0vUaxKUtQYhi1L, 234, true, "character/swordman/swordofmind/ap_swordofmind.nut", true); 
 RemoveAllAni(OuvLJe_v0vUaxKUtQYhi1L); 
 
 local HAfpSNZ0wDvpd4kFsEo8 = sq_CreateDrawOnlyObject(OuvLJe_v0vUaxKUtQYhi1L, "character/swordman/effect/animation/swordofmind/charge_spin_eff.ani", ENUM_DRAWLAYER_BOTTOM, false);
 sq_moveWithParent(OuvLJe_v0vUaxKUtQYhi1L, HAfpSNZ0wDvpd4kFsEo8); 
 OuvLJe_v0vUaxKUtQYhi1L.getVar("aniobj").push_obj_vector(HAfpSNZ0wDvpd4kFsEo8); 
 
 OuvLJe_v0vUaxKUtQYhi1L.sq_IsEnterSkillLastKeyUnits(234);
 local KgK0YR_olPv = OuvLJe_v0vUaxKUtQYhi1L.sq_GetIntData(234, 0); 
 local knBO7FGzdjAeKkWHcUWlIWB = 0; 
 local Eo5aXOP2_k1bx5r = 0; 
 if(elBkCIX3_hI54aWfWSii526 == 3) 
 {
 knBO7FGzdjAeKkWHcUWlIWB = OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 18, j1CS0xNuwv984fqGdF); 
 Eo5aXOP2_k1bx5r = OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 19, j1CS0xNuwv984fqGdF); 
 }
 OuvLJe_v0vUaxKUtQYhi1L.getVar("time").clear_vector(); 
 OuvLJe_v0vUaxKUtQYhi1L.getVar("time").push_vector(KgK0YR_olPv); 
 OuvLJe_v0vUaxKUtQYhi1L.getVar("time").push_vector(knBO7FGzdjAeKkWHcUWlIWB); 
 OuvLJe_v0vUaxKUtQYhi1L.getVar("time").push_vector(Eo5aXOP2_k1bx5r); 
 break;
 case 1:
 OuvLJe_v0vUaxKUtQYhi1L.sq_SetCurrentAnimation(143);
 OuvLJe_v0vUaxKUtQYhi1L.sq_SetCurrentAttackInfo(91); 
 local Eo5aXOP2_k1bx5r = OuvLJe_v0vUaxKUtQYhi1L.sq_GetVectorData(SeOLyzvwghJSnBdE, 1) / 100.0; 
 if(OuvLJe_v0vUaxKUtQYhi1L.sq_IsMyControlObject())
 {
 sq_flashScreen(OuvLJe_v0vUaxKUtQYhi1L, 0, 120, 180, 102, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 sq_SetMyShake(OuvLJe_v0vUaxKUtQYhi1L, 4, 150); 
 
 local j1CS0xNuwv984fqGdF = sq_GetSkillLevel(OuvLJe_v0vUaxKUtQYhi1L, 234); 
 OuvLJe_v0vUaxKUtQYhi1L.sq_StartWrite();
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(234); 
 local elBkCIX3_hI54aWfWSii526 = OuvLJe_v0vUaxKUtQYhi1L.getVar().get_vector(0); 
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(elBkCIX3_hI54aWfWSii526); 
 local jd7qK2VpIHwKSAS = OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 0, j1CS0xNuwv984fqGdF); 
 switch(elBkCIX3_hI54aWfWSii526)
 {
 case 5: 
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(jd7qK2VpIHwKSAS + OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 10, j1CS0xNuwv984fqGdF)); 
 break;
 case 1: 
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(jd7qK2VpIHwKSAS + OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 15, j1CS0xNuwv984fqGdF)); 
 break;
 default:
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(jd7qK2VpIHwKSAS); 
 break;
 }
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(OuvLJe_v0vUaxKUtQYhi1L.sq_GetBonusRateWithPassive(234, 234, 1, 1.0 + Eo5aXOP2_k1bx5r)); 
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(OuvLJe_v0vUaxKUtQYhi1L.sq_GetBonusRateWithPassive(234, 234, 2, 1.0 + Eo5aXOP2_k1bx5r)); 
 switch(elBkCIX3_hI54aWfWSii526)
 {
 case 5: 
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 6, j1CS0xNuwv984fqGdF)); 
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 7, j1CS0xNuwv984fqGdF)); 
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 8, j1CS0xNuwv984fqGdF)); 
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 9, j1CS0xNuwv984fqGdF)); 
 break;
 case 1: 
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 11, j1CS0xNuwv984fqGdF)); 
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 12, j1CS0xNuwv984fqGdF)); 
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 13, j1CS0xNuwv984fqGdF)); 
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 14, j1CS0xNuwv984fqGdF)); 
 break;
 case 2: 
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 3, j1CS0xNuwv984fqGdF)); 
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 4, j1CS0xNuwv984fqGdF)); 
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteDword(OuvLJe_v0vUaxKUtQYhi1L.sq_GetLevelData(234, 5, j1CS0xNuwv984fqGdF)); 
 break;
 }
 
 local o67lv4RCCHKPkf = CNSquirrelAppendage.sq_IsAppendAppendage(OuvLJe_v0vUaxKUtQYhi1L, "character/swordman/appendage/ap_stateoflimit.nut");
 OuvLJe_v0vUaxKUtQYhi1L.sq_WriteBool(o67lv4RCCHKPkf);
 OuvLJe_v0vUaxKUtQYhi1L.sq_SendCreatePassiveObjectPacket(24370, 0, 0, 0, 0); 
 }
 OuvLJe_v0vUaxKUtQYhi1L.sq_PlaySound("SM_GUE_FLEETNESS"); 
 break;
 }
 OuvLJe_v0vUaxKUtQYhi1L.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onAttack_swordman_swordofmind(qHEb2fPN0hSuJnPc0, q0RPMgek7X2d7PYhF, Vb7RTRdFZqCTZJ, O7TXpKtaEy)
{
 if(!qHEb2fPN0hSuJnPc0) return;
 if(O7TXpKtaEy || !q0RPMgek7X2d7PYhF.isObjectType(OBJECTTYPE_ACTIVE)) return;
 local BTi1WjSjQzsff_dwv2bx1w = qHEb2fPN0hSuJnPc0.getSkillSubState(); 
 switch(BTi1WjSjQzsff_dwv2bx1w)
 {
 case 1:
 local nE1vxzIrvgHIOc = sq_GetCNRDObjectToCollisionObject(qHEb2fPN0hSuJnPc0.getVar().get_obj_vector(0)); 
 if(nE1vxzIrvgHIOc)
 {
 local RxZliWpSiXBYOi5DGAsHjm = sq_GetCNRDObjectToActiveObject(q0RPMgek7X2d7PYhF); 
 
 if(RxZliWpSiXBYOi5DGAsHjm)
 {
 if(!RxZliWpSiXBYOi5DGAsHjm.isDead()) 
 nE1vxzIrvgHIOc.getVar().push_obj_vector(RxZliWpSiXBYOi5DGAsHjm); 
 local gBZyJ_npYUYz2EmCOqLSEnF = sq_CreateAnimation("", "Character/Swordman/Effect/Animation/SwordOfMind/newhit.ani"); 
 local BkE1BdIk_QEvhsxSPWi_3H29 = sq_CreatePooledObject(gBZyJ_npYUYz2EmCOqLSEnF, true); 
 sq_SetCurrentDirection(BkE1BdIk_QEvhsxSPWi_3H29, qHEb2fPN0hSuJnPc0.getDirection()); 
 BkE1BdIk_QEvhsxSPWi_3H29.setCurrentPos(RxZliWpSiXBYOi5DGAsHjm.getXPos(), RxZliWpSiXBYOi5DGAsHjm.getYPos(), RxZliWpSiXBYOi5DGAsHjm.getZPos() + sq_GetObjectHeight(RxZliWpSiXBYOi5DGAsHjm) / 2); 
 BkE1BdIk_QEvhsxSPWi_3H29 = sq_SetEnumDrawLayer(BkE1BdIk_QEvhsxSPWi_3H29, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(qHEb2fPN0hSuJnPc0, BkE1BdIk_QEvhsxSPWi_3H29, OBJECTTYPE_DRAWONLY, false); 
 }
 }
 break;
 }
} ;

 
function onProc_swordman_swordofmind(uxtv8uiGkyNQNy5btp08)
{
 if(!uxtv8uiGkyNQNy5btp08) return;
 local NGj85sz0Giekt = uxtv8uiGkyNQNy5btp08.getSkillSubState(); 
 switch(NGj85sz0Giekt)
 {
 case 0:
 local _3KPkudL8qOg = uxtv8uiGkyNQNy5btp08.getVar("aniobj").get_obj_vector(0); 
 if(_3KPkudL8qOg)
 {
 local Ml1wkKxqIGf2VHGRNS8 = _3KPkudL8qOg.getCurrentAnimation(); 
 if(sq_IsEnd(Ml1wkKxqIGf2VHGRNS8)) sq_Rewind(Ml1wkKxqIGf2VHGRNS8); 
 }
 break;
 }
} ;

function onProcCon_swordman_swordofmind(uxtv8uiGkyNQNy5btp08)
{
 if(!uxtv8uiGkyNQNy5btp08) return;
 local NGj85sz0Giekt = uxtv8uiGkyNQNy5btp08.getSkillSubState(); 
 switch(NGj85sz0Giekt)
 {
 case 0:
 local _3KPkudL8qOg = uxtv8uiGkyNQNy5btp08.getVar("time"); 
 local Ml1wkKxqIGf2VHGRNS8 = uxtv8uiGkyNQNy5btp08.sq_GetStateTimer(); 
 local u6xfQQLL5YykIUcnD6SQ = _3KPkudL8qOg.get_vector(0); 
 
 if(Ml1wkKxqIGf2VHGRNS8 >= u6xfQQLL5YykIUcnD6SQ || !uxtv8uiGkyNQNy5btp08.isDownSkillLastKey())
 {
 uxtv8uiGkyNQNy5btp08.sq_IntVectClear();
 uxtv8uiGkyNQNy5btp08.sq_IntVectPush(1);
 
 uxtv8uiGkyNQNy5btp08.sq_IntVectPush(
 sq_GetUniformVelocity(0, _3KPkudL8qOg.get_vector(2), Ml1wkKxqIGf2VHGRNS8, _3KPkudL8qOg.get_vector(1))
 ); 
 uxtv8uiGkyNQNy5btp08.sq_AddSetStatePacket(234, STATE_PRIORITY_USER, true); 
 }
 break;
 }
} ;

 
function onEndCurrentAni_swordman_swordofmind(WNkoy_GYNoYZDSlJbO)
{
 if(!WNkoy_GYNoYZDSlJbO) return; 
 if(!WNkoy_GYNoYZDSlJbO.sq_IsMyControlObject()) return; 
 local uCx2XF_RE5sttHzFjijyBj = WNkoy_GYNoYZDSlJbO.getSkillSubState(); 
 if(uCx2XF_RE5sttHzFjijyBj == 1)
 WNkoy_GYNoYZDSlJbO.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
} ;

function onEndState_swordman_swordofmind(WNkoy_GYNoYZDSlJbO, uCx2XF_RE5sttHzFjijyBj)
{
 if(!WNkoy_GYNoYZDSlJbO) return;
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(WNkoy_GYNoYZDSlJbO, "character/swordman/swordofmind/ap_swordofmind.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(WNkoy_GYNoYZDSlJbO, "character/swordman/swordofmind/ap_swordofmind.nut");
 RemoveAllAni(WNkoy_GYNoYZDSlJbO); 
 
 local R2gHR8NeF5cKT1VbcudeQR3k = WNkoy_GYNoYZDSlJbO.getVar().getAppendage(0);
 if(R2gHR8NeF5cKT1VbcudeQR3k)
 R2gHR8NeF5cKT1VbcudeQR3k.setValid(false);
} ;


