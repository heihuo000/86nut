



function onAfterSetState_swordman_attack(JM8H4uzkC2sc8UKfL7, CSDeDFugOHJaOjHj1gt, ZDQLDKNcdcrwAH_F2Dd, KLSE5PT5pu)
{
 if(!JM8H4uzkC2sc8UKfL7) return;
 local _RxS8qXkVJS2rEYWZj2fu1 = JM8H4uzkC2sc8UKfL7.sq_GetVectorData(ZDQLDKNcdcrwAH_F2Dd, 0); 
 local K_0MF3eLe5Urn = JM8H4uzkC2sc8UKfL7.sq_GetVectorData(ZDQLDKNcdcrwAH_F2Dd, 1); 
 JM8H4uzkC2sc8UKfL7.getVar().clear_vector(); 
 JM8H4uzkC2sc8UKfL7.getVar().push_vector(_RxS8qXkVJS2rEYWZj2fu1); 
 JM8H4uzkC2sc8UKfL7.getVar().push_vector(K_0MF3eLe5Urn); 
 switch(_RxS8qXkVJS2rEYWZj2fu1)
 {
 case 0:
 break;
 case 1:
 break;
 case 2:
 break;
 }
 wavemark_qq506807329_swordman_attack(JM8H4uzkC2sc8UKfL7, CSDeDFugOHJaOjHj1gt, ZDQLDKNcdcrwAH_F2Dd, KLSE5PT5pu); 
 weaponcombo_qq506807329_swordman_attack(JM8H4uzkC2sc8UKfL7, CSDeDFugOHJaOjHj1gt, ZDQLDKNcdcrwAH_F2Dd, KLSE5PT5pu); 
} ;

function onKeyFrameFlag_swordman_attack(slsWw__ol53HVwr, obhXkplykqIKXfiAF34l)
{
 if(!slsWw__ol53HVwr) return false;
 local J9fVqmU33AHxBBTZ0BX = slsWw__ol53HVwr.getVar().get_vector(0); 
 local y91o8g5Ha1 = slsWw__ol53HVwr.getVar().get_vector(1); 
 switch(y91o8g5Ha1)
 {
 case 67: 
 switch(obhXkplykqIKXfiAF34l)
 {
 case 100: 
 case 101:
 slsWw__ol53HVwr.resetHitObjectList(); 
 break;
 case 1:
 if(J9fVqmU33AHxBBTZ0BX == 3) 
 sq_CreateDrawOnlyObject(slsWw__ol53HVwr, "character/swordman/effect/animation/weaponcombo/reslash_blunt03_dust01.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 }
 break;
 }
 return true;
} ;

 
function wavemark_qq506807329_swordman_attack(slsWw__ol53HVwr, obhXkplykqIKXfiAF34l, J9fVqmU33AHxBBTZ0BX, y91o8g5Ha1)
{
 if(!slsWw__ol53HVwr) return;
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(slsWw__ol53HVwr, "character/swordman/appendage/ap_wavemark.nut"))return; 
 local uD4df2NuADegjZfNkTLF7qk = slsWw__ol53HVwr.sq_GetVectorData(J9fVqmU33AHxBBTZ0BX, 0); 
 if(slsWw__ol53HVwr.sq_IsMyControlObject())
 {
 local O84FFxLA2LOOZQuJ2 = slsWw__ol53HVwr.sq_GetBonusRateWithPassive(47, 8, 3 + uD4df2NuADegjZfNkTLF7qk, 1.0); 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(47); 
 sq_BinaryWriteBool(
 (sq_GetSkillLevel(slsWw__ol53HVwr, 92) > 0)
 ? true 
 : false 
 ); 
 sq_BinaryWriteDword(uD4df2NuADegjZfNkTLF7qk); 
 sq_BinaryWriteDword(O84FFxLA2LOOZQuJ2); 
 sq_SendCreatePassiveObjectPacket(slsWw__ol53HVwr, 24370, 0, 0, 0, 0, slsWw__ol53HVwr.getDirection());
 }
} ;

 
function weaponcombo_qq506807329_swordman_attack(CTSHq91idZnHugrh5NE0d, wHPCEiFicq, OSOvntYfaf78, _fWG9u8efXEB5ynSz)
{
 if(!CTSHq91idZnHugrh5NE0d) return;
 local xfRERcXbPBR = CTSHq91idZnHugrh5NE0d.sq_GetVectorData(OSOvntYfaf78, 0); 
 local ICUtVtUM7t = CTSHq91idZnHugrh5NE0d.sq_GetVectorData(OSOvntYfaf78, 1); 
 switch(ICUtVtUM7t)
 {
 case 67: 
 CTSHq91idZnHugrh5NE0d.sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackBonusRate(CTSHq91idZnHugrh5NE0d) + CTSHq91idZnHugrh5NE0d.sq_GetBonusRateWithPassive(67, 8, 0, 1.0)); 
 local _uL6Ql_6RJ = CTSHq91idZnHugrh5NE0d.getWeaponSubType(); 
 switch(_uL6Ql_6RJ)
 {
 case 2: 
 switch(xfRERcXbPBR)
 {
 case 2: 
 CTSHq91idZnHugrh5NE0d.sq_SetCurrentAnimation(37);
 sq_Rewind(CTSHq91idZnHugrh5NE0d.sq_GetCurrentAni()); 
 CTSHq91idZnHugrh5NE0d.sq_SetCurrentAttackInfo(36); 
 break;
 case 3: 
 CTSHq91idZnHugrh5NE0d.sq_SetCurrentAnimation(170);
 sq_Rewind(CTSHq91idZnHugrh5NE0d.sq_GetCurrentAni()); 
 CTSHq91idZnHugrh5NE0d.sq_SetCurrentAttackInfo(100); 
 break;
 }
 break;
 case 3: 
 if(xfRERcXbPBR == 0 && CTSHq91idZnHugrh5NE0d.sq_IsMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(67); 
 sq_BinaryWriteDword(1); 
 
 sq_BinaryWriteDword(sq_GetCurrentAttackBonusRate(CTSHq91idZnHugrh5NE0d)); 
 sq_SendCreatePassiveObjectPacket(CTSHq91idZnHugrh5NE0d, 24370, 0, 100, 0, 0, CTSHq91idZnHugrh5NE0d.getDirection());
 }
 break;
 case 0: 
 switch(xfRERcXbPBR)
 {
 case 0:
 local DDZgS5CEbwmsuU = CTSHq91idZnHugrh5NE0d.sq_GetAttackAni(1); 
 sq_Rewind(DDZgS5CEbwmsuU); 
 CTSHq91idZnHugrh5NE0d.setCurrentAnimation(DDZgS5CEbwmsuU); 
 CTSHq91idZnHugrh5NE0d.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/short_new_01.ani"), 0, 0); 
 break;
 case 1:
 local DDZgS5CEbwmsuU = CTSHq91idZnHugrh5NE0d.sq_GetAttackAni(0); 
 sq_Rewind(DDZgS5CEbwmsuU); 
 CTSHq91idZnHugrh5NE0d.setCurrentAnimation(DDZgS5CEbwmsuU); 
 CTSHq91idZnHugrh5NE0d.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/short_new_02.ani"), 40, 0); 
 if(CTSHq91idZnHugrh5NE0d.sq_IsMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(67); 
 sq_BinaryWriteDword(3); 
 sq_BinaryWriteDword(sq_GetCurrentAttackBonusRate(CTSHq91idZnHugrh5NE0d)); 
 sq_SendCreatePassiveObjectPacket(CTSHq91idZnHugrh5NE0d, 24370, 0, 0, 0, 0, CTSHq91idZnHugrh5NE0d.getDirection());
 }
 break;
 case 2:
 local DDZgS5CEbwmsuU = CTSHq91idZnHugrh5NE0d.sq_GetAttackAni(1); 
 sq_Rewind(DDZgS5CEbwmsuU); 
 CTSHq91idZnHugrh5NE0d.setCurrentAnimation(DDZgS5CEbwmsuU); 
 CTSHq91idZnHugrh5NE0d.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/short_new_03.ani"), 0, 0); 
 if(CTSHq91idZnHugrh5NE0d.sq_IsMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(67); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(sq_GetCurrentAttackBonusRate(CTSHq91idZnHugrh5NE0d)); 
 sq_SendCreatePassiveObjectPacket(CTSHq91idZnHugrh5NE0d, 24370, 0, 0, 0, 0, CTSHq91idZnHugrh5NE0d.getDirection());
 }
 break;
 }
 break;
 case 1: 
 switch(xfRERcXbPBR)
 {
 case 0:CTSHq91idZnHugrh5NE0d.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/ura_katana_eff.ani"), 0, 0); break;
 case 1:
 CTSHq91idZnHugrh5NE0d.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/katana_new1_under_effect.ani"), 0, 0);
 CTSHq91idZnHugrh5NE0d.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/katana_new1_upper_effect.ani"), 0, 0);
 break;
 case 2:CTSHq91idZnHugrh5NE0d.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/ura_katana_eff.ani"), 0, 0); break;
 case 3:
 CTSHq91idZnHugrh5NE0d.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/katana_new2_under_effect.ani"), 0, 0);
 CTSHq91idZnHugrh5NE0d.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/weaponcombo/katana_new2_upper_effect.ani"), 0, 0);
 break;
 }
 break;
 }
 break;
 }
} ;


