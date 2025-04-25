
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

 
function checkExecutableSkill_gunner_dimensionrunner(M79WZ6Po87Wh_ewXh)
{
 if(!M79WZ6Po87Wh_ewXh) return false; 
 local KmIn77O8eYUVgTzl31AAH9Q = M79WZ6Po87Wh_ewXh.sq_IsUseSkill(246); 
 if(KmIn77O8eYUVgTzl31AAH9Q) 
 {
 
 M79WZ6Po87Wh_ewXh.sq_IsEnterSkillLastKeyUnits(246);
 M79WZ6Po87Wh_ewXh.sq_AddSetStatePacket(246, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_gunner_dimensionrunner(M79WZ6Po87Wh_ewXh)
{
 if(!M79WZ6Po87Wh_ewXh) return false; 
 local KmIn77O8eYUVgTzl31AAH9Q = M79WZ6Po87Wh_ewXh.sq_GetState(); 
 if(KmIn77O8eYUVgTzl31AAH9Q == STATE_STAND) 
 return true; 
 if(KmIn77O8eYUVgTzl31AAH9Q == STATE_ATTACK) 
 {
 return M79WZ6Po87Wh_ewXh.sq_IsCommandEnable(246); 
 }
 return true; 
} ;

 
function onSetState_gunner_dimensionrunner(PomHLuSi2C5hphwRso1UEy, A0X75mJE5L2SiTzCk1lH, bjQ4q6PWBPyjWZHN9YI, j0biTXMLgWYqj)
{
 if(!PomHLuSi2C5hphwRso1UEy) return; 
 PomHLuSi2C5hphwRso1UEy.sq_StopMove(); 
 PomHLuSi2C5hphwRso1UEy.sq_SetCurrentAnimation(156); 
 PomHLuSi2C5hphwRso1UEy.sq_PlaySound("GN_DIMENSION_RUNNER"); 
 if(PomHLuSi2C5hphwRso1UEy.sq_IsMyControlObject())
 {
 local fQp2Vz6088D = sq_GetSkillLevel(PomHLuSi2C5hphwRso1UEy, 246); 
 PomHLuSi2C5hphwRso1UEy.sq_StartWrite();
 PomHLuSi2C5hphwRso1UEy.sq_WriteDword(246); 
 PomHLuSi2C5hphwRso1UEy.sq_WriteDword(1); 
 PomHLuSi2C5hphwRso1UEy.sq_WriteDword(PomHLuSi2C5hphwRso1UEy.sq_GetBonusRateWithPassive(246, 246, 2, 1.0)); 
 PomHLuSi2C5hphwRso1UEy.sq_WriteDword(PomHLuSi2C5hphwRso1UEy.sq_GetBonusRateWithPassive(246, 246, 1, 1.0)); 
 PomHLuSi2C5hphwRso1UEy.sq_WriteDword(sq_GetLevelData(PomHLuSi2C5hphwRso1UEy, 246, 0, fQp2Vz6088D)); 
 PomHLuSi2C5hphwRso1UEy.sq_WriteDword(sq_GetLevelData(PomHLuSi2C5hphwRso1UEy, 246, 3, fQp2Vz6088D)); 
 PomHLuSi2C5hphwRso1UEy.sq_WriteDword(sq_GetLevelData(PomHLuSi2C5hphwRso1UEy, 246, 4, fQp2Vz6088D)); 
 PomHLuSi2C5hphwRso1UEy.sq_SendCreatePassiveObjectPacket(24371, 0, 0, 0, 0); 
 }
} ;

 
function onProcCon_gunner_dimensionrunner(lxM2KkDuBOQhR)
{
 if(!lxM2KkDuBOQhR) return;
 if(!lxM2KkDuBOQhR.isDownSkillLastKey()) 
 onEndCurrentAni_gunner_dimensionrunner(lxM2KkDuBOQhR); 
} ;

 
function onEndCurrentAni_gunner_dimensionrunner(lxM2KkDuBOQhR)
{
 if(!lxM2KkDuBOQhR) return;
 if(lxM2KkDuBOQhR.sq_IsMyControlObject())
 lxM2KkDuBOQhR.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

