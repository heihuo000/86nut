
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_atgunner_fsc_7(K5U2VMuTmU)
{
 if(!K5U2VMuTmU) return false; 
 local uFEX1yvudqwU9K3ow5lmjYve = K5U2VMuTmU.sq_IsUseSkill(233); 
 if(uFEX1yvudqwU9K3ow5lmjYve) 
 {
 K5U2VMuTmU.sq_AddSetStatePacket(233, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atgunner_fsc_7(Wi5uC8oEzzx76GL)
{
 if(!Wi5uC8oEzzx76GL) return false; 
 local oBlx5ZiP8HrWMdFK36Xxz = Wi5uC8oEzzx76GL.sq_GetState(); 
 if(oBlx5ZiP8HrWMdFK36Xxz == STATE_STAND) 
 return true; 
 if(oBlx5ZiP8HrWMdFK36Xxz == STATE_ATTACK) 
 {
 return Wi5uC8oEzzx76GL.sq_IsCommandEnable(233); 
 }
 return true; 
} ;

 
function onSetState_atgunner_fsc_7(Wi5uC8oEzzx76GL, oBlx5ZiP8HrWMdFK36Xxz, wd5Spgpa4kg, CB2doT0f86C)
{
 if(!Wi5uC8oEzzx76GL) return; 
 Wi5uC8oEzzx76GL.getVar().clear_vector(); 
 Wi5uC8oEzzx76GL.sq_StopMove(); 
 Wi5uC8oEzzx76GL.sq_SetCurrentAnimation(106);
 Wi5uC8oEzzx76GL.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onKeyFrameFlag_atgunner_fsc_7(Wi5uC8oEzzx76GL, oBlx5ZiP8HrWMdFK36Xxz)
{
 if(!Wi5uC8oEzzx76GL) return false;
 if(oBlx5ZiP8HrWMdFK36Xxz == 1)
 {
 Wi5uC8oEzzx76GL.getVar().clear_vector(); 
 Wi5uC8oEzzx76GL.getVar().push_vector(Wi5uC8oEzzx76GL.getXPos()); 
 Wi5uC8oEzzx76GL.getVar().push_vector(-20); 
 if(Wi5uC8oEzzx76GL.isMyControlObject())
 {
 Wi5uC8oEzzx76GL.sq_StartWrite();
 Wi5uC8oEzzx76GL.sq_WriteDword(233); 
 Wi5uC8oEzzx76GL.sq_WriteDword(Wi5uC8oEzzx76GL.sq_GetBonusRateWithPassive(233, 233, 0, 1.0)); 
 Wi5uC8oEzzx76GL.sq_WriteDword(Wi5uC8oEzzx76GL.sq_GetBonusRateWithPassive(233, 233, 1, 1.0)); 
 Wi5uC8oEzzx76GL.sq_WriteDword(Wi5uC8oEzzx76GL.sq_GetLevelData(233, 2, sq_GetSkillLevel(Wi5uC8oEzzx76GL, 233))); 
 Wi5uC8oEzzx76GL.sq_SendCreatePassiveObjectPacket(24376, 0, 139, 0, 84);
 sq_SetMyShake(Wi5uC8oEzzx76GL, 5, 150); 
 }
 }
 return true;
} ;

function onProc_atgunner_fsc_7(BSo21LHz_vekX)
{
 if(!BSo21LHz_vekX) return;
 if(BSo21LHz_vekX.getVar().size_vector() <= 0) return;
 local f3zduxDjveFOvA = BSo21LHz_vekX.getCurrentAnimation(); 
 local CAZksnCOYb = sq_GetCurrentTime(f3zduxDjveFOvA) - f3zduxDjveFOvA.getDelaySum(0, 8); 
 local fa0ovkpCgJYK6dkcy6upd4j = f3zduxDjveFOvA.getDelaySum(8, 10); 
 local Hp0mDsdHHgt = BSo21LHz_vekX.getVar().get_vector(1); 
 local vtUdhEdrtXF5X2UW = sq_GetDistancePos(BSo21LHz_vekX.getVar().get_vector(0),
 BSo21LHz_vekX.getDirection(),
 sq_GetAccel(0, Hp0mDsdHHgt, CAZksnCOYb, fa0ovkpCgJYK6dkcy6upd4j, true)); 
 if(BSo21LHz_vekX.isMovablePos(vtUdhEdrtXF5X2UW, BSo21LHz_vekX.getYPos())) 
 sq_setCurrentAxisPos(BSo21LHz_vekX, 0, vtUdhEdrtXF5X2UW); 
 else
 {
 local dbwCXcekA83xK2O = sq_Abs(vtUdhEdrtXF5X2UW - BSo21LHz_vekX.getXPos());
 if(dbwCXcekA83xK2O != 0)
 BSo21LHz_vekX.getVar().set_vector(1, (Hp0mDsdHHgt > 0) ? Hp0mDsdHHgt - dbwCXcekA83xK2O : Hp0mDsdHHgt + dbwCXcekA83xK2O);
 }
} ;

 
function onEndCurrentAni_atgunner_fsc_7(UBOu01JlXpIktcyFgD)
{
 if(!UBOu01JlXpIktcyFgD) return;
 if(!UBOu01JlXpIktcyFgD.sq_IsMyControlObject()) return;
 UBOu01JlXpIktcyFgD.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


