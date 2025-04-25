
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function checkExecutableSkill_swordman_vajra(aJn_uo1Sgx)
{
 if(!aJn_uo1Sgx) return false; 
 
 local ooqw6d2EB5gn1D = onGetMyPassiveObject_My(aJn_uo1Sgx, 24370, 243, 0); 
 if(ooqw6d2EB5gn1D)
 {
 if(ooqw6d2EB5gn1D.getState() == 11) 
 {
 local OsqmN253cSauvUhwWoy = sq_GetGlobalIntVector();
 sq_IntVectorClear(OsqmN253cSauvUhwWoy);
 sq_IntVectorPush(OsqmN253cSauvUhwWoy, sq_GetDistancePos(aJn_uo1Sgx.getXPos(), aJn_uo1Sgx.getDirection(), 165)); 
 sq_IntVectorPush(OsqmN253cSauvUhwWoy, aJn_uo1Sgx.getYPos()); 
 ooqw6d2EB5gn1D.addSetStatePacket(12, OsqmN253cSauvUhwWoy, STATE_PRIORITY_AUTO, false, ""); 
 aJn_uo1Sgx.sq_IntVectClear();
 aJn_uo1Sgx.sq_IntVectPush(2); 
 aJn_uo1Sgx.sq_AddSetStatePacket(243, STATE_PRIORITY_USER, true); 
 }
 return false;
 }
 local hh6HLN98MGovrTTUQH = aJn_uo1Sgx.sq_IsUseSkill(243); 
 if(hh6HLN98MGovrTTUQH) 
 {
 aJn_uo1Sgx.sq_IntVectClear();
 aJn_uo1Sgx.sq_IntVectPush(1); 
 aJn_uo1Sgx.sq_AddSetStatePacket(243, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_swordman_vajra(hvq_dwmWHsczh)
{
 if(!hvq_dwmWHsczh) return false; 
 local E8QZE3IRf4PiLX807cLZKj = hvq_dwmWHsczh.sq_GetState(); 
 if(E8QZE3IRf4PiLX807cLZKj == STATE_STAND) 
 return true; 
 if(E8QZE3IRf4PiLX807cLZKj == STATE_ATTACK) 
 {
 return hvq_dwmWHsczh.sq_IsCommandEnable(243); 
 }
 return true; 
} ;


 
function onSetState_swordman_vajra(hvq_dwmWHsczh, E8QZE3IRf4PiLX807cLZKj, T7z1C6Tn8FkejJxl, RY85i5aUlHr_Eb1)
{
 if(!hvq_dwmWHsczh) return; 
 hvq_dwmWHsczh.sq_StopMove(); 
 local P0D92FbAvQx = hvq_dwmWHsczh.sq_GetVectorData(T7z1C6Tn8FkejJxl, 0); 
 if(P0D92FbAvQx == 1) 
 {
 hvq_dwmWHsczh.sq_SetCurrentAnimation(161); 
 
 sq_CreateDrawOnlyObject(hvq_dwmWHsczh, "character/swordman/effect/animation/vajra/vajra_start_06_hand_lightning_b.ani", ENUM_DRAWLAYER_NORMAL, true);
 if(hvq_dwmWHsczh.sq_IsMyControlObject())
 {
 local SPqT2vawofo28szo = sq_GetSkillLevel(hvq_dwmWHsczh, 243); 
 
 hvq_dwmWHsczh.sq_StartWrite();
 hvq_dwmWHsczh.sq_WriteDword(243); 
 hvq_dwmWHsczh.sq_WriteDword(0); 
 hvq_dwmWHsczh.sq_WriteDword(hvq_dwmWHsczh.sq_GetBonusRateWithPassive(243, 243, 0, 1.0)); 
 hvq_dwmWHsczh.sq_WriteDword(hvq_dwmWHsczh.sq_GetBonusRateWithPassive(243, 243, 1, 1.0)); 
 hvq_dwmWHsczh.sq_WriteDword(hvq_dwmWHsczh.sq_GetBonusRateWithPassive(243, 243, 2, 1.0)); 
 hvq_dwmWHsczh.sq_WriteDword(sq_GetLevelData(hvq_dwmWHsczh, 243, 3, SPqT2vawofo28szo)); 
 hvq_dwmWHsczh.sq_WriteDword(sq_GetLevelData(hvq_dwmWHsczh, 243, 4, SPqT2vawofo28szo)); 
 hvq_dwmWHsczh.sq_WriteDword(sq_GetLevelData(hvq_dwmWHsczh, 243, 5, SPqT2vawofo28szo)); 
 hvq_dwmWHsczh.sq_WriteDword(sq_GetLevelData(hvq_dwmWHsczh, 243, 6, SPqT2vawofo28szo)); 
 hvq_dwmWHsczh.sq_WriteDword(sq_GetLevelData(hvq_dwmWHsczh, 243, 7, SPqT2vawofo28szo)); 
 hvq_dwmWHsczh.sq_WriteDword(sq_GetLevelData(hvq_dwmWHsczh, 243, 8, SPqT2vawofo28szo)); 
 hvq_dwmWHsczh.sq_WriteDword(sq_GetLevelData(hvq_dwmWHsczh, 243, 9, SPqT2vawofo28szo)); 
 hvq_dwmWHsczh.sq_WriteDword(sq_GetLevelData(hvq_dwmWHsczh, 243, 10, SPqT2vawofo28szo)); 
 hvq_dwmWHsczh.sq_WriteDword(sq_GetLevelData(hvq_dwmWHsczh, 243, 11, SPqT2vawofo28szo)); 
 hvq_dwmWHsczh.sq_WriteDword(hvq_dwmWHsczh.sq_GetBonusRateWithPassive(243, 243, 12, 1.0)); 
 hvq_dwmWHsczh.sq_WriteDword(sq_GetLevelData(hvq_dwmWHsczh, 243, 13, SPqT2vawofo28szo)); 
 hvq_dwmWHsczh.sq_SendCreatePassiveObjectPacket(24370, 0, 0, 0, 350); 
 }
 hvq_dwmWHsczh.sq_PlaySound("SM_VAJRA"); 
 hvq_dwmWHsczh.sq_PlaySound("VAJRA_CLOUD"); 
 }
 else if(P0D92FbAvQx == 2) 
 {
 hvq_dwmWHsczh.sq_SetCurrentAnimation(162); 
 }
 hvq_dwmWHsczh.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;


 
function onEndCurrentAni_swordman_vajra(tderjy9h9NwFLDXXP9Gptm)
{
 if(!tderjy9h9NwFLDXXP9Gptm) return; 
 if(!tderjy9h9NwFLDXXP9Gptm.sq_IsMyControlObject()) return;
 tderjy9h9NwFLDXXP9Gptm.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

