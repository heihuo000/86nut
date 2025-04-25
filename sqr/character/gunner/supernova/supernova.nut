
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_gunner_supernova(RHr21rZVGf_1X0XhIht)
{
 if(!RHr21rZVGf_1X0XhIht) return false; 
 local FkNsqNlRgR = RHr21rZVGf_1X0XhIht.sq_IsUseSkill(245); 
 if(FkNsqNlRgR) 
 {
 RHr21rZVGf_1X0XhIht.sq_AddSetStatePacket(245, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_gunner_supernova(RHr21rZVGf_1X0XhIht)
{
 if(!RHr21rZVGf_1X0XhIht) return false; 
 local FkNsqNlRgR = RHr21rZVGf_1X0XhIht.sq_GetState(); 
 if(FkNsqNlRgR == STATE_STAND) 
 return true; 
 if(FkNsqNlRgR == STATE_ATTACK) 
 {
 return RHr21rZVGf_1X0XhIht.sq_IsCommandEnable(245); 
 }
 return true; 
} ;

 
function onSetState_gunner_supernova(RHr21rZVGf_1X0XhIht, FkNsqNlRgR, bHi8XGJepO4T, uNGIzqZoJsL7LZL4Dynqr)
{
 if(!RHr21rZVGf_1X0XhIht) return; 
 RHr21rZVGf_1X0XhIht.sq_StopMove(); 
 RHr21rZVGf_1X0XhIht.sq_SetCurrentAnimation(155); 
 RHr21rZVGf_1X0XhIht.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onKeyFrameFlag_gunner_supernova(d_Ru0gCCOqz1reZ8EKjqU8nX, Sd3ibfZrLJ9OQiW8)
{
 if(!d_Ru0gCCOqz1reZ8EKjqU8nX) return false;
 if(Sd3ibfZrLJ9OQiW8 == 1 && d_Ru0gCCOqz1reZ8EKjqU8nX.sq_IsMyControlObject())
 {
 local nwrh3uQ16C5no = d_Ru0gCCOqz1reZ8EKjqU8nX.getDirection(); 
 
 if(nwrh3uQ16C5no == ENUM_DIRECTION_LEFT && sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL)
 || nwrh3uQ16C5no == ENUM_DIRECTION_RIGHT && sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL))
 nwrh3uQ16C5no = sq_GetOppositeDirection(nwrh3uQ16C5no); 
 local nPGo1LRqGWF = sq_GetSkillLevel(d_Ru0gCCOqz1reZ8EKjqU8nX, 245); 
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_StartWrite();
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_WriteDword(245); 
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_WriteDword(1); 
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_WriteWord(nwrh3uQ16C5no); 
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_WriteDword(d_Ru0gCCOqz1reZ8EKjqU8nX.sq_GetBonusRateWithPassive(245, 245, 1, 1.0)); 
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_WriteDword(d_Ru0gCCOqz1reZ8EKjqU8nX.sq_GetBonusRateWithPassive(245, 245, 4, 1.0)); 
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_WriteDword(sq_GetLevelData(d_Ru0gCCOqz1reZ8EKjqU8nX, 245, 0, nPGo1LRqGWF)); 
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_WriteDword(sq_GetLevelData(d_Ru0gCCOqz1reZ8EKjqU8nX, 245, 2, nPGo1LRqGWF)); 
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_WriteDword(sq_GetLevelData(d_Ru0gCCOqz1reZ8EKjqU8nX, 245, 3, nPGo1LRqGWF)); 
 
 sq_SendCreatePassiveObjectPacket(d_Ru0gCCOqz1reZ8EKjqU8nX, 24371, 0, 100, 0, 75, nwrh3uQ16C5no);
 }
 return true;
} ;

 
function onEndCurrentAni_gunner_supernova(OxJ176kStrwa1OykCytqdY)
{
 if(!OxJ176kStrwa1OykCytqdY) return;
 if(OxJ176kStrwa1OykCytqdY.sq_IsMyControlObject())
 OxJ176kStrwa1OykCytqdY.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

