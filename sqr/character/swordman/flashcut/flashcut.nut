
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


  
function checkExecutableSkill_swordman_flashcut(NQbCRszwkKrUTQst0qWd)
{
 if(!NQbCRszwkKrUTQst0qWd) return false; 
 local NNZHEjA0zm8Lbo3G6iK = NQbCRszwkKrUTQst0qWd.sq_IsUseSkill(236); 
 if(NNZHEjA0zm8Lbo3G6iK) 
 {
 
 NQbCRszwkKrUTQst0qWd.sq_IntVectClear(); 
 NQbCRszwkKrUTQst0qWd.sq_IntVectPush(0); 
 NQbCRszwkKrUTQst0qWd.sq_AddSetStatePacket(236, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_swordman_flashcut(l3AIA3_2MXV_l4Obpm)
{
 if(!l3AIA3_2MXV_l4Obpm) return false; 
 
 local locedzvOZ60vqtDV = l3AIA3_2MXV_l4Obpm.sq_GetState(); 
 if(locedzvOZ60vqtDV == STATE_STAND) 
 return true; 
 if(locedzvOZ60vqtDV == STATE_ATTACK) 
 {
 return l3AIA3_2MXV_l4Obpm.sq_IsCommandEnable(236); 
 }
 return true; 
} ;

 
function onSetState_swordman_flashcut(l3AIA3_2MXV_l4Obpm, locedzvOZ60vqtDV, wUFfl6wiE6gJAlGxf, dLLfrrs6BNgSSU8tc)
{
 if(!l3AIA3_2MXV_l4Obpm) return; 
 local H2CeaVSd7Z9Tr1FDb5E = l3AIA3_2MXV_l4Obpm.sq_GetVectorData(wUFfl6wiE6gJAlGxf, 0); 
 l3AIA3_2MXV_l4Obpm.setSkillSubState(H2CeaVSd7Z9Tr1FDb5E); 
 l3AIA3_2MXV_l4Obpm.sq_StopMove(); 
 switch(H2CeaVSd7Z9Tr1FDb5E)
 {
 case 0:
 l3AIA3_2MXV_l4Obpm.getVar("aniobj").clear_obj_vector(); 
 l3AIA3_2MXV_l4Obpm.sq_SetCurrentAnimation(150); 
 if(l3AIA3_2MXV_l4Obpm.sq_IsMyControlObject())
 {
 
 local bm2s9rZKdOIcB9Osm2b = sq_flashScreen(l3AIA3_2MXV_l4Obpm, sq_GetCurrentAnimation(l3AIA3_2MXV_l4Obpm).getDelaySum(0, 5), 99990, 0, 130, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 l3AIA3_2MXV_l4Obpm.getVar("flashobj").clear_obj_vector(); 
 l3AIA3_2MXV_l4Obpm.getVar("flashobj").push_obj_vector(bm2s9rZKdOIcB9Osm2b); 
 }
 break;
 case 1:
 l3AIA3_2MXV_l4Obpm.sq_SetCurrentAnimation(151); 
 sq_SetMyShake(l3AIA3_2MXV_l4Obpm, 8, 150); 
 local IL6zBoAdM_93ELer_m263C0 = l3AIA3_2MXV_l4Obpm.getXPos(); 
 local pYI3akexnI0QzQgK = l3AIA3_2MXV_l4Obpm.getYPos(); 
 local WLfnTZ4Nxd__kZPKI = l3AIA3_2MXV_l4Obpm.getZPos(); 
 
 sq_AddDrawOnlyAniFromParent(l3AIA3_2MXV_l4Obpm, "character/swordman/effect/animation/flashcut/flashcutsmoke_eff_00.ani", 0, -1, 0);
 local hWU2bFUvVLESjq = sq_GetSkillLevel(l3AIA3_2MXV_l4Obpm, 236); 
 if(l3AIA3_2MXV_l4Obpm.sq_IsMyControlObject())
 {
 
 l3AIA3_2MXV_l4Obpm.sq_StartWrite();
 l3AIA3_2MXV_l4Obpm.sq_WriteDword(236); 
 l3AIA3_2MXV_l4Obpm.sq_WriteDword(l3AIA3_2MXV_l4Obpm.sq_GetBonusRateWithPassive(236, 236, 1, 1.0)); 
 l3AIA3_2MXV_l4Obpm.sq_WriteDword(l3AIA3_2MXV_l4Obpm.sq_GetBonusRateWithPassive(236, 236, 2, 1.0)); 
 l3AIA3_2MXV_l4Obpm.sq_WriteDword(l3AIA3_2MXV_l4Obpm.sq_GetBonusRateWithPassive(236, 236, 4, 1.0)); 
 l3AIA3_2MXV_l4Obpm.sq_WriteDword(sq_GetLevelData(l3AIA3_2MXV_l4Obpm, 236, 3, hWU2bFUvVLESjq)); 
 l3AIA3_2MXV_l4Obpm.sq_SendCreatePassiveObjectPacket(24370, 0, 0, 0, 0); 
 
 
 local Ib2TKnDE5J5e = sq_CreateDrawOnlyObject(l3AIA3_2MXV_l4Obpm, "character/swordman/effect/animation/flashcut/flashcutbg_01.ani", ENUM_DRAWLAYER_COVER, true); 
 sq_setCurrentAxisPos(Ib2TKnDE5J5e, 2, WLfnTZ4Nxd__kZPKI + 70); 
 
 local yHoADo5uGxaQZ8Nrd = sq_CreatePooledObject(sq_CreateAnimation("", "character/swordman/effect/animation/flashcut/flashcutbg_02.ani"), true); 
 yHoADo5uGxaQZ8Nrd = sq_SetEnumDrawLayer(yHoADo5uGxaQZ8Nrd, ENUM_DRAWLAYER_NORMAL); 
 yHoADo5uGxaQZ8Nrd.setCurrentPos(IL6zBoAdM_93ELer_m263C0, pYI3akexnI0QzQgK - 1, WLfnTZ4Nxd__kZPKI + 70); 
 sq_AddObject(l3AIA3_2MXV_l4Obpm, yHoADo5uGxaQZ8Nrd, OBJECTTYPE_DRAWONLY, false); 
 l3AIA3_2MXV_l4Obpm.getVar("aniobj").push_obj_vector(Ib2TKnDE5J5e); 
 l3AIA3_2MXV_l4Obpm.getVar("aniobj").push_obj_vector(yHoADo5uGxaQZ8Nrd); 
 }
 l3AIA3_2MXV_l4Obpm.getVar().clear_vector(); 
 l3AIA3_2MXV_l4Obpm.getVar().push_vector(IL6zBoAdM_93ELer_m263C0); 
 l3AIA3_2MXV_l4Obpm.getVar().push_vector(sq_GetLevelData(l3AIA3_2MXV_l4Obpm, 236, 0, hWU2bFUvVLESjq)); 
 break;
 case 2:
 l3AIA3_2MXV_l4Obpm.sq_SetCurrentAnimation(152); 
 break;
 }
 l3AIA3_2MXV_l4Obpm.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onProc_swordman_flashcut(L5w8FiWJep7otq20)
{
 if(!L5w8FiWJep7otq20) return;
 local gGPS9rbMUSoJi6c = L5w8FiWJep7otq20.getSkillSubState(); 
 switch(gGPS9rbMUSoJi6c)
 {
 case 1:
 if(L5w8FiWJep7otq20.getVar().size_vector() > 0)
 {
 local GUYNlmAB8px5bg_3Dwur5I = L5w8FiWJep7otq20.getCurrentAnimation(); 
 local XY97bp_VrExlcg3CP3DW = sq_GetCurrentTime(GUYNlmAB8px5bg_3Dwur5I); 
 local DkloDt35JiA4MDpplrT9fi = GUYNlmAB8px5bg_3Dwur5I.getDelaySum(0, 1); 
 local eVxUPin9p5LqrIHD4 = sq_GetDistancePos(L5w8FiWJep7otq20.getVar().get_vector(0),
 L5w8FiWJep7otq20.getDirection(),
 sq_GetUniformVelocity(0, L5w8FiWJep7otq20.getVar().get_vector(1), XY97bp_VrExlcg3CP3DW, DkloDt35JiA4MDpplrT9fi)); 
 if(L5w8FiWJep7otq20.isMovablePos(eVxUPin9p5LqrIHD4, L5w8FiWJep7otq20.getYPos()))
 sq_setCurrentAxisPos(L5w8FiWJep7otq20, 0, eVxUPin9p5LqrIHD4); 
 else
 L5w8FiWJep7otq20.getVar().clear_vector(); 
 }
 break;
 }
} ;

 
function onProcCon_swordman_flashcut(dQgXX07IAfHE1Y)
{
 if(!dQgXX07IAfHE1Y) return;
 local jYIEPkUl_RQ2kCG3 = dQgXX07IAfHE1Y.getVar("aniobj").get_obj_vector_size(); 
 if(jYIEPkUl_RQ2kCG3 > 0)
 {
 local a0a5w15u7P0goTEl2 = dQgXX07IAfHE1Y.getObjectManager(); 
 local Nqi5Km8guaNIDVpoh = a0a5w15u7P0goTEl2.getFieldXPos(400, ENUM_DRAWLAYER_NORMAL); 
 local la8TEdWOU3 = a0a5w15u7P0goTEl2.getFieldYPos(sq_GetScreenYPos(dQgXX07IAfHE1Y), 0, ENUM_DRAWLAYER_NORMAL); 
 for(local _NWggLZu69SNGSSojN45 = 0; _NWggLZu69SNGSSojN45 < jYIEPkUl_RQ2kCG3; _NWggLZu69SNGSSojN45++)
 {
 local sW6OfpmCx8 = dQgXX07IAfHE1Y.getVar("aniobj").get_obj_vector(_NWggLZu69SNGSSojN45); 
 if(!sW6OfpmCx8)continue;
 sq_setCurrentAxisPos(sW6OfpmCx8, 0, Nqi5Km8guaNIDVpoh); 
 sq_setCurrentAxisPos(sW6OfpmCx8, 1, la8TEdWOU3); 
 }
 }
} ;

 
function onKeyFrameFlag_swordman_flashcut(BDG7Zw9YR9pEdLh2Q7G, zg2mVaNKGPiNWW0s5DqnmL)
{
 if(!BDG7Zw9YR9pEdLh2Q7G) return false; 
 local Lg5L09fqGboonPtenroLCL = BDG7Zw9YR9pEdLh2Q7G.getSkillSubState(); 
 switch(Lg5L09fqGboonPtenroLCL)
 {
 case 0:
 if(zg2mVaNKGPiNWW0s5DqnmL == 1) 
 sq_SetMyShake(BDG7Zw9YR9pEdLh2Q7G, 8, 100); 
 break;
 case 1:
 if(zg2mVaNKGPiNWW0s5DqnmL == 1) 
 sq_SetMyShake(BDG7Zw9YR9pEdLh2Q7G, 15, 150); 
 break;
 case 2:
 if(zg2mVaNKGPiNWW0s5DqnmL == 1) 
 {
 RemoveAllFlash(BDG7Zw9YR9pEdLh2Q7G); 
 if(BDG7Zw9YR9pEdLh2Q7G.sq_IsMyControlObject())
 sq_flashScreen(BDG7Zw9YR9pEdLh2Q7G, 0, 50, 300, 240, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 local qDL4NHNuixmrwJl = onGetMyPassiveObject_My(BDG7Zw9YR9pEdLh2Q7G, 24370, 236, 0); 
 if(qDL4NHNuixmrwJl && qDL4NHNuixmrwJl.isMyControlObject()) 
 qDL4NHNuixmrwJl.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "");
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_swordman_flashcut(IBrsLswTbV)
{
 if(!IBrsLswTbV) return; 
 if(!IBrsLswTbV.sq_IsMyControlObject()) return;
 local UU4hDcn0Ni5R8r5LiIRxhM = IBrsLswTbV.getSkillSubState(); 
 if(UU4hDcn0Ni5R8r5LiIRxhM != 2)
 {
 IBrsLswTbV.sq_IntVectClear();
 IBrsLswTbV.sq_IntVectPush(UU4hDcn0Ni5R8r5LiIRxhM + 1);
 IBrsLswTbV.sq_AddSetStatePacket(236, STATE_PRIORITY_USER, true);
 }
 else
 IBrsLswTbV.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

 
function onEndState_swordman_flashcut(wkj7M4Oc4_vCxmD4GNHNNE, ULMqjDqkkfhd1r4DsqEawIR)
{
 if(!wkj7M4Oc4_vCxmD4GNHNNE) return; 
 if(ULMqjDqkkfhd1r4DsqEawIR != 236)
 RemoveAllFlash(wkj7M4Oc4_vCxmD4GNHNNE); 
} ;

 
function removeAllAp_swordman_flashcut(wkj7M4Oc4_vCxmD4GNHNNE)
{
 local ULMqjDqkkfhd1r4DsqEawIR = wkj7M4Oc4_vCxmD4GNHNNE.getVar(); 
 local eyM8aKcZhmHu_Xi = ULMqjDqkkfhd1r4DsqEawIR.get_obj_vector_size(); 
 for(local Cm5n4rSLAwzFdoICtR79 = 0; Cm5n4rSLAwzFdoICtR79 < eyM8aKcZhmHu_Xi; Cm5n4rSLAwzFdoICtR79++)
 {
 local w6QLbBlhHFkZZjEW5oJc6 = ULMqjDqkkfhd1r4DsqEawIR.get_obj_vector(Cm5n4rSLAwzFdoICtR79); 
 if(!w6QLbBlhHFkZZjEW5oJc6) continue;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(w6QLbBlhHFkZZjEW5oJc6, "character/swordman/flashcut/ap_flashcut.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(w6QLbBlhHFkZZjEW5oJc6, "character/swordman/flashcut/ap_flashcut.nut");
 }
} ;


