
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C



 
function checkExecutableSkill_atfighter_atomiccannon(b5auQt29ZJBGNtERo)
{
 if(!b5auQt29ZJBGNtERo) return false; 
 local WCDjwRh3IWyTM_NtayN5VXM = b5auQt29ZJBGNtERo.sq_IsUseSkill(224); 
 if(WCDjwRh3IWyTM_NtayN5VXM) 
 {
 b5auQt29ZJBGNtERo.sq_IsEnterSkillLastKeyUnits(224); 
 b5auQt29ZJBGNtERo.sq_IntVectClear();
 b5auQt29ZJBGNtERo.sq_IntVectPush(0); 
 b5auQt29ZJBGNtERo.sq_AddSetStatePacket(224, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atfighter_atomiccannon(Lmb1IBm0hXY6DPN)
{
 if(!Lmb1IBm0hXY6DPN) return false; 
 local YpaXlNk63NMAawV1szMUwYl = Lmb1IBm0hXY6DPN.sq_GetState(); 
 if(YpaXlNk63NMAawV1szMUwYl == STATE_STAND) 
 return true; 
 if(YpaXlNk63NMAawV1szMUwYl == STATE_ATTACK) 
 {
 return Lmb1IBm0hXY6DPN.sq_IsCommandEnable(224); 
 }
 return true; 
} ;

 
function onSetState_atfighter_atomiccannon(Lmb1IBm0hXY6DPN, YpaXlNk63NMAawV1szMUwYl, o5VdaHELFpH1U9ZZ, vMANHUtMTDpA)
{
 if(!Lmb1IBm0hXY6DPN) return; 
 Lmb1IBm0hXY6DPN.sq_StopMove(); 
 local FVKCAd14Dts6N1 = Lmb1IBm0hXY6DPN.sq_GetVectorData(o5VdaHELFpH1U9ZZ, 0); 
 Lmb1IBm0hXY6DPN.setSkillSubState(FVKCAd14Dts6N1); 
 Lmb1IBm0hXY6DPN.getVar().setBool(0, false); 
 switch(FVKCAd14Dts6N1)
 {
 case 0:
 Lmb1IBm0hXY6DPN.getVar().clear_vector(); 
 Lmb1IBm0hXY6DPN.getVar().clear_timer_vector(); 
 Lmb1IBm0hXY6DPN.sq_SetCurrentAnimation(156);
 break;
 case 1:
 Lmb1IBm0hXY6DPN.sq_SetCurrentAnimation(157);
 break;
 case 2:
 Lmb1IBm0hXY6DPN.sq_SetCurrentAnimation(158);
 break;
 case 3:
 Lmb1IBm0hXY6DPN.sq_SetCurrentAnimation(159);
 Lmb1IBm0hXY6DPN.sq_SetCurrentAttackInfo(91);
 local CdeQ5bSIOksjOgU = Lmb1IBm0hXY6DPN.sq_GetVectorData(o5VdaHELFpH1U9ZZ, 1); 
 local j7xnXqShvK = Lmb1IBm0hXY6DPN.sq_GetVectorData(o5VdaHELFpH1U9ZZ, 2); 
 Lmb1IBm0hXY6DPN.getVar().clear_vector(); 
 Lmb1IBm0hXY6DPN.getVar().push_vector(Lmb1IBm0hXY6DPN.getXPos()); 
 Lmb1IBm0hXY6DPN.getVar().push_vector(CdeQ5bSIOksjOgU); 
 Lmb1IBm0hXY6DPN.getVar().push_vector(j7xnXqShvK); 
 Lmb1IBm0hXY6DPN.getVar().clear_timer_vector();
 Lmb1IBm0hXY6DPN.getVar().push_timer_vector();
 local PShLLYZ4oQP = Lmb1IBm0hXY6DPN.getVar().get_timer_vector(0);
 PShLLYZ4oQP.setParameter(50, -1); 
 PShLLYZ4oQP.resetInstant(0); 
 sq_CreateDrawOnlyObject(Lmb1IBm0hXY6DPN, "character/fighter/effect/animation/atatomiccannon/atomiccannon_01dash_dust.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 case 4:
 Lmb1IBm0hXY6DPN.sq_SetCurrentAnimation(160);
 Lmb1IBm0hXY6DPN.sq_SetCurrentAttackInfo(92);
 local G0y8zhBaU5q1_xzzAWF = Lmb1IBm0hXY6DPN.sq_GetBonusRateWithPassive(224, YpaXlNk63NMAawV1szMUwYl, 0, 1.0); 
 Lmb1IBm0hXY6DPN.sq_SetCurrentAttackBonusRate(G0y8zhBaU5q1_xzzAWF); 
 local CdeQ5bSIOksjOgU = Lmb1IBm0hXY6DPN.sq_GetVectorData(o5VdaHELFpH1U9ZZ, 1); 
 Lmb1IBm0hXY6DPN.getVar().clear_vector(); 
 Lmb1IBm0hXY6DPN.getVar().push_vector(Lmb1IBm0hXY6DPN.getXPos()); 
 Lmb1IBm0hXY6DPN.getVar().push_vector(CdeQ5bSIOksjOgU); 
 Lmb1IBm0hXY6DPN.sq_PlaySound("MF_ATOMIC_CANNON_02"); 
 if(Lmb1IBm0hXY6DPN.sq_IsMyControlObject())
 sq_flashScreen(Lmb1IBm0hXY6DPN, 0, 60, 0, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 
 break;
 }
 Lmb1IBm0hXY6DPN.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onProcCon_atfighter_atomiccannon(IjmyD09HAvdjrRaIAQv9MXJ)
{
 if(!IjmyD09HAvdjrRaIAQv9MXJ) return;
 local gd6PwboCvL0ErO8xrMy8 = IjmyD09HAvdjrRaIAQv9MXJ.getSkillSubState(); 
 switch(gd6PwboCvL0ErO8xrMy8)
 {
 case 1: 
 local Kdl_D0wynCAQLMhCjTrr = IjmyD09HAvdjrRaIAQv9MXJ.sq_GetStateTimer(); 
 local CsEPx1k2V0TO_z0R = 2000; 
 if(!IjmyD09HAvdjrRaIAQv9MXJ.isDownSkillLastKey() || Kdl_D0wynCAQLMhCjTrr >= CsEPx1k2V0TO_z0R)
 {
 
 IjmyD09HAvdjrRaIAQv9MXJ.sq_IntVectClear();
 IjmyD09HAvdjrRaIAQv9MXJ.sq_IntVectPush(2); 
 IjmyD09HAvdjrRaIAQv9MXJ.sq_AddSetStatePacket(224, STATE_PRIORITY_USER, true); 
 }
 break;
 }
} ;

function onProc_atfighter_atomiccannon(kEMzSqqGTpKjb)
{
 if(!kEMzSqqGTpKjb) return;
 local kjY0PiCWkiQ7094kvdClOK = kEMzSqqGTpKjb.getSkillSubState(); 
 switch(kjY0PiCWkiQ7094kvdClOK)
 {
 case 3: 
 local btDY83QGuE1 = kEMzSqqGTpKjb.sq_GetStateTimer(); 
 local IrGcSsPqOXR = 150; 
 if(kEMzSqqGTpKjb.getVar().size_vector() >0) 
 {
 local wArFcc57zoeD = kEMzSqqGTpKjb.getVar().get_vector(1); 
 local UDbLzpv_2krOKq7MIhnWEThJ = sq_GetDistancePos(kEMzSqqGTpKjb.getVar().get_vector(0), 
 kEMzSqqGTpKjb.getDirection(),
 sq_GetUniformVelocity(0, wArFcc57zoeD, btDY83QGuE1, IrGcSsPqOXR)); 
 if(kEMzSqqGTpKjb.isMovablePos(UDbLzpv_2krOKq7MIhnWEThJ, kEMzSqqGTpKjb.getYPos())) 
 sq_setCurrentAxisPos(kEMzSqqGTpKjb, 0, UDbLzpv_2krOKq7MIhnWEThJ); 
 else
 {
 local jSvCTa01m9mwpyW7q_o_4 = sq_Abs(UDbLzpv_2krOKq7MIhnWEThJ - kEMzSqqGTpKjb.getXPos());
 if(jSvCTa01m9mwpyW7q_o_4 != 0)
 kEMzSqqGTpKjb.getVar().set_vector(1, (wArFcc57zoeD > 0) ? wArFcc57zoeD - jSvCTa01m9mwpyW7q_o_4 : wArFcc57zoeD + jSvCTa01m9mwpyW7q_o_4);
 }
 if(btDY83QGuE1 >= IrGcSsPqOXR) 
 {
 
 kEMzSqqGTpKjb.sq_IntVectClear();
 kEMzSqqGTpKjb.sq_IntVectPush(4); 
 kEMzSqqGTpKjb.sq_IntVectPush(kEMzSqqGTpKjb.getVar().get_vector(2)); 
 kEMzSqqGTpKjb.sq_AddSetStatePacket(224, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 local kN8DXYeaMfI49n_5g7e = kEMzSqqGTpKjb.getVar().get_timer_vector(0); 
 if(kN8DXYeaMfI49n_5g7e)
 {
 if(kN8DXYeaMfI49n_5g7e.isOnEvent(btDY83QGuE1) == true)
 if(kEMzSqqGTpKjb.getVar().getBool(0) == true) 
 kEMzSqqGTpKjb.getVar().setBool(0, false); 
 }
 break;
 case 4: 
 if(kEMzSqqGTpKjb.getVar().size_vector() > 0)
 {
 local h0nGgqNxkT6LOUjmDZkd = kEMzSqqGTpKjb.getCurrentAnimation(); 
 local btDY83QGuE1 = sq_GetCurrentTime(h0nGgqNxkT6LOUjmDZkd); 
 local IrGcSsPqOXR = h0nGgqNxkT6LOUjmDZkd.getDelaySum(0, 6); 
 local wArFcc57zoeD = kEMzSqqGTpKjb.getVar().get_vector(1); 
 local UDbLzpv_2krOKq7MIhnWEThJ = sq_GetDistancePos(kEMzSqqGTpKjb.getVar().get_vector(0),
 kEMzSqqGTpKjb.getDirection(),
 sq_GetUniformVelocity(0, wArFcc57zoeD, btDY83QGuE1, IrGcSsPqOXR)); 
 if(kEMzSqqGTpKjb.isMovablePos(UDbLzpv_2krOKq7MIhnWEThJ, kEMzSqqGTpKjb.getYPos())) 
 sq_setCurrentAxisPos(kEMzSqqGTpKjb, 0, UDbLzpv_2krOKq7MIhnWEThJ); 
 else
 {
 local jSvCTa01m9mwpyW7q_o_4 = sq_Abs(UDbLzpv_2krOKq7MIhnWEThJ - kEMzSqqGTpKjb.getXPos());
 if(jSvCTa01m9mwpyW7q_o_4 != 0)
 kEMzSqqGTpKjb.getVar().set_vector(1, (wArFcc57zoeD > 0) ? wArFcc57zoeD - jSvCTa01m9mwpyW7q_o_4 : wArFcc57zoeD + jSvCTa01m9mwpyW7q_o_4);
 }
 }
 break;
 }
} ;

 
function onEndCurrentAni_atfighter_atomiccannon(ul0IHtSEMVnP_PUqGiCvkb)
{
 if(!ul0IHtSEMVnP_PUqGiCvkb) return;
 if(!ul0IHtSEMVnP_PUqGiCvkb.sq_IsMyControlObject()) return;
 local XGb87CFXy6LAF9cCKP1fde = ul0IHtSEMVnP_PUqGiCvkb.getSkillSubState(); 
 if(XGb87CFXy6LAF9cCKP1fde != 4)
 {
 if(XGb87CFXy6LAF9cCKP1fde == 2)
 {
 local lEa5hN4qfQW8Z = ul0IHtSEMVnP_PUqGiCvkb.getDirection(); 
 local yRIw2oR7MZ1of3 = 160; 
 local cqcUnwvGJgVwVcqe0EES6 = 85; 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && lEa5hN4qfQW8Z == ENUM_DIRECTION_RIGHT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && lEa5hN4qfQW8Z == ENUM_DIRECTION_LEFT)
 {
 ul0IHtSEMVnP_PUqGiCvkb.sq_IntVectClear();
 ul0IHtSEMVnP_PUqGiCvkb.sq_IntVectPush(4); 
 ul0IHtSEMVnP_PUqGiCvkb.sq_IntVectPush(150); 
 ul0IHtSEMVnP_PUqGiCvkb.sq_AddSetStatePacket(224, STATE_PRIORITY_USER, true); 
 return; 
 }
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && lEa5hN4qfQW8Z == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && lEa5hN4qfQW8Z == ENUM_DIRECTION_RIGHT)
 {
 yRIw2oR7MZ1of3 = 285; 
 cqcUnwvGJgVwVcqe0EES6 = 150; 
 }
 ul0IHtSEMVnP_PUqGiCvkb.sq_IntVectClear();
 ul0IHtSEMVnP_PUqGiCvkb.sq_IntVectPush(3); 
 ul0IHtSEMVnP_PUqGiCvkb.sq_IntVectPush(yRIw2oR7MZ1of3); 
 ul0IHtSEMVnP_PUqGiCvkb.sq_IntVectPush(cqcUnwvGJgVwVcqe0EES6); 
 ul0IHtSEMVnP_PUqGiCvkb.sq_AddSetStatePacket(224, STATE_PRIORITY_USER, true); 
 return;
 }
 ul0IHtSEMVnP_PUqGiCvkb.sq_IntVectClear();
 ul0IHtSEMVnP_PUqGiCvkb.sq_IntVectPush(XGb87CFXy6LAF9cCKP1fde + 1); 
 ul0IHtSEMVnP_PUqGiCvkb.sq_AddSetStatePacket(224, STATE_PRIORITY_USER, true); 
 }
 else
 ul0IHtSEMVnP_PUqGiCvkb.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

 
function onAttack_atfighter_atomiccannon(s8RIC7plhS, w7j2e07CT2FICAwsIZt3O, A5ziGvYsDXOcGJTjIfcgfNj, SBAFEmqO1qjsmVeW)
{
 if(!s8RIC7plhS) return;
 if(SBAFEmqO1qjsmVeW || !w7j2e07CT2FICAwsIZt3O.isObjectType(OBJECTTYPE_ACTIVE)) return;
 local jiXMjBdOieLma = s8RIC7plhS.getSkillSubState();
 switch(jiXMjBdOieLma)
 {
 case 3: 
 if(s8RIC7plhS.getVar().getBool(0) == false) 
 {
 s8RIC7plhS.getVar().setBool(0, true); 
 local FY1mLFZPeP_zRhpKA = sq_AddDrawOnlyAniFromParent(s8RIC7plhS, "character/fighter/effect/animation/atatomiccannon/atomiccannon_05dust.ani", 80, 0, 65); 
 sq_SetCurrentDirection(FY1mLFZPeP_zRhpKA, sq_GetOppositeDirection(s8RIC7plhS.getDirection())); 
 }
 break;
 case 4: 
 if(s8RIC7plhS.getVar().getBool(0) == false) 
 {
 s8RIC7plhS.getVar().setBool(0, true); 
 sq_SetMyShake(s8RIC7plhS, 3, 250); 
 sq_CreateDrawOnlyObject(s8RIC7plhS, "character/fighter/effect/animation/atatomiccannon/atomiccannon_03finish_hit.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 break;
 }
} ;



