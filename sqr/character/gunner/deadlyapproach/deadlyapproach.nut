
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_gunner_deadlyapproach(lxM2KkDuBOQhR)
{
 if(!lxM2KkDuBOQhR) return false; 
 local psuArGbBouoY2clAHvu = lxM2KkDuBOQhR.sq_IsUseSkill(236); 
 if(psuArGbBouoY2clAHvu) 
 {
 lxM2KkDuBOQhR.sq_IntVectClear();
 lxM2KkDuBOQhR.sq_IntVectPush(0); 
 lxM2KkDuBOQhR.sq_AddSetStatePacket(236, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_gunner_deadlyapproach(lxM2KkDuBOQhR)
{
 if(!lxM2KkDuBOQhR) return false; 
 local psuArGbBouoY2clAHvu = lxM2KkDuBOQhR.sq_GetState(); 
 if(psuArGbBouoY2clAHvu == STATE_STAND) 
 return true; 
 if(psuArGbBouoY2clAHvu == STATE_ATTACK) 
 {
 return lxM2KkDuBOQhR.sq_IsCommandEnable(236); 
 }
 return true; 
} ;

 
function onSetState_gunner_deadlyapproach(GNwHN9o7zA, Sk6nYn81GrxbAV, kTbiDnTL6NDFvtTwaB, M46uOO8uVKijlZhJYQeMA)
{
 if(!GNwHN9o7zA) return; 
 GNwHN9o7zA.sq_StopMove(); 
 local T0QZDRGq19m = GNwHN9o7zA.sq_GetVectorData(kTbiDnTL6NDFvtTwaB, 0); 
 GNwHN9o7zA.setSkillSubState(T0QZDRGq19m); 
 switch(T0QZDRGq19m)
 {
 case 0:
 GNwHN9o7zA.sq_SetCurrentAnimation(114); 
 
 sq_SetCurrentDirection(sq_CreateDrawOnlyObject(GNwHN9o7zA, "character/gunner/effect/animation/deadlyapproach/deadlyapproach_start_dusta.ani", ENUM_DRAWLAYER_NORMAL, true), sq_GetOppositeDirection(GNwHN9o7zA.getDirection())); 
 break;
 case 1:
 GNwHN9o7zA.sq_SetCurrentAnimation(115); 
 GNwHN9o7zA.setDirection(sq_GetOppositeDirection(GNwHN9o7zA.getDirection())); 
 break;
 case 2:
 GNwHN9o7zA.sq_SetCurrentAnimation(116); 
 sq_SetZVelocity(GNwHN9o7zA, -300, -300); 
 GNwHN9o7zA.sq_SetStaticMoveInfo(0, 480, 480, false); 
 GNwHN9o7zA.sq_SetStaticMoveInfo(1, 0, 0, false); 
 GNwHN9o7zA.sq_SetMoveDirection(sq_GetOppositeDirection(GNwHN9o7zA.getDirection()), ENUM_DIRECTION_NEUTRAL); 
 break;
 case 3:
 GNwHN9o7zA.sq_SetCurrentAnimation(117); 
 
 sq_CreateDrawOnlyObject(GNwHN9o7zA, "character/gunner/effect/animation/deadlyapproach/deadlyapproach_end_dustback.ani", ENUM_DRAWLAYER_NORMAL, true);
 break;
 }
} ;

 
function onKeyFrameFlag_gunner_deadlyapproach(n9W2Vaa5fbFODpbf, TtV8e7otpy4jw_M2k)
{
 if(!n9W2Vaa5fbFODpbf) return false;
 local sUvWv5s8gJhpYfmCSv8iu = n9W2Vaa5fbFODpbf.getSkillSubState(); 
 switch(sUvWv5s8gJhpYfmCSv8iu)
 {
 case 0:
 if(TtV8e7otpy4jw_M2k == 1)
 {
 sq_SetMyShake(n9W2Vaa5fbFODpbf, 3, 100); 
 sq_SetZVelocity(n9W2Vaa5fbFODpbf, 250, 250); 
 if(n9W2Vaa5fbFODpbf.sq_IsMyControlObject())
 {
 local hGR5uUwnGY = n9W2Vaa5fbFODpbf.getDirection(); 
 
 local WaOBMOJG3AzH_m = (hGR5uUwnGY == ENUM_DIRECTION_LEFT && sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)
 || hGR5uUwnGY == ENUM_DIRECTION_RIGHT && sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
 ? 930
 : 600; 
 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1);
 sq_BinaryWriteDword(WaOBMOJG3AzH_m);
 sq_BinaryWriteWord(hGR5uUwnGY);
 sq_SendChangeSkillEffectPacket(n9W2Vaa5fbFODpbf, 236); 
 }
 }
 break;
 case 1:
 if(n9W2Vaa5fbFODpbf.sq_IsMyControlObject())
 {
 
 sq_flashScreen(n9W2Vaa5fbFODpbf, 0, 80, 0, 25, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 n9W2Vaa5fbFODpbf.sq_StartWrite();
 n9W2Vaa5fbFODpbf.sq_WriteDword(236); 
 n9W2Vaa5fbFODpbf.sq_WriteDword(n9W2Vaa5fbFODpbf.sq_GetBonusRateWithPassive(236, 236, 0, 1.0)); 
 n9W2Vaa5fbFODpbf.sq_SendCreatePassiveObjectPacket(24371, 0, 11, 0, 15); 
 }
 if(TtV8e7otpy4jw_M2k == 1) 
 {
 sq_SetZVelocity(n9W2Vaa5fbFODpbf, 25, 25); 
 n9W2Vaa5fbFODpbf.sq_SetStaticMoveInfo(0, 240, 240, false); 
 n9W2Vaa5fbFODpbf.sq_SetStaticMoveInfo(1, 0, 0, false); 
 n9W2Vaa5fbFODpbf.sq_SetMoveDirection(sq_GetOppositeDirection(n9W2Vaa5fbFODpbf.getDirection()), ENUM_DIRECTION_NEUTRAL); 
 }
 break;
 }
 return true;
} ;

 
function onProcCon_gunner_deadlyapproach(d_Ru0gCCOqz1reZ8EKjqU8nX)
{
 if(!d_Ru0gCCOqz1reZ8EKjqU8nX) return;
 local Sd3ibfZrLJ9OQiW8 = d_Ru0gCCOqz1reZ8EKjqU8nX.getSkillSubState(); 
 if(Sd3ibfZrLJ9OQiW8 == 2) 
 {
 if(d_Ru0gCCOqz1reZ8EKjqU8nX.getZPos() <= 0) 
 {
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_IntVectClear();
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_IntVectPush(3); 
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_AddSetStatePacket(236, STATE_PRIORITY_USER, true); 
 return; 
 }
 }
} ;

 
function onEndCurrentAni_gunner_deadlyapproach(d_Ru0gCCOqz1reZ8EKjqU8nX)
{
 if(!d_Ru0gCCOqz1reZ8EKjqU8nX) return;
 local Sd3ibfZrLJ9OQiW8 = d_Ru0gCCOqz1reZ8EKjqU8nX.getSkillSubState(); 
 switch(Sd3ibfZrLJ9OQiW8)
 {
 case 0:
 case 1:
 if(d_Ru0gCCOqz1reZ8EKjqU8nX.sq_IsMyControlObject())
 {
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_IntVectClear();
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_IntVectPush(Sd3ibfZrLJ9OQiW8 + 1); 
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_AddSetStatePacket(236, STATE_PRIORITY_USER, true); 
 }
 break;
 case 3:
 d_Ru0gCCOqz1reZ8EKjqU8nX.setDirection(sq_GetOppositeDirection(d_Ru0gCCOqz1reZ8EKjqU8nX.getDirection())); 
 if(d_Ru0gCCOqz1reZ8EKjqU8nX.sq_IsMyControlObject())
 d_Ru0gCCOqz1reZ8EKjqU8nX.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

function onChangeSkillEffect_gunner_deadlyapproach(OxJ176kStrwa1OykCytqdY, z6EYed4aCW6xmV8G7pH95, QoPmDKH9nlMOlVck)
{
 if(!OxJ176kStrwa1OykCytqdY) return;
 switch(z6EYed4aCW6xmV8G7pH95)
 {
 case 236:
 local cqXiAVtIvDl7J = QoPmDKH9nlMOlVck.readWord(); 
 switch(cqXiAVtIvDl7J)
 {
 case 1:
 local WOBEaVRWrcD2TcLzro = QoPmDKH9nlMOlVck.readDword(); 
 local rh_w9DdcZy5d2ICz_vp = QoPmDKH9nlMOlVck.readWord(); 
 OxJ176kStrwa1OykCytqdY.sq_SetStaticMoveInfo(0, WOBEaVRWrcD2TcLzro, WOBEaVRWrcD2TcLzro, false); 
 OxJ176kStrwa1OykCytqdY.sq_SetStaticMoveInfo(1, 0, 0, false); 
 OxJ176kStrwa1OykCytqdY.sq_SetMoveDirection(rh_w9DdcZy5d2ICz_vp, ENUM_DIRECTION_NEUTRAL); 
 break;
 }
 break;
 }
} ;
