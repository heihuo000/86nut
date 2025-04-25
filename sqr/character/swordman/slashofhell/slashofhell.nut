
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_swordman_slashofhell(hvq_dwmWHsczh)
{
 if(!hvq_dwmWHsczh) return false; 
 local E8QZE3IRf4PiLX807cLZKj = hvq_dwmWHsczh.sq_IsUseSkill(238); 
 if(E8QZE3IRf4PiLX807cLZKj) 
 {
 
 hvq_dwmWHsczh.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_swordman_slashofhell(hvq_dwmWHsczh)
{
 if(!hvq_dwmWHsczh) return false; 
 local E8QZE3IRf4PiLX807cLZKj = hvq_dwmWHsczh.sq_GetState(); 
 if(E8QZE3IRf4PiLX807cLZKj == STATE_STAND) 
 return true; 
 if(E8QZE3IRf4PiLX807cLZKj == STATE_ATTACK) 
 {
 return hvq_dwmWHsczh.sq_IsCommandEnable(238); 
 }
 return true; 
} ;

 
function onSetState_swordman_slashofhell(_IQrsdWQP7_zA3bLcaF, UsNT01Da1CsC, nnUdaeSz4C4RQ, qpi27Pn_TP)
{
 if(!_IQrsdWQP7_zA3bLcaF) return; 
 _IQrsdWQP7_zA3bLcaF.sq_StopMove(); 
 _IQrsdWQP7_zA3bLcaF.sq_SetCurrentAnimation(155); 
 _IQrsdWQP7_zA3bLcaF.sq_SetCurrentAttackInfo(95); 
 _IQrsdWQP7_zA3bLcaF.sq_SetCurrentAttackBonusRate(_IQrsdWQP7_zA3bLcaF.sq_GetBonusRateWithPassive(238, 238, 0, 1.0)); 
 if(_IQrsdWQP7_zA3bLcaF.sq_IsMyControlObject())
 sq_flashScreen(_IQrsdWQP7_zA3bLcaF, 100, 800, 100, 153, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 _IQrsdWQP7_zA3bLcaF.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onKeyFrameFlag_swordman_slashofhell(xwD_k47jywIFnmXq, DEwoZe6YV4z6loNTOw6QZO)
{
 if(!xwD_k47jywIFnmXq) return false;
 
 if(xwD_k47jywIFnmXq.sq_IsMyControlObject() && DEwoZe6YV4z6loNTOw6QZO == 1)
 {
 local IYE_KIuzo1G1D = sq_GetSkillLevel(xwD_k47jywIFnmXq, 238); 
 xwD_k47jywIFnmXq.sq_StartWrite();
 xwD_k47jywIFnmXq.sq_WriteDword(238); 
 xwD_k47jywIFnmXq.sq_WriteDword(xwD_k47jywIFnmXq.sq_GetBonusRateWithPassive(238, 238, 1, 1.0)); 
 xwD_k47jywIFnmXq.sq_WriteDword(xwD_k47jywIFnmXq.sq_GetBonusRateWithPassive(238, 238, 2, 1.0)); 
 xwD_k47jywIFnmXq.sq_WriteDword(sq_GetLevelData(xwD_k47jywIFnmXq, 238, 3, IYE_KIuzo1G1D)); 
 xwD_k47jywIFnmXq.sq_WriteDword(sq_GetLevelData(xwD_k47jywIFnmXq, 238, 4, IYE_KIuzo1G1D)); 
 xwD_k47jywIFnmXq.sq_SendCreatePassiveObjectPacket(24370, 0, 370, 0, 0); 
 }
 return true;
} ;

 
function getScrollBasisPos_swordman_slashofhell(tderjy9h9NwFLDXXP9Gptm)
{
 if(!tderjy9h9NwFLDXXP9Gptm) return;
 if(tderjy9h9NwFLDXXP9Gptm.isMyControlObject())
 {
 local PBUMZ_dch2oZdxRGn4Gjj = tderjy9h9NwFLDXXP9Gptm.sq_GetCurrentAni(); 
 local uv1hZ1T2SQcmvuSuujFzFAQL = sq_GetCurrentTime(PBUMZ_dch2oZdxRGn4Gjj); 
 local c6dutj9fAHqBx6sLd = PBUMZ_dch2oZdxRGn4Gjj.getDelaySum(0, 0); 
 local SfFMd3iHgRN9gV = sq_GetDistancePos(tderjy9h9NwFLDXXP9Gptm.getXPos(),
 tderjy9h9NwFLDXXP9Gptm.getDirection(),
 sq_GetAccel(0, 300, uv1hZ1T2SQcmvuSuujFzFAQL, c6dutj9fAHqBx6sLd, true)
 ); 
 tderjy9h9NwFLDXXP9Gptm.sq_SetCameraScrollPosition(SfFMd3iHgRN9gV, tderjy9h9NwFLDXXP9Gptm.getYPos(), 0);
 return true;
 }
 return false;
} ;

 
function onEndCurrentAni_swordman_slashofhell(mKg_bMUuI0X5Uuue1mE)
{
 if(!mKg_bMUuI0X5Uuue1mE) return; 
 if(!mKg_bMUuI0X5Uuue1mE.sq_IsMyControlObject()) return;
 mKg_bMUuI0X5Uuue1mE.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


