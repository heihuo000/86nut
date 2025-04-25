
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



HSS_SUB_STATE_READY <-0
 HSS_SUB_STATE_ATTACK_1 <-1
 HSS_SUB_STATE_ATTACK_2 <-2
 HSS_SUB_STATE_ATTACK_3 <-3
 HSS_SUB_STATE_ATTACK_4 <-4
 HSS_SUB_STATE_LAST <-5



  
function checkExecutableSkill_HighSpeedSlash(VV1HjSQNUf1ZPNOiyrYZN)
{
 if(!VV1HjSQNUf1ZPNOiyrYZN) return false;
 local MozcdKSHIqhpjDiNAn = VV1HjSQNUf1ZPNOiyrYZN.sq_IsUseSkill(124);
 if(MozcdKSHIqhpjDiNAn)
 {
 VV1HjSQNUf1ZPNOiyrYZN.sq_IntVectClear();
 VV1HjSQNUf1ZPNOiyrYZN.sq_IntVectPush(0); 
 VV1HjSQNUf1ZPNOiyrYZN.sq_addSetStatePacket(70, STATE_PRIORITY_IGNORE_FORCE, true);
 return true;
 }
 return false;
} ;

 
function checkCommandEnable_HighSpeedSlash(jpKug5RCzN0ZfdIA5)
{
 if(!jpKug5RCzN0ZfdIA5) return false;
 local e8J_8j31wIv = jpKug5RCzN0ZfdIA5.sq_GetSTATE();
 if(e8J_8j31wIv == STATE_ATTACK)
 {
 return jpKug5RCzN0ZfdIA5.sq_IsCommandEnable(124); 
 }
 return true;
} ;
 
function onProcCon_HighSpeedSlash(cMzuxMwSCGewc33DpC3y)
{
 if(!cMzuxMwSCGewc33DpC3y) return;
 cMzuxMwSCGewc33DpC3y.setSkillCommandEnable(124, true);
 local dMz_Uhux4ic_p9Nr = cMzuxMwSCGewc33DpC3y.getSkillSubState();
 if(dMz_Uhux4ic_p9Nr >= 1 && dMz_Uhux4ic_p9Nr <= 4)
 {
 local QC7lh8__RByYUiXItq_0u = cMzuxMwSCGewc33DpC3y.sq_IsEnterSkill(124);
 if(QC7lh8__RByYUiXItq_0u != -1)
 {
 local TVuJvOewC5nnh98MJJz02k = cMzuxMwSCGewc33DpC3y.getVar();
 TVuJvOewC5nnh98MJJz02k.setBool(2, true);
 }
 }
} ;

function onEndState_HighSpeedSlash(QT5uQLAQsRhcRSjGvS3f2z, QVaEHlvlND8xTs36OPeCxo)
{
 if(!QT5uQLAQsRhcRSjGvS3f2z) return;
 if(QVaEHlvlND8xTs36OPeCxo != 70 && isAvengerAwakenning(QT5uQLAQsRhcRSjGvS3f2z) == false)
 {
 QT5uQLAQsRhcRSjGvS3f2z.setCarryWeapon(true);
 }
} ;



function sendSubState_HighSpeedSlash(aHcxm2SmtjXcB, cvkwucMwg4r5vtsjYhqPwXyF)
{
 if(!aHcxm2SmtjXcB) return;
 if(aHcxm2SmtjXcB.sq_isMyControlObject())
 {
 aHcxm2SmtjXcB.sq_IntVectClear();
 aHcxm2SmtjXcB.sq_IntVectPush(cvkwucMwg4r5vtsjYhqPwXyF); 
 aHcxm2SmtjXcB.sq_addSetStatePacket(70, STATE_PRIORITY_USER, true);
 }
} ;

 
function onSetState_HighSpeedSlash(hc7xTVphUu6H5YDn, wuEQjr6qAPGpLJLBnbm, yGGF5tuIbKmmPJB, jKLi0aCev5GktLb8ewntl)
{
 local QwNjRZqyQ2L4ROYodFZWiM = hc7xTVphUu6H5YDn.getVar();
 local KlYakdniPaxdUpQU = hc7xTVphUu6H5YDn.sq_getVectorData(yGGF5tuIbKmmPJB, 0);
 hc7xTVphUu6H5YDn.setSkillSubState(KlYakdniPaxdUpQU);
 if(isAvengerAwakenning(hc7xTVphUu6H5YDn) == false) 
 hc7xTVphUu6H5YDn.sq_setCurrentAttackInfo(86);
 else
 hc7xTVphUu6H5YDn.sq_setCurrentAttackInfo(137);
 local wuvDm9tHxZ = null; 
 if(KlYakdniPaxdUpQU == 0)
 {
 QwNjRZqyQ2L4ROYodFZWiM.setInt(0, 0); 
 QwNjRZqyQ2L4ROYodFZWiM.setFloat(1, 100.0); 
 QwNjRZqyQ2L4ROYodFZWiM.setBool(2, false); 
 hc7xTVphUu6H5YDn.sq_stopMove();
 if(isAvengerAwakenning(hc7xTVphUu6H5YDn) == false)
 {
 hc7xTVphUu6H5YDn.sq_setCurrentAnimation(100);
 hc7xTVphUu6H5YDn.sq_PlaySound("PR_FASTCUT_READY");
 }
 else
 {
 local GsLncS8NMmPZ2S9A9dM_D6 = hc7xTVphUu6H5YDn.getVar().GetAnimationMap("start_01", "character/priest/animation/avengerawakening/devilhighspeedslash/start_01.ani");
 hc7xTVphUu6H5YDn.setCurrentAnimation(GsLncS8NMmPZ2S9A9dM_D6);
 hc7xTVphUu6H5YDn.sq_PlaySound("PR_DGUARDIAN_FASTCUT_READY");
 }
 }
 else if(KlYakdniPaxdUpQU == 1)
 {
 if(isAvengerAwakenning(hc7xTVphUu6H5YDn) == false)
 {
 if(hc7xTVphUu6H5YDn.isCarryWeapon())
 hc7xTVphUu6H5YDn.setCarryWeapon(false);
 hc7xTVphUu6H5YDn.sq_setCurrentAnimation(101);
 hc7xTVphUu6H5YDn.sq_PlaySound("FASTCUT_SWISH");
 }
 else
 {
 local GsLncS8NMmPZ2S9A9dM_D6 = hc7xTVphUu6H5YDn.getVar().GetAnimationMap("attack1_01", "character/priest/animation/avengerawakening/devilhighspeedslash/attack1_01.ani");
 hc7xTVphUu6H5YDn.setCurrentAnimation(GsLncS8NMmPZ2S9A9dM_D6);
 wuvDm9tHxZ = sq_CreateDrawOnlyObject(hc7xTVphUu6H5YDn, "character/priest/effect/animation/devilhighspeedslash/attacksmoke1_04.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 }
 else if(KlYakdniPaxdUpQU == 2)
 {
 if(isAvengerAwakenning(hc7xTVphUu6H5YDn) == false)
 {
 hc7xTVphUu6H5YDn.sq_setCurrentAnimation(102);
 hc7xTVphUu6H5YDn.sq_PlaySound("FASTCUT_SWISH");
 }
 else
 {
 local GsLncS8NMmPZ2S9A9dM_D6 = hc7xTVphUu6H5YDn.getVar().GetAnimationMap("attack2_01", "character/priest/animation/avengerawakening/devilhighspeedslash/attack2_01.ani");
 hc7xTVphUu6H5YDn.setCurrentAnimation(GsLncS8NMmPZ2S9A9dM_D6);
 wuvDm9tHxZ = sq_CreateDrawOnlyObject(hc7xTVphUu6H5YDn, "character/priest/effect/animation/devilhighspeedslash/attacksmoke2_03.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 }
 else if(KlYakdniPaxdUpQU == 3)
 {
 if(isAvengerAwakenning(hc7xTVphUu6H5YDn) == false)
 {
 hc7xTVphUu6H5YDn.sq_setCurrentAnimation(103);
 hc7xTVphUu6H5YDn.sq_PlaySound("FASTCUT_SWISH");
 }
 else
 {
 local GsLncS8NMmPZ2S9A9dM_D6 = hc7xTVphUu6H5YDn.getVar().GetAnimationMap("attack3_01", "character/priest/animation/avengerawakening/devilhighspeedslash/attack3_01.ani");
 hc7xTVphUu6H5YDn.setCurrentAnimation(GsLncS8NMmPZ2S9A9dM_D6);
 wuvDm9tHxZ = sq_CreateDrawOnlyObject(hc7xTVphUu6H5YDn, "character/priest/effect/animation/devilhighspeedslash/attacksmoke3_03.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 }
 else if(KlYakdniPaxdUpQU == 4)
 {
 if(isAvengerAwakenning(hc7xTVphUu6H5YDn) == false)
 {
 hc7xTVphUu6H5YDn.sq_setCurrentAnimation(104);
 hc7xTVphUu6H5YDn.sq_PlaySound("FASTCUT_SWISH");
 }
 else
 {
 local GsLncS8NMmPZ2S9A9dM_D6 = hc7xTVphUu6H5YDn.getVar().GetAnimationMap("attack4_01", "character/priest/animation/avengerawakening/devilhighspeedslash/attack4_01.ani");
 hc7xTVphUu6H5YDn.setCurrentAnimation(GsLncS8NMmPZ2S9A9dM_D6);
 wuvDm9tHxZ = sq_CreateDrawOnlyObject(hc7xTVphUu6H5YDn, "character/priest/effect/animation/devilhighspeedslash/attacksmoke4_03.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 }
 else if(KlYakdniPaxdUpQU == 5)
 {
 if(isAvengerAwakenning(hc7xTVphUu6H5YDn) == false)
 {
 hc7xTVphUu6H5YDn.sq_setCurrentAnimation(105);
 hc7xTVphUu6H5YDn.sq_setCurrentAttackInfo(91);
 hc7xTVphUu6H5YDn.sq_PlaySound("FASTCUT_WHOOSH");
 hc7xTVphUu6H5YDn.sq_PlaySound("PR_FASTCUT");
 }
 else
 {
 local GsLncS8NMmPZ2S9A9dM_D6 = hc7xTVphUu6H5YDn.getVar().GetAnimationMap("last_01", "character/priest/animation/avengerawakening/devilhighspeedslash/last_01.ani");
 hc7xTVphUu6H5YDn.setCurrentAnimation(GsLncS8NMmPZ2S9A9dM_D6);
 wuvDm9tHxZ = sq_CreateDrawOnlyObject(hc7xTVphUu6H5YDn, "character/priest/effect/animation/devilhighspeedslash/lastsmoke_04.ani", ENUM_DRAWLAYER_NORMAL, true); 
 hc7xTVphUu6H5YDn.sq_setCurrentAttackInfo(138);
 hc7xTVphUu6H5YDn.sq_PlaySound("PR_DGUARDIAN_FASTCUT");
 }
 }
 local KUtvey0OYJL = 0.0; 
 if(KlYakdniPaxdUpQU >= 1 && KlYakdniPaxdUpQU <= 4)
 {
 local Fz20zDEG7xGgo = QwNjRZqyQ2L4ROYodFZWiM.getBool(2);
 if(Fz20zDEG7xGgo)
 { 
 local Bat7vhF12prm = QwNjRZqyQ2L4ROYodFZWiM.getFloat(1); 
 
 local q5suemG2S0pgLS4_sZKe = hc7xTVphUu6H5YDn.sq_getIntData(0);
 local jUxnazjPjP = hc7xTVphUu6H5YDn.sq_getIntData(1);
 jUxnazjPjP = jUxnazjPjP.tofloat();
 q5suemG2S0pgLS4_sZKe = (q5suemG2S0pgLS4_sZKe.tofloat() + 100.0) / 100;
 Bat7vhF12prm = Bat7vhF12prm * q5suemG2S0pgLS4_sZKe.tofloat();
 if(Bat7vhF12prm > jUxnazjPjP)
 Bat7vhF12prm = jUxnazjPjP;
 QwNjRZqyQ2L4ROYodFZWiM.setBool(2, false);
 QwNjRZqyQ2L4ROYodFZWiM.setFloat(1, Bat7vhF12prm); 
 if(Bat7vhF12prm > 0)
 {
 local GsLncS8NMmPZ2S9A9dM_D6 = hc7xTVphUu6H5YDn.sq_getCurrentAni();
 GsLncS8NMmPZ2S9A9dM_D6.setSpeedRate(Bat7vhF12prm);
 KUtvey0OYJL = Bat7vhF12prm; 
 }
 }
 }
 if(wuvDm9tHxZ != null && KUtvey0OYJL != 0.0)
 wuvDm9tHxZ.getCurrentAnimation().setSpeedRate(KUtvey0OYJL); 
 local OIjLPZ5gaaibcF9 = (isAvengerAwakenning(hc7xTVphUu6H5YDn) == true) 
 ? hc7xTVphUu6H5YDn.sq_getBonusRateWithPassive(124, wuEQjr6qAPGpLJLBnbm, 1, 1.0+
 hc7xTVphUu6H5YDn.sq_getLevelData(124, 3, sq_GetSkillLevel(hc7xTVphUu6H5YDn, 124))/100.0)
 :hc7xTVphUu6H5YDn.sq_getBonusRateWithPassive(124, wuEQjr6qAPGpLJLBnbm, 1, 1.0); 
 hc7xTVphUu6H5YDn.sq_setCurrentAttackBonusRate(OIjLPZ5gaaibcF9); 
 hc7xTVphUu6H5YDn.getVar("isAtk").setBool(0, false); 
} ;

function onEndCurrentAni_HighSpeedSlash(qGQ0s7zDKadWcsNC5EYm)
{
 local QHkTX_GerH6A5zlJ4 = qGQ0s7zDKadWcsNC5EYm.getVar();
 local MjFxh1nMDt937lWwvM9fk7 = qGQ0s7zDKadWcsNC5EYm.getSkillSubState();
 local TRcuLjZc40GI9O1hh5Vt = QHkTX_GerH6A5zlJ4.getInt(0);
 local eqOT9XNzIOfKSrKCSU = qGQ0s7zDKadWcsNC5EYm.sq_getLevelData(0);
 if(MjFxh1nMDt937lWwvM9fk7 < 5 && TRcuLjZc40GI9O1hh5Vt >= eqOT9XNzIOfKSrKCSU)
 {
 sendSubState_HighSpeedSlash(qGQ0s7zDKadWcsNC5EYm, 5);
 return;
 }
 QHkTX_GerH6A5zlJ4.setInt(0, TRcuLjZc40GI9O1hh5Vt + 1); 
 if(MjFxh1nMDt937lWwvM9fk7 == 0)
 sendSubState_HighSpeedSlash(qGQ0s7zDKadWcsNC5EYm, 1);
 else if(MjFxh1nMDt937lWwvM9fk7 == 1)
 sendSubState_HighSpeedSlash(qGQ0s7zDKadWcsNC5EYm, 2);
 else if(MjFxh1nMDt937lWwvM9fk7 == 2)
 sendSubState_HighSpeedSlash(qGQ0s7zDKadWcsNC5EYm, 3);
 else if(MjFxh1nMDt937lWwvM9fk7 == 3)
 sendSubState_HighSpeedSlash(qGQ0s7zDKadWcsNC5EYm, 4);
 else if(MjFxh1nMDt937lWwvM9fk7 == 4)
 sendSubState_HighSpeedSlash(qGQ0s7zDKadWcsNC5EYm, 1);
 else if(MjFxh1nMDt937lWwvM9fk7 == 5)
 {
 qGQ0s7zDKadWcsNC5EYm.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 }
} ;


function onAttack_HighSpeedSlash(Cartc3WjEFut5BYI, DLVTU44HNas10fzI, Z4_j5K5jpbO5eg)
{
 if(!Cartc3WjEFut5BYI || !DLVTU44HNas10fzI.isObjectType(OBJECTTYPE_ACTIVE)) return;
 if(Cartc3WjEFut5BYI.getVar("isAtk").getBool(0) == false) 
 {
 Cartc3WjEFut5BYI.getVar("isAtk").setBool(0, true); 
 local srGsrGru9jnAuhWjFv = Cartc3WjEFut5BYI.sq_getLevelData(124, 2, sq_GetSkillLevel(Cartc3WjEFut5BYI, 124)); 
 local yWO0R0KrfbfPDBGGGm7xc = sq_GetAbilityConvertRate(Cartc3WjEFut5BYI, CONVERT_TABLE_TYPE_HP);
 local KK0n6J1O7CmkoBcewaf = srGsrGru9jnAuhWjFv.tofloat() * yWO0R0KrfbfPDBGGGm7xc.tofloat();
 Cartc3WjEFut5BYI.setHp(Cartc3WjEFut5BYI.getHp() + KK0n6J1O7CmkoBcewaf.tointeger(), null, true); 
 }
} ;

function onKeyFrameFlag_HighSpeedSlash(tYlrIJO5zzYKssgDZhLqK9, iIuAzBXOgyNbjy2okpXp)
{
 return true;
} ;


