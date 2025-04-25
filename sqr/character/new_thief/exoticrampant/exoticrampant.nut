
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_thief_exoticrampant(zebrUf85bpwk)
{
 
 
 
 
 
 
 if(!zebrUf85bpwk) return false; 
 local Fp6rhQKtOvlY = zebrUf85bpwk.sq_IsUseSkill(220); 
 if(Fp6rhQKtOvlY) 
 {
 zebrUf85bpwk.sq_IntVectClear();
 zebrUf85bpwk.sq_IntVectPush(0); 
 zebrUf85bpwk.sq_IntVectPush(zebrUf85bpwk.sq_GetIntData(220, 0)); 
 zebrUf85bpwk.sq_IntVectPush(1); 
 zebrUf85bpwk.sq_AddSetStatePacket(220, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} 

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); 
function checkCommandEnable_thief_exoticrampant(zebrUf85bpwk)
{
 if(!zebrUf85bpwk) return false; 
 local Fp6rhQKtOvlY = zebrUf85bpwk.sq_GetState(); 
 if(Fp6rhQKtOvlY == STATE_STAND) 
 return true; 
 if(Fp6rhQKtOvlY == STATE_ATTACK) 
 {
 return zebrUf85bpwk.sq_IsCommandEnable(220); 
 }
 return true; 
} 

 
function onSetState_thief_exoticrampant(zebrUf85bpwk, Fp6rhQKtOvlY, TMJNfY3L4tl, UPEZnSzjrt4aFf)
{
 if(!zebrUf85bpwk) return; 
 zebrUf85bpwk.sq_StopMove(); 
 local aNYI5nmGqumVvgiY = zebrUf85bpwk.sq_GetVectorData(TMJNfY3L4tl, 0); 
 zebrUf85bpwk.setSkillSubState(aNYI5nmGqumVvgiY); 
 switch(aNYI5nmGqumVvgiY)
 {
 case 0: 
 local OCFKys9S_yL = zebrUf85bpwk.sq_GetVectorData(TMJNfY3L4tl, 1)-1; 
 zebrUf85bpwk.getVar().clear_vector(); 
 zebrUf85bpwk.getVar().push_vector(OCFKys9S_yL); 
 if(zebrUf85bpwk.sq_GetVectorData(TMJNfY3L4tl, 2) != -1) 
 zebrUf85bpwk.sq_PlaySound("TF_EXOTIC_RAMPANT"); 
 zebrUf85bpwk.sq_SetCurrentAnimation(120);
 zebrUf85bpwk.sq_SetCurrentAttackInfo(44);
 local Cvw_uLChnfS2VlE = zebrUf85bpwk.sq_GetBonusRateWithPassive(220, 220, 0, 1.0); 
 zebrUf85bpwk.sq_SetCurrentAttackBonusRate(Cvw_uLChnfS2VlE); 
 
 zebrUf85bpwk.sq_AddStateLayerAnimation(-1, zebrUf85bpwk.sq_GetCustomAni(121), 0, 0);
 break;
 case 1: 
 zebrUf85bpwk.sq_PlaySound("TF_DIVINGARROW_FIN"); 
 zebrUf85bpwk.sq_SetCurrentAnimation(122);
 zebrUf85bpwk.sq_SetCurrentAttackInfo(45);
 local Cvw_uLChnfS2VlE = zebrUf85bpwk.sq_GetBonusRateWithPassive(220, 220, 1, 1.0); 
 zebrUf85bpwk.sq_SetCurrentAttackBonusRate(Cvw_uLChnfS2VlE); 
 
 zebrUf85bpwk.sq_AddStateLayerAnimation(-1, zebrUf85bpwk.sq_GetCustomAni(123), 0, 0);
 break;
 case 2: 
 zebrUf85bpwk.sq_PlaySound("R_TF_HITEND"); 
 
 zebrUf85bpwk.sq_SetCurrentAnimation(124);
 zebrUf85bpwk.sq_SetCurrentAttackInfo(46);
 local Cvw_uLChnfS2VlE = zebrUf85bpwk.sq_GetBonusRateWithPassive(220, 220, 2, 1.0); 
 zebrUf85bpwk.sq_SetCurrentAttackBonusRate(Cvw_uLChnfS2VlE); 
 sq_CreateDrawOnlyObject(zebrUf85bpwk, "character/thief/effect/animation/excelstrikehit4effectscreenline.ani", ENUM_DRAWLAYER_CONTACT, true); 
 break;
 }
 local jhOVoXRizdxeZWZIvQixhO = zebrUf85bpwk.sq_GetDelaySum(); 
 zebrUf85bpwk.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local O9Xs_35SYdC5nnW4fX_Ogj = zebrUf85bpwk.sq_GetDelaySum(); 
 zebrUf85bpwk.getVar("speedRate").setFloat(0, jhOVoXRizdxeZWZIvQixhO.tofloat() / O9Xs_35SYdC5nnW4fX_Ogj.tofloat()); 
 zebrUf85bpwk.getVar("speedRate").setFloat(1, O9Xs_35SYdC5nnW4fX_Ogj.tofloat() / jhOVoXRizdxeZWZIvQixhO.tofloat()); 
} 

function onKeyFrameFlag_thief_exoticrampant(nL9rSuIVN9gSikY, vyQMJBsxESFb)
{
 if(!nL9rSuIVN9gSikY) return false;
 local cn8JIhCWErbrR36DMOyqC = nL9rSuIVN9gSikY.getSkillSubState(); 
 switch(cn8JIhCWErbrR36DMOyqC)
 {
 case 0:
 if(vyQMJBsxESFb == 0 || vyQMJBsxESFb==1)
 nL9rSuIVN9gSikY.resetHitObjectList(); 
 break;
 case 1:
 if(nL9rSuIVN9gSikY.sq_IsMyControlObject())
 switch(vyQMJBsxESFb)
 {
 case 1:
 sq_myFlashScreen_qq506807329(nL9rSuIVN9gSikY, 0, 10, 0, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM, false); 
 break;
 case 2:
 sq_myFlashScreen_qq506807329(nL9rSuIVN9gSikY, 0, 10, 0, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM, false); 
 break;
 }
 break;
 }
 return true;
} 

 
function onEndCurrentAni_thief_exoticrampant(nL9rSuIVN9gSikY)
{
 if(!nL9rSuIVN9gSikY) return;
 if(!nL9rSuIVN9gSikY.sq_IsMyControlObject()) return;
 local vyQMJBsxESFb = nL9rSuIVN9gSikY.getSkillSubState(); 
 if(vyQMJBsxESFb == 0)
 {
 local cn8JIhCWErbrR36DMOyqC = nL9rSuIVN9gSikY.getVar().get_vector(0); 
 if(cn8JIhCWErbrR36DMOyqC > 0)
 {
 nL9rSuIVN9gSikY.sq_IntVectClear();
 nL9rSuIVN9gSikY.sq_IntVectPush(vyQMJBsxESFb); 
 nL9rSuIVN9gSikY.sq_IntVectPush(cn8JIhCWErbrR36DMOyqC); 
 nL9rSuIVN9gSikY.sq_AddSetStatePacket(220, STATE_PRIORITY_USER, true); 
 return;
 }
 nL9rSuIVN9gSikY.sq_IntVectClear();
 nL9rSuIVN9gSikY.sq_IntVectPush(vyQMJBsxESFb + 1); 
 nL9rSuIVN9gSikY.sq_AddSetStatePacket(220, STATE_PRIORITY_USER, true); 
 }
 
 else if(vyQMJBsxESFb== 2)
 nL9rSuIVN9gSikY.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} 


function onProcCon_thief_exoticrampant(o3mkAjPCLBZSWTYLdUD6S)
{
 if(!o3mkAjPCLBZSWTYLdUD6S) return;
 local B3XcINIaSmti6qcspHY = o3mkAjPCLBZSWTYLdUD6S.getSkillSubState(); 
 if(B3XcINIaSmti6qcspHY == 1)
 {
 local ZbKjNHiFMnMW_v7vbtASr = sq_GetCurrentAnimation(o3mkAjPCLBZSWTYLdUD6S); 
 if(sq_IsEnd(ZbKjNHiFMnMW_v7vbtASr)) 
 {
 o3mkAjPCLBZSWTYLdUD6S.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 return;
 }
 local ppvpbxf0fNk_FgexnL = sq_GetAnimationFrameIndex(ZbKjNHiFMnMW_v7vbtASr); 
 local CsrQRoW3MH44CnadnXTi = sq_GetAniFrameNumber(ZbKjNHiFMnMW_v7vbtASr, 0); 
 if(ppvpbxf0fNk_FgexnL >= CsrQRoW3MH44CnadnXTi - 1-2)
 {
 sq_SetKeyxEnable(o3mkAjPCLBZSWTYLdUD6S, E_SKILL_COMMAND, true); 
 if(sq_IsEnterCommand(o3mkAjPCLBZSWTYLdUD6S, E_SKILL_COMMAND)) 
 {
 o3mkAjPCLBZSWTYLdUD6S.sq_IntVectClear();
 o3mkAjPCLBZSWTYLdUD6S.sq_IntVectPush(B3XcINIaSmti6qcspHY + 1); 
 o3mkAjPCLBZSWTYLdUD6S.sq_AddSetStatePacket(220, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
} 


