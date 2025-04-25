
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_atfighter_fireworks(PnWmx1ir1F7rp7batAPM_i)
{
 if(!PnWmx1ir1F7rp7batAPM_i) return false; 
 local nzDlpeM4PCHutDV4fhbILB = PnWmx1ir1F7rp7batAPM_i.sq_IsUseSkill(228); 
 if(nzDlpeM4PCHutDV4fhbILB) 
 {
 PnWmx1ir1F7rp7batAPM_i.sq_IntVectClear();
 PnWmx1ir1F7rp7batAPM_i.sq_IntVectPush(0); 
 PnWmx1ir1F7rp7batAPM_i.sq_AddSetStatePacket(228, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atfighter_fireworks(zP1FlepeVQEe)
{
 if(!zP1FlepeVQEe) return false; 
 local jv39qC6CMk1DbfP4Zo9 = zP1FlepeVQEe.sq_GetState(); 
 if(jv39qC6CMk1DbfP4Zo9 == STATE_STAND) 
 return true; 
 if(jv39qC6CMk1DbfP4Zo9 == STATE_ATTACK) 
 {
 return zP1FlepeVQEe.sq_IsCommandEnable(228); 
 }
 return true; 
} ;

 
function onSetState_atfighter_fireworks(zP1FlepeVQEe, jv39qC6CMk1DbfP4Zo9, cNxUU9YKIco3Jz, PetsXKygi_1VJQ72izZ)
{
 if(!zP1FlepeVQEe) return; 
 local l1fx0uyrx9MV3 = zP1FlepeVQEe.sq_GetVectorData(cNxUU9YKIco3Jz, 0); 
 zP1FlepeVQEe.setSkillSubState(l1fx0uyrx9MV3); 
 switch(l1fx0uyrx9MV3)
 {
 case 0:
 zP1FlepeVQEe.getVar().clear_vector(); 
 zP1FlepeVQEe.getVar().setBool(0, false); 
 zP1FlepeVQEe.sq_StopMove(); 
 zP1FlepeVQEe.sq_SetCurrentAnimation(169);
 zP1FlepeVQEe.sq_SetCurrentAttackInfo(98); 
 break;
 case 1:
 zP1FlepeVQEe.sq_SetCurrentAnimation(170);
 sq_SetMyShake(zP1FlepeVQEe, 7, 80); 
 break;
 case 2:
 zP1FlepeVQEe.sq_SetCurrentAnimation(171);
 zP1FlepeVQEe.sq_SetCurrentAttackInfo(99);
 local eZTNyz9QrUYrJiQl0QBy = zP1FlepeVQEe.sq_GetBonusRateWithPassive(228, jv39qC6CMk1DbfP4Zo9, 0, 1.0); 
 zP1FlepeVQEe.sq_SetCurrentAttackBonusRate(eZTNyz9QrUYrJiQl0QBy); 
 sq_CreateDrawOnlyObject(zP1FlepeVQEe, "character/fighter/effect/animation/atfireworks/fireworks_hit_back.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 sq_SetMyShake(zP1FlepeVQEe, 20, 500); 
 break;
 case 3:
 zP1FlepeVQEe.sq_SetCurrentAnimation(172);
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(zP1FlepeVQEe, "character/atfighter/fireworks/ap_fireworks_my.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(zP1FlepeVQEe, "character/atfighter/fireworks/ap_fireworks_my.nut");
 CNSquirrelAppendage.sq_AppendAppendage(zP1FlepeVQEe, zP1FlepeVQEe, 228, false, "character/atfighter/fireworks/ap_fireworks_my.nut", true); 
 break;
 }
 local OHSaTW1X815Z7v = zP1FlepeVQEe.getCurrentAnimation(); 
 local carj5DHIJGkMT = zP1FlepeVQEe.sq_GetDelaySum(); 
 zP1FlepeVQEe.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 
 if(zP1FlepeVQEe.sq_IsMyControlObject())
 {
 local igMGhh4XRW = zP1FlepeVQEe.sq_GetDelaySum(); 
 local uU4YmsOAs3Ufb9bH8CbrEgL = carj5DHIJGkMT.tofloat() / igMGhh4XRW.tofloat() * 100.0; 
 switch(l1fx0uyrx9MV3)
 {
 case 1:
 CreateAniRate(zP1FlepeVQEe, "character/fighter/effect/animation/atfireworks/fireworks_start_back.ani", ENUM_DRAWLAYER_BOTTOM, zP1FlepeVQEe.getXPos(), zP1FlepeVQEe.getYPos(), zP1FlepeVQEe.getZPos(), false, uU4YmsOAs3Ufb9bH8CbrEgL); 
 break;
 case 3:
 CreateAniRate(zP1FlepeVQEe, "character/fighter/effect/animation/atfireworks/fireworks_end_back.ani", ENUM_DRAWLAYER_BOTTOM, zP1FlepeVQEe.getXPos(), zP1FlepeVQEe.getYPos(), zP1FlepeVQEe.getZPos(), false, uU4YmsOAs3Ufb9bH8CbrEgL); 
 break;
 }
 }
} ;

function onAttack_atfighter_fireworks(iQ30byZ0uepv5rLGok7s, VLR_BxOVtU3cH_jI, LACQH4kJryZYhczuitPj, YDw51bu1ir)
{
 if(!iQ30byZ0uepv5rLGok7s) return;
 local yQWfkL6FeqPyHiHq = iQ30byZ0uepv5rLGok7s.getSkillSubState();
 switch(yQWfkL6FeqPyHiHq)
 {
 case 0:
 case 2:
 if(YDw51bu1ir || !VLR_BxOVtU3cH_jI.isObjectType(OBJECTTYPE_ACTIVE)) break; 
 if(sq_IsHoldable(iQ30byZ0uepv5rLGok7s, VLR_BxOVtU3cH_jI))
 {
 local dbDOoOyMAcFnwGB2kn = CNSquirrelAppendage.sq_GetAppendage(VLR_BxOVtU3cH_jI, "character/atfighter/fireworks/ap_fireworks.nut"); 
 if(dbDOoOyMAcFnwGB2kn) 
 if(yQWfkL6FeqPyHiHq == 0)
 CNSquirrelAppendage.sq_RemoveAppendage(VLR_BxOVtU3cH_jI, "character/atfighter/fireworks/ap_fireworks.nut");
 else if(yQWfkL6FeqPyHiHq == 2)
 {
 local C6Hj7VtKLbdGrdIFAlAHLd = dbDOoOyMAcFnwGB2kn.getTimer(); 
 C6Hj7VtKLbdGrdIFAlAHLd.Reset(); 
 C6Hj7VtKLbdGrdIFAlAHLd.Start(10000, 0); 
 dbDOoOyMAcFnwGB2kn.getVar("state").clear_vector();
 dbDOoOyMAcFnwGB2kn.getVar("state").push_vector(1); 
 return;
 }
 dbDOoOyMAcFnwGB2kn = CNSquirrelAppendage.sq_AppendAppendage(VLR_BxOVtU3cH_jI, iQ30byZ0uepv5rLGok7s, 228, true, "character/atfighter/fireworks/ap_fireworks.nut", true);
 sq_HoldAndDelayDie(VLR_BxOVtU3cH_jI, iQ30byZ0uepv5rLGok7s, true, true, true, 50, 450, ENUM_DIRECTION_NEUTRAL, dbDOoOyMAcFnwGB2kn); 
 dbDOoOyMAcFnwGB2kn.sq_var.clear_vector(); 
 dbDOoOyMAcFnwGB2kn.sq_var.push_vector(iQ30byZ0uepv5rLGok7s.sq_GetLevelData(228, 3, sq_GetSkillLevel(iQ30byZ0uepv5rLGok7s, 228))); 
 iQ30byZ0uepv5rLGok7s.getVar().push_vector(sq_GetGroup(VLR_BxOVtU3cH_jI)); 
 iQ30byZ0uepv5rLGok7s.getVar().push_vector(sq_GetUniqueId(VLR_BxOVtU3cH_jI)); 
 }
 break;
 }
} ;

function onKeyFrameFlag_atfighter_fireworks(fyY_R8kKI2vJrCtJvi7z2qU, BWIuXUJviTs6J1knvaah)
{
 if(!fyY_R8kKI2vJrCtJvi7z2qU) return false;
 local xOiMug1FzL5m_41lqB0eM = fyY_R8kKI2vJrCtJvi7z2qU.getSkillSubState();
 switch(xOiMug1FzL5m_41lqB0eM)
 {
 case 2:
 switch(BWIuXUJviTs6J1knvaah)
 {
 case 1:
 if(fyY_R8kKI2vJrCtJvi7z2qU.sq_IsMyControlObject())
 {
 local Tm80xJQBPJiVmZjoTi = sq_GetSkillLevel(fyY_R8kKI2vJrCtJvi7z2qU, 228); 
 fyY_R8kKI2vJrCtJvi7z2qU.sq_StartWrite();
 fyY_R8kKI2vJrCtJvi7z2qU.sq_WriteDword(228); 
 fyY_R8kKI2vJrCtJvi7z2qU.sq_WriteDword(fyY_R8kKI2vJrCtJvi7z2qU.sq_GetBonusRateWithPassive(228, 228, 1, 1.0)); 
 fyY_R8kKI2vJrCtJvi7z2qU.sq_WriteDword(fyY_R8kKI2vJrCtJvi7z2qU.sq_GetBonusRateWithPassive(228, 228, 2, 1.0)); 
 
 local DHDynJNh5dfprAH7OKyXee = fyY_R8kKI2vJrCtJvi7z2qU.getVar().size_vector(); 
 fyY_R8kKI2vJrCtJvi7z2qU.sq_WriteDword(DHDynJNh5dfprAH7OKyXee); 
 local iyi4c91ZpPgiAGaQq = fyY_R8kKI2vJrCtJvi7z2qU.getVar(); 
 for(local vxWdb3wADOkggRvoR = 0; vxWdb3wADOkggRvoR < DHDynJNh5dfprAH7OKyXee; vxWdb3wADOkggRvoR++)
 {
 fyY_R8kKI2vJrCtJvi7z2qU.sq_WriteDword(iyi4c91ZpPgiAGaQq.get_vector(vxWdb3wADOkggRvoR)); 
 }
 fyY_R8kKI2vJrCtJvi7z2qU.sq_SendCreatePassiveObjectPacket(24375, 0, 130, -180, 0);
 }
 break;
 case 2:
 fyY_R8kKI2vJrCtJvi7z2qU.sq_PlaySound("MF_PFIREWORKS_FIN"); 
 break;
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_atfighter_fireworks(Bk5rEpzJQJ0Jn6)
{
 if(!Bk5rEpzJQJ0Jn6) return;
 if(!Bk5rEpzJQJ0Jn6.sq_IsMyControlObject()) return;
 local RkOpWMLittsEU = Bk5rEpzJQJ0Jn6.getSkillSubState(); 
 if(RkOpWMLittsEU != 3)
 {
 Bk5rEpzJQJ0Jn6.sq_IntVectClear();
 Bk5rEpzJQJ0Jn6.sq_IntVectPush(RkOpWMLittsEU + 1); 
 Bk5rEpzJQJ0Jn6.sq_AddSetStatePacket(228, STATE_PRIORITY_USER, true); 
 }
 else
 Bk5rEpzJQJ0Jn6.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

 
function onEndState_atfighter_fireworks(lCi_O2_U7ZO, lEWLA77QYhvI)
{
 if(!lCi_O2_U7ZO) return;
 
 if(lEWLA77QYhvI != 228 && lCi_O2_U7ZO.getVar().getBool(0) == false)
 {
 local dXJL70M3zUFNs2s83JD2Vwo = lCi_O2_U7ZO.getVar().size_vector(); 
 local Zdm6UlBgQ7z = lCi_O2_U7ZO.getVar(); 
 for(local oH0ZA5ZVHCg = 0; oH0ZA5ZVHCg < dXJL70M3zUFNs2s83JD2Vwo; oH0ZA5ZVHCg += 2)
 {
 local HlWmSUB3WS0 = sq_GetObject(lCi_O2_U7ZO, Zdm6UlBgQ7z.get_vector(oH0ZA5ZVHCg), Zdm6UlBgQ7z.get_vector(oH0ZA5ZVHCg + 1)); 
 if(HlWmSUB3WS0)
 if(CNSquirrelAppendage.sq_IsAppendAppendage(HlWmSUB3WS0, "character/atfighter/fireworks/ap_fireworks.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(HlWmSUB3WS0, "character/atfighter/fireworks/ap_fireworks.nut");
 }
 }
} ;

function getActiveStatusCount_atfighter_fireworks(w6IrIe0Y1Ue8UGQQ)
{
 w6IrIe0Y1Ue8UGQQ = sq_GetCNRDObjectToActiveObject(w6IrIe0Y1Ue8UGQQ); 
 if(!w6IrIe0Y1Ue8UGQQ) return 0; 
 local RaOQ67iq0HyS1rjl3f2 = 3; 
 local t7RQrTe8fkLePmwdLZV_j3 = 0; 
 for(local xDC_lFIRknAQjO8flC9F = 0; xDC_lFIRknAQjO8flC9F < 18; xDC_lFIRknAQjO8flC9F++)
 {
 
 if(t7RQrTe8fkLePmwdLZV_j3 >= RaOQ67iq0HyS1rjl3f2)
 break;
 else if(sq_IsValidActiveStatus(w6IrIe0Y1Ue8UGQQ, xDC_lFIRknAQjO8flC9F))
 t7RQrTe8fkLePmwdLZV_j3++;
 }
 return t7RQrTe8fkLePmwdLZV_j3; 
} ;


