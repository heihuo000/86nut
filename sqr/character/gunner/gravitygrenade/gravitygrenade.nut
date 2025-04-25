
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_gunner_gravitygrenade(kUyu6ilA80Ua)
{
 if(!kUyu6ilA80Ua) return false; 
 local CyqJIjoiffBhfmW = kUyu6ilA80Ua.sq_IsUseSkill(242); 
 if(CyqJIjoiffBhfmW) 
 {
 kUyu6ilA80Ua.sq_AddSetStatePacket(242, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_gunner_gravitygrenade(wKYx5kxP2FqaU6yXA)
{
 if(!wKYx5kxP2FqaU6yXA) return false; 
 local Uje4NvI7x17 = wKYx5kxP2FqaU6yXA.sq_GetState(); 
 if(Uje4NvI7x17 == STATE_STAND) 
 return true; 
 if(Uje4NvI7x17 == STATE_ATTACK) 
 {
 return wKYx5kxP2FqaU6yXA.sq_IsCommandEnable(242); 
 }
 return true; 
} ;

 
function onSetState_gunner_gravitygrenade(wKYx5kxP2FqaU6yXA, Uje4NvI7x17, FFhuL4ARMUe7FNEgFKGxi4Y, kNZ9FNNlW92gVhtq989Br5o0)
{
 if(!wKYx5kxP2FqaU6yXA) return; 
 wKYx5kxP2FqaU6yXA.sq_StopMove(); 
 wKYx5kxP2FqaU6yXA.sq_PlaySound("GN_GRENADE"); 
 wKYx5kxP2FqaU6yXA.sq_SetCurrentAnimation(153); 
 wKYx5kxP2FqaU6yXA.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 if(wKYx5kxP2FqaU6yXA.sq_IsMyControlObject())
 {
 local haRtTEU7kBCwQJ0PSbRCtlg = 1; 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) 
 haRtTEU7kBCwQJ0PSbRCtlg = 2; 
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL))
 haRtTEU7kBCwQJ0PSbRCtlg = 3; 
 
 local Ia9VPAyYZyxRarNbdix = sq_GetSkillLevel(wKYx5kxP2FqaU6yXA, 242); 
 wKYx5kxP2FqaU6yXA.sq_StartWrite();
 wKYx5kxP2FqaU6yXA.sq_WriteDword(242); 
 wKYx5kxP2FqaU6yXA.sq_WriteDword(wKYx5kxP2FqaU6yXA.sq_GetBonusRateWithPassive(242, 242, 2, 1.0)); 
 wKYx5kxP2FqaU6yXA.sq_WriteDword(wKYx5kxP2FqaU6yXA.sq_GetBonusRateWithPassive(242, 242, 3, 1.0)); 
 wKYx5kxP2FqaU6yXA.sq_WriteDword(sq_GetLevelData(wKYx5kxP2FqaU6yXA, 242, 0, Ia9VPAyYZyxRarNbdix)); 
 wKYx5kxP2FqaU6yXA.sq_WriteDword(sq_GetLevelData(wKYx5kxP2FqaU6yXA, 242, 1, Ia9VPAyYZyxRarNbdix)); 
 wKYx5kxP2FqaU6yXA.sq_WriteDword(sq_GetLevelData(wKYx5kxP2FqaU6yXA, 242, 4, Ia9VPAyYZyxRarNbdix)); 
 wKYx5kxP2FqaU6yXA.sq_WriteWord(haRtTEU7kBCwQJ0PSbRCtlg); 
 wKYx5kxP2FqaU6yXA.sq_SendCreatePassiveObjectPacket(24371, 0, 60, 0, 80); 
 }
} ;

 
function onEndCurrentAni_gunner_gravitygrenade(uvizqa2mzRfTGGWVMNRb)
{
 if(!uvizqa2mzRfTGGWVMNRb) return;
 if(uvizqa2mzRfTGGWVMNRb.sq_IsMyControlObject())
 uvizqa2mzRfTGGWVMNRb.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


