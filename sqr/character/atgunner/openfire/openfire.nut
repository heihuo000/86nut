
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_atgunner_openfire(QzdzqMM6YDQ3H6)
{
 if(!QzdzqMM6YDQ3H6) return false; 
 local TAXYMJpdhybSOSWcUFqEFDSX = QzdzqMM6YDQ3H6.sq_IsUseSkill(242); 
 if(TAXYMJpdhybSOSWcUFqEFDSX) 
 {
 local z7TKohD5HA = QzdzqMM6YDQ3H6.getState(); 
 switch(z7TKohD5HA)
 {
 case 6:
 case 7:
 QzdzqMM6YDQ3H6.sq_IntVectClear();
 QzdzqMM6YDQ3H6.sq_IntVectPush(1); 
 QzdzqMM6YDQ3H6.sq_AddSetStatePacket(242, STATE_PRIORITY_USER, true); 
 break;
 default:
 QzdzqMM6YDQ3H6.sq_IntVectClear();
 QzdzqMM6YDQ3H6.sq_IntVectPush(0); 
 QzdzqMM6YDQ3H6.sq_AddSetStatePacket(242, STATE_PRIORITY_USER, true); 
 break;
 }
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atgunner_openfire(aTDO99_5mm438pBoYsK6)
{
 if(!aTDO99_5mm438pBoYsK6) return false; 
 local qBMbiY8TcO7eSp2Uc0aHu = aTDO99_5mm438pBoYsK6.sq_GetState(); 
 if(qBMbiY8TcO7eSp2Uc0aHu == STATE_STAND) 
 return true; 
 if(qBMbiY8TcO7eSp2Uc0aHu == STATE_ATTACK) 
 {
 return aTDO99_5mm438pBoYsK6.sq_IsCommandEnable(242); 
 }
 return true; 
} ;

 
function onSetState_atgunner_openfire(aTDO99_5mm438pBoYsK6, qBMbiY8TcO7eSp2Uc0aHu, hgK1YVEtFcfVeOGq, mLk3KNLf_CRqaboxmYWUu0)
{
 
 
 
 
 
 
 
 
 
 
 
 
 
 if(!aTDO99_5mm438pBoYsK6) return; 
 aTDO99_5mm438pBoYsK6.getVar().clear_vector(); 
 aTDO99_5mm438pBoYsK6.sq_StopMove(); 
 aTDO99_5mm438pBoYsK6.sq_ZStop(); 
 local wuCEHJ7aLa8KV = aTDO99_5mm438pBoYsK6.sq_GetVectorData(hgK1YVEtFcfVeOGq, 0); 
 aTDO99_5mm438pBoYsK6.setSkillSubState(wuCEHJ7aLa8KV); 
 switch(wuCEHJ7aLa8KV)
 {
 case 0:
 local xkk_TY0_4lM5kR3exEzYhF = aTDO99_5mm438pBoYsK6.sq_GetJumpAni(); 
 aTDO99_5mm438pBoYsK6.sq_Rewind(xkk_TY0_4lM5kR3exEzYhF); 
 aTDO99_5mm438pBoYsK6.setCurrentAnimation(xkk_TY0_4lM5kR3exEzYhF); 
 local l3nZWSKeIsYqrqIEde2ezRO = aTDO99_5mm438pBoYsK6.getVar(); 
 l3nZWSKeIsYqrqIEde2ezRO.push_vector(aTDO99_5mm438pBoYsK6.getZPos()); 
 l3nZWSKeIsYqrqIEde2ezRO.push_vector(120); 
 l3nZWSKeIsYqrqIEde2ezRO.push_vector(0); 
 l3nZWSKeIsYqrqIEde2ezRO.push_vector(2); 
 break;
 case 1:
 aTDO99_5mm438pBoYsK6.sq_SetCurrentAnimation(126);
 break;
 }
 aTDO99_5mm438pBoYsK6.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onKeyFrameFlag_atgunner_openfire(Y8MzuLvB5EFfBGpWB, P5knwlwwNiP2Y9m_NlX3v)
{
 if(!Y8MzuLvB5EFfBGpWB) return false;
 local MK9eWNu7Cd_Img53Bbo4Cy = Y8MzuLvB5EFfBGpWB.getSkillSubState(); 
 switch(MK9eWNu7Cd_Img53Bbo4Cy)
 {
 case 1:
 if(P5knwlwwNiP2Y9m_NlX3v == 1)
 {
 local eBRGBKLOXrH7Q = Y8MzuLvB5EFfBGpWB.getVar().GetparticleCreaterMap("openfiregrenade", "passiveobject/script_sqr_nut_qq506807329/atgunner/particle/openfiregrenade.ptl", Y8MzuLvB5EFfBGpWB); 
 eBRGBKLOXrH7Q.Restart(0); 
 eBRGBKLOXrH7Q.SetPos(
 sq_GetDistancePos(Y8MzuLvB5EFfBGpWB.getXPos(), Y8MzuLvB5EFfBGpWB.getDirection(), 13),
 Y8MzuLvB5EFfBGpWB.getYPos(),
 Y8MzuLvB5EFfBGpWB.getZPos() + 53); 
 sq_AddParticleObject(Y8MzuLvB5EFfBGpWB, eBRGBKLOXrH7Q); 
 }
 else if(P5knwlwwNiP2Y9m_NlX3v == 2)
 {
 if(Y8MzuLvB5EFfBGpWB.sq_IsMyControlObject())
 {
 Y8MzuLvB5EFfBGpWB.sq_StartWrite();
 Y8MzuLvB5EFfBGpWB.sq_WriteDword(242); 
 Y8MzuLvB5EFfBGpWB.sq_WriteDword(1); 
 Y8MzuLvB5EFfBGpWB.sq_WriteDword(Y8MzuLvB5EFfBGpWB.sq_GetBonusRateWithPassive(242, 242, 0, 1.0)); 
 Y8MzuLvB5EFfBGpWB.sq_WriteDword(Y8MzuLvB5EFfBGpWB.sq_GetLevelData(242, 1, sq_GetSkillLevel(Y8MzuLvB5EFfBGpWB, 242))); 
 sq_SendCreatePassiveObjectPacketPos(Y8MzuLvB5EFfBGpWB, 24376, 0,
 sq_GetDistancePos(Y8MzuLvB5EFfBGpWB.getXPos(), Y8MzuLvB5EFfBGpWB.getDirection(), 400),
 Y8MzuLvB5EFfBGpWB.getYPos(),
 0);
 }
 }
 break;
 }
 return true;
} ;


if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onProc_atgunner_openfire(_cGCreQXXwDdQ)
{
 if(!_cGCreQXXwDdQ) return;
 local h3GE3siNdQSID = _cGCreQXXwDdQ.getSkillSubState(); 
 switch(h3GE3siNdQSID)
 {
 case 0:
 local QK50fqsNInU = _cGCreQXXwDdQ.getVar(); 
 local X9D4DKDy84jB5FB2 = _cGCreQXXwDdQ.getCurrentAnimation(); 
 local s9bjzh25S_jK = sq_GetCurrentTime(X9D4DKDy84jB5FB2); 
 local luCTz8woGCVnMjj = X9D4DKDy84jB5FB2.getDelaySum(QK50fqsNInU.get_vector(2), QK50fqsNInU.get_vector(3)); 
 local BQrpJxgq_hSP = QK50fqsNInU.get_vector(0); 
 local wKsgGP91kpHLKjyWLcMEBHje = QK50fqsNInU.get_vector(1); 
 local QZZSY4flaF4Q9qIi7x = sq_GetAccel(0, wKsgGP91kpHLKjyWLcMEBHje, s9bjzh25S_jK, luCTz8woGCVnMjj, true); 
 sq_setCurrentAxisPos(_cGCreQXXwDdQ, 2, BQrpJxgq_hSP + QZZSY4flaF4Q9qIi7x); 
 if(_cGCreQXXwDdQ.sq_IsMyControlObject()) 
 if(s9bjzh25S_jK >= luCTz8woGCVnMjj) 
 {
 _cGCreQXXwDdQ.sq_IntVectClear();
 _cGCreQXXwDdQ.sq_IntVectPush(1); 
 _cGCreQXXwDdQ.sq_AddSetStatePacket(242, STATE_PRIORITY_USER, true); 
 }
 break;
 }
} ;

 
function onEndCurrentAni_atgunner_openfire(x_0IaV6Sjtz)
{
 if(!x_0IaV6Sjtz) return;
 if(!x_0IaV6Sjtz.sq_IsMyControlObject()) return;
 local xOUd60LsNxW3hW5yQg22 = x_0IaV6Sjtz.getSkillSubState(); 
 if(xOUd60LsNxW3hW5yQg22 == 1)
 {
 x_0IaV6Sjtz.sq_IntVectClear();
 x_0IaV6Sjtz.sq_IntVectPush(1);
 x_0IaV6Sjtz.sq_IntVectPush(0);
 x_0IaV6Sjtz.sq_IntVectPush(1);
 x_0IaV6Sjtz.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
 }
} ;


