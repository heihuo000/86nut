
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_mage_bugfall(Zo4mCIfkvcq2GHCsR)
{
 if(!Zo4mCIfkvcq2GHCsR) return false; 
 
 local H664rxQvMQh7VPQQpBo = getMyMonsterObject_Character_jsqq506807329(Zo4mCIfkvcq2GHCsR, 50680732, "character/mage/summonramos/ap_summonramos.nut");
 if(H664rxQvMQh7VPQQpBo)
 {
 local nodLMEkG5NB4CHt = CNSquirrelAppendage.sq_GetAppendage(H664rxQvMQh7VPQQpBo, "character/mage/summonramos/ap_summonramos.nut");
 if(!nodLMEkG5NB4CHt)return false;
 local vF5W_hOG1hQlltcM2oqx = Zo4mCIfkvcq2GHCsR.sq_IsUseSkill(126); 
 if(vF5W_hOG1hQlltcM2oqx) 
 {
 Zo4mCIfkvcq2GHCsR.sq_IntVectClear();
 Zo4mCIfkvcq2GHCsR.sq_IntVectPush(0); 
 Zo4mCIfkvcq2GHCsR.sq_IntVectPush(sq_GetGroup(H664rxQvMQh7VPQQpBo)); 
 Zo4mCIfkvcq2GHCsR.sq_IntVectPush(sq_GetUniqueId(H664rxQvMQh7VPQQpBo)); 
 Zo4mCIfkvcq2GHCsR.sq_AddSetStatePacket(126, STATE_PRIORITY_USER, true); 
 return true; 
 }
 }
 else if(Zo4mCIfkvcq2GHCsR.isMessage()) 
 sq_AddMessage(71099);
 return false; 
} ;

 
function checkCommandEnable_mage_bugfall(NNIm0QViBsdsVvifLlFt)
{
 if(!NNIm0QViBsdsVvifLlFt) return false; 
 local j2vvqw9fm5wdhYEjY35B = NNIm0QViBsdsVvifLlFt.sq_GetState(); 
 if(j2vvqw9fm5wdhYEjY35B == STATE_STAND) 
 return true; 
 if(j2vvqw9fm5wdhYEjY35B == STATE_ATTACK) 
 {
 return NNIm0QViBsdsVvifLlFt.sq_IsCommandEnable(126); 
 }
 return true; 
} ;

 
function onSetState_mage_bugfall(NNIm0QViBsdsVvifLlFt, j2vvqw9fm5wdhYEjY35B, mNPdm_2UZdnZ0TCw2J, HXgywMbKYBrhOu7)
{
 if(!NNIm0QViBsdsVvifLlFt) return; 
 local tFqWe6OUARxg1IyErOwI5O = NNIm0QViBsdsVvifLlFt.sq_GetVectorData(mNPdm_2UZdnZ0TCw2J, 0); 
 NNIm0QViBsdsVvifLlFt.setSkillSubState(tFqWe6OUARxg1IyErOwI5O); 
 switch(tFqWe6OUARxg1IyErOwI5O)
 {
 case 0:
 NNIm0QViBsdsVvifLlFt.sq_StopMove(); 
 NNIm0QViBsdsVvifLlFt.sq_SetCurrentAnimation(142);
 local z28gPUNKEXGJgZyeUe = sq_GetSkillLevel(NNIm0QViBsdsVvifLlFt, 126); 
 local Wmc8JNOWw_5jAfyGm4PN = sq_GetCastTime(NNIm0QViBsdsVvifLlFt, 126, z28gPUNKEXGJgZyeUe); 
 sq_StartDrawCastGauge(NNIm0QViBsdsVvifLlFt, Wmc8JNOWw_5jAfyGm4PN, true); 
 local HDLcrLKPMcccfe_LXpj14DKv = NNIm0QViBsdsVvifLlFt.getCurrentAnimation(); 
 local rz95I7NrAPFRTE6KL = HDLcrLKPMcccfe_LXpj14DKv.getDelaySum(false); 
 
 NNIm0QViBsdsVvifLlFt.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 local QQCfqyVYDoNC0 = HDLcrLKPMcccfe_LXpj14DKv.getDelaySum(false); 
 local k2qgOTogniRzetuIawemdBn = QQCfqyVYDoNC0.tofloat() / rz95I7NrAPFRTE6KL.tofloat(); 
 local hXq1dYuHPLpWlO9tV62R = (Wmc8JNOWw_5jAfyGm4PN.tofloat() * k2qgOTogniRzetuIawemdBn).tointeger(); 
 NNIm0QViBsdsVvifLlFt.getVar().clear_vector(); 
 NNIm0QViBsdsVvifLlFt.getVar().push_vector(hXq1dYuHPLpWlO9tV62R); 
 local S2Ih4MDOlngxz6Gxi1X1G = sq_GetCNRDObjectToActiveObject(
 sq_GetObject(NNIm0QViBsdsVvifLlFt, NNIm0QViBsdsVvifLlFt.sq_GetVectorData(mNPdm_2UZdnZ0TCw2J, 1), NNIm0QViBsdsVvifLlFt.sq_GetVectorData(mNPdm_2UZdnZ0TCw2J, 2))
 ); 
 if(S2Ih4MDOlngxz6Gxi1X1G && !S2Ih4MDOlngxz6Gxi1X1G.isDead()) 
 {
 local kVYyR1NTuCCBWKzEiIx6u = NNIm0QViBsdsVvifLlFt.getDirection(); 
 local V7MEsST59RVBOA = NNIm0QViBsdsVvifLlFt.getXPos(); 
 local LsSSGozmbcB0YAebOx11b = NNIm0QViBsdsVvifLlFt.getYPos(); 
 local wIr_qDo0T9OLl = sq_GetDistancePos(V7MEsST59RVBOA, NNIm0QViBsdsVvifLlFt.getDirection(), 100); 
 
 sq_MoveToNearMovablePos(S2Ih4MDOlngxz6Gxi1X1G,
 wIr_qDo0T9OLl, LsSSGozmbcB0YAebOx11b, 0, 
 V7MEsST59RVBOA, LsSSGozmbcB0YAebOx11b, 0,
 100, -1, 5);
 sq_SetCurrentDirection(S2Ih4MDOlngxz6Gxi1X1G, kVYyR1NTuCCBWKzEiIx6u); 
 if(S2Ih4MDOlngxz6Gxi1X1G.isMyControlObject()) 
 {
 local Fdz1lmk6hA_sB5t = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(Fdz1lmk6hA_sB5t); 
 sq_IntVectorPush(Fdz1lmk6hA_sB5t, 11); 
 sq_AddSetStatePacketActiveObject(S2Ih4MDOlngxz6Gxi1X1G, STATE_ATTACK, Fdz1lmk6hA_sB5t, STATE_PRIORITY_FORCE);
 S2Ih4MDOlngxz6Gxi1X1G.flushSetStatePacket(); 
 }
 }
 break;
 case 1:
 NNIm0QViBsdsVvifLlFt.sq_SetCurrentAnimation(143);
 break;
 }
} ;

function onProcCon_mage_bugfall(uwmt2Mm24n2Y2GEQKWfP5UTu)
{
 if(!uwmt2Mm24n2Y2GEQKWfP5UTu) return;
 local t8M_PXBs_53uwX = uwmt2Mm24n2Y2GEQKWfP5UTu.getSkillSubState(); 
 if(t8M_PXBs_53uwX == 0)
 {
 local VGjEotGOxKcDTOXznoXNH = uwmt2Mm24n2Y2GEQKWfP5UTu.getVar().get_vector(0); 
 if(uwmt2Mm24n2Y2GEQKWfP5UTu.sq_GetStateTimer() >= VGjEotGOxKcDTOXznoXNH) 
 {
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IntVectClear();
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IntVectPush(1); 
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_AddSetStatePacket(126, STATE_PRIORITY_USER, true); 
 }
 }
} ;

function onEndState_mage_bugfall(uwmt2Mm24n2Y2GEQKWfP5UTu, t8M_PXBs_53uwX)
{
 if(!uwmt2Mm24n2Y2GEQKWfP5UTu) return;
 if(t8M_PXBs_53uwX != 126)
 sq_EndDrawCastGauge(uwmt2Mm24n2Y2GEQKWfP5UTu); 
} ;

 
function onEndCurrentAni_mage_bugfall(EUS09I5XEWSNJpMZ80wPDe)
{
 if(!EUS09I5XEWSNJpMZ80wPDe) return;
 if(!EUS09I5XEWSNJpMZ80wPDe.sq_IsMyControlObject()) return;
 local DM_j74uKMPtAxxSky4f7vva = EUS09I5XEWSNJpMZ80wPDe.getSkillSubState(); 
 switch(DM_j74uKMPtAxxSky4f7vva)
 {
 case 1:
 EUS09I5XEWSNJpMZ80wPDe.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;


