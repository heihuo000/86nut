
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_gunner_dangerclose(TRBHDfekE4Z5wOHW7z1n)
{
 if(!TRBHDfekE4Z5wOHW7z1n) return false; 
 local qZY4yCvWgk = TRBHDfekE4Z5wOHW7z1n.sq_IsUseSkill(243); 
 if(qZY4yCvWgk) 
 {
 
 TRBHDfekE4Z5wOHW7z1n.sq_IsEnterSkillLastKeyUnits(243);
 TRBHDfekE4Z5wOHW7z1n.sq_AddSetStatePacket(243, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_gunner_dangerclose(M79WZ6Po87Wh_ewXh)
{
 if(!M79WZ6Po87Wh_ewXh) return false; 
 local KmIn77O8eYUVgTzl31AAH9Q = M79WZ6Po87Wh_ewXh.sq_GetState(); 
 if(KmIn77O8eYUVgTzl31AAH9Q == STATE_STAND) 
 return true; 
 if(KmIn77O8eYUVgTzl31AAH9Q == STATE_ATTACK) 
 {
 return M79WZ6Po87Wh_ewXh.sq_IsCommandEnable(243); 
 }
 return true; 
} ;

 
function onSetState_gunner_dangerclose(M79WZ6Po87Wh_ewXh, KmIn77O8eYUVgTzl31AAH9Q, qwdMav2yvMIvHj, wZAX3ErPBBb9q9U2UMgbBDAG)
{
 if(!M79WZ6Po87Wh_ewXh) return; 
 M79WZ6Po87Wh_ewXh.sq_StopMove(); 
 M79WZ6Po87Wh_ewXh.sq_SetCurrentAnimation(154); 
 if(M79WZ6Po87Wh_ewXh.sq_IsMyControlObject())
 {
 local UkhjNBRT1OK5ubUGlh2F = sq_GetSkillLevel(M79WZ6Po87Wh_ewXh, 243); 
 M79WZ6Po87Wh_ewXh.sq_StartWrite();
 M79WZ6Po87Wh_ewXh.sq_WriteDword(243); 
 M79WZ6Po87Wh_ewXh.sq_WriteDword(1); 
 M79WZ6Po87Wh_ewXh.sq_WriteDword(M79WZ6Po87Wh_ewXh.sq_GetBonusRateWithPassive(243, 243, 0, 1.0)); 
 M79WZ6Po87Wh_ewXh.sq_WriteDword(sq_GetLevelData(M79WZ6Po87Wh_ewXh, 243, 1, UkhjNBRT1OK5ubUGlh2F)); 
 M79WZ6Po87Wh_ewXh.sq_WriteDword(sq_GetLevelData(M79WZ6Po87Wh_ewXh, 243, 2, UkhjNBRT1OK5ubUGlh2F)); 
 M79WZ6Po87Wh_ewXh.sq_SendCreatePassiveObjectPacket(24371, 0, 50, 0, 0); 
 }
} ;

 
function onProcCon_gunner_dangerclose(PomHLuSi2C5hphwRso1UEy)
{
 if(!PomHLuSi2C5hphwRso1UEy) return;
 
 if(!PomHLuSi2C5hphwRso1UEy.isDownSkillLastKey())
 onEndCurrentAni_gunner_dangerclose(PomHLuSi2C5hphwRso1UEy); 
} ;

 
function onEndCurrentAni_gunner_dangerclose(PomHLuSi2C5hphwRso1UEy)
{
 if(!PomHLuSi2C5hphwRso1UEy) return;
 if(PomHLuSi2C5hphwRso1UEy.sq_IsMyControlObject())
 PomHLuSi2C5hphwRso1UEy.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;
