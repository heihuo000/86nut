
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_swordman_lightninggod(dQgXX07IAfHE1Y)
{
 if(!dQgXX07IAfHE1Y) return false; 
 local jYIEPkUl_RQ2kCG3 = dQgXX07IAfHE1Y.sq_IsUseSkill(244); 
 if(jYIEPkUl_RQ2kCG3) 
 {
 dQgXX07IAfHE1Y.sq_AddSetStatePacket(244, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_swordman_lightninggod(BDG7Zw9YR9pEdLh2Q7G)
{
 if(!BDG7Zw9YR9pEdLh2Q7G) return false; 
 local zg2mVaNKGPiNWW0s5DqnmL = BDG7Zw9YR9pEdLh2Q7G.sq_GetState(); 
 if(zg2mVaNKGPiNWW0s5DqnmL == STATE_STAND) 
 return true; 
 if(zg2mVaNKGPiNWW0s5DqnmL == STATE_ATTACK) 
 {
 return BDG7Zw9YR9pEdLh2Q7G.sq_IsCommandEnable(244); 
 }
 return true; 
} ;


 
function onSetState_swordman_lightninggod(BDG7Zw9YR9pEdLh2Q7G, zg2mVaNKGPiNWW0s5DqnmL, Lg5L09fqGboonPtenroLCL, qDL4NHNuixmrwJl)
{
 if(!BDG7Zw9YR9pEdLh2Q7G) return; 
 BDG7Zw9YR9pEdLh2Q7G.sq_StopMove(); 
 BDG7Zw9YR9pEdLh2Q7G.sq_SetCurrentAnimation(163); 
 if(BDG7Zw9YR9pEdLh2Q7G.sq_IsMyControlObject())
 {
 local AjnzkoolEKmEau0XB24695js = sq_GetSkillLevel(BDG7Zw9YR9pEdLh2Q7G, 244); 
 
 BDG7Zw9YR9pEdLh2Q7G.sq_StartWrite();
 BDG7Zw9YR9pEdLh2Q7G.sq_WriteDword(244); 
 BDG7Zw9YR9pEdLh2Q7G.sq_WriteDword(1); 
 BDG7Zw9YR9pEdLh2Q7G.sq_WriteDword(BDG7Zw9YR9pEdLh2Q7G.sq_GetBonusRateWithPassive(244, 244, 0, 1.0)); 
 BDG7Zw9YR9pEdLh2Q7G.sq_WriteDword(BDG7Zw9YR9pEdLh2Q7G.sq_GetBonusRateWithPassive(244, 244, 1, 1.0)); 
 BDG7Zw9YR9pEdLh2Q7G.sq_WriteDword(BDG7Zw9YR9pEdLh2Q7G.sq_GetBonusRateWithPassive(244, 244, 6, 1.0)); 
 BDG7Zw9YR9pEdLh2Q7G.sq_WriteDword(BDG7Zw9YR9pEdLh2Q7G.sq_GetBonusRateWithPassive(244, 244, 7, 1.0)); 
 BDG7Zw9YR9pEdLh2Q7G.sq_WriteDword(sq_GetLevelData(BDG7Zw9YR9pEdLh2Q7G, 244, 2, AjnzkoolEKmEau0XB24695js)); 
 BDG7Zw9YR9pEdLh2Q7G.sq_WriteDword(sq_GetLevelData(BDG7Zw9YR9pEdLh2Q7G, 244, 3, AjnzkoolEKmEau0XB24695js)); 
 BDG7Zw9YR9pEdLh2Q7G.sq_WriteDword(sq_GetLevelData(BDG7Zw9YR9pEdLh2Q7G, 244, 4, AjnzkoolEKmEau0XB24695js)); 
 BDG7Zw9YR9pEdLh2Q7G.sq_WriteDword(sq_GetLevelData(BDG7Zw9YR9pEdLh2Q7G, 244, 5, AjnzkoolEKmEau0XB24695js)); 
 BDG7Zw9YR9pEdLh2Q7G.sq_WriteDword(sq_GetLevelData(BDG7Zw9YR9pEdLh2Q7G, 244, 8, AjnzkoolEKmEau0XB24695js)); 
 BDG7Zw9YR9pEdLh2Q7G.sq_SendCreatePassiveObjectPacket(24370, 0, 350, 0, 0); 
 }
 
 BDG7Zw9YR9pEdLh2Q7G.sq_PlaySound("SM_LIGHTNINGGOD_CAST"); 
 BDG7Zw9YR9pEdLh2Q7G.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;


 
function onEndCurrentAni_swordman_lightninggod(wkj7M4Oc4_vCxmD4GNHNNE)
{
 if(!wkj7M4Oc4_vCxmD4GNHNNE) return; 
 if(!wkj7M4Oc4_vCxmD4GNHNNE.sq_IsMyControlObject()) return;
 wkj7M4Oc4_vCxmD4GNHNNE.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;
