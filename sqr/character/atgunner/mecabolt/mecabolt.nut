
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_atgunner_mecabolt(iCuHBGtYYXc7lhXoa54)
{
 if(!iCuHBGtYYXc7lhXoa54) return false; 
 local dz5WnogDendMy = iCuHBGtYYXc7lhXoa54.sq_IsUseSkill(249); 
 if(dz5WnogDendMy) 
 {
 iCuHBGtYYXc7lhXoa54.sq_IntVectClear();
 iCuHBGtYYXc7lhXoa54.sq_IntVectPush(0); 
 iCuHBGtYYXc7lhXoa54.sq_AddSetStatePacket(249, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atgunner_mecabolt(K5U2VMuTmU)
{
 if(!K5U2VMuTmU) return false; 
 local uFEX1yvudqwU9K3ow5lmjYve = K5U2VMuTmU.sq_GetState(); 
 if(uFEX1yvudqwU9K3ow5lmjYve == STATE_STAND) 
 return true; 
 if(uFEX1yvudqwU9K3ow5lmjYve == STATE_ATTACK) 
 {
 return K5U2VMuTmU.sq_IsCommandEnable(249); 
 }
 return true; 
} ;

 
function onSetState_atgunner_mecabolt(K5U2VMuTmU, uFEX1yvudqwU9K3ow5lmjYve, TsB5TWcBrZHZi, ApF9KThveZU4n)
{
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 if(!K5U2VMuTmU) return; 
 local yQzuhYlXQwO = K5U2VMuTmU.sq_GetVectorData(TsB5TWcBrZHZi, 0); 
 K5U2VMuTmU.setSkillSubState(yQzuhYlXQwO); 
 switch(yQzuhYlXQwO)
 {
 case 0:
 K5U2VMuTmU.getVar().clear_vector(); 
 K5U2VMuTmU.sq_StopMove(); 
 K5U2VMuTmU.sq_SetCurrentAnimation(139);
 K5U2VMuTmU.sq_PlaySound("FG_BOLT_MX"); 
 if(K5U2VMuTmU.sq_IsMyControlObject())
 {
 local AABNtjXKSyRvUnJ394 = sq_GetSkillLevel(K5U2VMuTmU, 249); 
 local R2fJTjmzRFFAWjoB = K5U2VMuTmU.sq_GetLevelData(249, 0, AABNtjXKSyRvUnJ394); 
 K5U2VMuTmU.sq_StartWrite();
 K5U2VMuTmU.sq_WriteDword(249); 
 K5U2VMuTmU.sq_WriteDword(1); 
 K5U2VMuTmU.sq_WriteDword(K5U2VMuTmU.sq_GetBonusRateWithPassive(249, 249, 6, 1.0)); 
 K5U2VMuTmU.sq_WriteDword(K5U2VMuTmU.sq_GetBonusRateWithPassive(249, 249, 7, 1.0)); 
 K5U2VMuTmU.sq_WriteDword(K5U2VMuTmU.sq_GetBonusRateWithPassive(249, 249, 8, 1.0)); 
 K5U2VMuTmU.sq_WriteDword(K5U2VMuTmU.sq_GetBonusRateWithPassive(249, 249, 9, 1.0)); 
 K5U2VMuTmU.sq_WriteDword(K5U2VMuTmU.sq_GetBonusRateWithPassive(249, 249, 2, 1.0)); 
 K5U2VMuTmU.sq_WriteDword(K5U2VMuTmU.sq_GetBonusRateWithPassive(249, 249, 5, 1.0)); 
 K5U2VMuTmU.sq_WriteDword(K5U2VMuTmU.sq_GetLevelData(249, 3, AABNtjXKSyRvUnJ394)); 
 K5U2VMuTmU.sq_WriteDword(K5U2VMuTmU.sq_GetLevelData(249, 4, AABNtjXKSyRvUnJ394)); 
 K5U2VMuTmU.sq_WriteDword(K5U2VMuTmU.sq_GetLevelData(249, 1, AABNtjXKSyRvUnJ394)); 
 K5U2VMuTmU.sq_SendCreatePassiveObjectPacket(24376, 0, R2fJTjmzRFFAWjoB, 0, 0);
 }
 break;
 }
 K5U2VMuTmU.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

 
function onEndCurrentAni_atgunner_mecabolt(BSo21LHz_vekX)
{
 if(!BSo21LHz_vekX) return;
 if(!BSo21LHz_vekX.sq_IsMyControlObject()) return;
 BSo21LHz_vekX.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

