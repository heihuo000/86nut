
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_mage_thegate(Cj7ZROvJGDVJXo6N)
{
 if(!Cj7ZROvJGDVJXo6N) return false; 
 local G_V6lrtDVaqh = Cj7ZROvJGDVJXo6N.sq_IsUseSkill(252); 
 if(G_V6lrtDVaqh) 
 {
 Cj7ZROvJGDVJXo6N.sq_AddSetStatePacket(252, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_thegate(Cj7ZROvJGDVJXo6N)
{
 if(!Cj7ZROvJGDVJXo6N) return false; 
 local G_V6lrtDVaqh = Cj7ZROvJGDVJXo6N.sq_GetState(); 
 if(G_V6lrtDVaqh == STATE_STAND) 
 return true; 
 if(G_V6lrtDVaqh == STATE_ATTACK) 
 {
 return Cj7ZROvJGDVJXo6N.sq_IsCommandEnable(252); 
 }
 return true; 
} ;

 
function onSetState_mage_thegate(TWb6EZbGImjJtc6O3ew32, JG4UyQpzCBg6, KDpzlMmrDSJr9, Q8_XNSjFA2VRNctTzk7)
{
 if(!TWb6EZbGImjJtc6O3ew32) return; 
 TWb6EZbGImjJtc6O3ew32.sq_StopMove(); 
 TWb6EZbGImjJtc6O3ew32.sq_SetCurrentAnimation(118); 
 local gBSAP5zV22tz5 = sq_GetSkillLevel(TWb6EZbGImjJtc6O3ew32, 252); 
 local JaV3jsJ21ubJ13M7ig5Csmgy = sq_GetCastTime(TWb6EZbGImjJtc6O3ew32, 252, gBSAP5zV22tz5); 
 sq_StartDrawCastGauge(TWb6EZbGImjJtc6O3ew32, JaV3jsJ21ubJ13M7ig5Csmgy, true); 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(TWb6EZbGImjJtc6O3ew32, "character/mage/thegate/ap_thegate.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(TWb6EZbGImjJtc6O3ew32, "character/mage/thegate/ap_thegate.nut");
 
 CNSquirrelAppendage.sq_AppendAppendage(TWb6EZbGImjJtc6O3ew32, TWb6EZbGImjJtc6O3ew32, 252, true, "character/mage/thegate/ap_thegate.nut", true);
 TWb6EZbGImjJtc6O3ew32.getVar().clear_obj_vector(); 
 TWb6EZbGImjJtc6O3ew32.getVar().clear_vector(); 
 TWb6EZbGImjJtc6O3ew32.getVar().setBool(0, false); 
 TWb6EZbGImjJtc6O3ew32.sq_PlaySound("THEGATE_CAST");
 TWb6EZbGImjJtc6O3ew32.sq_PlaySound("WZ_THEGATE_CAST");
 
 TWb6EZbGImjJtc6O3ew32.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onEndState_mage_thegate(Pu96OD5T8hR8dezAi2wwTgTH, kl9uC5hqVW)
{
 if(!Pu96OD5T8hR8dezAi2wwTgTH) return;
 if(kl9uC5hqVW!= 252)
 sq_EndDrawCastGauge(Pu96OD5T8hR8dezAi2wwTgTH); 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Pu96OD5T8hR8dezAi2wwTgTH, "character/mage/thegate/ap_thegate.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(Pu96OD5T8hR8dezAi2wwTgTH, "character/mage/thegate/ap_thegate.nut");
} ;

function onKeyFrameFlag_mage_thegate(Pu96OD5T8hR8dezAi2wwTgTH, kl9uC5hqVW)
{
 if(!Pu96OD5T8hR8dezAi2wwTgTH) return false;
 switch(kl9uC5hqVW)
 {
 case 0: 
 break;
 case 1: 
 local CE4uWpP73fIwP67vr = CNSquirrelAppendage.sq_GetAppendage(Pu96OD5T8hR8dezAi2wwTgTH, "character/mage/thegate/ap_thegate.nut");
 if(CE4uWpP73fIwP67vr)
 CE4uWpP73fIwP67vr.setState(1, sq_GetGlobalIntVector()); 
 Pu96OD5T8hR8dezAi2wwTgTH.sq_PlaySound("THEGATE_START");
 Pu96OD5T8hR8dezAi2wwTgTH.sq_PlaySound("WZ_THEGATE");
 break;
 case 2: 
 if(Pu96OD5T8hR8dezAi2wwTgTH.sq_IsMyControlObject())
 {
 local liRp5fpBftar = Pu96OD5T8hR8dezAi2wwTgTH.getVar(); 
 local vWNKUMVQsUbDRTujqFme_QaL = sq_GetSkillLevel(Pu96OD5T8hR8dezAi2wwTgTH, 252); 
 local WOBTVcFKhuQSukniQ0 = sq_GetLevelData(Pu96OD5T8hR8dezAi2wwTgTH, 252, 0, vWNKUMVQsUbDRTujqFme_QaL); 
 local ybzP2vekS0MKi5u9iMV = sq_GetLevelData(Pu96OD5T8hR8dezAi2wwTgTH, 252, 5, vWNKUMVQsUbDRTujqFme_QaL); 
 local oAVrfUUCd1ChmOD2 = Pu96OD5T8hR8dezAi2wwTgTH.getXPos(); 
 local MX8P42Jjjp = Pu96OD5T8hR8dezAi2wwTgTH.getYPos(); 
 local _oipTElfEyddKo5P6mim = Pu96OD5T8hR8dezAi2wwTgTH.getZPos(); 
 local d6o5GU5I5FBf_C = Pu96OD5T8hR8dezAi2wwTgTH.getObjectManager(); 
 for(local FEDNuhjGEb = 0; FEDNuhjGEb < d6o5GU5I5FBf_C.getCollisionObjectNumber(); FEDNuhjGEb++)
 {
 local b_pAL9AdDeMrJC = d6o5GU5I5FBf_C.getCollisionObject(FEDNuhjGEb); 
 if(b_pAL9AdDeMrJC
 && b_pAL9AdDeMrJC.isObjectType(OBJECTTYPE_ACTIVE)
 && Pu96OD5T8hR8dezAi2wwTgTH.isEnemy(b_pAL9AdDeMrJC)
 && b_pAL9AdDeMrJC.isInDamagableState(Pu96OD5T8hR8dezAi2wwTgTH))
 {
 local Pvzj_Kf1MxGapCF = sq_GetCNRDObjectToActiveObject(b_pAL9AdDeMrJC); 
 
 if(Pvzj_Kf1MxGapCF && !Pvzj_Kf1MxGapCF.isDead())
 {
 
 local Anvy6gdVGRTqLD = Pvzj_Kf1MxGapCF.getXPos(); local B1XACsebk4Nsu3H = Pvzj_Kf1MxGapCF.getYPos(); local bNXoUaIuoqbEfreq = Pvzj_Kf1MxGapCF.getZPos();
 
 if(sq_GetDistance(oAVrfUUCd1ChmOD2, MX8P42Jjjp, Anvy6gdVGRTqLD, B1XACsebk4Nsu3H, true) <= ybzP2vekS0MKi5u9iMV
 && sq_Abs(_oipTElfEyddKo5P6mim - bNXoUaIuoqbEfreq) <= ybzP2vekS0MKi5u9iMV)
 {
 liRp5fpBftar.push_obj_vector(Pvzj_Kf1MxGapCF); 
 }
 }
 }
 if(liRp5fpBftar.get_obj_vector_size() >= WOBTVcFKhuQSukniQ0) 
 break;
 }
 local tZojwZNx05w83 = liRp5fpBftar.get_obj_vector_size(); 
 if(tZojwZNx05w83>0)
 {
 local ZNeeeMxPEsR = sq_GetLevelData(Pu96OD5T8hR8dezAi2wwTgTH, 252, 1, vWNKUMVQsUbDRTujqFme_QaL); 
 local FGQqtLG8qwb0u5VG = sq_GetLevelData(Pu96OD5T8hR8dezAi2wwTgTH, 252, 2, vWNKUMVQsUbDRTujqFme_QaL); 
 
 
 local dv8t3YYw00ePduNFA89 = sq_GetUniformVelocity(100, 
 sq_GetLevelData(Pu96OD5T8hR8dezAi2wwTgTH, 252, 4, vWNKUMVQsUbDRTujqFme_QaL),
 tZojwZNx05w83,
 WOBTVcFKhuQSukniQ0)/100.0; 
 local LKpaCVUjwV72Y4fJcrI8V_r = Pu96OD5T8hR8dezAi2wwTgTH.sq_GetBonusRateWithPassive(252, 252, 3, dv8t3YYw00ePduNFA89); 
 local UhGVQtbBFCHgeGa8_t04X9 = liRp5fpBftar.get_vector(0); 
 for(local FEDNuhjGEb = 0; FEDNuhjGEb < tZojwZNx05w83; FEDNuhjGEb++)
 {
 local b_pAL9AdDeMrJC = liRp5fpBftar.get_obj_vector(FEDNuhjGEb); 
 if(b_pAL9AdDeMrJC)
 {
 Pu96OD5T8hR8dezAi2wwTgTH.sq_StartWrite();
 Pu96OD5T8hR8dezAi2wwTgTH.sq_WriteDword(252); 
 Pu96OD5T8hR8dezAi2wwTgTH.sq_WriteDword(1); 
 Pu96OD5T8hR8dezAi2wwTgTH.sq_WriteDword(sq_GetGroup(b_pAL9AdDeMrJC)); 
 Pu96OD5T8hR8dezAi2wwTgTH.sq_WriteDword(sq_GetUniqueId(b_pAL9AdDeMrJC)); 
 Pu96OD5T8hR8dezAi2wwTgTH.sq_WriteWord(UhGVQtbBFCHgeGa8_t04X9); 
 Pu96OD5T8hR8dezAi2wwTgTH.sq_WriteDword(ZNeeeMxPEsR); 
 Pu96OD5T8hR8dezAi2wwTgTH.sq_WriteDword(FGQqtLG8qwb0u5VG); 
 Pu96OD5T8hR8dezAi2wwTgTH.sq_WriteDword(LKpaCVUjwV72Y4fJcrI8V_r); 
 sq_SendCreatePassiveObjectPacketPos(Pu96OD5T8hR8dezAi2wwTgTH, 24372, 0, b_pAL9AdDeMrJC.getXPos(), b_pAL9AdDeMrJC.getYPos(), b_pAL9AdDeMrJC.getZPos() + sq_GetObjectHeight(b_pAL9AdDeMrJC) + 120);
 }
 }
 
 sq_flashScreen(Pu96OD5T8hR8dezAi2wwTgTH, 300, ZNeeeMxPEsR * FGQqtLG8qwb0u5VG + 1200, 300, 100, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 }
 }
 break;
 }
 return true;
} ;

function onProcCon_mage_thegate(lTJbBDG6tcr4gI)
{
 if(!lTJbBDG6tcr4gI) return;
 if(lTJbBDG6tcr4gI.getVar().getBool(0) == false) 
 {
 local gFjQFpvp5hGXUB30U = -1;
 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL))
 gFjQFpvp5hGXUB30U = ENUM_ELEMENT_WATER; 
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL))
 gFjQFpvp5hGXUB30U = ENUM_ELEMENT_LIGHT; 
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL))
 gFjQFpvp5hGXUB30U = ENUM_ELEMENT_FIRE; 
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
 gFjQFpvp5hGXUB30U = ENUM_ELEMENT_DARK; 
 if(gFjQFpvp5hGXUB30U != -1) 
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1);
 sq_BinaryWriteWord(gFjQFpvp5hGXUB30U); 
 sq_SendChangeSkillEffectPacket(lTJbBDG6tcr4gI, 252); 
 lTJbBDG6tcr4gI.getVar().setBool(0, true); 
 }
 }
} ;

 
function onEndCurrentAni_mage_thegate(eJySVBJ57iO4OXv0OLD)
{
 if(!eJySVBJ57iO4OXv0OLD) return;
 if(eJySVBJ57iO4OXv0OLD.sq_IsMyControlObject())
 eJySVBJ57iO4OXv0OLD.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

function onChangeSkillEffect_mage_thegate(eJySVBJ57iO4OXv0OLD, dtXYImH5HNt7OqOo_S8cDMU, ddXNdxY_BhjHVW4d)
{
 if(!eJySVBJ57iO4OXv0OLD) return;
 local Duq3Wfnwr1V = ddXNdxY_BhjHVW4d.readWord(); 
 switch(Duq3Wfnwr1V)
 {
 case 1:
 local g9ynljsYLAsotwoSXfgI = ddXNdxY_BhjHVW4d.readWord(); 
 eJySVBJ57iO4OXv0OLD.getVar().clear_vector(); 
 eJySVBJ57iO4OXv0OLD.getVar().push_vector(g9ynljsYLAsotwoSXfgI); 
 local x1OvgTMdD8lPuYuqixqPI = eJySVBJ57iO4OXv0OLD.getCurrentAnimation(); 
 x1OvgTMdD8lPuYuqixqPI.setCurrentFrameWithChildLayer(6); 
 local _CLHj4GoKRyNX7 = ["fire/cast_fire_cast.ani", "ice/cast_ice_cast.ani", "dark/cast_dark_cast.ani", "light/cast_light_cast.ani"];
 eJySVBJ57iO4OXv0OLD.sq_AddStateLayerAnimation(1, eJySVBJ57iO4OXv0OLD.sq_CreateCNRDAnimation("effect/animation/thegate/" + _CLHj4GoKRyNX7[g9ynljsYLAsotwoSXfgI]), 0, 0);
 break;
 }
} ;


