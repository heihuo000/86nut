
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_EarthQuake(IN4zOvedT4BV2V9nbm1C)
{
 if(!IN4zOvedT4BV2V9nbm1C) return false;
 local agN2G3xN99I4DRlMAsEa = IN4zOvedT4BV2V9nbm1C.sq_IsUseSkill(118);
 if(agN2G3xN99I4DRlMAsEa)
 {
 local Iyo9ego9DmVz1k = isAvengerAwakenning(IN4zOvedT4BV2V9nbm1C).tointeger(); 
 IN4zOvedT4BV2V9nbm1C.sq_IntVectClear();
 IN4zOvedT4BV2V9nbm1C.sq_IntVectPush(Iyo9ego9DmVz1k); 
 IN4zOvedT4BV2V9nbm1C.sq_addSetStatePacket(66, STATE_PRIORITY_USER, true);
 return true;
 }
 return false;
} ;

 
function checkCommandEnable_EarthQuake(vH6IFmFqMIRyx)
{
 if(!vH6IFmFqMIRyx) return false;
 local WpYJtqr8GQuewzGcbWywYg = vH6IFmFqMIRyx.sq_GetSTATE();
 if(WpYJtqr8GQuewzGcbWywYg == STATE_ATTACK)
 {
 return vH6IFmFqMIRyx.sq_IsCommandEnable(118); 
 }
 return true;
} ;

 

 
function onSetState_EarthQuake(u0vCDAG9Zx7yG2c2Quj, iKh8mN5ZIjS1YS, ICb6MJaDzFQwnEl, lS4ziWfdGTCl)
{
 if(!u0vCDAG9Zx7yG2c2Quj) return;
 u0vCDAG9Zx7yG2c2Quj.sq_stopMove();
 local D6W2UL839lzJ4VdN = u0vCDAG9Zx7yG2c2Quj.sq_getVectorData(ICb6MJaDzFQwnEl, 0); 
 u0vCDAG9Zx7yG2c2Quj.setSkillSubState(D6W2UL839lzJ4VdN); 
 if(D6W2UL839lzJ4VdN == 0)
 {
 u0vCDAG9Zx7yG2c2Quj.sq_setCurrentAnimation(92);
 u0vCDAG9Zx7yG2c2Quj.sq_setXScroll(50, 200, 0, 100);
 }
 else if(D6W2UL839lzJ4VdN == 1)
 {
 local EityhuQo52bqpaCLpAU_9 = u0vCDAG9Zx7yG2c2Quj.getVar().GetAnimationMap("devilearthquake_body_01", "character/priest/animation/avengerawakening/devilearthquake/body_01.ani");
 u0vCDAG9Zx7yG2c2Quj.setCurrentAnimation(EityhuQo52bqpaCLpAU_9);
 }
 u0vCDAG9Zx7yG2c2Quj.sq_setStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;


if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onEndCurrentAni_EarthQuake(jsSCBvCHA9)
{
 if(!jsSCBvCHA9) return;
 local Z4kt61Bkbda3rkuc0 = jsSCBvCHA9.getSkillSubState();
 if(Z4kt61Bkbda3rkuc0 == 0)
 {
 local j5Nej2_99pQ3FF9fU9W = sq_GetDistancePos(jsSCBvCHA9.getXPos(), jsSCBvCHA9.getDirection(), 40);
 if(jsSCBvCHA9.isMovablePos(j5Nej2_99pQ3FF9fU9W, jsSCBvCHA9.getYPos()))
 jsSCBvCHA9.setCurrentPos(j5Nej2_99pQ3FF9fU9W, jsSCBvCHA9.getYPos(), jsSCBvCHA9.getZPos());
 }
 if(jsSCBvCHA9.sq_isMyControlObject())
 jsSCBvCHA9.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
} ;


function onKeyFrameFlag_EarthQuake(yeF81QcR4FtqvaQKqr, HZuxHYUR_xYzLgJ5Vww)
{
 if(!yeF81QcR4FtqvaQKqr) return false;
 local O7I6BDUXe1 = yeF81QcR4FtqvaQKqr.getSkillSubState();
 if(yeF81QcR4FtqvaQKqr.sq_isMyControlObject())
 if(O7I6BDUXe1==0)
 {
 if(HZuxHYUR_xYzLgJ5Vww == 1)
 {
 local hmNXUJONzdV = yeF81QcR4FtqvaQKqr.sq_getIntData(118, 1); 
 local ojafFIyTYMrMYeqn3 = yeF81QcR4FtqvaQKqr.sq_getIntData(118, 0); 
 local HkMddXXx9yrtPYOEbIEhZrBf = yeF81QcR4FtqvaQKqr.sq_getBonusRateWithPassive(118, 66, 0, 1.0);
 yeF81QcR4FtqvaQKqr.sq_binaryData_startWrite();
 yeF81QcR4FtqvaQKqr.sq_binaryData_writeDword(1); 
 yeF81QcR4FtqvaQKqr.sq_binaryData_writeDword(hmNXUJONzdV); 
 yeF81QcR4FtqvaQKqr.sq_binaryData_writeDword(ojafFIyTYMrMYeqn3); 
 yeF81QcR4FtqvaQKqr.sq_binaryData_writeDword(HkMddXXx9yrtPYOEbIEhZrBf); 
 yeF81QcR4FtqvaQKqr.sq_p00_sendCreatePassiveObjectPacket(24103, 0, 120, 1, 0);
 }
 }
 else if(O7I6BDUXe1 == 1)
 {
 if(HZuxHYUR_xYzLgJ5Vww == 1)
 {
 local jd_tzUqXzmvvG3jz = sq_GetSkillLevel(yeF81QcR4FtqvaQKqr, 118); 
 local hmNXUJONzdV = yeF81QcR4FtqvaQKqr.sq_getLevelData(118, 1, jd_tzUqXzmvvG3jz); 
 local HkMddXXx9yrtPYOEbIEhZrBf = yeF81QcR4FtqvaQKqr.sq_getBonusRateWithPassive(118, 66, 0, 1.0);
 yeF81QcR4FtqvaQKqr.sq_binaryData_startWrite();
 yeF81QcR4FtqvaQKqr.sq_binaryData_writeDword(2); 
 yeF81QcR4FtqvaQKqr.sq_binaryData_writeDword(hmNXUJONzdV); 
 yeF81QcR4FtqvaQKqr.sq_binaryData_writeDword(HkMddXXx9yrtPYOEbIEhZrBf); 
 yeF81QcR4FtqvaQKqr.sq_binaryData_writeFloat(1.0); 
 yeF81QcR4FtqvaQKqr.sq_binaryData_writeFloat(1.0); 
 yeF81QcR4FtqvaQKqr.sq_binaryData_writeDword(2); 
 yeF81QcR4FtqvaQKqr.sq_p00_sendCreatePassiveObjectPacket(24103, 0, 120, 1, 0);
 }
 }
 return true;
} ;



