
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_mage_elementalquake(iGdJMYbQ88GpUH)
{
 if(!iGdJMYbQ88GpUH) return false; 
 local oT5wUkQnz_RqxPvtY3M = iGdJMYbQ88GpUH.sq_IsUseSkill(250); 
 if(oT5wUkQnz_RqxPvtY3M) 
 {
 iGdJMYbQ88GpUH.sq_IntVectClear();
 iGdJMYbQ88GpUH.sq_IntVectPush(0); 
 iGdJMYbQ88GpUH.sq_AddSetStatePacket(250, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_elementalquake(iGdJMYbQ88GpUH)
{
 if(!iGdJMYbQ88GpUH) return false; 
 local oT5wUkQnz_RqxPvtY3M = iGdJMYbQ88GpUH.sq_GetState(); 
 if(oT5wUkQnz_RqxPvtY3M == STATE_STAND) 
 return true; 
 if(oT5wUkQnz_RqxPvtY3M == STATE_ATTACK) 
 {
 return iGdJMYbQ88GpUH.sq_IsCommandEnable(250); 
 }
 return true; 
} ;

 
function onSetState_mage_elementalquake(L_D3BJmm2Vop01TXmvfF, g82ig5XEkk5lQs1, nTPZBeke8cUMJF4R, jmKPDmAYBExrKkIRk6ZYX)
{
 if(!L_D3BJmm2Vop01TXmvfF) return; 
 L_D3BJmm2Vop01TXmvfF.sq_StopMove(); 
 local tIK8ZjVDYdlIuDqO = L_D3BJmm2Vop01TXmvfF.sq_GetVectorData(nTPZBeke8cUMJF4R, 0); 
 L_D3BJmm2Vop01TXmvfF.setSkillSubState(tIK8ZjVDYdlIuDqO); 
 switch(tIK8ZjVDYdlIuDqO)
 {
 case 0: 
 L_D3BJmm2Vop01TXmvfF.sq_IsEnterSkillLastKeyUnits(250); 
 L_D3BJmm2Vop01TXmvfF.sq_SetCurrentAnimation(113); 
 
 sq_CreateDrawOnlyObject(L_D3BJmm2Vop01TXmvfF, "character/mage/effect/animation/elementalquake/castingstart_crack.ani", ENUM_DRAWLAYER_BOTTOM, true);
 local t_r_WB_i4_shUeMKZx9L = sq_GetSkillLevel(L_D3BJmm2Vop01TXmvfF, 250); 
 local PaAqN7SqqCzOjGYIjxA = sq_GetCastTime(L_D3BJmm2Vop01TXmvfF, 250, t_r_WB_i4_shUeMKZx9L); 
 sq_StartDrawCastGauge(L_D3BJmm2Vop01TXmvfF, PaAqN7SqqCzOjGYIjxA, true); 
 local ZHjQfMqzJgo0J3hYzJRHt7 = L_D3BJmm2Vop01TXmvfF.sq_GetLevelData(250, 4, t_r_WB_i4_shUeMKZx9L); 
 local tZIuha9l0h2DLXqGMNoaDRl = L_D3BJmm2Vop01TXmvfF.getCurrentAnimation(); 
 local zh0tWKVRAXdOUPD9IViWGob = tZIuha9l0h2DLXqGMNoaDRl.getDelaySum(false); 
 
 L_D3BJmm2Vop01TXmvfF.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 local j1YLBF8ljHX_pVK9xj1Nb = tZIuha9l0h2DLXqGMNoaDRl.getDelaySum(false); 
 local uue8RKsL44LyCQe3 = j1YLBF8ljHX_pVK9xj1Nb.tofloat() / zh0tWKVRAXdOUPD9IViWGob.tofloat(); 
 local NDXiKHDJD487guQrKXgY = (PaAqN7SqqCzOjGYIjxA.tofloat() * uue8RKsL44LyCQe3).tointeger(); 
 L_D3BJmm2Vop01TXmvfF.getVar().setBool(0, false); 
 L_D3BJmm2Vop01TXmvfF.getVar().clear_vector(); 
 L_D3BJmm2Vop01TXmvfF.getVar().push_vector(NDXiKHDJD487guQrKXgY); 
 L_D3BJmm2Vop01TXmvfF.getVar().push_vector(ZHjQfMqzJgo0J3hYzJRHt7); 
 L_D3BJmm2Vop01TXmvfF.sq_PlaySound("WZ_ELEMENTALQUAKE_02_1", 9004); 
 break;
 case 1: 
 local oo7mSH841iNjA4wYwikjoL = L_D3BJmm2Vop01TXmvfF.sq_GetVectorData(nTPZBeke8cUMJF4R, 1); 
 local PaAqN7SqqCzOjGYIjxA = L_D3BJmm2Vop01TXmvfF.getVar().get_vector(0); 
 local ZHjQfMqzJgo0J3hYzJRHt7 = L_D3BJmm2Vop01TXmvfF.getVar().get_vector(1); 
 L_D3BJmm2Vop01TXmvfF.sq_SetCurrentAnimation(114);
 L_D3BJmm2Vop01TXmvfF.getVar().clear_vector(); 
 L_D3BJmm2Vop01TXmvfF.getVar().push_vector(sq_GetObjectTime(L_D3BJmm2Vop01TXmvfF)); 
 L_D3BJmm2Vop01TXmvfF.sq_PlaySound("WZ_ELEMENTALQUAKE_02_2"); 
 if(L_D3BJmm2Vop01TXmvfF.sq_IsMyControlObject())
 {
 local t_r_WB_i4_shUeMKZx9L = sq_GetSkillLevel(L_D3BJmm2Vop01TXmvfF, 250); 
 local Czh4K8svNLX0_GPFr1Y = L_D3BJmm2Vop01TXmvfF.sq_GetLevelData(250, 0, t_r_WB_i4_shUeMKZx9L); 
 local VUIwjvzM9mZD3gBQmbpZb = L_D3BJmm2Vop01TXmvfF.sq_GetLevelData(250, 1, t_r_WB_i4_shUeMKZx9L); 
 local F0Qwl_HsS0gyPrDrTaUdd = sq_GetUniformVelocity(Czh4K8svNLX0_GPFr1Y, VUIwjvzM9mZD3gBQmbpZb, oo7mSH841iNjA4wYwikjoL - PaAqN7SqqCzOjGYIjxA, ZHjQfMqzJgo0J3hYzJRHt7); 
 
 L_D3BJmm2Vop01TXmvfF.sq_StartWrite();
 L_D3BJmm2Vop01TXmvfF.sq_WriteDword(250); 
 L_D3BJmm2Vop01TXmvfF.sq_WriteDword(L_D3BJmm2Vop01TXmvfF.sq_GetBonusRateWithPassive(250, 250, 2, 1.0)); 
 L_D3BJmm2Vop01TXmvfF.sq_WriteDword(F0Qwl_HsS0gyPrDrTaUdd);
 L_D3BJmm2Vop01TXmvfF.sq_WriteDword(L_D3BJmm2Vop01TXmvfF.sq_GetBonusRateWithPassive(250, 250, 3, 1.0)); 
 L_D3BJmm2Vop01TXmvfF.sq_SendCreatePassiveObjectPacket(24372, 0, 380, 0, 0);
 }
 break;
 case 2: 
 L_D3BJmm2Vop01TXmvfF.sq_SetCurrentAnimation(115);
 break;
 case 3: 
 L_D3BJmm2Vop01TXmvfF.sq_SetCurrentAnimation(116);
 break;
 }
 if(tIK8ZjVDYdlIuDqO != 0) 
 L_D3BJmm2Vop01TXmvfF.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onKeyFrameFlag_mage_elementalquake(Dcju7DIrGgeVQRdU, IQqclgIlljkktMlhHPREHVW)
{
 if(!Dcju7DIrGgeVQRdU) return false;
 if(!Dcju7DIrGgeVQRdU.sq_IsMyControlObject()) return true;
 local T1mXUPoiXVSbfCu7AG = Dcju7DIrGgeVQRdU.getSkillSubState(); 
 if(T1mXUPoiXVSbfCu7AG == 0)
 {
 switch(IQqclgIlljkktMlhHPREHVW)
 {
 case 1:
 case 2:sq_SetMyShake(Dcju7DIrGgeVQRdU, 2, 160); break;
 }
 }
 return true;
} ;

function onEndState_mage_elementalquake(vIJx6BPwOwIVCHdhK3Doj, MuAeaLp8eZGg)
{
 if(!vIJx6BPwOwIVCHdhK3Doj) return;
 if(MuAeaLp8eZGg != 250)
 sq_EndDrawCastGauge(vIJx6BPwOwIVCHdhK3Doj); 
 vIJx6BPwOwIVCHdhK3Doj.stopSound(9004); 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(vIJx6BPwOwIVCHdhK3Doj, "character/mage/appendage/ap_chargingeffect.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(vIJx6BPwOwIVCHdhK3Doj, "character/mage/appendage/ap_chargingeffect.nut");
} ;

function onProcCon_mage_elementalquake(Kw2ueYy2ttgyOaPO9zQ)
{
 if(!Kw2ueYy2ttgyOaPO9zQ) return;
 local yOrPg6R0hU9CwR = Kw2ueYy2ttgyOaPO9zQ.getSkillSubState(); 
 if(yOrPg6R0hU9CwR == 0)
 {
 local jA7bhqpbCw = Kw2ueYy2ttgyOaPO9zQ.getVar().get_vector(0); 
 local safcXoJWv7NpL = Kw2ueYy2ttgyOaPO9zQ.sq_GetStateTimer(); 
 
 if(safcXoJWv7NpL >= jA7bhqpbCw)
 {
 if(Kw2ueYy2ttgyOaPO9zQ.isDownSkillLastKey()) 
 {
 
 if(Kw2ueYy2ttgyOaPO9zQ.getVar().getBool(0) == false)
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteDword(Kw2ueYy2ttgyOaPO9zQ.getVar().get_vector(1)); 
 sq_SendChangeSkillEffectPacket(Kw2ueYy2ttgyOaPO9zQ, 250); 
 Kw2ueYy2ttgyOaPO9zQ.getVar().setBool(0, true); 
 }
 }
 else
 {
 Kw2ueYy2ttgyOaPO9zQ.sq_IntVectClear();
 Kw2ueYy2ttgyOaPO9zQ.sq_IntVectPush(1); 
 Kw2ueYy2ttgyOaPO9zQ.sq_IntVectPush(safcXoJWv7NpL);
 Kw2ueYy2ttgyOaPO9zQ.sq_AddSetStatePacket(250, STATE_PRIORITY_USER, true); 
 }
 }
 }
} ;

 
function onEndCurrentAni_mage_elementalquake(WdlxwJi181Zy2vOk3XFh1hGo)
{
 if(!WdlxwJi181Zy2vOk3XFh1hGo) return;
 if(!WdlxwJi181Zy2vOk3XFh1hGo.sq_IsMyControlObject()) return;
 local ZbjiQddQrSmTLEIElssi = WdlxwJi181Zy2vOk3XFh1hGo.getSkillSubState(); 
 switch(ZbjiQddQrSmTLEIElssi)
 {
 case 1:
 WdlxwJi181Zy2vOk3XFh1hGo.sq_IntVectClear();
 WdlxwJi181Zy2vOk3XFh1hGo.sq_IntVectPush(2); 
 WdlxwJi181Zy2vOk3XFh1hGo.sq_AddSetStatePacket(250, STATE_PRIORITY_USER, true); 
 break;
 case 3:
 WdlxwJi181Zy2vOk3XFh1hGo.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

 
function getScrollBasisPos_mage_elementalquake(VKYuonGZY4WnJ14AdpQhOV)
{
 if(!VKYuonGZY4WnJ14AdpQhOV) return false;
 if(!VKYuonGZY4WnJ14AdpQhOV.sq_IsMyControlObject()) return false;
 local GaSJmd7pgB = VKYuonGZY4WnJ14AdpQhOV.getSkillSubState(); 
 switch(GaSJmd7pgB)
 {
 case 1:
 case 2:
 local c_Lk8eF22yxDIdx6 = sq_GetObjectTime(VKYuonGZY4WnJ14AdpQhOV) - VKYuonGZY4WnJ14AdpQhOV.getVar().get_vector(0); 
 if(c_Lk8eF22yxDIdx6 <= 150)
 return false;
 else
 c_Lk8eF22yxDIdx6 -= 150;
 local K9G6MGXVnPtvnSrWfE5ZVqf = sq_GetDistancePos(VKYuonGZY4WnJ14AdpQhOV.getXPos(),
 VKYuonGZY4WnJ14AdpQhOV.getDirection(), 
 sq_GetUniformVelocity(0, 350, c_Lk8eF22yxDIdx6, 200)); 
 VKYuonGZY4WnJ14AdpQhOV.sq_SetCameraScrollPosition(K9G6MGXVnPtvnSrWfE5ZVqf, VKYuonGZY4WnJ14AdpQhOV.getYPos(), 0); 
 return true;
 case 3:
 local PXFin3x5uyctqdjwMcQ = VKYuonGZY4WnJ14AdpQhOV.sq_GetCurrentAni(); 
 local c_Lk8eF22yxDIdx6 = sq_GetCurrentTime(PXFin3x5uyctqdjwMcQ); 
 local xxy8upuMj1wCXjQX49g = PXFin3x5uyctqdjwMcQ.getDelaySum(false); 
 local K9G6MGXVnPtvnSrWfE5ZVqf = sq_GetDistancePos(VKYuonGZY4WnJ14AdpQhOV.getXPos(),
 VKYuonGZY4WnJ14AdpQhOV.getDirection(),
 sq_GetUniformVelocity(350, 0, c_Lk8eF22yxDIdx6, xxy8upuMj1wCXjQX49g)); 
 VKYuonGZY4WnJ14AdpQhOV.sq_SetCameraScrollPosition(K9G6MGXVnPtvnSrWfE5ZVqf, VKYuonGZY4WnJ14AdpQhOV.getYPos(), 0); 
 return true;
 }
 return false;
} ;


