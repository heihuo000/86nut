
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_thief_distribution(P17_Ie67RvIkHnpfoMfPp0)
{
 
 
 
 
 
 
 
 if(!P17_Ie67RvIkHnpfoMfPp0) return false; 
 local XfsYmB3qtYof_mmblqAAafN = P17_Ie67RvIkHnpfoMfPp0.sq_IsUseSkill(221); 
 if(XfsYmB3qtYof_mmblqAAafN) 
 {
 P17_Ie67RvIkHnpfoMfPp0.sq_IntVectClear();
 P17_Ie67RvIkHnpfoMfPp0.sq_IntVectPush(0); 
 P17_Ie67RvIkHnpfoMfPp0.sq_AddSetStatePacket(221, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} 

 
function checkCommandEnable_thief_distribution(zebrUf85bpwk)
{
 if(!zebrUf85bpwk) return false; 
 local Fp6rhQKtOvlY = zebrUf85bpwk.sq_GetState(); 
 if(Fp6rhQKtOvlY == STATE_STAND) 
 return true; 
 if(Fp6rhQKtOvlY == STATE_ATTACK) 
 {
 return zebrUf85bpwk.sq_IsCommandEnable(221); 
 }
 return true; 
} 

 
function onSetState_thief_distribution(zebrUf85bpwk, Fp6rhQKtOvlY, TMJNfY3L4tl, UPEZnSzjrt4aFf)
{
 if(!zebrUf85bpwk) return; 
 zebrUf85bpwk.sq_StopMove(); 
 local aNYI5nmGqumVvgiY = zebrUf85bpwk.sq_GetVectorData(TMJNfY3L4tl, 0); 
 zebrUf85bpwk.setSkillSubState(aNYI5nmGqumVvgiY); 
 switch(aNYI5nmGqumVvgiY)
 {
 case 0: 
 zebrUf85bpwk.sq_SetCurrentAnimation(125);
 break;
 case 1: 
 zebrUf85bpwk.setCurrentAnimation(null); 
 sq_MoveToNearMovablePos(zebrUf85bpwk, 
 sq_GetDistancePos(zebrUf85bpwk.getXPos(), zebrUf85bpwk.getDirection(),200), zebrUf85bpwk.getYPos(), zebrUf85bpwk.getZPos(),
 zebrUf85bpwk.getXPos(), zebrUf85bpwk.getYPos(), zebrUf85bpwk.getZPos(),
 200, -1, 5); 
 zebrUf85bpwk.getVar().clear_vector();
 zebrUf85bpwk.getVar().push_vector(10); 
 zebrUf85bpwk.setTimeEvent(0, 80, 0, false); 
 if(zebrUf85bpwk.sq_IsMyControlObject())
 {
 local OCFKys9S_yL = sq_flashScreen(zebrUf85bpwk, 80, 99990, 0, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 zebrUf85bpwk.getVar("flashobj").clear_obj_vector(); 
 zebrUf85bpwk.getVar("flashobj").push_obj_vector(OCFKys9S_yL); 
 }
 break;
 case 2: 
 sq_MoveToNearMovablePos(zebrUf85bpwk,
 sq_GetDistancePos(zebrUf85bpwk.getXPos(), zebrUf85bpwk.getDirection(), 250), zebrUf85bpwk.getYPos(), zebrUf85bpwk.getZPos(),
 zebrUf85bpwk.getXPos(), zebrUf85bpwk.getYPos(), zebrUf85bpwk.getZPos(),
 250, -1, 5); 
 
 zebrUf85bpwk.setDirection(sq_GetOppositeDirection(zebrUf85bpwk.getDirection())); 
 zebrUf85bpwk.sq_SetCurrentAnimation(126);
 break;
 case 3: 
 zebrUf85bpwk.sq_PlaySound("R_TF_HITEND"); 
 zebrUf85bpwk.sq_SetCurrentAnimation(127);
 sq_CreateDrawOnlyObject(zebrUf85bpwk, "character/thief/effect/animation/excelstrikehit4effectscreenline.ani", ENUM_DRAWLAYER_CONTACT, true); 
 break;
 }
 local Cvw_uLChnfS2VlE = zebrUf85bpwk.sq_GetDelaySum(); 
 zebrUf85bpwk.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local KB2Bn0UZWmBEcV6oIluSgBuv = zebrUf85bpwk.sq_GetDelaySum(); 
 zebrUf85bpwk.getVar("speedRate").setFloat(0, Cvw_uLChnfS2VlE.tofloat() / KB2Bn0UZWmBEcV6oIluSgBuv.tofloat()); 
 zebrUf85bpwk.getVar("speedRate").setFloat(1, KB2Bn0UZWmBEcV6oIluSgBuv.tofloat() / Cvw_uLChnfS2VlE.tofloat()); 
 switch(aNYI5nmGqumVvgiY)
 {
 case 0:
 CreateAniRate(zebrUf85bpwk, "character/thief/effect/animation/distribution/distribution_attacka_bg02.ani", ENUM_DRAWLAYER_NORMAL, zebrUf85bpwk.getXPos(), zebrUf85bpwk.getYPos(), zebrUf85bpwk.getZPos(), false, zebrUf85bpwk.getVar("speedRate").getFloat(0)*100.0); 
 CreateAniRate(zebrUf85bpwk, "character/thief/effect/animation/distribution/distribution_attacka_dust.ani", ENUM_DRAWLAYER_NORMAL, zebrUf85bpwk.getXPos(), zebrUf85bpwk.getYPos(), zebrUf85bpwk.getZPos(), false, zebrUf85bpwk.getVar("speedRate").getFloat(0) * 100.0); 
 break;
 }
} 

function onKeyFrameFlag_thief_distribution(rgBkTbq4k6UkzBoJ8J, M9h61NKxgPZW6llDxf2O0)
{
 if(!rgBkTbq4k6UkzBoJ8J) return false;
 local edenLzFww0 = rgBkTbq4k6UkzBoJ8J.getSkillSubState(); 
 switch(edenLzFww0)
 {
 case 0:
 if(M9h61NKxgPZW6llDxf2O0==1 && rgBkTbq4k6UkzBoJ8J.sq_IsMyControlObject())
 sq_myFlashScreen_qq506807329(rgBkTbq4k6UkzBoJ8J, 300, 300, 300, 153, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM, false); 
 break;
 case 3:
 switch(M9h61NKxgPZW6llDxf2O0)
 {
 case 1000:
 if(rgBkTbq4k6UkzBoJ8J.sq_IsMyControlObject())
 {
 sq_myFlashScreen_qq506807329(rgBkTbq4k6UkzBoJ8J, 0, 60, 480, 204, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM, false); 
 
 rgBkTbq4k6UkzBoJ8J.sq_StartWrite();
 rgBkTbq4k6UkzBoJ8J.sq_WriteDword(221);
 rgBkTbq4k6UkzBoJ8J.sq_WriteDword(2);
 rgBkTbq4k6UkzBoJ8J.sq_WriteDword(rgBkTbq4k6UkzBoJ8J.sq_GetBonusRateWithPassive(221, 221, 1, 1.0)); 
 rgBkTbq4k6UkzBoJ8J.sq_SendCreatePassiveObjectPacket(24378, 0, 250, 0, 0);
 }
 CreateAniRate(rgBkTbq4k6UkzBoJ8J, "character/thief/effect/animation/distribution/distribution_attackc_staydust.ani", ENUM_DRAWLAYER_NORMAL, rgBkTbq4k6UkzBoJ8J.getXPos(), rgBkTbq4k6UkzBoJ8J.getYPos(), rgBkTbq4k6UkzBoJ8J.getZPos(), false, rgBkTbq4k6UkzBoJ8J.getVar("speedRate").getFloat(0) * 100.0); 
 sq_MoveToNearMovablePos(rgBkTbq4k6UkzBoJ8J,
 sq_GetDistancePos(rgBkTbq4k6UkzBoJ8J.getXPos(), rgBkTbq4k6UkzBoJ8J.getDirection(), 380), rgBkTbq4k6UkzBoJ8J.getYPos(), rgBkTbq4k6UkzBoJ8J.getZPos(),
 rgBkTbq4k6UkzBoJ8J.getXPos(), rgBkTbq4k6UkzBoJ8J.getYPos(), rgBkTbq4k6UkzBoJ8J.getZPos(),
 380, -1, 5); 
 break;
 case 1001:
 CreateAniRate(rgBkTbq4k6UkzBoJ8J, "character/thief/effect/animation/distribution/distribution_attackc_bg.ani", ENUM_DRAWLAYER_NORMAL, rgBkTbq4k6UkzBoJ8J.getXPos(), rgBkTbq4k6UkzBoJ8J.getYPos(), rgBkTbq4k6UkzBoJ8J.getZPos(), false, rgBkTbq4k6UkzBoJ8J.getVar("speedRate").getFloat(0) * 100.0); 
 break;
 case 1002:
 rgBkTbq4k6UkzBoJ8J.setDirection(sq_GetOppositeDirection(rgBkTbq4k6UkzBoJ8J.getDirection())); 
 break;
 }
 break;
 }
 return true;
} 

 
function onEndCurrentAni_thief_distribution(nL9rSuIVN9gSikY)
{
 if(!nL9rSuIVN9gSikY) return;
 if(!nL9rSuIVN9gSikY.sq_IsMyControlObject()) return;
 local vyQMJBsxESFb = nL9rSuIVN9gSikY.getSkillSubState(); 
 if(vyQMJBsxESFb != 0)
 nL9rSuIVN9gSikY.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 else
 {
 nL9rSuIVN9gSikY.sq_IntVectClear();
 nL9rSuIVN9gSikY.sq_IntVectPush(vyQMJBsxESFb+1); 
 nL9rSuIVN9gSikY.sq_AddSetStatePacket(221, STATE_PRIORITY_USER, true); 
 }
} 


function onProcCon_thief_distribution(o3mkAjPCLBZSWTYLdUD6S)
{
 if(!o3mkAjPCLBZSWTYLdUD6S) return;
 local B3XcINIaSmti6qcspHY = o3mkAjPCLBZSWTYLdUD6S.getSkillSubState(); 
 if(B3XcINIaSmti6qcspHY == 2)
 {
 local ZbKjNHiFMnMW_v7vbtASr = sq_GetCurrentAnimation(o3mkAjPCLBZSWTYLdUD6S); 
 local ppvpbxf0fNk_FgexnL = sq_GetAnimationFrameIndex(ZbKjNHiFMnMW_v7vbtASr); 
 if(ppvpbxf0fNk_FgexnL > 0)
 {
 sq_SetKeyxEnable(o3mkAjPCLBZSWTYLdUD6S, E_SKILL_COMMAND, true); 
 if(sq_IsEnterCommand(o3mkAjPCLBZSWTYLdUD6S, E_SKILL_COMMAND)) 
 {
 o3mkAjPCLBZSWTYLdUD6S.sq_IntVectClear();
 o3mkAjPCLBZSWTYLdUD6S.sq_IntVectPush(3); 
 o3mkAjPCLBZSWTYLdUD6S.sq_AddSetStatePacket(221, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
} 

function onTimeEvent_thief_distribution(o3mkAjPCLBZSWTYLdUD6S, B3XcINIaSmti6qcspHY, ZbKjNHiFMnMW_v7vbtASr)
{
 if(!o3mkAjPCLBZSWTYLdUD6S) return false;
 if(B3XcINIaSmti6qcspHY == 0)
 {
 if(o3mkAjPCLBZSWTYLdUD6S.sq_IsMyControlObject())
 {
 if(ZbKjNHiFMnMW_v7vbtASr > o3mkAjPCLBZSWTYLdUD6S.getVar().get_vector(0)) 
 {
 if(ZbKjNHiFMnMW_v7vbtASr > o3mkAjPCLBZSWTYLdUD6S.getVar().get_vector(0)+3)
 {
 o3mkAjPCLBZSWTYLdUD6S.sq_IntVectClear();
 o3mkAjPCLBZSWTYLdUD6S.sq_IntVectPush(2); 
 o3mkAjPCLBZSWTYLdUD6S.sq_AddSetStatePacket(221, STATE_PRIORITY_USER, true); 
 return true;
 }
 return false;
 }
 
 o3mkAjPCLBZSWTYLdUD6S.sq_StartWrite();
 o3mkAjPCLBZSWTYLdUD6S.sq_WriteDword(221);
 o3mkAjPCLBZSWTYLdUD6S.sq_WriteDword(1);
 o3mkAjPCLBZSWTYLdUD6S.sq_WriteDword(o3mkAjPCLBZSWTYLdUD6S.sq_GetBonusRateWithPassive(221, 221, 0, 1.0)); 
 o3mkAjPCLBZSWTYLdUD6S.sq_WriteDword(ZbKjNHiFMnMW_v7vbtASr == 1 ? 0 : sq_getRandom(1, 5)); 
 o3mkAjPCLBZSWTYLdUD6S.sq_SendCreatePassiveObjectPacket(24378, 0, 0, 0, 0);
 }
 }
 return false;
} 

function onEndState_thief_distribution(RbDrK9ySg_Q3h81qY5, tkwqbnh_6DKOWEvSWO)
{
 if(!RbDrK9ySg_Q3h81qY5) return;
 RemoveAllFlash(RbDrK9ySg_Q3h81qY5); 
} 

