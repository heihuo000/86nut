
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



getroottable()["thief_novaremnant_pos"] <-{};
getroottable()["thief_novaremnant_pos"] =
[
  
 [-138, -35, 19],
 [138, -35, 346],
 [134, 12, 203],
 [-134, 12, 162],
 [-78, -20, 19],
 [78, -20, 346],
 [68, 6, 203],
];



 
function checkExecutableSkill_thief_novaremnant(o3mkAjPCLBZSWTYLdUD6S)
{
 
 
 
 
 
 
 
 
 if(!o3mkAjPCLBZSWTYLdUD6S) return false; 
 local B3XcINIaSmti6qcspHY = o3mkAjPCLBZSWTYLdUD6S.sq_IsUseSkill(222); 
 if(B3XcINIaSmti6qcspHY) 
 {
 o3mkAjPCLBZSWTYLdUD6S.sq_IntVectClear();
 o3mkAjPCLBZSWTYLdUD6S.sq_IntVectPush((o3mkAjPCLBZSWTYLdUD6S.getState() == STATE_JUMP || o3mkAjPCLBZSWTYLdUD6S.getState() == STATE_JUMP_ATTACK) ? 0:1); 
 o3mkAjPCLBZSWTYLdUD6S.sq_AddSetStatePacket(222, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} 

 
function checkCommandEnable_thief_novaremnant(RbDrK9ySg_Q3h81qY5)
{
 if(!RbDrK9ySg_Q3h81qY5) return false; 
 local tkwqbnh_6DKOWEvSWO = RbDrK9ySg_Q3h81qY5.sq_GetState(); 
 if(tkwqbnh_6DKOWEvSWO == STATE_STAND) 
 return true; 
 if(tkwqbnh_6DKOWEvSWO == STATE_ATTACK) 
 {
 return RbDrK9ySg_Q3h81qY5.sq_IsCommandEnable(222); 
 }
 return true; 
} 

 
function onSetState_thief_novaremnant(RbDrK9ySg_Q3h81qY5, tkwqbnh_6DKOWEvSWO, KaJdml3vwiuvAl2E8fdyYl9, _bi_lZgklAuy)
{
 if(!RbDrK9ySg_Q3h81qY5) return; 
 RbDrK9ySg_Q3h81qY5.sq_StopMove(); 
 local tRPz2rOJy7um0 = RbDrK9ySg_Q3h81qY5.sq_GetVectorData(KaJdml3vwiuvAl2E8fdyYl9, 0); 
 RbDrK9ySg_Q3h81qY5.setSkillSubState(tRPz2rOJy7um0); 
 switch(tRPz2rOJy7um0)
 {
 case 0: 
 case 1: 
 RbDrK9ySg_Q3h81qY5.getVar().clear_vector(); 
 RbDrK9ySg_Q3h81qY5.getVar("move").clear_vector(); 
 if(tRPz2rOJy7um0 == 0)
 {
 RbDrK9ySg_Q3h81qY5.sq_ZStop(); 
 RbDrK9ySg_Q3h81qY5.sq_SetCurrentAnimation(128);
 }
 else
 {
 RbDrK9ySg_Q3h81qY5.sq_SetCurrentAnimation(129);
 }
 RbDrK9ySg_Q3h81qY5.sq_SetCurrentAttackInfo(47);
 local ztzufqId1q44pXH = RbDrK9ySg_Q3h81qY5.sq_GetBonusRateWithPassive(222, 222, 3, 1.0); 
 RbDrK9ySg_Q3h81qY5.sq_SetCurrentAttackBonusRate(ztzufqId1q44pXH); 
 if(RbDrK9ySg_Q3h81qY5.sq_IsMyControlObject())
 {
 local _wFs3STFRtl = sq_flashScreen(RbDrK9ySg_Q3h81qY5, RbDrK9ySg_Q3h81qY5.sq_GetDelaySum(), 99990, 0, 178, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 RbDrK9ySg_Q3h81qY5.getVar("flashobj").clear_obj_vector(); 
 RbDrK9ySg_Q3h81qY5.getVar("flashobj").push_obj_vector(_wFs3STFRtl); 
 }
 break;
 case 2: 
 RbDrK9ySg_Q3h81qY5.setCurrentAnimation(null); 
 RbDrK9ySg_Q3h81qY5.setCurrentPos(RbDrK9ySg_Q3h81qY5.getVar().get_vector(4), RbDrK9ySg_Q3h81qY5.getVar().get_vector(5), 0); 
 RbDrK9ySg_Q3h81qY5.setTimeEvent(0, 150, 0, false); 
 break;
 case 3: 
 RbDrK9ySg_Q3h81qY5.sq_SetCurrentAnimation(130);
 RbDrK9ySg_Q3h81qY5.getVar("move").setBool(0,false); 
 RbDrK9ySg_Q3h81qY5.getVar("move").setBool(1,false); 
 RbDrK9ySg_Q3h81qY5.getVar("move").setBool(2,false); 
 RbDrK9ySg_Q3h81qY5.getVar("move").clear_vector(); 
 RbDrK9ySg_Q3h81qY5.getVar("move").push_vector(RbDrK9ySg_Q3h81qY5.getXPos()); 
 RbDrK9ySg_Q3h81qY5.getVar("move").push_vector(RbDrK9ySg_Q3h81qY5.getYPos()); 
 RbDrK9ySg_Q3h81qY5.getVar("move").push_vector(RbDrK9ySg_Q3h81qY5.getZPos()); 
 RbDrK9ySg_Q3h81qY5.getVar("move").push_vector(-200); 
 RbDrK9ySg_Q3h81qY5.getVar("move").push_vector(-50); 
 RbDrK9ySg_Q3h81qY5.getVar("move").push_vector(450); 
 RbDrK9ySg_Q3h81qY5.getVar("move").push_vector(450); 
 break;
 case 4:
 RbDrK9ySg_Q3h81qY5.setCurrentAnimation(null); 
 if(RbDrK9ySg_Q3h81qY5.sq_IsMyControlObject())
 {
 local Gh0jlc0eMxX5mO = RbDrK9ySg_Q3h81qY5.getDirection(); 
 local RgNXG0q85FYaEWIR8I = RbDrK9ySg_Q3h81qY5.getObjectManager(); 
 local YE9TRHZT5viIFsq = RgNXG0q85FYaEWIR8I.getFieldXPos(Gh0jlc0eMxX5mO == ENUM_DIRECTION_LEFT ? 800:0, ENUM_DRAWLAYER_NORMAL);
 local xYaTpWiVTFw = RgNXG0q85FYaEWIR8I.getFieldYPos(0, 0, ENUM_DRAWLAYER_NORMAL);
 local YoKSgw7MhAs5Cd4 = createPooledObjEff_qq506807329(RbDrK9ySg_Q3h81qY5, "character/thief/effect/animation/novaremnant/novaremnant_cut_scene.ani", YE9TRHZT5viIFsq, xYaTpWiVTFw, 0, ENUM_DRAWLAYER_COVER, Gh0jlc0eMxX5mO); 
 RbDrK9ySg_Q3h81qY5.getVar().setObject(0, YoKSgw7MhAs5Cd4);
 }
 break;
 case 5:
 RbDrK9ySg_Q3h81qY5.setCurrentPos(RbDrK9ySg_Q3h81qY5.getVar().get_vector(4), RbDrK9ySg_Q3h81qY5.getVar().get_vector(5), 0); 
 RbDrK9ySg_Q3h81qY5.sq_SetCurrentAnimation(131);
 local YoKSgw7MhAs5Cd4 = sq_AddDrawOnlyAniFromParent(RbDrK9ySg_Q3h81qY5, "passiveobject/script_sqr_nut_qq506807329/thief/animation/novaremnant/novaremnant_line_1.ani", 450, 0, 300); 
 sq_SetCustomRotate(YoKSgw7MhAs5Cd4, sq_ToRadian(215.0)); 
 RbDrK9ySg_Q3h81qY5.sq_PlaySound("TF_NOVA_REMNANT_FIN"); 
 if(RbDrK9ySg_Q3h81qY5.sq_IsMyControlObject()) 
 {
 
 RbDrK9ySg_Q3h81qY5.sq_StartWrite();
 RbDrK9ySg_Q3h81qY5.sq_WriteDword(222);
 RbDrK9ySg_Q3h81qY5.sq_WriteDword(2);
 RbDrK9ySg_Q3h81qY5.sq_WriteDword(RbDrK9ySg_Q3h81qY5.sq_GetBonusRateWithPassive(222, 222, 1, 1.0)); 
 sq_SendCreatePassiveObjectPacket(RbDrK9ySg_Q3h81qY5, 24378, 0, 0, 0, 0, RbDrK9ySg_Q3h81qY5.getDirection()); 
 }
 break;
 case 6:
 RbDrK9ySg_Q3h81qY5.sq_SetCurrentAnimation(132);
 sq_CreateDrawOnlyObject(RbDrK9ySg_Q3h81qY5, "character/thief/effect/animation/excelstrikehit4effectscreenline.ani", ENUM_DRAWLAYER_CONTACT, true); 
 RbDrK9ySg_Q3h81qY5.sq_PlaySound("R_TF_HITEND"); 
 break;
 }
 local PbpErwUTptABvU7nCwB5ML = RbDrK9ySg_Q3h81qY5.sq_GetDelaySum(); 
 RbDrK9ySg_Q3h81qY5.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local k56TwAvzjaiBiFuDuKYYma9c = RbDrK9ySg_Q3h81qY5.sq_GetDelaySum(); 
 RbDrK9ySg_Q3h81qY5.getVar("speedRate").setFloat(0, PbpErwUTptABvU7nCwB5ML.tofloat() / k56TwAvzjaiBiFuDuKYYma9c.tofloat()); 
 RbDrK9ySg_Q3h81qY5.getVar("speedRate").setFloat(1, k56TwAvzjaiBiFuDuKYYma9c.tofloat() / PbpErwUTptABvU7nCwB5ML.tofloat()); 
} 

function onProc_thief_novaremnant(lgGjVeHQPEif)
{
 if(!lgGjVeHQPEif) return;
 local efVFdFaM8W8FH65Er5cFVF = lgGjVeHQPEif.getSkillSubState(); 
 switch(efVFdFaM8W8FH65Er5cFVF)
 {
 case 0:
 case 1:
 if(lgGjVeHQPEif.getVar().size_vector() <= 0)return;
 local FNchXyZtlcVZxMCWW = lgGjVeHQPEif.getVar(); 
 local otGUT66ANc = sq_GetCurrentAnimation(lgGjVeHQPEif); 
 local HQCyKwJKfkPyfUiZt = sq_GetCurrentTime(otGUT66ANc) - otGUT66ANc.getDelaySum(FNchXyZtlcVZxMCWW.get_vector(0), FNchXyZtlcVZxMCWW.get_vector(1)); 
 local IoxZDDmA4pgp9ofOUV0 = otGUT66ANc.getDelaySum(FNchXyZtlcVZxMCWW.get_vector(2), FNchXyZtlcVZxMCWW.get_vector(3)); 
 local IG5StmkMk_ftL8at2XG = sq_GetDistancePos(FNchXyZtlcVZxMCWW.get_vector(4), lgGjVeHQPEif.getDirection(), sq_GetUniformVelocity(0, 2000, HQCyKwJKfkPyfUiZt, IoxZDDmA4pgp9ofOUV0)); 
 sq_setCurrentAxisPos(lgGjVeHQPEif, 0, IG5StmkMk_ftL8at2XG); 
 break;
 case 3:
 if(lgGjVeHQPEif.getVar("move").size_vector() <= 0)return;
 local A76vl3okZY0s = lgGjVeHQPEif.getVar("move"); 
 local otGUT66ANc = sq_GetCurrentAnimation(lgGjVeHQPEif); 
 local Towi06DM1su9c1oyEJ6G = sq_GetAnimationFrameIndex(otGUT66ANc);
 if(Towi06DM1su9c1oyEJ6G <= 1)
 {
 if(A76vl3okZY0s.getBool(0) == true)return; 
 local HQCyKwJKfkPyfUiZt = sq_GetCurrentTime(otGUT66ANc) ; 
 local IoxZDDmA4pgp9ofOUV0 = otGUT66ANc.getDelaySum(0, 1); 
 local IG5StmkMk_ftL8at2XG = sq_GetDistancePos(A76vl3okZY0s.get_vector(0), lgGjVeHQPEif.getDirection(), sq_GetUniformVelocity(0, A76vl3okZY0s.get_vector(3), HQCyKwJKfkPyfUiZt, IoxZDDmA4pgp9ofOUV0)); 
 local JaWUfgKDUcEiXYzjh1ETI = A76vl3okZY0s.get_vector(1) + sq_GetUniformVelocity(0, sq_GetDistancePos(0, lgGjVeHQPEif.getDirection(), A76vl3okZY0s.get_vector(4)), HQCyKwJKfkPyfUiZt, IoxZDDmA4pgp9ofOUV0);
 if(!lgGjVeHQPEif.isMovablePos(IG5StmkMk_ftL8at2XG, JaWUfgKDUcEiXYzjh1ETI)) 
 {
 A76vl3okZY0s.setBool(0,true);
 return;
 }
 sq_setCurrentAxisPos(lgGjVeHQPEif, 0, IG5StmkMk_ftL8at2XG); 
 sq_setCurrentAxisPos(lgGjVeHQPEif, 1, JaWUfgKDUcEiXYzjh1ETI); 
 }
 else if(Towi06DM1su9c1oyEJ6G >= 2)
 {
 if(A76vl3okZY0s.getBool(2) != true) 
 {
 A76vl3okZY0s.setBool(2, true);
 sq_AddDrawOnlyAniFromParent(lgGjVeHQPEif, "character/thief/effect/animation/novaremnant/novaremnant_jump_dust1.ani", 0, -1, 0); 
 }
 if(Towi06DM1su9c1oyEJ6G >= 3)
 {
 if(A76vl3okZY0s.getBool(1) != true) 
 {
 A76vl3okZY0s.set_vector(0, lgGjVeHQPEif.getXPos());
 A76vl3okZY0s.set_vector(1, lgGjVeHQPEif.getYPos());
 A76vl3okZY0s.setBool(1, true);
 }
 local HQCyKwJKfkPyfUiZt = sq_GetCurrentTime(otGUT66ANc) - otGUT66ANc.getDelaySum(0, 2); 
 local IoxZDDmA4pgp9ofOUV0 = otGUT66ANc.getDelaySum(3, 4); 
 local IG5StmkMk_ftL8at2XG = sq_GetDistancePos(A76vl3okZY0s.get_vector(0), lgGjVeHQPEif.getDirection(), sq_GetUniformVelocity(0, A76vl3okZY0s.get_vector(5), HQCyKwJKfkPyfUiZt, IoxZDDmA4pgp9ofOUV0)); 
 local hodRs2wGo8N5X3HAZuGWo = sq_GetUniformVelocity(0, A76vl3okZY0s.get_vector(6), HQCyKwJKfkPyfUiZt, IoxZDDmA4pgp9ofOUV0); 
 sq_setCurrentAxisPos(lgGjVeHQPEif, 0, IG5StmkMk_ftL8at2XG); 
 sq_setCurrentAxisPos(lgGjVeHQPEif, 2, hodRs2wGo8N5X3HAZuGWo); 
 }
 }
 break;
 }
} 

function onKeyFrameFlag_thief_novaremnant(FSRZZnLbvwufckdfRtqQHb, gdaVVg1vdW6w2nlUMFmc6)
{
 if(!FSRZZnLbvwufckdfRtqQHb) return false;
 local xj0OOsL8j2r_dvmEB9c = FSRZZnLbvwufckdfRtqQHb.getSkillSubState(); 
 switch(xj0OOsL8j2r_dvmEB9c)
 {
 case 0:
 case 1:
 if(gdaVVg1vdW6w2nlUMFmc6 == 1)
 {
 local CFguaHwneGu2UTNXVrIU = sq_GetCurrentAnimation(FSRZZnLbvwufckdfRtqQHb); 
 local dq4M3eV7fJh0jAE2AfL = sq_GetAnimationFrameIndex(CFguaHwneGu2UTNXVrIU); 
 local jVEDwpPnUUAl = sq_GetAniFrameNumber(CFguaHwneGu2UTNXVrIU, 0); 
 FSRZZnLbvwufckdfRtqQHb.getVar().clear_vector(); 
 FSRZZnLbvwufckdfRtqQHb.getVar().push_vector(0); 
 FSRZZnLbvwufckdfRtqQHb.getVar().push_vector(dq4M3eV7fJh0jAE2AfL-1); 
 FSRZZnLbvwufckdfRtqQHb.getVar().push_vector(dq4M3eV7fJh0jAE2AfL); 
 FSRZZnLbvwufckdfRtqQHb.getVar().push_vector(jVEDwpPnUUAl-1); 
 FSRZZnLbvwufckdfRtqQHb.getVar().push_vector(FSRZZnLbvwufckdfRtqQHb.getXPos()); 
 FSRZZnLbvwufckdfRtqQHb.getVar().push_vector(FSRZZnLbvwufckdfRtqQHb.getYPos()); 
 }
 break;
 case 6:
 switch(gdaVVg1vdW6w2nlUMFmc6)
 {
 case 4000:
 local qYEaoiRukJMK1yXdLeJGbs = 150;
 local RpGAzglI5Bwj40 = 40;
 local n6yXZ6TC94JeGxXYiYd3 = 150;
 local QbqZ_8ZCKH = FSRZZnLbvwufckdfRtqQHb.getXPos();
 local l9AAmTxeChTUTwTreoXSPV = FSRZZnLbvwufckdfRtqQHb.getYPos();
 local Nm51ZNS_ot_KTAq6Tw99 = sq_GetDistancePos(QbqZ_8ZCKH, FSRZZnLbvwufckdfRtqQHb.getDirection(), -90);
 local LLbIsVIRB46hlFwzRWt = l9AAmTxeChTUTwTreoXSPV - 35;
 local cdkTs_z1eymn = FSRZZnLbvwufckdfRtqQHb.getObjectManager(); 
 for(local t7Insb23fsqXleN_R1WC_e = 0; t7Insb23fsqXleN_R1WC_e < cdkTs_z1eymn.getCollisionObjectNumber(); t7Insb23fsqXleN_R1WC_e++)
 {
 local vZsdlUkIcnWdYxCo3 = cdkTs_z1eymn.getCollisionObject(t7Insb23fsqXleN_R1WC_e); 
 if(vZsdlUkIcnWdYxCo3
 && vZsdlUkIcnWdYxCo3.isObjectType(OBJECTTYPE_ACTIVE)
 && FSRZZnLbvwufckdfRtqQHb.isEnemy(vZsdlUkIcnWdYxCo3)
 && vZsdlUkIcnWdYxCo3.isInDamagableState(FSRZZnLbvwufckdfRtqQHb)
 && sq_IsHoldable(FSRZZnLbvwufckdfRtqQHb, vZsdlUkIcnWdYxCo3)
 && sq_IsGrabable(FSRZZnLbvwufckdfRtqQHb, vZsdlUkIcnWdYxCo3)
 && !sq_IsFixture(vZsdlUkIcnWdYxCo3)
 && sq_Abs(QbqZ_8ZCKH- vZsdlUkIcnWdYxCo3.getXPos())< qYEaoiRukJMK1yXdLeJGbs
 && sq_Abs(l9AAmTxeChTUTwTreoXSPV - vZsdlUkIcnWdYxCo3.getYPos())< RpGAzglI5Bwj40
 && vZsdlUkIcnWdYxCo3.getZPos() < n6yXZ6TC94JeGxXYiYd3)
 {
 local y10iSXGv2mtN = sq_GetCNRDObjectToActiveObject(vZsdlUkIcnWdYxCo3); 
 if(y10iSXGv2mtN)
 {
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(y10iSXGv2mtN, "character/new_thief/novaremnant/ap_novaremnant_hitend.nut"))
 {
 local KZRuU_wWgBTYsKJovOP = CNSquirrelAppendage.sq_AppendAppendage(y10iSXGv2mtN, FSRZZnLbvwufckdfRtqQHb, 222, true, "character/new_thief/novaremnant/ap_novaremnant_hitend.nut", true); 
 sq_HoldAndDelayDie(y10iSXGv2mtN, FSRZZnLbvwufckdfRtqQHb, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, KZRuU_wWgBTYsKJovOP); 
 
 sq_MoveToNearMovablePos(y10iSXGv2mtN, Nm51ZNS_ot_KTAq6Tw99, LLbIsVIRB46hlFwzRWt, 50, QbqZ_8ZCKH, l9AAmTxeChTUTwTreoXSPV, 50, 100, -1, 5);
 }
 }
 }
 }
 break;
 case 1:
 if(FSRZZnLbvwufckdfRtqQHb.sq_IsMyControlObject())
 {
 
 FSRZZnLbvwufckdfRtqQHb.sq_StartWrite();
 FSRZZnLbvwufckdfRtqQHb.sq_WriteDword(222);
 FSRZZnLbvwufckdfRtqQHb.sq_WriteDword(3);
 FSRZZnLbvwufckdfRtqQHb.sq_WriteDword(FSRZZnLbvwufckdfRtqQHb.sq_GetBonusRateWithPassive(222, 222, 2, 1.0)); 
 sq_SendCreatePassiveObjectPacket(FSRZZnLbvwufckdfRtqQHb, 24378, 0, 120, 0, 0, FSRZZnLbvwufckdfRtqQHb.getDirection()); 
 }
 break;
 }
 break;
 }
 return true;
} 

 
function onEndCurrentAni_thief_novaremnant(dClT59Btx4q_kT5O9zMI6pJ)
{
 if(!dClT59Btx4q_kT5O9zMI6pJ) return;
 if(!dClT59Btx4q_kT5O9zMI6pJ.sq_IsMyControlObject()) return;
 local NLkRk0TLAqq8XaGomZOd8 = dClT59Btx4q_kT5O9zMI6pJ.getSkillSubState(); 
 switch(NLkRk0TLAqq8XaGomZOd8)
 {
 case 0:
 case 1:
 dClT59Btx4q_kT5O9zMI6pJ.sq_IntVectClear();
 dClT59Btx4q_kT5O9zMI6pJ.sq_IntVectPush(2); 
 dClT59Btx4q_kT5O9zMI6pJ.sq_AddSetStatePacket(222, STATE_PRIORITY_USER, true); 
 break;
 case 3:
 dClT59Btx4q_kT5O9zMI6pJ.sq_IntVectClear();
 dClT59Btx4q_kT5O9zMI6pJ.sq_IntVectPush(NLkRk0TLAqq8XaGomZOd8+1); 
 dClT59Btx4q_kT5O9zMI6pJ.sq_AddSetStatePacket(222, STATE_PRIORITY_USER, true); 
 break;
 case 5:
 case 6:
 dClT59Btx4q_kT5O9zMI6pJ.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} 

function getScrollBasisPos_thief_novaremnant(dClT59Btx4q_kT5O9zMI6pJ)
{
 if(!dClT59Btx4q_kT5O9zMI6pJ) return;
 if(!dClT59Btx4q_kT5O9zMI6pJ.isMyControlObject()) return false;
 local NLkRk0TLAqq8XaGomZOd8 = dClT59Btx4q_kT5O9zMI6pJ.getSkillSubState();
 if(NLkRk0TLAqq8XaGomZOd8 <= 4 && dClT59Btx4q_kT5O9zMI6pJ.getVar().size_vector()>0)
 {
 dClT59Btx4q_kT5O9zMI6pJ.sq_SetCameraScrollPosition(dClT59Btx4q_kT5O9zMI6pJ.getVar().get_vector(4), dClT59Btx4q_kT5O9zMI6pJ.getVar().get_vector(5), 0); 
 return true;
 }
 return false;
} 


function onProcCon_thief_novaremnant(dClT59Btx4q_kT5O9zMI6pJ)
{
 if(!dClT59Btx4q_kT5O9zMI6pJ) return;
 local NLkRk0TLAqq8XaGomZOd8 = dClT59Btx4q_kT5O9zMI6pJ.getSkillSubState(); 
 switch(NLkRk0TLAqq8XaGomZOd8)
 {
 case 4: 
 local icF24ocRFC = dClT59Btx4q_kT5O9zMI6pJ.getVar().getObject(0);
 if(!icF24ocRFC || sq_IsEnd(sq_GetCurrentAnimation(icF24ocRFC))) 
 {
 dClT59Btx4q_kT5O9zMI6pJ.sq_IntVectClear();
 dClT59Btx4q_kT5O9zMI6pJ.sq_IntVectPush(5); 
 dClT59Btx4q_kT5O9zMI6pJ.sq_AddSetStatePacket(222, STATE_PRIORITY_USER, true); 
 }
 break;
 case 5: 
 sq_SetKeyxEnable(dClT59Btx4q_kT5O9zMI6pJ, E_SKILL_COMMAND, true); 
 if(sq_IsEnterCommand(dClT59Btx4q_kT5O9zMI6pJ, E_SKILL_COMMAND)) 
 {
 dClT59Btx4q_kT5O9zMI6pJ.sq_IntVectClear();
 dClT59Btx4q_kT5O9zMI6pJ.sq_IntVectPush(6); 
 dClT59Btx4q_kT5O9zMI6pJ.sq_AddSetStatePacket(222, STATE_PRIORITY_USER, true); 
 return;
 }
 break;
 }
} 


function onTimeEvent_thief_novaremnant(B5LL4aMegLY_A, tk4XwH20kstRd2aCKo9SLg, rZm01vFtxh3XXiCSJrVYvE)
{
 if(!B5LL4aMegLY_A) return false;
 if(tk4XwH20kstRd2aCKo9SLg == 0)
 {
 if(B5LL4aMegLY_A.sq_IsMyControlObject())
 {
 if(rZm01vFtxh3XXiCSJrVYvE > 7) 
 {
 B5LL4aMegLY_A.sq_IntVectClear();
 B5LL4aMegLY_A.sq_IntVectPush(3); 
 B5LL4aMegLY_A.sq_AddSetStatePacket(222, STATE_PRIORITY_USER, true); 
 return true;
 }
 local MVZz1fK0MIR01EH0 = ::thief_novaremnant_pos[(rZm01vFtxh3XXiCSJrVYvE -1)%7]; 
 
 B5LL4aMegLY_A.sq_StartWrite();
 B5LL4aMegLY_A.sq_WriteDword(222);
 B5LL4aMegLY_A.sq_WriteDword(1);
 B5LL4aMegLY_A.sq_WriteDword(B5LL4aMegLY_A.sq_GetBonusRateWithPassive(222, 222, 0, 1.0)); 
 B5LL4aMegLY_A.sq_WriteFloat(MVZz1fK0MIR01EH0[2].tofloat()); 
 B5LL4aMegLY_A.sq_WriteDword(MVZz1fK0MIR01EH0[0]>0?-70:70); 
 sq_SendCreatePassiveObjectPacket(B5LL4aMegLY_A, 24378, 0, MVZz1fK0MIR01EH0[0], MVZz1fK0MIR01EH0[1], 0, sq_GetOppositeDirection(B5LL4aMegLY_A.getDirection()) ); 
 }
 }
 return false;
} 

function onEndState_thief_novaremnant(B5LL4aMegLY_A, tk4XwH20kstRd2aCKo9SLg)
{
 if(!B5LL4aMegLY_A) return;
 if(tk4XwH20kstRd2aCKo9SLg != 222)
 {
 RemoveAllFlash(B5LL4aMegLY_A); 
 if(B5LL4aMegLY_A.sq_IsMyControlObject())
 sq_flashScreen(B5LL4aMegLY_A, 0, 0, 150, 178, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 }
} 


