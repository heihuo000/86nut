
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C



 
function checkExecutableSkill_priest_atomicchopper(obj)
{
 if(!obj) return false; 
 if(obj.isCarryWeapon())return false; 
 local Bgh2qpjHZ0lpcevv = obj.sq_IsUseSkill(244); 
 if(Bgh2qpjHZ0lpcevv) 
 {
 obj.sq_IntVectClear();
 obj.sq_IntVectPush(0); 
 obj.sq_AddSetStatePacket(244, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_atomicchopper(YYBvAEPyiV6huWgD5)
{
 if(!YYBvAEPyiV6huWgD5) return false; 
 if(YYBvAEPyiV6huWgD5.isCarryWeapon())return false; 
 local UBGO2ZFNjVpC0vfDuhPEv = YYBvAEPyiV6huWgD5.sq_GetState(); 
 if(UBGO2ZFNjVpC0vfDuhPEv == STATE_STAND) 
 return true; 
 if(UBGO2ZFNjVpC0vfDuhPEv == STATE_ATTACK) 
 {
 return YYBvAEPyiV6huWgD5.sq_IsCommandEnable(244); 
 }
 return true; 
} ;

 
function onSetState_priest_atomicchopper(AamcJci5ODpPgoSGpQE, cBLCAERcidw, oWE4KV8j4yGkPqgMKwhv9GyA, ODrZFHdWamGIUNgk)
{
 if(!AamcJci5ODpPgoSGpQE) return; 
 AamcJci5ODpPgoSGpQE.sq_StopMove(); 
 local _q9kemtYT5NT = AamcJci5ODpPgoSGpQE.sq_GetVectorData(oWE4KV8j4yGkPqgMKwhv9GyA, 0); 
 AamcJci5ODpPgoSGpQE.setSkillSubState(_q9kemtYT5NT); 
 switch(_q9kemtYT5NT)
 {
 case 0:
 AamcJci5ODpPgoSGpQE.sq_SetCurrentAnimation(141);
 AamcJci5ODpPgoSGpQE.getVar().clear_vector(); 
 AamcJci5ODpPgoSGpQE.getVar().push_vector(AamcJci5ODpPgoSGpQE.getXPos()); 
 AamcJci5ODpPgoSGpQE.sq_PlaySound("PR_ATOMIC_CHOPPER_01");
 break;
 case 1:
 AamcJci5ODpPgoSGpQE.sq_SetCurrentAnimation(142);
 AamcJci5ODpPgoSGpQE.sq_SetCurrentAttackInfo(107);
 AamcJci5ODpPgoSGpQE.sq_SetCurrentAttackBonusRate(AamcJci5ODpPgoSGpQE.sq_GetBonusRateWithPassive(244, 244, 0, 1.0)); 
 AamcJci5ODpPgoSGpQE.getVar().setBool(0, false); 
 break;
 case 2:
 AamcJci5ODpPgoSGpQE.sq_SetCurrentAnimation(143);
 AamcJci5ODpPgoSGpQE.sq_SetCurrentAttackInfo(108);
 AamcJci5ODpPgoSGpQE.sq_SetCurrentAttackBonusRate(AamcJci5ODpPgoSGpQE.sq_GetBonusRateWithPassive(244, 244, 1, 1.0)); 
 break;
 }
 AamcJci5ODpPgoSGpQE.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onKeyFrameFlag_priest_atomicchopper(g1RBMRkPf1Iso5zpW70mz, S8wkZzM3BFvjUBC1cQw1kM)
{
 if(!g1RBMRkPf1Iso5zpW70mz) return;
 local iKqi6DJpEolacSnSN = g1RBMRkPf1Iso5zpW70mz.getSkillSubState(); 
 if(iKqi6DJpEolacSnSN == 2)
 {
 if(S8wkZzM3BFvjUBC1cQw1kM == 1)
 {
 g1RBMRkPf1Iso5zpW70mz.sq_PlaySound("PR_ATOMIC_CHOPPER_02");
 sq_SetMyShake(g1RBMRkPf1Iso5zpW70mz, 5, 240); 
 if(g1RBMRkPf1Iso5zpW70mz.sq_IsMyControlObject())
 sq_flashScreen(g1RBMRkPf1Iso5zpW70mz, 0, 0, 320, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 if(g1RBMRkPf1Iso5zpW70mz.getVar().getBool(0) == true)
 {
 
 local j5CJZhvhmRjflgOR3QPwK = sq_CreateDrawOnlyObject(g1RBMRkPf1Iso5zpW70mz, "character/priest/effect/animation/atomicchopper/atomicchopper_ground_crack.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 local yzX7tRhuNJro7X = sq_CreateDrawOnlyObject(g1RBMRkPf1Iso5zpW70mz, "character/priest/effect/animation/atomicchopper/atomicchopper_rock_rocka.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 local jMSSIerZyK3ELOM1FL = sq_GetDistancePos(g1RBMRkPf1Iso5zpW70mz.getXPos(), g1RBMRkPf1Iso5zpW70mz.getDirection(), 120); 
 sq_setCurrentAxisPos(j5CJZhvhmRjflgOR3QPwK, 0, jMSSIerZyK3ELOM1FL); 
 sq_setCurrentAxisPos(yzX7tRhuNJro7X, 0, jMSSIerZyK3ELOM1FL); 
 }
 }
 }
 return true;
} ;

function onAttack_priest_atomicchopper(oniq8QQf8xWNZIq6V, sVE0NDdxe0FKx, nT3n4fFzKYu7, A4FQqCvetC9Q)
{
 if(!oniq8QQf8xWNZIq6V)return;
 if(A4FQqCvetC9Q || !sVE0NDdxe0FKx.isObjectType(OBJECTTYPE_ACTIVE)) return;
 local JTfmQi0lctRR2mkS4 = oniq8QQf8xWNZIq6V.getSkillSubState(); 
 switch(JTfmQi0lctRR2mkS4)
 {
 case 1:
 case 2:
 if(oniq8QQf8xWNZIq6V.getVar().getBool(0) == false) 
 oniq8QQf8xWNZIq6V.getVar().setBool(0, true);
 break;
 }
} ;

function onProc_priest_atomicchopper(NhpgrR9wz7i)
{
 if(!NhpgrR9wz7i) return;
 local kWbL5vjq8NfgWZ = NhpgrR9wz7i.getSkillSubState(); 
 if(kWbL5vjq8NfgWZ == 0 && NhpgrR9wz7i.getVar().size_vector() > 0)
 {
 local _TeL2T36x5kxnX = NhpgrR9wz7i.getCurrentAnimation(); 
 local TXQUHfGR6UDTV_1VFp = sq_GetCurrentTime(_TeL2T36x5kxnX); 
 local obuyyRux2DY1Ly = _TeL2T36x5kxnX.getDelaySum(false); 
 local zzGC5Ne16wi_76zqTq = sq_GetDistancePos(NhpgrR9wz7i.getVar().get_vector(0), 
 NhpgrR9wz7i.getDirection(),
 sq_GetAccel(0, 30, TXQUHfGR6UDTV_1VFp, obuyyRux2DY1Ly, true)); 
 if(NhpgrR9wz7i.isMovablePos(zzGC5Ne16wi_76zqTq, NhpgrR9wz7i.getYPos()))
 sq_setCurrentAxisPos(NhpgrR9wz7i, 0, zzGC5Ne16wi_76zqTq); 
 else
 NhpgrR9wz7i.getVar().clear_vector(); 
 }
} ;

 
function onEndCurrentAni_priest_atomicchopper(FysWiIP_GAMQFxZEtFE)
{
 if(!FysWiIP_GAMQFxZEtFE) return;
 if(!FysWiIP_GAMQFxZEtFE.sq_IsMyControlObject()) return;
 local PXG_HplMcmyBHz8h = FysWiIP_GAMQFxZEtFE.getSkillSubState(); 
 if(PXG_HplMcmyBHz8h != 2)
 {
 FysWiIP_GAMQFxZEtFE.sq_IntVectClear();
 FysWiIP_GAMQFxZEtFE.sq_IntVectPush(PXG_HplMcmyBHz8h + 1); 
 FysWiIP_GAMQFxZEtFE.sq_AddSetStatePacket(244, STATE_PRIORITY_USER, true); 
 }
 else
 FysWiIP_GAMQFxZEtFE.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

