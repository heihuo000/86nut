
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_priest_dangerousscale(byHRkgj_Njaql)
{
 if(!byHRkgj_Njaql) return false; 
 local _AbYHMUVdlZaB0XccCY77UWj = byHRkgj_Njaql.sq_IsUseSkill(240); 
 if(_AbYHMUVdlZaB0XccCY77UWj) 
 {
 byHRkgj_Njaql.sq_IsEnterSkillLastKeyUnits(240); 
 byHRkgj_Njaql.sq_IntVectClear();
 byHRkgj_Njaql.sq_IntVectPush(0); 
 byHRkgj_Njaql.sq_AddSetStatePacket(240, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_dangerousscale(ECkRbiNJgubxQOsD)
{
 if(!ECkRbiNJgubxQOsD) return false; 
 local QH5oqecHM9mLBYfkBlsPP = ECkRbiNJgubxQOsD.sq_GetState(); 
 if(QH5oqecHM9mLBYfkBlsPP == STATE_STAND) 
 return true; 
 if(QH5oqecHM9mLBYfkBlsPP == STATE_ATTACK) 
 {
 return ECkRbiNJgubxQOsD.sq_IsCommandEnable(240); 
 }
 return true; 
} ;

 
function onSetState_priest_dangerousscale(Viu4cE1FwJvz, yatWdrs8QfRgx, cTD5yy7KKbrnYP_9ws5BAt35, zm1sCTU0TE9j)
{
 if(!Viu4cE1FwJvz) return; 
 Viu4cE1FwJvz.sq_StopMove(); 
 Viu4cE1FwJvz.sq_ZStop(); 
 local gt7yzIfGnE9kwopnywQUV = Viu4cE1FwJvz.sq_GetVectorData(cTD5yy7KKbrnYP_9ws5BAt35, 0); 
 Viu4cE1FwJvz.setSkillSubState(gt7yzIfGnE9kwopnywQUV); 
 switch(gt7yzIfGnE9kwopnywQUV)
 {
 case 0:
 Viu4cE1FwJvz.sq_SetCurrentAnimation(130);
 local A5cBXbn17JPk4KHxSfOsHBL = sq_GetSkillLevel(Viu4cE1FwJvz, 66); 
 Viu4cE1FwJvz.getVar("move").clear_vector(); 
 Viu4cE1FwJvz.getVar().clear_vector(); 
 Viu4cE1FwJvz.getVar().push_vector(180); 
 Viu4cE1FwJvz.getVar().push_vector(100); 
 if(A5cBXbn17JPk4KHxSfOsHBL > 0)
 {
 Viu4cE1FwJvz.getVar().push_vector(Viu4cE1FwJvz.sq_GetLevelData(240, 1, A5cBXbn17JPk4KHxSfOsHBL)); 
 Viu4cE1FwJvz.getVar().push_vector(Viu4cE1FwJvz.sq_GetLevelData(240, 2, A5cBXbn17JPk4KHxSfOsHBL) + Viu4cE1FwJvz.sq_GetLevelData(240, 4, A5cBXbn17JPk4KHxSfOsHBL) * A5cBXbn17JPk4KHxSfOsHBL); 
 Viu4cE1FwJvz.getVar().push_vector(Viu4cE1FwJvz.sq_GetLevelData(240, 3, A5cBXbn17JPk4KHxSfOsHBL) + Viu4cE1FwJvz.sq_GetLevelData(240, 5, A5cBXbn17JPk4KHxSfOsHBL) * A5cBXbn17JPk4KHxSfOsHBL); 
 Viu4cE1FwJvz.getVar().setBool(0, true); 
 }
 else
 Viu4cE1FwJvz.getVar().setBool(0, false); 
 Viu4cE1FwJvz.getVar().setBool(1, false); 
 break;
 case 1:
 Viu4cE1FwJvz.sq_SetCurrentAnimation(131);
 local DsfzhkQAHhn1SbGKubxpOSr = Viu4cE1FwJvz.sq_GetVectorData(cTD5yy7KKbrnYP_9ws5BAt35, 1); 
 if(DsfzhkQAHhn1SbGKubxpOSr != -1)
 {
 local DSjeNW3ArWrn95RU = Viu4cE1FwJvz.getVar().get_vector(2); 
 Viu4cE1FwJvz.getVar().set_vector(0, sq_GetUniformVelocity(Viu4cE1FwJvz.getVar().get_vector(0), Viu4cE1FwJvz.getVar().get_vector(3), DsfzhkQAHhn1SbGKubxpOSr, DSjeNW3ArWrn95RU)); 
 Viu4cE1FwJvz.getVar().set_vector(1, sq_GetUniformVelocity(Viu4cE1FwJvz.getVar().get_vector(1), Viu4cE1FwJvz.getVar().get_vector(4), DsfzhkQAHhn1SbGKubxpOSr, DSjeNW3ArWrn95RU)); 
 }
 break;
 case 2:
 Viu4cE1FwJvz.sq_SetCurrentAnimation(132);
 Viu4cE1FwJvz.sq_AddStateLayerAnimation(1, Viu4cE1FwJvz.sq_CreateCNRDAnimation("effect/animation/dangerousscale/dangerousscale03_01.ani"), 0, 0); 
 if(Viu4cE1FwJvz.sq_IsMyControlObject())
 {
 sq_SetMyShake(Viu4cE1FwJvz, 15, 200); 
 sq_flashScreen(Viu4cE1FwJvz, 0, 150, 150, 204, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 Viu4cE1FwJvz.sq_StartWrite();
 Viu4cE1FwJvz.sq_WriteDword(240); 
 Viu4cE1FwJvz.sq_WriteDword(Viu4cE1FwJvz.getVar().get_vector(1)); 
 Viu4cE1FwJvz.sq_WriteDword(Viu4cE1FwJvz.sq_GetBonusRateWithPassive(240, 240, 0, 1.0)); 
 Viu4cE1FwJvz.sq_SendCreatePassiveObjectPacket(24374, 0, 100, 0, 0);
 }
 break;
 }
 Viu4cE1FwJvz.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onKeyFrameFlag_priest_dangerousscale(J_wcCgJV8Ev1v_7JbjRw0w, NUuJ3tGslVjBSMtArUMp)
{
 if(!J_wcCgJV8Ev1v_7JbjRw0w) return false;
 local qOL0BFf3z0KEotJYnDIsu = J_wcCgJV8Ev1v_7JbjRw0w.getSkillSubState(); 
 switch(qOL0BFf3z0KEotJYnDIsu)
 {
 case 0:
 if(NUuJ3tGslVjBSMtArUMp == 1)
 {
 if(J_wcCgJV8Ev1v_7JbjRw0w.getVar().getBool(0) == true) 
 {
 J_wcCgJV8Ev1v_7JbjRw0w.sq_AddStateLayerAnimation(1, J_wcCgJV8Ev1v_7JbjRw0w.sq_CreateCNRDAnimation("effect/animation/dangerousscale/dangerousscale01_casting.ani"), -150, -90); 
 J_wcCgJV8Ev1v_7JbjRw0w.sq_AddStateLayerAnimation(1, J_wcCgJV8Ev1v_7JbjRw0w.sq_CreateCNRDAnimation("effect/animation/dangerousscale/dangerousscalecasting_00.ani"), -150, -90); 
 J_wcCgJV8Ev1v_7JbjRw0w.sq_PlaySound("LIGH_GET_01", 9401); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar().push_vector(J_wcCgJV8Ev1v_7JbjRw0w.sq_GetStateTimer()); 
 }
 }
 break;
 case 1:
 switch(NUuJ3tGslVjBSMtArUMp)
 {
 case 1:
 J_wcCgJV8Ev1v_7JbjRw0w.getVar("move").clear_vector(); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar("move").push_vector(J_wcCgJV8Ev1v_7JbjRw0w.getZPos()); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar("move").push_vector(0); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar("move").push_vector(0); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar("move").push_vector(1); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar("move").push_vector(4); 
 
 sq_AddDrawOnlyAniFromParent(J_wcCgJV8Ev1v_7JbjRw0w, "character/priest/effect/animation/dangerousscale/dangerousscale02dust_front.ani", 0, 0, 0); 
 sq_AddDrawOnlyAniFromParent(J_wcCgJV8Ev1v_7JbjRw0w, "character/priest/effect/animation/dangerousscale/dangerousscale02dust_back.ani", 0, -1, 0); 
 break;
 case 2:
 J_wcCgJV8Ev1v_7JbjRw0w.getVar("move").clear_vector(); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar("move").push_vector(J_wcCgJV8Ev1v_7JbjRw0w.getZPos()); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar("move").push_vector(0); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar("move").push_vector(6); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar("move").push_vector(7); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar("move").push_vector(7); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar().set_vector(0, 0); 
 break;
 }
 break;
 }
 return true;
} ;

function onEndState_priest_dangerousscale(ndLB9hngtI6B, mwf1G1GIpfr4AoWCBu)
{
 if(!ndLB9hngtI6B) return;
 ndLB9hngtI6B.stopSound(9401); 
} ;

function onProc_priest_dangerousscale(oniq8QQf8xWNZIq6V)
{
 if(!oniq8QQf8xWNZIq6V) return;
 local sVE0NDdxe0FKx = oniq8QQf8xWNZIq6V.getSkillSubState(); 
 switch(sVE0NDdxe0FKx)
 {
 case 0:
 if(oniq8QQf8xWNZIq6V.getVar().size_vector() != 6)return;
 if(oniq8QQf8xWNZIq6V.sq_IsMyControlObject())
 {
 if(!oniq8QQf8xWNZIq6V.isDownSkillLastKey()) 
 {
 oniq8QQf8xWNZIq6V.sq_IntVectClear();
 oniq8QQf8xWNZIq6V.sq_IntVectPush(sVE0NDdxe0FKx + 1); 
 oniq8QQf8xWNZIq6V.sq_IntVectPush(oniq8QQf8xWNZIq6V.sq_GetStateTimer() - oniq8QQf8xWNZIq6V.getVar().get_vector(5)); 
 oniq8QQf8xWNZIq6V.sq_AddSetStatePacket(240, STATE_PRIORITY_USER, true); 
 }
 }
 if(oniq8QQf8xWNZIq6V.getVar().getBool(0) == true
 && oniq8QQf8xWNZIq6V.getVar().getBool(1) == false) 
 {
 local nT3n4fFzKYu7 = oniq8QQf8xWNZIq6V.sq_GetStateTimer() - oniq8QQf8xWNZIq6V.getVar().get_vector(5); 
 local A4FQqCvetC9Q = oniq8QQf8xWNZIq6V.getVar().get_vector(2); 
 if(nT3n4fFzKYu7 >= A4FQqCvetC9Q) 
 {
 sq_AddDrawOnlyAniFromParent(oniq8QQf8xWNZIq6V, "character/priest/effect/animation/dangerousscale/castingend_02.ani", -150, 0, 90); 
 oniq8QQf8xWNZIq6V.stopSound(9401); 
 oniq8QQf8xWNZIq6V.sq_PlaySound("LIGH_GET_02");
 oniq8QQf8xWNZIq6V.getVar().setBool(1, true); 
 }
 }
 break;
 }
 if(oniq8QQf8xWNZIq6V.getVar("move").size_vector() > 0)
 {
 local JTfmQi0lctRR2mkS4 = oniq8QQf8xWNZIq6V.getVar("move"); 
 local FJQUjjjRVNBtACNmQ96o5M7P = oniq8QQf8xWNZIq6V.getCurrentAnimation(); 
 local L9N8d5lqNhSX = sq_GetCurrentTime(FJQUjjjRVNBtACNmQ96o5M7P) - FJQUjjjRVNBtACNmQ96o5M7P.getDelaySum(JTfmQi0lctRR2mkS4.get_vector(1), JTfmQi0lctRR2mkS4.get_vector(2)); 
 local dB8Bs2cuxPT = FJQUjjjRVNBtACNmQ96o5M7P.getDelaySum(JTfmQi0lctRR2mkS4.get_vector(3), JTfmQi0lctRR2mkS4.get_vector(4)); 
 local _oTDLDPKcmilcQZc3 = sq_GetAccel(JTfmQi0lctRR2mkS4.get_vector(0), oniq8QQf8xWNZIq6V.getVar().get_vector(0), L9N8d5lqNhSX, dB8Bs2cuxPT, true);
 sq_setCurrentAxisPos(oniq8QQf8xWNZIq6V, 2, _oTDLDPKcmilcQZc3); 
 }
} ;

 
function onEndCurrentAni_priest_dangerousscale(dh9fxoGISRXeOIENS1j)
{
 if(!dh9fxoGISRXeOIENS1j) return;
 if(!dh9fxoGISRXeOIENS1j.sq_IsMyControlObject()) return;
 local NULchLBUnbdkMb8vz = dh9fxoGISRXeOIENS1j.getSkillSubState(); 
 if(NULchLBUnbdkMb8vz != 2)
 {
 if(dh9fxoGISRXeOIENS1j.getVar().getBool(0) == false) 
 {
 dh9fxoGISRXeOIENS1j.sq_IntVectClear();
 dh9fxoGISRXeOIENS1j.sq_IntVectPush(NULchLBUnbdkMb8vz + 1); 
 dh9fxoGISRXeOIENS1j.sq_AddSetStatePacket(240, STATE_PRIORITY_USER, true); 
 }
 else if(NULchLBUnbdkMb8vz != 0)
 {
 dh9fxoGISRXeOIENS1j.sq_IntVectClear();
 dh9fxoGISRXeOIENS1j.sq_IntVectPush(NULchLBUnbdkMb8vz + 1); 
 dh9fxoGISRXeOIENS1j.sq_AddSetStatePacket(240, STATE_PRIORITY_USER, true); 
 }
 }
 else
 dh9fxoGISRXeOIENS1j.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

