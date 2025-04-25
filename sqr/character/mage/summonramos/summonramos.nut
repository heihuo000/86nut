
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_mage_summonramos(YCKEQAdIq8on1of98pQ)
{
 if(!YCKEQAdIq8on1of98pQ) return false; 
 
 local HNXtdG8i68hQv6t = getMyMonsterObject_Character_jsqq506807329(YCKEQAdIq8on1of98pQ, 50680732, "character/mage/summonramos/ap_summonramos.nut");
 if(HNXtdG8i68hQv6t)
 {
 if(HNXtdG8i68hQv6t.getState() == STATE_ATTACK && HNXtdG8i68hQv6t.getAttackIndex() >=11) 
 {
 if(YCKEQAdIq8on1of98pQ.isMessage())sq_AddMessage(414); 
 return false;
 }
 local Uwi1lx_B_cFkWPiAcZLT1 = CNSquirrelAppendage.sq_GetAppendage(HNXtdG8i68hQv6t, "character/mage/summonramos/ap_summonramos.nut");
 if(!Uwi1lx_B_cFkWPiAcZLT1)return false;
 local fDW5W1AO1V3RnB1mVoB = Uwi1lx_B_cFkWPiAcZLT1.getVar("sqrChrSkill").get_timer_vector(3);
 if(!fDW5W1AO1V3RnB1mVoB || fDW5W1AO1V3RnB1mVoB.isOnEvent(Uwi1lx_B_cFkWPiAcZLT1.getTimer().Get()) != true) 
 {
 YCKEQAdIq8on1of98pQ.startCantUseSkillWarning(); 
 if(YCKEQAdIq8on1of98pQ.isMessage())sq_AddMessage(414); 
 return false;
 }
 
 local dL1IUfLU4TyWP0VvjdXNrizK = sq_GetLevelData(YCKEQAdIq8on1of98pQ, 139, 15, sq_GetSkillLevel(YCKEQAdIq8on1of98pQ, 139)); 
 if(fDW5W1AO1V3RnB1mVoB.getEventTerm() != dL1IUfLU4TyWP0VvjdXNrizK)fDW5W1AO1V3RnB1mVoB.setEventTerm(dL1IUfLU4TyWP0VvjdXNrizK); 
 YCKEQAdIq8on1of98pQ.sq_IntVectClear();
 YCKEQAdIq8on1of98pQ.sq_IntVectPush(1); 
 YCKEQAdIq8on1of98pQ.sq_IntVectPush(sq_GetGroup(HNXtdG8i68hQv6t)); 
 YCKEQAdIq8on1of98pQ.sq_IntVectPush(sq_GetUniqueId(HNXtdG8i68hQv6t)); 
 YCKEQAdIq8on1of98pQ.sq_AddSetStatePacket(139, STATE_PRIORITY_USER, true); 
 return false;
 }
 local MwaPVBQU4fgSChr = onGetMyPassiveObject_My(YCKEQAdIq8on1of98pQ, 24372, 139, 1); 
 if(MwaPVBQU4fgSChr)
 {
 YCKEQAdIq8on1of98pQ.startCantUseSkillWarning(); 
 if(YCKEQAdIq8on1of98pQ.isMessage())sq_AddMessage(414); 
 return false;
 }
 local rTgIlXn1c8mg = YCKEQAdIq8on1of98pQ.sq_IsUseSkill(139); 
 if(rTgIlXn1c8mg) 
 {
 YCKEQAdIq8on1of98pQ.sq_IntVectClear();
 YCKEQAdIq8on1of98pQ.sq_IntVectPush(0); 
 YCKEQAdIq8on1of98pQ.sq_AddSetStatePacket(139, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_summonramos(AQlEURCvEMxL9_Pwd8Wxge)
{
 if(!AQlEURCvEMxL9_Pwd8Wxge) return false; 
 local gpzsJ3QQ2oVQjAcZH3tc = AQlEURCvEMxL9_Pwd8Wxge.sq_GetState(); 
 if(gpzsJ3QQ2oVQjAcZH3tc == STATE_STAND) 
 return true; 
 if(gpzsJ3QQ2oVQjAcZH3tc == STATE_ATTACK) 
 {
 return AQlEURCvEMxL9_Pwd8Wxge.sq_IsCommandEnable(139); 
 }
 return true; 
} ;

 
function onSetState_mage_summonramos(xDZJYGVccDMK, pPCiQFEpXpJWruyBx, mOviUTyM6cfpAfxb1GwzZ, hXxl2ykbUn0)
{
 if(!xDZJYGVccDMK) return; 
 local QqNC2i2EU6VWQl6ItlS1XhjE = xDZJYGVccDMK.sq_GetVectorData(mOviUTyM6cfpAfxb1GwzZ, 0); 
 xDZJYGVccDMK.setSkillSubState(QqNC2i2EU6VWQl6ItlS1XhjE); 
 switch(QqNC2i2EU6VWQl6ItlS1XhjE)
 {
 case 0:
 xDZJYGVccDMK.sq_StopMove(); 
 xDZJYGVccDMK.sq_SetCurrentAnimation(141);
 local sE_bmHHoSLam7SCjogwNZ = sq_GetSkillLevel(xDZJYGVccDMK, 139); 
 local T8AptFM56Ss8HY347o6oJWD = sq_GetCastTime(xDZJYGVccDMK, 139, sE_bmHHoSLam7SCjogwNZ); 
 sq_StartDrawCastGauge(xDZJYGVccDMK, T8AptFM56Ss8HY347o6oJWD, true); 
 
 xDZJYGVccDMK.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 break;
 case 1:
 local yIKEE0yYZd2 = xDZJYGVccDMK.sq_GetThrowChargeAni(3);
 xDZJYGVccDMK.setCurrentAnimation(yIKEE0yYZd2); 
 local HuW1aYDQt_ByfriXLE2_dE = sq_GetCNRDObjectToActiveObject(
 sq_GetObject(xDZJYGVccDMK, xDZJYGVccDMK.sq_GetVectorData(mOviUTyM6cfpAfxb1GwzZ, 1), xDZJYGVccDMK.sq_GetVectorData(mOviUTyM6cfpAfxb1GwzZ, 2))
 ); 
 if(HuW1aYDQt_ByfriXLE2_dE && !HuW1aYDQt_ByfriXLE2_dE.isDead()) 
 {
 local EBfx6cUyzReiK = xDZJYGVccDMK.getDirection(); 
 local rNwHeX7SWygPdGia2cq3 = xDZJYGVccDMK.getXPos(); 
 local tNqY4nAxRq = xDZJYGVccDMK.getYPos(); 
 local veFTLqqP5Fd86f9LM8QO6GRM = sq_GetDistancePos(rNwHeX7SWygPdGia2cq3, xDZJYGVccDMK.getDirection(), 100); 
 
 sq_MoveToNearMovablePos(HuW1aYDQt_ByfriXLE2_dE,
 veFTLqqP5Fd86f9LM8QO6GRM, tNqY4nAxRq, 0, 
 rNwHeX7SWygPdGia2cq3, tNqY4nAxRq, 0,
 100, -1, 5);
 sq_SetCurrentDirection(HuW1aYDQt_ByfriXLE2_dE, EBfx6cUyzReiK); 
 if(HuW1aYDQt_ByfriXLE2_dE.isMyControlObject()) 
 {
 local qq8sfiM4ko = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(qq8sfiM4ko); 
 sq_IntVectorPush(qq8sfiM4ko, 10); 
 sq_AddSetStatePacketActiveObject(HuW1aYDQt_ByfriXLE2_dE, STATE_ATTACK, qq8sfiM4ko, STATE_PRIORITY_FORCE);
 HuW1aYDQt_ByfriXLE2_dE.flushSetStatePacket(); 
 }
 }
 break;
 case 2:
 local yIKEE0yYZd2 = xDZJYGVccDMK.sq_GetThrowShootAni(3);
 xDZJYGVccDMK.setCurrentAnimation(yIKEE0yYZd2); 
 break;
 }
} ;

function onEndState_mage_summonramos(pEC3PKvaJgUqV54UjK_LH, DlHRftGKqfZVpEUoYwmuRc)
{
 if(!pEC3PKvaJgUqV54UjK_LH) return;
 if(DlHRftGKqfZVpEUoYwmuRc != 139)
 sq_EndDrawCastGauge(pEC3PKvaJgUqV54UjK_LH); 
} ;

function onKeyFrameFlag_mage_summonramos(pEC3PKvaJgUqV54UjK_LH, DlHRftGKqfZVpEUoYwmuRc)
{
 if(!pEC3PKvaJgUqV54UjK_LH) return false;
 local muR0TT3TICsZlt6ziv_to = pEC3PKvaJgUqV54UjK_LH.getSkillSubState(); 
 if(muR0TT3TICsZlt6ziv_to == 0)
 {
 if(DlHRftGKqfZVpEUoYwmuRc == 1)
 {
 pEC3PKvaJgUqV54UjK_LH.sq_PlaySound("WZ_RAMOS");
 if(pEC3PKvaJgUqV54UjK_LH.sq_IsMyControlObject())
 {
 local qDz_8eGomrrUsd = pEC3PKvaJgUqV54UjK_LH.sq_findNearLinearMovableXPos(
 sq_GetDistancePos(pEC3PKvaJgUqV54UjK_LH.getXPos(), pEC3PKvaJgUqV54UjK_LH.getDirection(), 200),
 pEC3PKvaJgUqV54UjK_LH.getYPos(),
 pEC3PKvaJgUqV54UjK_LH.getXPos(),
 pEC3PKvaJgUqV54UjK_LH.getYPos(), 5); 
 pEC3PKvaJgUqV54UjK_LH.sq_StartWrite();
 pEC3PKvaJgUqV54UjK_LH.sq_WriteDword(139); 
 pEC3PKvaJgUqV54UjK_LH.sq_WriteDword(1); 
 pEC3PKvaJgUqV54UjK_LH.sq_WriteDword(qDz_8eGomrrUsd); 
 pEC3PKvaJgUqV54UjK_LH.sq_SendCreatePassiveObjectPacket(24372, 0, 0, 0, 0);
 }
 }
 }
 return true;
} ;

 
function onEndCurrentAni_mage_summonramos(XGaiO1boAwq)
{
 if(!XGaiO1boAwq) return;
 if(!XGaiO1boAwq.sq_IsMyControlObject()) return;
 local fi4hsiw_Dna0 = XGaiO1boAwq.getSkillSubState(); 
 switch(fi4hsiw_Dna0)
 {
 case 1:
 XGaiO1boAwq.sq_IntVectClear();
 XGaiO1boAwq.sq_IntVectPush(fi4hsiw_Dna0 + 1); 
 XGaiO1boAwq.sq_AddSetStatePacket(139, STATE_PRIORITY_USER, true); 
 break;
 case 0:
 case 2:
 
 XGaiO1boAwq.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 break;
 }
} ;


