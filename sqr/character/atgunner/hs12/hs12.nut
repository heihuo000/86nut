
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_atgunner_hs12(j77xMeLkG5wknOtcptYAEJU)
{
 if(!j77xMeLkG5wknOtcptYAEJU) return false; 
 local zrsQHOqStvVjv8 = j77xMeLkG5wknOtcptYAEJU.sq_IsUseSkill(245); 
 if(zrsQHOqStvVjv8) 
 {
 j77xMeLkG5wknOtcptYAEJU.sq_IntVectClear();
 j77xMeLkG5wknOtcptYAEJU.sq_IntVectPush(0); 
 j77xMeLkG5wknOtcptYAEJU.sq_AddSetStatePacket(245, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atgunner_hs12(j77xMeLkG5wknOtcptYAEJU)
{
 if(!j77xMeLkG5wknOtcptYAEJU) return false; 
 local zrsQHOqStvVjv8 = j77xMeLkG5wknOtcptYAEJU.sq_GetState(); 
 if(zrsQHOqStvVjv8 == STATE_STAND) 
 return true; 
 if(zrsQHOqStvVjv8 == STATE_ATTACK) 
 {
 return j77xMeLkG5wknOtcptYAEJU.sq_IsCommandEnable(245); 
 }
 return true; 
} ;

 
function onSetState_atgunner_hs12(j77xMeLkG5wknOtcptYAEJU, zrsQHOqStvVjv8, b8TRqIaG2En56ESpxkF7, ZiE5Vje2DH_qvrWMebT2h)
{
 
 
 
 
 
 if(!j77xMeLkG5wknOtcptYAEJU) return; 
 j77xMeLkG5wknOtcptYAEJU.sq_StopMove(); 
 local MiR38zrk_P0BQK = j77xMeLkG5wknOtcptYAEJU.sq_GetVectorData(b8TRqIaG2En56ESpxkF7, 0); 
 j77xMeLkG5wknOtcptYAEJU.setSkillSubState(MiR38zrk_P0BQK); 
 switch(MiR38zrk_P0BQK)
 {
 case 0:
 j77xMeLkG5wknOtcptYAEJU.getVar().clear_vector(); 
 j77xMeLkG5wknOtcptYAEJU.sq_SetCurrentAnimation(133);
 local Eti7DuGmCQ = sq_GetSkillLevel(j77xMeLkG5wknOtcptYAEJU, 245); 
 local oaoC94smpszLoPHa = sq_GetCastTime(j77xMeLkG5wknOtcptYAEJU, 245, Eti7DuGmCQ); 
 local g9mRABUofVT3qPOzPpZ95m = sq_GetCurrentAnimation(j77xMeLkG5wknOtcptYAEJU); 
 local Y1nI4dMhBVMiS2FkgEEF9Oc9 = sq_GetFrameStartTime(g9mRABUofVT3qPOzPpZ95m, 3); 
 local GhmjBwAOrNWeuEVgbI7 = Y1nI4dMhBVMiS2FkgEEF9Oc9.tofloat() / oaoC94smpszLoPHa.tofloat(); 
 j77xMeLkG5wknOtcptYAEJU.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, GhmjBwAOrNWeuEVgbI7, GhmjBwAOrNWeuEVgbI7);
 sq_StartDrawCastGauge(j77xMeLkG5wknOtcptYAEJU, Y1nI4dMhBVMiS2FkgEEF9Oc9, true);
 
 sq_AddDrawOnlyAniFromParent(j77xMeLkG5wknOtcptYAEJU, "character/gunner/effect/animation/aths-12/targeting_00.ani", 205, 0, 75);
 break;
 case 1:
 j77xMeLkG5wknOtcptYAEJU.sq_SetCurrentAnimation(134);
 
 sq_AddDrawOnlyAniFromParent(j77xMeLkG5wknOtcptYAEJU, "character/gunner/effect/animation/aths-12/hs-12apear_00.ani", -110, 0, 125);
 if(j77xMeLkG5wknOtcptYAEJU.sq_IsMyControlObject())
 {
 local Eti7DuGmCQ = sq_GetSkillLevel(j77xMeLkG5wknOtcptYAEJU, 245); 
 j77xMeLkG5wknOtcptYAEJU.sq_StartWrite();
 j77xMeLkG5wknOtcptYAEJU.sq_WriteDword(245); 
 j77xMeLkG5wknOtcptYAEJU.sq_WriteDword(1); 
 j77xMeLkG5wknOtcptYAEJU.sq_WriteDword(j77xMeLkG5wknOtcptYAEJU.sq_GetBonusRateWithPassive(245, 245, 0, 1.0)); 
 j77xMeLkG5wknOtcptYAEJU.sq_WriteDword(j77xMeLkG5wknOtcptYAEJU.sq_GetLevelData(245, 1, Eti7DuGmCQ)); 
 
 j77xMeLkG5wknOtcptYAEJU.sq_WriteDword(sq_GetDistancePos(j77xMeLkG5wknOtcptYAEJU.getXPos(), j77xMeLkG5wknOtcptYAEJU.getDirection(), 205)); 
 j77xMeLkG5wknOtcptYAEJU.sq_WriteDword(j77xMeLkG5wknOtcptYAEJU.getZPos() + 75); 
 j77xMeLkG5wknOtcptYAEJU.sq_SendCreatePassiveObjectPacket(24376, 0, -110, 0, 125);
 }
 j77xMeLkG5wknOtcptYAEJU.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 break;
 }
} ;

 
function onEndCurrentAni_atgunner_hs12(KiBywGB7SM53xCNKHzzKXWSJ)
{
 if(!KiBywGB7SM53xCNKHzzKXWSJ) return;
 if(!KiBywGB7SM53xCNKHzzKXWSJ.sq_IsMyControlObject()) return;
 local GJoLIiygQVbL0JSVNJjeNbbI = KiBywGB7SM53xCNKHzzKXWSJ.getSkillSubState(); 
 switch(GJoLIiygQVbL0JSVNJjeNbbI)
 {
 case 0:
 KiBywGB7SM53xCNKHzzKXWSJ.sq_IntVectClear();
 KiBywGB7SM53xCNKHzzKXWSJ.sq_IntVectPush(1); 
 KiBywGB7SM53xCNKHzzKXWSJ.sq_AddSetStatePacket(245, STATE_PRIORITY_USER, true); 
 break;
 case 1:
 KiBywGB7SM53xCNKHzzKXWSJ.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

function onEndState_atgunner_hs12(QzdzqMM6YDQ3H6, TAXYMJpdhybSOSWcUFqEFDSX)
{
 if(!QzdzqMM6YDQ3H6) return;
 if(TAXYMJpdhybSOSWcUFqEFDSX != 245)
 sq_EndDrawCastGauge(QzdzqMM6YDQ3H6); 
} ;


