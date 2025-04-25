
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_swordman_bladephantomex(uFPW55kl1uKc)
{
 if(!uFPW55kl1uKc) return false; 
 local mLYBIhDJ3ErccxoBV7i0tO = sq_GetIntData(uFPW55kl1uKc, 240, 2); 
 if(uFPW55kl1uKc.getZPos() > mLYBIhDJ3ErccxoBV7i0tO) 
 return false;
 local mcnQak3sSvuFfsN6mFd3q = uFPW55kl1uKc.sq_IsUseSkill(240); 
 if(mcnQak3sSvuFfsN6mFd3q) 
 {
 
 uFPW55kl1uKc.sq_IntVectClear();
 if(uFPW55kl1uKc.sq_GetState() == STATE_JUMP && uFPW55kl1uKc.getZPos() > 0) 
 uFPW55kl1uKc.sq_IntVectPush(1); 
 else
 uFPW55kl1uKc.sq_IntVectPush(0); 
 uFPW55kl1uKc.sq_AddSetStatePacket(240, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_swordman_bladephantomex(JM8H4uzkC2sc8UKfL7)
{
 if(!JM8H4uzkC2sc8UKfL7) return false; 
 local CSDeDFugOHJaOjHj1gt = JM8H4uzkC2sc8UKfL7.sq_GetState(); 
 if(CSDeDFugOHJaOjHj1gt == STATE_STAND || CSDeDFugOHJaOjHj1gt == STATE_JUMP) 
 return true; 
 if(CSDeDFugOHJaOjHj1gt == STATE_ATTACK) 
 {
 return JM8H4uzkC2sc8UKfL7.sq_IsCommandEnable(240); 
 }
 return true; 
} ;

 
function onSetState_swordman_bladephantomex(slsWw__ol53HVwr, obhXkplykqIKXfiAF34l, J9fVqmU33AHxBBTZ0BX, y91o8g5Ha1)
{
 if(!slsWw__ol53HVwr) return; 
 local uD4df2NuADegjZfNkTLF7qk = slsWw__ol53HVwr.sq_GetVectorData(J9fVqmU33AHxBBTZ0BX, 0); 
 slsWw__ol53HVwr.setSkillSubState(uD4df2NuADegjZfNkTLF7qk); 
 slsWw__ol53HVwr.sq_StopMove(); 
 slsWw__ol53HVwr.sq_ZStop(); 
 slsWw__ol53HVwr.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 switch(uD4df2NuADegjZfNkTLF7qk)
 {
 case 0: 
 slsWw__ol53HVwr.sq_PlaySound("SM_BLADE_PHANTOM_01"); 
 slsWw__ol53HVwr.sq_SetCurrentAnimation(156); 
 
 sq_CreateDrawOnlyObject(slsWw__ol53HVwr, "character/swordman/effect/animation/bladephantomex/bladephantomex_cast_floor.ani", ENUM_DRAWLAYER_BOTTOM, true);
 break;
 case 1: 
 slsWw__ol53HVwr.sq_SetCurrentAnimation(157); 
 RemoveAllFlash(slsWw__ol53HVwr); 
 
 if(slsWw__ol53HVwr.sq_IsMyControlObject())
 {
 local O84FFxLA2LOOZQuJ2 = sq_flashScreen(slsWw__ol53HVwr, slsWw__ol53HVwr.sq_GetDelaySum(), 999990, 0, 120, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 slsWw__ol53HVwr.getVar("flashobj").clear_obj_vector(); 
 slsWw__ol53HVwr.getVar("flashobj").push_obj_vector(O84FFxLA2LOOZQuJ2); 
 }
 local pyXDEjDkYqltSNanOyNq = slsWw__ol53HVwr.sq_GetVectorData(J9fVqmU33AHxBBTZ0BX, 1); 
 if(pyXDEjDkYqltSNanOyNq != -1)
 {
 
 sq_CreateDrawOnlyObject(slsWw__ol53HVwr, "character/swordman/effect/animation/bladephantomex/bladephantomex_jump_dust.ani", ENUM_DRAWLAYER_NORMAL, true);
 local fXldnqY4Kg1Ak_wEL = slsWw__ol53HVwr.getXPos(); 
 local O1dJIiG6SgsL0ZZeX = slsWw__ol53HVwr.getYPos(); 
 local bj3y6dGFkxaN8VH = slsWw__ol53HVwr.getDirection(); 
 local j88jewnkjiAMf9Lt4Jql = slsWw__ol53HVwr.sq_findNearLinearMovableXPos(
 sq_GetDistancePos(fXldnqY4Kg1Ak_wEL, slsWw__ol53HVwr.getDirection(), pyXDEjDkYqltSNanOyNq), O1dJIiG6SgsL0ZZeX, fXldnqY4Kg1Ak_wEL, O1dJIiG6SgsL0ZZeX, 10); 
 local cV_1CKpFFyh2iQA4x = sq_GetIntData(slsWw__ol53HVwr, 240, 0); 
 local gLEHHRHhiR5Z = sq_ToRadian(
 sq_ToDegree(
 sq_Atan2(sq_Abs(fXldnqY4Kg1Ak_wEL - j88jewnkjiAMf9Lt4Jql).tofloat(), cV_1CKpFFyh2iQA4x.tofloat())
 )
 ); 
 
 local GfuXr8hosyYT2a = sq_CreateAnimation("", "character/swordman/effect/animation/bladephantomex/bladephantomex_jump_pass01.ani");
 GfuXr8hosyYT2a.addLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/bladephantomex/bladephantomex_jump_pass02.ani"), true); 
 local yQ8qQUCQKW6fecmIIZBTY1Uv = sq_CreatePooledObject(GfuXr8hosyYT2a, true);
 yQ8qQUCQKW6fecmIIZBTY1Uv.setCurrentPos(fXldnqY4Kg1Ak_wEL, O1dJIiG6SgsL0ZZeX, slsWw__ol53HVwr.getZPos()); 
 sq_SetCurrentDirection(yQ8qQUCQKW6fecmIIZBTY1Uv, bj3y6dGFkxaN8VH); 
 yQ8qQUCQKW6fecmIIZBTY1Uv = sq_SetEnumDrawLayer(yQ8qQUCQKW6fecmIIZBTY1Uv, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(slsWw__ol53HVwr, yQ8qQUCQKW6fecmIIZBTY1Uv, OBJECTTYPE_DRAWONLY, false); 
 if(pyXDEjDkYqltSNanOyNq != 0)
 {
 if(pyXDEjDkYqltSNanOyNq < 0) gLEHHRHhiR5Z /= -1; 
 sq_SetCustomRotate(yQ8qQUCQKW6fecmIIZBTY1Uv, gLEHHRHhiR5Z / -1); 
 }
 sq_setCurrentAxisPos(slsWw__ol53HVwr, 0, j88jewnkjiAMf9Lt4Jql); 
 sq_setCurrentAxisPos(slsWw__ol53HVwr, 2, cV_1CKpFFyh2iQA4x); 
 slsWw__ol53HVwr.getVar().clear_vector(); 
 slsWw__ol53HVwr.getVar().push_vector(fXldnqY4Kg1Ak_wEL); 
 }
 
 sq_CreateDrawOnlyObject(slsWw__ol53HVwr, "character/swordman/effect/animation/bladephantomex/bladephantomex_jump_phantom05.ani", ENUM_DRAWLAYER_NORMAL, true);
 break;
 case 2: 
 slsWw__ol53HVwr.sq_SetCurrentAnimation(158); 
 slsWw__ol53HVwr.sq_PlaySound("SM_BLADE_PHANTOM_02"); 
 break;
 }
} ;

 
function onKeyFrameFlag_swordman_bladephantomex(AcF2yrW5Icy7Oi, otyGuZBljNaPyTRZ4d)
{
 if(!AcF2yrW5Icy7Oi) return false;
 local JTnWVAkrIZ = AcF2yrW5Icy7Oi.getSkillSubState(); 
 switch(JTnWVAkrIZ)
 {
 case 2: 
 if(otyGuZBljNaPyTRZ4d == 1)
 {
 local mPMGuajOEhA2f4Cxsk = sq_GetSkillLevel(AcF2yrW5Icy7Oi, 240); 
 local IqSTxVERp4 = AcF2yrW5Icy7Oi.sq_GetLevelData(240, 0, mPMGuajOEhA2f4Cxsk); 
 if(AcF2yrW5Icy7Oi.sq_IsMyControlObject())
 {
 
 AcF2yrW5Icy7Oi.sq_StartWrite();
 AcF2yrW5Icy7Oi.sq_WriteDword(240); 
 AcF2yrW5Icy7Oi.sq_WriteDword(IqSTxVERp4); 
 AcF2yrW5Icy7Oi.sq_WriteDword(AcF2yrW5Icy7Oi.sq_GetBonusRateWithPassive(240, 240, 1, 1.0)); 
 AcF2yrW5Icy7Oi.sq_WriteDword(AcF2yrW5Icy7Oi.sq_GetBonusRateWithPassive(240, 240, 2, 1.0)); 
 sq_SendCreatePassiveObjectPacketPos(AcF2yrW5Icy7Oi, 24370, 0, AcF2yrW5Icy7Oi.getXPos(), AcF2yrW5Icy7Oi.getYPos(), 0);
 }
 
 local IqSTxVERp4 = IqSTxVERp4.tofloat() / 100.0; 
 local fdA4xZYO6TFPcxxEpAZ = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bladephantomex/bladephantomex_crack_floor_main.ani"); 
 fdA4xZYO6TFPcxxEpAZ.setImageRateFromOriginal(IqSTxVERp4, IqSTxVERp4); 
 fdA4xZYO6TFPcxxEpAZ.setAutoLayerWorkAnimationAddSizeRate(IqSTxVERp4); 
 local GwH0_kak7pG = sq_CreatePooledObject(fdA4xZYO6TFPcxxEpAZ, true); 
 GwH0_kak7pG.setCurrentPos(AcF2yrW5Icy7Oi.getXPos(), AcF2yrW5Icy7Oi.getYPos(), 0); 
 GwH0_kak7pG = sq_SetEnumDrawLayer(GwH0_kak7pG, ENUM_DRAWLAYER_BOTTOM); 
 sq_SetCurrentDirection(GwH0_kak7pG, AcF2yrW5Icy7Oi.getDirection()); 
 sq_AddObject(AcF2yrW5Icy7Oi, GwH0_kak7pG, OBJECTTYPE_DRAWONLY, false); 
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_swordman_bladephantomex(Hqh2a69C7skkJMVek)
{
 if(!Hqh2a69C7skkJMVek) return;
 if(!Hqh2a69C7skkJMVek.sq_IsMyControlObject())return;
 local JfcwilXMVHW = Hqh2a69C7skkJMVek.getSkillSubState(); 
 switch(JfcwilXMVHW)
 {
 case 0: 
 Hqh2a69C7skkJMVek.sq_IntVectClear(); 
 Hqh2a69C7skkJMVek.sq_IntVectPush(1); 
 
 local eb9Z8aUXbb2 = 0; 
 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && Hqh2a69C7skkJMVek.getDirection() == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && Hqh2a69C7skkJMVek.getDirection() == ENUM_DIRECTION_RIGHT)
 eb9Z8aUXbb2 = sq_GetIntData(Hqh2a69C7skkJMVek, 240, 1); 
 
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && Hqh2a69C7skkJMVek.getDirection() == ENUM_DIRECTION_RIGHT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && Hqh2a69C7skkJMVek.getDirection() == ENUM_DIRECTION_LEFT)
 eb9Z8aUXbb2 = sq_GetIntData(Hqh2a69C7skkJMVek, 240, 1) / -1; 
 Hqh2a69C7skkJMVek.sq_IntVectPush(eb9Z8aUXbb2); 
 Hqh2a69C7skkJMVek.sq_AddSetStatePacket(240, STATE_PRIORITY_USER, true); 
 break;
 case 1: 
 Hqh2a69C7skkJMVek.sq_IntVectClear(); 
 Hqh2a69C7skkJMVek.sq_IntVectPush(2); 
 Hqh2a69C7skkJMVek.sq_AddSetStatePacket(240, STATE_PRIORITY_USER, true); 
 break;
 case 2: 
 Hqh2a69C7skkJMVek.sq_IntVectClear();
 Hqh2a69C7skkJMVek.sq_IntVectPush(1);
 Hqh2a69C7skkJMVek.sq_IntVectPush(0);
 Hqh2a69C7skkJMVek.sq_IntVectPush(0);
 Hqh2a69C7skkJMVek.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true); 
 break;
 }
} ;

 
function getScrollBasisPos_swordman_bladephantomex(msHupiwX08VkqwCVdv0cjZ)
{
 if(!msHupiwX08VkqwCVdv0cjZ) return false;
 if(msHupiwX08VkqwCVdv0cjZ.sq_IsMyControlObject())
 {
 if(msHupiwX08VkqwCVdv0cjZ.getVar().size_vector() <= 0)return false;
 local wwAKtcMyMnzJQQTEHc60UVz = msHupiwX08VkqwCVdv0cjZ.getSkillSubState(); 
 if(wwAKtcMyMnzJQQTEHc60UVz == 1)
 {
 local R0PvQi1jWzF4QjBh = msHupiwX08VkqwCVdv0cjZ.sq_GetCurrentAni(); 
 local XNZIsssPXw = sq_GetCurrentTime(R0PvQi1jWzF4QjBh); 
 local jZe6OuirDl = 200; 
 local Av2y6FQ2gnOMGNWDrUgF = sq_GetUniformVelocity(
 msHupiwX08VkqwCVdv0cjZ.getVar().get_vector(0),
 sq_GetDistancePos(msHupiwX08VkqwCVdv0cjZ.getXPos(), msHupiwX08VkqwCVdv0cjZ.getDirection(), 300), XNZIsssPXw, jZe6OuirDl); 
 msHupiwX08VkqwCVdv0cjZ.sq_SetCameraScrollPosition(Av2y6FQ2gnOMGNWDrUgF, msHupiwX08VkqwCVdv0cjZ.getYPos(), 0);
 return true;
 }
 else if(wwAKtcMyMnzJQQTEHc60UVz == 2)
 {
 msHupiwX08VkqwCVdv0cjZ.sq_SetCameraScrollPosition(sq_GetDistancePos(msHupiwX08VkqwCVdv0cjZ.getXPos(), msHupiwX08VkqwCVdv0cjZ.getDirection(), 300), msHupiwX08VkqwCVdv0cjZ.getYPos(), 0);
 return true;
 }
 }
 return false;
} ;

function onEndState_swordman_bladephantomex(T0kyhqPAlN, FoZiNQd0R18I)
{
 if(!T0kyhqPAlN) return;
 if(FoZiNQd0R18I != 240)
 {
 T0kyhqPAlN.getVar("flashobj").clear_obj_vector(); 
 }
} ;


