
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C



 
function checkExecutableSkill_priest_divinepunishment(rftXufvXfbs)
{
 if(!rftXufvXfbs) return false; 
 local f49sglJWx_oKJU = rftXufvXfbs.sq_IsUseSkill(251); 
 if(f49sglJWx_oKJU) 
 {
 rftXufvXfbs.sq_IntVectClear();
 rftXufvXfbs.sq_IntVectPush(0); 
 rftXufvXfbs.sq_AddSetStatePacket(251, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_divinepunishment(nA3stPQKq6spCz8GtprKsg)
{
 if(!nA3stPQKq6spCz8GtprKsg) return false; 
 local _hey4w9B0d3GWZ64z = nA3stPQKq6spCz8GtprKsg.sq_GetState(); 
 if(_hey4w9B0d3GWZ64z == STATE_STAND) 
 return true; 
 if(_hey4w9B0d3GWZ64z == STATE_ATTACK) 
 {
 return nA3stPQKq6spCz8GtprKsg.sq_IsCommandEnable(251); 
 }
 return true; 
} ;

 
function onSetState_priest_divinepunishment(RjUsaE7IEV, U2qcJl9rNBTo1sKlT8, uz8Z9i0jUicy_TWaLH, HESbf5C7T_x9)
{
 if(!RjUsaE7IEV) return; 
 RjUsaE7IEV.sq_StopMove(); 
 RjUsaE7IEV.sq_ZStop(); 
 local E0J4x91tJ2xBzITYk = RjUsaE7IEV.sq_GetVectorData(uz8Z9i0jUicy_TWaLH, 0); 
 RjUsaE7IEV.setSkillSubState(E0J4x91tJ2xBzITYk); 
 switch(E0J4x91tJ2xBzITYk)
 {
 case 0:
 if(CNSquirrelAppendage.sq_IsAppendAppendage(RjUsaE7IEV, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 RjUsaE7IEV.sq_SetCurrentAnimation(219);
 else
 {
 RjUsaE7IEV.sq_SetCurrentAnimation(211);
 if(CNSquirrelAppendage.sq_IsAppendAppendage(RjUsaE7IEV, "appendage/character/ap_holymace.nut"))
 ChangQing_751675335_BodyHolyMace(RjUsaE7IEV, "DivinePunishmentCast")
 }
 RjUsaE7IEV.sq_PlaySound("PR_DIVINEPUNISHMENT_01");
 RjUsaE7IEV.getVar().setBool(0, false); 
 RjUsaE7IEV.getVar().clear_vector(); 
 RjUsaE7IEV.getVar().clear_timer_vector(); 
 RjUsaE7IEV.getVar("aniobj").clear_obj_vector(); 
 RjUsaE7IEV.getVar().clear_obj_vector(); 
 break;
 case 1:
 if(CNSquirrelAppendage.sq_IsAppendAppendage(RjUsaE7IEV, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 RjUsaE7IEV.sq_SetCurrentAnimation(220);
 else
 {
 RjUsaE7IEV.sq_SetCurrentAnimation(212);
 if(CNSquirrelAppendage.sq_IsAppendAppendage(RjUsaE7IEV, "appendage/character/ap_holymace.nut"))
 ChangQing_751675335_BodyHolyMace(RjUsaE7IEV, "DivinePunishmentReady")
 }
 break;
 case 2:
 if(CNSquirrelAppendage.sq_IsAppendAppendage(RjUsaE7IEV, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 RjUsaE7IEV.sq_SetCurrentAnimation(221);
 else
 {
 RjUsaE7IEV.sq_SetCurrentAnimation(213);
 if(CNSquirrelAppendage.sq_IsAppendAppendage(RjUsaE7IEV, "appendage/character/ap_holymace.nut"))
 ChangQing_751675335_BodyHolyMace(RjUsaE7IEV, "DivinePunishmentStart")
 }
 RjUsaE7IEV.getVar().clear_vector(); 
 RjUsaE7IEV.getVar().push_vector(1); 
 RjUsaE7IEV.getVar().push_vector(RjUsaE7IEV.getZPos()); 
 RjUsaE7IEV.getVar().push_vector(225); 
 RjUsaE7IEV.getVar().push_vector(-1); 
 RjUsaE7IEV.getVar().push_vector(-1); 
 RjUsaE7IEV.getVar().push_vector(0); 
 RjUsaE7IEV.getVar().push_vector(6); 
 local MRldMfBSGt = sq_GetSkillLevel(RjUsaE7IEV, 251); 
 local lje80OMHvJPG = RjUsaE7IEV.sq_GetLevelData(251, 2, MRldMfBSGt); 
 local NQuQCguzrNcb2w1z7PdF4xEo = RjUsaE7IEV.sq_GetLevelData(251, 3, MRldMfBSGt); 
 RjUsaE7IEV.getVar("info").clear_vector(); 
 RjUsaE7IEV.getVar("info").push_vector(lje80OMHvJPG); 
 RjUsaE7IEV.getVar("info").push_vector(NQuQCguzrNcb2w1z7PdF4xEo); 
 RjUsaE7IEV.getVar("info").push_vector(((lje80OMHvJPG - NQuQCguzrNcb2w1z7PdF4xEo) / 5.0).tointeger()); 
 RjUsaE7IEV.getVar().clear_timer_vector(); 
 RjUsaE7IEV.getVar().push_timer_vector();
 local n_UJCeuHxhh6dKhMI8lIEN = RjUsaE7IEV.getVar().get_timer_vector(0);
 n_UJCeuHxhh6dKhMI8lIEN.setParameter(lje80OMHvJPG, RjUsaE7IEV.sq_GetLevelData(251, 1, MRldMfBSGt)); 
 n_UJCeuHxhh6dKhMI8lIEN.resetInstant(0); 
 break;
 case 3:
 if(CNSquirrelAppendage.sq_IsAppendAppendage(RjUsaE7IEV, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 RjUsaE7IEV.sq_SetCurrentAnimation(222);
 else
 {
 RjUsaE7IEV.sq_SetCurrentAnimation(214); 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(RjUsaE7IEV, "appendage/character/ap_holymace.nut"))
 ChangQing_751675335_BodyHolyMace(RjUsaE7IEV, "DivinePunishmentLoop")
 }
 break;
 case 4:
 if(CNSquirrelAppendage.sq_IsAppendAppendage(RjUsaE7IEV, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 RjUsaE7IEV.sq_SetCurrentAnimation(223);
 else
 {
 RjUsaE7IEV.sq_SetCurrentAnimation(215);
 if(CNSquirrelAppendage.sq_IsAppendAppendage(RjUsaE7IEV, "appendage/character/ap_holymace.nut"))
 ChangQing_751675335_BodyHolyMace(RjUsaE7IEV, "DivinePunishmentLoopEnd")
 }
 sq_EffectLayerAppendage(RjUsaE7IEV, sq_RGB(255, 255, 255), 80, 200, 500, 0); 
 local Ndh6d1XzNNDlgWRoS = RjUsaE7IEV.getZPos(); 
 RjUsaE7IEV.getVar().clear_vector(); 
 RjUsaE7IEV.getVar().push_vector(Ndh6d1XzNNDlgWRoS); 
 RjUsaE7IEV.getVar().push_vector(Ndh6d1XzNNDlgWRoS + 55); 
 break;
 case 5:
 if(CNSquirrelAppendage.sq_IsAppendAppendage(RjUsaE7IEV, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 RjUsaE7IEV.sq_SetCurrentAnimation(224);
 else
 {
 RjUsaE7IEV.sq_SetCurrentAnimation(216);
 if(CNSquirrelAppendage.sq_IsAppendAppendage(RjUsaE7IEV, "appendage/character/ap_holymace.nut"))
 ChangQing_751675335_BodyHolyMace(RjUsaE7IEV, "DivinePunishmentFinish")
 }
 sq_setCurrentAxisPos(RjUsaE7IEV, 2, 0); 
 sq_CreateParticle("passiveobject/script_sqr_nut/priest/particle/divinepunishmentlight.ptl", RjUsaE7IEV, 0, 0, 350, true, 50, 0, 20); 
 if(RjUsaE7IEV.sq_IsMyControlObject())
 {
 searchChrAndSendEffectPacket_priest_divinepunishment(RjUsaE7IEV); 
 RjUsaE7IEV.sq_StartWrite();
 RjUsaE7IEV.sq_WriteDword(251); 
 RjUsaE7IEV.sq_WriteDword(2); 
 RjUsaE7IEV.sq_WriteDword(RjUsaE7IEV.sq_GetBonusRateWithPassive(251, 251, 4, 1.0)); 
 RjUsaE7IEV.sq_SendCreatePassiveObjectPacket(24374, 0, 0, 0, 0);
 }
 break;
 }
 local SnDEdSZNHgs9W = RjUsaE7IEV.sq_GetDelaySum(); 
 RjUsaE7IEV.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 local mxPxv5XFWVl8Q = RjUsaE7IEV.sq_GetDelaySum(); 
 local qg4KIkXkAa_Tthr = SnDEdSZNHgs9W.tofloat() / mxPxv5XFWVl8Q.tofloat() * 100.0; 
 local iGdmNCL8DIsVBJqrq = RjUsaE7IEV.getXPos(); local Njpxzqa3AgxZKcQ5F = RjUsaE7IEV.getYPos(); local H1j5vV406NxCqFzAlFe = RjUsaE7IEV.getZPos();
 switch(E0J4x91tJ2xBzITYk)
 {
 case 2:
 CreateAniRate(RjUsaE7IEV, "character/priest/effect/animation/divinepunishment/dust_03.ani", ENUM_DRAWLAYER_BOTTOM, iGdmNCL8DIsVBJqrq, Njpxzqa3AgxZKcQ5F, H1j5vV406NxCqFzAlFe, false, qg4KIkXkAa_Tthr); 
 local leyCwzTXJKdL2vk93LZ = CreateAniRate(RjUsaE7IEV, "character/priest/effect/animation/divinepunishment/start_bottom_direct_01.ani", ENUM_DRAWLAYER_BOTTOM, iGdmNCL8DIsVBJqrq, Njpxzqa3AgxZKcQ5F, 0, false, qg4KIkXkAa_Tthr); 
 local cl4dmJtOj62FX8o = CreateAniRate(RjUsaE7IEV, "character/priest/effect/animation/divinepunishment/start_direct_05.ani", ENUM_DRAWLAYER_NORMAL, iGdmNCL8DIsVBJqrq, Njpxzqa3AgxZKcQ5F, H1j5vV406NxCqFzAlFe, false, qg4KIkXkAa_Tthr); 
 RjUsaE7IEV.getVar("aniobj").push_obj_vector(leyCwzTXJKdL2vk93LZ); 
 RjUsaE7IEV.getVar("aniobj").push_obj_vector(cl4dmJtOj62FX8o); 
 sq_moveWithParent(RjUsaE7IEV, cl4dmJtOj62FX8o); 
 CreateAniRate(RjUsaE7IEV, "character/priest/effect/animation/divinepunishment/start_direct_04.ani", ENUM_DRAWLAYER_NORMAL, iGdmNCL8DIsVBJqrq, Njpxzqa3AgxZKcQ5F, H1j5vV406NxCqFzAlFe, false, qg4KIkXkAa_Tthr); 
 break;
 case 3:
 RemoveAllAni(RjUsaE7IEV); 
 local leyCwzTXJKdL2vk93LZ = CreateAniRate(RjUsaE7IEV, "character/priest/effect/animation/divinepunishment/loop_bottom_direct_01.ani", ENUM_DRAWLAYER_BOTTOM, iGdmNCL8DIsVBJqrq, Njpxzqa3AgxZKcQ5F, 0, false, qg4KIkXkAa_Tthr); 
 local cl4dmJtOj62FX8o = CreateAniRate(RjUsaE7IEV, "character/priest/effect/animation/divinepunishment/loop_direct_03.ani", ENUM_DRAWLAYER_NORMAL, iGdmNCL8DIsVBJqrq, Njpxzqa3AgxZKcQ5F, H1j5vV406NxCqFzAlFe, false, qg4KIkXkAa_Tthr); 
 RjUsaE7IEV.getVar("aniobj").push_obj_vector(leyCwzTXJKdL2vk93LZ); 
 RjUsaE7IEV.getVar("aniobj").push_obj_vector(cl4dmJtOj62FX8o); 
 sq_moveWithParent(RjUsaE7IEV, cl4dmJtOj62FX8o); 
 break;
 case 4:
 CreateAniRate(RjUsaE7IEV, "character/priest/effect/animation/divinepunishment/loopendeffect_body_06.ani", ENUM_DRAWLAYER_NORMAL, iGdmNCL8DIsVBJqrq, Njpxzqa3AgxZKcQ5F, H1j5vV406NxCqFzAlFe, false, qg4KIkXkAa_Tthr); 
 RemoveAllAni(RjUsaE7IEV); 
 local leyCwzTXJKdL2vk93LZ = CreateAniRate(RjUsaE7IEV, "character/priest/effect/animation/divinepunishment/loopend_bottom_direct_01.ani", ENUM_DRAWLAYER_BOTTOM, iGdmNCL8DIsVBJqrq, Njpxzqa3AgxZKcQ5F, 0, false, qg4KIkXkAa_Tthr); 
 local cl4dmJtOj62FX8o = CreateAniRate(RjUsaE7IEV, "character/priest/effect/animation/divinepunishment/loopend_direct_03.ani", ENUM_DRAWLAYER_NORMAL, iGdmNCL8DIsVBJqrq, Njpxzqa3AgxZKcQ5F, H1j5vV406NxCqFzAlFe, false, qg4KIkXkAa_Tthr); 
 RjUsaE7IEV.getVar("aniobj").push_obj_vector(leyCwzTXJKdL2vk93LZ); 
 RjUsaE7IEV.getVar("aniobj").push_obj_vector(cl4dmJtOj62FX8o); 
 sq_moveWithParent(RjUsaE7IEV, cl4dmJtOj62FX8o); 
 break;
 }
} ;

function onProcCon_priest_divinepunishment(n3fLeQgATUe1OuhypjR9)
{
 if(!n3fLeQgATUe1OuhypjR9) return;
 local anjOa8DMJkR = n3fLeQgATUe1OuhypjR9.getSkillSubState(); 
 if(anjOa8DMJkR <= 3 && n3fLeQgATUe1OuhypjR9.getVar().getBool(0) == false) 
 {
 sq_SetKeyxEnable(n3fLeQgATUe1OuhypjR9, 1, true); 
 if(sq_IsEnterCommand(n3fLeQgATUe1OuhypjR9, 1)) 
 n3fLeQgATUe1OuhypjR9.getVar().setBool(0, true); 
 }
} ;

function onProc_priest_divinepunishment(TP_LozBm5vhsKNDibuRiIkf)
{
 if(!TP_LozBm5vhsKNDibuRiIkf) return;
 local OMdaBiW6uZ7eKoxJ = TP_LozBm5vhsKNDibuRiIkf.getSkillSubState(); 
 local oDHH_l7q0Ac8oe7svra7ERGX = false; 
 switch(OMdaBiW6uZ7eKoxJ)
 {
 case 2:
 if(TP_LozBm5vhsKNDibuRiIkf.getVar().size_vector() <= 0)return;
 local rNJQktDFpvUnTY = TP_LozBm5vhsKNDibuRiIkf.getVar(); 
 local dqVb6MMI_Ka5qPdbB = TP_LozBm5vhsKNDibuRiIkf.getCurrentAnimation(); 
 local WCcoQQvPsMUlFZnGZlOiHs5 = sq_GetCurrentTime(dqVb6MMI_Ka5qPdbB) - dqVb6MMI_Ka5qPdbB.getDelaySum(rNJQktDFpvUnTY.get_vector(3), rNJQktDFpvUnTY.get_vector(4)); 
 local LP78E3N_PT8S1 = dqVb6MMI_Ka5qPdbB.getDelaySum(rNJQktDFpvUnTY.get_vector(5), rNJQktDFpvUnTY.get_vector(6)); 
 switch(rNJQktDFpvUnTY.get_vector(0)) 
 {
 case 1:
 local Td0fR00n3lnfJXJU6wHtlLzf = sq_GetAccel(rNJQktDFpvUnTY.get_vector(1), rNJQktDFpvUnTY.get_vector(2), WCcoQQvPsMUlFZnGZlOiHs5, LP78E3N_PT8S1, false);
 sq_setCurrentAxisPos(TP_LozBm5vhsKNDibuRiIkf, 2, Td0fR00n3lnfJXJU6wHtlLzf); 
 if(WCcoQQvPsMUlFZnGZlOiHs5 >= LP78E3N_PT8S1)
 {
 rNJQktDFpvUnTY.set_vector(0, 2); 
 rNJQktDFpvUnTY.set_vector(1, Td0fR00n3lnfJXJU6wHtlLzf); 
 rNJQktDFpvUnTY.set_vector(2, Td0fR00n3lnfJXJU6wHtlLzf - 20); 
 rNJQktDFpvUnTY.set_vector(3, 0); 
 rNJQktDFpvUnTY.set_vector(4, 6); 
 rNJQktDFpvUnTY.set_vector(5, 7); 
 rNJQktDFpvUnTY.set_vector(6, 11); 
 return;
 }
 break;
 case 2:
 local Td0fR00n3lnfJXJU6wHtlLzf = sq_GetUniformVelocity(rNJQktDFpvUnTY.get_vector(1), rNJQktDFpvUnTY.get_vector(2), WCcoQQvPsMUlFZnGZlOiHs5, LP78E3N_PT8S1);
 sq_setCurrentAxisPos(TP_LozBm5vhsKNDibuRiIkf, 2, Td0fR00n3lnfJXJU6wHtlLzf); 
 if(WCcoQQvPsMUlFZnGZlOiHs5 >= LP78E3N_PT8S1) 
 oDHH_l7q0Ac8oe7svra7ERGX = true;
 break;
 }
 break;
 case 3:
 oDHH_l7q0Ac8oe7svra7ERGX = true;
 break;
 case 4:
 local dqVb6MMI_Ka5qPdbB = TP_LozBm5vhsKNDibuRiIkf.getCurrentAnimation(); 
 local WCcoQQvPsMUlFZnGZlOiHs5 = sq_GetCurrentTime(dqVb6MMI_Ka5qPdbB); 
 local LP78E3N_PT8S1 = dqVb6MMI_Ka5qPdbB.getDelaySum(0, 1); 
 local Td0fR00n3lnfJXJU6wHtlLzf = sq_GetUniformVelocity(TP_LozBm5vhsKNDibuRiIkf.getVar().get_vector(0), TP_LozBm5vhsKNDibuRiIkf.getVar().get_vector(1), WCcoQQvPsMUlFZnGZlOiHs5, LP78E3N_PT8S1);
 sq_setCurrentAxisPos(TP_LozBm5vhsKNDibuRiIkf, 2, Td0fR00n3lnfJXJU6wHtlLzf); 
 break;
 }
 local ATZxrHsb5J = TP_LozBm5vhsKNDibuRiIkf.getVar().get_timer_vector(0); 
 if(ATZxrHsb5J && oDHH_l7q0Ac8oe7svra7ERGX)
 {
 local g1F8aCZWlX0Dx5W = TP_LozBm5vhsKNDibuRiIkf.sq_IsMyControlObject(); 
 
 if(TP_LozBm5vhsKNDibuRiIkf.getVar().getBool(0) == true && g1F8aCZWlX0Dx5W) 
 {
 TP_LozBm5vhsKNDibuRiIkf.sq_IntVectClear();
 TP_LozBm5vhsKNDibuRiIkf.sq_IntVectPush(4); 
 TP_LozBm5vhsKNDibuRiIkf.sq_AddSetStatePacket(251, STATE_PRIORITY_USER, true); 
 return;
 }
 if(ATZxrHsb5J.isEnd() && g1F8aCZWlX0Dx5W)
 {
 TP_LozBm5vhsKNDibuRiIkf.sq_IntVectClear();
 TP_LozBm5vhsKNDibuRiIkf.sq_IntVectPush(4); 
 TP_LozBm5vhsKNDibuRiIkf.sq_AddSetStatePacket(251, STATE_PRIORITY_USER, true); 
 return;
 }
 if(ATZxrHsb5J.isOnEvent(sq_GetObjectTime(TP_LozBm5vhsKNDibuRiIkf)) == true) 
 {
 TP_LozBm5vhsKNDibuRiIkf.getVar().clear_obj_vector(); 
 local rNJQktDFpvUnTY = TP_LozBm5vhsKNDibuRiIkf.getVar(); 
 if(g1F8aCZWlX0Dx5W)
 {
 local Oq6EfFG64qsj2B = 380; 
 local X7UZhgWGU4 = 120; 
 local V7n5V6REtksiR = 160; 
 local A_bKs1GNeKHwqpC2fkb8LUmM = TP_LozBm5vhsKNDibuRiIkf.getXPos() + sq_getRandom(Oq6EfFG64qsj2B / -1, Oq6EfFG64qsj2B); 
 local dGkPEbJ2CPh4V = TP_LozBm5vhsKNDibuRiIkf.getYPos() + sq_getRandom(X7UZhgWGU4 / -1, X7UZhgWGU4); 
 if(sq_getRandom(0, 100) > 40) 
 {
 local elNVIiSVaOe3CA = TP_LozBm5vhsKNDibuRiIkf.getObjectManager(); 
 for(local y_knE5tdtQa_8uQcN = 0; y_knE5tdtQa_8uQcN < elNVIiSVaOe3CA.getCollisionObjectNumber(); y_knE5tdtQa_8uQcN++)
 {
 local yxICSZPcpxAbmR5n = elNVIiSVaOe3CA.getCollisionObject(y_knE5tdtQa_8uQcN); 
 if(yxICSZPcpxAbmR5n
 && yxICSZPcpxAbmR5n.isObjectType(OBJECTTYPE_ACTIVE)
 && TP_LozBm5vhsKNDibuRiIkf.isEnemy(yxICSZPcpxAbmR5n)
 && yxICSZPcpxAbmR5n.isInDamagableState(TP_LozBm5vhsKNDibuRiIkf))
 {
 local DMvsyH5PsfiEUAerRGuHey = sq_GetCNRDObjectToActiveObject(yxICSZPcpxAbmR5n); 
 if(!DMvsyH5PsfiEUAerRGuHey.isDead()) 
 {
 if(sq_Abs(DMvsyH5PsfiEUAerRGuHey.getXPos() - A_bKs1GNeKHwqpC2fkb8LUmM) <= Oq6EfFG64qsj2B
 && sq_Abs(DMvsyH5PsfiEUAerRGuHey.getYPos() - dGkPEbJ2CPh4V) <= X7UZhgWGU4
 && DMvsyH5PsfiEUAerRGuHey.getZPos() <= V7n5V6REtksiR)
 {
 rNJQktDFpvUnTY.push_obj_vector(DMvsyH5PsfiEUAerRGuHey); 
 }
 }
 }
 }
 if(rNJQktDFpvUnTY.get_obj_vector_size() > 0) 
 {
 local K7FSRO1ICQlLbl5LYQ = rNJQktDFpvUnTY.get_obj_vector(sq_getRandom(0, rNJQktDFpvUnTY.get_obj_vector_size() - 1)); 
 if(K7FSRO1ICQlLbl5LYQ) 
 {
 A_bKs1GNeKHwqpC2fkb8LUmM = K7FSRO1ICQlLbl5LYQ.getXPos(); 
 dGkPEbJ2CPh4V = K7FSRO1ICQlLbl5LYQ.getYPos(); 
 }
 }
 }
 TP_LozBm5vhsKNDibuRiIkf.sq_StartWrite();
 TP_LozBm5vhsKNDibuRiIkf.sq_WriteDword(251); 
 TP_LozBm5vhsKNDibuRiIkf.sq_WriteDword(1); 
 TP_LozBm5vhsKNDibuRiIkf.sq_WriteDword(TP_LozBm5vhsKNDibuRiIkf.sq_GetBonusRateWithPassive(251, 251, 0, 1.0)); 
 sq_SendCreatePassiveObjectPacketPos(TP_LozBm5vhsKNDibuRiIkf, 24374, 0, A_bKs1GNeKHwqpC2fkb8LUmM, dGkPEbJ2CPh4V, 0);
 }
 if(ATZxrHsb5J.getEventTerm() > TP_LozBm5vhsKNDibuRiIkf.getVar("info").get_vector(1)) 
 ATZxrHsb5J.setEventTerm(ATZxrHsb5J.getEventTerm() - TP_LozBm5vhsKNDibuRiIkf.getVar("info").get_vector(2)); 
 }
 }
} ;

function onEndState_priest_divinepunishment(AvTq5fRGFRfl49aByyJro3ry, wCzC9ndlYPcbJ0bSlOZd7)
{
 if(!AvTq5fRGFRfl49aByyJro3ry) return;
 if(wCzC9ndlYPcbJ0bSlOZd7 != 251)
 {
 AvTq5fRGFRfl49aByyJro3ry.stopSound(9402); 
 RemoveAllAni(AvTq5fRGFRfl49aByyJro3ry); 
 }
} ;

function onKeyFrameFlag_priest_divinepunishment(tZzE3PUSWrdlOnph57tz, nggdnApIMMty)
{
 if(!tZzE3PUSWrdlOnph57tz) return false;
 local y0spw5TDaSb0pC3X9Hd_mE = tZzE3PUSWrdlOnph57tz.getSkillSubState(); 
 switch(y0spw5TDaSb0pC3X9Hd_mE)
 {
 case 0:
 if(nggdnApIMMty == 1 && tZzE3PUSWrdlOnph57tz.sq_IsMyControlObject())
 sq_flashScreen(tZzE3PUSWrdlOnph57tz, 0, 0, 300, 127, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 case 2:
 if(nggdnApIMMty == 0)
 {
 sq_SetMyShake(tZzE3PUSWrdlOnph57tz, 2, 100); 
 tZzE3PUSWrdlOnph57tz.sq_PlaySound("DIVINEPUNISHMENT", 9402); 
 if(tZzE3PUSWrdlOnph57tz.sq_IsMyControlObject())
 sq_flashScreen(tZzE3PUSWrdlOnph57tz, 50, 0, 50, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 else if(nggdnApIMMty == 1)
 {
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/priest/particle/divinepunishment_left.ptl", tZzE3PUSWrdlOnph57tz, sq_GetDistancePos(0, tZzE3PUSWrdlOnph57tz.getDirection(), -100), 0, 100, true, 30, 0, 15); 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/priest/particle/divinepunishment_right.ptl", tZzE3PUSWrdlOnph57tz, sq_GetDistancePos(0, tZzE3PUSWrdlOnph57tz.getDirection(), 100), 0, 100, true, 30, 0, 15); 
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_priest_divinepunishment(Mh7JrYGhdUy4o91w)
{
 if(!Mh7JrYGhdUy4o91w) return;
 if(!Mh7JrYGhdUy4o91w.sq_IsMyControlObject()) return;
 local djJiTT2bE4KcDvWe = Mh7JrYGhdUy4o91w.getSkillSubState(); 
 if(djJiTT2bE4KcDvWe != 5)
 {
 Mh7JrYGhdUy4o91w.sq_IntVectClear();
 Mh7JrYGhdUy4o91w.sq_IntVectPush(djJiTT2bE4KcDvWe + 1); 
 Mh7JrYGhdUy4o91w.sq_AddSetStatePacket(251, STATE_PRIORITY_USER, true); 
 }
 else
 Mh7JrYGhdUy4o91w.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

function onChangeSkillEffect_priest_divinepunishment(r4AHpndyFvlfjKfrY4j, XZz4zuijzrI3MXJoRM4DV8Yr, t1mlmi2mHDwWYd3iV)
{
 if(!r4AHpndyFvlfjKfrY4j) return;
 local THggb05WI_Y1SryngyPNX = t1mlmi2mHDwWYd3iV.readWord(); 
 switch(THggb05WI_Y1SryngyPNX)
 {
 case 1:
 onAppendAppendageAddEff_priest_divinepunishment(r4AHpndyFvlfjKfrY4j, t1mlmi2mHDwWYd3iV); 
 break;
 }
} ;

 
function searchChrAndSendEffectPacket_priest_divinepunishment(oAdHhkC4rdYInnAyZCk4x7)
{
 if(!oAdHhkC4rdYInnAyZCk4x7) return;
 local yhCxMkYKbSOqMA = []; 
 
 local PmnLqmJRcWnqyn = oAdHhkC4rdYInnAyZCk4x7.getObjectManager(); 
 for(local wd2kyhxNVTmc8VJfScEtLbE = 0; wd2kyhxNVTmc8VJfScEtLbE < PmnLqmJRcWnqyn.getCollisionObjectNumber(); wd2kyhxNVTmc8VJfScEtLbE++)
 {
 local DiDhXjihoTAd8nvZwEEtE4II = PmnLqmJRcWnqyn.getCollisionObject(wd2kyhxNVTmc8VJfScEtLbE); 
 if(!DiDhXjihoTAd8nvZwEEtE4II || oAdHhkC4rdYInnAyZCk4x7.isEnemy(DiDhXjihoTAd8nvZwEEtE4II) || !DiDhXjihoTAd8nvZwEEtE4II.isObjectType(OBJECTTYPE_CHARACTER)) continue; 
 local sFYTs1cA5ONR44vf9rxw = sq_GetCNRDObjectToSQRCharacter(DiDhXjihoTAd8nvZwEEtE4II); 
 if(sFYTs1cA5ONR44vf9rxw && !sFYTs1cA5ONR44vf9rxw.isDead()) 
 {
 yhCxMkYKbSOqMA.push(sq_GetGroup(sFYTs1cA5ONR44vf9rxw)); 
 yhCxMkYKbSOqMA.push(sq_GetUniqueId(sFYTs1cA5ONR44vf9rxw)); 
 }
 }
 local dr_A2yChsYQ4AURES = yhCxMkYKbSOqMA.len(); 
 if(dr_A2yChsYQ4AURES > 0)
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteDword(dr_A2yChsYQ4AURES/2); 
 foreach(dataValue in yhCxMkYKbSOqMA)
 sq_BinaryWriteDword(dataValue); 
 sq_SendChangeSkillEffectPacket(oAdHhkC4rdYInnAyZCk4x7, 251); 
 }
} ;

 
function onAppendAppendageAddEff_priest_divinepunishment(eu02mg2PMHnp88l2y1R, IpnSQMHvylhXPBnQ)
{
 if(!eu02mg2PMHnp88l2y1R) return;
 local INlrc_IvqPrLthyDTMAOylQ = IpnSQMHvylhXPBnQ.readDword(); 
 local WzbjYWwQL8E3wt8pLt = sq_GetSkillLevel(eu02mg2PMHnp88l2y1R, 251); 
 local fEY13974MHZYwfLU = (INlrc_IvqPrLthyDTMAOylQ / 2 * sq_GetLevelData(eu02mg2PMHnp88l2y1R, 251, 5, WzbjYWwQL8E3wt8pLt)).tofloat(); 
 local niLQnR06Ge = sq_GetLevelData(eu02mg2PMHnp88l2y1R, 251, 6, WzbjYWwQL8E3wt8pLt); 
 
 for(local vJkK03sMLlxinveDMl = 0; vJkK03sMLlxinveDMl < INlrc_IvqPrLthyDTMAOylQ; vJkK03sMLlxinveDMl++)
 {
 local Ppb7JQfJOMYVyBbT = sq_GetCNRDObjectToSQRCharacter(sq_GetObject(eu02mg2PMHnp88l2y1R, IpnSQMHvylhXPBnQ.readDword(), IpnSQMHvylhXPBnQ.readDword())); 
 if(Ppb7JQfJOMYVyBbT && !Ppb7JQfJOMYVyBbT.isDead())
 {
 local z1T82XJQ_0p3 = CNSquirrelAppendage.sq_AppendAppendage(Ppb7JQfJOMYVyBbT, Ppb7JQfJOMYVyBbT, 251, false, "character/new_priest/divinepunishment/ap_divinepunishment.nut", false);
 z1T82XJQ_0p3.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(eu02mg2PMHnp88l2y1R), 251, WzbjYWwQL8E3wt8pLt); 
 CNSquirrelAppendage.sq_AppendAppendageID(z1T82XJQ_0p3, Ppb7JQfJOMYVyBbT, Ppb7JQfJOMYVyBbT, 251, true); 
 z1T82XJQ_0p3.sq_SetValidTime(niLQnR06Ge); 
 local L1RfbiZPWuRrT_e = z1T82XJQ_0p3.sq_getChangeStatus("changeStatus"); 
 if(!L1RfbiZPWuRrT_e) 
 L1RfbiZPWuRrT_e = z1T82XJQ_0p3.sq_AddChangeStatusAppendageID(Ppb7JQfJOMYVyBbT, Ppb7JQfJOMYVyBbT, 0, CHANGE_STATUS_TYPE_HP_MAX, false, 0, APID_COMMON);
 if(L1RfbiZPWuRrT_e) 
 {
 L1RfbiZPWuRrT_e.clearParameter(); 
 L1RfbiZPWuRrT_e.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, fEY13974MHZYwfLU);
 L1RfbiZPWuRrT_e.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, fEY13974MHZYwfLU);
 L1RfbiZPWuRrT_e.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, false, fEY13974MHZYwfLU);
 L1RfbiZPWuRrT_e.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, fEY13974MHZYwfLU);
 }
 }
 }
} ;



ADDEXTRANUT <- 0 