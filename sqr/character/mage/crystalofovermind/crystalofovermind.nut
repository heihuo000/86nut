
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_mage_crystalofovermind(rBzERVpuv_c4)
{
 if(!rBzERVpuv_c4) return false; 
 local KrpKoM45CRSBujGMJsdn6m = rBzERVpuv_c4.sq_IsUseSkill(251); 
 if(KrpKoM45CRSBujGMJsdn6m) 
 {
 rBzERVpuv_c4.sq_IntVectClear();
 rBzERVpuv_c4.sq_IntVectPush(0); 
 rBzERVpuv_c4.sq_AddSetStatePacket(251, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_crystalofovermind(njUgAYJ722)
{
 if(!njUgAYJ722) return false; 
 local xTaWE9IF3DlZr = njUgAYJ722.sq_GetState(); 
 if(xTaWE9IF3DlZr == STATE_STAND) 
 return true; 
 if(xTaWE9IF3DlZr == STATE_ATTACK) 
 {
 return njUgAYJ722.sq_IsCommandEnable(251); 
 }
 return true; 
} ;

 
function onSetState_mage_crystalofovermind(njUgAYJ722, xTaWE9IF3DlZr, oPB3fogCstrdpQxOuy, wqoXsltWCbt)
{
 if(!njUgAYJ722) return; 
 njUgAYJ722.sq_StopMove(); 
 local RlGmVZ3USH = njUgAYJ722.sq_GetVectorData(oPB3fogCstrdpQxOuy, 0); 
 njUgAYJ722.setSkillSubState(RlGmVZ3USH); 
 switch(RlGmVZ3USH)
 {
 case 0:
 njUgAYJ722.sq_IsEnterSkillLastKeyUnits(251); 
 njUgAYJ722.setCurrentAnimation(njUgAYJ722.sq_GetThrowChargeAni(1)); 
 local j6fuJ7odceFejLHE = sq_GetSkillLevel(njUgAYJ722, 251); 
 local iIxg6rYCv0nJrQseOM = sq_GetCastTime(njUgAYJ722, 251, j6fuJ7odceFejLHE); 
 sq_StartDrawCastGauge(njUgAYJ722, iIxg6rYCv0nJrQseOM, true); 
 local MehxEwAHDufO6ulb3s4eZ = njUgAYJ722.sq_GetLevelData(251, 3, j6fuJ7odceFejLHE); 
 local la6SvoRk_PZ1TgSrLrfg = njUgAYJ722.getCurrentAnimation(); 
 local O8plQS3oKRFXuL4fLYkesuT = la6SvoRk_PZ1TgSrLrfg.getDelaySum(false); 
 
 njUgAYJ722.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 local tE3DJxLJcHIwGoBbQ88567 = la6SvoRk_PZ1TgSrLrfg.getDelaySum(false); 
 local EUK0nVengzxfNIi = tE3DJxLJcHIwGoBbQ88567.tofloat() / O8plQS3oKRFXuL4fLYkesuT.tofloat(); 
 local zDBhlqXmmPXEe7QO = (iIxg6rYCv0nJrQseOM.tofloat() * EUK0nVengzxfNIi).tointeger(); 
 njUgAYJ722.getVar().setBool(0, false); 
 njUgAYJ722.getVar().clear_vector(); 
 njUgAYJ722.getVar().push_vector(zDBhlqXmmPXEe7QO); 
 njUgAYJ722.getVar().push_vector(MehxEwAHDufO6ulb3s4eZ); 
 njUgAYJ722.sq_PlaySound("WZ_CRYSTALOVERMIND_01_1", 9005); 
 break;
 case 1:
 local dv6_zpXpupOpVMKoIDp9PVfD = njUgAYJ722.sq_GetVectorData(oPB3fogCstrdpQxOuy, 1); 
 local iIxg6rYCv0nJrQseOM = njUgAYJ722.getVar().get_vector(0); 
 local MehxEwAHDufO6ulb3s4eZ = njUgAYJ722.getVar().get_vector(1); 
 njUgAYJ722.sq_SetCurrentAnimation(117); 
 
 njUgAYJ722.sq_AddStateLayerAnimation(1, njUgAYJ722.sq_CreateCNRDAnimation("effect/animation/crystalofovermind/crystalofovermind_summon_body_front.ani"), 0, 0);
 
 njUgAYJ722.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 njUgAYJ722.sq_PlaySound("WZ_CRYSTALOVERMIND_01_2"); 
 if(njUgAYJ722.sq_IsMyControlObject())
 {
 local j6fuJ7odceFejLHE = sq_GetSkillLevel(njUgAYJ722, 251); 
 local utLL7RPvW1H6NuJCTrwh = njUgAYJ722.sq_GetLevelData(251, 0, j6fuJ7odceFejLHE); 
 local LAZMqfiHfI = njUgAYJ722.sq_GetLevelData(251, 1, j6fuJ7odceFejLHE); 
 local ngwixhlEWTP = sq_GetUniformVelocity(utLL7RPvW1H6NuJCTrwh, LAZMqfiHfI, dv6_zpXpupOpVMKoIDp9PVfD - iIxg6rYCv0nJrQseOM, MehxEwAHDufO6ulb3s4eZ); 
 
 njUgAYJ722.sq_StartWrite();
 njUgAYJ722.sq_WriteDword(251); 
 njUgAYJ722.sq_WriteDword(ngwixhlEWTP);
 njUgAYJ722.sq_WriteDword(njUgAYJ722.sq_GetBonusRateWithPassive(251, 251, 2, 1.0)); 
 njUgAYJ722.sq_SendCreatePassiveObjectPacket(24372, 0, 300, 0, 0);
 }
 break;
 }
} ;

function onEndState_mage_crystalofovermind(Nz7JFZkCizhIjjV6ehwkt6L, yaSdGRXPcsNho6s)
{
 if(!Nz7JFZkCizhIjjV6ehwkt6L) return;
 if(yaSdGRXPcsNho6s != 251)
 sq_EndDrawCastGauge(Nz7JFZkCizhIjjV6ehwkt6L); 
 Nz7JFZkCizhIjjV6ehwkt6L.stopSound(9005); 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Nz7JFZkCizhIjjV6ehwkt6L, "character/mage/appendage/ap_chargingeffect.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(Nz7JFZkCizhIjjV6ehwkt6L, "character/mage/appendage/ap_chargingeffect.nut");
} ;

function onProcCon_mage_crystalofovermind(lBaEXWNDGv7_tVohcGMjX)
{
 if(!lBaEXWNDGv7_tVohcGMjX) return;
 local uLSt3cZqKSLQEJvULdf = lBaEXWNDGv7_tVohcGMjX.getSkillSubState(); 
 if(uLSt3cZqKSLQEJvULdf == 0)
 {
 local rrPOvvTvgoG9KPJlKUnzZTY = lBaEXWNDGv7_tVohcGMjX.getVar().get_vector(0); 
 local uYazZJBR20mX93I = lBaEXWNDGv7_tVohcGMjX.sq_GetStateTimer(); 
 
 if(uYazZJBR20mX93I >= rrPOvvTvgoG9KPJlKUnzZTY)
 {
 if(lBaEXWNDGv7_tVohcGMjX.isDownSkillLastKey()) 
 {
 
 if(lBaEXWNDGv7_tVohcGMjX.getVar().getBool(0) == false)
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteDword(lBaEXWNDGv7_tVohcGMjX.getVar().get_vector(1)); 
 sq_SendChangeSkillEffectPacket(lBaEXWNDGv7_tVohcGMjX, 250); 
 lBaEXWNDGv7_tVohcGMjX.getVar().setBool(0, true); 
 }
 }
 else
 {
 lBaEXWNDGv7_tVohcGMjX.sq_IntVectClear();
 lBaEXWNDGv7_tVohcGMjX.sq_IntVectPush(1); 
 lBaEXWNDGv7_tVohcGMjX.sq_IntVectPush(uYazZJBR20mX93I);
 lBaEXWNDGv7_tVohcGMjX.sq_AddSetStatePacket(251, STATE_PRIORITY_USER, true); 
 }
 }
 }
} ;

 
function onEndCurrentAni_mage_crystalofovermind(e8AJZD_AOoW)
{
 if(!e8AJZD_AOoW) return;
 if(!e8AJZD_AOoW.sq_IsMyControlObject()) return;
 local R7o8jywnJsOk3MNCS43wiqp5 = e8AJZD_AOoW.getSkillSubState(); 
 if(R7o8jywnJsOk3MNCS43wiqp5 == 1)
 e8AJZD_AOoW.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

