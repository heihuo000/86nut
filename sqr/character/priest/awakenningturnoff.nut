
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

 
function onSetState_AwakenningTurnOff(tZzE3PUSWrdlOnph57tz, nggdnApIMMty, y0spw5TDaSb0pC3X9Hd_mE, tyvMf4Rt8eZko3FV8)
{ 
 if(!tZzE3PUSWrdlOnph57tz) return;
 local x8TKdtJuFH9Luuxvu3U7iI = tZzE3PUSWrdlOnph57tz.sq_getVectorData(y0spw5TDaSb0pC3X9Hd_mE, 0); 
 tZzE3PUSWrdlOnph57tz.setSkillSubState(x8TKdtJuFH9Luuxvu3U7iI); 
 tZzE3PUSWrdlOnph57tz.sq_stopMove(); 
 
 local WhGjzSJfZtqwxKtZi96i = tZzE3PUSWrdlOnph57tz.getXPos();
 local ruBRNDGPu0nIj7knGdcBlu = tZzE3PUSWrdlOnph57tz.getYPos();
 local t40U1qhNqhCl9LGvM2T = tZzE3PUSWrdlOnph57tz.getZPos();
 local sRc3AFazFEsdGRKnN6S = tZzE3PUSWrdlOnph57tz.getVar(); 
 
 
 if(tZzE3PUSWrdlOnph57tz.getVar("takingAwakenSkillBack").size_vector() > 0) { 
 tZzE3PUSWrdlOnph57tz.getVar("takingAwakenSkillBack").set_vector(0, 0);
 }
 
 sRc3AFazFEsdGRKnN6S.clear_vector();
 sRc3AFazFEsdGRKnN6S.push_vector(0);
 
 local Z3fivUoI0KbXFTjzmV = tZzE3PUSWrdlOnph57tz.GetSquirrelAppendage("Appendage/Character/ap_avenger_awakening.nut");
 
 if(Z3fivUoI0KbXFTjzmV) {
 if(Z3fivUoI0KbXFTjzmV.isValid()) {
 Z3fivUoI0KbXFTjzmV.setValid(false);
 }
 
 
 
 
 Z3fivUoI0KbXFTjzmV.sq_var.set_vector(2, 0);
 tZzE3PUSWrdlOnph57tz.setObjectHeight(-1);
 }
 
 
 if(x8TKdtJuFH9Luuxvu3U7iI == 0) {
 
 local dKVqm4nTb1umZi6Fqytb3cTz = tZzE3PUSWrdlOnph57tz.getVar().GetAnimationMap("AWAKENING_TURN_OFF", "Character/Priest/Animation/AwakeningTurnoff.ani"); 
 tZzE3PUSWrdlOnph57tz.setCurrentAnimation(dKVqm4nTb1umZi6Fqytb3cTz);
 }
 else if(x8TKdtJuFH9Luuxvu3U7iI == 1) {
 tZzE3PUSWrdlOnph57tz.sq_setCurrentAnimation(114);
 
 
 
 
 
 
 local tkmqrgM09bOVZGeN1DYAoTRU = sRc3AFazFEsdGRKnN6S.GetparticleCreaterMap("BellatrixGlass", "Character/Priest/Effect/Particle/AwakeningTurnOff.ptl", tZzE3PUSWrdlOnph57tz);
 
 tkmqrgM09bOVZGeN1DYAoTRU.Restart(0);
 
 tkmqrgM09bOVZGeN1DYAoTRU.SetPos(WhGjzSJfZtqwxKtZi96i, ruBRNDGPu0nIj7knGdcBlu + 2, t40U1qhNqhCl9LGvM2T+70);
 
 sq_AddParticleObject(tZzE3PUSWrdlOnph57tz, tkmqrgM09bOVZGeN1DYAoTRU);
 
 }
 
} ;


 
function prepareDraw_AwakenningTurnOff(Gu92oPgrIo)
{
 if(!Gu92oPgrIo) return;
} ;


 
function onProc_AwakenningTurnOff(Gu92oPgrIo)
{
 if(!Gu92oPgrIo) return;
 local zA2fBQcR5HW3TS1wJd7Xcgxv = Gu92oPgrIo.getSkillSubState();
 
 local EOq3fizYEbi7mjxYJ1 = Gu92oPgrIo.getXPos();
 local peviibnLmhl_u = Gu92oPgrIo.getYPos();
 local KjLsmOb7h1tS4uVRt = Gu92oPgrIo.getZPos();
 
 local zidd1kZvHjCuqb0WS0E = Gu92oPgrIo.sq_getCurrentAni();
 local fpU3Fx3bzoVBqD = Gu92oPgrIo.sq_ani_GetCurrentFrameIndex(zidd1kZvHjCuqb0WS0E);
 local _qlhkl2Z6r8KIAzvV0X = sq_GetCurrentTime(zidd1kZvHjCuqb0WS0E);
 local eWoQbfd3bxM6gC0j = Gu92oPgrIo.getVar();
 
} ;

 
function onProcCon_AwakenningTurnOff(R6wufFN21VTIeBPOPS)
{
 if(!R6wufFN21VTIeBPOPS) return;
 local ksbxy_jpHezigmZmxmDK8j = R6wufFN21VTIeBPOPS.getSkillSubState();
 
 local Jk0v0PFZUHhj = R6wufFN21VTIeBPOPS.sq_getCurrentAni();
 local qRBiBz9JnTy7p = R6wufFN21VTIeBPOPS.sq_ani_IsEnd(Jk0v0PFZUHhj);
 local d8NVIXqA2tzjW2a = R6wufFN21VTIeBPOPS.sq_ani_GetCurrentFrameIndex(Jk0v0PFZUHhj);
 
 local ksbxy_jpHezigmZmxmDK8j = R6wufFN21VTIeBPOPS.getSkillSubState();
 
 if(qRBiBz9JnTy7p) {
 if(ksbxy_jpHezigmZmxmDK8j == 0) {
 R6wufFN21VTIeBPOPS.sq_IntVectClear();
 R6wufFN21VTIeBPOPS.sq_IntVectPush(1);
 R6wufFN21VTIeBPOPS.sq_addSetStatePacket(69, STATE_PRIORITY_USER, true);
 }
 else if(ksbxy_jpHezigmZmxmDK8j == 1) {
 R6wufFN21VTIeBPOPS.setObjectHeight(-1);
 R6wufFN21VTIeBPOPS.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 }
 }
} ;



 
 

function onAfterSetState_AwakenningTurnOff(Fkjunm4OZW2plslDqlJmn08a, DPB8dEa7byKHf3AYTH8EEMS, tEZ2KhAp5gHJ8mv_PeC5WBFg, CCe0PySNN3A)
{
 if(!Fkjunm4OZW2plslDqlJmn08a) return;
 
} ;

 
function onBeforeAttack_AwakenningTurnOff(bRJxbP6IFgbpDb, m5Z1IxPAX9xTd1uH, W7B6P7816GRmI3ts5BJco)
{
 
} ;

 
function onAttack_AwakenningTurnOff(bRJxbP6IFgbpDb, m5Z1IxPAX9xTd1uH, W7B6P7816GRmI3ts5BJco)
{
 
} ;

 
function onAfterAttack_AwakenningTurnOff(L72yTlRnpkyE, wGGgoJI9yMdGgVc6GD, CdWvBIYbigazCqzG4IWhs)
{
 
} ;

 
function onBeforeDamage_AwakenningTurnOff(L72yTlRnpkyE, wGGgoJI9yMdGgVc6GD, CdWvBIYbigazCqzG4IWhs)
{
 
} ;

 
function onDamage_AwakenningTurnOff(EolxRRTvrtARCtGvo, wG5NmV68KV_O_toBiDKj, KPb8C_EPdwnG2EukQAvfz)
{
 
} ;

 
function onAfterDamage_AwakenningTurnOff(EolxRRTvrtARCtGvo, wG5NmV68KV_O_toBiDKj, KPb8C_EPdwnG2EukQAvfz)
{
 
} ;


