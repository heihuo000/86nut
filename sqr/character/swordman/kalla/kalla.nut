

function onAfterSetState_swordman_kalla(MZJkWei3Ck5hldWU5u, PdS2a7ApkG, eD_buMT_5jAj, ERYATPBqaVfee)
{
 if(!MZJkWei3Ck5hldWU5u) return;
 local WpKZKySfahC6R26wQVVvcI = MZJkWei3Ck5hldWU5u.sq_GetVectorData(eD_buMT_5jAj, 0); 
 local _YOLMPJEs387UynZ = MZJkWei3Ck5hldWU5u.sq_GetVectorData(eD_buMT_5jAj, 1); 
 MZJkWei3Ck5hldWU5u.getVar().clear_vector(); 
 MZJkWei3Ck5hldWU5u.getVar().push_vector(WpKZKySfahC6R26wQVVvcI); 
 MZJkWei3Ck5hldWU5u.getVar().push_vector(_YOLMPJEs387UynZ); 
 if(WpKZKySfahC6R26wQVVvcI == 0 && _YOLMPJEs387UynZ!=-1) 
 {
 local QqpuHn5C49sl = null; 
 switch(_YOLMPJEs387UynZ)
 {
 case 0:
 QqpuHn5C49sl = MZJkWei3Ck5hldWU5u.sq_GetAttackAni(1); 
 break;
 case 1:
 QqpuHn5C49sl = MZJkWei3Ck5hldWU5u.sq_GetAttackAni(0); 
 break;
 case 2:
 QqpuHn5C49sl = sq_GetCustomAni(MZJkWei3Ck5hldWU5u, 57); 
 break;
 }
 if(QqpuHn5C49sl != null)
 {
 sq_Rewind(QqpuHn5C49sl); 
 MZJkWei3Ck5hldWU5u.setCurrentAnimation(QqpuHn5C49sl); 
 }
 }
 MZJkWei3Ck5hldWU5u.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;


function onProcCon_swordman_kalla(obj)
{
 if(!obj) return;
 local cctKI3ueg7NtnPwOwW3MP6M = obj.getVar().get_vector(0); 
 local LGgNwQRekfy48 = obj.getVar().get_vector(1); 
 
 if(cctKI3ueg7NtnPwOwW3MP6M == 0 && LGgNwQRekfy48 != -1
 && CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_kalla.nut")
 && CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_ghoststep.nut"))
 {
 local lSNf0YWfLibcEOhT = sq_GetCurrentAnimation(obj); 
 local hc01XUp0HxSD = 0; 
 switch(LGgNwQRekfy48)
 {
 case 0:hc01XUp0HxSD = -8; break;
 case 1:hc01XUp0HxSD = -7; break;
 }
 if(hc01XUp0HxSD != 0)
 {
 local m6mAyp1s6sEl = sq_GetAniFrameNumber(lSNf0YWfLibcEOhT, 0) + hc01XUp0HxSD; 
 if(sq_GetAnimationFrameIndex(lSNf0YWfLibcEOhT) >= m6mAyp1s6sEl) 
 {
 sq_SetKeyxEnable(obj, E_ATTACK_COMMAND, true); 
 if(sq_IsEnterCommand(obj, E_ATTACK_COMMAND)) 
 {
 obj.sq_IntVectClear();
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(LGgNwQRekfy48+1); 
 obj.sq_AddSetStatePacket(44, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 }
 
 if(!sq_GetSkill(obj, 169).isInCoolTime())
 { 
 obj.setSkillCommandEnable(169, true); 
 if(obj.sq_IsEnterSkill(169) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(169); 
 if(isUseSkill)
 {
 obj.sq_IntVectClear(); 
 obj.sq_IntVectPush(1); 
 obj.sq_IntVectPush(1); 
 obj.sq_IntVectPush(200); 
 obj.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 237).isInCoolTime())
 { 
 obj.setSkillCommandEnable(237, true); 
 if(obj.sq_IsEnterSkill(237) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(237); 
 if(isUseSkill)
 {
 obj.sq_IntVectClear(); 
 obj.sq_IntVectPush(0); 
 obj.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 238).isInCoolTime())
 { 
 obj.setSkillCommandEnable(238, true); 
 if(obj.sq_IsEnterSkill(238) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(238); 
 if(isUseSkill)
 {

 obj.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 239).isInCoolTime())
 { 
 obj.setSkillCommandEnable(239, true); 
 if(obj.sq_IsEnterSkill(239) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(239); 
 if(isUseSkill)
 {

 obj.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 240).isInCoolTime())
 { 
 obj.setSkillCommandEnable(240, true); 
 if(obj.sq_IsEnterSkill(240) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(240); 
 if(isUseSkill)
 {

 obj.sq_AddSetStatePacket(240, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 241).isInCoolTime())
 { 
 obj.setSkillCommandEnable(241, true); 
 if(obj.sq_IsEnterSkill(241) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(241); 
 if(isUseSkill)
 {

 obj.sq_AddSetStatePacket(241, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 247).isInCoolTime())
 { 
 obj.setSkillCommandEnable(247, true); 
 if(obj.sq_IsEnterSkill(247) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(247); 
 if(isUseSkill)
 {

 obj.sq_AddSetStatePacket(247, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 5).isInCoolTime())
 { 
 obj.setSkillCommandEnable(5, true); 
 if(obj.sq_IsEnterSkill(5) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(5); 
 if(isUseSkill)
 {
 obj.sq_IntVectClear(); 
 obj.sq_IntVectPush(1); 
 obj.sq_AddSetStatePacket(20, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 8).isInCoolTime())
 { 
 obj.setSkillCommandEnable(8, true); 
 if(obj.sq_IsEnterSkill(8) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(8); 
 if(isUseSkill)
 {
 obj.sq_IntVectClear(); 

 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(obj.getDirection());
 obj.sq_IntVectPush(1); 
 obj.sq_AddSetStatePacket(22, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 77).isInCoolTime())
 { 
 obj.setSkillCommandEnable(77, true); 
 if(obj.sq_IsEnterSkill(77) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(77); 
 if(isUseSkill)
 {
 obj.sq_IntVectClear(); 

 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(1);
 obj.sq_IntVectPush(2); 
 obj.sq_AddSetStatePacket(42, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 111).isInCoolTime())
 { 
 obj.setSkillCommandEnable(111, true); 
 if(obj.sq_IsEnterSkill(111) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(111); 
 if(isUseSkill)
 {
 obj.sq_IntVectClear(); 
 obj.sq_IntVectPush(0); 
 obj.sq_AddSetStatePacket(65, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 249).isInCoolTime())
 { 
 obj.setSkillCommandEnable(249, true); 
 if(obj.sq_IsEnterSkill(249) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(249); 
 if(isUseSkill)
 {
 obj.sq_IntVectClear(); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(0); 
 obj.sq_AddSetStatePacket(249, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 60).isInCoolTime())
 { 
 obj.setSkillCommandEnable(60, true); 
 if(obj.sq_IsEnterSkill(60) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(60); 
 if(isUseSkill)
 {
 obj.sq_IntVectClear(); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(1); 
 obj.sq_AddSetStatePacket(33, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 95).isInCoolTime())
 { 
 obj.setSkillCommandEnable(95, true); 
 if(obj.sq_IsEnterSkill(95) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(95); 
 if(isUseSkill)
 {

 obj.sq_AddSetStatePacket(55, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 87).isInCoolTime())
 { 
 obj.setSkillCommandEnable(87, true); 
 if(obj.sq_IsEnterSkill(87) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(87); 
 if(isUseSkill)
 {
 obj.sq_IntVectClear(); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(1); 
 obj.sq_AddSetStatePacket(50, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 41).isInCoolTime())
 { 
 obj.setSkillCommandEnable(41, true); 
 if(obj.sq_IsEnterSkill(41) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(41); 
 if(isUseSkill)
 {
 obj.sq_IntVectClear(); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(41); 
 obj.sq_IntVectPush(400); 
 obj.sq_IntVectPush(300); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(4); 
 obj.sq_IntVectPush(0); 
 obj.sq_AddSetStatePacket(13, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 25).isInCoolTime())
 { 
 obj.setSkillCommandEnable(25, true); 
 if(obj.sq_IsEnterSkill(25) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(25); 
 if(isUseSkill)
 {
 obj.sq_IntVectClear(); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(25); 
 obj.sq_IntVectPush(300); 
 obj.sq_IntVectPush(250); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(4); 
 obj.sq_IntVectPush(0); 
 obj.sq_AddSetStatePacket(13, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 36).isInCoolTime())
 { 
 obj.setSkillCommandEnable(36, true); 
 if(obj.sq_IsEnterSkill(36) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(36); 
 if(isUseSkill)
 {
 obj.sq_IntVectClear(); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(36); 
 obj.sq_IntVectPush(500); 
 obj.sq_IntVectPush(450); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(4); 
 obj.sq_IntVectPush(0); 
 obj.sq_AddSetStatePacket(13, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 75).isInCoolTime())
 { 
 obj.setSkillCommandEnable(75, true); 
 if(obj.sq_IsEnterSkill(75) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(75); 
 if(isUseSkill)
 {
 obj.sq_IntVectClear(); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(75); 
 obj.sq_IntVectPush(500); 
 obj.sq_IntVectPush(450); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(4); 
 obj.sq_IntVectPush(0); 
 obj.sq_AddSetStatePacket(13, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 if(!sq_GetSkill(obj, 96).isInCoolTime())
 { 
 obj.setSkillCommandEnable(96, true); 
 if(obj.sq_IsEnterSkill(96) != -1) 
 {
 local isUseSkill = obj.sq_IsUseSkill(96); 
 if(isUseSkill)
 {
 obj.sq_IntVectClear(); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(96); 
 obj.sq_IntVectPush(500); 
 obj.sq_IntVectPush(600); 
 obj.sq_IntVectPush(0); 
 obj.sq_IntVectPush(4); 
 obj.sq_IntVectPush(0); 
 obj.sq_AddSetStatePacket(13, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
}
