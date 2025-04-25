
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_gunner_bursterbeamnew(M79WZ6Po87Wh_ewXh)
{
 if(!M79WZ6Po87Wh_ewXh) return false; 
 local KmIn77O8eYUVgTzl31AAH9Q = M79WZ6Po87Wh_ewXh.sq_IsUseSkill(235); 
 if(KmIn77O8eYUVgTzl31AAH9Q) 
 {
 M79WZ6Po87Wh_ewXh.sq_IntVectClear();
 M79WZ6Po87Wh_ewXh.sq_IntVectPush(0); 
 M79WZ6Po87Wh_ewXh.sq_AddSetStatePacket(235, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function checkCommandEnable_gunner_bursterbeamnew(M79WZ6Po87Wh_ewXh)
{
 if(!M79WZ6Po87Wh_ewXh) return false; 
 local KmIn77O8eYUVgTzl31AAH9Q = M79WZ6Po87Wh_ewXh.sq_GetState(); 
 if(KmIn77O8eYUVgTzl31AAH9Q == STATE_STAND) 
 return true; 
 if(KmIn77O8eYUVgTzl31AAH9Q == STATE_ATTACK) 
 {
 return M79WZ6Po87Wh_ewXh.sq_IsCommandEnable(235); 
 }
 return true; 
} ;

 
function onSetState_gunner_bursterbeamnew(PomHLuSi2C5hphwRso1UEy, A0X75mJE5L2SiTzCk1lH, bjQ4q6PWBPyjWZHN9YI, j0biTXMLgWYqj)
{
 if(!PomHLuSi2C5hphwRso1UEy) return; 
 PomHLuSi2C5hphwRso1UEy.sq_StopMove(); 
 PomHLuSi2C5hphwRso1UEy.sq_ZStop(); 
 local fQp2Vz6088D = PomHLuSi2C5hphwRso1UEy.sq_GetVectorData(bjQ4q6PWBPyjWZHN9YI, 0); 
 PomHLuSi2C5hphwRso1UEy.setSkillSubState(fQp2Vz6088D); 
 PomHLuSi2C5hphwRso1UEy.getVar().clear_vector(); 
 switch(fQp2Vz6088D)
 {
 case 0: 
 PomHLuSi2C5hphwRso1UEy.sq_SetCurrentAnimation(110); 
 break;
 case 1: 
 PomHLuSi2C5hphwRso1UEy.sq_SetCurrentAnimation(111); 
 
 sq_CreateDrawOnlyObject(PomHLuSi2C5hphwRso1UEy, "character/gunner/effect/animation/bursterbeamnew/bb2ndreadyeffa_00.ani", ENUM_DRAWLAYER_NORMAL, true);
 
 sq_setCurrentAxisPos(sq_CreateDrawOnlyObject(PomHLuSi2C5hphwRso1UEy, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bursterbeamnew/bb2ndatkafloor_dodge.ani", ENUM_DRAWLAYER_BOTTOM, true), 2, 0); 
 
 if(PomHLuSi2C5hphwRso1UEy.sq_IsMyControlObject())
 {
 PomHLuSi2C5hphwRso1UEy.sq_StartWrite();
 PomHLuSi2C5hphwRso1UEy.sq_WriteDword(235); 
 PomHLuSi2C5hphwRso1UEy.sq_WriteDword(1); 
 PomHLuSi2C5hphwRso1UEy.sq_SendCreatePassiveObjectPacket(24371, 0, 0, 0, 0); 
 }
 break;
 case 2: 
 PomHLuSi2C5hphwRso1UEy.sq_SetCurrentAnimation(112); 
 
 sq_CreateDrawOnlyObject(PomHLuSi2C5hphwRso1UEy, "character/gunner/effect/animation/bursterbeamnew/bb2ndreadyeffb_00.ani", ENUM_DRAWLAYER_NORMAL, true);
 
 sq_CreateDrawOnlyObject(PomHLuSi2C5hphwRso1UEy, "character/gunner/effect/animation/bursterbeamnew/bb2ndatkb_new04.ani", ENUM_DRAWLAYER_NORMAL, true);
 break;
 case 3: 
 PomHLuSi2C5hphwRso1UEy.sq_SetCurrentAnimation(113); 
 PomHLuSi2C5hphwRso1UEy.getVar().push_vector(PomHLuSi2C5hphwRso1UEy.getZPos()); 
 break;
 }
 
 switch(fQp2Vz6088D)
 {
 case 0:
 case 3:
 PomHLuSi2C5hphwRso1UEy.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 break;
 }
} ;

 
function onKeyFrameFlag_gunner_bursterbeamnew(GNwHN9o7zA, Sk6nYn81GrxbAV)
{
 if(!GNwHN9o7zA) return false;
 local kTbiDnTL6NDFvtTwaB = GNwHN9o7zA.getSkillSubState(); 
 switch(kTbiDnTL6NDFvtTwaB)
 {
 case 0:
 if(Sk6nYn81GrxbAV == 1)
 {
 
 sq_CreateDrawOnlyObject(GNwHN9o7zA, "character/gunner/effect/animation/bursterbeamnew/bb2ndready_dustback.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 sq_CreateDrawOnlyObject(GNwHN9o7zA, "character/gunner/effect/animation/bursterbeamnew/bb2ndready_dustfront.ani", ENUM_DRAWLAYER_NORMAL, true); 
 GNwHN9o7zA.getVar().push_vector(sq_GetCurrentTime(GNwHN9o7zA.getCurrentAnimation())); 
 GNwHN9o7zA.getVar().push_vector(GNwHN9o7zA.getZPos()); 
 sq_SetMyShake(GNwHN9o7zA, 1, 1280); 
 }
 break;
 case 1:
 if(Sk6nYn81GrxbAV == 1)
 {
 
 sq_setCurrentAxisPos(sq_CreateDrawOnlyObject(GNwHN9o7zA, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bursterbeamnew/bb2ndatkaeff_floor_a.ani", ENUM_DRAWLAYER_NORMAL, true), 2, GNwHN9o7zA.getZPos() + 40); 
 }
 break;
 case 2:
 switch(Sk6nYn81GrxbAV)
 {
 case 1:
 
 sq_AddDrawOnlyAniFromParent(GNwHN9o7zA, "character/gunner/effect/animation/bursterbeamnew/bb2ndatkb_boom_a.ani", -150, 0, 95);
 
 local M46uOO8uVKijlZhJYQeMA = sq_CreateAnimation("", "character/gunner/effect/animation/bursterbeamnew/bb2ndatkb_floor_dodge.ani"); 
 local T0QZDRGq19m = sq_CreatePooledObject(M46uOO8uVKijlZhJYQeMA, true); 
 sq_SetCurrentDirection(T0QZDRGq19m, GNwHN9o7zA.getDirection()); 
 T0QZDRGq19m.setCurrentPos(
 sq_GetDistancePos(GNwHN9o7zA.getXPos(),
 GNwHN9o7zA.getDirection(), -150),
 GNwHN9o7zA.getYPos() - 80,
 GNwHN9o7zA.getZPos()
 ); 
 T0QZDRGq19m = sq_SetEnumDrawLayer(T0QZDRGq19m, ENUM_DRAWLAYER_BOTTOM); 
 sq_AddObject(GNwHN9o7zA, T0QZDRGq19m, OBJECTTYPE_DRAWONLY, false); 
 
 local MxtgJQToO1JbpC6h_E8M_Xx5 = sq_AddDrawOnlyAniFromParent(GNwHN9o7zA, "character/gunner/effect/animation/bursterbeamnew/bb2ndatkb_bodyeff.ani", 100, 0, 180);
 local KVczDH7KzXVEuSEaldmw = MxtgJQToO1JbpC6h_E8M_Xx5.getCurrentAnimation(); 
 if(KVczDH7KzXVEuSEaldmw) sq_SetfRotateAngle(KVczDH7KzXVEuSEaldmw, 1.2566304); 
 GNwHN9o7zA.sq_SetCurrentAttackInfo(27); 
 GNwHN9o7zA.sq_SetCurrentAttackBonusRate(GNwHN9o7zA.sq_GetBonusRateWithPassive(235, 235, 0, 1.0)); 
 local TLvgqj1W_4 = sq_GetLevelData(GNwHN9o7zA, 235, 1, sq_GetSkillLevel(GNwHN9o7zA, 235)); 
 local uO0T9JBeOUK0wGPLvYnbVCRy = GNwHN9o7zA.getCurrentAnimation(); 
 local M4Wg6uzHVxn = uO0T9JBeOUK0wGPLvYnbVCRy.getDelaySum(4, 25); 
 GNwHN9o7zA.setTimeEvent(0, M4Wg6uzHVxn / (TLvgqj1W_4 - 1), TLvgqj1W_4 - 1, false); 
 break;
 case 2:
 if(GNwHN9o7zA.sq_IsMyControlObject())
 {
 sq_SetMyShake(GNwHN9o7zA, 2, 300); 
 sq_flashScreen(GNwHN9o7zA, 60, 60, 180, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 case 3:
 if(GNwHN9o7zA.sq_IsMyControlObject())
 {
 local MwRjdzfPKsWlmcBln4r5A = sq_GetDistancePos(GNwHN9o7zA.getXPos(), GNwHN9o7zA.getDirection(), 600); 
 local pSsHEjfeupw7nzC6mk = GNwHN9o7zA.getYPos(); 
 
 GNwHN9o7zA.sq_StartWrite();
 GNwHN9o7zA.sq_WriteDword(235); 
 GNwHN9o7zA.sq_WriteDword(2); 
 sq_SendCreatePassiveObjectPacketPos(GNwHN9o7zA, 24371, 0, MwRjdzfPKsWlmcBln4r5A, pSsHEjfeupw7nzC6mk, 0);
 
 GNwHN9o7zA.sq_StartWrite();
 GNwHN9o7zA.sq_WriteDword(235); 
 GNwHN9o7zA.sq_WriteDword(3); 
 GNwHN9o7zA.sq_WriteDword(GNwHN9o7zA.sq_GetBonusRateWithPassive(235, 235, 2, 1.0)); 
 sq_SendCreatePassiveObjectPacketPos(GNwHN9o7zA, 24371, 0, MwRjdzfPKsWlmcBln4r5A, pSsHEjfeupw7nzC6mk, 0);
 sq_SetMyShake(GNwHN9o7zA, 4, 300); 
 }
 break;
 case 4:
 sq_SetMyShake(GNwHN9o7zA, 7, 720); 
 break;
 }
 break;
 }
 return true;
} ;

 
function onProc_gunner_bursterbeamnew(OxJ176kStrwa1OykCytqdY)
{
 if(!OxJ176kStrwa1OykCytqdY) return;
 if(OxJ176kStrwa1OykCytqdY.getVar().size_vector() <= 0)return;
 local z6EYed4aCW6xmV8G7pH95 = OxJ176kStrwa1OykCytqdY.getSkillSubState(); 
 switch(z6EYed4aCW6xmV8G7pH95)
 {
 case 0: 
 local QoPmDKH9nlMOlVck = sq_GetCurrentAnimation(OxJ176kStrwa1OykCytqdY); 
 local cqXiAVtIvDl7J = sq_GetCurrentTime(QoPmDKH9nlMOlVck) - OxJ176kStrwa1OykCytqdY.getVar().get_vector(0); 
 local WOBEaVRWrcD2TcLzro = QoPmDKH9nlMOlVck.getDelaySum(4, 7); 
 local rh_w9DdcZy5d2ICz_vp = sq_GetAccel(0, 200, cqXiAVtIvDl7J, WOBEaVRWrcD2TcLzro, true); 
 sq_setCurrentAxisPos(OxJ176kStrwa1OykCytqdY, 2, OxJ176kStrwa1OykCytqdY.getVar().get_vector(1) + rh_w9DdcZy5d2ICz_vp); 
 break;
 case 3: 
 local QoPmDKH9nlMOlVck = sq_GetCurrentAnimation(OxJ176kStrwa1OykCytqdY); 
 local cqXiAVtIvDl7J = sq_GetCurrentTime(QoPmDKH9nlMOlVck); 
 local WOBEaVRWrcD2TcLzro = QoPmDKH9nlMOlVck.getDelaySum(0, 4); 
 local rh_w9DdcZy5d2ICz_vp = sq_GetUniformVelocity(OxJ176kStrwa1OykCytqdY.getVar().get_vector(0), 0, cqXiAVtIvDl7J, WOBEaVRWrcD2TcLzro); 
 sq_setCurrentAxisPos(OxJ176kStrwa1OykCytqdY, 2, rh_w9DdcZy5d2ICz_vp); 
 break;
 }
} ;

 
function onEndCurrentAni_gunner_bursterbeamnew(wKYx5kxP2FqaU6yXA)
{
 if(!wKYx5kxP2FqaU6yXA) return;
 if(!wKYx5kxP2FqaU6yXA.sq_IsMyControlObject()) return;
 local Uje4NvI7x17 = wKYx5kxP2FqaU6yXA.getSkillSubState(); 
 if(Uje4NvI7x17!=3)
 {
 wKYx5kxP2FqaU6yXA.sq_IntVectClear();
 wKYx5kxP2FqaU6yXA.sq_IntVectPush(Uje4NvI7x17+1); 
 wKYx5kxP2FqaU6yXA.sq_AddSetStatePacket(235, STATE_PRIORITY_USER, true); 
 }else
 wKYx5kxP2FqaU6yXA.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

 
function onTimeEvent_gunner_bursterbeamnew(wKYx5kxP2FqaU6yXA, Uje4NvI7x17, FFhuL4ARMUe7FNEgFKGxi4Y)
{
 if(!wKYx5kxP2FqaU6yXA) return false;
 switch(Uje4NvI7x17)
 {
 case 0:
 wKYx5kxP2FqaU6yXA.resetHitObjectList(); 
 break;
 }
 return false;
} ;

 
function getScrollBasisPos_gunner_bursterbeamnew(bsLyeq0QmKZTzWW)
{
 if(!bsLyeq0QmKZTzWW) return false;
 if(bsLyeq0QmKZTzWW.sq_IsMyControlObject())
 {
 local ebjhZEeMs1Dq = bsLyeq0QmKZTzWW.getSkillSubState(); 
 if(ebjhZEeMs1Dq > 0 && ebjhZEeMs1Dq < 3) 
 {
 local vOHDcvcNwxefI = (ebjhZEeMs1Dq == 1)? bsLyeq0QmKZTzWW.sq_GetStateTimer():200; 
 local ZHc1pFt2MPNxH8ZCq = sq_GetDistancePos(bsLyeq0QmKZTzWW.getXPos(), bsLyeq0QmKZTzWW.getDirection(), sq_GetUniformVelocity(0, 250, vOHDcvcNwxefI, 200)); 
 bsLyeq0QmKZTzWW.sq_SetCameraScrollPosition(ZHc1pFt2MPNxH8ZCq, bsLyeq0QmKZTzWW.getYPos(), 0); 
 return true; 
 }
 else if(ebjhZEeMs1Dq == 3) 
 {
 local vOHDcvcNwxefI = bsLyeq0QmKZTzWW.sq_GetStateTimer(); 
 local ZHc1pFt2MPNxH8ZCq = sq_GetDistancePos(bsLyeq0QmKZTzWW.getXPos(), bsLyeq0QmKZTzWW.getDirection(), sq_GetUniformVelocity(250, 0, vOHDcvcNwxefI, 200)); 
 bsLyeq0QmKZTzWW.sq_SetCameraScrollPosition(ZHc1pFt2MPNxH8ZCq, bsLyeq0QmKZTzWW.getYPos(), 0); 
 return true; 
 }
 }
 return false;
} ;

