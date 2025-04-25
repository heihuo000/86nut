

function onSetState_swordman_bloodsword(ReOzY_hrTitU_wdDqor6DnFA, yWXyY8u3dXn_E, hgeLxr7YyvM, kG3r0jNtmhvMM9NRTiG)
{
 if(!ReOzY_hrTitU_wdDqor6DnFA) return;
 local EeCPmIob7kdgy3Gz_8X72 = ReOzY_hrTitU_wdDqor6DnFA.sq_GetVectorData(hgeLxr7YyvM, 0); 
 if(EeCPmIob7kdgy3Gz_8X72 == 103)
 {
 
 
 if(ReOzY_hrTitU_wdDqor6DnFA.sq_IsMyControlObject())
 sq_SendCreatePassiveObjectPacket(ReOzY_hrTitU_wdDqor6DnFA, 48312, 0, 0, 0, 2000, ReOzY_hrTitU_wdDqor6DnFA.getDirection());
 ReOzY_hrTitU_wdDqor6DnFA.getVar().setBool(0, false); 
 ReOzY_hrTitU_wdDqor6DnFA.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.5, 1.5); 
 }
 else
 {
 ReOzY_hrTitU_wdDqor6DnFA.getVar().setBool(0, true); 
 ReOzY_hrTitU_wdDqor6DnFA.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 12.0, 12.0); 
 }
} ;




function onProcCon_swordman_bloodsword(fg7ITqkeb4PUafs)
{
 if(!fg7ITqkeb4PUafs) return;
 if(fg7ITqkeb4PUafs.getVar().getBool(0) == false && sq_GetCurrentFrameIndex(fg7ITqkeb4PUafs) >= 11)
 {
 local tAhtIufpbLca8msOl = fg7ITqkeb4PUafs.getMyPassiveObject(48312, fg7ITqkeb4PUafs.getMyPassiveObjectCount(48312)-1); 
 if(tAhtIufpbLca8msOl)
 sq_SendHitObjectPacketWithNoStuck(fg7ITqkeb4PUafs, tAhtIufpbLca8msOl, 0, 0, 0); 
 }
} ;


 
function onAttack_swordman_bloodsword(fg7ITqkeb4PUafs, tAhtIufpbLca8msOl, YGXdwQJdUVpnCGRKHN4uT01F, HY74MP1rfFnW)
{
 if(!fg7ITqkeb4PUafs || HY74MP1rfFnW) return;
 if(fg7ITqkeb4PUafs.getVar().getBool(0) == false)
 fg7ITqkeb4PUafs.getVar().setBool(0, true); 
} ;

function onCreateObject_swordman_bloodsword(NQbCRszwkKrUTQst0qWd, NNZHEjA0zm8Lbo3G6iK)
{
 if(!NQbCRszwkKrUTQst0qWd) return;
 if(NNZHEjA0zm8Lbo3G6iK.isObjectType(OBJECTTYPE_PASSIVE))
 {
 local Wxdg_qfSO2Qaz5 = sq_GetCNRDObjectToCollisionObject(NNZHEjA0zm8Lbo3G6iK); 
 if(Wxdg_qfSO2Qaz5 && Wxdg_qfSO2Qaz5.getCollisionObjectIndex() == 20066)
 {
 if(NQbCRszwkKrUTQst0qWd.sq_IsMyControlObject())
 NQbCRszwkKrUTQst0qWd.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 }
 }
} ;

