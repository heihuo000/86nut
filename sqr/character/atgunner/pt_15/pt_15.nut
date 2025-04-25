
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function checkExecutableSkill_atgunner_pt_15(tqjCp58Aa1NUOXY5)
{
 if(!tqjCp58Aa1NUOXY5) return false; 
 local b3zXewROsM = tqjCp58Aa1NUOXY5.sq_IsUseSkill(234); 
 if(b3zXewROsM) 
 {
 tqjCp58Aa1NUOXY5.sq_IntVectClear();
 tqjCp58Aa1NUOXY5.sq_IntVectPush(0); 
 tqjCp58Aa1NUOXY5.sq_AddSetStatePacket(234, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atgunner_pt_15(tqjCp58Aa1NUOXY5)
{
 if(!tqjCp58Aa1NUOXY5) return false; 
 local b3zXewROsM = tqjCp58Aa1NUOXY5.sq_GetState(); 
 if(b3zXewROsM == STATE_STAND) 
 return true; 
 if(b3zXewROsM == STATE_ATTACK) 
 {
 return tqjCp58Aa1NUOXY5.sq_IsCommandEnable(234); 
 }
 return true; 
} ;

 
function onSetState_atgunner_pt_15(mYRIjHYWK4U_v, wgaKLlmPk5syoHnH, Wvts42jGPTzMp, QxArj9fl0IDtbs)
{
 if(!mYRIjHYWK4U_v) return; 
 local WJ31Lqzo3NsX = mYRIjHYWK4U_v.sq_GetVectorData(Wvts42jGPTzMp, 0); 
 mYRIjHYWK4U_v.setSkillSubState(WJ31Lqzo3NsX); 
 switch(WJ31Lqzo3NsX)
 {
 case 0:
 mYRIjHYWK4U_v.getVar().clear_vector(); 
 mYRIjHYWK4U_v.sq_StopMove(); 
 mYRIjHYWK4U_v.sq_SetCurrentAnimation(110);
 break;
 case 1:
 mYRIjHYWK4U_v.sq_SetCurrentAnimation(107);
 break;
 case 2:
 mYRIjHYWK4U_v.sq_SetCurrentAnimation(108);
 break;
 case 3:
 mYRIjHYWK4U_v.sq_SetCurrentAnimation(109);
 mYRIjHYWK4U_v.getVar().clear_vector(); 
 mYRIjHYWK4U_v.getVar().push_vector(mYRIjHYWK4U_v.getXPos()); 
 mYRIjHYWK4U_v.getVar().push_vector(mYRIjHYWK4U_v.getZPos()); 
 mYRIjHYWK4U_v.getVar().push_vector(155); 
 mYRIjHYWK4U_v.getVar().push_vector(200); 
 break;
 }
 mYRIjHYWK4U_v.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onKeyFrameFlag_atgunner_pt_15(pJ2ChMUmSLq_KW17yi3, Qk1YT_etjAjBVH2aB9)
{
 if(!pJ2ChMUmSLq_KW17yi3) return false;
 if(!pJ2ChMUmSLq_KW17yi3.sq_IsMyControlObject())return true;
 local q5RFSfBAoaid0Oe7SHfihFk = pJ2ChMUmSLq_KW17yi3.getSkillSubState(); 
 switch(q5RFSfBAoaid0Oe7SHfihFk)
 {
 case 0:
 if(Qk1YT_etjAjBVH2aB9 == 1)
 {
 local qkr31mIq5g3x = pJ2ChMUmSLq_KW17yi3.getDirection(); 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) 
 {
 
 pJ2ChMUmSLq_KW17yi3.sq_IntVectClear();
 pJ2ChMUmSLq_KW17yi3.sq_IntVectPush(3); 
 pJ2ChMUmSLq_KW17yi3.sq_AddSetStatePacket(234, STATE_PRIORITY_USER, true); 
 }
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)
 || (qkr31mIq5g3x == ENUM_DIRECTION_LEFT && sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
 || (qkr31mIq5g3x == ENUM_DIRECTION_RIGHT && sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)))
 {
 pJ2ChMUmSLq_KW17yi3.getVar().push_vector(1);
 }
 else
 {
 pJ2ChMUmSLq_KW17yi3.getVar().push_vector(2);
 }
 }
 break;
 case 1:
 if(Qk1YT_etjAjBVH2aB9 == 1)
 {
 pJ2ChMUmSLq_KW17yi3.sq_StartWrite();
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(234); 
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(1); 
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(pJ2ChMUmSLq_KW17yi3.sq_GetBonusRateWithPassive(234, 234, 1, 1.0)); 
 pJ2ChMUmSLq_KW17yi3.sq_SendCreatePassiveObjectPacket(24376, 0, 135, 1, 90);
 sq_SetMyShake(pJ2ChMUmSLq_KW17yi3, 6, 240); 
 sq_flashScreen(pJ2ChMUmSLq_KW17yi3, 0, 40, 0, 102, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 case 2:
 if(Qk1YT_etjAjBVH2aB9 == 1)
 sq_SetMyShake(pJ2ChMUmSLq_KW17yi3, 6, 240); 
 else if(Qk1YT_etjAjBVH2aB9 == 2)
 {
 pJ2ChMUmSLq_KW17yi3.sq_StartWrite();
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(234); 
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(2); 
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(pJ2ChMUmSLq_KW17yi3.sq_GetBonusRateWithPassive(234, 234, 0, 1.0)); 
 pJ2ChMUmSLq_KW17yi3.sq_SendCreatePassiveObjectPacket(24376, 0, 50, 0, 91);
 }
 break;
 case 3:
 if(Qk1YT_etjAjBVH2aB9 == 1)
 {
 pJ2ChMUmSLq_KW17yi3.sq_StartWrite();
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(234); 
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(3); 
 pJ2ChMUmSLq_KW17yi3.sq_WriteDword(pJ2ChMUmSLq_KW17yi3.sq_GetBonusRateWithPassive(234, 234, 2, 1.0)); 
 sq_SendCreatePassiveObjectPacketPos(pJ2ChMUmSLq_KW17yi3, 24376, 0, sq_GetDistancePos(pJ2ChMUmSLq_KW17yi3.getXPos(), pJ2ChMUmSLq_KW17yi3.getDirection(), 86), pJ2ChMUmSLq_KW17yi3.getYPos(), 0);
 }
 break;
 }
 return true;
} ;

function onProc_atgunner_pt_15(gcYCcZthwOfoMog9z74O6Y)
{
 if(!gcYCcZthwOfoMog9z74O6Y) return;
 local SQThGgwQjOTf04zcGOfo6Y = gcYCcZthwOfoMog9z74O6Y.getSkillSubState(); 
 switch(SQThGgwQjOTf04zcGOfo6Y)
 {
 case 3:
 local sajZsb1hPEYNaKzk0 = gcYCcZthwOfoMog9z74O6Y.getVar(); 
 local uNWaVf4_Ru_AfS15k5fvK3gi = gcYCcZthwOfoMog9z74O6Y.getCurrentAnimation(); 
 local Gs78Ysido_PXXh3HsCDjMtX = sq_GetCurrentTime(uNWaVf4_Ru_AfS15k5fvK3gi); 
 local djf4c93Qph92BLMVPf5DpebY = uNWaVf4_Ru_AfS15k5fvK3gi.getDelaySum(false); 
 local Sv9ELBbkwXtNeK = sajZsb1hPEYNaKzk0.get_vector(2); 
 local V8Qxy1LxVKIW = sq_GetDistancePos(sajZsb1hPEYNaKzk0.get_vector(0),
 gcYCcZthwOfoMog9z74O6Y.getDirection(),
 sq_GetAccel(0, Sv9ELBbkwXtNeK, Gs78Ysido_PXXh3HsCDjMtX, djf4c93Qph92BLMVPf5DpebY, true)); 
 if(gcYCcZthwOfoMog9z74O6Y.isMovablePos(V8Qxy1LxVKIW, gcYCcZthwOfoMog9z74O6Y.getYPos())) 
 sq_setCurrentAxisPos(gcYCcZthwOfoMog9z74O6Y, 0, V8Qxy1LxVKIW); 
 else
 {
 local iR2ZOAGRCNkl = sq_Abs(V8Qxy1LxVKIW - gcYCcZthwOfoMog9z74O6Y.getXPos());
 if(iR2ZOAGRCNkl != 0)
 sajZsb1hPEYNaKzk0.set_vector(2, (Sv9ELBbkwXtNeK > 0) ? Sv9ELBbkwXtNeK - iR2ZOAGRCNkl : Sv9ELBbkwXtNeK + iR2ZOAGRCNkl);
 }
 
 local YSNANvvVKqE3jpJ2rDq = sajZsb1hPEYNaKzk0.get_vector(1) + sajZsb1hPEYNaKzk0.get_vector(3) * sq_SinTable(sq_GetAccel(0, 90, Gs78Ysido_PXXh3HsCDjMtX, djf4c93Qph92BLMVPf5DpebY, true));
 sq_setCurrentAxisPos(gcYCcZthwOfoMog9z74O6Y, 2, YSNANvvVKqE3jpJ2rDq.tointeger()); 
 if(Gs78Ysido_PXXh3HsCDjMtX >= djf4c93Qph92BLMVPf5DpebY) 
 if(gcYCcZthwOfoMog9z74O6Y.sq_IsMyControlObject()) 
 {
 gcYCcZthwOfoMog9z74O6Y.sq_IntVectClear();
 gcYCcZthwOfoMog9z74O6Y.sq_IntVectPush(1);
 gcYCcZthwOfoMog9z74O6Y.sq_IntVectPush(0);
 gcYCcZthwOfoMog9z74O6Y.sq_IntVectPush(1);
 gcYCcZthwOfoMog9z74O6Y.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
 }
 break;
 }
} ;

 
function onEndCurrentAni_atgunner_pt_15(PZxdlrod_idoEOfWpM)
{
 if(!PZxdlrod_idoEOfWpM) return;
 if(!PZxdlrod_idoEOfWpM.sq_IsMyControlObject()) return;
 local NB41JqqyTq_0icHS = PZxdlrod_idoEOfWpM.getSkillSubState(); 
 switch(NB41JqqyTq_0icHS)
 {
 case 0:
 switch(PZxdlrod_idoEOfWpM.getVar().get_vector(0))
 {
 case 1: 
 PZxdlrod_idoEOfWpM.sq_IntVectClear();
 PZxdlrod_idoEOfWpM.sq_IntVectPush(2); 
 PZxdlrod_idoEOfWpM.sq_AddSetStatePacket(234, STATE_PRIORITY_USER, true); 
 break;
 case 2: 
 PZxdlrod_idoEOfWpM.sq_IntVectClear();
 PZxdlrod_idoEOfWpM.sq_IntVectPush(1); 
 PZxdlrod_idoEOfWpM.sq_AddSetStatePacket(234, STATE_PRIORITY_USER, true); 
 break;
 }
 break;
 case 1:
 case 2:
 PZxdlrod_idoEOfWpM.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;


