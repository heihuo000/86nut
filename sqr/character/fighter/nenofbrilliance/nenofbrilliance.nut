
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_fighter_nenofbrilliance(cqtMfksNWDg4)
{
 if(!cqtMfksNWDg4) return false; 
 local TEHZnGdyfyGd2M = cqtMfksNWDg4.sq_IsUseSkill(228); 
 if(TEHZnGdyfyGd2M) 
 {
 cqtMfksNWDg4.sq_IsEnterSkillLastKeyUnits(228); 
 cqtMfksNWDg4.sq_IntVectClear();
 cqtMfksNWDg4.sq_IntVectPush(0); 
 cqtMfksNWDg4.sq_AddSetStatePacket(228, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_fighter_nenofbrilliance(cqtMfksNWDg4)
{
 if(!cqtMfksNWDg4) return false; 
 local TEHZnGdyfyGd2M = cqtMfksNWDg4.sq_GetState(); 
 if(TEHZnGdyfyGd2M == STATE_STAND) 
 return true; 
 if(TEHZnGdyfyGd2M == STATE_ATTACK) 
 {
 return cqtMfksNWDg4.sq_IsCommandEnable(228); 
 }
 return true; 
} ;

 
function onSetState_fighter_nenofbrilliance(tdTesEfBcnZ4RDWnG, _xw5JfTGXbV0IkscsISRQKmr, dYkkESS9Z7js0vu, ROK0xKlP8kCGqh9VNP)
{
 if(!tdTesEfBcnZ4RDWnG) return; 
 local SrdoDwKHpV9aqx519O = tdTesEfBcnZ4RDWnG.sq_GetVectorData(dYkkESS9Z7js0vu, 0); 
 tdTesEfBcnZ4RDWnG.setSkillSubState(SrdoDwKHpV9aqx519O); 
 switch(SrdoDwKHpV9aqx519O)
 {
 case 0: 
 tdTesEfBcnZ4RDWnG.getVar().clear_vector(); 
 tdTesEfBcnZ4RDWnG.sq_StopMove(); 
 tdTesEfBcnZ4RDWnG.sq_ZStop(); 
 tdTesEfBcnZ4RDWnG.sq_SetCurrentAnimation(109);
 local ZgrPpwKNMxMxf = tdTesEfBcnZ4RDWnG.getCurrentAnimation(); 
 local Bmswj5JT28FM6A = ZgrPpwKNMxMxf.getDelaySum(false); 
 tdTesEfBcnZ4RDWnG.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local tg0rDLecx36VrK = ZgrPpwKNMxMxf.getDelaySum(false); 
 local klD2tCAJPRfrs4V = Bmswj5JT28FM6A.tofloat() / tg0rDLecx36VrK.tofloat() * 100.0; 
 
 local t5TX6MuEjA4K8p = sq_CreateDrawOnlyObject(tdTesEfBcnZ4RDWnG, "character/fighter/effect/animation/nenofbrilliance/magiccircle_start_magic_circle_1.ani", ENUM_DRAWLAYER_BOTTOM, true);
 (t5TX6MuEjA4K8p.getCurrentAnimation()).setSpeedRate(klD2tCAJPRfrs4V); 
 break;
 case 1: 
 tdTesEfBcnZ4RDWnG.sq_SetCurrentAnimation(110);
 if(tdTesEfBcnZ4RDWnG.sq_IsMyControlObject())
 {
 local IFOGsr3bhdni = sq_flashScreen(tdTesEfBcnZ4RDWnG, 200, 99990, 0, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 tdTesEfBcnZ4RDWnG.getVar("flashobj").clear_obj_vector(); 
 tdTesEfBcnZ4RDWnG.getVar("flashobj").push_obj_vector(IFOGsr3bhdni); 
 }
 
 local t5TX6MuEjA4K8p = sq_CreateDrawOnlyObject(tdTesEfBcnZ4RDWnG, "character/fighter/effect/animation/nenofbrilliance/magiccircle_loop_magic_circle_1.ani", ENUM_DRAWLAYER_BOTTOM, false);
 sq_setCurrentAxisPos(t5TX6MuEjA4K8p, 2, 0); 
 tdTesEfBcnZ4RDWnG.getVar("aniobj").push_obj_vector(t5TX6MuEjA4K8p); 
 break;
 case 2: 
 tdTesEfBcnZ4RDWnG.sq_PlaySound("FT_BRILLIANCE_NEN_02");
 tdTesEfBcnZ4RDWnG.sq_SetCurrentAnimation(111);
 local t5TX6MuEjA4K8p = sq_CreateDrawOnlyObject(tdTesEfBcnZ4RDWnG, "character/fighter/effect/animation/nenofbrilliance/magiccircle_bomb_magic_circle_1.ani", ENUM_DRAWLAYER_BOTTOM, true);
 sq_setCurrentAxisPos(t5TX6MuEjA4K8p, 2, 0); 
 local ga4Hzk93k2mzKL7T = tdTesEfBcnZ4RDWnG.sq_GetVectorData(dYkkESS9Z7js0vu, 1); 
 if(tdTesEfBcnZ4RDWnG.sq_IsMyControlObject())
 {
 local s9BE0ipkIUvBK = sq_GetSkillLevel(tdTesEfBcnZ4RDWnG, 228); 
 local aWo89URqKl4WvI4OJmn = sq_GetLevelData(tdTesEfBcnZ4RDWnG, 228, 4, s9BE0ipkIUvBK); 
 local PcdFu2SfFST7mkfZnP = sq_GetUniformVelocity(tdTesEfBcnZ4RDWnG.sq_GetBonusRateWithPassive(228, 228, 0, 1.0),
 tdTesEfBcnZ4RDWnG.sq_GetBonusRateWithPassive(228, 228, 1, 1.0),
 ga4Hzk93k2mzKL7T, aWo89URqKl4WvI4OJmn); 
 local _W2pcnjDRd_KNfpBIyvL6Vyg = sq_GetUniformVelocity(sq_GetLevelData(tdTesEfBcnZ4RDWnG, 228, 2, s9BE0ipkIUvBK),
 sq_GetLevelData(tdTesEfBcnZ4RDWnG, 228, 3, s9BE0ipkIUvBK), ga4Hzk93k2mzKL7T, aWo89URqKl4WvI4OJmn); 
 tdTesEfBcnZ4RDWnG.sq_StartWrite();
 tdTesEfBcnZ4RDWnG.sq_WriteDword(228); 
 tdTesEfBcnZ4RDWnG.sq_WriteDword(PcdFu2SfFST7mkfZnP);
 tdTesEfBcnZ4RDWnG.sq_WriteDword(_W2pcnjDRd_KNfpBIyvL6Vyg);
 tdTesEfBcnZ4RDWnG.sq_WriteDword(sq_GetLevelData(tdTesEfBcnZ4RDWnG, 228, 5, s9BE0ipkIUvBK)); 
 tdTesEfBcnZ4RDWnG.sq_WriteDword(sq_GetLevelData(tdTesEfBcnZ4RDWnG, 228, 6, s9BE0ipkIUvBK)); 
 tdTesEfBcnZ4RDWnG.sq_WriteDword(sq_GetLevelData(tdTesEfBcnZ4RDWnG, 228, 7, s9BE0ipkIUvBK)); 
 tdTesEfBcnZ4RDWnG.sq_WriteDword(sq_GetLevelData(tdTesEfBcnZ4RDWnG, 228, 8, s9BE0ipkIUvBK)); 
 sq_SendCreatePassiveObjectPacketPos(tdTesEfBcnZ4RDWnG, 24373, 0, tdTesEfBcnZ4RDWnG.getXPos(), tdTesEfBcnZ4RDWnG.getYPos(), 0);
 sq_flashScreen(tdTesEfBcnZ4RDWnG, 50, 100, 50, 200, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 }
 RemoveAllFlash(tdTesEfBcnZ4RDWnG); 
 sq_SetMyShake(tdTesEfBcnZ4RDWnG, 5, 250);
 break;
 }
} ;

function onProcCon_fighter_nenofbrilliance(MLojvncWu1FIed)
{
 if(!MLojvncWu1FIed) return;
 local kq5eKpu40HLt4A = MLojvncWu1FIed.getSkillSubState(); 
 if(kq5eKpu40HLt4A == 1)
 if(!MLojvncWu1FIed.isDownSkillLastKey()) 
 {
 MLojvncWu1FIed.sq_IntVectClear();
 MLojvncWu1FIed.sq_IntVectPush(kq5eKpu40HLt4A + 1); 
 MLojvncWu1FIed.sq_IntVectPush(MLojvncWu1FIed.sq_GetStateTimer()); 
 MLojvncWu1FIed.sq_AddSetStatePacket(228, STATE_PRIORITY_USER, true); 
 }
} ;

 
function onProc_fighter_nenofbrilliance(P3OTcPbQ9GiIbmp35bg)
{
 if(!P3OTcPbQ9GiIbmp35bg) return;
 local dNUQ6E8xTOltOpjnHAB0U__F = P3OTcPbQ9GiIbmp35bg.getSkillSubState(); 
 switch(dNUQ6E8xTOltOpjnHAB0U__F)
 {
 case 0:
 local vCGwUveitgOg7bZm = P3OTcPbQ9GiIbmp35bg.getCurrentAnimation(); 
 if(sq_GetAnimationFrameIndex(vCGwUveitgOg7bZm) < 6)return;
 local Bls2Mr9Syd = sq_GetCurrentTime(vCGwUveitgOg7bZm) - vCGwUveitgOg7bZm.getDelaySum(0, 5); 
 local xpyML8IOspNwuNzVO9 = vCGwUveitgOg7bZm.getDelaySum(6, 10); 
 local a4kR3blhkITjkqRXV9Pv = sq_GetUniformVelocity(0, 200, Bls2Mr9Syd, xpyML8IOspNwuNzVO9); 
 sq_setCurrentAxisPos(P3OTcPbQ9GiIbmp35bg, 2, a4kR3blhkITjkqRXV9Pv); 
 break;
 case 1:
 local vCGwUveitgOg7bZm = P3OTcPbQ9GiIbmp35bg.sq_GetCurrentAni(); 
 if(sq_IsEnd(vCGwUveitgOg7bZm))
 {
 sq_Rewind(vCGwUveitgOg7bZm); 
 sq_SetMyShake(P3OTcPbQ9GiIbmp35bg, 1, vCGwUveitgOg7bZm.getDelaySum(false)); 
 }
 local W0T4bFMTOdXeX4ifaVjeJZ0 = P3OTcPbQ9GiIbmp35bg.getVar("aniobj").get_obj_vector(0); 
 if(W0T4bFMTOdXeX4ifaVjeJZ0)
 {
 local BuNo7yWqbLl = sq_GetCurrentAnimation(W0T4bFMTOdXeX4ifaVjeJZ0);
 if(sq_IsEnd(BuNo7yWqbLl)) sq_Rewind(BuNo7yWqbLl); 
 }
 break;
 }
} ;

 
function onEndCurrentAni_fighter_nenofbrilliance(GPaTQE5hQTz_YuU5pfh6Ke)
{
 if(!GPaTQE5hQTz_YuU5pfh6Ke) return;
 if(!GPaTQE5hQTz_YuU5pfh6Ke.sq_IsMyControlObject()) return;
 local U3ud3E9ROx8StB2nG = GPaTQE5hQTz_YuU5pfh6Ke.getSkillSubState(); 
 switch(U3ud3E9ROx8StB2nG)
 {
 case 0:
 GPaTQE5hQTz_YuU5pfh6Ke.sq_IntVectClear();
 GPaTQE5hQTz_YuU5pfh6Ke.sq_IntVectPush(U3ud3E9ROx8StB2nG + 1); 
 GPaTQE5hQTz_YuU5pfh6Ke.sq_AddSetStatePacket(228, STATE_PRIORITY_USER, true); 
 break;
 case 1:
 break;
 case 2:
 GPaTQE5hQTz_YuU5pfh6Ke.sq_IntVectClear();
 GPaTQE5hQTz_YuU5pfh6Ke.sq_IntVectPush(1);
 GPaTQE5hQTz_YuU5pfh6Ke.sq_IntVectPush(0);
 GPaTQE5hQTz_YuU5pfh6Ke.sq_IntVectPush(0);
 GPaTQE5hQTz_YuU5pfh6Ke.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true); 
 break;
 }
} ;

function onEndState_fighter_nenofbrilliance(GPaTQE5hQTz_YuU5pfh6Ke, U3ud3E9ROx8StB2nG)
{
 if(!GPaTQE5hQTz_YuU5pfh6Ke) return;
 if(U3ud3E9ROx8StB2nG != 228)
 RemoveAllFlash(GPaTQE5hQTz_YuU5pfh6Ke); 
 RemoveAllAni(GPaTQE5hQTz_YuU5pfh6Ke); 
} ;


