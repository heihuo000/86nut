
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function setCustomData_po_qq506807329new_gunner_24371(muTsTslxYHncLF, qMPjS8m83jPWTkRDFkg2)
{
 if(!muTsTslxYHncLF) return;
 sq_IntVectorClear(sq_GetGlobalIntVector()); 
 local dAvhuXQ64_eoV8VoCrwC8Q = qMPjS8m83jPWTkRDFkg2.readDword(); 
 muTsTslxYHncLF.getVar("skill").clear_vector(); 
 muTsTslxYHncLF.getVar("skill").push_vector(dAvhuXQ64_eoV8VoCrwC8Q);
 switch(dAvhuXQ64_eoV8VoCrwC8Q) 
 {
 case 232: 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(muTsTslxYHncLF, 0); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, qMPjS8m83jPWTkRDFkg2.readDword()); 
 sq_SetCurrentAttackInfo(muTsTslxYHncLF, BSH312D3zSZDte1xy_1Mkbo); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(muTsTslxYHncLF, 1), qMPjS8m83jPWTkRDFkg2.readDword()); 
 muTsTslxYHncLF.getVar("move").clear_vector(); 
 muTsTslxYHncLF.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = muTsTslxYHncLF.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 muTsTslxYHncLF.sq_SetMoveParticle("particle/msc7.ptl", 0.0, 0.0); 
 sq_SetSpeedToMoveParticle(muTsTslxYHncLF, 0, qMPjS8m83jPWTkRDFkg2.readDword()); 
 if(muTsTslxYHncLF.isMyControlObject())
 muTsTslxYHncLF.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 233: 
 local lI5XAVV7Ex = qMPjS8m83jPWTkRDFkg2.readDword(); 
 muTsTslxYHncLF.getVar("subType").clear_vector(); 
 muTsTslxYHncLF.getVar("subType").push_vector(lI5XAVV7Ex); 
 switch(lI5XAVV7Ex)
 {
 case 1:
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(muTsTslxYHncLF, 2), qMPjS8m83jPWTkRDFkg2.readDword());
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(muTsTslxYHncLF, 3), qMPjS8m83jPWTkRDFkg2.readDword());
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(muTsTslxYHncLF, 5), qMPjS8m83jPWTkRDFkg2.readDword());
 muTsTslxYHncLF.getVar().clear_obj_vector(); 
 muTsTslxYHncLF.getVar().push_obj_vector(muTsTslxYHncLF.getTopCharacter()); 
 muTsTslxYHncLF.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = muTsTslxYHncLF.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 if(muTsTslxYHncLF.isMyControlObject())
 muTsTslxYHncLF.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2:
 sq_ChangeDrawLayer(muTsTslxYHncLF, ENUM_DRAWLAYER_BOTTOM); 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/loop/loop_seismicwaveground.ani"); 
 local pd5tcg5lVLri = 1.20833333; 
 NUcGAYB0gMxueW2a.setImageRateFromOriginal(pd5tcg5lVLri, pd5tcg5lVLri); 
 NUcGAYB0gMxueW2a.setAutoLayerWorkAnimationAddSizeRate(pd5tcg5lVLri); 
 sq_SetAttackBoundingBoxSizeRate(NUcGAYB0gMxueW2a, pd5tcg5lVLri, pd5tcg5lVLri, pd5tcg5lVLri); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(muTsTslxYHncLF, 4); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, qMPjS8m83jPWTkRDFkg2.readDword()); 
 sq_SetChangeStatusIntoAttackInfo(BSH312D3zSZDte1xy_1Mkbo, 0, ACTIVESTATUS_STUN, qMPjS8m83jPWTkRDFkg2.readDword(), qMPjS8m83jPWTkRDFkg2.readDword(), qMPjS8m83jPWTkRDFkg2.readDword()); 
 sq_SetCurrentAttackInfo(muTsTslxYHncLF, BSH312D3zSZDte1xy_1Mkbo); 
 break;
 case 3:
 sq_ChangeDrawLayer(muTsTslxYHncLF, ENUM_DRAWLAYER_BOTTOM); 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/loop/loop_seismicwaveground.ani"); 
 local pd5tcg5lVLri = 0.625; 
 NUcGAYB0gMxueW2a.setImageRateFromOriginal(pd5tcg5lVLri, pd5tcg5lVLri); 
 NUcGAYB0gMxueW2a.setAutoLayerWorkAnimationAddSizeRate(pd5tcg5lVLri); 
 sq_SetAttackBoundingBoxSizeRate(NUcGAYB0gMxueW2a, pd5tcg5lVLri, pd5tcg5lVLri, pd5tcg5lVLri); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(muTsTslxYHncLF, 4); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, qMPjS8m83jPWTkRDFkg2.readDword()); 
 sq_SetCurrentAttackInfo(muTsTslxYHncLF, BSH312D3zSZDte1xy_1Mkbo); 
 break;
 }
 break;
 case 234: 
 local DKPS2p9JUZpvWcL8PbkAzDan = muTsTslxYHncLF.getTopCharacter(); 
 if(DKPS2p9JUZpvWcL8PbkAzDan) sq_moveWithParent(DKPS2p9JUZpvWcL8PbkAzDan, muTsTslxYHncLF); 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/plasmaboost/plasmaboostlaserloop_00.ani");
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(muTsTslxYHncLF, 6); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, qMPjS8m83jPWTkRDFkg2.readDword()); 
 sq_SetCurrentAttackInfo(muTsTslxYHncLF, BSH312D3zSZDte1xy_1Mkbo); 
 muTsTslxYHncLF.setTimeEvent(0, qMPjS8m83jPWTkRDFkg2.readDword(), -1, false); 
 muTsTslxYHncLF.getVar().clear_vector(); 
 muTsTslxYHncLF.getVar().push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 muTsTslxYHncLF.sq_PlaySound("P_ICECANNON_SHOT"); 
 break;
 case 235: 
 local lI5XAVV7Ex = qMPjS8m83jPWTkRDFkg2.readDword(); 
 muTsTslxYHncLF.getVar("subType").clear_vector(); 
 muTsTslxYHncLF.getVar("subType").push_vector(lI5XAVV7Ex); 
 switch(lI5XAVV7Ex)
 {
 case 1: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bursterbeamnew/bb2ndatkaeff_laser.ani"); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 break;
 case 2: 
 sq_ChangeDrawLayer(muTsTslxYHncLF, ENUM_DRAWLAYER_BOTTOM); 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bursterbeamnew/bb2ndfloorexpla_floordodge_a.ani"); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 break;
 case 3: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bursterbeamnew/bb2ndfloorexplb_light_a.ani"); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(muTsTslxYHncLF, 7); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, qMPjS8m83jPWTkRDFkg2.readDword()); 
 sq_SetCurrentAttackInfo(muTsTslxYHncLF, BSH312D3zSZDte1xy_1Mkbo); 
 break;
 }
 break;
 case 236: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/deadlyapproach/shooteffect_1.ani"); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(muTsTslxYHncLF, 8); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, qMPjS8m83jPWTkRDFkg2.readDword()); 
 sq_SetCurrentAttackInfo(muTsTslxYHncLF, BSH312D3zSZDte1xy_1Mkbo); 
 break;
 case 237: 
 local lI5XAVV7Ex = qMPjS8m83jPWTkRDFkg2.readDword(); 
 muTsTslxYHncLF.getVar("subType").clear_vector(); 
 muTsTslxYHncLF.getVar("subType").push_vector(lI5XAVV7Ex); 
 switch(lI5XAVV7Ex)
 {
 case 1: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/wipeout/wipeoutattack01_12.ani"); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 sq_SetCurrentAttackInfoFromCustomIndex(muTsTslxYHncLF, 9); 
 break;
 case 2: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/wipeout/wipeoutattack02_hitf_02.ani"); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(muTsTslxYHncLF, 10); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, qMPjS8m83jPWTkRDFkg2.readDword()); 
 sq_SetCurrentAttackInfo(muTsTslxYHncLF, BSH312D3zSZDte1xy_1Mkbo); 
 local v7nUkcMLFhj9rm48iy9f7J = qMPjS8m83jPWTkRDFkg2.readDword() - 1; 
 local XD3gEj67qR2eoOD9jqgICFui = NUcGAYB0gMxueW2a.getDelaySum(0, 7); 
 muTsTslxYHncLF.setTimeEvent(0, XD3gEj67qR2eoOD9jqgICFui / v7nUkcMLFhj9rm48iy9f7J, v7nUkcMLFhj9rm48iy9f7J, false); 
 break;
 }
 break;
 case 239: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/fastdraw/fastdraw_bullet_normal.ani"); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(muTsTslxYHncLF, 11); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, qMPjS8m83jPWTkRDFkg2.readDword()); 
 sq_SetCurrentAttackInfo(muTsTslxYHncLF, BSH312D3zSZDte1xy_1Mkbo); 
 local DeP925vDyp1 = qMPjS8m83jPWTkRDFkg2.readDword(); 
 if(DeP925vDyp1 == ENUM_DIRECTION_UP) 
 {
 
 local vHqaE82LDpGB_EbA6DcN = sq_GetCNRDObjectToActiveObject(muTsTslxYHncLF.sq_FindFirstTarget(150, 600, 50, 110));
 if(vHqaE82LDpGB_EbA6DcN && !vHqaE82LDpGB_EbA6DcN.isDead()) 
 {
 local YRiMk7QfEL2j_ZjdLDYfTah = sq_GetShootingHorizonAngle(vHqaE82LDpGB_EbA6DcN, muTsTslxYHncLF.getYPos(), 0, 360, abs(vHqaE82LDpGB_EbA6DcN.getXPos() - muTsTslxYHncLF.getXPos()));
 muTsTslxYHncLF.sq_SetMoveParticle("particle/fastdrawbulletup.ptl", YRiMk7QfEL2j_ZjdLDYfTah, sq_getRandom(0, -2).tofloat());
 }
 else
 muTsTslxYHncLF.sq_SetMoveParticle("particle/fastdrawbulletup.ptl", sq_getRandom(0, -2).tofloat(), sq_getRandom(0, -2).tofloat());
 }
 else 
 {
 muTsTslxYHncLF.sq_SetMoveParticle("particle/fastdrawbulletdown.ptl", sq_getRandom(0, -5).tofloat(), sq_getRandom(-15, -25).tofloat());
 sq_SetCustomRotate(muTsTslxYHncLF, -0.349064); 
 }
 muTsTslxYHncLF.getVar().clear_vector(); 
 muTsTslxYHncLF.getVar().push_vector(DeP925vDyp1); 
 break;
 case 240: 
 local H9jmFYxH3FHeXdq = "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seventhflow/seventhflow"; 
 local ncqkDb0A6g = 12; 
 
 switch(qMPjS8m83jPWTkRDFkg2.readDword())
 {
 case 1: H9jmFYxH3FHeXdq += "1shoot.ani"; muTsTslxYHncLF.setTimeEvent(0, 30, 1, false); break;
 case 2: H9jmFYxH3FHeXdq += "2shoot.ani"; muTsTslxYHncLF.setTimeEvent(0, 30, 1, false); break;
 case 3: H9jmFYxH3FHeXdq += "3shoot.ani"; muTsTslxYHncLF.setTimeEvent(0, 30, 1, false); break;
 case 4: H9jmFYxH3FHeXdq += "4shoot.ani"; muTsTslxYHncLF.setTimeEvent(0, 30, 1, false); break;
 case 5: H9jmFYxH3FHeXdq += "5shoot.ani"; break;
 case 6: H9jmFYxH3FHeXdq += "6shoot.ani"; break;
 case 7: H9jmFYxH3FHeXdq += "last.ani"; ncqkDb0A6g = 13; break;
 }
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", H9jmFYxH3FHeXdq); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(muTsTslxYHncLF, ncqkDb0A6g); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, qMPjS8m83jPWTkRDFkg2.readDword()); 
 sq_SetCurrentAttackInfo(muTsTslxYHncLF, BSH312D3zSZDte1xy_1Mkbo); 
 break;
 case 241: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bulletpistolcarbine.ani"); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(muTsTslxYHncLF, 14); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, qMPjS8m83jPWTkRDFkg2.readDword()); 
 BSH312D3zSZDte1xy_1Mkbo.setElement(qMPjS8m83jPWTkRDFkg2.readWord()); 
 sq_SetCurrentAttackInfo(muTsTslxYHncLF, BSH312D3zSZDte1xy_1Mkbo); 
 
 local vHqaE82LDpGB_EbA6DcN = sq_GetCNRDObjectToActiveObject(muTsTslxYHncLF.sq_FindFirstTarget(150, 600, 50, 110)); 
 if(vHqaE82LDpGB_EbA6DcN && !vHqaE82LDpGB_EbA6DcN.isDead()) 
 {
 local YRiMk7QfEL2j_ZjdLDYfTah = sq_GetShootingHorizonAngle(vHqaE82LDpGB_EbA6DcN, muTsTslxYHncLF.getYPos(), 0, 360, abs(vHqaE82LDpGB_EbA6DcN.getXPos() - muTsTslxYHncLF.getXPos()));
 muTsTslxYHncLF.sq_SetMoveParticle("particle/fastdrawbulletup.ptl", YRiMk7QfEL2j_ZjdLDYfTah, sq_getRandom(0, -2).tofloat());
 }
 else
 muTsTslxYHncLF.sq_SetMoveParticle("particle/fastdrawbulletup.ptl", sq_getRandom(0, -2).tofloat(), sq_getRandom(0, -2).tofloat());
 break;
 case 242: 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(muTsTslxYHncLF, 15), qMPjS8m83jPWTkRDFkg2.readDword()); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(muTsTslxYHncLF, 16), qMPjS8m83jPWTkRDFkg2.readDword()); 
 muTsTslxYHncLF.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = muTsTslxYHncLF.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 local pd5tcg5lVLri = qMPjS8m83jPWTkRDFkg2.readDword(); 
 local NNpdCQWyjEd0uZVKpS6C26 = pd5tcg5lVLri.tofloat() / 100.0; 
 local dGDQiVvp0n92FnxWmTL53F = (180.0 * NNpdCQWyjEd0uZVKpS6C26).tointeger(); 
 local KAThx5SpHK94m8_ppXpsl7J = (60.0 * NNpdCQWyjEd0uZVKpS6C26).tointeger(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(pd5tcg5lVLri); 
 hOxLre7OTHWTlJn3oVPn.push_vector(dGDQiVvp0n92FnxWmTL53F); 
 hOxLre7OTHWTlJn3oVPn.push_vector(KAThx5SpHK94m8_ppXpsl7J); 
 
 switch(qMPjS8m83jPWTkRDFkg2.readWord())
 {
 case 1: muTsTslxYHncLF.sq_SetMoveParticle("particle/grenadecenter.ptl", 0.0, 0.0); break; 
 case 2: muTsTslxYHncLF.sq_SetMoveParticle("particle/grenadedown.ptl", 0.0, 0.0); break; 
 case 3: muTsTslxYHncLF.sq_SetMoveParticle("particle/grenadeup.ptl", 0.0, 0.0); break; 
 }
 if(muTsTslxYHncLF.isMyControlObject())
 muTsTslxYHncLF.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 243: 
 local lI5XAVV7Ex = qMPjS8m83jPWTkRDFkg2.readDword(); 
 muTsTslxYHncLF.getVar("subType").clear_vector(); 
 muTsTslxYHncLF.getVar("subType").push_vector(lI5XAVV7Ex); 
 if(lI5XAVV7Ex == 1) 
 {
 sq_ChangeDrawLayer(muTsTslxYHncLF, ENUM_DRAWLAYER_BOTTOM); 
 muTsTslxYHncLF.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = muTsTslxYHncLF.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(muTsTslxYHncLF.getXPos()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(muTsTslxYHncLF.getYPos()); 
 if(muTsTslxYHncLF.isMyControlObject())
 muTsTslxYHncLF.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 }
 else if(lI5XAVV7Ex == 2) 
 {
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangershell.ani"); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local ncqkDb0A6g = qMPjS8m83jPWTkRDFkg2.readWord(); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(muTsTslxYHncLF, ncqkDb0A6g); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, qMPjS8m83jPWTkRDFkg2.readDword()); 
 sq_SetCurrentAttackInfo(muTsTslxYHncLF, BSH312D3zSZDte1xy_1Mkbo); 
 muTsTslxYHncLF.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = muTsTslxYHncLF.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(muTsTslxYHncLF.getXPos()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(muTsTslxYHncLF.getYPos()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(ncqkDb0A6g); 
 local hZvpE9dO78T3H6IgG9 = qMPjS8m83jPWTkRDFkg2.readWord(); 
 sq_SetCustomRotate(muTsTslxYHncLF, sq_ToRadian(hZvpE9dO78T3H6IgG9.tofloat())); 
 hOxLre7OTHWTlJn3oVPn.push_vector(hZvpE9dO78T3H6IgG9); 
 muTsTslxYHncLF.setTimeEvent(1, 100, 0, false); 
 muTsTslxYHncLF.setTimeEvent(2, 20, 0, false); 
 }
 break;
 case 244: 
 local lI5XAVV7Ex = qMPjS8m83jPWTkRDFkg2.readDword(); 
 muTsTslxYHncLF.getVar("subType").clear_vector(); 
 muTsTslxYHncLF.getVar("subType").push_vector(lI5XAVV7Ex); 
 if(lI5XAVV7Ex == 1) 
 {
 
 if(qMPjS8m83jPWTkRDFkg2.readWord() == 1) 
 muTsTslxYHncLF.sq_SetMoveParticle("particle/grenadecenter.ptl", 0.0, 0.0);
 else 
 muTsTslxYHncLF.sq_SetMoveParticle("particle/grenadedown.ptl", 0.0, 0.0);
 muTsTslxYHncLF.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = muTsTslxYHncLF.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(muTsTslxYHncLF, 22), qMPjS8m83jPWTkRDFkg2.readDword()); 
 if(muTsTslxYHncLF.isMyControlObject())
 muTsTslxYHncLF.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 }
 else if(lI5XAVV7Ex == 2) 
 {
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/shot01.ani"); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(muTsTslxYHncLF, 21); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, qMPjS8m83jPWTkRDFkg2.readDword()); 
 BSH312D3zSZDte1xy_1Mkbo.setElement(qMPjS8m83jPWTkRDFkg2.readWord()); 
 sq_SetCurrentAttackInfo(muTsTslxYHncLF, BSH312D3zSZDte1xy_1Mkbo); 
 }
 break;
 case 245: 
 local lI5XAVV7Ex = qMPjS8m83jPWTkRDFkg2.readDword(); 
 muTsTslxYHncLF.getVar("subType").clear_vector(); 
 muTsTslxYHncLF.getVar("subType").push_vector(lI5XAVV7Ex); 
 if(lI5XAVV7Ex == 1) 
 {
 local DeP925vDyp1 = qMPjS8m83jPWTkRDFkg2.readWord(); 
 local DKPS2p9JUZpvWcL8PbkAzDan = muTsTslxYHncLF.getTopCharacter();
 if(DKPS2p9JUZpvWcL8PbkAzDan)DKPS2p9JUZpvWcL8PbkAzDan.setDirection(DeP925vDyp1); 
 muTsTslxYHncLF.setDirection(DeP925vDyp1); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(muTsTslxYHncLF, 23), qMPjS8m83jPWTkRDFkg2.readDword()); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(muTsTslxYHncLF, 24), qMPjS8m83jPWTkRDFkg2.readDword()); 
 muTsTslxYHncLF.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = muTsTslxYHncLF.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 if(muTsTslxYHncLF.isMyControlObject())
 muTsTslxYHncLF.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 }
 else if(lI5XAVV7Ex == 2) 
 {
 sq_ChangeDrawLayer(muTsTslxYHncLF, ENUM_DRAWLAYER_BOTTOM); 
 local CLJDjqfE2EVE9 = qMPjS8m83jPWTkRDFkg2.readDword(); 
 muTsTslxYHncLF.getVar().clear_vector(); 
 muTsTslxYHncLF.getVar().push_vector(CLJDjqfE2EVE9); 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/floorloop/floorloop_floornormal.ani"); 
 local pd5tcg5lVLri = CLJDjqfE2EVE9.tofloat() / 350.0; 
 NUcGAYB0gMxueW2a.setImageRateFromOriginal(pd5tcg5lVLri, pd5tcg5lVLri); 
 NUcGAYB0gMxueW2a.setAutoLayerWorkAnimationAddSizeRate(pd5tcg5lVLri); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 muTsTslxYHncLF.setTimeEvent(3, 2000, 1, false); 
 }
 break;
 case 246: 
 local lI5XAVV7Ex = qMPjS8m83jPWTkRDFkg2.readDword(); 
 muTsTslxYHncLF.getVar("subType").clear_vector(); 
 muTsTslxYHncLF.getVar("subType").push_vector(lI5XAVV7Ex); 
 switch(lI5XAVV7Ex)
 {
 case 1: 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(muTsTslxYHncLF, 26), qMPjS8m83jPWTkRDFkg2.readDword()); 
 muTsTslxYHncLF.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = muTsTslxYHncLF.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 
 muTsTslxYHncLF.getVar("atkcount").clear_vector(); 
 muTsTslxYHncLF.getVar("atkcount").push_vector(0); 
 muTsTslxYHncLF.getVar("atkcount").push_vector(0); 
 if(muTsTslxYHncLF.isMyControlObject())
 muTsTslxYHncLF.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2: 
 if(muTsTslxYHncLF.isMyControlObject())
 {
 local cnLKS6BmoqQkC7d3_fd9Zd = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(cnLKS6BmoqQkC7d3_fd9Zd); 
 sq_IntVectorPush(cnLKS6BmoqQkC7d3_fd9Zd, sq_getRandom(100, 450)); 
 sq_IntVectorPush(cnLKS6BmoqQkC7d3_fd9Zd, sq_getRandom(30, 160)); 
 sq_IntVectorPush(cnLKS6BmoqQkC7d3_fd9Zd, sq_getRandom(700, 1500)); 
 muTsTslxYHncLF.addSetStatePacket(10, cnLKS6BmoqQkC7d3_fd9Zd, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 3: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/attackareadummy.ani"); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(muTsTslxYHncLF, 25); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, qMPjS8m83jPWTkRDFkg2.readDword()); 
 sq_SetCurrentAttackInfo(muTsTslxYHncLF, BSH312D3zSZDte1xy_1Mkbo); 
 local OdcTEvub5J1s91Lp = muTsTslxYHncLF.getObjectManager(); 
 local VIY4NYafDJIbThjeSzY = OdcTEvub5J1s91Lp.getCollisionObjectNumber(); 
 for(local Pb4_1tOkG325A1XKwf = 0; Pb4_1tOkG325A1XKwf < VIY4NYafDJIbThjeSzY; Pb4_1tOkG325A1XKwf++)
 {
 local AquJIQ0kkW8gmeDBhEU2 = OdcTEvub5J1s91Lp.getCollisionObject(Pb4_1tOkG325A1XKwf); 
 
 if(!AquJIQ0kkW8gmeDBhEU2 || !muTsTslxYHncLF.isEnemy(AquJIQ0kkW8gmeDBhEU2)) continue;
 sq_AddHitObject(muTsTslxYHncLF, AquJIQ0kkW8gmeDBhEU2); 
 }
 muTsTslxYHncLF.setTimeEvent(0, 70, 0, false); 
 break;
 }
 break;
 case 247: 
 local lI5XAVV7Ex = qMPjS8m83jPWTkRDFkg2.readDword(); 
 muTsTslxYHncLF.getVar("subType").clear_vector(); 
 muTsTslxYHncLF.getVar("subType").push_vector(lI5XAVV7Ex); 
 switch(lI5XAVV7Ex)
 {
 case 1: 
 muTsTslxYHncLF.getVar().clear_vector(); 
 local hOxLre7OTHWTlJn3oVPn = muTsTslxYHncLF.getVar(); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 hOxLre7OTHWTlJn3oVPn.push_vector(qMPjS8m83jPWTkRDFkg2.readWord()); 
 if(muTsTslxYHncLF.isMyControlObject())
 muTsTslxYHncLF.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/hellmarchdummyexplosion.ani"); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(muTsTslxYHncLF, 28); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, qMPjS8m83jPWTkRDFkg2.readDword()); 
 sq_SetCurrentAttackInfo(muTsTslxYHncLF, BSH312D3zSZDte1xy_1Mkbo); 
 local OIUmvF0yo22yS3Qofy = qMPjS8m83jPWTkRDFkg2.readDword() - 1; 
 muTsTslxYHncLF.setTimeEvent(5, NUcGAYB0gMxueW2a.getDelaySum(false) / OIUmvF0yo22yS3Qofy, OIUmvF0yo22yS3Qofy, false); 
 break;
 case 3: 
 local NUcGAYB0gMxueW2a = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/hellmarchdummy.ani"); 
 muTsTslxYHncLF.setCurrentAnimation(NUcGAYB0gMxueW2a); 
 local BSH312D3zSZDte1xy_1Mkbo = sq_GetCustomAttackInfo(muTsTslxYHncLF, 27); 
 sq_SetCurrentAttackBonusRate(BSH312D3zSZDte1xy_1Mkbo, qMPjS8m83jPWTkRDFkg2.readDword()); 
 sq_SetCurrentAttackInfo(muTsTslxYHncLF, BSH312D3zSZDte1xy_1Mkbo); 
 muTsTslxYHncLF.getVar().clear_vector(); 
 muTsTslxYHncLF.getVar().push_vector(qMPjS8m83jPWTkRDFkg2.readDword()); 
 break;
 }
 break;
 default: 
 break;
 }
} ;
 
