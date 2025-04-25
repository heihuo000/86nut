
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_priest_metamorphosis(fWC0pHGXgo_jaV_ZPpjS0)
{
 fWC0pHGXgo_jaV_ZPpjS0 = sq_GetCNRDObjectToSQRCharacter(fWC0pHGXgo_jaV_ZPpjS0);
 if(!fWC0pHGXgo_jaV_ZPpjS0) return false; 
 if(isAvengerAwakenning(fWC0pHGXgo_jaV_ZPpjS0) 
 || !isInDevilStrikeSkill(fWC0pHGXgo_jaV_ZPpjS0) 
 || CNSquirrelAppendage.sq_IsAppendAppendage(fWC0pHGXgo_jaV_ZPpjS0, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 return false; 
 
 if(getDevilGauge(fWC0pHGXgo_jaV_ZPpjS0).tofloat() / getDevilMaxGaugeValue(fWC0pHGXgo_jaV_ZPpjS0).tofloat() >=
 fWC0pHGXgo_jaV_ZPpjS0.sq_GetLevelData(139, 6, sq_GetSkillLevel(fWC0pHGXgo_jaV_ZPpjS0, 139)) / 100.0) 
 {
 local oyQp7VZ3_l = fWC0pHGXgo_jaV_ZPpjS0.sq_IsUseSkill(139); 
 if(oyQp7VZ3_l) 
 {
 fWC0pHGXgo_jaV_ZPpjS0.sq_IntVectClear();
 fWC0pHGXgo_jaV_ZPpjS0.sq_IntVectPush(0); 
 fWC0pHGXgo_jaV_ZPpjS0.sq_AddSetStatePacket(139, STATE_PRIORITY_USER, true); 
 return true; 
 }
 }
 else if(fWC0pHGXgo_jaV_ZPpjS0.isMessage())
 sq_AddMessage(29002); 
 return false; 
} ;

 
function checkCommandEnable_priest_metamorphosis(nB80cWCmuNh2)
{
 nB80cWCmuNh2 = sq_GetCNRDObjectToSQRCharacter(nB80cWCmuNh2);
 if(!nB80cWCmuNh2) return false; 
 if(isAvengerAwakenning(nB80cWCmuNh2) 
 || !isInDevilStrikeSkill(nB80cWCmuNh2) 
 || CNSquirrelAppendage.sq_IsAppendAppendage(nB80cWCmuNh2, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 return false; 
 local kOBq_k_rvHalEb3HBp = nB80cWCmuNh2.sq_GetState(); 
 if(kOBq_k_rvHalEb3HBp == STATE_STAND) 
 return true; 
 if(kOBq_k_rvHalEb3HBp == STATE_ATTACK) 
 {
 return nB80cWCmuNh2.sq_IsCommandEnable(139); 
 }
 return true; 
} ;

 
function onSetState_priest_metamorphosis(RES_WxzhIGEsO14, xHk7JSTdhuAEFgxKkBuIIpnf, nX5tioTqDBFr, EGNgWaAKEoaA)
{
 RES_WxzhIGEsO14 = sq_GetCNRDObjectToSQRCharacter(RES_WxzhIGEsO14);
 if(!RES_WxzhIGEsO14) return; 
 RES_WxzhIGEsO14.sq_StopMove(); 
 RES_WxzhIGEsO14.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 local GDfi4i3VfKn87M5l0lITuhl = RES_WxzhIGEsO14.sq_GetVectorData(nX5tioTqDBFr, 0); 
 RES_WxzhIGEsO14.setSkillSubState(GDfi4i3VfKn87M5l0lITuhl); 
 switch(GDfi4i3VfKn87M5l0lITuhl)
 {
 case 0:
 RES_WxzhIGEsO14.sq_SetCurrentAnimation(235);
 RES_WxzhIGEsO14.sq_PlaySound("PR_METAMORPHOSIS");
 if(RES_WxzhIGEsO14.sq_IsMyControlObject())
 {
 RES_WxzhIGEsO14.sq_StartWrite();
 RES_WxzhIGEsO14.sq_WriteDword(139); 
 RES_WxzhIGEsO14.sq_WriteDword(1); 
 RES_WxzhIGEsO14.sq_WriteDword(RES_WxzhIGEsO14.sq_GetBonusRateWithPassive(139, 139, 9, 1.0)); 
 RES_WxzhIGEsO14.sq_WriteDword(RES_WxzhIGEsO14.sq_GetLevelData(139, 10, sq_GetSkillLevel(RES_WxzhIGEsO14, 139))); 
 RES_WxzhIGEsO14.sq_SendCreatePassiveObjectPacket(24374, 0, 0, 0, 0);
 }
 break;
 case 1: 
 RES_WxzhIGEsO14.sq_SetCurrentAnimation(242);
 RES_WxzhIGEsO14.sq_SetCurrentAttackInfo(134);
 RES_WxzhIGEsO14.sq_SetCurrentAttackBonusRate(RES_WxzhIGEsO14.sq_GetBonusRateWithPassive(139, 20, 1, 2.5)); 
 break;
 case 2: 
 RES_WxzhIGEsO14.sq_SetCurrentAnimation(240);
 RES_WxzhIGEsO14.sq_SetCurrentAttackInfo(133);
 local hPtTaKEDxdbZFxLvqtqBh = sq_GetCurrentAttackInfo(RES_WxzhIGEsO14); 
 sq_SetCurrentAttackBonusRate(hPtTaKEDxdbZFxLvqtqBh, RES_WxzhIGEsO14.sq_GetBonusRateWithPassive(63, 30, 0, 1.5)); 
 sq_SetCurrentAttackPower(hPtTaKEDxdbZFxLvqtqBh, RES_WxzhIGEsO14.sq_GetPowerWithPassive(63, 30, 2, 0, 1.5)); 
 sq_SetCurrentAttacknUpForce(hPtTaKEDxdbZFxLvqtqBh, RES_WxzhIGEsO14.sq_GetLevelData(63, 1, sq_GetSkillLevel(RES_WxzhIGEsO14, 63))); 
 RES_WxzhIGEsO14.getVar("move").clear_vector(); 
 RES_WxzhIGEsO14.getVar("move").push_vector(RES_WxzhIGEsO14.getXPos()); 
 break;
 case 3: 
 RES_WxzhIGEsO14.sq_SetCurrentAnimation(244);
 RES_WxzhIGEsO14.sq_SetCurrentAttackInfo(142); 
 RES_WxzhIGEsO14.sq_SetCurrentAttackBonusRate(RES_WxzhIGEsO14.sq_GetBonusRateWithPassive(11, 26, 0, 5.0)); 
 RES_WxzhIGEsO14.getVar("move").clear_vector(); 
 RES_WxzhIGEsO14.getVar("move").push_vector(RES_WxzhIGEsO14.getZPos()); 
 RES_WxzhIGEsO14.getVar().setBool(0, false); 
 if(RES_WxzhIGEsO14.sq_IsMyControlObject())
 {
 RES_WxzhIGEsO14.sq_SetStaticMoveInfo(0, 200, 200, true);
 RES_WxzhIGEsO14.sq_SetMoveDirection(RES_WxzhIGEsO14.getDirection(), ENUM_DIRECTION_NEUTRAL); 
 }
 RES_WxzhIGEsO14.sq_PlaySound("PR_MINE"); 
 break;
 }
} ;

function onProcCon_priest_metamorphosis(uc5T_kpvnd5Xa7Kp)
{
 uc5T_kpvnd5Xa7Kp = sq_GetCNRDObjectToSQRCharacter(uc5T_kpvnd5Xa7Kp);
 if(!uc5T_kpvnd5Xa7Kp) return;
 local j25R3muNGvIia = uc5T_kpvnd5Xa7Kp.getSkillSubState(); 
 switch(j25R3muNGvIia)
 {
 case 1:
 uc5T_kpvnd5Xa7Kp.setSkillCommandEnable(169, true); 
 if(uc5T_kpvnd5Xa7Kp.sq_IsEnterSkill(169) != -1) 
 {
 local mvJ3K24HrQWL7_sxx_dkamHD = uc5T_kpvnd5Xa7Kp.sq_IsUseSkill(169); 
 if(mvJ3K24HrQWL7_sxx_dkamHD)
 {
 uc5T_kpvnd5Xa7Kp.sq_IntVectClear();
 uc5T_kpvnd5Xa7Kp.sq_IntVectPush(1);
 uc5T_kpvnd5Xa7Kp.sq_IntVectPush(1);
 uc5T_kpvnd5Xa7Kp.sq_IntVectPush(200);
 uc5T_kpvnd5Xa7Kp.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
 }
 }
 break;
 }
} ;

function onProc_priest_metamorphosis(Cd7L3cZaZ_FrD1e4gWtsq0MK)
{
 Cd7L3cZaZ_FrD1e4gWtsq0MK = sq_GetCNRDObjectToSQRCharacter(Cd7L3cZaZ_FrD1e4gWtsq0MK);
 if(!Cd7L3cZaZ_FrD1e4gWtsq0MK) return;
 local sTY7IagIy5F3 = Cd7L3cZaZ_FrD1e4gWtsq0MK.getSkillSubState(); 
 switch(sTY7IagIy5F3)
 {
 case 2: 
 if(Cd7L3cZaZ_FrD1e4gWtsq0MK.getVar("move").size_vector() > 0)
 {
 local QpTceXgar4e = Cd7L3cZaZ_FrD1e4gWtsq0MK.getCurrentAnimation(); 
 local Ux9tHXfyUKKtewYgvbVh0y = sq_GetCurrentTime(QpTceXgar4e); 
 local BIUH5xL_mzo = QpTceXgar4e.getDelaySum(0, 1); 
 local ZyzkehHlYlh = sq_GetDistancePos(Cd7L3cZaZ_FrD1e4gWtsq0MK.getVar("move").get_vector(0),
 Cd7L3cZaZ_FrD1e4gWtsq0MK.getDirection(),
 sq_GetUniformVelocity(0, 45, Ux9tHXfyUKKtewYgvbVh0y, BIUH5xL_mzo)); 
 if(Cd7L3cZaZ_FrD1e4gWtsq0MK.isMovablePos(ZyzkehHlYlh, Cd7L3cZaZ_FrD1e4gWtsq0MK.getYPos())) 
 sq_setCurrentAxisPos(Cd7L3cZaZ_FrD1e4gWtsq0MK, 0, ZyzkehHlYlh); 
 else 
 Cd7L3cZaZ_FrD1e4gWtsq0MK.getVar("move").clear_vector(); 
 }
 break;
 case 3: 
 if(Cd7L3cZaZ_FrD1e4gWtsq0MK.getVar("move").size_vector() == 1)
 {
 local QpTceXgar4e = Cd7L3cZaZ_FrD1e4gWtsq0MK.getCurrentAnimation(); 
 local Ux9tHXfyUKKtewYgvbVh0y = sq_GetCurrentTime(QpTceXgar4e); 
 local BIUH5xL_mzo = QpTceXgar4e.getDelaySum(0, 4); 
 local OgXkJDWjFRnB = sq_GetAccel(Cd7L3cZaZ_FrD1e4gWtsq0MK.getVar("move").get_vector(0), 135, Ux9tHXfyUKKtewYgvbVh0y, BIUH5xL_mzo, true);
 sq_setCurrentAxisPos(Cd7L3cZaZ_FrD1e4gWtsq0MK, 2, OgXkJDWjFRnB); 
 if(Ux9tHXfyUKKtewYgvbVh0y >= BIUH5xL_mzo) 
 {
 Cd7L3cZaZ_FrD1e4gWtsq0MK.sq_PlaySound("MINE_EFFECT"); 
 sq_SetZVelocity(Cd7L3cZaZ_FrD1e4gWtsq0MK, -700, -700);
 Cd7L3cZaZ_FrD1e4gWtsq0MK.getVar("move").clear_vector(); 
 }
 }
 else
 {
 if(Cd7L3cZaZ_FrD1e4gWtsq0MK.getZPos() <= 0 && Cd7L3cZaZ_FrD1e4gWtsq0MK.getVar().getBool(0) == false) 
 {
 Cd7L3cZaZ_FrD1e4gWtsq0MK.getVar().setBool(0, true); 
 Cd7L3cZaZ_FrD1e4gWtsq0MK.sq_StopMove(); 
 local QpTceXgar4e = Cd7L3cZaZ_FrD1e4gWtsq0MK.getCurrentAnimation(); 
 sq_Rewind(QpTceXgar4e);
 QpTceXgar4e.setCurrentFrameWithChildLayer(8); 
 if(Cd7L3cZaZ_FrD1e4gWtsq0MK.sq_IsMyControlObject())
 {
 Cd7L3cZaZ_FrD1e4gWtsq0MK.sq_StartWrite();
 Cd7L3cZaZ_FrD1e4gWtsq0MK.sq_WriteDword(139); 
 Cd7L3cZaZ_FrD1e4gWtsq0MK.sq_WriteDword(2); 
 Cd7L3cZaZ_FrD1e4gWtsq0MK.sq_WriteDword(Cd7L3cZaZ_FrD1e4gWtsq0MK.sq_GetBonusRateWithPassive(11, 26, 0, 10.0)); 
 Cd7L3cZaZ_FrD1e4gWtsq0MK.sq_WriteDword(100); 
 Cd7L3cZaZ_FrD1e4gWtsq0MK.sq_SendCreatePassiveObjectPacket(24374, 0, 45, 0, 0);
 }
 }
 }
 break;
 }
} ;

function onKeyFrameFlag_priest_metamorphosis(rDySdPeQecmk, UE5BU1piFYo7K7Wb5J)
{
 rDySdPeQecmk = sq_GetCNRDObjectToSQRCharacter(rDySdPeQecmk);
 if(!rDySdPeQecmk) return;
 local cXyvwayRL3z1Bo9k3Ys6lLCi = rDySdPeQecmk.getSkillSubState(); 
 switch(cXyvwayRL3z1Bo9k3Ys6lLCi)
 {
 case 0:
 if(UE5BU1piFYo7K7Wb5J == 0)
 {
 sq_CreateDrawOnlyObject(rDySdPeQecmk, "character/priest/effect/animation/metamorphosis/effect/change.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_SetMyShake(rDySdPeQecmk, 5, 60); 
 if(rDySdPeQecmk.sq_IsMyControlObject())
 sq_flashScreen(rDySdPeQecmk, 0, 160, 80, 204, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 case 1:
 if(UE5BU1piFYo7K7Wb5J == 0)
 sq_SetMyShake(rDySdPeQecmk, 5, 60); 
 else if(UE5BU1piFYo7K7Wb5J == 1)
 {
 rDySdPeQecmk.resetHitObjectList(); 
 sq_CreateDrawOnlyObject(rDySdPeQecmk, "character/priest/effect/animation/metamorphosis/attack/z/zattack_dust.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 break;
 case 2:
 if(UE5BU1piFYo7K7Wb5J == 0)
 {
 sq_CreateDrawOnlyObject(rDySdPeQecmk, "character/priest/effect/animation/metamorphosis/attack/dash02/dash02_dust.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_CreateDrawOnlyObject(rDySdPeQecmk, "character/priest/effect/animation/metamorphosis/effect/upper.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 else if(UE5BU1piFYo7K7Wb5J == 1)
 rDySdPeQecmk.resetHitObjectList(); 
 break;
 }
 return true;
} ;

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onEndCurrentAni_priest_metamorphosis(NiXNvUstNNl4qraZpFtUjNCC)
{
 NiXNvUstNNl4qraZpFtUjNCC = sq_GetCNRDObjectToSQRCharacter(NiXNvUstNNl4qraZpFtUjNCC);
 if(!NiXNvUstNNl4qraZpFtUjNCC) return;
 if(!NiXNvUstNNl4qraZpFtUjNCC.sq_IsMyControlObject()) return;
 local Vl8dZhdf7R7sUb = NiXNvUstNNl4qraZpFtUjNCC.getSkillSubState(); 
 switch(Vl8dZhdf7R7sUb)
 {
 case 0:
 case 1:
 case 2:
 case 3:
 
 if(Vl8dZhdf7R7sUb == 0 && !CNSquirrelAppendage.sq_IsAppendAppendage(NiXNvUstNNl4qraZpFtUjNCC, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_SendChangeSkillEffectPacket(NiXNvUstNNl4qraZpFtUjNCC, 139); 
 }
 NiXNvUstNNl4qraZpFtUjNCC.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

 
function addAppendAppendage_priest_metamorphosis(F8VwWAC3oQ9fE6UTk)
{
 F8VwWAC3oQ9fE6UTk = sq_GetCNRDObjectToSQRCharacter(F8VwWAC3oQ9fE6UTk);
 if(!F8VwWAC3oQ9fE6UTk) return;
 local vVBXanvpQ7 = sq_GetSkillLevel(F8VwWAC3oQ9fE6UTk, 139); 
 local dFynbY3fPtWWm = CNSquirrelAppendage.sq_AppendAppendage(F8VwWAC3oQ9fE6UTk, F8VwWAC3oQ9fE6UTk, 139, false, "character/new_priest/metamorphosis/ap_metamorphosis.nut", false); 
 dFynbY3fPtWWm.setAppendCauseSkill(BUFF_CAUSE_SKILL, ENUM_CHARACTERJOB_PRIEST, 139, vVBXanvpQ7); 
 CNSquirrelAppendage.sq_AppendAppendageID(dFynbY3fPtWWm, F8VwWAC3oQ9fE6UTk, F8VwWAC3oQ9fE6UTk, 139, false); 
 local V1H7TmwUBCXnJHgUi9F = dFynbY3fPtWWm.sq_getChangeStatus("changeStatus"); 
 if(!V1H7TmwUBCXnJHgUi9F) 
 V1H7TmwUBCXnJHgUi9F = dFynbY3fPtWWm.sq_AddChangeStatusAppendageID(F8VwWAC3oQ9fE6UTk, F8VwWAC3oQ9fE6UTk, 0, CHANGE_STATUS_TYPE_PHYSICAL_ATTACK_BONUS, false, 0, APID_COMMON);
 if(V1H7TmwUBCXnJHgUi9F) 
 {
 local eGXJ4lEuPJJafohvIeVn1n = (sq_GetLevelData(F8VwWAC3oQ9fE6UTk, 139, 0, vVBXanvpQ7)).tofloat(); 
 V1H7TmwUBCXnJHgUi9F.clearParameter(); 
 V1H7TmwUBCXnJHgUi9F.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK_BONUS, true, eGXJ4lEuPJJafohvIeVn1n); 
 V1H7TmwUBCXnJHgUi9F.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK_BONUS, true, eGXJ4lEuPJJafohvIeVn1n); 
 V1H7TmwUBCXnJHgUi9F.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, (sq_GetLevelData(F8VwWAC3oQ9fE6UTk, 139, 4, vVBXanvpQ7)).tofloat()); 
 V1H7TmwUBCXnJHgUi9F.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, (sq_GetLevelData(F8VwWAC3oQ9fE6UTk, 139, 5, vVBXanvpQ7)).tofloat()); 
 }
} ;

