
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_fighter_lightdragonthirteen(vMND7WYxhzo8Q)
{
 if(!vMND7WYxhzo8Q) return false; 
 local E0pWWZvNq7yal0 = vMND7WYxhzo8Q.sq_IsUseSkill(225); 
 if(E0pWWZvNq7yal0) 
 {
 local ZDqrKV8mtWZJI = vMND7WYxhzo8Q.getZPos(); 
 local kQCzhytH2YgOl = sq_GetLevelData(vMND7WYxhzo8Q, 225, 2, sq_GetSkillLevel(vMND7WYxhzo8Q, 225)); 
 vMND7WYxhzo8Q.sq_IntVectClear();
 switch(vMND7WYxhzo8Q.sq_GetState())
 {
 case STATE_JUMP:
 case STATE_JUMP_ATTACK:
 if(ZDqrKV8mtWZJI < kQCzhytH2YgOl) return false; 
 vMND7WYxhzo8Q.sq_IntVectPush(2); 
 break;
 default:
 vMND7WYxhzo8Q.sq_IntVectPush(0); 
 break;
 }
 vMND7WYxhzo8Q.sq_AddSetStatePacket(225, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_fighter_lightdragonthirteen(yqf_5DIzoyF8CzbPt1)
{
 if(!yqf_5DIzoyF8CzbPt1) return false; 
 local qkYSIn5dj9D_EEkEgzNIq = yqf_5DIzoyF8CzbPt1.sq_GetState(); 
 if(qkYSIn5dj9D_EEkEgzNIq == STATE_STAND) 
 return true; 
 if(qkYSIn5dj9D_EEkEgzNIq == STATE_ATTACK) 
 {
 return yqf_5DIzoyF8CzbPt1.sq_IsCommandEnable(225); 
 }
 return true; 
} ;

 
function onSetState_fighter_lightdragonthirteen(WTQDexrpJoclPMX1, bW_7e_9eMYmtoBT_Y, KIbeIkkOUZlNja, HmMWoaYjmtJY5bdLl2O4sM)
{
 if(!WTQDexrpJoclPMX1) return; 
 WTQDexrpJoclPMX1.sq_StopMove(); 
 WTQDexrpJoclPMX1.sq_ZStop(); 
 local VmIxpiA1ttgvd = WTQDexrpJoclPMX1.sq_GetVectorData(KIbeIkkOUZlNja, 0); 
 WTQDexrpJoclPMX1.setSkillSubState(VmIxpiA1ttgvd); 
 switch(VmIxpiA1ttgvd)
 {
 case 0: 
 WTQDexrpJoclPMX1.sq_SetCurrentAnimation(96);
 local cfBquNMKFswa10CPucF = WTQDexrpJoclPMX1.getCurrentAnimation(); 
 local r2EJs9JrEjI1_e3 = cfBquNMKFswa10CPucF.getDelaySum(false); 
 sq_StartDrawCastGauge(WTQDexrpJoclPMX1, r2EJs9JrEjI1_e3, true); 
 sq_CreateDrawOnlyObject(WTQDexrpJoclPMX1, "character/fighter/effect/animation/lightdragonthirteen/startdust_a.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 WTQDexrpJoclPMX1.getVar("time").clear_vector(); 
 break;
 case 1: 
 WTQDexrpJoclPMX1.sq_SetCurrentAnimation(97);
 sq_setCurrentAxisPos(WTQDexrpJoclPMX1, 2, 200); 
 break;
 case 2: 
 WTQDexrpJoclPMX1.sq_SetCurrentAnimation(98);
 WTQDexrpJoclPMX1.getVar("time").clear_vector(); 
 WTQDexrpJoclPMX1.getVar("time").push_vector(sq_GetObjectTime(WTQDexrpJoclPMX1)); 
 WTQDexrpJoclPMX1.getVar("time").push_vector(WTQDexrpJoclPMX1.getXPos()); 
 break;
 case 3: 
 WTQDexrpJoclPMX1.sq_SetCurrentAnimation(99);
 WTQDexrpJoclPMX1.getVar().clear_vector(); 
 WTQDexrpJoclPMX1.getVar().push_vector(WTQDexrpJoclPMX1.getXPos()); 
 WTQDexrpJoclPMX1.getVar().push_vector(WTQDexrpJoclPMX1.getZPos()); 
 
 WTQDexrpJoclPMX1.sq_AddStateLayerAnimation(1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/lightdragonthirteen/dragon_fire.ani"), 0, 0);
 if(WTQDexrpJoclPMX1.sq_IsMyControlObject())
 sq_flashScreen(WTQDexrpJoclPMX1, 0, 0, 240, 191, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 break;
 case 4: 
 WTQDexrpJoclPMX1.sq_SetCurrentAnimation(100);
 if(WTQDexrpJoclPMX1.sq_IsMyControlObject())
 {
 
 WTQDexrpJoclPMX1.sq_StartWrite();
 WTQDexrpJoclPMX1.sq_WriteDword(225); 
 WTQDexrpJoclPMX1.sq_WriteDword(2); 
 WTQDexrpJoclPMX1.sq_WriteDword(WTQDexrpJoclPMX1.sq_GetBonusRateWithPassive(225, 225, 1, 1.0)); 
 WTQDexrpJoclPMX1.sq_SendCreatePassiveObjectPacket(24373, 0, 0, 0, 0);
 sq_SetMyShake(WTQDexrpJoclPMX1, 5, 500);
 sq_flashScreen(WTQDexrpJoclPMX1, 50, 0, 50, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 }
 break;
 }
 WTQDexrpJoclPMX1.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onKeyFrameFlag_fighter_lightdragonthirteen(jcEMinG8qVeSqLyFUOGyT8hS, xDn5Yabq5pSPQXDc)
{
 if(!jcEMinG8qVeSqLyFUOGyT8hS) return false;
 local wzilI1noMPn0aq = jcEMinG8qVeSqLyFUOGyT8hS.getSkillSubState(); 
 if(wzilI1noMPn0aq == 2 && xDn5Yabq5pSPQXDc == 1) 
 {
 if(jcEMinG8qVeSqLyFUOGyT8hS.sq_IsMyControlObject())
 {
 sq_flashScreen(jcEMinG8qVeSqLyFUOGyT8hS, 50, 0, 50, 204, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 local LmZDy3vEYQ5 = jcEMinG8qVeSqLyFUOGyT8hS.sq_GetBonusRateWithPassive(225, 225, 0, 1.0); 
 local Q45H1Aa6BxMIS_FUWM = jcEMinG8qVeSqLyFUOGyT8hS.getZPos()-10; 
 local G8YZ10_yivKE = 160; 
 
 for(local Ul3tXCvu_38dWe0yuJ1Uja = 0; Ul3tXCvu_38dWe0yuJ1Uja < 5; Ul3tXCvu_38dWe0yuJ1Uja++) 
 {
 local Le3H1c3Q6Z65pBnD = sq_getRandom(50, 400); 
 local mCD4vvkG__0IJBki1r2H = sq_getRandom(-50, 50); 
 local mDBx2xx7OpO = sq_ToDegree(
 sq_Atan2(Q45H1Aa6BxMIS_FUWM.tofloat(), Le3H1c3Q6Z65pBnD.tofloat())
 ); 
 jcEMinG8qVeSqLyFUOGyT8hS.sq_StartWrite();
 jcEMinG8qVeSqLyFUOGyT8hS.sq_WriteDword(225); 
 jcEMinG8qVeSqLyFUOGyT8hS.sq_WriteDword(1); 
 jcEMinG8qVeSqLyFUOGyT8hS.sq_WriteDword(LmZDy3vEYQ5); 
 jcEMinG8qVeSqLyFUOGyT8hS.sq_WriteDword(Le3H1c3Q6Z65pBnD); 
 jcEMinG8qVeSqLyFUOGyT8hS.sq_WriteDword(mCD4vvkG__0IJBki1r2H); 
 jcEMinG8qVeSqLyFUOGyT8hS.sq_WriteDword(
 (G8YZ10_yivKE * sq_SinTable(mDBx2xx7OpO.tointeger())).tointeger()
 ); 
 jcEMinG8qVeSqLyFUOGyT8hS.sq_WriteFloat(mDBx2xx7OpO); 
 jcEMinG8qVeSqLyFUOGyT8hS.sq_SendCreatePassiveObjectPacket(24373, 0, 50, 0, -10);
 }
 }
 }
 return true;
} ;

 
function onProc_fighter_lightdragonthirteen(tdTesEfBcnZ4RDWnG)
{
 if(!tdTesEfBcnZ4RDWnG) return;
 local _xw5JfTGXbV0IkscsISRQKmr = tdTesEfBcnZ4RDWnG.getSkillSubState(); 
 switch(_xw5JfTGXbV0IkscsISRQKmr)
 {
 case 3:
 local dYkkESS9Z7js0vu = tdTesEfBcnZ4RDWnG.getCurrentAnimation();
 local ROK0xKlP8kCGqh9VNP = sq_GetCurrentTime(dYkkESS9Z7js0vu); 
 local SrdoDwKHpV9aqx519O = dYkkESS9Z7js0vu.getDelaySum(false); 
 local ZgrPpwKNMxMxf = tdTesEfBcnZ4RDWnG.getVar(); 
 local Bmswj5JT28FM6A = ZgrPpwKNMxMxf.get_vector(0);
 if(Bmswj5JT28FM6A != 0)
 {
 local tg0rDLecx36VrK = sq_GetDistancePos(Bmswj5JT28FM6A,
 tdTesEfBcnZ4RDWnG.getDirection(),
 sq_GetUniformVelocity(0, 220, ROK0xKlP8kCGqh9VNP, SrdoDwKHpV9aqx519O));
 if(tdTesEfBcnZ4RDWnG.isMovablePos(tg0rDLecx36VrK, tdTesEfBcnZ4RDWnG.getYPos())) 
 sq_setCurrentAxisPos(tdTesEfBcnZ4RDWnG, 0, tg0rDLecx36VrK); 
 
 else
 ZgrPpwKNMxMxf.set_vector(0,0);
 }
 local klD2tCAJPRfrs4V = sq_GetUniformVelocity(ZgrPpwKNMxMxf.get_vector(1), 0, ROK0xKlP8kCGqh9VNP, SrdoDwKHpV9aqx519O);
 sq_setCurrentAxisPos(tdTesEfBcnZ4RDWnG, 2, klD2tCAJPRfrs4V); 
 break;
 }
} ;

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onEndCurrentAni_fighter_lightdragonthirteen(Hb3jaDhVgsf4BMWiPjeE6Fh)
{
 if(!Hb3jaDhVgsf4BMWiPjeE6Fh) return;
 if(!Hb3jaDhVgsf4BMWiPjeE6Fh.sq_IsMyControlObject()) return;
 local BnHBHCCLS52BYfY80fqUSZIq = Hb3jaDhVgsf4BMWiPjeE6Fh.getSkillSubState(); 
 if(BnHBHCCLS52BYfY80fqUSZIq != 4)
 {
 Hb3jaDhVgsf4BMWiPjeE6Fh.sq_IntVectClear();
 Hb3jaDhVgsf4BMWiPjeE6Fh.sq_IntVectPush(BnHBHCCLS52BYfY80fqUSZIq + 1); 
 Hb3jaDhVgsf4BMWiPjeE6Fh.sq_AddSetStatePacket(225, STATE_PRIORITY_USER, true); 
 }
 else
 Hb3jaDhVgsf4BMWiPjeE6Fh.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

 
function getScrollBasisPos_fighter_lightdragonthirteen(a1uekcVFVg5fSzNQ1H0W)
{
 if(!a1uekcVFVg5fSzNQ1H0W) return false;
 if(!a1uekcVFVg5fSzNQ1H0W.sq_IsMyControlObject()) return false;
 local jYhWl65XlLX7aIdZBwTqV = a1uekcVFVg5fSzNQ1H0W.getVar("time").get_vector(0);
 if(jYhWl65XlLX7aIdZBwTqV)
 {
 local YN_CTLd8jkRVLdKE_gJZxv = sq_GetObjectTime(a1uekcVFVg5fSzNQ1H0W) - jYhWl65XlLX7aIdZBwTqV; 
 local fkFWO5TdkJl4 = 150; 
 local YbztbalzcgH01swu = sq_GetDistancePos(a1uekcVFVg5fSzNQ1H0W.getVar("time").get_vector(1),
 a1uekcVFVg5fSzNQ1H0W.getDirection(),
 sq_GetUniformVelocity(0, 220, YN_CTLd8jkRVLdKE_gJZxv, fkFWO5TdkJl4)); 
 a1uekcVFVg5fSzNQ1H0W.sq_SetCameraScrollPosition(YbztbalzcgH01swu, a1uekcVFVg5fSzNQ1H0W.getYPos(), 0); 
 return true;
 }
 return false;
} ;
