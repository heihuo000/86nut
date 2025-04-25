// 서브 스테이트가 필요 없다.
SUBSTATE_POWER_OF_DARKNESS_START		<- 0;
SUBSTATE_POWER_OF_DARKNESS_EXPLOSION	<- 1;
SUBSTATE_POWER_OF_DARKNESS_LIFT			<- 2;
SUBSTATE_POWER_OF_DARKNESS_LAST			<- 3;
SUBSTATE_POWER_OF_DARKNESS_END			<- 4;

POD_VAR_ARROW_COUNT						<- 1; // 사용한 화살 갯수
POD_VAR_CIRCLE_INDEX					<- 2; // 생성된 구체 인덱스
POD_VAR_CIRCLE_OBJECT_GROUP				<- 3; // 생성된 구체 그룹
POD_VAR_CIRCLE_OBJECT_UID				<- 4; // 생성된 구체 UID
POD_VAR_CIRCLE_OBJECT					<- 5; // 생성된 구체
POD_VAR_SUPERARMOR						<- 6; // 슈퍼아머 어펜디지
POD_VAR_FLASHSCREEN						<- 7; // 생성된 구체

POD_TIME_EVENT_ARROWGAP <- 1; // 타임 이벤트 : 화살 발동 시간 간격
POD_TIME_EVENT_LIFTTIME <- 2; // 타임 이벤트 : 몬스터 띄우는 시간
POD_TIME_EVENT_LASTDELAY <- 3; // 타임 이벤트 : 막타까지 딜레이
POD_TIME_EVENT_LAST <- 4; // 타임 이벤트 : 막타후 딜레이

POD_SOUND_INDEX_LOOP <- 92716;

 
function checkExecutableSkill_PowerOfDarkness(TIXYA4pZOZK97kAyB6ubo)
{
 if(!TIXYA4pZOZK97kAyB6ubo) return false;
 local DarkDLIqoPJNuEwJ4GHBlj = TIXYA4pZOZK97kAyB6ubo.sq_IsUseSkill(125);
 if(DarkDLIqoPJNuEwJ4GHBlj)
 {
 TIXYA4pZOZK97kAyB6ubo.sq_IntVectClear();
 TIXYA4pZOZK97kAyB6ubo.sq_IntVectPush(0); 
 TIXYA4pZOZK97kAyB6ubo.sq_addSetStatePacket(71, STATE_PRIORITY_IGNORE_FORCE, true);
 return true;
 }
 return false;
} ;

 
function isGrabable_PowerOfDarkness(PdvYJNLP8P2zy85iqBuYC2md)
{
 local tMkYEleEFEoo = PdvYJNLP8P2zy85iqBuYC2md.getVar();
 local PEjUNF5qTRqs = 0;
 local p7l1RG9vAMk4buKKl = tMkYEleEFEoo.get_obj_vector_size();
 if(p7l1RG9vAMk4buKKl == 0)
 return false;
 for(; PEjUNF5qTRqs < p7l1RG9vAMk4buKKl; ++PEjUNF5qTRqs)
 {
 local JM1iYtt5Fi_ldip5i = sq_GetCNRDObjectToCollisionObject(tMkYEleEFEoo.get_obj_vector(PEjUNF5qTRqs));
 if(JM1iYtt5Fi_ldip5i && !sq_IsGrabable(PdvYJNLP8P2zy85iqBuYC2md, JM1iYtt5Fi_ldip5i))
 {
 return false;
 }
 }
 return true;
} ;

function resetDungeonStart_PowerOfDarkness(nrnZC1kbzsADI2k2o, nXk_MMfc6jcNJ, HeTrsedIxmi, m9frfGOsOL3ztQchC1, WcT_cgtO6K)
{
 nrnZC1kbzsADI2k2o.sq_setXScrollStop(0);
} ;

 
function onIsCheckHitCollision_PowerOfDarkness(nrnZC1kbzsADI2k2o, nXk_MMfc6jcNJ)
{
 local HeTrsedIxmi = nrnZC1kbzsADI2k2o.getSkillSubState();
 if(HeTrsedIxmi == SUBSTATE_POWER_OF_DARKNESS_START) 
 return true;
 
 return true;
} ;

function isForceHitCheck_PowerOfDarkness(RZqZ_C_fXwB5HAG4v3z1)
{
 local dH0p9pMzh0 = RZqZ_C_fXwB5HAG4v3z1.getSkillSubState();
 if(dH0p9pMzh0 == SUBSTATE_POWER_OF_DARKNESS_START)
 { 
 return true;
 }
 return false;
} ;

function onSetState_PowerOfDarkness(f4Q6M41dGN, t9BGFkxY9MVhQECr, zpr_NEI9fy2DnlQ, Z97HWuZcii4aY0x)
{
 if(!f4Q6M41dGN) return;
 local ZR_cSk7byTj = f4Q6M41dGN.sq_getVectorData(zpr_NEI9fy2DnlQ, 0);
 f4Q6M41dGN.setSkillSubState(ZR_cSk7byTj);
 switch(ZR_cSk7byTj)
 {
 case 0: 
 f4Q6M41dGN.getVar().setBool(0, false); 
 f4Q6M41dGN.getVar().setBool(1, false); 
 f4Q6M41dGN.getVar("flashobj").clear_obj_vector(); 
 f4Q6M41dGN.sq_stopMove(); 
 if(isAvengerAwakenning(f4Q6M41dGN) == false) 
 {
 f4Q6M41dGN.sq_setCurrentAnimation(111);
 f4Q6M41dGN.sq_PlaySound("PR_DARKPOWER_READY");
 }
 else
 {
 local bXEvs3OzFjH6j = f4Q6M41dGN.getVar().GetAnimationMap("powerofdarknessstart", "character/priest/animation/avengerawakening/powerofdarknessstart.ani");
 f4Q6M41dGN.setCurrentAnimation(bXEvs3OzFjH6j);
 }
 f4Q6M41dGN.sq_setCurrentAttackInfo(92);
 local DIbdxdSMCCz6Wk1QmBJU = f4Q6M41dGN.sq_getBonusRateWithPassive(125, 71, 0, 1.0); 
 f4Q6M41dGN.sq_setCurrentAttackBonusRate(DIbdxdSMCCz6Wk1QmBJU); 
 if(!sq_isPVPMode()) 
 f4Q6M41dGN.sq_setSuperArmor(6);
 f4Q6M41dGN.sq_setXScrollStart(150, 300); 
 break;
 case 1: 
 if(isAvengerAwakenning(f4Q6M41dGN) == false) 
 {
 f4Q6M41dGN.sq_setCurrentAnimation(112);
 }
 else
 {
 local bXEvs3OzFjH6j = f4Q6M41dGN.getVar().GetAnimationMap("powerofdarknessstay", "character/priest/animation/avengerawakening/powerofdarknessstay.ani");
 f4Q6M41dGN.setCurrentAnimation(bXEvs3OzFjH6j);
 }
 local r1Pj_X94lzMI3tzikrLLuAY = f4Q6M41dGN.getMyPassiveObject(24107, f4Q6M41dGN.getMyPassiveObjectCount(24107) - 1); 
 if(r1Pj_X94lzMI3tzikrLLuAY)
 {
 if(f4Q6M41dGN.getVar().getBool(1) == false) 
 r1Pj_X94lzMI3tzikrLLuAY.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
 else
 r1Pj_X94lzMI3tzikrLLuAY.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "");
 r1Pj_X94lzMI3tzikrLLuAY.playSound("DARKPOWER_CATCH_LOOP", 92716, 0, 0, 0);
 }
 break;
 case 2: 
 local wMfZ3PIx6Q1mOWQ = f4Q6M41dGN.sq_getVectorData(zpr_NEI9fy2DnlQ, 1); 
 if(wMfZ3PIx6Q1mOWQ==1)
 {
 local HDtQhMcS81Q4QBRsdfg = f4Q6M41dGN.sq_getVectorData(zpr_NEI9fy2DnlQ, 2); 
 if(HDtQhMcS81Q4QBRsdfg >0)consumeDevilGauge(f4Q6M41dGN, HDtQhMcS81Q4QBRsdfg); 
 if(isAvengerAwakenning(f4Q6M41dGN) == false) 
 {
 if(f4Q6M41dGN.sq_isMyControlObject())
 {
 f4Q6M41dGN.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 f4Q6M41dGN.flushSetStatePacket(); 
 }
 return; 
 }
 }
 if(isAvengerAwakenning(f4Q6M41dGN) == false) 
 {
 f4Q6M41dGN.sq_setCurrentAnimation(113);
 }
 else
 {
 local bXEvs3OzFjH6j = f4Q6M41dGN.getVar().GetAnimationMap("powerofdarknessend", "character/priest/animation/avengerawakening/powerofdarknessend.ani");
 f4Q6M41dGN.setCurrentAnimation(bXEvs3OzFjH6j);
 f4Q6M41dGN.sq_setCurrentAttackInfo(92);
 local DIbdxdSMCCz6Wk1QmBJU = f4Q6M41dGN.sq_getBonusRateWithPassive(125, 71, 4, 1.0);
 f4Q6M41dGN.sq_setCurrentAttackBonusRate(DIbdxdSMCCz6Wk1QmBJU); 
 f4Q6M41dGN.sq_PlaySound("PR_DGUARDIAN_DARKPOWER");
 }
 f4Q6M41dGN.sq_setXScrollStop(100); 
 break;
 }
} ;

function onProcCon_PowerOfDarkness(KNCSf1LzYbX)
{
 if(!KNCSf1LzYbX) return;
 local G2Q7oMu7Dyazqk0zKyU = KNCSf1LzYbX.getSkillSubState();
 if(G2Q7oMu7Dyazqk0zKyU == 1) 
 {
 local ecxpO0pEBWmfTroTjKf = KNCSf1LzYbX.getMyPassiveObject(24107, KNCSf1LzYbX.getMyPassiveObjectCount(24107) - 1); 
 if(ecxpO0pEBWmfTroTjKf)
 {
 local IVaQTkQB1g = ecxpO0pEBWmfTroTjKf.getState();
 if(IVaQTkQB1g == 13)
 {
 KNCSf1LzYbX.sq_IntVectClear();
 KNCSf1LzYbX.sq_IntVectPush(2); 
 KNCSf1LzYbX.sq_IntVectPush(0); 
 KNCSf1LzYbX.sq_addSetStatePacket(71, STATE_PRIORITY_IGNORE_FORCE, true);
 return;
 }
 }
 KNCSf1LzYbX.setSkillCommandEnable(125, true); 
 if(KNCSf1LzYbX.sq_IsEnterSkill(125) != -1) 
 {
 local cJoQunujoUYwqUBJN9d = (KNCSf1LzYbX.sq_getLevelData(125, 3, sq_GetSkillLevel(KNCSf1LzYbX, 125)) / 100.0 * getDevilMaxGaugeValue(KNCSf1LzYbX)).tointeger(); 
 if(getDevilGauge(KNCSf1LzYbX) >= cJoQunujoUYwqUBJN9d) 
 {
 KNCSf1LzYbX.sq_IntVectClear();
 KNCSf1LzYbX.sq_IntVectPush(2); 
 KNCSf1LzYbX.sq_IntVectPush(1); 
 KNCSf1LzYbX.sq_IntVectPush(cJoQunujoUYwqUBJN9d); 
 KNCSf1LzYbX.sq_addSetStatePacket(71, STATE_PRIORITY_USER, true);
 }
 else if(KNCSf1LzYbX.isMessage())
 sq_AddMessage(29002); 
 }
 }
} ;

function onEndState_PowerOfDarkness(cYMwb915aFpuT, gTQbYEJ89IRuyknNljjpmq)
{
 if(!cYMwb915aFpuT) return;
 if(gTQbYEJ89IRuyknNljjpmq != 71) 
 {
 cYMwb915aFpuT.sq_removeSuperArmor(6); 
 RemoveAllFlash(cYMwb915aFpuT); 
 cYMwb915aFpuT.sq_setXScrollStop(50); 
 }
} ;

function onKeyFrameFlag_PowerOfDarkness(J9wNTLnBKH, TzaTBZVzEv)
{
 if(!J9wNTLnBKH) return;
 local c9i9nQRxhlFnrW_Ueor = J9wNTLnBKH.getSkillSubState();
 if(c9i9nQRxhlFnrW_Ueor == 0)
 switch(TzaTBZVzEv)
 {
 case 0:
 if(J9wNTLnBKH.sq_isMyControlObject())
 {
 J9wNTLnBKH.sq_binaryData_startWrite();
 J9wNTLnBKH.sq_binaryData_writeDword(J9wNTLnBKH.sq_getIntData(1)); 
 J9wNTLnBKH.sq_binaryData_writeDword(J9wNTLnBKH.sq_getIntData(2)); 
 J9wNTLnBKH.sq_binaryData_writeDword(J9wNTLnBKH.sq_getIntData(3)); 
 J9wNTLnBKH.sq_binaryData_writeDword(J9wNTLnBKH.sq_getIntData(4)); 
 J9wNTLnBKH.sq_binaryData_writeDword(J9wNTLnBKH.sq_getIntData(5)); 
 J9wNTLnBKH.sq_binaryData_writeDword(J9wNTLnBKH.sq_getIntData(6)); 
 J9wNTLnBKH.sq_binaryData_writeDword(J9wNTLnBKH.sq_getBonusRateWithPassive(125, 71, 2, 1.0)); 
 J9wNTLnBKH.sq_binaryData_writeDword(J9wNTLnBKH.sq_getLevelData(125, 3, sq_GetSkillLevel(J9wNTLnBKH, 125))); 
 J9wNTLnBKH.sq_p00_sendCreatePassiveObjectPacket(24107, 0, 172, 2, 97);
 }
 break;
 case 1:
 local CJRo_oHvcyJAb8S1UxaMadjn = sq_flashScreen(J9wNTLnBKH, 80, 99990, 240, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 J9wNTLnBKH.getVar("flashobj").push_obj_vector(CJRo_oHvcyJAb8S1UxaMadjn); 
 break;
 }
 return true;
} ;


if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onEndCurrentAni_PowerOfDarkness(xKyhF_OQv5hw)
{
 if(!xKyhF_OQv5hw) return;
 if(!xKyhF_OQv5hw.sq_isMyControlObject()) return;
 local udlqxL5QntfAMFb = xKyhF_OQv5hw.getSkillSubState();
 switch(udlqxL5QntfAMFb)
 {
 case 0:
 if(xKyhF_OQv5hw.getVar().getBool(0) == true) 
 {
 xKyhF_OQv5hw.sq_IntVectClear();
 xKyhF_OQv5hw.sq_IntVectPush(1); 
 xKyhF_OQv5hw.sq_addSetStatePacket(71, STATE_PRIORITY_IGNORE_FORCE, true);
 }
 else
 {
 xKyhF_OQv5hw.sq_IntVectClear();
 xKyhF_OQv5hw.sq_IntVectPush(2); 
 xKyhF_OQv5hw.sq_addSetStatePacket(71, STATE_PRIORITY_IGNORE_FORCE, true);
 }
 break;
 case 2:
 xKyhF_OQv5hw.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 break;
 }
} ;

function onAttack_PowerOfDarkness(pOiRK2igKO6cH1OroS4a, QYMMfCvwnn9, Hpg5HubgTLwGue)
{
 if(!pOiRK2igKO6cH1OroS4a) return;
 if(!QYMMfCvwnn9.isObjectType(OBJECTTYPE_ACTIVE)) return;
 local nX3PmMWU3o = pOiRK2igKO6cH1OroS4a.getSkillSubState();
 if(nX3PmMWU3o == 0) 
 {
 if(pOiRK2igKO6cH1OroS4a.getVar().getBool(0) == false) 
 {
 pOiRK2igKO6cH1OroS4a.sq_PlaySound("DARKPOWER_CATCH");
 pOiRK2igKO6cH1OroS4a.getVar().setBool(0, true); 
 }
 local m8SroqBw1Op8xxbBzRz = pOiRK2igKO6cH1OroS4a.getMyPassiveObject(24107, pOiRK2igKO6cH1OroS4a.getMyPassiveObjectCount(24107) - 1); 
 if(!m8SroqBw1Op8xxbBzRz)return;
 local SqK3oxJWseTs = CNSquirrelAppendage.sq_AppendAppendage(QYMMfCvwnn9, m8SroqBw1Op8xxbBzRz, 120, false, "Appendage/Character/ap_PowerOfDarkness.nut", true);
 if(sq_IsHoldable(pOiRK2igKO6cH1OroS4a, QYMMfCvwnn9))
 {
 sq_HoldAndDelayDie(QYMMfCvwnn9, m8SroqBw1Op8xxbBzRz, true, true, true, 300, 300, ENUM_DIRECTION_NEUTRAL, SqK3oxJWseTs);
 QYMMfCvwnn9.setCurrentDirection(sq_GetOppositeDirection(pOiRK2igKO6cH1OroS4a.getDirection()));
 }
 local oFhRkm0L5wd9Smt2273Q7 = sq_GetIntData(pOiRK2igKO6cH1OroS4a, 125, 0); 
 if(sq_IsGrabable(pOiRK2igKO6cH1OroS4a, QYMMfCvwnn9) && sq_IsHoldable(pOiRK2igKO6cH1OroS4a, QYMMfCvwnn9) && !sq_IsFixture(QYMMfCvwnn9))
 sq_MoveToAppendageForce(QYMMfCvwnn9, m8SroqBw1Op8xxbBzRz, pOiRK2igKO6cH1OroS4a, 160, 0, 90 - QYMMfCvwnn9.getObjectHeight() / 2, oFhRkm0L5wd9Smt2273Q7, true, SqK3oxJWseTs);
 else if(pOiRK2igKO6cH1OroS4a.getVar().getBool(1) == false) 
 pOiRK2igKO6cH1OroS4a.getVar().setBool(1, true); 
 
 
 m8SroqBw1Op8xxbBzRz.getVar("atkobj").push_obj_vector(QYMMfCvwnn9); 
 }
} ;


