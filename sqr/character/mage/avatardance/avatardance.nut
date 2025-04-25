
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_mage_avatardance(lBaEXWNDGv7_tVohcGMjX)
{
 if(!lBaEXWNDGv7_tVohcGMjX) return false; 
 local uLSt3cZqKSLQEJvULdf = lBaEXWNDGv7_tVohcGMjX.sq_IsUseSkill(243); 
 if(uLSt3cZqKSLQEJvULdf) 
 {
 lBaEXWNDGv7_tVohcGMjX.sq_IntVectClear();
 lBaEXWNDGv7_tVohcGMjX.sq_IntVectPush(0); 
 lBaEXWNDGv7_tVohcGMjX.sq_AddSetStatePacket(243, STATE_PRIORITY_FORCE, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_avatardance(e8AJZD_AOoW)
{
 if(!e8AJZD_AOoW) return false; 
 local R7o8jywnJsOk3MNCS43wiqp5 = e8AJZD_AOoW.sq_GetState(); 
 if(R7o8jywnJsOk3MNCS43wiqp5 == STATE_STAND) 
 return true; 
 if(R7o8jywnJsOk3MNCS43wiqp5 == STATE_ATTACK) 
 {
 return e8AJZD_AOoW.sq_IsCommandEnable(243); 
 }
 return true; 
} ;

 
function onSetState_mage_avatardance(e8AJZD_AOoW, R7o8jywnJsOk3MNCS43wiqp5, cBTJ3ZYG9D5SfWC3, gPjpFXG4MRyjPgH)
{
 if(!e8AJZD_AOoW) return; 
 e8AJZD_AOoW.sq_StopMove(); 
 e8AJZD_AOoW.sq_ZStop(); 
 e8AJZD_AOoW.getVar().clear_vector(); 
 local S0obPFl3RXrZ9 = e8AJZD_AOoW.sq_GetVectorData(cBTJ3ZYG9D5SfWC3, 0); 
 e8AJZD_AOoW.setSkillSubState(S0obPFl3RXrZ9); 
 switch(S0obPFl3RXrZ9)
 {
 case 0:
 if(!setCurrentAnimation_mage_avatar(e8AJZD_AOoW, "AvatarDance_A.ani")) 
 e8AJZD_AOoW.sq_SetCurrentAnimation(84);
 if(e8AJZD_AOoW.sq_IsMyControlObject())
 sq_flashScreen(e8AJZD_AOoW, 180, 0, 0, 102, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK); 
 break;
 case 1:
 if(!setCurrentAnimation_mage_avatar(e8AJZD_AOoW, "AvatarDance_B.ani")) 
 e8AJZD_AOoW.sq_SetCurrentAnimation(85);
 e8AJZD_AOoW.sq_SetCurrentAttackInfo(39);
 local m88VZQY7R3KS4yh = e8AJZD_AOoW.sq_GetBonusRateWithPassive(243, 243, 0, 1.0); 
 e8AJZD_AOoW.sq_SetCurrentAttackBonusRate(m88VZQY7R3KS4yh); 
 break;
 case 2:
 if(!setCurrentAnimation_mage_avatar(e8AJZD_AOoW, "AvatarDance_C.ani")) 
 e8AJZD_AOoW.sq_SetCurrentAnimation(86);
 e8AJZD_AOoW.sq_SetCurrentAttackInfo(40);
 local m88VZQY7R3KS4yh = e8AJZD_AOoW.sq_GetBonusRateWithPassive(243, 243, 1, 1.0); 
 e8AJZD_AOoW.sq_SetCurrentAttackBonusRate(m88VZQY7R3KS4yh); 
 break;
 case 3:
 if(!setCurrentAnimation_mage_avatar(e8AJZD_AOoW, "AvatarDance_D.ani")) 
 e8AJZD_AOoW.sq_SetCurrentAnimation(87);
 e8AJZD_AOoW.sq_SetCurrentAttackInfo(41);
 local m88VZQY7R3KS4yh = e8AJZD_AOoW.sq_GetBonusRateWithPassive(243, 243, 2, 1.0); 
 e8AJZD_AOoW.sq_SetCurrentAttackBonusRate(m88VZQY7R3KS4yh); 
 break;
 case 4:
 if(!setCurrentAnimation_mage_avatar(e8AJZD_AOoW, "AvatarDance_E01.ani")) 
 e8AJZD_AOoW.sq_SetCurrentAnimation(88);
 break;
 case 5:
 if(!setCurrentAnimation_mage_avatar(e8AJZD_AOoW, "AvatarDance_E02.ani")) 
 e8AJZD_AOoW.sq_SetCurrentAnimation(89);
 e8AJZD_AOoW.sq_SetCurrentAttackInfo(42);
 local m88VZQY7R3KS4yh = e8AJZD_AOoW.sq_GetBonusRateWithPassive(243, 243, 3, 1.0); 
 e8AJZD_AOoW.sq_SetCurrentAttackBonusRate(m88VZQY7R3KS4yh); 
 sq_SetMyShake(e8AJZD_AOoW, 5, 120); 
 local H4PkhKopZyQIc8Cy9RK = e8AJZD_AOoW.getVar(); 
 H4PkhKopZyQIc8Cy9RK.push_vector(e8AJZD_AOoW.getXPos()); 
 H4PkhKopZyQIc8Cy9RK.push_vector(-1); 
 H4PkhKopZyQIc8Cy9RK.push_vector(-1); 
 H4PkhKopZyQIc8Cy9RK.push_vector(0); 
 H4PkhKopZyQIc8Cy9RK.push_vector(1); 
 H4PkhKopZyQIc8Cy9RK.push_vector(1); 
 H4PkhKopZyQIc8Cy9RK.push_vector(10); 
 H4PkhKopZyQIc8Cy9RK.push_vector(1); 
 H4PkhKopZyQIc8Cy9RK.push_vector(e8AJZD_AOoW.getZPos()); 
 H4PkhKopZyQIc8Cy9RK.push_vector(e8AJZD_AOoW.getZPos() + 140); 
 break;
 case 6:
 if(!setCurrentAnimation_mage_avatar(e8AJZD_AOoW, "AvatarDance_F01.ani")) 
 e8AJZD_AOoW.sq_SetCurrentAnimation(90);
 break;
 case 7:
 if(!setCurrentAnimation_mage_avatar(e8AJZD_AOoW, "AvatarDance_F02.ani")) 
 e8AJZD_AOoW.sq_SetCurrentAnimation(91);
 e8AJZD_AOoW.sq_SetCurrentAttackInfo(43);
 local m88VZQY7R3KS4yh = e8AJZD_AOoW.sq_GetBonusRateWithPassive(243, 243, 4, 1.0); 
 e8AJZD_AOoW.sq_SetCurrentAttackBonusRate(m88VZQY7R3KS4yh); 
 sq_SetMyShake(e8AJZD_AOoW, 8, 400); 
 if(e8AJZD_AOoW.sq_IsMyControlObject())
 sq_flashScreen(e8AJZD_AOoW, 0, 0, 180, 102, sq_RGB(255, 255, 255), GRAPHICEFFECT_LINEARDODGE, ENUM_DRAWLAYER_BOTTOM); 
 local H4PkhKopZyQIc8Cy9RK = e8AJZD_AOoW.getVar(); 
 H4PkhKopZyQIc8Cy9RK.push_vector(e8AJZD_AOoW.getXPos()); 
 H4PkhKopZyQIc8Cy9RK.push_vector(-1); 
 H4PkhKopZyQIc8Cy9RK.push_vector(-1); 
 H4PkhKopZyQIc8Cy9RK.push_vector(0); 
 H4PkhKopZyQIc8Cy9RK.push_vector(0); 
 H4PkhKopZyQIc8Cy9RK.push_vector(1); 
 H4PkhKopZyQIc8Cy9RK.push_vector(5); 
 H4PkhKopZyQIc8Cy9RK.push_vector(1); 
 H4PkhKopZyQIc8Cy9RK.push_vector(e8AJZD_AOoW.getZPos()); 
 H4PkhKopZyQIc8Cy9RK.push_vector(0); 
 break;
 }
 e8AJZD_AOoW.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onKeyFrameFlag_mage_avatardance(IJGu1Z9ffn_El, _TOFQ2XrnTvGrZzFH_R_fBx)
{
 if(!IJGu1Z9ffn_El) return false;
 local kGBJvrW8tuwoNtrqa = IJGu1Z9ffn_El.getSkillSubState(); 
 switch(kGBJvrW8tuwoNtrqa)
 {
 case 0:
 if(_TOFQ2XrnTvGrZzFH_R_fBx == 1 && IJGu1Z9ffn_El.sq_IsMyControlObject())
 sq_flashScreen(IJGu1Z9ffn_El, 0, 0, 60, 76, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 case 1:
 case 2:
 case 3:
 if(_TOFQ2XrnTvGrZzFH_R_fBx == 1)
 sq_SetMyShake(IJGu1Z9ffn_El, 6, 150); 
 if(kGBJvrW8tuwoNtrqa == 3)
 {
 IJGu1Z9ffn_El.getVar().clear_vector(); 
 local h9StUuCWA0_zn3qe = IJGu1Z9ffn_El.getVar(); 
 h9StUuCWA0_zn3qe.push_vector(IJGu1Z9ffn_El.getXPos()); 
 h9StUuCWA0_zn3qe.push_vector(0); 
 h9StUuCWA0_zn3qe.push_vector(1); 
 h9StUuCWA0_zn3qe.push_vector(2); 
 h9StUuCWA0_zn3qe.push_vector(2); 
 h9StUuCWA0_zn3qe.push_vector(1); 
 h9StUuCWA0_zn3qe.push_vector(20); 
 }
 break;
 case 4:
 if(_TOFQ2XrnTvGrZzFH_R_fBx == 1)
 {
 IJGu1Z9ffn_El.getVar().clear_vector(); 
 local h9StUuCWA0_zn3qe = IJGu1Z9ffn_El.getVar(); 
 h9StUuCWA0_zn3qe.push_vector(IJGu1Z9ffn_El.getXPos()); 
 h9StUuCWA0_zn3qe.push_vector(0); 
 h9StUuCWA0_zn3qe.push_vector(1); 
 h9StUuCWA0_zn3qe.push_vector(2); 
 h9StUuCWA0_zn3qe.push_vector(3); 
 h9StUuCWA0_zn3qe.push_vector(1); 
 h9StUuCWA0_zn3qe.push_vector(100); 
 }
 break;
 case 7:
 if(_TOFQ2XrnTvGrZzFH_R_fBx == 1)
 {
 
 sq_CreateDrawOnlyObject(IJGu1Z9ffn_El, "character/mage/effect/animation/avatardance/avatardance_f02_flooreff01.ani", ENUM_DRAWLAYER_BOTTOM, true);
 
 sq_CreateDrawOnlyObject(IJGu1Z9ffn_El, "character/mage/effect/animation/avatardance/avatardance_f02_eff05.ani", ENUM_DRAWLAYER_NORMAL, true);
 }
 break;
 }
 return true;
} ;

function onAttack_mage_avatardance(Dcju7DIrGgeVQRdU, IQqclgIlljkktMlhHPREHVW, T1mXUPoiXVSbfCu7AG, zyDQhAvDXP46IMEVkHF)
{
 if(!Dcju7DIrGgeVQRdU) return;
 local D7qbotV1XlcZ_uyoFl999 = Dcju7DIrGgeVQRdU.getSkillSubState(); 
 switch(D7qbotV1XlcZ_uyoFl999)
 {
 case 1:
 case 2:
 case 3:
 if(zyDQhAvDXP46IMEVkHF || !IQqclgIlljkktMlhHPREHVW.isObjectType(OBJECTTYPE_ACTIVE)) return;
 
 if(sq_IsGrabable(Dcju7DIrGgeVQRdU, IQqclgIlljkktMlhHPREHVW)
 && sq_IsHoldable(Dcju7DIrGgeVQRdU, IQqclgIlljkktMlhHPREHVW)
 && !sq_IsFixture(IQqclgIlljkktMlhHPREHVW))
 {
 local xnJJ3nD_JpV2Bt5yiwHcZltw = true; 
 
 local bPp8MUTEDAW = CNSquirrelAppendage.sq_GetAppendage(IQqclgIlljkktMlhHPREHVW, "character/mage/avatardance/ap_avatardance.nut");
 if(bPp8MUTEDAW) 
 {
 
 if(isSameObject(Dcju7DIrGgeVQRdU, bPp8MUTEDAW.getSource()))
 xnJJ3nD_JpV2Bt5yiwHcZltw = false; 
 }
 if(xnJJ3nD_JpV2Bt5yiwHcZltw == true)
 {
 CNSquirrelAppendage.sq_RemoveAppendage(IQqclgIlljkktMlhHPREHVW, "character/mage/avatardance/ap_avatardance.nut");
 local nqfuCEeBBa0rnqNsY4Ba = CNSquirrelAppendage.sq_AppendAppendage(IQqclgIlljkktMlhHPREHVW, Dcju7DIrGgeVQRdU, 243, true, "character/mage/avatardance/ap_avatardance.nut", true); 
 sq_HoldAndDelayDie(IQqclgIlljkktMlhHPREHVW, Dcju7DIrGgeVQRdU, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, nqfuCEeBBa0rnqNsY4Ba); 
 sq_MoveToAppendage(IQqclgIlljkktMlhHPREHVW, Dcju7DIrGgeVQRdU, Dcju7DIrGgeVQRdU, 250, 0, 0, 150, true, nqfuCEeBBa0rnqNsY4Ba); 
 }
 }
 break;
 }
} ;

 
function onProc_mage_avatardance(Kw2ueYy2ttgyOaPO9zQ)
{
 if(!Kw2ueYy2ttgyOaPO9zQ) return;
 local yOrPg6R0hU9CwR = Kw2ueYy2ttgyOaPO9zQ.getVar().size_vector();
 if(yOrPg6R0hU9CwR > 0)
 {
 local jA7bhqpbCw = Kw2ueYy2ttgyOaPO9zQ.getVar(); 
 local safcXoJWv7NpL = Kw2ueYy2ttgyOaPO9zQ.getCurrentAnimation();
 local eyTm5z34uhN = sq_GetCurrentTime(safcXoJWv7NpL) - safcXoJWv7NpL.getDelaySum(jA7bhqpbCw.get_vector(1), jA7bhqpbCw.get_vector(2)); 
 local Bw7GqpbqXo = safcXoJWv7NpL.getDelaySum(jA7bhqpbCw.get_vector(3), jA7bhqpbCw.get_vector(4)); 
 
 if(jA7bhqpbCw.get_vector(5) == 1) 
 {
 local CDL4W7BsjyjdVYMHOq8 = sq_GetDistancePos(jA7bhqpbCw.get_vector(0),
 Kw2ueYy2ttgyOaPO9zQ.getDirection(),
 sq_GetUniformVelocity(0, jA7bhqpbCw.get_vector(6), eyTm5z34uhN, Bw7GqpbqXo)); 
 if(Kw2ueYy2ttgyOaPO9zQ.isMovablePos(CDL4W7BsjyjdVYMHOq8, Kw2ueYy2ttgyOaPO9zQ.getYPos())) 
 sq_setCurrentAxisPos(Kw2ueYy2ttgyOaPO9zQ, 0, CDL4W7BsjyjdVYMHOq8); 
 else
 jA7bhqpbCw.set_vector(5, 0); 
 }
 if(jA7bhqpbCw.get_vector(7) == 1) 
 {
 local MbZdYzONYD = sq_GetUniformVelocity(jA7bhqpbCw.get_vector(8), jA7bhqpbCw.get_vector(9), eyTm5z34uhN, Bw7GqpbqXo); 
 sq_setCurrentAxisPos(Kw2ueYy2ttgyOaPO9zQ, 2, MbZdYzONYD); 
 }
 if(eyTm5z34uhN >= Bw7GqpbqXo) 
 Kw2ueYy2ttgyOaPO9zQ.getVar().clear_vector(); 
 }
} ;

 
function onEndCurrentAni_mage_avatardance(VKYuonGZY4WnJ14AdpQhOV)
{
 if(!VKYuonGZY4WnJ14AdpQhOV) return;
 if(!VKYuonGZY4WnJ14AdpQhOV.sq_IsMyControlObject()) return;
 local GaSJmd7pgB = VKYuonGZY4WnJ14AdpQhOV.getSkillSubState(); 
 switch(GaSJmd7pgB)
 {
 case 7:
 VKYuonGZY4WnJ14AdpQhOV.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 default:
 VKYuonGZY4WnJ14AdpQhOV.sq_IntVectClear();
 VKYuonGZY4WnJ14AdpQhOV.sq_IntVectPush(GaSJmd7pgB + 1); 
 VKYuonGZY4WnJ14AdpQhOV.sq_AddSetStatePacket(243, STATE_PRIORITY_USER, true); 
 break;
 }
} ;

