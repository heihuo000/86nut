
function onAfterSetState_swordman_illusionSlash(ey9CPt10LIj_DiIut0ExteD, FuRpMCPWTdRPVhZYXy_OInT, Lp06TUUKlt9lWO1, MHdjTNaH8BQMr5trRtzUCENB)
{
 if(!ey9CPt10LIj_DiIut0ExteD) return;
 local HiOyj3wr2AZetSZMwMI5 = ey9CPt10LIj_DiIut0ExteD.sq_GetVectorData(Lp06TUUKlt9lWO1, 0); 
 ey9CPt10LIj_DiIut0ExteD.getVar().clear_obj_vector(); 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(ey9CPt10LIj_DiIut0ExteD, "character/swordman/appendage/ap_stateoflimit.nut"))
 {
 switch(HiOyj3wr2AZetSZMwMI5)
 {
 case 0:
 ey9CPt10LIj_DiIut0ExteD.setTimeEvent(0, 700, 0, true);
 ey9CPt10LIj_DiIut0ExteD.setTimeEvent(1, 450, 0, false);
 break;
 case 1:
 ey9CPt10LIj_DiIut0ExteD.removeAllTimeEvent(); 
 break;
 }
 }
} ;

function onProc_swordman_illusionSlash(bPdUHBnLhA8oQD3mbhjz)
{
 if(!bPdUHBnLhA8oQD3mbhjz) return;
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(bPdUHBnLhA8oQD3mbhjz, "character/swordman/appendage/ap_stateoflimit.nut"))
 {
 local F1ghqVl3lUR0Wi99Mgw3JIE = bPdUHBnLhA8oQD3mbhjz.getVar().get_obj_vector(0);
 if(F1ghqVl3lUR0Wi99Mgw3JIE)
 {
 for(local OZLJ3D0IUJPINiY15GB4ciM = bPdUHBnLhA8oQD3mbhjz.getMyPassiveObjectCount(20037) - 1; OZLJ3D0IUJPINiY15GB4ciM >= 0; OZLJ3D0IUJPINiY15GB4ciM -= 1)
 {
 local Vjn1tj43jxSi3R0IY = bPdUHBnLhA8oQD3mbhjz.getMyPassiveObject(20037, OZLJ3D0IUJPINiY15GB4ciM);
 if(Vjn1tj43jxSi3R0IY && isSameObject(F1ghqVl3lUR0Wi99Mgw3JIE, Vjn1tj43jxSi3R0IY))
 {
 if(bPdUHBnLhA8oQD3mbhjz.getWeaponSubType() == 2) 
 {
 if(Vjn1tj43jxSi3R0IY.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(Vjn1tj43jxSi3R0IY); 
 if(bPdUHBnLhA8oQD3mbhjz.sq_IsMyControlObject())
 {
 bPdUHBnLhA8oQD3mbhjz.sq_StartWrite();
 bPdUHBnLhA8oQD3mbhjz.sq_WriteDword(248); 
 bPdUHBnLhA8oQD3mbhjz.sq_WriteDword(5); 
 bPdUHBnLhA8oQD3mbhjz.sq_WriteDword(bPdUHBnLhA8oQD3mbhjz.sq_GetBonusRateWithPassive(248, 40, 6, 1.0)); 
 bPdUHBnLhA8oQD3mbhjz.sq_SendCreatePassiveObjectPacket(24370, 0, 180, 0, 0); 
 }
 }
 else
 {
 setCurrentAnimationFromCutomIndex(Vjn1tj43jxSi3R0IY, 2); 
 sq_SetCurrentAttackInfoFromCustomIndex(Vjn1tj43jxSi3R0IY, 0); 
 local kSmlwIA9N1AnhdXfCTr_luSY = sq_GetCurrentAttackInfo(Vjn1tj43jxSi3R0IY);
 if(kSmlwIA9N1AnhdXfCTr_luSY)
 sq_SetCurrentAttackBonusRate(kSmlwIA9N1AnhdXfCTr_luSY, bPdUHBnLhA8oQD3mbhjz.sq_GetBonusRateWithPassive(248, 40, 5, 1.0)); 
 }
 bPdUHBnLhA8oQD3mbhjz.getVar().clear_obj_vector(); 
 }
 }
 }
 }
} ;

function onTimeEvent_swordman_illusionSlash(L5w8FiWJep7otq20, gGPS9rbMUSoJi6c, GUYNlmAB8px5bg_3Dwur5I)
{
 if(!L5w8FiWJep7otq20) return false;
 switch(gGPS9rbMUSoJi6c)
 {
 case 0:
 sq_AddDrawOnlyAniFromParent(L5w8FiWJep7otq20, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/stateoflimit/state_of_limit_illusion_" + sq_getRandom(1, 4).tostring() + ".ani", 0, -1, 0); 
 break;
 case 1:
 
 if(L5w8FiWJep7otq20.sq_IsMyControlObject())
 {
 L5w8FiWJep7otq20.sq_StartWrite();
 L5w8FiWJep7otq20.sq_WriteDword(248); 
 L5w8FiWJep7otq20.sq_WriteDword(4); 
 L5w8FiWJep7otq20.sq_WriteDword(L5w8FiWJep7otq20.sq_GetBonusRateWithPassive(248, 40, 4, 1.0)); 
 L5w8FiWJep7otq20.sq_SendCreatePassiveObjectPacket(24370, 0, 0, 0, 0); 
 }
 break;
 }
 return false;
} ;

function onCreateObject_swordman_illusionSlash(dQgXX07IAfHE1Y, jYIEPkUl_RQ2kCG3)
{
 if(!dQgXX07IAfHE1Y) return;
 if(jYIEPkUl_RQ2kCG3.isObjectType(OBJECTTYPE_PASSIVE) && dQgXX07IAfHE1Y.getVar().get_obj_vector_size()<=0)
 {
 local a0a5w15u7P0goTEl2 = sq_GetCNRDObjectToCollisionObject(jYIEPkUl_RQ2kCG3); 
 if(a0a5w15u7P0goTEl2 && a0a5w15u7P0goTEl2.getCollisionObjectIndex() == 20037)
 {
 dQgXX07IAfHE1Y.getVar().push_obj_vector(a0a5w15u7P0goTEl2); 
 }
 }
} ;

function checkExecutableSkill_IllusionSlash(obj)
{
	if (!obj) return false;

        local isUse = obj.sq_IsUseSkill(73);
        if (isUse) 
        {
            obj.sq_IntVectClear();
            obj.sq_IntVectPush(0);
            obj.sq_AddSetStatePacket(40,STATE_PRIORITY_USER, true);
            return true;
        }

	return false;
}



function checkCommandEnable_IllusionSlash(obj)
{

	return true;
}