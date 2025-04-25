
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_gunner_g38arg(lxM2KkDuBOQhR)
{
 if(!lxM2KkDuBOQhR) return false; 
 local psuArGbBouoY2clAHvu = lxM2KkDuBOQhR.sq_IsUseSkill(244); 
 if(psuArGbBouoY2clAHvu) 
 {
 lxM2KkDuBOQhR.sq_AddSetStatePacket(244, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_gunner_g38arg(lxM2KkDuBOQhR)
{
 if(!lxM2KkDuBOQhR) return false; 
 local psuArGbBouoY2clAHvu = lxM2KkDuBOQhR.sq_GetState(); 
 if(psuArGbBouoY2clAHvu == STATE_STAND) 
 return true; 
 if(psuArGbBouoY2clAHvu == STATE_ATTACK) 
 {
 return lxM2KkDuBOQhR.sq_IsCommandEnable(244); 
 }
 return true; 
} ;

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onSetState_gunner_g38arg(GNwHN9o7zA, Sk6nYn81GrxbAV, kTbiDnTL6NDFvtTwaB, M46uOO8uVKijlZhJYQeMA)
{
 if(!GNwHN9o7zA) return; 
 GNwHN9o7zA.sq_StopMove(); 
 GNwHN9o7zA.sq_PlaySound("GN_G_38ARG"); 
 GNwHN9o7zA.sq_SetCurrentAnimation(153); 
 GNwHN9o7zA.sq_AddStateLayerAnimation(1, GNwHN9o7zA.sq_CreateCNRDAnimation("effect/animation/g-38arg/hand.ani"), 0, 0); 
 GNwHN9o7zA.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 if(GNwHN9o7zA.sq_IsMyControlObject())
 {
 local T0QZDRGq19m = 1; 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) 
 T0QZDRGq19m = 2; 
 local MxtgJQToO1JbpC6h_E8M_Xx5 = sq_GetSkillLevel(GNwHN9o7zA, 244); 
 GNwHN9o7zA.sq_StartWrite();
 GNwHN9o7zA.sq_WriteDword(244); 
 GNwHN9o7zA.sq_WriteDword(1); 
 GNwHN9o7zA.sq_WriteWord(T0QZDRGq19m); 
 GNwHN9o7zA.sq_WriteDword(sq_GetLevelData(GNwHN9o7zA, 244, 0, MxtgJQToO1JbpC6h_E8M_Xx5)); 
 GNwHN9o7zA.sq_WriteDword(sq_GetLevelData(GNwHN9o7zA, 244, 1, MxtgJQToO1JbpC6h_E8M_Xx5)); 
 GNwHN9o7zA.sq_WriteDword(sq_GetLevelData(GNwHN9o7zA, 244, 7, MxtgJQToO1JbpC6h_E8M_Xx5)); 
 GNwHN9o7zA.sq_WriteDword(GNwHN9o7zA.sq_GetBonusRateWithPassive(244, 244, 2, 1.0)); 
 GNwHN9o7zA.sq_WriteDword(GNwHN9o7zA.sq_GetBonusRateWithPassive(244, 244, 3, 1.0)); 
 GNwHN9o7zA.sq_WriteDword(GNwHN9o7zA.sq_GetBonusRateWithPassive(244, 244, 4, 1.0)); 
 GNwHN9o7zA.sq_WriteDword(GNwHN9o7zA.sq_GetBonusRateWithPassive(244, 244, 5, 1.0)); 
 GNwHN9o7zA.sq_WriteDword(GNwHN9o7zA.sq_GetBonusRateWithPassive(244, 244, 6, 1.0)); 
 GNwHN9o7zA.sq_SendCreatePassiveObjectPacket(24371, 0, 60, 0, 80); 
 }
} ;

 
function onEndCurrentAni_gunner_g38arg(ZRGH22KBXWc1m)
{
 if(!ZRGH22KBXWc1m) return;
 if(ZRGH22KBXWc1m.sq_IsMyControlObject())
 ZRGH22KBXWc1m.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

