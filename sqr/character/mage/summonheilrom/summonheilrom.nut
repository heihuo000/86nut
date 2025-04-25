
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_mage_summonheilrom(s2kkgOGfOIs)
{
 if(!s2kkgOGfOIs) return false; 
 local XG2kTgQakanMflZTShDyKL9 = getMyMonsterObject_Character_jsqq506807329(s2kkgOGfOIs, 50680733, "character/mage/summonheilrom/ap_summonheilrom.nut");
 local P9hrGXujWK = onGetMyPassiveObject_My(s2kkgOGfOIs, 24372, 138, 1); 
 if(
 (XG2kTgQakanMflZTShDyKL9 && !XG2kTgQakanMflZTShDyKL9.isDead())
 || P9hrGXujWK
 )
 {
 if(s2kkgOGfOIs.isMessage())
 sq_AddMessage(1); 
 return false;
 }
 local x_7WvqAIZx = s2kkgOGfOIs.sq_IsUseSkill(138); 
 if(x_7WvqAIZx) 
 {
 s2kkgOGfOIs.sq_IntVectClear();
 s2kkgOGfOIs.sq_IntVectPush(0); 
 s2kkgOGfOIs.sq_AddSetStatePacket(138, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_summonheilrom(CtKYfLJsEzJXe02qn)
{
 if(!CtKYfLJsEzJXe02qn) return false; 
 local Hlf18nYrF3Rp_UulKiQXxx = CtKYfLJsEzJXe02qn.sq_GetState(); 
 if(Hlf18nYrF3Rp_UulKiQXxx == STATE_STAND) 
 return true; 
 if(Hlf18nYrF3Rp_UulKiQXxx == STATE_ATTACK) 
 {
 return CtKYfLJsEzJXe02qn.sq_IsCommandEnable(138); 
 }
 return true; 
} ;

 
function onSetState_mage_summonheilrom(CtKYfLJsEzJXe02qn, Hlf18nYrF3Rp_UulKiQXxx, e4LUpyB6MG8kC, X5p_q4DOox9)
{
 if(!CtKYfLJsEzJXe02qn) return; 
 local FqSQYaiepNiLdNKNYvJ = CtKYfLJsEzJXe02qn.sq_GetVectorData(e4LUpyB6MG8kC, 0); 
 CtKYfLJsEzJXe02qn.setSkillSubState(FqSQYaiepNiLdNKNYvJ); 
 switch(FqSQYaiepNiLdNKNYvJ)
 {
 case 0:
 CtKYfLJsEzJXe02qn.sq_StopMove(); 
 local jsMeiXajxsFgv = CtKYfLJsEzJXe02qn.sq_GetThrowChargeAni(3); 
 CtKYfLJsEzJXe02qn.setCurrentAnimation(jsMeiXajxsFgv); 
 local WFsg8H9AGCGkTetH3FR = sq_GetSkillLevel(CtKYfLJsEzJXe02qn, 138); 
 local khempD_LPMqXsOl4Euf26Qv = sq_GetCastTime(CtKYfLJsEzJXe02qn, 138, WFsg8H9AGCGkTetH3FR); 
 sq_StartDrawCastGauge(CtKYfLJsEzJXe02qn, khempD_LPMqXsOl4Euf26Qv, true); 
 local xJu7eUi0SE = CtKYfLJsEzJXe02qn.getCurrentAnimation(); 
 local yWF5fHi1JAC6VS9 = xJu7eUi0SE.getDelaySum(false); 
 
 CtKYfLJsEzJXe02qn.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 local HhWGAL8wxcLY = xJu7eUi0SE.getDelaySum(false); 
 local Aq9PdsxJwM = HhWGAL8wxcLY.tofloat() / yWF5fHi1JAC6VS9.tofloat(); 
 local KmOpxAaf2zcW9 = (khempD_LPMqXsOl4Euf26Qv.tofloat() * Aq9PdsxJwM).tointeger(); 
 CtKYfLJsEzJXe02qn.getVar().clear_vector(); 
 CtKYfLJsEzJXe02qn.getVar().push_vector(KmOpxAaf2zcW9); 
 CtKYfLJsEzJXe02qn.sq_PlaySound("WZ_SUMMON_HEILROM");
 break;
 case 1:
 local jsMeiXajxsFgv = CtKYfLJsEzJXe02qn.sq_GetThrowShootAni(3); 
 CtKYfLJsEzJXe02qn.setCurrentAnimation(jsMeiXajxsFgv); 
 if(CtKYfLJsEzJXe02qn.sq_IsMyControlObject())
 {
 CtKYfLJsEzJXe02qn.sq_StartWrite();
 CtKYfLJsEzJXe02qn.sq_WriteDword(138); 
 CtKYfLJsEzJXe02qn.sq_WriteDword(1); 
 sq_SendCreatePassiveObjectPacketPos(CtKYfLJsEzJXe02qn, 24372, 0,
 sq_GetDistancePos(CtKYfLJsEzJXe02qn.getXPos(), CtKYfLJsEzJXe02qn.getDirection(), 100),
 CtKYfLJsEzJXe02qn.getYPos(), 1113); 
 }
 break;
 }
} ;

function onProcCon_mage_summonheilrom(A4ZZlVhqV6)
{
 if(!A4ZZlVhqV6) return;
 local aTXgCO5MIXMm9XRC2 = A4ZZlVhqV6.getSkillSubState(); 
 if(aTXgCO5MIXMm9XRC2 == 0)
 {
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar().get_vector(0); 
 if(A4ZZlVhqV6.sq_GetStateTimer() > PfQkLZrEBwQpBgT4o) 
 {
 A4ZZlVhqV6.sq_IntVectClear();
 A4ZZlVhqV6.sq_IntVectPush(1); 
 A4ZZlVhqV6.sq_AddSetStatePacket(138, STATE_PRIORITY_USER, true); 
 }
 }
} ;

function onEndState_mage_summonheilrom(ym5YmTV0z9tvlhSr0cFIQvF, EvrwmeaEG6bTJvI5xv5)
{
 if(!ym5YmTV0z9tvlhSr0cFIQvF) return;
 if(EvrwmeaEG6bTJvI5xv5 != 138)
 sq_EndDrawCastGauge(ym5YmTV0z9tvlhSr0cFIQvF); 
} ;

 
function onEndCurrentAni_mage_summonheilrom(ym5YmTV0z9tvlhSr0cFIQvF)
{
 if(!ym5YmTV0z9tvlhSr0cFIQvF) return;
 if(!ym5YmTV0z9tvlhSr0cFIQvF.sq_IsMyControlObject()) return;
 local EvrwmeaEG6bTJvI5xv5 = ym5YmTV0z9tvlhSr0cFIQvF.getSkillSubState(); 
 switch(EvrwmeaEG6bTJvI5xv5)
 {
 case 1:
 
 ym5YmTV0z9tvlhSr0cFIQvF.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 break;
 }
} ;

