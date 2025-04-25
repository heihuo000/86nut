
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

S_DISASTER_0 <- 0
S_DISASTER_1 <- 1
S_DISASTER_2 <- 2
S_DISASTER_3 <- 3
S_DISASTER_4 <- 4

 
 
 
 
 
 
 


SD_I_DAMAGE_INC <- 0  
SD_I_AWAKENING_INC <- 1  
SD_I_TARGET_TIME <- 2  
SD_I_TARGET_MOV_X <- 3  
SD_I_TARGET_MOV_Y <- 4  
SD_I_TARGET_SUCK_LEN <- 5  
SD_I_TARGET_SUCK_VEL <- 6  



 
function checkExecutableSkill_DisasterEx(gwHNU3cveUt5iLc6QC) 
{
 if(!gwHNU3cveUt5iLc6QC) return false;
 local jJR8ULEJ7vwsyGnnTvtMtp = gwHNU3cveUt5iLc6QC.sq_IsUseSkill(134);
 if(jJR8ULEJ7vwsyGnnTvtMtp) {
 gwHNU3cveUt5iLc6QC.sq_IntVectClear();
 gwHNU3cveUt5iLc6QC.sq_IntVectPush(0); 
 gwHNU3cveUt5iLc6QC.sq_IntVectPush(gwHNU3cveUt5iLc6QC.getDirection()); 
 gwHNU3cveUt5iLc6QC.sq_addSetStatePacket(74, STATE_PRIORITY_IGNORE_FORCE, true);
 return true;
 } 
 
 return false;
} ;

 
function checkCommandEnable_DisasterEx(r2KwS74sbpC)
{
 if(!r2KwS74sbpC) return false;
 
 local DDKKPe3ndmmi51B = r2KwS74sbpC.sq_GetSTATE();
 
 if(DDKKPe3ndmmi51B == STATE_ATTACK) {
 return r2KwS74sbpC.sq_IsCommandEnable(134); 
 }
 
 
 return true;
} ;

 
function onSetState_DisasterEx(nv2BLKWw3dTObirq1WLn26GA, Vyyk4Uqdet0DKwJnTzD3B, lFOTuHHCfPorV, zSMIzss2rgwj2_hR2U)
{ 
 if(!nv2BLKWw3dTObirq1WLn26GA) return;
 local PClAkhdniLixRttwXc4WW = nv2BLKWw3dTObirq1WLn26GA.getVar();
 local jmplKFHvAIWkiUX0ni7G3qC = nv2BLKWw3dTObirq1WLn26GA.sq_getVectorData(lFOTuHHCfPorV, 0); 
 local RwGHv8N6wDEZkMmmAD7WZeB = nv2BLKWw3dTObirq1WLn26GA.sq_getVectorData(lFOTuHHCfPorV, 1); 
 nv2BLKWw3dTObirq1WLn26GA.setSkillSubState(jmplKFHvAIWkiUX0ni7G3qC); 
 nv2BLKWw3dTObirq1WLn26GA.sq_stopMove();
 
 
 PClAkhdniLixRttwXc4WW.clear_vector();
 PClAkhdniLixRttwXc4WW.push_vector(0); 
 PClAkhdniLixRttwXc4WW.push_vector(0);
 PClAkhdniLixRttwXc4WW.push_vector(0);
 
 
 local gZBGzHK8ThXY_0_EAx = nv2BLKWw3dTObirq1WLn26GA.getXPos();
 local Q41mmPm3i2a1d = nv2BLKWw3dTObirq1WLn26GA.getYPos();
 local dbRwqRdVzy14Z = nv2BLKWw3dTObirq1WLn26GA.getZPos();
 
 
 
 
 
 
 nv2BLKWw3dTObirq1WLn26GA.sq_setCurrentAttackInfo(95);
 
 local DFvLgBlxuag4CSm6pg = 1.0;
 
 
 
 if(isAvengerAwakenning(nv2BLKWw3dTObirq1WLn26GA)) {
 local bSzfkQLXQEDnxJ_acv = nv2BLKWw3dTObirq1WLn26GA.sq_getIntData(134, 0); 
 local IjDSipF5OEddVRblF = bSzfkQLXQEDnxJ_acv.tofloat() / 100.0;
 print("\n inc_rate:" + IjDSipF5OEddVRblF);
 DFvLgBlxuag4CSm6pg += IjDSipF5OEddVRblF;
 }
 
 nv2BLKWw3dTObirq1WLn26GA.stopSound(7575);
 nv2BLKWw3dTObirq1WLn26GA.sq_setAttackPowerWithPassive(134, Vyyk4Uqdet0DKwJnTzD3B, -1, 0, DFvLgBlxuag4CSm6pg);
 
 if(jmplKFHvAIWkiUX0ni7G3qC == 0) {
 if(isAvengerAwakenning(nv2BLKWw3dTObirq1WLn26GA)) {
 local c4ov3ZLxDCyVj = nv2BLKWw3dTObirq1WLn26GA.getVar().GetAnimationMap("Disaster1", "Character/Priest/Animation/disasterEx/Disaster1.ani"); 
 nv2BLKWw3dTObirq1WLn26GA.setCurrentAnimation(c4ov3ZLxDCyVj);
 local TJS8U0e3Tx9 = CNSquirrelAppendage.sq_AppendAppendage(nv2BLKWw3dTObirq1WLn26GA, nv2BLKWw3dTObirq1WLn26GA, 119, false, "Appendage/Character/ap_avenger_awakening.nut", false);
 if(TJS8U0e3Tx9) { 
 local suKVBfw45lw7fL = nv2BLKWw3dTObirq1WLn26GA.sq_getSkillLevel(119);
 local HnZJFwiD5LhDF4dkGdDYETJ = sq_GetLevelData(nv2BLKWw3dTObirq1WLn26GA, 119, 0, suKVBfw45lw7fL);
 local XAdM8YTDG8jvDYf6VxS3nWh0 = nv2BLKWw3dTObirq1WLn26GA.sq_getIntData(134, 1); 
 TJS8U0e3Tx9.sq_var.set_vector(0, HnZJFwiD5LhDF4dkGdDYETJ + XAdM8YTDG8jvDYf6VxS3nWh0);
 TJS8U0e3Tx9.sq_SetValidTime(HnZJFwiD5LhDF4dkGdDYETJ + XAdM8YTDG8jvDYf6VxS3nWh0); 
 }
 }
 else {
 nv2BLKWw3dTObirq1WLn26GA.sq_setCurrentAnimation(117);
 }
 
 local qgSWru9OCN3HpTktTMYT = nv2BLKWw3dTObirq1WLn26GA.sq_getCurrentAni(); 
 }
 else if(jmplKFHvAIWkiUX0ni7G3qC == 1) {
 nv2BLKWw3dTObirq1WLn26GA.sq_setShake(nv2BLKWw3dTObirq1WLn26GA, 3, 160);
 
 if(isAvengerAwakenning(nv2BLKWw3dTObirq1WLn26GA)) {
 
 local c4ov3ZLxDCyVj = nv2BLKWw3dTObirq1WLn26GA.getVar().GetAnimationMap("Disaster2", "Character/Priest/Animation/disasterEx/Disaster2.ani");
 nv2BLKWw3dTObirq1WLn26GA.setCurrentAnimation(c4ov3ZLxDCyVj);
 }
 else {
 nv2BLKWw3dTObirq1WLn26GA.sq_setCurrentAnimation(118);
 }
 
 local jiRKpJCRAdZdyDVx8uCx = nv2BLKWw3dTObirq1WLn26GA.sq_getCurrentAni();
 
 local Dl3vqsxhFg1GzUg5omNc = gZBGzHK8ThXY_0_EAx;
 local Y0dS17t5A0Xd_WHQa8x = Q41mmPm3i2a1d;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 local sNMLmF6ngKIN_37k = nv2BLKWw3dTObirq1WLn26GA.sq_getIntData(134, 3); 
 local G9typ3f8kz4mvMjz4jT2 = nv2BLKWw3dTObirq1WLn26GA.sq_getIntData(134, 4); 
 nv2BLKWw3dTObirq1WLn26GA.sq_addAttractAimPointMark(Dl3vqsxhFg1GzUg5omNc, Y0dS17t5A0Xd_WHQa8x, sNMLmF6ngKIN_37k, G9typ3f8kz4mvMjz4jT2);
 
 
 local at1UOXpVdBzfXm_uw = nv2BLKWw3dTObirq1WLn26GA.sq_getIntData(134, 5); 
 local CWP8p1MZLucVRxhwmCrmW94 = nv2BLKWw3dTObirq1WLn26GA.sq_getIntData(134, 6); 
 nv2BLKWw3dTObirq1WLn26GA.sq_setAttractAimInfo(CWP8p1MZLucVRxhwmCrmW94, CWP8p1MZLucVRxhwmCrmW94, at1UOXpVdBzfXm_uw / 2, 180);
 
 
 
 }
 else if(jmplKFHvAIWkiUX0ni7G3qC == 2) {
 
 
 nv2BLKWw3dTObirq1WLn26GA.sq_setCurrentAttackInfo(95);
 
 if(isAvengerAwakenning(nv2BLKWw3dTObirq1WLn26GA)) {
 
 local c4ov3ZLxDCyVj = nv2BLKWw3dTObirq1WLn26GA.getVar().GetAnimationMap("Disaster3", "Character/Priest/Animation/disasterEx/Disaster3.ani");
 nv2BLKWw3dTObirq1WLn26GA.setCurrentAnimation(c4ov3ZLxDCyVj);
 }
 else {
 nv2BLKWw3dTObirq1WLn26GA.sq_setCurrentAnimation(119);
 }
 
 nv2BLKWw3dTObirq1WLn26GA.sq_PlaySound("DISASTER_CIRCLE_LOOP", 7575);
 
 }
 else if(jmplKFHvAIWkiUX0ni7G3qC == 3) {
 
 if(isAvengerAwakenning(nv2BLKWw3dTObirq1WLn26GA)) {
 
 local c4ov3ZLxDCyVj = nv2BLKWw3dTObirq1WLn26GA.getVar().GetAnimationMap("Disaster4", "Character/Priest/Animation/disasterEx/Disaster4.ani");
 nv2BLKWw3dTObirq1WLn26GA.setCurrentAnimation(c4ov3ZLxDCyVj);
 }
 else {
 nv2BLKWw3dTObirq1WLn26GA.sq_setCurrentAnimation(120);
 }
 
 
 }
 else if(jmplKFHvAIWkiUX0ni7G3qC == 4) {
 if(isAvengerAwakenning(nv2BLKWw3dTObirq1WLn26GA)) {
 
 local c4ov3ZLxDCyVj = nv2BLKWw3dTObirq1WLn26GA.getVar().GetAnimationMap("Disaster5", "Character/Priest/Animation/disasterEx/Disaster5.ani");
 nv2BLKWw3dTObirq1WLn26GA.setCurrentAnimation(c4ov3ZLxDCyVj);
 }
 else {
 nv2BLKWw3dTObirq1WLn26GA.sq_setCurrentAnimation(121);
 }
 }
} ;

 
 

function onAfterSetState_DisasterEx(YpOuYSijDz, JSlDJAW4xTPRnLMHfjB, vnNJpzfOvsVjHW5W0kK, kb6jZUqgIBX_GKqiFRl)
{
 if(!YpOuYSijDz) return;
} ;

 
function onBeforeAttack_DisasterEx(hc7xTVphUu6H5YDn, wuEQjr6qAPGpLJLBnbm, yGGF5tuIbKmmPJB)
{
 
} ;



 
function onProc_DisasterEx(_UbOR5sfm2WGhLSiQllAx)
{
 if(!_UbOR5sfm2WGhLSiQllAx) return;
 
 local JUlxTreD2os = _UbOR5sfm2WGhLSiQllAx.getSkillSubState();
 
 local sHiKZ4tt2IFN = _UbOR5sfm2WGhLSiQllAx.getXPos();
 local uUQ2Q3viLLJ = _UbOR5sfm2WGhLSiQllAx.getYPos();
 local il7wG0ozuTV0P = _UbOR5sfm2WGhLSiQllAx.getZPos();
 
 local zcu57XxgvnEAlyJLdB = _UbOR5sfm2WGhLSiQllAx.getVar();
 local YAR73yIxcJxAQp0Y = _UbOR5sfm2WGhLSiQllAx.sq_getCurrentAni();
 local qDSNDSBmQ3 = _UbOR5sfm2WGhLSiQllAx.sq_ani_GetCurrentFrameIndex(YAR73yIxcJxAQp0Y);
 local eThiMW8JSgrJjhMm1G = sq_GetCurrentTime(YAR73yIxcJxAQp0Y);
 
 if(JUlxTreD2os == 0) {
 }
 else if(JUlxTreD2os == 1) {
 if(qDSNDSBmQ3 >= 0) {
 local vlmHJQrzJM = zcu57XxgvnEAlyJLdB.get_vector(0);
 if(!vlmHJQrzJM) {
 local Ezw9lLjrS_wqVEGBanFw = CNSquirrelAppendage.sq_AppendAppendage(_UbOR5sfm2WGhLSiQllAx, _UbOR5sfm2WGhLSiQllAx, 134, true, "Appendage/Character/ap_avenger_effect.nut", true);
 zcu57XxgvnEAlyJLdB.set_vector(0, 1);
 }
 }
 
 }
 else if(JUlxTreD2os == 2) {
 local GnT5zHmOD7pK3KAYiN78G32 = _UbOR5sfm2WGhLSiQllAx.sq_getStateTimer(); 
 
 
 
 
 
 
 
 
 local gTr2TZC2GDFCb = _UbOR5sfm2WGhLSiQllAx.sq_getIntData(134, 2); 
 
 
 
 if(GnT5zHmOD7pK3KAYiN78G32 > (gTr2TZC2GDFCb - 750)) {
 local vlmHJQrzJM = zcu57XxgvnEAlyJLdB.get_vector(1);
 if(!vlmHJQrzJM) { 
 local h2QU37OvhG = _UbOR5sfm2WGhLSiQllAx.getXPos();
 local Yb3Zeu2o3J6t_3io3qdBDk = _UbOR5sfm2WGhLSiQllAx.getYPos();
 local lKsdST4g8t9lal7YEoQOtwHQ = _UbOR5sfm2WGhLSiQllAx.sq_getAttractAimPosX(h2QU37OvhG,Yb3Zeu2o3J6t_3io3qdBDk, false);
 local GHYd2Z39nP2LCoT_kMM = _UbOR5sfm2WGhLSiQllAx.sq_getAttractAimPosY(h2QU37OvhG,Yb3Zeu2o3J6t_3io3qdBDk, false) + 2;
 
 print("\n posX:" + sHiKZ4tt2IFN + " posY:" + uUQ2Q3viLLJ + " aimposX:" + lKsdST4g8t9lal7YEoQOtwHQ + " aimposY:" + GHYd2Z39nP2LCoT_kMM);
 sq_MoveToNearMovablePos(_UbOR5sfm2WGhLSiQllAx, lKsdST4g8t9lal7YEoQOtwHQ, GHYd2Z39nP2LCoT_kMM, 0, h2QU37OvhG, Yb3Zeu2o3J6t_3io3qdBDk, il7wG0ozuTV0P, 200, -1, 3);
 _UbOR5sfm2WGhLSiQllAx.sq_removeAttractAimPointMark();
 zcu57XxgvnEAlyJLdB.set_vector(1, 1);
 }
 }
 
 if(GnT5zHmOD7pK3KAYiN78G32 > gTr2TZC2GDFCb) {
 _UbOR5sfm2WGhLSiQllAx.sq_IntVectClear();
 _UbOR5sfm2WGhLSiQllAx.sq_IntVectPush(3);
 _UbOR5sfm2WGhLSiQllAx.sq_IntVectPush(_UbOR5sfm2WGhLSiQllAx.getDirection()); 
 _UbOR5sfm2WGhLSiQllAx.sq_addSetStatePacket(74, STATE_PRIORITY_IGNORE_FORCE, true);
 }
 
 } 
 else if(JUlxTreD2os == 3) {
 if(qDSNDSBmQ3 >= 5) {
 local vlmHJQrzJM = zcu57XxgvnEAlyJLdB.get_vector(0);
 if(!vlmHJQrzJM) {
 
 
 
 
 local D4FO0VPFrJS0HNPKirKhF = 1.0;
 if(isAvengerAwakenning(_UbOR5sfm2WGhLSiQllAx)) {
 local q7qpHQhLRSpw7LP3Yi = _UbOR5sfm2WGhLSiQllAx.sq_getIntData(134, 0); 
 local NBe_AqLOeH = q7qpHQhLRSpw7LP3Yi.tofloat() / 100.0;
 D4FO0VPFrJS0HNPKirKhF += NBe_AqLOeH;
 }
 
 local dXNw4UbI79gs = _UbOR5sfm2WGhLSiQllAx.sq_getBonusRateWithPassive(134, 74, 1, D4FO0VPFrJS0HNPKirKhF);
 
 _UbOR5sfm2WGhLSiQllAx.sq_binaryData_startWrite();
 _UbOR5sfm2WGhLSiQllAx.sq_binaryData_writeDword(dXNw4UbI79gs);
 _UbOR5sfm2WGhLSiQllAx.sq_p00_sendCreatePassiveObjectPacket(24109, 0, 0, 0, 0); 
 
 
 if(isAvengerAwakenning(_UbOR5sfm2WGhLSiQllAx)) {
 
 local _ORKK8rmQfKW = zcu57XxgvnEAlyJLdB.GetparticleCreaterMap("GuillotineSub6", "Character/Priest/Effect/Particle/DisasterStonsSmall.ptl", _UbOR5sfm2WGhLSiQllAx);
 _ORKK8rmQfKW.Restart(0);
 
 _ORKK8rmQfKW.SetPos(sHiKZ4tt2IFN, uUQ2Q3viLLJ, il7wG0ozuTV0P);
 sq_AddParticleObject(_UbOR5sfm2WGhLSiQllAx, _ORKK8rmQfKW);
 
 _UbOR5sfm2WGhLSiQllAx.sq_PlaySound("PR_DGUARDIAN_DISASTER"); 
 }
 else { 
 _UbOR5sfm2WGhLSiQllAx.sq_PlaySound("PR_DISASTER"); 
 }
 
 local uk9BLe2xvhrVG2bNqZmW0M = sq_flashScreen(_UbOR5sfm2WGhLSiQllAx,0,320,320,200, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 _UbOR5sfm2WGhLSiQllAx.sq_setShake(_UbOR5sfm2WGhLSiQllAx, 6, 320);
 _UbOR5sfm2WGhLSiQllAx.sq_removeAttractAimPointMark();
 zcu57XxgvnEAlyJLdB.set_vector(0, 1);
 }
 }
 
 } 
 else if(JUlxTreD2os == 4) {
 } 
 
 
 
 if(JUlxTreD2os == 4) {
 if(qDSNDSBmQ3 >= 4) {
 local vlmHJQrzJM = zcu57XxgvnEAlyJLdB.get_vector(0);
 if(!vlmHJQrzJM) {
 local Ezw9lLjrS_wqVEGBanFw = CNSquirrelAppendage.sq_AppendAppendage(_UbOR5sfm2WGhLSiQllAx, _UbOR5sfm2WGhLSiQllAx, 134, true, "Appendage/Character/ap_avenger_effect.nut", true);
 zcu57XxgvnEAlyJLdB.set_vector(0, 1);
 }
 }
 }
 
 
} ;

 
function onProcCon_DisasterEx(IkAmfDjH3AfEKBMzyAupT5To)
{
 if(!IkAmfDjH3AfEKBMzyAupT5To) return;
 local xqNkhgtBC5 = IkAmfDjH3AfEKBMzyAupT5To.sq_getCurrentAni();
 local wWThbxKbJYzT0kRLVeabFlcM = IkAmfDjH3AfEKBMzyAupT5To.sq_ani_IsEnd(xqNkhgtBC5);
 local ngTd9YBL1kY6LFqt6lg = IkAmfDjH3AfEKBMzyAupT5To.sq_ani_GetCurrentFrameIndex(xqNkhgtBC5);
 local WN_DboSQn9Q5TF46rwI0bDM = IkAmfDjH3AfEKBMzyAupT5To.getVar();
 
 local _S4h9oI_64 = IkAmfDjH3AfEKBMzyAupT5To.getSkillSubState();
 
 if(_S4h9oI_64 == 1) {
 }
 else if(_S4h9oI_64 == 2) {
 }
 else if(_S4h9oI_64 == 3) {
 }
 
 if(wWThbxKbJYzT0kRLVeabFlcM) {
 if(_S4h9oI_64 == 0) {
 IkAmfDjH3AfEKBMzyAupT5To.sq_IntVectClear();
 IkAmfDjH3AfEKBMzyAupT5To.sq_IntVectPush(1);
 IkAmfDjH3AfEKBMzyAupT5To.sq_IntVectPush(IkAmfDjH3AfEKBMzyAupT5To.getDirection()); 
 IkAmfDjH3AfEKBMzyAupT5To.sq_addSetStatePacket(74, STATE_PRIORITY_IGNORE_FORCE, true);
 }
 else if(_S4h9oI_64 == 1) {
 IkAmfDjH3AfEKBMzyAupT5To.sq_IntVectClear();
 IkAmfDjH3AfEKBMzyAupT5To.sq_IntVectPush(2);
 IkAmfDjH3AfEKBMzyAupT5To.sq_IntVectPush(IkAmfDjH3AfEKBMzyAupT5To.getDirection()); 
 IkAmfDjH3AfEKBMzyAupT5To.sq_addSetStatePacket(74, STATE_PRIORITY_IGNORE_FORCE, true);
 }
 else if(_S4h9oI_64 == 2) {
 }
 else if(_S4h9oI_64 == 3) {
 IkAmfDjH3AfEKBMzyAupT5To.sq_IntVectClear();
 IkAmfDjH3AfEKBMzyAupT5To.sq_IntVectPush(4);
 IkAmfDjH3AfEKBMzyAupT5To.sq_IntVectPush(IkAmfDjH3AfEKBMzyAupT5To.getDirection()); 
 IkAmfDjH3AfEKBMzyAupT5To.sq_addSetStatePacket(74, STATE_PRIORITY_IGNORE_FORCE, true);
 }
 else if(_S4h9oI_64 == 4) {
 IkAmfDjH3AfEKBMzyAupT5To.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 }
 }
} ;

 
function onEndState_DisasterEx(jGj_EF7i9JNbZk, qA7UVprpnl)
{
 if(!jGj_EF7i9JNbZk) return;
 if(qA7UVprpnl != 74) {
 jGj_EF7i9JNbZk.sq_removeAttractAimPointMark();
 }
 jGj_EF7i9JNbZk.stopSound(7575);
} ;

 
function onAttack_DisasterEx(__JrWB9u2RlbrT1AYmK, dVX7SEbC_l, Bx8eA7AITO9HZ0TUjR)
{
 
} ;

 
function onAfterAttack_DisasterEx(__JrWB9u2RlbrT1AYmK, dVX7SEbC_l, Bx8eA7AITO9HZ0TUjR)
{
 
} ;

 
function onBeforeDamage_DisasterEx(AqylQ7wtBhBbbK1lQ_3wqRxU, zlaLdSdZPZ, wxFV9pRp64VMSUgNCRH4IQhe)
{
 
} ;

 
function onDamage_DisasterEx(AqylQ7wtBhBbbK1lQ_3wqRxU, zlaLdSdZPZ, wxFV9pRp64VMSUgNCRH4IQhe)
{
 
} ;

 
function onAfterDamage_DisasterEx(tYlrIJO5zzYKssgDZhLqK9, iIuAzBXOgyNbjy2okpXp, jwqkAj9LMRMVC)
{
 
} ;

function getScrollBasisPos_DisasterEx(HJLkU0A4fy9J)
{
 if(!HJLkU0A4fy9J) return;
 
 local EfxGJ3oDLpPM1YZJGCH = HJLkU0A4fy9J.getSkillSubState();
 if(EfxGJ3oDLpPM1YZJGCH == 2 || EfxGJ3oDLpPM1YZJGCH == 1) {
 local RtU9FgPS28YhRj0Kidx = HJLkU0A4fy9J.getXPos();
 local LjVb9zTdKtmsp = HJLkU0A4fy9J.getYPos();
 local ypOs0lsbPAYp = HJLkU0A4fy9J.sq_getAttractAimPosX(RtU9FgPS28YhRj0Kidx,LjVb9zTdKtmsp, false);
 local UT2mkjWH8p9_aAd = HJLkU0A4fy9J.sq_getAttractAimPosY(RtU9FgPS28YhRj0Kidx,LjVb9zTdKtmsp, false);
 HJLkU0A4fy9J.sq_SetCameraScrollPosition(ypOs0lsbPAYp, UT2mkjWH8p9_aAd, 0);
 return true;
 }
 
 return false;
} ;
