
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

 
function checkExecutableSkill_gunner_hellmarch(GNwHN9o7zA)
{
 if(!GNwHN9o7zA) return false; 
 local Sk6nYn81GrxbAV = GNwHN9o7zA.sq_IsUseSkill(247); 
 if(Sk6nYn81GrxbAV) 
 {
 GNwHN9o7zA.sq_AddSetStatePacket(247, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_gunner_hellmarch(GNwHN9o7zA)
{
 if(!GNwHN9o7zA) return false; 
 local Sk6nYn81GrxbAV = GNwHN9o7zA.sq_GetState(); 
 if(Sk6nYn81GrxbAV == STATE_STAND) 
 return true; 
 if(Sk6nYn81GrxbAV == STATE_ATTACK) 
 {
 return GNwHN9o7zA.sq_IsCommandEnable(247); 
 }
 return true; 
} ;

 
function onSetState_gunner_hellmarch(GNwHN9o7zA, Sk6nYn81GrxbAV, kTbiDnTL6NDFvtTwaB, M46uOO8uVKijlZhJYQeMA)
{
 if(!GNwHN9o7zA) return; 
 GNwHN9o7zA.sq_StopMove(); 
 GNwHN9o7zA.sq_SetCurrentAnimation(157); 
 GNwHN9o7zA.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 if(GNwHN9o7zA.sq_IsMyControlObject())
 {
 local T0QZDRGq19m = sq_GetSkillLevel(GNwHN9o7zA, 247); 
 local MxtgJQToO1JbpC6h_E8M_Xx5 = sq_GetLevelData(GNwHN9o7zA, 247, 0, T0QZDRGq19m); 
 GNwHN9o7zA.sq_StartWrite();
 GNwHN9o7zA.sq_WriteDword(247); 
 GNwHN9o7zA.sq_WriteDword(1); 
 GNwHN9o7zA.sq_WriteDword(MxtgJQToO1JbpC6h_E8M_Xx5); 
 GNwHN9o7zA.sq_WriteDword(GNwHN9o7zA.sq_GetBonusRateWithPassive(247, 247, 1, 1.0)); 
 GNwHN9o7zA.sq_WriteDword(sq_GetLevelData(GNwHN9o7zA, 247, 2, T0QZDRGq19m)); 
 GNwHN9o7zA.sq_WriteDword(GNwHN9o7zA.sq_GetBonusRateWithPassive(247, 247, 3, 1.0)); 
 GNwHN9o7zA.sq_WriteDword(sq_GetLevelData(GNwHN9o7zA, 247, 4, T0QZDRGq19m)); 
 GNwHN9o7zA.sq_WriteDword(
 (100.0*(4.0/ MxtgJQToO1JbpC6h_E8M_Xx5)).tointeger()
 ); 
 GNwHN9o7zA.sq_WriteWord(
 (63.0*(4.0/ MxtgJQToO1JbpC6h_E8M_Xx5)).tointeger()
 ); 
 GNwHN9o7zA.sq_SendCreatePassiveObjectPacket(24371, 0, 0, 0, 0); 
 }
} ;

 
function onEndCurrentAni_gunner_hellmarch(ZRGH22KBXWc1m)
{
 if(!ZRGH22KBXWc1m) return;
 if(ZRGH22KBXWc1m.sq_IsMyControlObject())
 ZRGH22KBXWc1m.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

