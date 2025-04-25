
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_gunner_plasmaboost(uvizqa2mzRfTGGWVMNRb)
{
 if(!uvizqa2mzRfTGGWVMNRb) return false; 
 local jFnRDIW5sCyw5rSLVQxHLi = uvizqa2mzRfTGGWVMNRb.sq_IsUseSkill(234); 
 if(jFnRDIW5sCyw5rSLVQxHLi) 
 {
 
 uvizqa2mzRfTGGWVMNRb.sq_IsEnterSkillLastKeyUnits(234);
 uvizqa2mzRfTGGWVMNRb.sq_IntVectClear();
 uvizqa2mzRfTGGWVMNRb.sq_IntVectPush(0); 
 uvizqa2mzRfTGGWVMNRb.sq_AddSetStatePacket(234, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_gunner_plasmaboost(E0xyi3mh_U5NWoNtid)
{
 if(!E0xyi3mh_U5NWoNtid) return false; 
 local ExK21iU_AqLLinaK = E0xyi3mh_U5NWoNtid.sq_GetState(); 
 if(ExK21iU_AqLLinaK == STATE_STAND) 
 return true; 
 if(ExK21iU_AqLLinaK == STATE_ATTACK) 
 {
 return E0xyi3mh_U5NWoNtid.sq_IsCommandEnable(234); 
 }
 return true; 
} ;

 
function onSetState_gunner_plasmaboost(E0xyi3mh_U5NWoNtid, ExK21iU_AqLLinaK, tc5_Mk_r72vs, K0c2q4UMzME4Jy8HGhukF9D)
{
 if(!E0xyi3mh_U5NWoNtid) return; 
 local bn2LJXtqTLsLdt = E0xyi3mh_U5NWoNtid.sq_GetVectorData(tc5_Mk_r72vs, 0); 
 E0xyi3mh_U5NWoNtid.setSkillSubState(bn2LJXtqTLsLdt); 
 E0xyi3mh_U5NWoNtid.sq_StopMove(); 
 switch(bn2LJXtqTLsLdt)
 {
 case 0:
 E0xyi3mh_U5NWoNtid.sq_SetCurrentAnimation(107);
 break;
 case 1:
 E0xyi3mh_U5NWoNtid.sq_SetCurrentAnimation(108);
 local gwrRbxV9eLgaTyZ = sq_GetSkillLevel(E0xyi3mh_U5NWoNtid, 234); 
 local AttWR1H9mAk = (E0xyi3mh_U5NWoNtid.sq_GetLevelData(234, 2, gwrRbxV9eLgaTyZ) * 0.1).tointeger(); 
 E0xyi3mh_U5NWoNtid.sq_SetStaticMoveInfo(0, AttWR1H9mAk, AttWR1H9mAk, true); 
 E0xyi3mh_U5NWoNtid.sq_SetStaticMoveInfo(1, AttWR1H9mAk, AttWR1H9mAk, true); 
 E0xyi3mh_U5NWoNtid.sq_SetMoveDirection(E0xyi3mh_U5NWoNtid.getDirection(), ENUM_DIRECTION_NEUTRAL); 
 local MXulm10uQvyGvgK0 = E0xyi3mh_U5NWoNtid.sq_GetLevelData(234, 4, gwrRbxV9eLgaTyZ); 
 E0xyi3mh_U5NWoNtid.getVar().clear_vector(); 
 E0xyi3mh_U5NWoNtid.getVar().push_vector(MXulm10uQvyGvgK0); 
 E0xyi3mh_U5NWoNtid.getVar().setBool(0, false); 
 break;
 case 2:
 E0xyi3mh_U5NWoNtid.sq_SetCurrentAnimation(109);
 break;
 }
 E0xyi3mh_U5NWoNtid.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onChangeSkillEffect_gunner_plasmaboost(VfpIygEfGu4ByI, P7tHFsur9LwHQBIo9dcyIXMu, XSE4oV0z6nkSmQVYq9)
{
 if(!VfpIygEfGu4ByI) return;
 local rQ2k7NCWAluF8MuCWY8KVq = VfpIygEfGu4ByI.getSkillSubState();
 if(rQ2k7NCWAluF8MuCWY8KVq == 1)
 {
 local nhybWFmQbA9eMJp = XSE4oV0z6nkSmQVYq9.readWord(); 
 switch(nhybWFmQbA9eMJp)
 {
 case 1:
 local ugau0KSoFoYs01pXZ = VfpIygEfGu4ByI.getDirection(); 
 sq_CreateParticle("common/commoneffect/particle/dustmove.ptl", VfpIygEfGu4ByI, 0, 0, 0, true, 80, 0, 999); 
 sq_CreateParticle("common/commoneffect/particle/dustmove.ptl", VfpIygEfGu4ByI, sq_GetDistancePos(0, ugau0KSoFoYs01pXZ, 20), 10, 0, true, 80, 0, 999); 
 sq_CreateParticle("common/commoneffect/particle/dustmove.ptl", VfpIygEfGu4ByI, sq_GetDistancePos(0, ugau0KSoFoYs01pXZ, 55), 0, 0, true, 80, 0, 999); 
 sq_CreateParticle("common/commoneffect/particle/dustmove.ptl", VfpIygEfGu4ByI, sq_GetDistancePos(0, ugau0KSoFoYs01pXZ, 95), 6, 0, true, 80, 0, 999); 
 break;
 case 2:
 sq_RemoveParticle("common/commoneffect/particle/dustmove.ptl", VfpIygEfGu4ByI); 
 break;
 }
 }
} ;

function onEndState_gunner_plasmaboost(kLvzd78tapD, eeaMjTRD1GlRc)
{
 if(!kLvzd78tapD) return;
 sq_RemoveParticle("common/commoneffect/particle/dustmove.ptl", kLvzd78tapD); 
} ;

function onKeyFrameFlag_gunner_plasmaboost(kLvzd78tapD, eeaMjTRD1GlRc)
{
 if(!kLvzd78tapD) return false;
 local yP1tywPAX77 = kLvzd78tapD.getSkillSubState(); 
 switch(yP1tywPAX77)
 {
 case 0:
 if(eeaMjTRD1GlRc == 1 && kLvzd78tapD.sq_IsMyControlObject())
 {
 local H42ap_v1yV5oeYEQ5v = sq_GetSkillLevel(kLvzd78tapD, 234); 
 kLvzd78tapD.sq_StartWrite();
 kLvzd78tapD.sq_WriteDword(234); 
 kLvzd78tapD.sq_WriteDword(kLvzd78tapD.sq_GetBonusRateWithPassive(234, 234, 1, 1.0)); 
 kLvzd78tapD.sq_WriteDword(kLvzd78tapD.sq_GetLevelData(234, 0, H42ap_v1yV5oeYEQ5v)); 
 kLvzd78tapD.sq_WriteDword(kLvzd78tapD.sq_GetLevelData(234, 3, H42ap_v1yV5oeYEQ5v)); 
 kLvzd78tapD.sq_SendCreatePassiveObjectPacket(24371, 0, 106, 0, 80);
 }
 break;
 }
 return true;
} ;

function onProcCon_gunner_plasmaboost(q2VIsiqet5uufhpOa)
{
 if(!q2VIsiqet5uufhpOa) return;
 local KXBc2eGJ18X = q2VIsiqet5uufhpOa.getSkillSubState(); 
 switch(KXBc2eGJ18X)
 {
 case 1:
 local nE8aWf1oLdx = q2VIsiqet5uufhpOa.getVar(); 
 
 if(!q2VIsiqet5uufhpOa.isDownSkillLastKey() || q2VIsiqet5uufhpOa.sq_GetStateTimer() >= nE8aWf1oLdx.get_vector(0))
 {
 q2VIsiqet5uufhpOa.sq_IntVectClear();
 q2VIsiqet5uufhpOa.sq_IntVectPush(KXBc2eGJ18X + 1); 
 q2VIsiqet5uufhpOa.sq_AddSetStatePacket(234, STATE_PRIORITY_USER, true); 
 return;
 }
 local ujWzcce9hoZFbv_AZ = q2VIsiqet5uufhpOa.getVar().getBool(0); 
 if(ujWzcce9hoZFbv_AZ == false) 
 {
 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
 {
 q2VIsiqet5uufhpOa.getVar().setBool(0, true); 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_SendChangeSkillEffectPacket(q2VIsiqet5uufhpOa, 234); 
 }
 }
 else if(ujWzcce9hoZFbv_AZ == true) 
 {
 
 if(!sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)
 && !sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)
 && !sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)
 && !sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
 {
 q2VIsiqet5uufhpOa.getVar().setBool(0, false); 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(2); 
 sq_SendChangeSkillEffectPacket(q2VIsiqet5uufhpOa, 234); 
 }
 }
 break;
 }
} ;

 
function onEndCurrentAni_gunner_plasmaboost(yOnIjqP2YVzQc6UAnCH)
{
 if(!yOnIjqP2YVzQc6UAnCH) return;
 if(!yOnIjqP2YVzQc6UAnCH.sq_IsMyControlObject()) return;
 local RALtAxtOZm = yOnIjqP2YVzQc6UAnCH.getSkillSubState(); 
 if(RALtAxtOZm != 2)
 {
 yOnIjqP2YVzQc6UAnCH.sq_IntVectClear();
 yOnIjqP2YVzQc6UAnCH.sq_IntVectPush(RALtAxtOZm + 1); 
 yOnIjqP2YVzQc6UAnCH.sq_AddSetStatePacket(234, STATE_PRIORITY_USER, true); 
 }
 else
 yOnIjqP2YVzQc6UAnCH.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

 
function getScrollBasisPos_gunner_plasmaboost(JXNChsS1mO)
{
 if(!JXNChsS1mO) return false;
 if(JXNChsS1mO.sq_IsMyControlObject())
 {
 local TJoYzzs19zkzG1y87SxJvpAE = JXNChsS1mO.getSkillSubState();
 if(TJoYzzs19zkzG1y87SxJvpAE < 2)
 {
 local esnknfke_zt5jW = (TJoYzzs19zkzG1y87SxJvpAE == 1)? 200: JXNChsS1mO.sq_GetStateTimer(); 
 local blenfkqZqeRu5Zlu5Y = sq_GetDistancePos(JXNChsS1mO.getXPos(), JXNChsS1mO.getDirection(), sq_GetUniformVelocity(0, 250, esnknfke_zt5jW, 200));
 JXNChsS1mO.sq_SetCameraScrollPosition(blenfkqZqeRu5Zlu5Y, JXNChsS1mO.getYPos(), 0);
 return true;
 }
 else if(TJoYzzs19zkzG1y87SxJvpAE == 2)
 {
 local esnknfke_zt5jW = JXNChsS1mO.sq_GetStateTimer(); 
 local blenfkqZqeRu5Zlu5Y = sq_GetDistancePos(JXNChsS1mO.getXPos(), JXNChsS1mO.getDirection(), sq_GetUniformVelocity(250, 0, esnknfke_zt5jW, 200));
 JXNChsS1mO.sq_SetCameraScrollPosition(blenfkqZqeRu5Zlu5Y, JXNChsS1mO.getYPos(), 0);
 return true;
 }
 }
 return false;
} ;

