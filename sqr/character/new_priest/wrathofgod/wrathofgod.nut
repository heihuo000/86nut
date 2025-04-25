
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C



 
function checkExecutableSkill_priest_wrathofgod(lN1VlZe4y7oGEgQFr)
{
 if(!lN1VlZe4y7oGEgQFr) return false; 
 if(lN1VlZe4y7oGEgQFr.isCarryWeapon())return false; 
 local wy0qqcqnqYCgpKopMn_2v = lN1VlZe4y7oGEgQFr.sq_IsUseSkill(245); 
 if(wy0qqcqnqYCgpKopMn_2v) 
 {
 lN1VlZe4y7oGEgQFr.sq_IntVectClear();
 lN1VlZe4y7oGEgQFr.sq_IntVectPush(0); 
 lN1VlZe4y7oGEgQFr.sq_AddSetStatePacket(245, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_wrathofgod(nRTVnDSCUBc6A5VHlW2d)
{
 if(!nRTVnDSCUBc6A5VHlW2d) return false; 
 if(nRTVnDSCUBc6A5VHlW2d.isCarryWeapon())return false; 
 local c_n6egtZJxp48at7d8k = nRTVnDSCUBc6A5VHlW2d.sq_GetState(); 
 if(c_n6egtZJxp48at7d8k == STATE_STAND) 
 return true; 
 if(c_n6egtZJxp48at7d8k == STATE_ATTACK) 
 {
 return nRTVnDSCUBc6A5VHlW2d.sq_IsCommandEnable(245); 
 }
 return true; 
} ;

 
function onSetState_priest_wrathofgod(RouVRYpA6FOjLFoKYk2xtTH, eKWFKiTFKBUCyYAy7f, XTzkvSZ0L5rUXzUZF3vZ, iVmC7fW0OGdJBBVmj42MuD)
{
 if(!RouVRYpA6FOjLFoKYk2xtTH) return; 
 RouVRYpA6FOjLFoKYk2xtTH.sq_StopMove(); 
 RouVRYpA6FOjLFoKYk2xtTH.sq_ZStop(); 
 local IiDkmFBwExZAPCvhfi09 = RouVRYpA6FOjLFoKYk2xtTH.sq_GetVectorData(XTzkvSZ0L5rUXzUZF3vZ, 0); 
 RouVRYpA6FOjLFoKYk2xtTH.setSkillSubState(IiDkmFBwExZAPCvhfi09); 
 switch(IiDkmFBwExZAPCvhfi09)
 {
 case 0:
 RouVRYpA6FOjLFoKYk2xtTH.sq_SetCurrentAnimation(144);
 RouVRYpA6FOjLFoKYk2xtTH.sq_PlaySound("PR_WRATH_GOD"); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("move").clear_vector(); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("atkobj").clear_obj_vector(); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("scrollPos").clear_vector(); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("scrollPos").setBool(0, false); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("subAniIndex").clear_vector(); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("subAniIndex").push_vector(146); 
 
 local ZJNbSpf_xVmdyC = sq_GetSkillLevel(RouVRYpA6FOjLFoKYk2xtTH, 245); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar().clear_vector(); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar().push_vector(RouVRYpA6FOjLFoKYk2xtTH.sq_GetLevelData(245, 0, ZJNbSpf_xVmdyC)); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar().push_vector(RouVRYpA6FOjLFoKYk2xtTH.sq_GetLevelData(245, 2, ZJNbSpf_xVmdyC)); 
 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("movePos").clear_vector(); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("movePos").push_vector(RouVRYpA6FOjLFoKYk2xtTH.getXPos()); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("movePos").push_vector(RouVRYpA6FOjLFoKYk2xtTH.getYPos()); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("movePos").push_vector(RouVRYpA6FOjLFoKYk2xtTH.getZPos()); 
 break;
 case 1:
 RouVRYpA6FOjLFoKYk2xtTH.setCurrentAnimation(null); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar().set_vector(1, RouVRYpA6FOjLFoKYk2xtTH.getVar().get_vector(1) - 1); 
 local lB1rSRSd4erYXYYIuTg = sq_GetObject(RouVRYpA6FOjLFoKYk2xtTH, RouVRYpA6FOjLFoKYk2xtTH.sq_GetVectorData(XTzkvSZ0L5rUXzUZF3vZ, 1), RouVRYpA6FOjLFoKYk2xtTH.sq_GetVectorData(XTzkvSZ0L5rUXzUZF3vZ, 2)); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("atkobj").push_obj_vector(lB1rSRSd4erYXYYIuTg); 
 local bGCHzQw7mpgx_Z2kyFgU6 = RouVRYpA6FOjLFoKYk2xtTH.sq_GetVectorData(XTzkvSZ0L5rUXzUZF3vZ, 3); 
 local CsbYzaHtoPK9en2rA = RouVRYpA6FOjLFoKYk2xtTH.sq_GetVectorData(XTzkvSZ0L5rUXzUZF3vZ, 4); 
 local bRFSGAY0Rtlz = RouVRYpA6FOjLFoKYk2xtTH.sq_GetVectorData(XTzkvSZ0L5rUXzUZF3vZ, 5); 
 local DYNCQoG6Kos1Y = RouVRYpA6FOjLFoKYk2xtTH.sq_GetVectorData(XTzkvSZ0L5rUXzUZF3vZ, 6); 
 local LIxh22rtxO8bG_lOWFG = RouVRYpA6FOjLFoKYk2xtTH.getVar("scrollPos").size_vector(); 
 local uxyTlCB4WslA86Ha8 = (LIxh22rtxO8bG_lOWFG <= 0) ? RouVRYpA6FOjLFoKYk2xtTH.getVar("movePos").get_vector(0) : RouVRYpA6FOjLFoKYk2xtTH.getVar("scrollPos").get_vector(0); 
 local ck2xwuF2xGY8OmrrcdkKB7 = (LIxh22rtxO8bG_lOWFG <= 0) ? RouVRYpA6FOjLFoKYk2xtTH.getVar("movePos").get_vector(1) : RouVRYpA6FOjLFoKYk2xtTH.getVar("scrollPos").get_vector(1); 
 local iT8yhhOq8QA = (uxyTlCB4WslA86Ha8 > bGCHzQw7mpgx_Z2kyFgU6) ? ENUM_DIRECTION_LEFT : ENUM_DIRECTION_RIGHT; 
 
 local zkTo_Lhk8jlRXbC = sq_GetCustomAni(RouVRYpA6FOjLFoKYk2xtTH, 145); 
 sq_Rewind(zkTo_Lhk8jlRXbC); 
 zkTo_Lhk8jlRXbC.setSpeedRate(240.0); 
 local nXoXodXK20fTFTvmBw = sq_CreateDrawOnlyObject(RouVRYpA6FOjLFoKYk2xtTH, "passiveobject/script_sqr_nut_qq506807329/priest/animation/0.ani", ENUM_DRAWLAYER_NORMAL, true); 
 nXoXodXK20fTFTvmBw.setCurrentAnimation(zkTo_Lhk8jlRXbC); 
 sq_SetCurrentDirection(nXoXodXK20fTFTvmBw, iT8yhhOq8QA); 
 nXoXodXK20fTFTvmBw.setCurrentPos(uxyTlCB4WslA86Ha8, ck2xwuF2xGY8OmrrcdkKB7, 0); 
 
 local GL3l_bINPwvdZz7OyiL41b = sq_Abs(uxyTlCB4WslA86Ha8 - bGCHzQw7mpgx_Z2kyFgU6); 
 local fMxSTcXZUOI9PjkpdWgqY = sq_Abs(ck2xwuF2xGY8OmrrcdkKB7 - CsbYzaHtoPK9en2rA); 
 local OcqUVii56Ht5GzcD2 = sq_Atan2(fMxSTcXZUOI9PjkpdWgqY.tofloat(), GL3l_bINPwvdZz7OyiL41b.tofloat()) * (ck2xwuF2xGY8OmrrcdkKB7 < CsbYzaHtoPK9en2rA ? -1.0 : 1.0); 
 local KoJYeagoGMvzRf7O = 600; 
 local _QMmEWWWLVTENF = (bRFSGAY0Rtlz < 50)
 ? "character/priest/effect/animation/wrathofgod/moveline_b.ani"
 : "character/priest/effect/animation/wrathofgod/moveline_a.ani"; 
 local RVsfO_pKiTxpQReKM5 = sq_GetDistance(uxyTlCB4WslA86Ha8, ck2xwuF2xGY8OmrrcdkKB7, bGCHzQw7mpgx_Z2kyFgU6, CsbYzaHtoPK9en2rA, true) / KoJYeagoGMvzRf7O.tofloat(); 
 local Qw4XrIt3shSU = sq_CreateDrawOnlyObject(RouVRYpA6FOjLFoKYk2xtTH, _QMmEWWWLVTENF, ENUM_DRAWLAYER_NORMAL, true); 
 local pVCI2A1sIAIC8o1NY4UbHo = Qw4XrIt3shSU.getCurrentAnimation(); 
 pVCI2A1sIAIC8o1NY4UbHo.setImageRateFromOriginal(RVsfO_pKiTxpQReKM5, RVsfO_pKiTxpQReKM5); 
 sq_SetCustomRotate(Qw4XrIt3shSU, OcqUVii56Ht5GzcD2); 
 sq_SetCurrentDirection(Qw4XrIt3shSU, iT8yhhOq8QA); 
 Qw4XrIt3shSU.setCurrentPos(uxyTlCB4WslA86Ha8, ck2xwuF2xGY8OmrrcdkKB7, 50); 
 local Q27UzVNlbMR8TPv = RouVRYpA6FOjLFoKYk2xtTH.getVar("subAniIndex").get_vector(0) + 1; 
 if(Q27UzVNlbMR8TPv > 153) 
 Q27UzVNlbMR8TPv = 146;
 RouVRYpA6FOjLFoKYk2xtTH.getVar("subAniIndex").set_vector(0, Q27UzVNlbMR8TPv); 
 local d3GHlfM5hr6Ua591ZbjTV4 = sq_GetDistancePos(bGCHzQw7mpgx_Z2kyFgU6, iT8yhhOq8QA, DYNCQoG6Kos1Y); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("scrollPos").setBool(0,false); 
 if(RouVRYpA6FOjLFoKYk2xtTH.getVar("scrollPos").size_vector()>0) 
 {
 RouVRYpA6FOjLFoKYk2xtTH.getVar("movePos").set_vector(0, RouVRYpA6FOjLFoKYk2xtTH.getVar("scrollPos").get_vector(0));
 RouVRYpA6FOjLFoKYk2xtTH.getVar("movePos").set_vector(1, RouVRYpA6FOjLFoKYk2xtTH.getVar("scrollPos").get_vector(1));
 }
 RouVRYpA6FOjLFoKYk2xtTH.getVar("scrollPos").clear_vector(); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("scrollPos").push_vector(d3GHlfM5hr6Ua591ZbjTV4); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("scrollPos").push_vector(CsbYzaHtoPK9en2rA); 
 RouVRYpA6FOjLFoKYk2xtTH.sq_PlaySound("R_WRATH_GOD_MOVE"); 
 if(RouVRYpA6FOjLFoKYk2xtTH.sq_IsMyControlObject())
 {
 
 RouVRYpA6FOjLFoKYk2xtTH.sq_StartWrite();
 RouVRYpA6FOjLFoKYk2xtTH.sq_WriteDword(245); 
 RouVRYpA6FOjLFoKYk2xtTH.sq_WriteDword(1); 
 RouVRYpA6FOjLFoKYk2xtTH.sq_WriteDword(Q27UzVNlbMR8TPv); 
 RouVRYpA6FOjLFoKYk2xtTH.sq_WriteDword(RouVRYpA6FOjLFoKYk2xtTH.sq_GetBonusRateWithPassive(245, 245, 1, 1.0)); 
 RouVRYpA6FOjLFoKYk2xtTH.sq_WriteDword(sq_GetOppositeDirection(iT8yhhOq8QA)); 
 sq_SendCreatePassiveObjectPacketPos(RouVRYpA6FOjLFoKYk2xtTH, 24374, 0, d3GHlfM5hr6Ua591ZbjTV4, CsbYzaHtoPK9en2rA, 0);
 }
 break;
 case 2:
 local cPo9Bcqfy9ikz0zB73 = RouVRYpA6FOjLFoKYk2xtTH.sq_GetVectorData(XTzkvSZ0L5rUXzUZF3vZ, 4); 
 local gyJo8lHEy7 = RouVRYpA6FOjLFoKYk2xtTH.sq_GetVectorData(XTzkvSZ0L5rUXzUZF3vZ, 1);
 local XZqch6qr2WtKKv = RouVRYpA6FOjLFoKYk2xtTH.sq_GetVectorData(XTzkvSZ0L5rUXzUZF3vZ, 2);
 
 sq_MoveToNearMovablePos(RouVRYpA6FOjLFoKYk2xtTH,
 gyJo8lHEy7, XZqch6qr2WtKKv, 0, 
 gyJo8lHEy7, XZqch6qr2WtKKv, 0,
 200, -1, 5);
 RouVRYpA6FOjLFoKYk2xtTH.setDirection(RouVRYpA6FOjLFoKYk2xtTH.sq_GetVectorData(XTzkvSZ0L5rUXzUZF3vZ, 3)); 
 RouVRYpA6FOjLFoKYk2xtTH.sq_SetCurrentAnimation(161);
 local uxyTlCB4WslA86Ha8 = RouVRYpA6FOjLFoKYk2xtTH.getXPos();
 local ck2xwuF2xGY8OmrrcdkKB7 = RouVRYpA6FOjLFoKYk2xtTH.getYPos();
 RouVRYpA6FOjLFoKYk2xtTH.getVar("move").clear_vector(); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("move").push_vector(uxyTlCB4WslA86Ha8); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("move").push_vector(ck2xwuF2xGY8OmrrcdkKB7); 
 RouVRYpA6FOjLFoKYk2xtTH.sq_PlaySound("WRATH_GOD_MOVE_06"); 
 local cMD5H8QJn0 = RouVRYpA6FOjLFoKYk2xtTH.getVar("atkobj"); 
 local MfwJU0vCOpWCuT = cMD5H8QJn0.get_obj_vector_size(); 
 for(local Sh1FgmzSCWY4X_p = 0; Sh1FgmzSCWY4X_p < MfwJU0vCOpWCuT; Sh1FgmzSCWY4X_p++)
 {
 local AV_jCDFOFh7 = cMD5H8QJn0.get_obj_vector(Sh1FgmzSCWY4X_p); 
 
 if(sq_IsGrabable(RouVRYpA6FOjLFoKYk2xtTH, AV_jCDFOFh7) 
 && sq_IsHoldable(RouVRYpA6FOjLFoKYk2xtTH, AV_jCDFOFh7) 
 && !sq_IsFixture(AV_jCDFOFh7) 
 && !CNSquirrelAppendage.sq_IsAppendAppendage(AV_jCDFOFh7, "character/new_priest/wrathofgod/ap_wrathofgod.nut")) 
 {
 local DG4ckljwGDRPcEiy0VRX = sq_GetCNRDObjectToActiveObject(AV_jCDFOFh7); 
 if(!DG4ckljwGDRPcEiy0VRX.isDead()) 
 {
 local dC_utkBRa_MkA27 = DG4ckljwGDRPcEiy0VRX.getXPos();
 local oTkm8iVoiCpcnILFe = DG4ckljwGDRPcEiy0VRX.getYPos();
 local mZ4te0xnxDTiDn = DG4ckljwGDRPcEiy0VRX.getZPos();
 if(sq_Abs(gyJo8lHEy7 - dC_utkBRa_MkA27) > 50 
 || sq_Abs(XZqch6qr2WtKKv - oTkm8iVoiCpcnILFe) > 20) 
 {
 local SKowduNMO_a8 = CNSquirrelAppendage.sq_AppendAppendage(DG4ckljwGDRPcEiy0VRX, RouVRYpA6FOjLFoKYk2xtTH, 245, true, "character/new_priest/wrathofgod/ap_wrathofgod.nut", true);
 sq_HoldAndDelayDie(DG4ckljwGDRPcEiy0VRX, RouVRYpA6FOjLFoKYk2xtTH, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, SKowduNMO_a8); 
 SKowduNMO_a8.getVar().clear_vector(); 
 SKowduNMO_a8.getVar().push_vector(dC_utkBRa_MkA27); 
 SKowduNMO_a8.getVar().push_vector(oTkm8iVoiCpcnILFe); 
 SKowduNMO_a8.getVar().push_vector(mZ4te0xnxDTiDn); 
 SKowduNMO_a8.getVar().push_vector(uxyTlCB4WslA86Ha8 + cPo9Bcqfy9ikz0zB73); 
 SKowduNMO_a8.getVar().push_vector(ck2xwuF2xGY8OmrrcdkKB7); 
 }
 }
 }
 }
 if(RouVRYpA6FOjLFoKYk2xtTH.sq_IsMyControlObject())
 {
 RouVRYpA6FOjLFoKYk2xtTH.sq_StartWrite();
 RouVRYpA6FOjLFoKYk2xtTH.sq_WriteDword(245); 
 RouVRYpA6FOjLFoKYk2xtTH.sq_WriteDword(2); 
 RouVRYpA6FOjLFoKYk2xtTH.sq_WriteDword(RouVRYpA6FOjLFoKYk2xtTH.sq_GetBonusRateWithPassive(245, 245, 3, 1.0)); 
 RouVRYpA6FOjLFoKYk2xtTH.sq_SendCreatePassiveObjectPacket(24374, 0, 0, 0, 0);
 if(MfwJU0vCOpWCuT > 0) 
 {
 RouVRYpA6FOjLFoKYk2xtTH.sq_StartWrite();
 RouVRYpA6FOjLFoKYk2xtTH.sq_WriteDword(245); 
 RouVRYpA6FOjLFoKYk2xtTH.sq_WriteDword(4); 
 RouVRYpA6FOjLFoKYk2xtTH.sq_SendCreatePassiveObjectPacket(24374, 0, 0, 0, 0);
 }
 }
 break;
 case 3:
 RouVRYpA6FOjLFoKYk2xtTH.setDirection(sq_GetOppositeDirection(RouVRYpA6FOjLFoKYk2xtTH.getDirection())); 
 RouVRYpA6FOjLFoKYk2xtTH.sq_SetCurrentAnimation(160);
 RouVRYpA6FOjLFoKYk2xtTH.sq_SetCurrentAttackInfo(111);
 RouVRYpA6FOjLFoKYk2xtTH.sq_SetCurrentAttackBonusRate(RouVRYpA6FOjLFoKYk2xtTH.sq_GetBonusRateWithPassive(245, 245, 3, 1.0)); 
 RouVRYpA6FOjLFoKYk2xtTH.getVar("move").clear_vector(); 
 break;
 }
 switch(IiDkmFBwExZAPCvhfi09)
 {
 case 0:
 case 2:
 RouVRYpA6FOjLFoKYk2xtTH.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 break;
 }
} ;

function getScrollBasisPos_priest_wrathofgod(jPSS2LWvm7P)
{
 if(!jPSS2LWvm7P) return;
 if(!jPSS2LWvm7P.sq_IsMyControlObject()) return;
 local xMUKQwTu96 = jPSS2LWvm7P.getSkillSubState();
 if(xMUKQwTu96 == 1)
 {
 if(jPSS2LWvm7P.getVar("scrollPos").size_vector() > 0 && jPSS2LWvm7P.getVar("scrollPos").getBool(0)==false) 
 {
 local OPkrfS4jG3jLjiKY = jPSS2LWvm7P.getVar("scrollPos"); 
 local BTgSr5kd_Lym9Q = jPSS2LWvm7P.sq_GetStateTimer(); 
 local ao62EYtScOVBN6ymAcsacPU = 150; 
 local I_KfZHLYzcY8qG3R = sq_GetUniformVelocity(jPSS2LWvm7P.getVar("movePos").get_vector(0), jPSS2LWvm7P.getVar("scrollPos").get_vector(0), BTgSr5kd_Lym9Q, ao62EYtScOVBN6ymAcsacPU); 
 local CZ2o8zySpc3GijxRUhEF = sq_GetUniformVelocity(jPSS2LWvm7P.getVar("movePos").get_vector(1), jPSS2LWvm7P.getVar("scrollPos").get_vector(1), BTgSr5kd_Lym9Q, ao62EYtScOVBN6ymAcsacPU); 
 jPSS2LWvm7P.sq_SetCameraScrollPosition(I_KfZHLYzcY8qG3R, CZ2o8zySpc3GijxRUhEF, 0); 
 if(BTgSr5kd_Lym9Q >= ao62EYtScOVBN6ymAcsacPU) 
 {
 jPSS2LWvm7P.getVar("scrollPos").setBool(0, true); 
 local XUKuxzk7gBlOEEJT9cvWRQ = searchTarget_qq506807329_priest_wrathofgod(jPSS2LWvm7P); 
 if(XUKuxzk7gBlOEEJT9cvWRQ == null || jPSS2LWvm7P.getVar().get_vector(1)<=0) 
 {
 searchTargetEnd_qq506807329_priest_wrathofgod(jPSS2LWvm7P); 
 }
 
 else
 {
 jPSS2LWvm7P.sq_IntVectClear();
 jPSS2LWvm7P.sq_IntVectPush(xMUKQwTu96); 
 jPSS2LWvm7P.sq_IntVectPush(sq_GetGroup(XUKuxzk7gBlOEEJT9cvWRQ)); 
 jPSS2LWvm7P.sq_IntVectPush(sq_GetUniqueId(XUKuxzk7gBlOEEJT9cvWRQ)); 
 jPSS2LWvm7P.sq_IntVectPush(XUKuxzk7gBlOEEJT9cvWRQ.getXPos()); 
 jPSS2LWvm7P.sq_IntVectPush(XUKuxzk7gBlOEEJT9cvWRQ.getYPos()); 
 jPSS2LWvm7P.sq_IntVectPush(sq_getRandom(0, 100)); 
 jPSS2LWvm7P.sq_IntVectPush(sq_getRandom(45, 85)); 
 jPSS2LWvm7P.sq_AddSetStatePacket(245, STATE_PRIORITY_USER, true); 
 }
 }
 return true;
 }
 }
 return false;
} ;

function onKeyFrameFlag_priest_wrathofgod(xQTNgWJJwu2yr, yIgNKLcDsfDGN2cSo6mpVgIG)
{
 if(!xQTNgWJJwu2yr) return;
 local GJStmcOR2c8s = xQTNgWJJwu2yr.getSkillSubState(); 
 switch(GJStmcOR2c8s)
 {
 case 0:
 switch(yIgNKLcDsfDGN2cSo6mpVgIG)
 {
 case 1:
 xQTNgWJJwu2yr.getVar("move").clear_vector(); 
 xQTNgWJJwu2yr.getVar("move").push_vector(xQTNgWJJwu2yr.getZPos()); 
 xQTNgWJJwu2yr.getVar("move").push_vector(110); 
 xQTNgWJJwu2yr.getVar("move").push_vector(0); 
 xQTNgWJJwu2yr.getVar("move").push_vector(7); 
 xQTNgWJJwu2yr.getVar("move").push_vector(8); 
 xQTNgWJJwu2yr.getVar("move").push_vector(12); 
 if(xQTNgWJJwu2yr.sq_IsMyControlObject())
 sq_flashScreen(xQTNgWJJwu2yr, 250, 200, 200, 178, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 case 2:
 sq_AddDrawOnlyAniFromParent(xQTNgWJJwu2yr, "character/priest/effect/animation/wrathofgod/ready/firstatk_body_eff_back_b.ani", -27, -1, 78); 
 break;
 case 3:
 xQTNgWJJwu2yr.getVar("move").clear_vector(); 
 xQTNgWJJwu2yr.getVar("move").push_vector(xQTNgWJJwu2yr.getZPos()); 
 xQTNgWJJwu2yr.getVar("move").push_vector(0); 
 xQTNgWJJwu2yr.getVar("move").push_vector(0); 
 xQTNgWJJwu2yr.getVar("move").push_vector(12); 
 xQTNgWJJwu2yr.getVar("move").push_vector(13); 
 xQTNgWJJwu2yr.getVar("move").push_vector(14); 
 break;
 case 4:
 sq_SetMyShake(xQTNgWJJwu2yr, 3, 160); 
 if(xQTNgWJJwu2yr.sq_IsMyControlObject())
 sq_flashScreen(xQTNgWJJwu2yr, 40, 40, 240, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 }
 break;
 case 3:
 switch(yIgNKLcDsfDGN2cSo6mpVgIG)
 {
 case 1:
 xQTNgWJJwu2yr.getVar("move").clear_vector(); 
 xQTNgWJJwu2yr.getVar("move").push_vector(xQTNgWJJwu2yr.getXPos()); 
 break;
 case 2:
 sq_SetMyShake(xQTNgWJJwu2yr, 10, 800); 
 if(xQTNgWJJwu2yr.sq_IsMyControlObject())
 sq_flashScreen(xQTNgWJJwu2yr, 50, 100, 200, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 
 sq_setCurrentAxisPos(sq_CreateDrawOnlyObject(xQTNgWJJwu2yr, "character/priest/effect/animation/wrathofgod/finish/finishatkeffadd_crash.ani", ENUM_DRAWLAYER_BOTTOM, true), 0, sq_GetDistancePos(xQTNgWJJwu2yr.getXPos(), xQTNgWJJwu2yr.getDirection(), 90)); 
 
 sq_AddDrawOnlyAniFromParent(xQTNgWJJwu2yr, "character/priest/effect/animation/wrathofgod/finish/finishatkeffadd_smoke_a.ani", 97, 0, 3);
 break;
 case 3:
 if(xQTNgWJJwu2yr.sq_IsMyControlObject())
 {
 
 xQTNgWJJwu2yr.sq_StartWrite();
 xQTNgWJJwu2yr.sq_WriteDword(245); 
 xQTNgWJJwu2yr.sq_WriteDword(3); 
 xQTNgWJJwu2yr.sq_WriteDword(xQTNgWJJwu2yr.sq_GetBonusRateWithPassive(245, 245, 4, 1.0)); 
 xQTNgWJJwu2yr.sq_SendCreatePassiveObjectPacket(24374, 0, 94, 0, 72);
 }
 xQTNgWJJwu2yr.sq_PlaySound("PR_WRATH_GOD_FIN"); 
 break;
 }
 break;
 }
 return true;
} ;

function onProc_priest_wrathofgod(R_DKUJ95vDGx1mvO)
{
 if(!R_DKUJ95vDGx1mvO) return;
 local eTJRb0GUkkNC9HOiN57G0C63 = R_DKUJ95vDGx1mvO.getSkillSubState(); 
 switch(eTJRb0GUkkNC9HOiN57G0C63)
 {
 case 0:
 if(R_DKUJ95vDGx1mvO.getVar("move").size_vector()>0)
 {
 local QU4UQhsM4VMuH0 = R_DKUJ95vDGx1mvO.getVar("move"); 
 local MqygwwdN6e4xgCV9nDp2aA0K = R_DKUJ95vDGx1mvO.getCurrentAnimation(); 
 local UV5ZA0949J = sq_GetCurrentTime(MqygwwdN6e4xgCV9nDp2aA0K) - MqygwwdN6e4xgCV9nDp2aA0K.getDelaySum(QU4UQhsM4VMuH0.get_vector(2), QU4UQhsM4VMuH0.get_vector(3)); 
 local POZ88PNzcCN48FkccMTt9f = MqygwwdN6e4xgCV9nDp2aA0K.getDelaySum(QU4UQhsM4VMuH0.get_vector(4), QU4UQhsM4VMuH0.get_vector(5)); 
 local Tyi4feVhy45xJXq = sq_GetAccel(QU4UQhsM4VMuH0.get_vector(0), QU4UQhsM4VMuH0.get_vector(1), UV5ZA0949J, POZ88PNzcCN48FkccMTt9f, true);
 sq_setCurrentAxisPos(R_DKUJ95vDGx1mvO, 2, Tyi4feVhy45xJXq); 
 }
 break;
 case 2:
 local MqygwwdN6e4xgCV9nDp2aA0K = R_DKUJ95vDGx1mvO.getCurrentAnimation(); 
 local UV5ZA0949J = sq_GetCurrentTime(MqygwwdN6e4xgCV9nDp2aA0K); 
 local POZ88PNzcCN48FkccMTt9f = MqygwwdN6e4xgCV9nDp2aA0K.getDelaySum(false); 
 local h1NwuFENZZGOVp0l84 = R_DKUJ95vDGx1mvO.getVar("move").get_vector(0); 
 if(h1NwuFENZZGOVp0l84 != 0)
 {
 local ihvbUbEiwNvU6 = sq_GetDistancePos(h1NwuFENZZGOVp0l84,
 R_DKUJ95vDGx1mvO.getDirection(),
 sq_GetUniformVelocity(0, 130, UV5ZA0949J, POZ88PNzcCN48FkccMTt9f)); 
 if(R_DKUJ95vDGx1mvO.isMovablePos(ihvbUbEiwNvU6, R_DKUJ95vDGx1mvO.getYPos())) 
 sq_setCurrentAxisPos(R_DKUJ95vDGx1mvO, 0, ihvbUbEiwNvU6); 
 else
 R_DKUJ95vDGx1mvO.getVar("move").set_vector(0,0); 
 }
 local q235oftEBclw = R_DKUJ95vDGx1mvO.getVar("move").get_vector(1); 
 if(q235oftEBclw!=0)
 {
 local FMapaaBawDciYTc = (q235oftEBclw - 20 * sq_SinTable(sq_GetUniformVelocity(0, 180, UV5ZA0949J, POZ88PNzcCN48FkccMTt9f))).tointeger();
 if(R_DKUJ95vDGx1mvO.isMovablePos(R_DKUJ95vDGx1mvO.getXPos(), FMapaaBawDciYTc)) 
 sq_setCurrentAxisPos(R_DKUJ95vDGx1mvO, 1, FMapaaBawDciYTc); 
 else
 R_DKUJ95vDGx1mvO.getVar("move").set_vector(1, 0); 
 }
 break;
 case 3:
 if(R_DKUJ95vDGx1mvO.getVar("move").size_vector() > 0)
 {
 local QU4UQhsM4VMuH0 = R_DKUJ95vDGx1mvO.getVar("move"); 
 local MqygwwdN6e4xgCV9nDp2aA0K = R_DKUJ95vDGx1mvO.getCurrentAnimation(); 
 local UV5ZA0949J = sq_GetCurrentTime(MqygwwdN6e4xgCV9nDp2aA0K) - MqygwwdN6e4xgCV9nDp2aA0K.getDelaySum(0, 1); 
 local POZ88PNzcCN48FkccMTt9f = MqygwwdN6e4xgCV9nDp2aA0K.getDelaySum(2, 2); 
 local ihvbUbEiwNvU6 = sq_GetDistancePos(QU4UQhsM4VMuH0.get_vector(0),
 R_DKUJ95vDGx1mvO.getDirection(), 
 sq_GetUniformVelocity(0, 10, UV5ZA0949J, POZ88PNzcCN48FkccMTt9f)); 
 if(R_DKUJ95vDGx1mvO.isMovablePos(ihvbUbEiwNvU6, R_DKUJ95vDGx1mvO.getYPos())) 
 sq_setCurrentAxisPos(R_DKUJ95vDGx1mvO, 0, ihvbUbEiwNvU6); 
 else
 R_DKUJ95vDGx1mvO.getVar("move").clear_vector(); 
 }
 break;
 }
} ;

 
function onEndCurrentAni_priest_wrathofgod(uZ6c4F_efao2TYo3F)
{
 if(!uZ6c4F_efao2TYo3F) return;
 if(!uZ6c4F_efao2TYo3F.sq_IsMyControlObject()) return;
 local dHjKVIyNr2h6osfJZi = uZ6c4F_efao2TYo3F.getSkillSubState(); 
 switch(dHjKVIyNr2h6osfJZi)
 {
 case 0:
 local HqBzlzOJAStq = searchTarget_qq506807329_priest_wrathofgod(uZ6c4F_efao2TYo3F); 
 if(HqBzlzOJAStq == null) 
 {
 searchTargetEnd_qq506807329_priest_wrathofgod(uZ6c4F_efao2TYo3F); 
 }
 
 else
 {
 uZ6c4F_efao2TYo3F.sq_IntVectClear();
 uZ6c4F_efao2TYo3F.sq_IntVectPush(dHjKVIyNr2h6osfJZi + 1); 
 uZ6c4F_efao2TYo3F.sq_IntVectPush(sq_GetGroup(HqBzlzOJAStq)); 
 uZ6c4F_efao2TYo3F.sq_IntVectPush(sq_GetUniqueId(HqBzlzOJAStq)); 
 uZ6c4F_efao2TYo3F.sq_IntVectPush(HqBzlzOJAStq.getXPos()); 
 uZ6c4F_efao2TYo3F.sq_IntVectPush(HqBzlzOJAStq.getYPos()); 
 uZ6c4F_efao2TYo3F.sq_IntVectPush(sq_getRandom(0, 100)); 
 uZ6c4F_efao2TYo3F.sq_IntVectPush(sq_getRandom(20, 100)); 
 uZ6c4F_efao2TYo3F.sq_AddSetStatePacket(245, STATE_PRIORITY_USER, true); 
 }
 break;
 case 2:
 uZ6c4F_efao2TYo3F.sq_IntVectClear();
 uZ6c4F_efao2TYo3F.sq_IntVectPush(dHjKVIyNr2h6osfJZi + 1); 
 uZ6c4F_efao2TYo3F.sq_AddSetStatePacket(245, STATE_PRIORITY_USER, true); 
 break;
 case 3:
 uZ6c4F_efao2TYo3F.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

function searchTarget_qq506807329_priest_wrathofgod(AWqBtX9J2QUYnl0m55)
{
 if(!AWqBtX9J2QUYnl0m55) return;
 local hxADCOFz06G28PYN9rL = AWqBtX9J2QUYnl0m55.getVar().get_vector(0); 
 local yQy7iEPtjWxVFzA6NH = AWqBtX9J2QUYnl0m55.getVar("scrollPos").size_vector(); 
 local dkk9AtbnVZcKs = (yQy7iEPtjWxVFzA6NH <= 0) ? AWqBtX9J2QUYnl0m55.getVar("movePos").get_vector(0) : AWqBtX9J2QUYnl0m55.getVar("scrollPos").get_vector(0); 
 local RbPyEco_m3hRL = (yQy7iEPtjWxVFzA6NH <= 0) ? AWqBtX9J2QUYnl0m55.getVar("movePos").get_vector(1) : AWqBtX9J2QUYnl0m55.getVar("scrollPos").get_vector(1); 
 local O_n_aNT6UjvZA4 = AWqBtX9J2QUYnl0m55.getVar("atkobj"); 
 local lCA8PtB0LsaNyZgS6duXV = null; 
 
 local WbgmlLoAASrer8 = AWqBtX9J2QUYnl0m55.getObjectManager(); 
 local Q92PMIT__hriUhvzwK0 = WbgmlLoAASrer8.getCollisionObjectNumber(); 
 for(local sA9F4O7EmA3Uy6Er = 0; sA9F4O7EmA3Uy6Er < Q92PMIT__hriUhvzwK0; sA9F4O7EmA3Uy6Er++)
 {
 local pNRLngqtQRsto = WbgmlLoAASrer8.getCollisionObject(sA9F4O7EmA3Uy6Er); 
 if(!pNRLngqtQRsto 
 || !AWqBtX9J2QUYnl0m55.isEnemy(pNRLngqtQRsto) 
 || !pNRLngqtQRsto.isObjectType(OBJECTTYPE_ACTIVE) 
 || !pNRLngqtQRsto.isInDamagableState(AWqBtX9J2QUYnl0m55)) continue; 
 local leAkS_yTum = sq_GetCNRDObjectToActiveObject(pNRLngqtQRsto); 
 if(!leAkS_yTum.isDead()) 
 {
 if(sq_GetDistance(dkk9AtbnVZcKs, RbPyEco_m3hRL, leAkS_yTum.getXPos(), leAkS_yTum.getYPos(), true) <= hxADCOFz06G28PYN9rL 
 && !O_n_aNT6UjvZA4.is_obj_vector(pNRLngqtQRsto)) 
 {
 lCA8PtB0LsaNyZgS6duXV = leAkS_yTum; 
 break; 
 }
 }
 }
 if(lCA8PtB0LsaNyZgS6duXV == null && O_n_aNT6UjvZA4.get_obj_vector_size() > 0) 
 for(local sA9F4O7EmA3Uy6Er = 0; sA9F4O7EmA3Uy6Er < O_n_aNT6UjvZA4.get_obj_vector_size(); sA9F4O7EmA3Uy6Er++)
 {
 local leAkS_yTum = sq_GetCNRDObjectToActiveObject(O_n_aNT6UjvZA4.get_obj_vector(sq_getRandom(0, O_n_aNT6UjvZA4.get_obj_vector_size() - 1))); 
 if(!leAkS_yTum.isDead()) 
 {
 lCA8PtB0LsaNyZgS6duXV = leAkS_yTum;
 break;
 }
 }
 return lCA8PtB0LsaNyZgS6duXV;
} ;

function searchTargetEnd_qq506807329_priest_wrathofgod(nRlfnGj8mvz)
{
 if(!nRlfnGj8mvz) return;
 local STj9Gp21S6ue2C75Ag8LT8O = nRlfnGj8mvz.getVar("scrollPos").size_vector(); 
 local WW7LCcDv_GUYrEt = (STj9Gp21S6ue2C75Ag8LT8O <= 0) ? nRlfnGj8mvz.getVar("movePos").get_vector(0) : nRlfnGj8mvz.getVar("scrollPos").get_vector(0); 
 local fMaffuaTUagq = (STj9Gp21S6ue2C75Ag8LT8O <= 0) ? nRlfnGj8mvz.getVar("movePos").get_vector(1) : nRlfnGj8mvz.getVar("scrollPos").get_vector(1); 
 local UumV3Erew7uaAey = ENUM_DIRECTION_LEFT; 
 local nL89_EUGs_uuz = nRlfnGj8mvz.getVar("atkobj"); 
 local Y6W9gb6Pq_1B = nL89_EUGs_uuz.get_obj_vector_size(); 
 if(Y6W9gb6Pq_1B > 0)
 {
 local Z42R34helu0 = nL89_EUGs_uuz.get_obj_vector(sq_getRandom(0, Y6W9gb6Pq_1B - 1)); 
 while(nL89_EUGs_uuz.get_obj_vector_size()>0 && !Z42R34helu0)
 Z42R34helu0 = nL89_EUGs_uuz.get_obj_vector(sq_getRandom(0, nL89_EUGs_uuz.get_obj_vector_size() - 1)); 
 if(WW7LCcDv_GUYrEt< Z42R34helu0.getXPos())UumV3Erew7uaAey = ENUM_DIRECTION_RIGHT; 
 WW7LCcDv_GUYrEt = Z42R34helu0.getXPos();
 fMaffuaTUagq = Z42R34helu0.getYPos();
 }
 nRlfnGj8mvz.sq_IntVectClear();
 nRlfnGj8mvz.sq_IntVectPush(2); 
 nRlfnGj8mvz.sq_IntVectPush(WW7LCcDv_GUYrEt); 
 nRlfnGj8mvz.sq_IntVectPush(fMaffuaTUagq); 
 nRlfnGj8mvz.sq_IntVectPush(UumV3Erew7uaAey); 
 nRlfnGj8mvz.sq_IntVectPush(sq_getRandom(-70, 70)); 
 nRlfnGj8mvz.sq_AddSetStatePacket(245, STATE_PRIORITY_USER, true); 
} ;

