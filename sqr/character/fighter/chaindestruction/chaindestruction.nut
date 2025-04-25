
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_fighter_chaindestruction(OVYsFOhwZbcXk47jWfe9)
{
 if(!OVYsFOhwZbcXk47jWfe9) return false; 
 local YYJCeFCRuUkpf = OVYsFOhwZbcXk47jWfe9.sq_IsUseSkill(231); 
 if(YYJCeFCRuUkpf) 
 {
 OVYsFOhwZbcXk47jWfe9.sq_IntVectClear();
 OVYsFOhwZbcXk47jWfe9.sq_IntVectPush(0); 
 OVYsFOhwZbcXk47jWfe9.sq_AddSetStatePacket(231, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_fighter_chaindestruction(OVYsFOhwZbcXk47jWfe9)
{
 if(!OVYsFOhwZbcXk47jWfe9) return false; 
 local YYJCeFCRuUkpf = OVYsFOhwZbcXk47jWfe9.sq_GetState(); 
 if(YYJCeFCRuUkpf == STATE_STAND) 
 return true; 
 if(YYJCeFCRuUkpf == STATE_ATTACK) 
 {
 return OVYsFOhwZbcXk47jWfe9.sq_IsCommandEnable(231); 
 }
 return true; 
} ;

 
function onSetState_fighter_chaindestruction(ejL6XjV2hQretQxPZD, iC7Xom653I, IzUEHsz5nTY1y_hBuREKim, oTCvmnFsLaEBAbRD8uGydxZ)
{
 if(!ejL6XjV2hQretQxPZD) return; 
 ejL6XjV2hQretQxPZD.sq_StopMove(); 
 ejL6XjV2hQretQxPZD.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local VZRJllKb4bbMXHCbSpFIT2Y = ejL6XjV2hQretQxPZD.sq_GetVectorData(IzUEHsz5nTY1y_hBuREKim, 0); 
 ejL6XjV2hQretQxPZD.setSkillSubState(VZRJllKb4bbMXHCbSpFIT2Y); 
 switch(VZRJllKb4bbMXHCbSpFIT2Y)
 {
 case 0:
 ejL6XjV2hQretQxPZD.sq_SetCurrentAnimation(117); 
 ejL6XjV2hQretQxPZD.sq_SetCurrentAttackInfo(65); 
 ejL6XjV2hQretQxPZD.sq_SetCurrentAttackBonusRate(ejL6XjV2hQretQxPZD.sq_GetBonusRateWithPassive(231, 231, 0, 1.0)); 
 break;
 case 1:
 ejL6XjV2hQretQxPZD.sq_SetCurrentAnimation(118); 
 ejL6XjV2hQretQxPZD.sq_SetCurrentAttackInfo(66); 
 ejL6XjV2hQretQxPZD.sq_SetCurrentAttackBonusRate(ejL6XjV2hQretQxPZD.sq_GetBonusRateWithPassive(231, 231, 1, 1.0)); 
 ejL6XjV2hQretQxPZD.getVar().setBool(0, true); 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && ejL6XjV2hQretQxPZD.getDirection() == ENUM_DIRECTION_RIGHT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && ejL6XjV2hQretQxPZD.getDirection() == ENUM_DIRECTION_LEFT)
 {
 ejL6XjV2hQretQxPZD.sq_SetStaticMoveInfo(0, 600, 600, false);
 ejL6XjV2hQretQxPZD.sq_SetMoveDirection(ejL6XjV2hQretQxPZD.getDirection(), ENUM_DIRECTION_NEUTRAL); 
 ejL6XjV2hQretQxPZD.getVar().setBool(1, true); 
 }
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && ejL6XjV2hQretQxPZD.getDirection() == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && ejL6XjV2hQretQxPZD.getDirection() == ENUM_DIRECTION_RIGHT)
 {
 ejL6XjV2hQretQxPZD.sq_SetStaticMoveInfo(0, 0, 0, false);
 ejL6XjV2hQretQxPZD.sq_SetMoveDirection(ejL6XjV2hQretQxPZD.getDirection(), ENUM_DIRECTION_NEUTRAL); 
 ejL6XjV2hQretQxPZD.getVar().setBool(1, false); 
 }
 else
 {
 ejL6XjV2hQretQxPZD.sq_SetStaticMoveInfo(0, 300, 300, false);
 ejL6XjV2hQretQxPZD.sq_SetMoveDirection(ejL6XjV2hQretQxPZD.getDirection(), ENUM_DIRECTION_NEUTRAL); 
 ejL6XjV2hQretQxPZD.getVar().setBool(1, true); 
 }
 sq_SetZVelocity(ejL6XjV2hQretQxPZD, 50, 50); 
 break;
 case 2:
 ejL6XjV2hQretQxPZD.sq_SetCurrentAnimation(119); 
 if(ejL6XjV2hQretQxPZD.getVar().getBool(1) == true) 
 {
 ejL6XjV2hQretQxPZD.sq_SetStaticMoveInfo(0, 100, 100, false);
 ejL6XjV2hQretQxPZD.sq_SetMoveDirection(ejL6XjV2hQretQxPZD.getDirection(), ENUM_DIRECTION_NEUTRAL); 
 }
 
 ejL6XjV2hQretQxPZD.getVar().clear_vector(); 
 ejL6XjV2hQretQxPZD.getVar().push_vector(ejL6XjV2hQretQxPZD.getZPos()); 
 break;
 }
} ;

function onAttack_fighter_chaindestruction(ElpnBTbJT_hv0UHrV, cvfDCz5u7ll3tGuEb, cLp0q4frXfyFVwYdS, ySnJzIb4gQDWuh8oG4qgd)
{
 if(!ElpnBTbJT_hv0UHrV) return;
 if(ySnJzIb4gQDWuh8oG4qgd) return;
 if(ElpnBTbJT_hv0UHrV.getVar().getBool(0) == false && ElpnBTbJT_hv0UHrV.getSkillSubState() == 1) 
 {
 ElpnBTbJT_hv0UHrV.getVar().setBool(0, true); 
 if(ElpnBTbJT_hv0UHrV.sq_IsMyControlObject())
 {
 ElpnBTbJT_hv0UHrV.sq_StartWrite();
 ElpnBTbJT_hv0UHrV.sq_WriteDword(231); 
 ElpnBTbJT_hv0UHrV.sq_WriteDword(ElpnBTbJT_hv0UHrV.sq_GetBonusRateWithPassive(231, 231, 4, 1.0)); 
 ElpnBTbJT_hv0UHrV.sq_SendCreatePassiveObjectPacket(24373, 0, 91, 0, 70);
 }
 }
} ;

function onKeyFrameFlag_fighter_chaindestruction(sTPDVHmHbFXvsZHBLCWToz, ef11ZaNkyYetFpEho)
{
 if(!sTPDVHmHbFXvsZHBLCWToz) return false;
 local swTMHcs22ZM1MbS8IhX = sTPDVHmHbFXvsZHBLCWToz.getSkillSubState(); 
 if(swTMHcs22ZM1MbS8IhX == 1)
 {
 switch(ef11ZaNkyYetFpEho)
 {
 case 1:
 sTPDVHmHbFXvsZHBLCWToz.sq_SetCurrentAttackInfo(67); 
 sTPDVHmHbFXvsZHBLCWToz.sq_SetCurrentAttackBonusRate(sTPDVHmHbFXvsZHBLCWToz.sq_GetBonusRateWithPassive(231, 231, 2, 1.0)); 
 break;
 case 2:
 sTPDVHmHbFXvsZHBLCWToz.sq_SetCurrentAttackInfo(68); 
 sTPDVHmHbFXvsZHBLCWToz.sq_SetCurrentAttackBonusRate(sTPDVHmHbFXvsZHBLCWToz.sq_GetBonusRateWithPassive(231, 231, 3, 1.0)); 
 sTPDVHmHbFXvsZHBLCWToz.getVar().setBool(0, false); 
 break;
 case 3:
 sq_SetMyShake(sTPDVHmHbFXvsZHBLCWToz, 5, 350); 
 break;
 }
 }
 return true;
} ;

function onProc_fighter_chaindestruction(I7Vn2b5Y4JWJ8fwyqag)
{
 if(!I7Vn2b5Y4JWJ8fwyqag) return;
 local M0Av1Ca1jcgi2kZrbwX = I7Vn2b5Y4JWJ8fwyqag.getSkillSubState(); 
 switch(M0Av1Ca1jcgi2kZrbwX)
 {
 case 2:
 if(I7Vn2b5Y4JWJ8fwyqag.getVar().size_vector() <= 0)return;
 local GGZmeVAG1DTZ5MIEgjv7r4 = I7Vn2b5Y4JWJ8fwyqag.getCurrentAnimation(); 
 local RkaFOxMO_hWLq = sq_GetCurrentTime(GGZmeVAG1DTZ5MIEgjv7r4); 
 local pa6wv_TLvw3 = GGZmeVAG1DTZ5MIEgjv7r4.getDelaySum(0, 1); 
 local gH7YFWOna7L82a34Tzx7c = sq_GetUniformVelocity(I7Vn2b5Y4JWJ8fwyqag.getVar().get_vector(0), 0, RkaFOxMO_hWLq, pa6wv_TLvw3); 
 sq_setCurrentAxisPos(I7Vn2b5Y4JWJ8fwyqag, 2, gH7YFWOna7L82a34Tzx7c); 
 if(RkaFOxMO_hWLq >= pa6wv_TLvw3)
 I7Vn2b5Y4JWJ8fwyqag.getVar().clear_vector(); 
 break;
 }
} ;

 
function onEndCurrentAni_fighter_chaindestruction(jpsD1O6TNE)
{
 if(!jpsD1O6TNE) return;
 if(!jpsD1O6TNE.sq_IsMyControlObject())return;
 local KzQwM5SWSXO = jpsD1O6TNE.getSkillSubState(); 
 if(KzQwM5SWSXO != 2)
 {
 jpsD1O6TNE.sq_IntVectClear();
 jpsD1O6TNE.sq_IntVectPush(KzQwM5SWSXO + 1); 
 jpsD1O6TNE.sq_AddSetStatePacket(231, STATE_PRIORITY_USER, true); 
 }
 else if(KzQwM5SWSXO == 2) 
 jpsD1O6TNE.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

