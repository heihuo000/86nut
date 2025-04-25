
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
 
 
 
 
 
 
function ProcPassiveSkillAvenger(wbF1NSuyj4Nl, FezYHT0mhw5EkX, dsEcP0vvLdgI)
{
 if (FezYHT0mhw5EkX == 114)
 {
 if (wbF1NSuyj4Nl.getWeaponSubType() == WEAPON_SUBTYPE_SCYTHE && dsEcP0vvLdgI > 0)
 {
 local OAnDLKx3wPIERm = CNSquirrelAppendage.sq_AppendAppendage(wbF1NSuyj4Nl, wbF1NSuyj4Nl, FezYHT0mhw5EkX, false, "Appendage/Character/scythe_mastery.nut", true);
 
 local lIhvK515lzPotUEpjBU = sq_GetLevelData(wbF1NSuyj4Nl, FezYHT0mhw5EkX, 0, dsEcP0vvLdgI);
 local PRaSWj72EVZ6kZwwBLLrRY5 = sq_GetLevelData(wbF1NSuyj4Nl, FezYHT0mhw5EkX, 1, dsEcP0vvLdgI);
 local inufQjuUVYNOfY = sq_GetLevelData(wbF1NSuyj4Nl, FezYHT0mhw5EkX, 2, dsEcP0vvLdgI) * -1;
 local vMMxbQELdcjdn4zo0n1E2qA = sq_GetLevelData(wbF1NSuyj4Nl, FezYHT0mhw5EkX, 3, dsEcP0vvLdgI);
 local pYewDCzGiBjtTwmP = OAnDLKx3wPIERm.sq_getChangeStatus("scythe");
 if(!pYewDCzGiBjtTwmP) {
 pYewDCzGiBjtTwmP = OAnDLKx3wPIERm.sq_AddChangeStatus("scythe",wbF1NSuyj4Nl, wbF1NSuyj4Nl, 0, CHANGE_STATUS_TYPE_ATTACK_SPEED, true, lIhvK515lzPotUEpjBU );
 }
 
 
 if(pYewDCzGiBjtTwmP) {
 pYewDCzGiBjtTwmP.clearParameter();
 pYewDCzGiBjtTwmP.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, true, lIhvK515lzPotUEpjBU.tofloat());
 pYewDCzGiBjtTwmP.addParameter(CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_DARK, false, PRaSWj72EVZ6kZwwBLLrRY5.tofloat());
 pYewDCzGiBjtTwmP.addParameter(CHANGE_STATUS_TYPE_ELEMENT_TOLERANCE_LIGHT, false, inufQjuUVYNOfY.tofloat());
 
 pYewDCzGiBjtTwmP.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, true, vMMxbQELdcjdn4zo0n1E2qA.tofloat()); 
 }
 }
 else
 {
 
 if(dsEcP0vvLdgI > 0) {
 local OAnDLKx3wPIERm = CNSquirrelAppendage.sq_AppendAppendage(wbF1NSuyj4Nl, wbF1NSuyj4Nl, FezYHT0mhw5EkX, false, "Appendage/Character/scythe_mastery.nut", true);
 
 if(OAnDLKx3wPIERm) { 
 local pYewDCzGiBjtTwmP = OAnDLKx3wPIERm.sq_getChangeStatus("scythe"); 
 if(pYewDCzGiBjtTwmP) {
 pYewDCzGiBjtTwmP.clearParameter();
 }
 }
 }
 }
 }
 else if(FezYHT0mhw5EkX == 121)
 {
 if (dsEcP0vvLdgI > 0)
 wbF1NSuyj4Nl.sq_addPassiveSkillAttackBonusRate(121,1);
 }
 
 if(FezYHT0mhw5EkX == 123) { 
 if (dsEcP0vvLdgI > 0) {
 local OAnDLKx3wPIERm = CNSquirrelAppendage.sq_AppendAppendage(wbF1NSuyj4Nl, wbF1NSuyj4Nl, FezYHT0mhw5EkX, false, "Appendage/Character/ap_avenger_devilstrike.nut", true);
 local o_6ZId4WzH = sq_GetIntData(wbF1NSuyj4Nl, 123, 0); 
 if(OAnDLKx3wPIERm.sq_var.size_vector() != 5) { 
 OAnDLKx3wPIERm.sq_var.clear_vector(); 
 OAnDLKx3wPIERm.sq_var.push_vector(o_6ZId4WzH); 
 OAnDLKx3wPIERm.sq_var.push_vector(0); 
 OAnDLKx3wPIERm.sq_var.push_vector(0); 
 OAnDLKx3wPIERm.sq_var.push_vector(0); 
 OAnDLKx3wPIERm.sq_var.push_vector(0);
 }
 else {
 
 local M5BtI7w4Bb0dtqCDAY = OAnDLKx3wPIERm.sq_var.get_vector(0);
 
 if(M5BtI7w4Bb0dtqCDAY != o_6ZId4WzH) {
 OAnDLKx3wPIERm.sq_var.set_vector(0, o_6ZId4WzH);
 }
 }
 
 wbF1NSuyj4Nl.getVar("devilStrike").clear_vector();
 wbF1NSuyj4Nl.getVar("devilStrike").push_vector(0); 
 wbF1NSuyj4Nl.getVar("devilStrike").push_vector(0);
 wbF1NSuyj4Nl.getVar("devilStrike").push_vector(0);
 wbF1NSuyj4Nl.getVar("devilStrike").push_vector(0);
 
 wbF1NSuyj4Nl.getVar("devilStrike").clear_ct_vector(); 
 wbF1NSuyj4Nl.getVar("devilStrike").push_ct_vector();
 wbF1NSuyj4Nl.getVar("devilStrike").push_ct_vector();
 wbF1NSuyj4Nl.getVar("devilStrike").push_ct_vector();
 
 wbF1NSuyj4Nl.getVar("devilStrike").get_ct_vector(0).Reset();
 wbF1NSuyj4Nl.getVar("devilStrike").get_ct_vector(0).Start(0,0);
 
 
 OAnDLKx3wPIERm.sq_var.clear_timer_vector(); 
 OAnDLKx3wPIERm.sq_var.push_timer_vector(); 
 OAnDLKx3wPIERm.sq_var.push_timer_vector();
 }
 else {
 CNSquirrelAppendage.sq_RemoveAppendage(wbF1NSuyj4Nl, "Appendage/Character/ap_avenger_devilstrike.nut");
 }
 }
 
 if(FezYHT0mhw5EkX == 122) { 
 
 
 
 
 if (dsEcP0vvLdgI > 0) {
 wbF1NSuyj4Nl.sq_addPassiveSkillAttackBonusRate(122,1); 
 }
 
 
 
 
 
 
 
 }
 
 
 return true;
} ;


function onUseSkillAvengerPassiveSkill(tlm7hVO9c2E,SVaoQ0TsHd6qI8, IlbUzhX2L9CjCrJJG1d1)
{
 if(!tlm7hVO9c2E)
 return;
 
 local a5E0GZoPdhjir4ONd = tlm7hVO9c2E.sq_getSkillLevel(121);
 local VGXz8UWP8_vp = tlm7hVO9c2E.sq_getIntData(121,1); 
 
 if(VGXz8UWP8_vp >= sq_getRandom(0,100) && a5E0GZoPdhjir4ONd > 0 && tlm7hVO9c2E.isSkillClassType(SVaoQ0TsHd6qI8,3)) { 
 
 local k7yjdCUYvEpc = tlm7hVO9c2E.sq_getLevelData(121,0,a5E0GZoPdhjir4ONd);
 local m9I98LkKkrQABBh4Soe2u = tlm7hVO9c2E.sq_getLevelData(121,2,a5E0GZoPdhjir4ONd);
 local oMTs3IvheQV = tlm7hVO9c2E.sq_getLevelData(121,3,a5E0GZoPdhjir4ONd) * -1;
 local pk1MLTZoXCUIhMu = tlm7hVO9c2E.sq_getLevelData(121,4,a5E0GZoPdhjir4ONd) * -1;
 local Gp7xxh_PcFHAs21_Gn = 1;
 local M3Dkm9NwypNB4jVTZzzXD = tlm7hVO9c2E.sq_getIntData(121,0);
 
 local hx4H8BLXUXKtob_L = tlm7hVO9c2E.GetSquirrelAppendage("Appendage/Character/hearthings.nut");
 if(hx4H8BLXUXKtob_L) {
 Gp7xxh_PcFHAs21_Gn = Gp7xxh_PcFHAs21_Gn + hx4H8BLXUXKtob_L.sq_var.getInt(0);
 if(Gp7xxh_PcFHAs21_Gn > M3Dkm9NwypNB4jVTZzzXD) 
 return;
 } 
 
 local kvrAjnKSphh8baYMvA = CNSquirrelAppendage.sq_AppendAppendage(tlm7hVO9c2E, tlm7hVO9c2E, SVaoQ0TsHd6qI8, true, "Appendage/Character/hearthings.nut", true); 
 local lA01adR45K8hTM = kvrAjnKSphh8baYMvA.sq_getChangeStatus("hearthings");
 
 if(!lA01adR45K8hTM) {
 lA01adR45K8hTM = kvrAjnKSphh8baYMvA.sq_AddChangeStatus("hearthings",tlm7hVO9c2E, tlm7hVO9c2E, 0, CHANGE_STATUS_TYPE_MOVE_SPEED, true, Gp7xxh_PcFHAs21_Gn.tointeger() * m9I98LkKkrQABBh4Soe2u.tointeger() );
 }
 
 if(lA01adR45K8hTM) {
 lA01adR45K8hTM.clearParameter();
 lA01adR45K8hTM.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, true, Gp7xxh_PcFHAs21_Gn.tofloat() * m9I98LkKkrQABBh4Soe2u.tofloat());
 lA01adR45K8hTM.addParameter(CHANGE_STATUS_TYPE_HP_MAX, true, Gp7xxh_PcFHAs21_Gn.tofloat() * oMTs3IvheQV.tofloat());
 lA01adR45K8hTM.addParameter(CHANGE_STATUS_TYPE_MP_MAX, true, Gp7xxh_PcFHAs21_Gn.tofloat() * pk1MLTZoXCUIhMu.tofloat()); 
 }
 
 kvrAjnKSphh8baYMvA.getAppendageInfo().setValidTime(k7yjdCUYvEpc); 
 
 kvrAjnKSphh8baYMvA.sq_var.setInt(0,Gp7xxh_PcFHAs21_Gn.tointeger());
 }
} ;



function OnBeforeAttackAvengerPassiveSkill(ZcLnAJNl1MjmL8SLpt2, yPEl2ufP58S, jfG5zR_Um5c2, bzPHrVfQ7v8Xhvz)
{
 
 if(!ZcLnAJNl1MjmL8SLpt2) return false;
 
 if (bzPHrVfQ7v8Xhvz == false)
 {
 local dfXetycaYhUtfv0t = CNSquirrelAppendage.sq_IsAppendAppendage(ZcLnAJNl1MjmL8SLpt2, "Appendage/Character/scythe_mastery.nut");
 
 if (dfXetycaYhUtfv0t == true)
 {
 if(ZcLnAJNl1MjmL8SLpt2.getWeaponSubType() == WEAPON_SUBTYPE_SCYTHE) { 
 
 local eWGYXLegEeKUe36vrp = ZcLnAJNl1MjmL8SLpt2.sq_GetSTATE();
 if(sqr_IsNormalAttack(eWGYXLegEeKUe36vrp) == true) {
 local YKqwNgqHy8rWcXadCUFs = sq_GetCurrentAttackInfo(ZcLnAJNl1MjmL8SLpt2); 
 local SHR3TYzsmP9eoTPZh = sq_GetAttackType(YKqwNgqHy8rWcXadCUFs);
 if(SHR3TYzsmP9eoTPZh == ATTACKTYPE_PHYSICAL) {
 sq_ChangeAttackTypeToOpposite(YKqwNgqHy8rWcXadCUFs);
 }
 }
 }
 }
 }
 
 return true;
} ;


