
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_gunner_seismicwave(xW1dmlCTtMs)
{
 if(!xW1dmlCTtMs) return false; 
 local D5fMSZjRbao0 = xW1dmlCTtMs.sq_IsUseSkill(233); 
 if(D5fMSZjRbao0) 
 {
 
 xW1dmlCTtMs.sq_IsEnterSkillLastKeyUnits(233);
 xW1dmlCTtMs.sq_IntVectClear();
 xW1dmlCTtMs.sq_IntVectPush(0); 
 xW1dmlCTtMs.sq_AddSetStatePacket(233, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_gunner_seismicwave(H5t7YwkcS13cbWAi3otRrLnz)
{
 if(!H5t7YwkcS13cbWAi3otRrLnz) return false; 
 local NUtnPns2GdWa = H5t7YwkcS13cbWAi3otRrLnz.sq_GetState(); 
 if(NUtnPns2GdWa == STATE_STAND) 
 return true; 
 if(NUtnPns2GdWa == STATE_ATTACK) 
 {
 return H5t7YwkcS13cbWAi3otRrLnz.sq_IsCommandEnable(233); 
 }
 return true; 
} ;

 
function onSetState_gunner_seismicwave(H5t7YwkcS13cbWAi3otRrLnz, NUtnPns2GdWa, b7HADUMnBP, gPYY1SVnA_OceN2zOzAy9B)
{
 if(!H5t7YwkcS13cbWAi3otRrLnz) return; 
 local Z7Gz6LcQ1V = H5t7YwkcS13cbWAi3otRrLnz.sq_GetVectorData(b7HADUMnBP, 0); 
 H5t7YwkcS13cbWAi3otRrLnz.setSkillSubState(Z7Gz6LcQ1V); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_StopMove(); 
 switch(Z7Gz6LcQ1V)
 {
 case 0:
 H5t7YwkcS13cbWAi3otRrLnz.sq_SetCurrentAnimation(105); 
 if(H5t7YwkcS13cbWAi3otRrLnz.sq_IsMyControlObject())
 {
 local g0XI13j2W0ARRFAe = sq_GetSkillLevel(H5t7YwkcS13cbWAi3otRrLnz, 233); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_StartWrite();
 H5t7YwkcS13cbWAi3otRrLnz.sq_WriteDword(233); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_WriteDword(1); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_WriteDword(H5t7YwkcS13cbWAi3otRrLnz.sq_GetBonusRateWithPassive(233, 233, 2, 1.0)); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_WriteDword(H5t7YwkcS13cbWAi3otRrLnz.sq_GetBonusRateWithPassive(233, 233, 4, 1.0)); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_WriteDword(H5t7YwkcS13cbWAi3otRrLnz.sq_GetBonusRateWithPassive(233, 233, 11, 1.0)); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_WriteDword(sq_GetLevelData(H5t7YwkcS13cbWAi3otRrLnz, 233, 0, g0XI13j2W0ARRFAe)); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_WriteDword(sq_GetLevelData(H5t7YwkcS13cbWAi3otRrLnz, 233, 1, g0XI13j2W0ARRFAe)); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_WriteDword(H5t7YwkcS13cbWAi3otRrLnz.sq_GetBonusRateWithPassive(233, 233, 3, 1.0)); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_WriteDword(H5t7YwkcS13cbWAi3otRrLnz.sq_GetBonusRateWithPassive(233, 233, 5, 1.0)); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_WriteDword(sq_GetLevelData(H5t7YwkcS13cbWAi3otRrLnz, 233, 6, g0XI13j2W0ARRFAe)); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_WriteDword(sq_GetLevelData(H5t7YwkcS13cbWAi3otRrLnz, 233, 7, g0XI13j2W0ARRFAe)); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_WriteDword(sq_GetLevelData(H5t7YwkcS13cbWAi3otRrLnz, 233, 8, g0XI13j2W0ARRFAe)); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_WriteDword(sq_GetLevelData(H5t7YwkcS13cbWAi3otRrLnz, 233, 9, g0XI13j2W0ARRFAe)); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_WriteDword(sq_GetLevelData(H5t7YwkcS13cbWAi3otRrLnz, 233, 10, g0XI13j2W0ARRFAe)); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_WriteDword(sq_GetLevelData(H5t7YwkcS13cbWAi3otRrLnz, 233, 12, g0XI13j2W0ARRFAe)); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_WriteDword(sq_GetLevelData(H5t7YwkcS13cbWAi3otRrLnz, 233, 13, g0XI13j2W0ARRFAe)); 
 H5t7YwkcS13cbWAi3otRrLnz.sq_SendCreatePassiveObjectPacket(24371, 0, 150, 0, 0); 
 }
 break;
 case 1:
 H5t7YwkcS13cbWAi3otRrLnz.sq_SetCurrentAnimation(106); 
 break;
 }
 H5t7YwkcS13cbWAi3otRrLnz.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onProcCon_gunner_seismicwave(PEZsJ7m9vxN77el4jhkM)
{
 if(!PEZsJ7m9vxN77el4jhkM) return;
 local eF7p10Ddv6O_2Pe = PEZsJ7m9vxN77el4jhkM.getSkillSubState(); 
 switch(eF7p10Ddv6O_2Pe)
 {
 case 0:
 if(!PEZsJ7m9vxN77el4jhkM.isDownSkillLastKey()) 
 {
 
 PEZsJ7m9vxN77el4jhkM.sq_IntVectClear();
 PEZsJ7m9vxN77el4jhkM.sq_IntVectPush(1); 
 PEZsJ7m9vxN77el4jhkM.sq_AddSetStatePacket(233, STATE_PRIORITY_USER, true); 
 }
 break;
 }
} ;

 
function onEndCurrentAni_gunner_seismicwave(PEZsJ7m9vxN77el4jhkM)
{
 if(!PEZsJ7m9vxN77el4jhkM) return;
 if(!PEZsJ7m9vxN77el4jhkM.sq_IsMyControlObject())return;
 local eF7p10Ddv6O_2Pe = PEZsJ7m9vxN77el4jhkM.getSkillSubState(); 
 if(eF7p10Ddv6O_2Pe == 1)
 PEZsJ7m9vxN77el4jhkM.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

