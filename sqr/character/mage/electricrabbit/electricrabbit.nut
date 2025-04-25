
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_mage_electricrabbit(NNIm0QViBsdsVvifLlFt)
{
 if(!NNIm0QViBsdsVvifLlFt) return false; 
 local j2vvqw9fm5wdhYEjY35B = NNIm0QViBsdsVvifLlFt.sq_IsUseSkill(131); 
 if(j2vvqw9fm5wdhYEjY35B) 
 {
 
 local mNPdm_2UZdnZ0TCw2J = sq_GetSkillLevel(NNIm0QViBsdsVvifLlFt, 131); 
 local HXgywMbKYBrhOu7 = NNIm0QViBsdsVvifLlFt.sq_GetLevelData(131, 0, mNPdm_2UZdnZ0TCw2J); 
 local tFqWe6OUARxg1IyErOwI5O = NNIm0QViBsdsVvifLlFt.sq_GetLevelData(131, 1, mNPdm_2UZdnZ0TCw2J); 
 local z28gPUNKEXGJgZyeUe = NNIm0QViBsdsVvifLlFt.sq_GetLevelData(131, 2, mNPdm_2UZdnZ0TCw2J); 
 local Wmc8JNOWw_5jAfyGm4PN = -1; 
 if(sq_getRandom(0, HXgywMbKYBrhOu7 + tFqWe6OUARxg1IyErOwI5O + z28gPUNKEXGJgZyeUe) < HXgywMbKYBrhOu7) 
 Wmc8JNOWw_5jAfyGm4PN = 3;
 else if(sq_getRandom(0, tFqWe6OUARxg1IyErOwI5O + z28gPUNKEXGJgZyeUe) < tFqWe6OUARxg1IyErOwI5O) 
 Wmc8JNOWw_5jAfyGm4PN = 4;
 else
 Wmc8JNOWw_5jAfyGm4PN = 5;
 NNIm0QViBsdsVvifLlFt.sq_IntVectClear();
 NNIm0QViBsdsVvifLlFt.sq_IntVectPush(0); 
 NNIm0QViBsdsVvifLlFt.sq_IntVectPush(Wmc8JNOWw_5jAfyGm4PN); 
 NNIm0QViBsdsVvifLlFt.sq_AddSetStatePacket(131, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_electricrabbit(lab0MC_tSCssQCuH)
{
 if(!lab0MC_tSCssQCuH) return false; 
 local kwxmPtY6U0_9fv3qQ27t = lab0MC_tSCssQCuH.sq_GetState(); 
 if(kwxmPtY6U0_9fv3qQ27t == STATE_STAND) 
 return true; 
 if(kwxmPtY6U0_9fv3qQ27t == STATE_ATTACK) 
 {
 return lab0MC_tSCssQCuH.sq_IsCommandEnable(131); 
 }
 return true; 
} ;

 
function onSetState_mage_electricrabbit(lab0MC_tSCssQCuH, kwxmPtY6U0_9fv3qQ27t, dYKX6JCy46ig, U4oZE6ZCoX_5fg)
{
 if(!lab0MC_tSCssQCuH) return; 
 lab0MC_tSCssQCuH.sq_StopMove(); 
 local p0L8Wm5vRYRgAK = lab0MC_tSCssQCuH.sq_GetVectorData(dYKX6JCy46ig, 0); 
 lab0MC_tSCssQCuH.setSkillSubState(p0L8Wm5vRYRgAK); 
 switch(p0L8Wm5vRYRgAK)
 {
 case 0:
 lab0MC_tSCssQCuH.sq_SetCurrentAnimation(123); 
 local CPS3CMZOj1drVSKHPkW = sq_GetSkillLevel(lab0MC_tSCssQCuH, 131); 
 local ry8GAvnYrM = sq_GetCastTime(lab0MC_tSCssQCuH, 131, CPS3CMZOj1drVSKHPkW); 
 sq_StartDrawCastGauge(lab0MC_tSCssQCuH, ry8GAvnYrM, true); 
 local u3I_iaaxaopk7tsqDDJZ = lab0MC_tSCssQCuH.getCurrentAnimation(); 
 sq_SetFrameDelayTime(u3I_iaaxaopk7tsqDDJZ, 0, ry8GAvnYrM); 
 lab0MC_tSCssQCuH.sq_PlaySound("WZ_ELETRIC_RABBIT_CAST");
 local uGnYQNpgjrxkotqySmxhBoSA = lab0MC_tSCssQCuH.sq_GetVectorData(dYKX6JCy46ig, 1); 
 lab0MC_tSCssQCuH.getVar().clear_vector(); 
 lab0MC_tSCssQCuH.getVar().push_vector(uGnYQNpgjrxkotqySmxhBoSA); 
 
 local qmgdFXf6D0y8sOf05X5H0G = lab0MC_tSCssQCuH.sq_GetLevelData(131, 10, CPS3CMZOj1drVSKHPkW); 
 
 local pC0edx0K2F = CNSquirrelAppendage.sq_AppendAppendage(lab0MC_tSCssQCuH, lab0MC_tSCssQCuH, 131, true, "character/mage/electricrabbit/ap_electricrabbit.nut", true);
 pC0edx0K2F.getVar("hpRate").clear_vector(); 
 pC0edx0K2F.getVar("hpRate").push_vector(qmgdFXf6D0y8sOf05X5H0G); 
 lab0MC_tSCssQCuH.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 break;
 case 1:
 if(lab0MC_tSCssQCuH.getVar().get_vector(0) == 3) 
 lab0MC_tSCssQCuH.sq_SetCurrentAnimation(125); 
 else
 lab0MC_tSCssQCuH.sq_SetCurrentAnimation(124); 
 break;
 case 2:
 if(lab0MC_tSCssQCuH.getVar().get_vector(0) == 3) 
 lab0MC_tSCssQCuH.sq_SetCurrentAnimation(127); 
 else
 lab0MC_tSCssQCuH.sq_SetCurrentAnimation(126); 
 break;
 }
} ;

function onKeyFrameFlag_mage_electricrabbit(uwmt2Mm24n2Y2GEQKWfP5UTu, t8M_PXBs_53uwX)
{
 if(!uwmt2Mm24n2Y2GEQKWfP5UTu) return false;
 local VGjEotGOxKcDTOXznoXNH = uwmt2Mm24n2Y2GEQKWfP5UTu.getSkillSubState(); 
 switch(VGjEotGOxKcDTOXznoXNH)
 {
 case 0:
 switch(t8M_PXBs_53uwX)
 {
 case 1:
 if(uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IsMyControlObject())
 {
 
 local edT5p3PnaYUTHoy1N6 = uwmt2Mm24n2Y2GEQKWfP5UTu.getVar().get_vector(0);
 local vx9t8oT5EvNiNZ = sq_GetSkillLevel(uwmt2Mm24n2Y2GEQKWfP5UTu, 131); 
 local F4MrCSMVbJ50ZW = uwmt2Mm24n2Y2GEQKWfP5UTu.sq_GetBonusRateWithPassive(131, 131, edT5p3PnaYUTHoy1N6, 1.0); 
 local WsGUh6X8vFYN6 = uwmt2Mm24n2Y2GEQKWfP5UTu.sq_GetBonusRateWithPassive(131, 131, 6, 1.0); 
 local lfPAcnw3Sw = uwmt2Mm24n2Y2GEQKWfP5UTu.sq_GetLevelData(131, 7, vx9t8oT5EvNiNZ); 
 local nmEg2oSxh0RxiceKC = uwmt2Mm24n2Y2GEQKWfP5UTu.sq_GetLevelData(131, 8, vx9t8oT5EvNiNZ); 
 local vuGLXwldug22lWR9 = uwmt2Mm24n2Y2GEQKWfP5UTu.sq_GetLevelData(131, 9, vx9t8oT5EvNiNZ); 
 
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_StartWrite();
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_WriteDword(131); 
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_WriteDword(edT5p3PnaYUTHoy1N6); 
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_WriteDword(F4MrCSMVbJ50ZW);
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_WriteDword(WsGUh6X8vFYN6);
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_WriteDword(lfPAcnw3Sw);
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_WriteDword(nmEg2oSxh0RxiceKC);
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_WriteDword(vuGLXwldug22lWR9);
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_SendCreatePassiveObjectPacket(24372, 0, 120, -1, 0);
 }
 break;
 case 2:
 
 local edT5p3PnaYUTHoy1N6 = uwmt2Mm24n2Y2GEQKWfP5UTu.getVar().get_vector(0);
 if(edT5p3PnaYUTHoy1N6!=3) 
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_PlaySound("R_WZ_ELETRIC_RABBIT");
 break;
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_mage_electricrabbit(Isf0yQTA2j)
{
 if(!Isf0yQTA2j) return;
 if(!Isf0yQTA2j.sq_IsMyControlObject()) return;
 local gN0sCdJwJfkODCTTU2O1lc34 = Isf0yQTA2j.getSkillSubState(); 
 if(gN0sCdJwJfkODCTTU2O1lc34 != 2)
 {
 Isf0yQTA2j.sq_IntVectClear();
 Isf0yQTA2j.sq_IntVectPush(gN0sCdJwJfkODCTTU2O1lc34 + 1); 
 Isf0yQTA2j.sq_AddSetStatePacket(131, STATE_PRIORITY_USER, true); 
 }
 else
 Isf0yQTA2j.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onEndState_mage_electricrabbit(Isf0yQTA2j, gN0sCdJwJfkODCTTU2O1lc34)
{
 if(!Isf0yQTA2j) return;
 if(gN0sCdJwJfkODCTTU2O1lc34 != 131)
 {
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Isf0yQTA2j, "character/mage/electricrabbit/ap_electricrabbit.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(Isf0yQTA2j, "character/mage/electricrabbit/ap_electricrabbit.nut");
 }
} ;

