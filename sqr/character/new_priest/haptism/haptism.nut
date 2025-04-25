



 
function checkExecutableSkill_priest_haptism(vH6IFmFqMIRyx)
{
 if(!vH6IFmFqMIRyx) return false; 
 local WpYJtqr8GQuewzGcbWywYg = vH6IFmFqMIRyx.sq_IsUseSkill(246); 
 if(WpYJtqr8GQuewzGcbWywYg) 
 {
 vH6IFmFqMIRyx.sq_IntVectClear();
 vH6IFmFqMIRyx.sq_IntVectPush(0); 
 vH6IFmFqMIRyx.sq_AddSetStatePacket(246, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_haptism(sU8CLRdMpaanBAL4G6jjS5)
{
 if(!sU8CLRdMpaanBAL4G6jjS5) return false; 
 local pcEolYLCcjWOp = sU8CLRdMpaanBAL4G6jjS5.sq_GetState(); 
 if(pcEolYLCcjWOp == STATE_STAND) 
 return true; 
 if(pcEolYLCcjWOp == STATE_ATTACK) 
 {
 return sU8CLRdMpaanBAL4G6jjS5.sq_IsCommandEnable(246); 
 }
 return true; 
} ;

 
function onSetState_priest_haptism(VKn8JGgNe6Hn, BKFPbRnUFHSFd, XnD8VJwgQVQG3, s5yqQV8JVsvsxc72GdzQvjk)
{
 if(!VKn8JGgNe6Hn) return; 
 VKn8JGgNe6Hn.sq_StopMove(); 
 local CP4niK9AmYzOmQrl42RjRWsU = VKn8JGgNe6Hn.sq_GetVectorData(XnD8VJwgQVQG3, 0); 
 VKn8JGgNe6Hn.setSkillSubState(CP4niK9AmYzOmQrl42RjRWsU); 
 switch(CP4niK9AmYzOmQrl42RjRWsU)
 {
 case 0:
 if(CNSquirrelAppendage.sq_IsAppendAppendage(VKn8JGgNe6Hn, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 VKn8JGgNe6Hn.sq_SetCurrentAnimation(225);
 else
 {
 VKn8JGgNe6Hn.sq_SetCurrentAnimation(217);
 if(CNSquirrelAppendage.sq_IsAppendAppendage(VKn8JGgNe6Hn, "appendage/character/ap_holymace.nut"))
 ChangQing_751675335_BodyHolyMace(VKn8JGgNe6Hn, "Haptism_Cast1_Body")
 }
 if(VKn8JGgNe6Hn.sq_IsMyControlObject())
 {
 VKn8JGgNe6Hn.sq_StartWrite();
 VKn8JGgNe6Hn.sq_WriteDword(246); 
 VKn8JGgNe6Hn.sq_WriteDword(1); 
 VKn8JGgNe6Hn.sq_WriteDword(VKn8JGgNe6Hn.sq_GetBonusRateWithPassive(246, 246, 0, 1.0)); 
 VKn8JGgNe6Hn.sq_SendCreatePassiveObjectPacket(24374, 0, 0, 0, 0);
 VKn8JGgNe6Hn.sq_StartWrite();
 VKn8JGgNe6Hn.sq_WriteDword(246); 
 VKn8JGgNe6Hn.sq_WriteDword(2); 
 VKn8JGgNe6Hn.sq_WriteDword(VKn8JGgNe6Hn.sq_GetBonusRateWithPassive(246, 246, 1, 1.0)); 
 VKn8JGgNe6Hn.sq_SendCreatePassiveObjectPacket(24374, 0, 0, 0, 0);
 }
 break;
 case 1:
 if(CNSquirrelAppendage.sq_IsAppendAppendage(VKn8JGgNe6Hn, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 VKn8JGgNe6Hn.sq_SetCurrentAnimation(226);
  else
 {
 VKn8JGgNe6Hn.sq_SetCurrentAnimation(218);
 if(CNSquirrelAppendage.sq_IsAppendAppendage(VKn8JGgNe6Hn, "appendage/character/ap_holymace.nut"))
 ChangQing_751675335_BodyHolyMace(VKn8JGgNe6Hn, "Haptism_Cast2_Body")
 }
 if(VKn8JGgNe6Hn.sq_IsMyControlObject())
 {
 VKn8JGgNe6Hn.sq_StartWrite();
 VKn8JGgNe6Hn.sq_WriteDword(246); 
 VKn8JGgNe6Hn.sq_WriteDword(3); 
 VKn8JGgNe6Hn.sq_WriteDword(VKn8JGgNe6Hn.sq_GetBonusRateWithPassive(246, 246, 2, 1.0)); 
 VKn8JGgNe6Hn.sq_SendCreatePassiveObjectPacket(24374, 0, 0, 0, 0);
 }
 break;
 }
 VKn8JGgNe6Hn.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onEndCurrentAni_priest_haptism(TttQ4G6joehxokVst)
{
 if(!TttQ4G6joehxokVst) return;
 if(!TttQ4G6joehxokVst.sq_IsMyControlObject()) return;
 local w9sCx_wJYhrC3eNJH77MD1E = TttQ4G6joehxokVst.getSkillSubState(); 
 switch(w9sCx_wJYhrC3eNJH77MD1E)
 {
 case 0:
 TttQ4G6joehxokVst.sq_IntVectClear();
 TttQ4G6joehxokVst.sq_IntVectPush(1); 
 TttQ4G6joehxokVst.sq_AddSetStatePacket(246, STATE_PRIORITY_USER, true); 
 break;
 case 1:
 TttQ4G6joehxokVst.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;


ADDEXTRANUT <- 0 