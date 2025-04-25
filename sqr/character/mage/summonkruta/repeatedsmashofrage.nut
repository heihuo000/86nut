
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_mage_repeatedsmashofrage(uI8NuU4hSj0pnXBKcT_vm)
{
 if(!uI8NuU4hSj0pnXBKcT_vm) return false; 
 
 local JfAVmDQT6hr3FugARMY4buv = getMyMonsterObject_Character_jsqq506807329(uI8NuU4hSj0pnXBKcT_vm, 50680731, "character/mage/summonkruta/ap_summonkruta.nut");
 if(JfAVmDQT6hr3FugARMY4buv)
 {
 local yTLASAlkryZSts6oJ6aW6c6U = CNSquirrelAppendage.sq_GetAppendage(JfAVmDQT6hr3FugARMY4buv, "character/mage/summonkruta/ap_summonkruta.nut");
 if(!yTLASAlkryZSts6oJ6aW6c6U)return false;
 local G10KcdnKSJVXJZfV = uI8NuU4hSj0pnXBKcT_vm.sq_IsUseSkill(137); 
 if(G10KcdnKSJVXJZfV) 
 {
 uI8NuU4hSj0pnXBKcT_vm.sq_IntVectClear();
 uI8NuU4hSj0pnXBKcT_vm.sq_IntVectPush(0); 
 uI8NuU4hSj0pnXBKcT_vm.sq_IntVectPush(sq_GetGroup(JfAVmDQT6hr3FugARMY4buv)); 
 uI8NuU4hSj0pnXBKcT_vm.sq_IntVectPush(sq_GetUniqueId(JfAVmDQT6hr3FugARMY4buv)); 
 uI8NuU4hSj0pnXBKcT_vm.sq_AddSetStatePacket(137, STATE_PRIORITY_USER, true); 
 return true; 
 }
 }
 else if(uI8NuU4hSj0pnXBKcT_vm.isMessage()) 
 sq_AddMessage(71099);
 return false; 
} ;

 
function checkCommandEnable_mage_repeatedsmashofrage(KLnwyJ5gTrcp)
{
 if(!KLnwyJ5gTrcp) return false; 
 local tBQj5wTcWgB1IzwznpKETzv = KLnwyJ5gTrcp.sq_GetState(); 
 if(tBQj5wTcWgB1IzwznpKETzv == STATE_STAND) 
 return true; 
 if(tBQj5wTcWgB1IzwznpKETzv == STATE_ATTACK) 
 {
 return KLnwyJ5gTrcp.sq_IsCommandEnable(137); 
 }
 return true; 
} ;

 
function onSetState_mage_repeatedsmashofrage(W3Nht07fn0_peoVps, xDko_vakgWslbi0tq, arFnng98OLWS5zw_MK4t4, tFEv15zOoM7q68PH)
{
 if(!W3Nht07fn0_peoVps) return; 
 local e9KHlKRvZiboq = W3Nht07fn0_peoVps.sq_GetVectorData(arFnng98OLWS5zw_MK4t4, 0); 
 W3Nht07fn0_peoVps.setSkillSubState(e9KHlKRvZiboq); 
 switch(e9KHlKRvZiboq)
 {
 case 0:
 W3Nht07fn0_peoVps.sq_StopMove(); 
 W3Nht07fn0_peoVps.sq_SetCurrentAnimation(139);
 local NOS7_V2f3U_m = sq_GetSkillLevel(W3Nht07fn0_peoVps, 137); 
 local IVd3u9R24rTTB_08HVh = sq_GetCastTime(W3Nht07fn0_peoVps, 137, NOS7_V2f3U_m); 
 sq_StartDrawCastGauge(W3Nht07fn0_peoVps, IVd3u9R24rTTB_08HVh, true); 
 local Kwld0PXwU5w = W3Nht07fn0_peoVps.getCurrentAnimation(); 
 local Xr_Wbri9n7Lx7x3B2tyAQk = Kwld0PXwU5w.getDelaySum(false); 
 
 W3Nht07fn0_peoVps.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 local nz03nykd_2HSA0jEWYuQO = Kwld0PXwU5w.getDelaySum(false); 
 local MtvUN9lKlykjb7 = nz03nykd_2HSA0jEWYuQO.tofloat() / Xr_Wbri9n7Lx7x3B2tyAQk.tofloat(); 
 local pPC6SZlpPaVEEY4aK = (IVd3u9R24rTTB_08HVh.tofloat() * MtvUN9lKlykjb7).tointeger(); 
 local ivDbZioC9Wn = W3Nht07fn0_peoVps.sq_GetVectorData(arFnng98OLWS5zw_MK4t4, 1); 
 local jzo5jVsxNkvVGs = W3Nht07fn0_peoVps.sq_GetVectorData(arFnng98OLWS5zw_MK4t4, 2); 
 W3Nht07fn0_peoVps.getVar().clear_vector(); 
 W3Nht07fn0_peoVps.getVar().push_vector(pPC6SZlpPaVEEY4aK); 
 W3Nht07fn0_peoVps.getVar().push_vector(ivDbZioC9Wn); 
 W3Nht07fn0_peoVps.getVar().push_vector(jzo5jVsxNkvVGs); 
 local EJefVQafEA = sq_GetCNRDObjectToActiveObject(
 sq_GetObject(W3Nht07fn0_peoVps, ivDbZioC9Wn, jzo5jVsxNkvVGs)
 ); 
 if(EJefVQafEA && !EJefVQafEA.isDead()) 
 {
 local ZTGKPLAh0zpbt8Mf7PM = W3Nht07fn0_peoVps.getDirection(); 
 local DbyD5NrRAM6IsD5OU7OYwg = W3Nht07fn0_peoVps.getXPos(); 
 local TroNtNerYEXCag2 = W3Nht07fn0_peoVps.getYPos(); 
 local HT6Y1dRwl3uO00sYawUnD = sq_GetDistancePos(DbyD5NrRAM6IsD5OU7OYwg, W3Nht07fn0_peoVps.getDirection(), 100); 
 
 sq_MoveToNearMovablePos(EJefVQafEA,
 HT6Y1dRwl3uO00sYawUnD, TroNtNerYEXCag2, 0, 
 DbyD5NrRAM6IsD5OU7OYwg, TroNtNerYEXCag2, 0,
 100, -1, 5);
 sq_SetCurrentDirection(EJefVQafEA, ZTGKPLAh0zpbt8Mf7PM); 
 if(EJefVQafEA.isMyControlObject())
 {
 
 local _UbDk5kKSpRdV14AaeW6vwIc = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(_UbDk5kKSpRdV14AaeW6vwIc); 
 sq_IntVectorPush(_UbDk5kKSpRdV14AaeW6vwIc, 7); 
 sq_AddSetStatePacketActiveObject(EJefVQafEA, 8, _UbDk5kKSpRdV14AaeW6vwIc, STATE_PRIORITY_FORCE);
 EJefVQafEA.flushSetStatePacket(); 
 }
 }
 break;
 case 1:
 W3Nht07fn0_peoVps.sq_SetCurrentAnimation(140);
 local EJefVQafEA = sq_GetCNRDObjectToActiveObject(
 sq_GetObject(W3Nht07fn0_peoVps, W3Nht07fn0_peoVps.getVar().get_vector(1), W3Nht07fn0_peoVps.getVar().get_vector(2))
 ); 
 if(EJefVQafEA && !EJefVQafEA.isDead()) 
 {
 local ZTGKPLAh0zpbt8Mf7PM = W3Nht07fn0_peoVps.getDirection(); 
 local DbyD5NrRAM6IsD5OU7OYwg = W3Nht07fn0_peoVps.getXPos(); 
 local TroNtNerYEXCag2 = W3Nht07fn0_peoVps.getYPos(); 
 local HT6Y1dRwl3uO00sYawUnD = sq_GetDistancePos(DbyD5NrRAM6IsD5OU7OYwg, W3Nht07fn0_peoVps.getDirection(), 100); 
 
 sq_MoveToNearMovablePos(EJefVQafEA,
 HT6Y1dRwl3uO00sYawUnD, TroNtNerYEXCag2, 0, 
 DbyD5NrRAM6IsD5OU7OYwg, TroNtNerYEXCag2, 0,
 100, -1, 5);
 sq_SetCurrentDirection(EJefVQafEA, ZTGKPLAh0zpbt8Mf7PM); 
 if(EJefVQafEA.isMyControlObject())
 {
 
 local _UbDk5kKSpRdV14AaeW6vwIc = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(_UbDk5kKSpRdV14AaeW6vwIc); 
 sq_IntVectorPush(_UbDk5kKSpRdV14AaeW6vwIc, 8); 
 sq_AddSetStatePacketActiveObject(EJefVQafEA, 8, _UbDk5kKSpRdV14AaeW6vwIc, STATE_PRIORITY_FORCE);
 EJefVQafEA.flushSetStatePacket(); 
 }
 }
 break;
 }
} ;

function onProcCon_mage_repeatedsmashofrage(QytRxKGKAp5yXQ07)
{
 if(!QytRxKGKAp5yXQ07) return;
 local nQyqP4ej9VO8Iy6AiX4xZUt = QytRxKGKAp5yXQ07.getSkillSubState(); 
 if(nQyqP4ej9VO8Iy6AiX4xZUt == 0)
 {
 local FxEIBphc7prwUiFw1eaC5O = QytRxKGKAp5yXQ07.getVar().get_vector(0); 
 if(QytRxKGKAp5yXQ07.sq_GetStateTimer() >= FxEIBphc7prwUiFw1eaC5O) 
 {
 QytRxKGKAp5yXQ07.sq_IntVectClear();
 QytRxKGKAp5yXQ07.sq_IntVectPush(1); 
 QytRxKGKAp5yXQ07.sq_AddSetStatePacket(137, STATE_PRIORITY_USER, true); 
 }
 }
} ;

function onEndState_mage_repeatedsmashofrage(QytRxKGKAp5yXQ07, nQyqP4ej9VO8Iy6AiX4xZUt)
{
 if(!QytRxKGKAp5yXQ07) return;
 if(nQyqP4ej9VO8Iy6AiX4xZUt != 137)
 {
 sq_EndDrawCastGauge(QytRxKGKAp5yXQ07); 
 local FxEIBphc7prwUiFw1eaC5O = QytRxKGKAp5yXQ07.getSkillSubState(); 
 if(FxEIBphc7prwUiFw1eaC5O == 0)
 {
 local rMcRIBT2Fd = sq_GetCNRDObjectToActiveObject(
 sq_GetObject(QytRxKGKAp5yXQ07, QytRxKGKAp5yXQ07.getVar().get_vector(1), QytRxKGKAp5yXQ07.getVar().get_vector(2))
 ); 
 if(rMcRIBT2Fd.isMyControlObject())
 {
 if(rMcRIBT2Fd && !rMcRIBT2Fd.isDead() 
 && rMcRIBT2Fd.getState() == STATE_ATTACK 
 && rMcRIBT2Fd.getAttackIndex() == 7) 
 rMcRIBT2Fd.sendStateOnlyPacket(STATE_STAND); 
 }
 }
 }
} ;

 
function onEndCurrentAni_mage_repeatedsmashofrage(ajTKz0JJT5QytF0KKXFf6j)
{
 if(!ajTKz0JJT5QytF0KKXFf6j) return;
 if(!ajTKz0JJT5QytF0KKXFf6j.sq_IsMyControlObject()) return;
 local GPCJ81Eln9LQagRDviX = ajTKz0JJT5QytF0KKXFf6j.getSkillSubState(); 
 switch(GPCJ81Eln9LQagRDviX)
 {
 case 1:
 ajTKz0JJT5QytF0KKXFf6j.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;



