
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_swordman_bloodboom(Hqh2a69C7skkJMVek)
{
 if(!Hqh2a69C7skkJMVek) return false; 
 
 if(Hqh2a69C7skkJMVek.getHp() < Hqh2a69C7skkJMVek.getHpMax() / 100.0 * Hqh2a69C7skkJMVek.sq_GetIntData(229, 0))
 {
 Hqh2a69C7skkJMVek.startCantUseSkillWarning(); 
 if(Hqh2a69C7skkJMVek.isMessage()) 
 sq_AddMessage(3599);
 return false;
 }
 local JfcwilXMVHW = Hqh2a69C7skkJMVek.sq_IsUseSkill(229); 
 if(JfcwilXMVHW) 
 {
 Hqh2a69C7skkJMVek.sq_AddSetStatePacket(229, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;


 
function checkCommandEnable_swordman_bloodboom(msHupiwX08VkqwCVdv0cjZ)
{
 if(!msHupiwX08VkqwCVdv0cjZ) return false; 
 local wwAKtcMyMnzJQQTEHc60UVz = msHupiwX08VkqwCVdv0cjZ.sq_GetState(); 
 if(wwAKtcMyMnzJQQTEHc60UVz == STATE_STAND) 
 return true; 
 if(wwAKtcMyMnzJQQTEHc60UVz == STATE_ATTACK) 
 {
 return msHupiwX08VkqwCVdv0cjZ.sq_IsCommandEnable(229); 
 }
 return true; 
} ;



 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onSetState_swordman_bloodboom(msHupiwX08VkqwCVdv0cjZ, wwAKtcMyMnzJQQTEHc60UVz, R0PvQi1jWzF4QjBh, XNZIsssPXw)
{
 if(!msHupiwX08VkqwCVdv0cjZ) return; 
 local jZe6OuirDl = msHupiwX08VkqwCVdv0cjZ.getHpMax(); 
 local Av2y6FQ2gnOMGNWDrUgF = msHupiwX08VkqwCVdv0cjZ.getHp(); 
 local y06PiIdp8PTQeidT6yn9 = sq_GetSkillLevel(msHupiwX08VkqwCVdv0cjZ, 229); 
 local HzEXh87c4nfU_QvVbH6rPy = msHupiwX08VkqwCVdv0cjZ.sq_GetLevelData(229, 0, y06PiIdp8PTQeidT6yn9); 
 msHupiwX08VkqwCVdv0cjZ.setHp((Av2y6FQ2gnOMGNWDrUgF - jZe6OuirDl / 100.0 * HzEXh87c4nfU_QvVbH6rPy).tointeger(), null, true); 
 
 local rhWUt77jJTHpncHZnyH4qu =
 (jZe6OuirDl - Av2y6FQ2gnOMGNWDrUgF) / (jZe6OuirDl / 100.0).tointeger() *
 msHupiwX08VkqwCVdv0cjZ.sq_GetLevelData(229, 7, y06PiIdp8PTQeidT6yn9); 
 msHupiwX08VkqwCVdv0cjZ.getVar().clear_vector(); 
 msHupiwX08VkqwCVdv0cjZ.getVar().push_vector(rhWUt77jJTHpncHZnyH4qu);
 msHupiwX08VkqwCVdv0cjZ.sq_StopMove(); 
 msHupiwX08VkqwCVdv0cjZ.sq_PlaySound("SM_BLOODBOOM_01"); 
 msHupiwX08VkqwCVdv0cjZ.sq_SetCurrentAnimation(122); 
 msHupiwX08VkqwCVdv0cjZ.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onKeyFrameFlag_swordman_bloodboom(CJ11j_OSnwTANUitYCHx, v7cJR8fQve0)
{
 if(!CJ11j_OSnwTANUitYCHx) return false;
 if(v7cJR8fQve0 == 1)
 {
 if(CJ11j_OSnwTANUitYCHx.sq_IsMyControlObject())
 {
 local Sx_Gr8sYIOQ8QO1_zixs1Ql = sq_GetSkillLevel(CJ11j_OSnwTANUitYCHx, 229); 
 CJ11j_OSnwTANUitYCHx.sq_StartWrite();
 CJ11j_OSnwTANUitYCHx.sq_WriteDword(229); 
 CJ11j_OSnwTANUitYCHx.sq_WriteDword(CJ11j_OSnwTANUitYCHx.sq_GetIntData(229, 1)); 
 CJ11j_OSnwTANUitYCHx.sq_WriteDword(CJ11j_OSnwTANUitYCHx.sq_GetBonusRateWithPassive(229, 229, 1, 1.0)); 
 
 CJ11j_OSnwTANUitYCHx.sq_WriteDword(CJ11j_OSnwTANUitYCHx.sq_GetLevelData(229, 6, Sx_Gr8sYIOQ8QO1_zixs1Ql));
 
 CJ11j_OSnwTANUitYCHx.sq_WriteDword(CJ11j_OSnwTANUitYCHx.getVar().get_vector(0));
 
 if(sq_GetSkillLevel(CJ11j_OSnwTANUitYCHx, 63) > 0)
 {
 CJ11j_OSnwTANUitYCHx.sq_WriteBool(true);
 CJ11j_OSnwTANUitYCHx.sq_WriteDword(CJ11j_OSnwTANUitYCHx.sq_GetLevelData(229, 2, Sx_Gr8sYIOQ8QO1_zixs1Ql)); 
 CJ11j_OSnwTANUitYCHx.sq_WriteDword(CJ11j_OSnwTANUitYCHx.sq_GetLevelData(229, 3, Sx_Gr8sYIOQ8QO1_zixs1Ql)); 
 CJ11j_OSnwTANUitYCHx.sq_WriteDword(CJ11j_OSnwTANUitYCHx.sq_GetLevelData(229, 4, Sx_Gr8sYIOQ8QO1_zixs1Ql)); 
 CJ11j_OSnwTANUitYCHx.sq_WriteDword(CJ11j_OSnwTANUitYCHx.sq_GetLevelData(229, 5, Sx_Gr8sYIOQ8QO1_zixs1Ql)); 
 }
 else
 CJ11j_OSnwTANUitYCHx.sq_WriteBool(false);
 CJ11j_OSnwTANUitYCHx.sq_SendCreatePassiveObjectPacket(24370, 0, 0, 0, 60); 
 sq_SetMyShake(CJ11j_OSnwTANUitYCHx, 8, 300);
 sq_flashScreen(CJ11j_OSnwTANUitYCHx, 20, 130, 100, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 }
 CJ11j_OSnwTANUitYCHx.sq_PlaySound("SM_BLOODBOOM_02");
 
 local WeFKaw2MTHueojlFxJhO = sq_CreateAnimation("", "character/swordman/effect/animation/bloodboom/finish_bloodboom_finish_floorblood.ani"); 
 WeFKaw2MTHueojlFxJhO.addLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/bloodboom/finish_bloodboom_finish_floorblood2.ani"), true); 
 WeFKaw2MTHueojlFxJhO.addLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/bloodboom/finish_bloodboom_finish_floorblood3.ani"), true); 
 WeFKaw2MTHueojlFxJhO.addLayerAnimation(1, sq_CreateAnimation("", "character/swordman/effect/animation/bloodboom/finish_bloodboom_finish_floorblood4.ani"), true); 
 local zyV7f6yPYX71ii1sz = sq_CreatePooledObject(WeFKaw2MTHueojlFxJhO, true); 
 sq_SetCurrentDirection(zyV7f6yPYX71ii1sz, CJ11j_OSnwTANUitYCHx.getDirection()); 
 zyV7f6yPYX71ii1sz.setCurrentPos(CJ11j_OSnwTANUitYCHx.getXPos(), CJ11j_OSnwTANUitYCHx.getYPos(), CJ11j_OSnwTANUitYCHx.getZPos()); 
 zyV7f6yPYX71ii1sz = sq_SetEnumDrawLayer(zyV7f6yPYX71ii1sz, ENUM_DRAWLAYER_BOTTOM); 
 sq_AddObject(CJ11j_OSnwTANUitYCHx, zyV7f6yPYX71ii1sz, OBJECTTYPE_DRAWONLY, false); 
 }
 return true;
} ;

 
function onEndCurrentAni_swordman_bloodboom(PI3yc3imZHs3h)
{
 if(!PI3yc3imZHs3h) return;
 if(!PI3yc3imZHs3h.sq_IsMyControlObject()) return;
 PI3yc3imZHs3h.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

