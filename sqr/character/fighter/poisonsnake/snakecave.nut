
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_fighter_snakecave(OyMKSmr3d6fRtLfZUz)
{
 if(!OyMKSmr3d6fRtLfZUz) return false; 
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(OyMKSmr3d6fRtLfZUz, "character/fighter/poisonsnake/ap_poisonsnake.nut"))return false;
 if(OyMKSmr3d6fRtLfZUz.getState() == 6 && OyMKSmr3d6fRtLfZUz.getZPos() < 100)return false;
 local nMgAuraUWjBq4kf8J5g = OyMKSmr3d6fRtLfZUz.sq_IsUseSkill(236); 
 if(nMgAuraUWjBq4kf8J5g)
 {
 OyMKSmr3d6fRtLfZUz.sq_IntVectClear();
 if(OyMKSmr3d6fRtLfZUz.getState() == 6)
 OyMKSmr3d6fRtLfZUz.sq_IntVectPush(2); 
 else
 OyMKSmr3d6fRtLfZUz.sq_IntVectPush(0); 
 OyMKSmr3d6fRtLfZUz.sq_AddSetStatePacket(236, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_fighter_snakecave(lkg4APy2yXLEm4fEWCGWC5a)
{
 
 if(!lkg4APy2yXLEm4fEWCGWC5a) return false;
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(lkg4APy2yXLEm4fEWCGWC5a, "character/fighter/poisonsnake/ap_poisonsnake.nut"))return false;
 local Q5W1pKgcJNJ5_8VMhv8OvV = lkg4APy2yXLEm4fEWCGWC5a.sq_GetState(); 
 if(Q5W1pKgcJNJ5_8VMhv8OvV == STATE_STAND) 
 return true; 
 if(Q5W1pKgcJNJ5_8VMhv8OvV == STATE_ATTACK) 
 {
 return lkg4APy2yXLEm4fEWCGWC5a.sq_IsCommandEnable(236); 
 }
 return true; 
} ;

 
function onSetState_fighter_snakecave(lkg4APy2yXLEm4fEWCGWC5a, Q5W1pKgcJNJ5_8VMhv8OvV, qOeL2Au1u5nmT8tAgvdFWt, Ul_HwgNRpmrQp6)
{
 if(!lkg4APy2yXLEm4fEWCGWC5a) return; 
 lkg4APy2yXLEm4fEWCGWC5a.sq_StopMove(); 
 lkg4APy2yXLEm4fEWCGWC5a.sq_ZStop(); 
 local lDQBQ_lmiJwFAeqquDjWh3C4 = lkg4APy2yXLEm4fEWCGWC5a.sq_GetVectorData(qOeL2Au1u5nmT8tAgvdFWt, 0); 
 lkg4APy2yXLEm4fEWCGWC5a.setSkillSubState(lDQBQ_lmiJwFAeqquDjWh3C4); 
 switch(lDQBQ_lmiJwFAeqquDjWh3C4)
 {
 case 0: 
 lkg4APy2yXLEm4fEWCGWC5a.sq_SetCurrentAnimation(138);
 sq_CreateDrawOnlyObject(lkg4APy2yXLEm4fEWCGWC5a, "character/fighter/effect/animation/poisonsnake/snakecaveready3_01.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 if(lkg4APy2yXLEm4fEWCGWC5a.sq_IsMyControlObject())
 sq_flashScreen(lkg4APy2yXLEm4fEWCGWC5a, 0, 600, 100, 127, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 break;
 case 1: 
 lkg4APy2yXLEm4fEWCGWC5a.sq_SetCurrentAnimation(139);
 lkg4APy2yXLEm4fEWCGWC5a.getVar().clear_vector(); 
 lkg4APy2yXLEm4fEWCGWC5a.getVar().push_vector(lkg4APy2yXLEm4fEWCGWC5a.getXPos()); 
 lkg4APy2yXLEm4fEWCGWC5a.getVar().push_vector(lkg4APy2yXLEm4fEWCGWC5a.sq_GetVectorData(qOeL2Au1u5nmT8tAgvdFWt, 1)); 
 break;
 case 2: 
 lkg4APy2yXLEm4fEWCGWC5a.sq_SetCurrentAnimation(140);
 sq_flashScreen(lkg4APy2yXLEm4fEWCGWC5a, 0, 600, 100, 127, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 sq_CreateDrawOnlyObject(lkg4APy2yXLEm4fEWCGWC5a, "character/fighter/effect/animation/poisonsnake/snakecavereadyair1_12.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 case 3: 
 lkg4APy2yXLEm4fEWCGWC5a.sq_SetCurrentAnimation(141);
 lkg4APy2yXLEm4fEWCGWC5a.getVar().clear_vector(); 
 lkg4APy2yXLEm4fEWCGWC5a.getVar().push_vector(lkg4APy2yXLEm4fEWCGWC5a.getXPos()); 
 lkg4APy2yXLEm4fEWCGWC5a.getVar().push_vector(lkg4APy2yXLEm4fEWCGWC5a.sq_GetVectorData(qOeL2Au1u5nmT8tAgvdFWt, 1)); 
 lkg4APy2yXLEm4fEWCGWC5a.getVar().push_vector(lkg4APy2yXLEm4fEWCGWC5a.getZPos()); 
 break;
 case 4: 
 lkg4APy2yXLEm4fEWCGWC5a.sq_SetCurrentAnimation(142);
 lkg4APy2yXLEm4fEWCGWC5a.sq_SetCurrentAttackInfo(80);
 lkg4APy2yXLEm4fEWCGWC5a.sq_SetCurrentAttackBonusRate(lkg4APy2yXLEm4fEWCGWC5a.sq_GetBonusRateWithPassive(235, 235, 10, 1.0)); 
 break;
 }
 lkg4APy2yXLEm4fEWCGWC5a.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onProc_fighter_snakecave(EDE4CvsO7QuyHl)
{
 if(!EDE4CvsO7QuyHl) return;
 local P1WGJ7m_Cgg = EDE4CvsO7QuyHl.getSkillSubState(); 
 switch(P1WGJ7m_Cgg)
 {
 case 1:
 case 3:
 local iyAPkgEvly = EDE4CvsO7QuyHl.getCurrentAnimation(); 
 local uQR_9g72J3XhG6fUeMDOU = sq_GetCurrentTime(iyAPkgEvly); 
 local QezfLJKeBTjilte8j = iyAPkgEvly.getDelaySum(false); 
 local HsnByJBE3OhnUn4E4jc = EDE4CvsO7QuyHl.getVar(); 
 local EoeR7u_bT8x4nqVsMnNRj = HsnByJBE3OhnUn4E4jc.get_vector(0); 
 if(EoeR7u_bT8x4nqVsMnNRj != 0)
 {
 local G8FhNZeK9DET3 = sq_GetDistancePos(EoeR7u_bT8x4nqVsMnNRj,
 EDE4CvsO7QuyHl.getDirection(),
 sq_GetUniformVelocity(0, HsnByJBE3OhnUn4E4jc.get_vector(1), uQR_9g72J3XhG6fUeMDOU, QezfLJKeBTjilte8j)); 
 if(EDE4CvsO7QuyHl.isMovablePos(G8FhNZeK9DET3, EDE4CvsO7QuyHl.getYPos())) 
 sq_setCurrentAxisPos(EDE4CvsO7QuyHl, 0, G8FhNZeK9DET3); 
 else
 HsnByJBE3OhnUn4E4jc.set_vector(0,0); 
 }
 if(P1WGJ7m_Cgg == 3)
 {
 local iCJMKhNVta_cEPTvl = sq_GetUniformVelocity(HsnByJBE3OhnUn4E4jc.get_vector(2), 0, uQR_9g72J3XhG6fUeMDOU, QezfLJKeBTjilte8j);
 sq_setCurrentAxisPos(EDE4CvsO7QuyHl, 2, iCJMKhNVta_cEPTvl); 
 }
 break;
 }
} ;

function onKeyFrameFlag_fighter_snakecave(dB2oXUfI0dSy8Y5gB1_B, gQzU9Vm7TC)
{
 if(!dB2oXUfI0dSy8Y5gB1_B) return false;
 local JerO9crK48NJrx5R1u0ARL = dB2oXUfI0dSy8Y5gB1_B.getSkillSubState(); 
 if(gQzU9Vm7TC == 1 && JerO9crK48NJrx5R1u0ARL == 4)
 {
 local MfmESSHmdkXlBlftlG8 = dB2oXUfI0dSy8Y5gB1_B.sq_GetLevelData(235, 9, sq_GetSkillLevel(dB2oXUfI0dSy8Y5gB1_B, 235)); 
 local CpSuw3onLRetCmysWZz6uQW = dB2oXUfI0dSy8Y5gB1_B.getCurrentAnimation();
 local j29wT1mVx0ATEoj = CpSuw3onLRetCmysWZz6uQW.getDelaySum(2, 9); 
 dB2oXUfI0dSy8Y5gB1_B.setTimeEvent(0, j29wT1mVx0ATEoj / MfmESSHmdkXlBlftlG8, MfmESSHmdkXlBlftlG8-1, false); 
 sq_CreateDrawOnlyObject(dB2oXUfI0dSy8Y5gB1_B, "character/fighter/effect/animation/poisonsnake/snakecavecrack_01.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 if(dB2oXUfI0dSy8Y5gB1_B.sq_IsMyControlObject())
 {
 sq_SetMyShake(dB2oXUfI0dSy8Y5gB1_B, 3, 400);
 sq_flashScreen(dB2oXUfI0dSy8Y5gB1_B, 0, 0, 200, 127, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 }
 }
 return true;
} ;

function onTimeEvent_fighter_snakecave(kRTo_mVbkeNnudljqL04Tvh, UG87556aQ1mgiGHYU, nqv2mY7L_uB5tHe8UwkGkd6)
{
 if(!kRTo_mVbkeNnudljqL04Tvh) return false;
 if(UG87556aQ1mgiGHYU == 0)
 kRTo_mVbkeNnudljqL04Tvh.resetHitObjectList(); 
 return false;
} ;

 
function onEndCurrentAni_fighter_snakecave(kRTo_mVbkeNnudljqL04Tvh)
{
 if(!kRTo_mVbkeNnudljqL04Tvh) return;
 if(!kRTo_mVbkeNnudljqL04Tvh.sq_IsMyControlObject()) return;
 local UG87556aQ1mgiGHYU = kRTo_mVbkeNnudljqL04Tvh.getSkillSubState(); 
 switch(UG87556aQ1mgiGHYU)
 {
 case 0:
 kRTo_mVbkeNnudljqL04Tvh.sq_IntVectClear();
 kRTo_mVbkeNnudljqL04Tvh.sq_IntVectPush(UG87556aQ1mgiGHYU + 1); 
 kRTo_mVbkeNnudljqL04Tvh.sq_IntVectPush(
 (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && kRTo_mVbkeNnudljqL04Tvh.getDirection() == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && kRTo_mVbkeNnudljqL04Tvh.getDirection() == ENUM_DIRECTION_RIGHT)
 ? 200 
 : 80 
 ); 
 kRTo_mVbkeNnudljqL04Tvh.sq_AddSetStatePacket(236, STATE_PRIORITY_USER, true); 
 break;
 case 2:
 kRTo_mVbkeNnudljqL04Tvh.sq_IntVectClear();
 kRTo_mVbkeNnudljqL04Tvh.sq_IntVectPush(UG87556aQ1mgiGHYU + 1); 
 kRTo_mVbkeNnudljqL04Tvh.sq_IntVectPush(
 (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && kRTo_mVbkeNnudljqL04Tvh.getDirection() == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && kRTo_mVbkeNnudljqL04Tvh.getDirection() == ENUM_DIRECTION_RIGHT)
 ? 165 
 : 35 
 ); 
 kRTo_mVbkeNnudljqL04Tvh.sq_AddSetStatePacket(236, STATE_PRIORITY_USER, true); 
 break;
 case 1:
 case 3:
 kRTo_mVbkeNnudljqL04Tvh.sq_IntVectClear();
 kRTo_mVbkeNnudljqL04Tvh.sq_IntVectPush(4); 
 kRTo_mVbkeNnudljqL04Tvh.sq_AddSetStatePacket(236, STATE_PRIORITY_USER, true); 
 break;
 case 4:
 kRTo_mVbkeNnudljqL04Tvh.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

