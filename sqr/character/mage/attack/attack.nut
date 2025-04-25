
function onAfterSetState_mage_attack(PQTqYWyoPjv4ektK, vQHyclEdSW, a1CxAVeoauXhYfVpTwmp7_2k, urq71HC_i5Ic2au)
{
 if (!PQTqYWyoPjv4ektK) return;
 local NbAbwqLQ8Mweo = PQTqYWyoPjv4ektK.getAttackIndex();
 if(CNSquirrelAppendage.sq_IsAppendAppendage(PQTqYWyoPjv4ektK, "character/mage/avatar/ap_avatar.nut") == true)
 {
 local sMz9RP1qpl_hfitHEKo4wz = null;
 switch(NbAbwqLQ8Mweo)
 {
 case 0:sMz9RP1qpl_hfitHEKo4wz = setCurrentAnimation_avatar_eff(PQTqYWyoPjv4ektK, "BattleMageAttack1", true); break;
 case 1:sMz9RP1qpl_hfitHEKo4wz = setCurrentAnimation_avatar_eff(PQTqYWyoPjv4ektK, "BattleMageAttack2", true); break;
 case 2: sMz9RP1qpl_hfitHEKo4wz = setCurrentAnimation_avatar_eff(PQTqYWyoPjv4ektK, "BattleMageAttack3", true); break;
 }
 if(sMz9RP1qpl_hfitHEKo4wz!=null)
 PQTqYWyoPjv4ektK.setCurrentAnimation(sMz9RP1qpl_hfitHEKo4wz); 
 }
} ;


