
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function IsCheckUseFallingSoul(dxLOEFUc71tEtkFyt9tV0Y9) 
{
 if(!dxLOEFUc71tEtkFyt9tV0Y9) return false; 
 local xXDsZErYIbM1SqH6q = dxLOEFUc71tEtkFyt9tV0Y9.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); 
 if(!xXDsZErYIbM1SqH6q) return false;
 
 
 if(xXDsZErYIbM1SqH6q.sq_var.size_vector() > 1) {
 
 local Bs53NVph0YLlLmafpO1a = sq_GetSkillLevel(dxLOEFUc71tEtkFyt9tV0Y9, 131); 
 local QHmVIzSc3a7DpPGhsVH = sq_GetIntData(dxLOEFUc71tEtkFyt9tV0Y9, 131, 0, Bs53NVph0YLlLmafpO1a);
 local mEnFtUhOfK = sq_GetLevelData(dxLOEFUc71tEtkFyt9tV0Y9, 131, 1, Bs53NVph0YLlLmafpO1a);
 local rJ4lbv7iznX = sq_GetLevelData(dxLOEFUc71tEtkFyt9tV0Y9, 131, 2, Bs53NVph0YLlLmafpO1a);
 
 
 
 
 local kAInKbNMDwo9ZuFI1337er3V = xXDsZErYIbM1SqH6q.sq_var.get_vector(1); 
 if(kAInKbNMDwo9ZuFI1337er3V == 0)
 { 
 dxLOEFUc71tEtkFyt9tV0Y9.startCantUseSkillWarning();
 if (dxLOEFUc71tEtkFyt9tV0Y9.isMessage())
 sq_AddMessage(29002); 
 return false;
 }
 
 if(QHmVIzSc3a7DpPGhsVH < kAInKbNMDwo9ZuFI1337er3V)
 kAInKbNMDwo9ZuFI1337er3V = QHmVIzSc3a7DpPGhsVH; 
 
 
 local giXrYfcmYr2n7 = sq_GetLevelData(dxLOEFUc71tEtkFyt9tV0Y9, 131, 0, Bs53NVph0YLlLmafpO1a);
 giXrYfcmYr2n7 = giXrYfcmYr2n7.tofloat()/100.0;
 
 
 
 
 
 local pjZsZbCmuAkyhxFS7U = (kAInKbNMDwo9ZuFI1337er3V*giXrYfcmYr2n7) + 0.5; 
 
 print("magicPowerUpValue : " + pjZsZbCmuAkyhxFS7U); 
 
 pjZsZbCmuAkyhxFS7U = pjZsZbCmuAkyhxFS7U.tointeger();
 
 print("magicPowerUpValue : " + pjZsZbCmuAkyhxFS7U);
 
 
 
 
 local xXDsZErYIbM1SqH6q = CNSquirrelAppendage.sq_AppendAppendage(dxLOEFUc71tEtkFyt9tV0Y9, dxLOEFUc71tEtkFyt9tV0Y9, 131, false, "FallingSoul", false);
 
 
 local S09DhN0FX6dGJN = sq_GetSkillLevel(dxLOEFUc71tEtkFyt9tV0Y9, 131);
 xXDsZErYIbM1SqH6q.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(dxLOEFUc71tEtkFyt9tV0Y9), 131, S09DhN0FX6dGJN);
 
 
 
 CNSquirrelAppendage.sq_Append(xXDsZErYIbM1SqH6q, dxLOEFUc71tEtkFyt9tV0Y9, dxLOEFUc71tEtkFyt9tV0Y9);
 
 local l7t3Asar0odCW5ktvsMLyVN = xXDsZErYIbM1SqH6q.sq_getChangeStatus("FallingSoulMagic");
 if(!l7t3Asar0odCW5ktvsMLyVN) {
 l7t3Asar0odCW5ktvsMLyVN = xXDsZErYIbM1SqH6q.sq_AddChangeStatus("FallingSoulMagic",dxLOEFUc71tEtkFyt9tV0Y9, dxLOEFUc71tEtkFyt9tV0Y9, mEnFtUhOfK, CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, pjZsZbCmuAkyhxFS7U.tointeger());
 }
 
 if(l7t3Asar0odCW5ktvsMLyVN) {
 l7t3Asar0odCW5ktvsMLyVN.clearParameter();
 l7t3Asar0odCW5ktvsMLyVN.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, pjZsZbCmuAkyhxFS7U.tofloat());
 l7t3Asar0odCW5ktvsMLyVN.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, false, rJ4lbv7iznX.tofloat());
 
 
 }
 
 local ZFGaNfa4vNseT6U_gG8z = xXDsZErYIbM1SqH6q.getAppendageInfo();
 ZFGaNfa4vNseT6U_gG8z.setValidTime(mEnFtUhOfK);
 
 consumeDevilGauge(dxLOEFUc71tEtkFyt9tV0Y9, kAInKbNMDwo9ZuFI1337er3V); 
 
 return true;
 }
 
 
 return false;
} ;


if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function checkCommandEnable_FallingSoul(Jfed0AvEMQPqJbmQ5THCHN4)
{
 if(!Jfed0AvEMQPqJbmQ5THCHN4) return false;
 local NknjdmUoFjDw5V5 = true;
 
 local RJCfL79S8_cet67JpGhQe6yh = Jfed0AvEMQPqJbmQ5THCHN4.sq_GetSTATE();
 
 if(RJCfL79S8_cet67JpGhQe6yh == STATE_ATTACK) {
 
 NknjdmUoFjDw5V5 = Jfed0AvEMQPqJbmQ5THCHN4.sq_IsCommandEnable(131);
 }
 
 if(!NknjdmUoFjDw5V5) return false;
 
 local vgjSgx9mZsM3IbKiFif3x4U = Jfed0AvEMQPqJbmQ5THCHN4.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); 
 if(!vgjSgx9mZsM3IbKiFif3x4U) 
 return false;
 
 local NZobvAlWcxkPPM = vgjSgx9mZsM3IbKiFif3x4U.sq_var.get_vector(1); 
 if(NZobvAlWcxkPPM == 0)
 return false; 
 
 return true;
} ;


  


 
function checkExecutableSkill_FallingSoul(TttQ4G6joehxokVst) 
{
 if(!TttQ4G6joehxokVst) return false;
 local w9sCx_wJYhrC3eNJH77MD1E = TttQ4G6joehxokVst.sq_IsUseSkill(131);
 if(w9sCx_wJYhrC3eNJH77MD1E) {
 if(IsCheckUseFallingSoul(TttQ4G6joehxokVst)) { 
 TttQ4G6joehxokVst.sq_IntVectClear(); 
 TttQ4G6joehxokVst.sq_IntVectPush(0);
 TttQ4G6joehxokVst.sq_IntVectPush(0); 
 TttQ4G6joehxokVst.sq_IntVectPush(131);
 TttQ4G6joehxokVst.sq_IntVectPush(500);
 TttQ4G6joehxokVst.sq_IntVectPush(500);
 TttQ4G6joehxokVst.sq_IntVectPush(3);
 TttQ4G6joehxokVst.sq_IntVectPush(4); 
 TttQ4G6joehxokVst.sq_IntVectPush(4); 
 TttQ4G6joehxokVst.sq_addSetStatePacket(STATE_THROW, STATE_PRIORITY_USER, true);
 return true;
 }
 } 
 
 return false;
} ;


 


 
function onSetState_FallingSoul(HmlmuQe6qZH6nJThYW1gng9, r95v9Gg7vxx, zWMRKeyJKeKhnYRhj, jgjgc7cUBdxIQ4aq14Rhnd8)
{ 
 if(!HmlmuQe6qZH6nJThYW1gng9) return;
} ;