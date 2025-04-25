
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

 
 
 
 
 
 

 
function checkExecutableSkill_gunner_fastdraw(wKYx5kxP2FqaU6yXA)
{
 if(!wKYx5kxP2FqaU6yXA) return false; 
 if(wKYx5kxP2FqaU6yXA.getWeaponSubType() != 0) return false; 
 local Uje4NvI7x17 = wKYx5kxP2FqaU6yXA.sq_IsUseSkill(239); 
 if(Uje4NvI7x17) 
 {
 wKYx5kxP2FqaU6yXA.sq_IntVectClear();
 wKYx5kxP2FqaU6yXA.sq_IntVectPush(0); 
 wKYx5kxP2FqaU6yXA.sq_IntVectPush(onGetLeftOrRight_qq506807329_gunner_fastdraw(wKYx5kxP2FqaU6yXA, false)); 
 wKYx5kxP2FqaU6yXA.sq_IntVectPush(onGetKeyDownDirection_qq506807329_gunner_fastdraw(wKYx5kxP2FqaU6yXA)); 
 wKYx5kxP2FqaU6yXA.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_gunner_fastdraw(bsLyeq0QmKZTzWW)
{
 if(!bsLyeq0QmKZTzWW) return false; 
 if(bsLyeq0QmKZTzWW.getWeaponSubType() != 0) return false; 
 local ebjhZEeMs1Dq = bsLyeq0QmKZTzWW.sq_GetState(); 
 if(ebjhZEeMs1Dq == STATE_STAND) 
 return true; 
 if(ebjhZEeMs1Dq == STATE_ATTACK) 
 {
 return bsLyeq0QmKZTzWW.sq_IsCommandEnable(239); 
 }
 return true; 
} ;

 
function onSetState_gunner_fastdraw(bsLyeq0QmKZTzWW, ebjhZEeMs1Dq, vOHDcvcNwxefI, ZHc1pFt2MPNxH8ZCq)
{
 if(!bsLyeq0QmKZTzWW) return; 
 local Lf884LN56yL2t2w = bsLyeq0QmKZTzWW.sq_GetVectorData(vOHDcvcNwxefI, 0); 
 bsLyeq0QmKZTzWW.setSkillSubState(Lf884LN56yL2t2w); 
 
 
 if(Lf884LN56yL2t2w != 1)
 bsLyeq0QmKZTzWW.sq_StopMove(); 
 local lqK_zgMgP5H1 = bsLyeq0QmKZTzWW.sq_GetVectorData(vOHDcvcNwxefI, 1); 
 local z4ipGbasPSR3tU_wVxCo = bsLyeq0QmKZTzWW.sq_GetVectorData(vOHDcvcNwxefI, 2); 
 switch(Lf884LN56yL2t2w)
 {
 case 0: 
 if(z4ipGbasPSR3tU_wVxCo == ENUM_DIRECTION_UP) 
 bsLyeq0QmKZTzWW.sq_SetCurrentAnimation(122); 
 else 
 bsLyeq0QmKZTzWW.sq_SetCurrentAnimation(129); 
 bsLyeq0QmKZTzWW.sq_SetCurrentAttackInfo(30); 
 bsLyeq0QmKZTzWW.getVar().setBool(2,false); 
 bsLyeq0QmKZTzWW.getVar().clear_vector(); 
 bsLyeq0QmKZTzWW.getVar().push_vector(0); 
 bsLyeq0QmKZTzWW.getVar().push_vector(0); 
 break;
 case 1: 
 local JP4wVkgSjM3VgAqQPjvJ = 0; 
 local UhrVtP_rFWXP0Qsr8Z5BQ = 0; 
 
 switch(lqK_zgMgP5H1)
 {
 case 1: 
 switch(z4ipGbasPSR3tU_wVxCo)
 {
 case ENUM_DIRECTION_UP: 
 JP4wVkgSjM3VgAqQPjvJ = 64; 
 UhrVtP_rFWXP0Qsr8Z5BQ = 115; 
 bsLyeq0QmKZTzWW.sq_SetCurrentAnimation(124); 
 break;
 case ENUM_DIRECTION_DOWN: 
 JP4wVkgSjM3VgAqQPjvJ = 58; 
 UhrVtP_rFWXP0Qsr8Z5BQ = 79; 
 bsLyeq0QmKZTzWW.sq_SetCurrentAnimation(131); 
 break;
 }
 break;
 case -1: 
 switch(z4ipGbasPSR3tU_wVxCo)
 {
 case ENUM_DIRECTION_UP: 
 JP4wVkgSjM3VgAqQPjvJ = 110; 
 UhrVtP_rFWXP0Qsr8Z5BQ = 108; 
 bsLyeq0QmKZTzWW.sq_SetCurrentAnimation(127); 
 break;
 case ENUM_DIRECTION_DOWN: 
 JP4wVkgSjM3VgAqQPjvJ = 111; 
 UhrVtP_rFWXP0Qsr8Z5BQ = 77; 
 bsLyeq0QmKZTzWW.sq_SetCurrentAnimation(134); 
 break;
 }
 break;
 }
 local Hm7JBHWr3hlZwp = sq_AddDrawOnlyAniFromParent(bsLyeq0QmKZTzWW, "character/gunner/effect/animation/fastdraw/fastdraw_gunsmoke1.ani", JP4wVkgSjM3VgAqQPjvJ, -1, UhrVtP_rFWXP0Qsr8Z5BQ); 
 local dIPhnRfqeg9HfQnjCrpRTG = sq_AddDrawOnlyAniFromParent(bsLyeq0QmKZTzWW, "character/gunner/effect/animation/fastdraw/fastdraw_shot" + sq_getRandom(1, 2).tostring() + "_a.ani", JP4wVkgSjM3VgAqQPjvJ, 0, UhrVtP_rFWXP0Qsr8Z5BQ); 
 local HqRQbxi7h1dXefb = sq_AddDrawOnlyAniFromParent(bsLyeq0QmKZTzWW, "character/gunner/effect/animation/fastdraw/fastdraw_shock.ani", JP4wVkgSjM3VgAqQPjvJ, 0, UhrVtP_rFWXP0Qsr8Z5BQ); 
 
 if(z4ipGbasPSR3tU_wVxCo == ENUM_DIRECTION_DOWN)
 {
 sq_SetCustomRotate(Hm7JBHWr3hlZwp, -0.349064); 
 sq_SetCustomRotate(dIPhnRfqeg9HfQnjCrpRTG, -0.349064); 
 sq_SetCustomRotate(HqRQbxi7h1dXefb, -0.349064); 
 }
 else
 sq_SetCustomRotate(Hm7JBHWr3hlZwp,
 sq_ToRadian(sq_getRandom(0, 5).tofloat()) / [-1, 1][sq_getRandom(0, 1)]
 ); 
 
 if(bsLyeq0QmKZTzWW.sq_IsMyControlObject())
 {
 bsLyeq0QmKZTzWW.sq_StartWrite();
 bsLyeq0QmKZTzWW.sq_WriteDword(239); 
 bsLyeq0QmKZTzWW.sq_WriteDword(bsLyeq0QmKZTzWW.sq_GetBonusRateWithPassive(239, 239, 3, 1.0)); 
 bsLyeq0QmKZTzWW.sq_WriteDword(z4ipGbasPSR3tU_wVxCo); 
 bsLyeq0QmKZTzWW.sq_SendCreatePassiveObjectPacket(24371, 0, JP4wVkgSjM3VgAqQPjvJ, 0, UhrVtP_rFWXP0Qsr8Z5BQ); 
 }
 sq_SetMyShake(bsLyeq0QmKZTzWW, 1, 50); 
 bsLyeq0QmKZTzWW.getVar().set_vector(1, bsLyeq0QmKZTzWW.getVar().get_vector(1)+1); 
 break;
 case 2: 
 local JP4wVkgSjM3VgAqQPjvJ = 0; 
 local UhrVtP_rFWXP0Qsr8Z5BQ = 0; 
 
 switch(lqK_zgMgP5H1)
 {
 case 1: 
 switch(z4ipGbasPSR3tU_wVxCo)
 {
 case ENUM_DIRECTION_UP: 
 JP4wVkgSjM3VgAqQPjvJ = sq_GetDistancePos(0, bsLyeq0QmKZTzWW.getDirection(), 1); 
 UhrVtP_rFWXP0Qsr8Z5BQ = 83; 
 bsLyeq0QmKZTzWW.sq_SetCurrentAnimation(123); 
 break;
 case ENUM_DIRECTION_DOWN: 
 JP4wVkgSjM3VgAqQPjvJ = sq_GetDistancePos(0, bsLyeq0QmKZTzWW.getDirection(), 4); 
 UhrVtP_rFWXP0Qsr8Z5BQ = 84; 
 bsLyeq0QmKZTzWW.sq_SetCurrentAnimation(130); 
 break;
 }
 
 sq_CreateDrawOnlyObject(bsLyeq0QmKZTzWW, "character/gunner/effect/animation/fastdraw/fastdraw_turnrightdust.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 case -1: 
 switch(z4ipGbasPSR3tU_wVxCo)
 {
 case ENUM_DIRECTION_UP: 
 JP4wVkgSjM3VgAqQPjvJ = sq_GetDistancePos(0, bsLyeq0QmKZTzWW.getDirection(), 37); 
 UhrVtP_rFWXP0Qsr8Z5BQ = 128; 
 bsLyeq0QmKZTzWW.sq_SetCurrentAnimation(126); 
 break;
 case ENUM_DIRECTION_DOWN: 
 JP4wVkgSjM3VgAqQPjvJ = sq_GetDistancePos(0, bsLyeq0QmKZTzWW.getDirection(), 41); 
 UhrVtP_rFWXP0Qsr8Z5BQ = 129; 
 bsLyeq0QmKZTzWW.sq_SetCurrentAnimation(133); 
 break;
 }
 
 sq_CreateDrawOnlyObject(bsLyeq0QmKZTzWW, "character/gunner/effect/animation/fastdraw/fastdraw_turnleftdust.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 }
 bsLyeq0QmKZTzWW.sq_SetCurrentAttackInfo(30); 
 
 local dZN_qhB1xAlbs = sq_getRandom(160, 330); 
 sq_AddDrawOnlyAniFromParent(bsLyeq0QmKZTzWW, "character/gunner/effect/animation/fastdraw/fastdraw_dustground1_front.ani", dZN_qhB1xAlbs, 25, 0);
 sq_AddDrawOnlyAniFromParent(bsLyeq0QmKZTzWW, "character/gunner/effect/animation/fastdraw/fastdraw_dustground1_back.ani", dZN_qhB1xAlbs, -25, 0);
 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/fastdrawthrowrevolver.ptl", bsLyeq0QmKZTzWW, JP4wVkgSjM3VgAqQPjvJ, 0, UhrVtP_rFWXP0Qsr8Z5BQ, false, 0, 0, 1);
 bsLyeq0QmKZTzWW.getVar().set_vector(0, bsLyeq0QmKZTzWW.getVar().get_vector(0) + 1); 
 bsLyeq0QmKZTzWW.getVar().set_vector(1, 0); 
 bsLyeq0QmKZTzWW.getVar().setBool(2, false); 
 break;
 case 3: 
 switch(lqK_zgMgP5H1)
 {
 case 1: 
 if(z4ipGbasPSR3tU_wVxCo == ENUM_DIRECTION_UP) 
 bsLyeq0QmKZTzWW.sq_SetCurrentAnimation(125); 
 else 
 bsLyeq0QmKZTzWW.sq_SetCurrentAnimation(132); 
 break;
 case -1: 
 if(z4ipGbasPSR3tU_wVxCo == ENUM_DIRECTION_UP) 
 bsLyeq0QmKZTzWW.sq_SetCurrentAnimation(128); 
 else 
 bsLyeq0QmKZTzWW.sq_SetCurrentAnimation(135); 
 break;
 }
 break;
 }
 
 bsLyeq0QmKZTzWW.getVar().setInt(0, z4ipGbasPSR3tU_wVxCo); 
 bsLyeq0QmKZTzWW.getVar().setInt(1, lqK_zgMgP5H1); 
} ;

 
function onKeyFrameFlag_gunner_fastdraw(CmQCctoK_mqZB, wcIw1u5UoJNXdIPV0M5mMMwT)
{
 if(!CmQCctoK_mqZB) return false;
 local d97Bno0P7vrn = CmQCctoK_mqZB.getSkillSubState(); 
 switch(d97Bno0P7vrn)
 {
 case 3: 
 
 if(wcIw1u5UoJNXdIPV0M5mMMwT == 1)
 {
 local Gh8tiABWZE84nwGg12a31F6B = CmQCctoK_mqZB.getVar().getInt(0); 
 local FnNwtqvf1rIkSOkOndbML = CmQCctoK_mqZB.getVar().getInt(1); 
 local yra5zZvBMoqxbe_jTlEOvM6B = 0; 
 local kZsxkQMLSkAK8I = 0; 
 
 switch(FnNwtqvf1rIkSOkOndbML)
 {
 case 1: 
 switch(Gh8tiABWZE84nwGg12a31F6B)
 {
 case ENUM_DIRECTION_UP: 
 yra5zZvBMoqxbe_jTlEOvM6B = sq_GetDistancePos(0, CmQCctoK_mqZB.getDirection(), 40); 
 kZsxkQMLSkAK8I = 125; 
 break;
 case ENUM_DIRECTION_DOWN: 
 yra5zZvBMoqxbe_jTlEOvM6B = sq_GetDistancePos(0, CmQCctoK_mqZB.getDirection(), 38); 
 kZsxkQMLSkAK8I = 123; 
 break;
 }
 break;
 case -1: 
 switch(Gh8tiABWZE84nwGg12a31F6B)
 {
 case ENUM_DIRECTION_UP: 
 yra5zZvBMoqxbe_jTlEOvM6B = sq_GetDistancePos(0, CmQCctoK_mqZB.getDirection(), 74); 
 kZsxkQMLSkAK8I = 116; 
 break;
 case ENUM_DIRECTION_DOWN: 
 yra5zZvBMoqxbe_jTlEOvM6B = sq_GetDistancePos(0, CmQCctoK_mqZB.getDirection(), 73); 
 kZsxkQMLSkAK8I = 118; 
 break;
 }
 break;
 }
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/fastdrawthrowrevolver.ptl", CmQCctoK_mqZB, yra5zZvBMoqxbe_jTlEOvM6B, 0, kZsxkQMLSkAK8I, false, 0, 0, 1); 
 }
 break;
 }
 return true;
} ;

 
function onProcCon_gunner_fastdraw(_teXW7KIjhfe5Igv)
{
 if(!_teXW7KIjhfe5Igv) return;
 local w1gIC7ZCnmyIfqlLgpYoNS2 = _teXW7KIjhfe5Igv.getSkillSubState(); 
 
 switch(w1gIC7ZCnmyIfqlLgpYoNS2)
 {
 case 1:
 case 2:
 sq_SetKeyxEnable(_teXW7KIjhfe5Igv, E_JUMP_COMMAND, true); 
 if(sq_IsEnterCommand(_teXW7KIjhfe5Igv, E_JUMP_COMMAND)) 
 _teXW7KIjhfe5Igv.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
 
 
 if(w1gIC7ZCnmyIfqlLgpYoNS2 == 1
 && _teXW7KIjhfe5Igv.getVar().getBool(2)==false)
 {
 sq_SetKeyxEnable(_teXW7KIjhfe5Igv, E_ATTACK_COMMAND, true); 
 if(sq_IsEnterCommand(_teXW7KIjhfe5Igv, E_ATTACK_COMMAND)) 
 {
 local ZlXWme9EGbc5EP56a_2mW = sq_GetSkillLevel(_teXW7KIjhfe5Igv, 239); 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1);
 sq_BinaryWriteDword(sq_GetLevelData(_teXW7KIjhfe5Igv, 239, 4, ZlXWme9EGbc5EP56a_2mW)); 
 sq_SendChangeSkillEffectPacket(_teXW7KIjhfe5Igv, 239); 
 _teXW7KIjhfe5Igv.getVar().setBool(2, true); 
 }
 }
} ;

 
function onEndCurrentAni_gunner_fastdraw(xW1dmlCTtMs)
{
 if(!xW1dmlCTtMs) return;
 local D5fMSZjRbao0 = xW1dmlCTtMs.getSkillSubState(); 
 switch(D5fMSZjRbao0)
 {
 case 0:
 
 local rg5zwWpYmOq6kCWY9 = sq_getRandom(160, 330); 
 sq_AddDrawOnlyAniFromParent(xW1dmlCTtMs, "character/gunner/effect/animation/fastdraw/fastdraw_dustground1_front.ani", rg5zwWpYmOq6kCWY9, 25, 0);
 sq_AddDrawOnlyAniFromParent(xW1dmlCTtMs, "character/gunner/effect/animation/fastdraw/fastdraw_dustground1_back.ani", rg5zwWpYmOq6kCWY9, -25, 0);
 if(xW1dmlCTtMs.sq_IsMyControlObject())
 {
 xW1dmlCTtMs.sq_IntVectClear();
 xW1dmlCTtMs.sq_IntVectPush(1); 
 xW1dmlCTtMs.sq_IntVectPush(onGetLeftOrRight_qq506807329_gunner_fastdraw(xW1dmlCTtMs, false)); 
 xW1dmlCTtMs.sq_IntVectPush(onGetKeyDownDirection_qq506807329_gunner_fastdraw(xW1dmlCTtMs)); 
 xW1dmlCTtMs.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 }
 break;
 case 2:
 if(xW1dmlCTtMs.sq_IsMyControlObject())
 {
 xW1dmlCTtMs.sq_IntVectClear();
 xW1dmlCTtMs.sq_IntVectPush(1); 
 xW1dmlCTtMs.sq_IntVectPush(onGetLeftOrRight_qq506807329_gunner_fastdraw(xW1dmlCTtMs, xW1dmlCTtMs.getVar().getInt(1))); 
 xW1dmlCTtMs.sq_IntVectPush(onGetKeyDownDirection_qq506807329_gunner_fastdraw(xW1dmlCTtMs)); 
 xW1dmlCTtMs.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 }
 break;
 case 1:
 if(xW1dmlCTtMs.sq_IsMyControlObject())
 {
 local GDlOiJbNSW0 = sq_GetSkillLevel(xW1dmlCTtMs, 239); 
 xW1dmlCTtMs.sq_IntVectClear();
 local ro0Lc4Hw2f2bqgeLaB = xW1dmlCTtMs.getVar().get_vector(1); 
 local Mfuby2d7yVtJOYMTL6mjbH = (xW1dmlCTtMs.getVar().getBool(2) == false)
 ? sq_GetLevelData(xW1dmlCTtMs, 239, 1, GDlOiJbNSW0) 
 : sq_GetLevelData(xW1dmlCTtMs, 239, 2, GDlOiJbNSW0) 
 ; 
 
 if(ro0Lc4Hw2f2bqgeLaB >= Mfuby2d7yVtJOYMTL6mjbH)
 {
 local wgACbZTYRGF2rGDDH8NQyHba = xW1dmlCTtMs.getVar().get_vector(0); 
 local aSsDSbo8ht9c7HtEiW2VESH = sq_GetLevelData(xW1dmlCTtMs, 239, 0, GDlOiJbNSW0); 
 
 if(wgACbZTYRGF2rGDDH8NQyHba >= aSsDSbo8ht9c7HtEiW2VESH)
 {
 xW1dmlCTtMs.sq_IntVectPush(3); 
 xW1dmlCTtMs.sq_IntVectPush(xW1dmlCTtMs.getVar().getInt(1)); 
 xW1dmlCTtMs.sq_IntVectPush(xW1dmlCTtMs.getVar().getInt(0)); 
 }
 
 else
 {
 xW1dmlCTtMs.sq_IntVectPush(2); 
 xW1dmlCTtMs.sq_IntVectPush(xW1dmlCTtMs.getVar().getInt(1)); 
 xW1dmlCTtMs.sq_IntVectPush(onGetKeyDownDirection_qq506807329_gunner_fastdraw(xW1dmlCTtMs)); 
 }
 }
 
 else
 {
 xW1dmlCTtMs.sq_IntVectPush(1); 
 xW1dmlCTtMs.sq_IntVectPush(xW1dmlCTtMs.getVar().getInt(1)); 
 xW1dmlCTtMs.sq_IntVectPush(onGetKeyDownDirection_qq506807329_gunner_fastdraw(xW1dmlCTtMs)); 
 }
 xW1dmlCTtMs.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 }
 break;
 case 3:
 if(xW1dmlCTtMs.sq_IsMyControlObject())
 xW1dmlCTtMs.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

function onChangeSkillEffect_gunner_fastdraw(g7UmPh2o_kyHpI5D7_R_Uvn, O7ORiM9URG5DuFrxaFZ, nMVX9W6lxRrDm1CWIh10omw)
{
 if(!g7UmPh2o_kyHpI5D7_R_Uvn) return;
 local UpcaF8UZEYeUeHxIK = g7UmPh2o_kyHpI5D7_R_Uvn.getSkillSubState();
 
 if(UpcaF8UZEYeUeHxIK == 1 && O7ORiM9URG5DuFrxaFZ == 239)
 {
 local p_WpeyZEFCDXWXFjiK5D = nMVX9W6lxRrDm1CWIh10omw.readWord(); 
 switch(p_WpeyZEFCDXWXFjiK5D)
 {
 case 1:
 local lNa9CHyhLVa8WfeCo6y = nMVX9W6lxRrDm1CWIh10omw.readDword()/100.0; 
 g7UmPh2o_kyHpI5D7_R_Uvn.sq_SetStaticSpeedInfo(0, 0, 0, (1000 * lNa9CHyhLVa8WfeCo6y).tointeger(), 0.0, 0.0); 
 break;
 }
 }
} ;

 
 
function onGetKeyDownDirection_qq506807329_gunner_fastdraw(PEZsJ7m9vxN77el4jhkM)
{
 if(!PEZsJ7m9vxN77el4jhkM) return ENUM_DIRECTION_UP;
 local eF7p10Ddv6O_2Pe = ENUM_DIRECTION_UP; 
 
 
 local zP_cfWGU5qd8aLdnR = sq_FindTarget(PEZsJ7m9vxN77el4jhkM, 0, 285, 40, 120);
 if(zP_cfWGU5qd8aLdnR) 
 eF7p10Ddv6O_2Pe = ENUM_DIRECTION_DOWN; 
 if(
 (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && PEZsJ7m9vxN77el4jhkM.getDirection() == ENUM_DIRECTION_LEFT)
 || (sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && PEZsJ7m9vxN77el4jhkM.getDirection() == ENUM_DIRECTION_RIGHT)
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL))
 eF7p10Ddv6O_2Pe = ENUM_DIRECTION_UP; 
 
 else if(eF7p10Ddv6O_2Pe != ENUM_DIRECTION_DOWN
 && sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL))
 eF7p10Ddv6O_2Pe = ENUM_DIRECTION_DOWN; 
 return eF7p10Ddv6O_2Pe;
} ;

 
function onGetLeftOrRight_qq506807329_gunner_fastdraw(zFomHoW8jik, bgkGsJR7iSf)
{
 if(!zFomHoW8jik || !bgkGsJR7iSf) return 1;
 return bgkGsJR7iSf/-1; 
} ;
