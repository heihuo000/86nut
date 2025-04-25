
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_thief_executionerslash(nL9rSuIVN9gSikY)
{
 if(!nL9rSuIVN9gSikY) return false; 
 local vyQMJBsxESFb = nL9rSuIVN9gSikY.getMyPassiveObject(25012, 0); 
 if(!vyQMJBsxESFb) 
 {
 if(nL9rSuIVN9gSikY.isMessage()) 
 sq_AddMessage(71100);
 nL9rSuIVN9gSikY.startCantUseSkillWarning(); 
 return false;
 }
 switch(vyQMJBsxESFb.getState())
 {
 case 3:
 case 4:
 break;
 default: 
 return false;
 }
 local cn8JIhCWErbrR36DMOyqC = nL9rSuIVN9gSikY.sq_IsUseSkill(223); 
 if(cn8JIhCWErbrR36DMOyqC) 
 {
 nL9rSuIVN9gSikY.sq_IntVectClear();
 nL9rSuIVN9gSikY.sq_IntVectPush(0); 
 nL9rSuIVN9gSikY.sq_AddSetStatePacket(223, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} 

 
function checkCommandEnable_thief_executionerslash(nL9rSuIVN9gSikY)
{
 if(!nL9rSuIVN9gSikY) return false; 
 local vyQMJBsxESFb = nL9rSuIVN9gSikY.getMyPassiveObject(25012, 0); 
 if(!vyQMJBsxESFb) return false; 
 local cn8JIhCWErbrR36DMOyqC = nL9rSuIVN9gSikY.sq_GetState(); 
 if(cn8JIhCWErbrR36DMOyqC == STATE_STAND) 
 return true; 
 if(cn8JIhCWErbrR36DMOyqC == STATE_ATTACK) 
 {
 return nL9rSuIVN9gSikY.sq_IsCommandEnable(223); 
 }
 return true; 
} 

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); 
function onSetState_thief_executionerslash(nL9rSuIVN9gSikY, vyQMJBsxESFb, cn8JIhCWErbrR36DMOyqC, VPgnvbYW0x98nEyCQ1SnH)
{
 if(!nL9rSuIVN9gSikY) return; 
 nL9rSuIVN9gSikY.sq_StopMove(); 
 local eSrXyPT2bd = nL9rSuIVN9gSikY.sq_GetVectorData(cn8JIhCWErbrR36DMOyqC, 0); 
 nL9rSuIVN9gSikY.setSkillSubState(eSrXyPT2bd); 
 switch(eSrXyPT2bd)
 {
 case 0:
 nL9rSuIVN9gSikY.sq_SetCurrentAnimation(133);
 break;
 }
 local ORhk9XgV0r34cccv38tjfVL = nL9rSuIVN9gSikY.sq_GetDelaySum(); 
 nL9rSuIVN9gSikY.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local OsRiBNNNFyXMJxk8dRHG = nL9rSuIVN9gSikY.sq_GetDelaySum(); 
 nL9rSuIVN9gSikY.getVar("speedRate").setFloat(0, ORhk9XgV0r34cccv38tjfVL.tofloat() / OsRiBNNNFyXMJxk8dRHG.tofloat()); 
 nL9rSuIVN9gSikY.getVar("speedRate").setFloat(1, OsRiBNNNFyXMJxk8dRHG.tofloat() / ORhk9XgV0r34cccv38tjfVL.tofloat()); 
 switch(eSrXyPT2bd)
 {
 case 0:
 local APgArWCoBc = nL9rSuIVN9gSikY.getMyPassiveObject(25012, 0); 
 if(APgArWCoBc)
 {
 APgArWCoBc.setCurrentPos(sq_GetDistancePos(nL9rSuIVN9gSikY.getXPos(), nL9rSuIVN9gSikY.getDirection(), -30), nL9rSuIVN9gSikY.getYPos() - 1, APgArWCoBc.getZPos()); 
 APgArWCoBc.setDirection(nL9rSuIVN9gSikY.getDirection()); 
 if(APgArWCoBc.isMyControlObject()) 
 {
 APgArWCoBc.sendStateOnlyPacket(10); 
 
 nL9rSuIVN9gSikY.sq_StartWrite();
 nL9rSuIVN9gSikY.sq_WriteDword(223);
 nL9rSuIVN9gSikY.sq_WriteDword(1);
 nL9rSuIVN9gSikY.sq_WriteDword(nL9rSuIVN9gSikY.sq_GetBonusRateWithPassive(223, 223, 0, 1.0)); 
 nL9rSuIVN9gSikY.sq_WriteFloat(nL9rSuIVN9gSikY.getVar("speedRate").getFloat(0) * 100.0); 
 sq_SendCreatePassiveObjectPacket(APgArWCoBc, 24378, 0, 0, 0, 0, APgArWCoBc.getDirection()); 
 }
 }
 break;
 }
} 


 
function onEndCurrentAni_thief_executionerslash(o3mkAjPCLBZSWTYLdUD6S)
{
 if(!o3mkAjPCLBZSWTYLdUD6S) return;
 if(!o3mkAjPCLBZSWTYLdUD6S.sq_IsMyControlObject()) return;
 local B3XcINIaSmti6qcspHY = o3mkAjPCLBZSWTYLdUD6S.getSkillSubState(); 
 if(B3XcINIaSmti6qcspHY == 0)
 o3mkAjPCLBZSWTYLdUD6S.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} 



