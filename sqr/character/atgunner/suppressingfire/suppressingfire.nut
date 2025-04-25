
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_atgunner_suppressingfire(UBOu01JlXpIktcyFgD)
{
 if(!UBOu01JlXpIktcyFgD) return false; 
 local UI76D4zjqBGBpJVt = UBOu01JlXpIktcyFgD.sq_IsUseSkill(236); 
 if(UI76D4zjqBGBpJVt) 
 {
 UBOu01JlXpIktcyFgD.sq_IntVectClear();
 UBOu01JlXpIktcyFgD.sq_IntVectPush(0); 
 UBOu01JlXpIktcyFgD.sq_AddSetStatePacket(236, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atgunner_suppressingfire(UBOu01JlXpIktcyFgD)
{
 if(!UBOu01JlXpIktcyFgD) return false; 
 local UI76D4zjqBGBpJVt = UBOu01JlXpIktcyFgD.sq_GetState(); 
 if(UI76D4zjqBGBpJVt == STATE_STAND) 
 return true; 
 if(UI76D4zjqBGBpJVt == STATE_ATTACK) 
 {
 return UBOu01JlXpIktcyFgD.sq_IsCommandEnable(236); 
 }
 return true; 
} ;

 
function onSetState_atgunner_suppressingfire(j77xMeLkG5wknOtcptYAEJU, zrsQHOqStvVjv8, b8TRqIaG2En56ESpxkF7, ZiE5Vje2DH_qvrWMebT2h)
{
 if(!j77xMeLkG5wknOtcptYAEJU) return; 
 j77xMeLkG5wknOtcptYAEJU.sq_StopMove(); 
 local MiR38zrk_P0BQK = j77xMeLkG5wknOtcptYAEJU.sq_GetVectorData(b8TRqIaG2En56ESpxkF7, 0); 
 j77xMeLkG5wknOtcptYAEJU.setSkillSubState(MiR38zrk_P0BQK); 
 switch(MiR38zrk_P0BQK)
 {
 case 0:
 j77xMeLkG5wknOtcptYAEJU.getVar().clear_vector(); 
 j77xMeLkG5wknOtcptYAEJU.sq_SetCurrentAnimation(115);
 j77xMeLkG5wknOtcptYAEJU.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 break;
 case 1:
 j77xMeLkG5wknOtcptYAEJU.sq_SetCurrentAnimation(116);
 j77xMeLkG5wknOtcptYAEJU.sq_SetCurrentAttackInfo(26); 
 local Eti7DuGmCQ = j77xMeLkG5wknOtcptYAEJU.sq_GetBonusRateWithPassive(236, 236, 0, 1.0); 
 j77xMeLkG5wknOtcptYAEJU.sq_SetCurrentAttackBonusRate(Eti7DuGmCQ); 
 local oaoC94smpszLoPHa = sq_GetSkillLevel(j77xMeLkG5wknOtcptYAEJU, 236); 
 local g9mRABUofVT3qPOzPpZ95m = j77xMeLkG5wknOtcptYAEJU.sq_GetLevelData(236, 3, oaoC94smpszLoPHa); 
 j77xMeLkG5wknOtcptYAEJU.getVar().clear_timer_vector();
 j77xMeLkG5wknOtcptYAEJU.getVar().push_timer_vector();
 local Y1nI4dMhBVMiS2FkgEEF9Oc9 = j77xMeLkG5wknOtcptYAEJU.getVar().get_timer_vector(0);
 Y1nI4dMhBVMiS2FkgEEF9Oc9.setParameter(g9mRABUofVT3qPOzPpZ95m, -1); 
 Y1nI4dMhBVMiS2FkgEEF9Oc9.resetInstant(0);
 local GhmjBwAOrNWeuEVgbI7 = j77xMeLkG5wknOtcptYAEJU.sq_GetLevelData(236, 2, oaoC94smpszLoPHa); 
 local vNkBZcnzFFXv = j77xMeLkG5wknOtcptYAEJU.sq_GetLevelData(236, 4, oaoC94smpszLoPHa); 
 local rpNjM_AtQn5wy70 = 280; 
 local cR0gNwGNEnlTiVj34Gwo = 100; 
 local MnOgNLjdDRfbGfqX8kZc0Gkb = 3; 
 local NT716lBOOj4 = 0; 
 j77xMeLkG5wknOtcptYAEJU.getVar().clear_vector();
 local q0agEKC56znuqV = j77xMeLkG5wknOtcptYAEJU.getVar(); 
 q0agEKC56znuqV.push_vector(GhmjBwAOrNWeuEVgbI7);
 q0agEKC56znuqV.push_vector(g9mRABUofVT3qPOzPpZ95m);
 q0agEKC56znuqV.push_vector(vNkBZcnzFFXv);
 q0agEKC56znuqV.push_vector(rpNjM_AtQn5wy70);
 q0agEKC56znuqV.push_vector(cR0gNwGNEnlTiVj34Gwo);
 q0agEKC56znuqV.push_vector(MnOgNLjdDRfbGfqX8kZc0Gkb);
 q0agEKC56znuqV.push_vector(NT716lBOOj4);
 break;
 case 2:
 j77xMeLkG5wknOtcptYAEJU.sq_SetCurrentAnimation(117);
 j77xMeLkG5wknOtcptYAEJU.sq_SetCurrentAttackInfo(27); 
 local Eti7DuGmCQ = j77xMeLkG5wknOtcptYAEJU.sq_GetBonusRateWithPassive(236, 236, 1, 1.0); 
 j77xMeLkG5wknOtcptYAEJU.sq_SetCurrentAttackBonusRate(Eti7DuGmCQ); 
 sq_AddDrawOnlyAniFromParent(j77xMeLkG5wknOtcptYAEJU, "character/gunner/effect/animation/atsuppressingfire/03_finish/dust/suppressingfire_finish_dust01.ani", 0, 0, 0); 
 sq_AddDrawOnlyAniFromParent(j77xMeLkG5wknOtcptYAEJU, "character/gunner/effect/animation/atsuppressingfire/03_finish/front/suppressingfire_finish_front.ani", 0, 30, 0); 
 break;
 }
} ;

function onProc_atgunner_suppressingfire(KiBywGB7SM53xCNKHzzKXWSJ)
{
 if(!KiBywGB7SM53xCNKHzzKXWSJ) return;
 local GJoLIiygQVbL0JSVNJjeNbbI = KiBywGB7SM53xCNKHzzKXWSJ.getSkillSubState(); 
 if(GJoLIiygQVbL0JSVNJjeNbbI == 1)
 {
 local Kb_M3rv6pjMYy4OJUXMkMHR = KiBywGB7SM53xCNKHzzKXWSJ.getVar().get_timer_vector(0);
 if(Kb_M3rv6pjMYy4OJUXMkMHR)
 {
 if(Kb_M3rv6pjMYy4OJUXMkMHR.isOnEvent(KiBywGB7SM53xCNKHzzKXWSJ.sq_GetStateTimer()) == true) 
 KiBywGB7SM53xCNKHzzKXWSJ.resetHitObjectList(); 
 }
 }
} ;

function onProcCon_atgunner_suppressingfire(QzdzqMM6YDQ3H6)
{
 if(!QzdzqMM6YDQ3H6) return;
 local TAXYMJpdhybSOSWcUFqEFDSX = QzdzqMM6YDQ3H6.getSkillSubState(); 
 if(TAXYMJpdhybSOSWcUFqEFDSX == 1)
 {
 local z7TKohD5HA = QzdzqMM6YDQ3H6.getVar(); 
 
 if(QzdzqMM6YDQ3H6.sq_GetStateTimer() >= z7TKohD5HA.get_vector(0))
 {
 QzdzqMM6YDQ3H6.sq_IntVectClear();
 QzdzqMM6YDQ3H6.sq_IntVectPush(2); 
 QzdzqMM6YDQ3H6.sq_AddSetStatePacket(236, STATE_PRIORITY_USER, true); 
 return;
 }
 sq_SetKeyxEnable(QzdzqMM6YDQ3H6, E_JUMP_COMMAND, true); 
 if(sq_IsEnterCommand(QzdzqMM6YDQ3H6, E_JUMP_COMMAND)) 
 {
 QzdzqMM6YDQ3H6.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 return;
 }
 sq_SetKeyxEnable(QzdzqMM6YDQ3H6, E_ATTACK_COMMAND, true); 
 QzdzqMM6YDQ3H6.setSkillCommandEnable(236, true); 
 if(sq_IsEnterCommand(QzdzqMM6YDQ3H6, E_ATTACK_COMMAND) || QzdzqMM6YDQ3H6.sq_IsEnterSkill(236) != -1)
 {
 local oywxe7BtTr = z7TKohD5HA.get_vector(6); 
 local l4iXuTxwG_MRW = z7TKohD5HA.get_vector(5); 
 if(oywxe7BtTr < l4iXuTxwG_MRW) 
 {
 oywxe7BtTr += 1; 
 z7TKohD5HA.set_vector(6, oywxe7BtTr); 
 local Pc7JSYX0mskEUjUHviH6 = sq_GetUniformVelocity(z7TKohD5HA.get_vector(1), z7TKohD5HA.get_vector(2), oywxe7BtTr, l4iXuTxwG_MRW); 
 local TQh98WRB2wRmDbEJhXmds = sq_GetUniformVelocity(z7TKohD5HA.get_vector(4), z7TKohD5HA.get_vector(3), oywxe7BtTr, l4iXuTxwG_MRW); 
 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(Pc7JSYX0mskEUjUHviH6);
 sq_BinaryWriteDword(TQh98WRB2wRmDbEJhXmds);
 sq_SendChangeSkillEffectPacket(QzdzqMM6YDQ3H6, 236); 
 }
 }
 }
} ;


if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onChangeSkillEffect_atgunner_suppressingfire(aTDO99_5mm438pBoYsK6, qBMbiY8TcO7eSp2Uc0aHu, hgK1YVEtFcfVeOGq)
{
 if(!aTDO99_5mm438pBoYsK6) return;
 local mLk3KNLf_CRqaboxmYWUu0 = aTDO99_5mm438pBoYsK6.getSkillSubState();
 if(mLk3KNLf_CRqaboxmYWUu0 == 1)
 {
 local wuCEHJ7aLa8KV = hgK1YVEtFcfVeOGq.readDword(); 
 local xkk_TY0_4lM5kR3exEzYhF = (hgK1YVEtFcfVeOGq.readDword()).tofloat() / 100.0; 
 local l3nZWSKeIsYqrqIEde2ezRO = aTDO99_5mm438pBoYsK6.getVar().get_timer_vector(0); 
 if(l3nZWSKeIsYqrqIEde2ezRO)
 l3nZWSKeIsYqrqIEde2ezRO.setEventTerm(wuCEHJ7aLa8KV); 
 aTDO99_5mm438pBoYsK6.sq_SetStaticSpeedInfo(0, 0, SPEED_VALUE_DEFAULT, (SPEED_VALUE_DEFAULT * xkk_TY0_4lM5kR3exEzYhF).tointeger(), 1.0, 1.0); 
 }
} ;

 
function onEndCurrentAni_atgunner_suppressingfire(Y8MzuLvB5EFfBGpWB)
{
 if(!Y8MzuLvB5EFfBGpWB) return;
 if(!Y8MzuLvB5EFfBGpWB.sq_IsMyControlObject()) return;
 local P5knwlwwNiP2Y9m_NlX3v = Y8MzuLvB5EFfBGpWB.getSkillSubState(); 
 if(P5knwlwwNiP2Y9m_NlX3v != 2)
 {
 Y8MzuLvB5EFfBGpWB.sq_IntVectClear();
 Y8MzuLvB5EFfBGpWB.sq_IntVectPush(P5knwlwwNiP2Y9m_NlX3v + 1); 
 Y8MzuLvB5EFfBGpWB.sq_AddSetStatePacket(236, STATE_PRIORITY_USER, true); 
 }
 else
 Y8MzuLvB5EFfBGpWB.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

function onAttack_atgunner_suppressingfire(hpgIy2nC_gifu0paZqLrdyS, nVZIEBZQMm, SGGE7j0NRIhvU1rraHQ, enftpqLp2vIhUdWb5)
{
 if(!hpgIy2nC_gifu0paZqLrdyS) return;
 if(enftpqLp2vIhUdWb5 || !nVZIEBZQMm.isObjectType(OBJECTTYPE_ACTIVE)) return;
 local FFdo8a4jeUgAmSg4Eq = hpgIy2nC_gifu0paZqLrdyS.getSkillSubState(); 
 
 switch(FFdo8a4jeUgAmSg4Eq)
 {
 case 1:
 local ToNmIC6_0JajI7S5 = sq_CreateAnimation("", "character/gunner/effect/animation/hiteffect/updefault.ani"); 
 ToNmIC6_0JajI7S5.setImageRateFromOriginal(-1.0, 1.0);
 ToNmIC6_0JajI7S5.addLayerAnimation(1, sq_CreateAnimation("", "character/gunner/effect/animation/atsuppressingfire/suppressingfire_blow001.ani"), true); 
 local oSh29ZNwCpNV0EAk6cuDt = sq_GetCenterZPos(SGGE7j0NRIhvU1rraHQ); 
 local z1s3WLyOEGUWCKSfjjM = sq_CreatePooledObject(ToNmIC6_0JajI7S5, true); 
 sq_SetCurrentDirection(z1s3WLyOEGUWCKSfjjM, hpgIy2nC_gifu0paZqLrdyS.getDirection()); 
 z1s3WLyOEGUWCKSfjjM.setCurrentPos(nVZIEBZQMm.getXPos(), nVZIEBZQMm.getYPos() + 1, nVZIEBZQMm.getZPos() + oSh29ZNwCpNV0EAk6cuDt + sq_getRandom(oSh29ZNwCpNV0EAk6cuDt / 2 / -1, oSh29ZNwCpNV0EAk6cuDt / 2)); 
 z1s3WLyOEGUWCKSfjjM = sq_SetEnumDrawLayer(z1s3WLyOEGUWCKSfjjM, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(hpgIy2nC_gifu0paZqLrdyS, z1s3WLyOEGUWCKSfjjM, OBJECTTYPE_DRAWONLY, false); 
 break;
 }
} ;


