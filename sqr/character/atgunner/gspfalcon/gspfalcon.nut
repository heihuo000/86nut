
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_atgunner_gspfalcon(Bm1HD18_Gr5ce0)
{
 if(!Bm1HD18_Gr5ce0) return false; 
 local dZh301_kvU_N = onGetMyPassiveObject_My(Bm1HD18_Gr5ce0, 24376, 247, 1); 
 if(dZh301_kvU_N)
 return true;
 local gY13OoHRj_YeMNUHbsQ = Bm1HD18_Gr5ce0.sq_IsUseSkill(247); 
 if(gY13OoHRj_YeMNUHbsQ) 
 {
 Bm1HD18_Gr5ce0.sq_IntVectClear();
 Bm1HD18_Gr5ce0.sq_IntVectPush(0); 
 Bm1HD18_Gr5ce0.sq_AddSetStatePacket(247, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atgunner_gspfalcon(Bm1HD18_Gr5ce0)
{
 if(!Bm1HD18_Gr5ce0) return false; 
 local dZh301_kvU_N = onGetMyPassiveObject_My(Bm1HD18_Gr5ce0, 24376, 247, 1); 
 if(dZh301_kvU_N)
 return false;
 local gY13OoHRj_YeMNUHbsQ = Bm1HD18_Gr5ce0.sq_GetState(); 
 if(gY13OoHRj_YeMNUHbsQ == STATE_STAND) 
 return true; 
 if(gY13OoHRj_YeMNUHbsQ == STATE_ATTACK) 
 {
 return Bm1HD18_Gr5ce0.sq_IsCommandEnable(247); 
 }
 return true; 
} ;

 
function onSetState_atgunner_gspfalcon(ISk3Sw9NO0QcvrqNGJy, NO15NSZ39mt, yLvZaPAxj7xuEFKH5, Fu9AUBAd5M)
{
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 if(!ISk3Sw9NO0QcvrqNGJy) return; 
 local yH9D6hTIoT46DO = ISk3Sw9NO0QcvrqNGJy.sq_GetVectorData(yLvZaPAxj7xuEFKH5, 0); 
 ISk3Sw9NO0QcvrqNGJy.setSkillSubState(yH9D6hTIoT46DO); 
 switch(yH9D6hTIoT46DO)
 {
 case 0:
 ISk3Sw9NO0QcvrqNGJy.getVar().clear_vector(); 
 ISk3Sw9NO0QcvrqNGJy.sq_StopMove(); 
 ISk3Sw9NO0QcvrqNGJy.sq_SetCurrentAnimation(137);
 local sDzwX4N7HMsfeQ9NTAwppa = sq_GetSkillLevel(ISk3Sw9NO0QcvrqNGJy, 247); 
 local Wge7GgU9f1KPNXC5t = sq_GetCastTime(ISk3Sw9NO0QcvrqNGJy, 247, sDzwX4N7HMsfeQ9NTAwppa); 
 local AaFD1l78UkdQ = sq_GetCurrentAnimation(ISk3Sw9NO0QcvrqNGJy); 
 local WZiBFOBqA9HNddK = sq_GetFrameStartTime(AaFD1l78UkdQ, 3); 
 local rATBwE0OSdS0 = WZiBFOBqA9HNddK.tofloat() / Wge7GgU9f1KPNXC5t.tofloat(); 
 ISk3Sw9NO0QcvrqNGJy.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, rATBwE0OSdS0, rATBwE0OSdS0);
 sq_StartDrawCastGauge(ISk3Sw9NO0QcvrqNGJy, WZiBFOBqA9HNddK, true);
 break;
 case 1:
 ISk3Sw9NO0QcvrqNGJy.sq_SetCurrentAnimation(138);
 ISk3Sw9NO0QcvrqNGJy.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 if(ISk3Sw9NO0QcvrqNGJy.sq_IsMyControlObject())
 {
 
 
 local StGFRaJIB7goMNwNHU6 = 10; 
 if(ISk3Sw9NO0QcvrqNGJy.getMyPassiveObjectCount(22249) > 0) StGFRaJIB7goMNwNHU6 = 11; 
 else if(ISk3Sw9NO0QcvrqNGJy.getMyPassiveObjectCount(22251) > 0) StGFRaJIB7goMNwNHU6 = 12; 
 local sDzwX4N7HMsfeQ9NTAwppa = sq_GetSkillLevel(ISk3Sw9NO0QcvrqNGJy, 247); 
 ISk3Sw9NO0QcvrqNGJy.sq_StartWrite();
 ISk3Sw9NO0QcvrqNGJy.sq_WriteDword(247); 
 ISk3Sw9NO0QcvrqNGJy.sq_WriteDword(1); 
 ISk3Sw9NO0QcvrqNGJy.sq_WriteDword(ISk3Sw9NO0QcvrqNGJy.sq_GetLevelData(247, 0, sDzwX4N7HMsfeQ9NTAwppa)); 
 ISk3Sw9NO0QcvrqNGJy.sq_WriteDword(ISk3Sw9NO0QcvrqNGJy.sq_GetLevelData(247, 1, sDzwX4N7HMsfeQ9NTAwppa)); 
 ISk3Sw9NO0QcvrqNGJy.sq_WriteDword(StGFRaJIB7goMNwNHU6); 
 ISk3Sw9NO0QcvrqNGJy.sq_SendCreatePassiveObjectPacket(24376, 0, 0, 0, 0);
 }
 break;
 }
} ;

 
function onEndCurrentAni_atgunner_gspfalcon(Dj32J5OG8JFHTCb_1UuymV)
{
 if(!Dj32J5OG8JFHTCb_1UuymV) return;
 if(!Dj32J5OG8JFHTCb_1UuymV.sq_IsMyControlObject()) return;
 local uXh5R70hBZILml2si1K_WX = Dj32J5OG8JFHTCb_1UuymV.getSkillSubState(); 
 switch(uXh5R70hBZILml2si1K_WX)
 {
 case 0:
 Dj32J5OG8JFHTCb_1UuymV.sq_IntVectClear();
 Dj32J5OG8JFHTCb_1UuymV.sq_IntVectPush(1); 
 Dj32J5OG8JFHTCb_1UuymV.sq_AddSetStatePacket(247, STATE_PRIORITY_USER, true); 
 break;
 case 1:
 Dj32J5OG8JFHTCb_1UuymV.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

function onEndState_atgunner_gspfalcon(iCuHBGtYYXc7lhXoa54, dz5WnogDendMy)
{
 if(!iCuHBGtYYXc7lhXoa54) return;
 if(dz5WnogDendMy != 247)
 sq_EndDrawCastGauge(iCuHBGtYYXc7lhXoa54); 
} ;


