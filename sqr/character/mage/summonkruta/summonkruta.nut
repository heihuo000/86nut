
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_mage_summonkruta(RxcFXKhjjoY280C4m3Mt1FF)
{
 if(!RxcFXKhjjoY280C4m3Mt1FF) return false; 
 
 local XiX0o189_q = getMyMonsterObject_Character_jsqq506807329(RxcFXKhjjoY280C4m3Mt1FF, 50680731, "character/mage/summonkruta/ap_summonkruta.nut");
 if(XiX0o189_q)
 {
 local ae5nQG0F3v = CNSquirrelAppendage.sq_GetAppendage(XiX0o189_q, "character/mage/summonkruta/ap_summonkruta.nut");
 if(!ae5nQG0F3v)return false;
 local kv3V8lcZKDUlC = ae5nQG0F3v.getVar("sqrChrSkill").get_timer_vector(3);
 if(!kv3V8lcZKDUlC || kv3V8lcZKDUlC.isOnEvent(ae5nQG0F3v.getTimer().Get()) != true) 
 {
 RxcFXKhjjoY280C4m3Mt1FF.startCantUseSkillWarning(); 
 if(RxcFXKhjjoY280C4m3Mt1FF.isMessage())sq_AddMessage(414); 
 return false;
 }
 
 local Mh7h9c2M0OLxvhk1_Sv = sq_GetLevelData(RxcFXKhjjoY280C4m3Mt1FF, 136, 5, sq_GetSkillLevel(RxcFXKhjjoY280C4m3Mt1FF, 136)); 
 if(kv3V8lcZKDUlC.getEventTerm() != Mh7h9c2M0OLxvhk1_Sv)kv3V8lcZKDUlC.setEventTerm(Mh7h9c2M0OLxvhk1_Sv); 
 RxcFXKhjjoY280C4m3Mt1FF.sq_IntVectClear();
 RxcFXKhjjoY280C4m3Mt1FF.sq_IntVectPush(2); 
 RxcFXKhjjoY280C4m3Mt1FF.sq_IntVectPush(sq_GetGroup(XiX0o189_q)); 
 RxcFXKhjjoY280C4m3Mt1FF.sq_IntVectPush(sq_GetUniqueId(XiX0o189_q)); 
 RxcFXKhjjoY280C4m3Mt1FF.sq_AddSetStatePacket(136, STATE_PRIORITY_USER, true); 
 return false;
 }
 local BfBdXIY6ptvSqCEgXgX = onGetMyPassiveObject_My(RxcFXKhjjoY280C4m3Mt1FF, 24372, 136, 1); 
 if(BfBdXIY6ptvSqCEgXgX)
 {
 RxcFXKhjjoY280C4m3Mt1FF.startCantUseSkillWarning(); 
 if(RxcFXKhjjoY280C4m3Mt1FF.isMessage())sq_AddMessage(414); 
 return false;
 }
 local afvs4TB5kH = RxcFXKhjjoY280C4m3Mt1FF.sq_IsUseSkill(136); 
 if(afvs4TB5kH) 
 {
 RxcFXKhjjoY280C4m3Mt1FF.sq_IntVectClear();
 RxcFXKhjjoY280C4m3Mt1FF.sq_IntVectPush(0); 
 RxcFXKhjjoY280C4m3Mt1FF.sq_AddSetStatePacket(136, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_summonkruta(O96F_ANyK8K)
{
 if(!O96F_ANyK8K) return false; 
 local fOu6FXMdT1T5GV6 = O96F_ANyK8K.sq_GetState(); 
 if(fOu6FXMdT1T5GV6 == STATE_STAND) 
 return true; 
 if(fOu6FXMdT1T5GV6 == STATE_ATTACK) 
 {
 return O96F_ANyK8K.sq_IsCommandEnable(136); 
 }
 return true; 
} ;

 
function onSetState_mage_summonkruta(lab0MC_tSCssQCuH, kwxmPtY6U0_9fv3qQ27t, dYKX6JCy46ig, U4oZE6ZCoX_5fg)
{
 if(!lab0MC_tSCssQCuH) return; 
 lab0MC_tSCssQCuH.sq_StopMove(); 
 local p0L8Wm5vRYRgAK = lab0MC_tSCssQCuH.sq_GetVectorData(dYKX6JCy46ig, 0); 
 lab0MC_tSCssQCuH.setSkillSubState(p0L8Wm5vRYRgAK); 
 switch(p0L8Wm5vRYRgAK)
 {
 case 0:
 local CPS3CMZOj1drVSKHPkW = lab0MC_tSCssQCuH.sq_GetThrowChargeAni(2); 
 lab0MC_tSCssQCuH.setCurrentAnimation(CPS3CMZOj1drVSKHPkW); 
 local ry8GAvnYrM = sq_GetSkillLevel(lab0MC_tSCssQCuH, 136); 
 local u3I_iaaxaopk7tsqDDJZ = sq_GetCastTime(lab0MC_tSCssQCuH, 136, ry8GAvnYrM); 
 sq_StartDrawCastGauge(lab0MC_tSCssQCuH, u3I_iaaxaopk7tsqDDJZ, true); 
 local uGnYQNpgjrxkotqySmxhBoSA = lab0MC_tSCssQCuH.getCurrentAnimation(); 
 local qmgdFXf6D0y8sOf05X5H0G = uGnYQNpgjrxkotqySmxhBoSA.getDelaySum(false); 
 
 lab0MC_tSCssQCuH.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 local pC0edx0K2F = uGnYQNpgjrxkotqySmxhBoSA.getDelaySum(false); 
 local RgV2Ta7abtC6hL7hLgUVGe = pC0edx0K2F.tofloat() / qmgdFXf6D0y8sOf05X5H0G.tofloat(); 
 local skDI1ED9rsc8_43yDI = (u3I_iaaxaopk7tsqDDJZ.tofloat() * RgV2Ta7abtC6hL7hLgUVGe).tointeger(); 
 lab0MC_tSCssQCuH.getVar().clear_vector(); 
 lab0MC_tSCssQCuH.getVar().push_vector(skDI1ED9rsc8_43yDI); 
 lab0MC_tSCssQCuH.sq_PlaySound("WZ_SUMMON_KRUTA");
 break;
 case 1:
 local CPS3CMZOj1drVSKHPkW = lab0MC_tSCssQCuH.sq_GetThrowShootAni(2); 
 lab0MC_tSCssQCuH.setCurrentAnimation(CPS3CMZOj1drVSKHPkW); 
 if(lab0MC_tSCssQCuH.sq_IsMyControlObject())
 {
 lab0MC_tSCssQCuH.sq_StartWrite();
 lab0MC_tSCssQCuH.sq_WriteDword(136); 
 lab0MC_tSCssQCuH.sq_WriteDword(1); 
 sq_SendCreatePassiveObjectPacketPos(lab0MC_tSCssQCuH, 24372, 0,
 sq_GetDistancePos(lab0MC_tSCssQCuH.getXPos(), lab0MC_tSCssQCuH.getDirection(), 100),
 lab0MC_tSCssQCuH.getYPos(), 1111); 
 }
 
 lab0MC_tSCssQCuH.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 break;
 
 case 2:
 local CPS3CMZOj1drVSKHPkW = lab0MC_tSCssQCuH.sq_GetThrowChargeAni(3);
 lab0MC_tSCssQCuH.setCurrentAnimation(CPS3CMZOj1drVSKHPkW); 
 local IOKxlFqflf8RNvOm2I = sq_GetCNRDObjectToActiveObject(
 sq_GetObject(lab0MC_tSCssQCuH, lab0MC_tSCssQCuH.sq_GetVectorData(dYKX6JCy46ig, 1), lab0MC_tSCssQCuH.sq_GetVectorData(dYKX6JCy46ig, 2))
 ); 
 if(IOKxlFqflf8RNvOm2I && !IOKxlFqflf8RNvOm2I.isDead()) 
 {
 local ySaplRCl1SNOiow9dLu = lab0MC_tSCssQCuH.getDirection(); 
 local NNNfSDWqh5gWzSID = lab0MC_tSCssQCuH.getXPos(); 
 local cgLna8ExULaFfa = lab0MC_tSCssQCuH.getYPos(); 
 local HyY8FNnI1S2VdfyvEhKB = sq_GetDistancePos(NNNfSDWqh5gWzSID, lab0MC_tSCssQCuH.getDirection(), 100); 
 
 sq_MoveToNearMovablePos(IOKxlFqflf8RNvOm2I,
 HyY8FNnI1S2VdfyvEhKB, cgLna8ExULaFfa, 0, 
 NNNfSDWqh5gWzSID, cgLna8ExULaFfa, 0,
 100, -1, 5);
 sq_SetCurrentDirection(IOKxlFqflf8RNvOm2I, ySaplRCl1SNOiow9dLu); 
 if(IOKxlFqflf8RNvOm2I.isMyControlObject())
 {
 
 local cCEJdZ5Cig1SOHt6b = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(cCEJdZ5Cig1SOHt6b); 
 sq_IntVectorPush(cCEJdZ5Cig1SOHt6b, 4); 
 sq_AddSetStatePacketActiveObject(IOKxlFqflf8RNvOm2I, 8, cCEJdZ5Cig1SOHt6b, STATE_PRIORITY_FORCE);
 IOKxlFqflf8RNvOm2I.flushSetStatePacket(); 
 }
 }
 lab0MC_tSCssQCuH.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 break;
 case 3:
 local CPS3CMZOj1drVSKHPkW = lab0MC_tSCssQCuH.sq_GetThrowShootAni(3);
 lab0MC_tSCssQCuH.setCurrentAnimation(CPS3CMZOj1drVSKHPkW); 
 break;
 }
} ;

function onProcCon_mage_summonkruta(dKqt8L7ZvgyB)
{
 if(!dKqt8L7ZvgyB) return;
 local QME3kfKOCzou = dKqt8L7ZvgyB.getSkillSubState(); 
 if(QME3kfKOCzou == 0)
 {
 local lbNq4j7HjAgxvbvbVNWDo = dKqt8L7ZvgyB.getVar().get_vector(0); 
 if(dKqt8L7ZvgyB.sq_GetStateTimer() >= lbNq4j7HjAgxvbvbVNWDo) 
 {
 dKqt8L7ZvgyB.sq_IntVectClear();
 dKqt8L7ZvgyB.sq_IntVectPush(1); 
 dKqt8L7ZvgyB.sq_AddSetStatePacket(136, STATE_PRIORITY_USER, true); 
 }
 }
} ;

function onEndState_mage_summonkruta(Isf0yQTA2j, gN0sCdJwJfkODCTTU2O1lc34)
{
 if(!Isf0yQTA2j) return;
 if(gN0sCdJwJfkODCTTU2O1lc34 != 136)
 sq_EndDrawCastGauge(Isf0yQTA2j); 
} ;

 
function onEndCurrentAni_mage_summonkruta(Isf0yQTA2j)
{
 if(!Isf0yQTA2j) return;
 if(!Isf0yQTA2j.sq_IsMyControlObject()) return;
 local gN0sCdJwJfkODCTTU2O1lc34 = Isf0yQTA2j.getSkillSubState(); 
 switch(gN0sCdJwJfkODCTTU2O1lc34)
 {
 case 2:
 Isf0yQTA2j.sq_IntVectClear();
 Isf0yQTA2j.sq_IntVectPush(3); 
 Isf0yQTA2j.sq_AddSetStatePacket(136, STATE_PRIORITY_USER, true); 
 break;
 case 1:
 case 3:
 Isf0yQTA2j.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;


