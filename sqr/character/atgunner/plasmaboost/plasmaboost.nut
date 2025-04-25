
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_atgunner_plasmaboost(UBOu01JlXpIktcyFgD)
{
 if(!UBOu01JlXpIktcyFgD) return false; 
 local UI76D4zjqBGBpJVt = UBOu01JlXpIktcyFgD.sq_IsUseSkill(232); 
 if(UI76D4zjqBGBpJVt) 
 {
 UBOu01JlXpIktcyFgD.sq_IsEnterSkillLastKeyUnits(232); 
 UBOu01JlXpIktcyFgD.sq_IntVectClear();
 UBOu01JlXpIktcyFgD.sq_IntVectPush(0); 
 UBOu01JlXpIktcyFgD.sq_AddSetStatePacket(232, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atgunner_plasmaboost(UBOu01JlXpIktcyFgD)
{
 if(!UBOu01JlXpIktcyFgD) return false; 
 local UI76D4zjqBGBpJVt = UBOu01JlXpIktcyFgD.sq_GetState(); 
 if(UI76D4zjqBGBpJVt == STATE_STAND) 
 return true; 
 if(UI76D4zjqBGBpJVt == STATE_ATTACK) 
 {
 return UBOu01JlXpIktcyFgD.sq_IsCommandEnable(232); 
 }
 return true; 
} ;

 
function onSetState_atgunner_plasmaboost(UBOu01JlXpIktcyFgD, UI76D4zjqBGBpJVt, UgRqIxHPEZnz, ALzdmZcKBwbEUv6dd)
{
 if(!UBOu01JlXpIktcyFgD) return; 
 local hi4q_qoCrpfqeCNYyC = UBOu01JlXpIktcyFgD.sq_GetVectorData(UgRqIxHPEZnz, 0); 
 UBOu01JlXpIktcyFgD.setSkillSubState(hi4q_qoCrpfqeCNYyC); 
 UBOu01JlXpIktcyFgD.sq_StopMove(); 
 switch(hi4q_qoCrpfqeCNYyC)
 {
 case 0:
 UBOu01JlXpIktcyFgD.sq_SetCurrentAnimation(103);
 break;
 case 1:
 UBOu01JlXpIktcyFgD.sq_SetCurrentAnimation(104);
 local Ni3AaYr5m1MPftiue = sq_GetSkillLevel(UBOu01JlXpIktcyFgD, 232); 
 local WZp3TUwzF_RY0iqL = (UBOu01JlXpIktcyFgD.sq_GetLevelData(232, 2, Ni3AaYr5m1MPftiue) * 0.1).tointeger(); 
 UBOu01JlXpIktcyFgD.sq_SetStaticMoveInfo(0, WZp3TUwzF_RY0iqL, WZp3TUwzF_RY0iqL, true); 
 UBOu01JlXpIktcyFgD.sq_SetStaticMoveInfo(1, WZp3TUwzF_RY0iqL, WZp3TUwzF_RY0iqL, true); 
 UBOu01JlXpIktcyFgD.sq_SetMoveDirection(UBOu01JlXpIktcyFgD.getDirection(), ENUM_DIRECTION_NEUTRAL); 
 local kybSvF4AXyW0VVYA = UBOu01JlXpIktcyFgD.sq_GetLevelData(232, 4, Ni3AaYr5m1MPftiue); 
 UBOu01JlXpIktcyFgD.getVar().clear_vector(); 
 UBOu01JlXpIktcyFgD.getVar().push_vector(kybSvF4AXyW0VVYA); 
 UBOu01JlXpIktcyFgD.getVar().setBool(0, false); 
 break;
 case 2:
 UBOu01JlXpIktcyFgD.sq_SetCurrentAnimation(105);
 break;
 }
 UBOu01JlXpIktcyFgD.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onChangeSkillEffect_atgunner_plasmaboost(SEau5Cgoa9ZAdrEHERzPo, BG07RPXy7FESQKP, dNpra4Cj2cWoK0UDzdUv)
{
 if(!SEau5Cgoa9ZAdrEHERzPo) return;
 local MoYg5168WRS4Z = SEau5Cgoa9ZAdrEHERzPo.getSkillSubState();
 if(MoYg5168WRS4Z == 1)
 {
 local Qj42LXW488Eh76J = dNpra4Cj2cWoK0UDzdUv.readDword(); 
 switch(Qj42LXW488Eh76J)
 {
 case 1:
 local dqrluUTJt2GokL = SEau5Cgoa9ZAdrEHERzPo.getXPos();
 local sBEqsgpHRYX9bDIC_ophWK = SEau5Cgoa9ZAdrEHERzPo.getDirection(); 
 sq_CreateParticle("common/commoneffect/particle/dustmove.ptl", SEau5Cgoa9ZAdrEHERzPo, 0, 0, 0, true, 80, 0, 999); 
 sq_CreateParticle("common/commoneffect/particle/dustmove.ptl", SEau5Cgoa9ZAdrEHERzPo, sq_GetDistancePos(0, sBEqsgpHRYX9bDIC_ophWK, 20), 10, 0, true, 80, 0, 999); 
 sq_CreateParticle("common/commoneffect/particle/dustmove.ptl", SEau5Cgoa9ZAdrEHERzPo, sq_GetDistancePos(0, sBEqsgpHRYX9bDIC_ophWK, 55), 0, 0, true, 80, 0, 999); 
 sq_CreateParticle("common/commoneffect/particle/dustmove.ptl", SEau5Cgoa9ZAdrEHERzPo, sq_GetDistancePos(0, sBEqsgpHRYX9bDIC_ophWK, 95), 6, 0, true, 80, 0, 999); 
 break;
 case 2:
 sq_RemoveParticle("common/commoneffect/particle/dustmove.ptl", SEau5Cgoa9ZAdrEHERzPo); 
 break;
 }
 }
} ;

function onEndState_atgunner_plasmaboost(cGAx45jutVf, AhWbb3YKt4vfpZn9F9ar0)
{
 if(!cGAx45jutVf) return;
 sq_RemoveParticle("common/commoneffect/particle/dustmove.ptl", cGAx45jutVf); 
} ;

function onKeyFrameFlag_atgunner_plasmaboost(cGAx45jutVf, AhWbb3YKt4vfpZn9F9ar0)
{
 if(!cGAx45jutVf) return false;
 local g6TkpySf8c_Lo3O = cGAx45jutVf.getSkillSubState(); 
 switch(g6TkpySf8c_Lo3O)
 {
 case 0:
 if(AhWbb3YKt4vfpZn9F9ar0 == 1 && cGAx45jutVf.sq_IsMyControlObject())
 {
 cGAx45jutVf.sq_StartWrite();
 cGAx45jutVf.sq_WriteDword(232); 
 cGAx45jutVf.sq_WriteDword(cGAx45jutVf.sq_GetBonusRateWithPassive(232, 232, 1, 1.0)); 
 cGAx45jutVf.sq_WriteDword(cGAx45jutVf.sq_GetLevelData(232, 0, sq_GetSkillLevel(cGAx45jutVf, 232))); 
 cGAx45jutVf.sq_WriteDword(cGAx45jutVf.sq_GetLevelData(232, 3, sq_GetSkillLevel(cGAx45jutVf, 232))); 
 cGAx45jutVf.sq_SendCreatePassiveObjectPacket(24376, 0, 92, 0, 68);
 }
 break;
 }
 return true;
} ;

function onProcCon_atgunner_plasmaboost(KiBywGB7SM53xCNKHzzKXWSJ)
{
 if(!KiBywGB7SM53xCNKHzzKXWSJ) return;
 local GJoLIiygQVbL0JSVNJjeNbbI = KiBywGB7SM53xCNKHzzKXWSJ.getSkillSubState(); 
 switch(GJoLIiygQVbL0JSVNJjeNbbI)
 {
 case 1:
 local Kb_M3rv6pjMYy4OJUXMkMHR = KiBywGB7SM53xCNKHzzKXWSJ.getVar(); 
 
 if(!KiBywGB7SM53xCNKHzzKXWSJ.isDownSkillLastKey() || KiBywGB7SM53xCNKHzzKXWSJ.sq_GetStateTimer() >= Kb_M3rv6pjMYy4OJUXMkMHR.get_vector(0))
 {
 KiBywGB7SM53xCNKHzzKXWSJ.sq_IntVectClear();
 KiBywGB7SM53xCNKHzzKXWSJ.sq_IntVectPush(GJoLIiygQVbL0JSVNJjeNbbI + 1); 
 KiBywGB7SM53xCNKHzzKXWSJ.sq_AddSetStatePacket(232, STATE_PRIORITY_USER, true); 
 return;
 }
 local BBDsTMypWMZSujbO0SOj = KiBywGB7SM53xCNKHzzKXWSJ.getVar().getBool(0); 
 if(BBDsTMypWMZSujbO0SOj == false) 
 {
 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
 {
 KiBywGB7SM53xCNKHzzKXWSJ.getVar().setBool(0, true); 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(1); 
 sq_SendChangeSkillEffectPacket(KiBywGB7SM53xCNKHzzKXWSJ, 232); 
 }
 }
 else if(BBDsTMypWMZSujbO0SOj == true) 
 {
 
 if(!sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)
 && !sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)
 && !sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)
 && !sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
 {
 KiBywGB7SM53xCNKHzzKXWSJ.getVar().setBool(0, false); 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(2); 
 sq_SendChangeSkillEffectPacket(KiBywGB7SM53xCNKHzzKXWSJ, 232); 
 }
 }
 break;
 }
} ;

 
function onEndCurrentAni_atgunner_plasmaboost(aTDO99_5mm438pBoYsK6)
{
 if(!aTDO99_5mm438pBoYsK6) return;
 if(!aTDO99_5mm438pBoYsK6.sq_IsMyControlObject()) return;
 local qBMbiY8TcO7eSp2Uc0aHu = aTDO99_5mm438pBoYsK6.getSkillSubState(); 
 if(qBMbiY8TcO7eSp2Uc0aHu != 2)
 {
 aTDO99_5mm438pBoYsK6.sq_IntVectClear();
 aTDO99_5mm438pBoYsK6.sq_IntVectPush(qBMbiY8TcO7eSp2Uc0aHu + 1); 
 aTDO99_5mm438pBoYsK6.sq_AddSetStatePacket(232, STATE_PRIORITY_USER, true); 
 }
 else
 aTDO99_5mm438pBoYsK6.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


