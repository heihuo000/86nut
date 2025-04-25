
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
S_FASTMOVE_PLAY <-0
 S_FASTMOVE_LOOP <-1
 S_FASTMOVE_PRO <-2
 S_FASTMOVE_END <-3

  
 FM_SI_C_TIME <-0   
 FM_SI_MULTI_HIT_COUNT <-1  
 FM_SI_MOVE_VEL <-2  
 FM_SI_Y_AXIS_MOVESPEED <-3  

  
 FM_LI_HIT_RATE <-0  
 FM_LI_MOVE_LEN <-1  

 VECTOR_I_SRC_X <-0  



  
function checkExecutableSkill_Fastmove(C2RF6UPUoMZiVFjBY)
{
 if(!C2RF6UPUoMZiVFjBY) return false;
 local LImXq5JFxKwmx = C2RF6UPUoMZiVFjBY.sq_IsUseSkill(115);
 if(LImXq5JFxKwmx)
 {
 C2RF6UPUoMZiVFjBY.sq_IntVectClear();
 C2RF6UPUoMZiVFjBY.sq_IntVectPush(0); 
 if(isAvengerAwakenning(C2RF6UPUoMZiVFjBY)) 
 C2RF6UPUoMZiVFjBY.sq_IntVectPush(1);
 else
 C2RF6UPUoMZiVFjBY.sq_IntVectPush(2);
 if(C2RF6UPUoMZiVFjBY.sq_GetSTATE() == 6) 
 C2RF6UPUoMZiVFjBY.sq_IntVectPush(1);
 else
 C2RF6UPUoMZiVFjBY.sq_IntVectPush(2);
 C2RF6UPUoMZiVFjBY.sq_addSetStatePacket(64, STATE_PRIORITY_IGNORE_FORCE, true);
 return true;
 }
 return false;
} ;

 
function checkCommandEnable_Fastmove(AXY0wPpxRW)
{
 if(!AXY0wPpxRW) return false;
 local YgIDIGx2B5JQI4eEH2 = AXY0wPpxRW.sq_GetSTATE();
 if(YgIDIGx2B5JQI4eEH2 == STATE_ATTACK)
 {
 return AXY0wPpxRW.sq_IsCommandEnable(115); 
 }
 return true;
} ;


 
function onSetState_Fastmove(Hmi0iELa3kFXc, iP1a23I4jP0KHg0, eU4xZEFJM2y3HHx, Tm6MJtCXmO)
{
 if(!Hmi0iELa3kFXc) return;
 local E0jGzaIg6H1x = Hmi0iELa3kFXc.sq_getVectorData(eU4xZEFJM2y3HHx, 0); 
 Hmi0iELa3kFXc.setSkillSubState(E0jGzaIg6H1x); 
 if(E0jGzaIg6H1x == 0)
 {
 Hmi0iELa3kFXc.getVar("info").clear_vector(); 
 Hmi0iELa3kFXc.getVar("info").push_vector(Hmi0iELa3kFXc.sq_getVectorData(eU4xZEFJM2y3HHx, 1)); 
 Hmi0iELa3kFXc.getVar("info").push_vector(Hmi0iELa3kFXc.sq_getVectorData(eU4xZEFJM2y3HHx, 2)); 
 }
 if(Hmi0iELa3kFXc.getVar("info").get_vector(0) == 2) 
 {
 local Nws_HTuWtBiui1bGS = Hmi0iELa3kFXc.getVar();
 Nws_HTuWtBiui1bGS.clear_vector();
 Nws_HTuWtBiui1bGS.push_vector(0);
 local VqltJnyDA8jg = Hmi0iELa3kFXc.getXPos();
 local E4Q2TZC5Clmp4 = Hmi0iELa3kFXc.getYPos();
 local Eeo9QsT6a4Od = Hmi0iELa3kFXc.getZPos();
 local F2C8qJIAwO_ZVK60PXVDh = Nws_HTuWtBiui1bGS.GetparticleCreaterMap("FastMove", "Character/Priest/Effect/Particle/Fastmove.ptl", Hmi0iELa3kFXc);
 Hmi0iELa3kFXc.sq_setCurrentAttackInfo(71);
 Hmi0iELa3kFXc.sq_setAttackPowerWithPassive(115, iP1a23I4jP0KHg0, -1, 0, 1.0);
 if(E0jGzaIg6H1x == 0)
 {
 Hmi0iELa3kFXc.sq_stopMove();
 local TkMK3EkAvai5q20agxfh = Hmi0iELa3kFXc.sq_getIntData(115, 0);
 Nws_HTuWtBiui1bGS.push_vector(TkMK3EkAvai5q20agxfh);
 Nws_HTuWtBiui1bGS.push_vector(0);
 Hmi0iELa3kFXc.sq_setCurrentAnimation(82);
 }
 else if(E0jGzaIg6H1x == 1)
 {
 Hmi0iELa3kFXc.sq_stopMove();
 Nws_HTuWtBiui1bGS.push_vector(Eeo9QsT6a4Od); 
 local QpiYcb6EwFWg2lz = 0;
 if(Eeo9QsT6a4Od > 0)
 {
 if(sq_GetVelocity(Hmi0iELa3kFXc, 2) < 0)
 {
 QpiYcb6EwFWg2lz = 2; 
 }
 else
 {
 QpiYcb6EwFWg2lz = 1; 
 }
 }
 Nws_HTuWtBiui1bGS.push_vector(QpiYcb6EwFWg2lz); 
 Nws_HTuWtBiui1bGS.push_vector(0); 
 Nws_HTuWtBiui1bGS.push_vector(0); 
 Hmi0iELa3kFXc.sq_setCurrentAnimation(83);
 }
 else if(E0jGzaIg6H1x == 2)
 {
 local jF5oleYWJU30 = Hmi0iELa3kFXc.sq_getVectorData(eU4xZEFJM2y3HHx, 1); 
 Hmi0iELa3kFXc.sq_setCurrentAnimation(84);
 Nws_HTuWtBiui1bGS.push_vector(VqltJnyDA8jg); 
 local Qlg0d58Own4s8sb = Hmi0iELa3kFXc.sq_getCurrentAni();
 local S8Wbq4Io6CoYUJJx5rUs = Qlg0d58Own4s8sb.GetFrameStartTime(3);
 local zIdsl8t0NpK7X = Hmi0iELa3kFXc.sq_getIntData(115, 2); 
 local EzxtjS6XlFz = Hmi0iELa3kFXc.sq_getLevelData(115, 1, 1);
 local lPWyVYexsk;
 if(!(sq_GetCurrentModuleType() == 4) && !(sq_GetCurrentModuleType() == 5)) 
 {
 lPWyVYexsk = (zIdsl8t0NpK7X - jF5oleYWJU30);
 }
 else
 {
 lPWyVYexsk = zIdsl8t0NpK7X;
 }
 if(lPWyVYexsk <= 0)
 {
 lPWyVYexsk = 1;
 }
 local pPBli9WkbSOo1 = (EzxtjS6XlFz * 800) / (lPWyVYexsk); 
 Nws_HTuWtBiui1bGS.push_vector(pPBli9WkbSOo1); 
 Nws_HTuWtBiui1bGS.push_vector(0); 
 Nws_HTuWtBiui1bGS.push_vector(E4Q2TZC5Clmp4); 
 local _yQ6zymLjFvjOgeCkF5 = Hmi0iELa3kFXc.sq_getLevelData(115, 1, 1);
 
 Nws_HTuWtBiui1bGS.push_vector(_yQ6zymLjFvjOgeCkF5); 
 Nws_HTuWtBiui1bGS.push_vector(0); 
 local jvxpHSKdBiTkm = Hmi0iELa3kFXc.sq_getIntData(115, 1); 
 local BhRfLrYpo9BLlryRaVe = pPBli9WkbSOo1 / jvxpHSKdBiTkm;
 Hmi0iELa3kFXc.sq_setShake(Hmi0iELa3kFXc, 2, pPBli9WkbSOo1);
 sq_CurrentAnimationProc(Qlg0d58Own4s8sb);
 Nws_HTuWtBiui1bGS.clear_timer_vector();
 Nws_HTuWtBiui1bGS.push_timer_vector();
 local jzDiiPgrV984J4lFo3CZm = Nws_HTuWtBiui1bGS.get_timer_vector(0);
 jzDiiPgrV984J4lFo3CZm.setParameter(60, -1);
 jzDiiPgrV984J4lFo3CZm.resetInstant(0);
 Hmi0iELa3kFXc.sq_timer_.setParameter(BhRfLrYpo9BLlryRaVe, jvxpHSKdBiTkm);
 Hmi0iELa3kFXc.sq_timer_.resetInstant(S8Wbq4Io6CoYUJJx5rUs);
 local sadNpT6pBOyFszTs59Hkg81K = Hmi0iELa3kFXc.sq_getIntData(115, 3);
 Hmi0iELa3kFXc.sq_setStaticMoveInfo(1, sadNpT6pBOyFszTs59Hkg81K, sadNpT6pBOyFszTs59Hkg81K, true);
 Hmi0iELa3kFXc.sq_setMoveDirection(Hmi0iELa3kFXc.getDirection(), ENUM_DIRECTION_NEUTRAL);
 }
 else if(E0jGzaIg6H1x == 3)
 {
 Hmi0iELa3kFXc.sq_stopMove();
 Nws_HTuWtBiui1bGS.push_vector(VqltJnyDA8jg); 
 Hmi0iELa3kFXc.sq_setCurrentAnimation(85);
 }
 }
 else 
 {
 switch(E0jGzaIg6H1x)
 {
 case 0:
 Hmi0iELa3kFXc.sq_stopMove();
 local xSlsi1prpy = Hmi0iELa3kFXc.getVar().GetAnimationMap("davilfastmove_avenger", "character/priest/animation/avengerawakening/devilfastmove/casting/davilfastmove_avenger.ani");
 Hmi0iELa3kFXc.setCurrentAnimation(xSlsi1prpy);
 Hmi0iELa3kFXc.getVar("move").clear_vector(); 
 if(Hmi0iELa3kFXc.getVar("info").get_vector(1) == 1) 
 Hmi0iELa3kFXc.getVar("move").push_vector(Hmi0iELa3kFXc.getZPos()); 
 break;
 case 1:
 local xSlsi1prpy = Hmi0iELa3kFXc.getVar().GetAnimationMap("davilfastmove02_avenger", "character/priest/animation/avengerawakening/devilfastmove/attack/davilfastmove02_avenger.ani");
 Hmi0iELa3kFXc.setCurrentAnimation(xSlsi1prpy);
 Hmi0iELa3kFXc.sq_setCurrentAttackInfo(140);
 local iE5pcBVZYB = sq_GetSkillLevel(Hmi0iELa3kFXc, 115); 
 local AVQ1eejDP4aDVW1MTSpg = Hmi0iELa3kFXc.sq_getBonusRateWithPassive(115, iP1a23I4jP0KHg0, 0, 1.0+
 Hmi0iELa3kFXc.sq_getLevelData(115, 2, iE5pcBVZYB)/100.0); 
 Hmi0iELa3kFXc.sq_setCurrentAttackBonusRate(AVQ1eejDP4aDVW1MTSpg); 
 local fy5Oq8jfcLzYbP = Hmi0iELa3kFXc.sq_getLevelData(115, 3, iE5pcBVZYB); 
 local nOFBvw2_GK9PzNi7smfkUcp = Hmi0iELa3kFXc.sq_getDelaySum(); 
 Hmi0iELa3kFXc.setTimeEvent(0, nOFBvw2_GK9PzNi7smfkUcp / fy5Oq8jfcLzYbP, fy5Oq8jfcLzYbP - 1, false); 
 Hmi0iELa3kFXc.getVar("move").clear_vector(); 
 Hmi0iELa3kFXc.getVar("move").push_vector(Hmi0iELa3kFXc.getXPos()); 
 Hmi0iELa3kFXc.getVar("move").push_vector(350); 
 local sadNpT6pBOyFszTs59Hkg81K = Hmi0iELa3kFXc.sq_getIntData(115, 3) + 50;
 Hmi0iELa3kFXc.sq_setStaticMoveInfo(1, sadNpT6pBOyFszTs59Hkg81K, sadNpT6pBOyFszTs59Hkg81K, true);
 Hmi0iELa3kFXc.sq_setMoveDirection(Hmi0iELa3kFXc.getDirection(), ENUM_DIRECTION_NEUTRAL);
 
 sq_AddDrawOnlyAniFromParent(Hmi0iELa3kFXc, "character/priest/animation/avengerawakening/devilfastmove/attack/davilfastmove03_dust01.ani", 0, 1, 0);
 sq_AddDrawOnlyAniFromParent(Hmi0iELa3kFXc, "character/priest/animation/avengerawakening/devilfastmove/attack/davilfastmove01_dodge.ani", 150, 1, 0);
 sq_SetMyShake(Hmi0iELa3kFXc, 8, 200); 
 if(Hmi0iELa3kFXc.sq_isMyControlObject())
 sq_flashScreen(Hmi0iELa3kFXc, 50, 50, 300, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 }
 }
} ;


 
function prepareDraw_Fastmove(yQFM7VwaXSjpJL1WPlH)
{
 if(!yQFM7VwaXSjpJL1WPlH) return;
} ;


 
function onProc_Fastmove(yQFM7VwaXSjpJL1WPlH)
{
 if(!yQFM7VwaXSjpJL1WPlH) return;
 local A2KuBJadEjGOyJXdp = yQFM7VwaXSjpJL1WPlH.getSkillSubState();
 if(yQFM7VwaXSjpJL1WPlH.getVar("info").get_vector(0) == 2) 
 {
 local lf_nObE4qBrajOP0B3Ab2iQ = yQFM7VwaXSjpJL1WPlH.getXPos();
 local DxNP40NUoJ5lv9spYZUg9i = yQFM7VwaXSjpJL1WPlH.getYPos();
 local tMtZKRDL5FqHtQZ_qMb2WRux = yQFM7VwaXSjpJL1WPlH.getZPos();
 local SjZ9ErIlxLAK772vM0Usa7 = yQFM7VwaXSjpJL1WPlH.sq_getCurrentAni();
 local GZchEyhzPA58rXOxQxfAI = yQFM7VwaXSjpJL1WPlH.sq_ani_GetCurrentFrameIndex(SjZ9ErIlxLAK772vM0Usa7);
 local o3LcvREW9xWY = yQFM7VwaXSjpJL1WPlH.getVar();
 local g6G5e5h162N = sq_GetCurrentTime(SjZ9ErIlxLAK772vM0Usa7);
 if(A2KuBJadEjGOyJXdp == 0)
 {
 }
 else if(A2KuBJadEjGOyJXdp == 1)
 {
 local Uub6LBg2EPkb6PFK8QWnnD = 0;
 local zDhqTo821XUXd4xo = yQFM7VwaXSjpJL1WPlH.sq_getIntData(115, 0); 
 if(sq_GetSkillLevel(yQFM7VwaXSjpJL1WPlH, 164) > 0) 
 {
 local aTcmUiMxpnZbkjiJKq = yQFM7VwaXSjpJL1WPlH.sq_getInputDirection(0);
 if(aTcmUiMxpnZbkjiJKq == ENUM_DIRECTION_NEUTRAL)
 {
 o3LcvREW9xWY.set_vector(4, g6G5e5h162N); 
 }
 if(aTcmUiMxpnZbkjiJKq == ENUM_DIRECTION_LEFT || aTcmUiMxpnZbkjiJKq == ENUM_DIRECTION_RIGHT)
 {
 if(yQFM7VwaXSjpJL1WPlH.getDirection() == ENUM_DIRECTION_LEFT || yQFM7VwaXSjpJL1WPlH.getDirection() == ENUM_DIRECTION_RIGHT)
 {
 if(aTcmUiMxpnZbkjiJKq != yQFM7VwaXSjpJL1WPlH.getDirection())
 {
 local nFAAxUjTkHkDTo3 = yQFM7VwaXSjpJL1WPlH.sq_getIntData(164, 4); 
 local CoLOxjUsSyvQzg4 = zDhqTo821XUXd4xo - o3LcvREW9xWY.get_vector(4);
 local V9JSzX1ZyRnUZDytf = g6G5e5h162N - o3LcvREW9xWY.get_vector(4);
 local xnMzK26h_t9 = sq_GetUniformVelocity(0, nFAAxUjTkHkDTo3, V9JSzX1ZyRnUZDytf, CoLOxjUsSyvQzg4);
 Uub6LBg2EPkb6PFK8QWnnD = xnMzK26h_t9;
 
 }
 }
 }
 }
 local p2AVLxzpZ0iMlLZ0lM0orf = o3LcvREW9xWY.get_vector(1); 
 local WvlpFY3CFP = o3LcvREW9xWY.get_vector(2); 
 local bcBNCSD3efi_0Mq5 = zDhqTo821XUXd4xo / 2;
 local qtLRG1rhhqUYJ5xy2hf4c3yv = 20 + p2AVLxzpZ0iMlLZ0lM0orf;
 local pTyvlaRm5XnK = 0;
 if(WvlpFY3CFP == 0)
 {
 if(bcBNCSD3efi_0Mq5 > g6G5e5h162N)
 {
 pTyvlaRm5XnK = sq_GetAccel(p2AVLxzpZ0iMlLZ0lM0orf, qtLRG1rhhqUYJ5xy2hf4c3yv, g6G5e5h162N, bcBNCSD3efi_0Mq5, true);
 }
 else
 {
 pTyvlaRm5XnK = sq_GetAccel(qtLRG1rhhqUYJ5xy2hf4c3yv, 0, g6G5e5h162N - bcBNCSD3efi_0Mq5, bcBNCSD3efi_0Mq5, false);
 }
 if(g6G5e5h162N >= zDhqTo821XUXd4xo)
 {
 yQFM7VwaXSjpJL1WPlH.setCurrentPos(lf_nObE4qBrajOP0B3Ab2iQ, DxNP40NUoJ5lv9spYZUg9i, 0);
 yQFM7VwaXSjpJL1WPlH.sq_IntVectClear();
 yQFM7VwaXSjpJL1WPlH.sq_IntVectPush(2);
 yQFM7VwaXSjpJL1WPlH.sq_IntVectPush(Uub6LBg2EPkb6PFK8QWnnD);
 yQFM7VwaXSjpJL1WPlH.sq_addSetStatePacket(64, STATE_PRIORITY_USER, true);
 }
 else
 {
 yQFM7VwaXSjpJL1WPlH.setCurrentPos(lf_nObE4qBrajOP0B3Ab2iQ, DxNP40NUoJ5lv9spYZUg9i, pTyvlaRm5XnK);
 }
 }
 else if(WvlpFY3CFP == 1)
 {
 bcBNCSD3efi_0Mq5 = 100;
 local OzPnvQ6hdoFSMQF1lN_sz = 400;
 qtLRG1rhhqUYJ5xy2hf4c3yv = 10 + p2AVLxzpZ0iMlLZ0lM0orf;
 pTyvlaRm5XnK = 0;
 
 if(bcBNCSD3efi_0Mq5 > g6G5e5h162N)
 {
 pTyvlaRm5XnK = sq_GetAccel(p2AVLxzpZ0iMlLZ0lM0orf, qtLRG1rhhqUYJ5xy2hf4c3yv, g6G5e5h162N, bcBNCSD3efi_0Mq5, true);
 }
 else
 {
 pTyvlaRm5XnK = sq_GetAccel(qtLRG1rhhqUYJ5xy2hf4c3yv, 0, g6G5e5h162N - bcBNCSD3efi_0Mq5, OzPnvQ6hdoFSMQF1lN_sz, false);
 }
 if(g6G5e5h162N >= (OzPnvQ6hdoFSMQF1lN_sz + bcBNCSD3efi_0Mq5))
 {
 yQFM7VwaXSjpJL1WPlH.setCurrentPos(lf_nObE4qBrajOP0B3Ab2iQ, DxNP40NUoJ5lv9spYZUg9i, 0);
 yQFM7VwaXSjpJL1WPlH.sq_IntVectClear();
 yQFM7VwaXSjpJL1WPlH.sq_IntVectPush(2);
 yQFM7VwaXSjpJL1WPlH.sq_IntVectPush(Uub6LBg2EPkb6PFK8QWnnD);
 yQFM7VwaXSjpJL1WPlH.sq_addSetStatePacket(64, STATE_PRIORITY_USER, true);
 }
 else
 {
 yQFM7VwaXSjpJL1WPlH.setCurrentPos(lf_nObE4qBrajOP0B3Ab2iQ, DxNP40NUoJ5lv9spYZUg9i, pTyvlaRm5XnK);
 }
 }
 else if(WvlpFY3CFP == 2)
 {
 bcBNCSD3efi_0Mq5 = 50;
 local OzPnvQ6hdoFSMQF1lN_sz = 400;
 qtLRG1rhhqUYJ5xy2hf4c3yv = p2AVLxzpZ0iMlLZ0lM0orf;
 pTyvlaRm5XnK = 0;
 if(bcBNCSD3efi_0Mq5 > g6G5e5h162N)
 {
 pTyvlaRm5XnK = sq_GetAccel(p2AVLxzpZ0iMlLZ0lM0orf, qtLRG1rhhqUYJ5xy2hf4c3yv, g6G5e5h162N, bcBNCSD3efi_0Mq5, true);
 }
 else
 {
 pTyvlaRm5XnK = sq_GetAccel(qtLRG1rhhqUYJ5xy2hf4c3yv, 0, g6G5e5h162N - bcBNCSD3efi_0Mq5, OzPnvQ6hdoFSMQF1lN_sz, false);
 }
 if(g6G5e5h162N >= (OzPnvQ6hdoFSMQF1lN_sz + bcBNCSD3efi_0Mq5))
 {
 yQFM7VwaXSjpJL1WPlH.setCurrentPos(lf_nObE4qBrajOP0B3Ab2iQ, DxNP40NUoJ5lv9spYZUg9i, 0);
 yQFM7VwaXSjpJL1WPlH.sq_IntVectClear();
 yQFM7VwaXSjpJL1WPlH.sq_IntVectPush(2);
 yQFM7VwaXSjpJL1WPlH.sq_IntVectPush(Uub6LBg2EPkb6PFK8QWnnD);
 yQFM7VwaXSjpJL1WPlH.sq_addSetStatePacket(64, STATE_PRIORITY_USER, true);
 }
 else
 {
 yQFM7VwaXSjpJL1WPlH.setCurrentPos(lf_nObE4qBrajOP0B3Ab2iQ, DxNP40NUoJ5lv9spYZUg9i, pTyvlaRm5XnK);
 }
 }
 }
 else if(A2KuBJadEjGOyJXdp == 2)
 {
 local KdzDzSKbTBmva24SUnA3p = SjZ9ErIlxLAK772vM0Usa7.GetFrameStartTime(2);
 if(KdzDzSKbTBmva24SUnA3p <= g6G5e5h162N)
 {
 local yKdPHLIvhaVPF2c6x5w = o3LcvREW9xWY.get_vector(2); 
 local yyfLCOJQu0CdjeuRjA = o3LcvREW9xWY.get_vector(5);
 if(o3LcvREW9xWY.get_vector(6) == 0) 
 {
 yQFM7VwaXSjpJL1WPlH.sq_PlaySound("FMOVE_DASH_LOOP", 7575);
 o3LcvREW9xWY.set_vector(6, 1);
 }
 local xnMzK26h_t9 = sq_GetAccel(0, yyfLCOJQu0CdjeuRjA, g6G5e5h162N - KdzDzSKbTBmva24SUnA3p, yKdPHLIvhaVPF2c6x5w, false);
 local cQoQFZIA9rP_P8up = o3LcvREW9xWY.get_vector(1); 
 local JpIBuxUUh9CVKBAK = sq_GetDistancePos(cQoQFZIA9rP_P8up, yQFM7VwaXSjpJL1WPlH.getDirection(), xnMzK26h_t9);
 if(o3LcvREW9xWY.get_vector(3))
 { 
 if(o3LcvREW9xWY.get_vector(4) != DxNP40NUoJ5lv9spYZUg9i)
 { 
 o3LcvREW9xWY.set_vector(3, 0); 
 o3LcvREW9xWY.set_vector(4, DxNP40NUoJ5lv9spYZUg9i);
 }
 }
 if(yQFM7VwaXSjpJL1WPlH.isMovablePos(JpIBuxUUh9CVKBAK, DxNP40NUoJ5lv9spYZUg9i) && !o3LcvREW9xWY.get_vector(3))
 { 
 sq_setCurrentAxisPos(yQFM7VwaXSjpJL1WPlH, 0, JpIBuxUUh9CVKBAK);
 }
 else
 {
 o3LcvREW9xWY.set_vector(3, 1); 
 local K0pUtgXavY1 = JpIBuxUUh9CVKBAK - lf_nObE4qBrajOP0B3Ab2iQ;
 if(K0pUtgXavY1 != 0)
 {
 if(K0pUtgXavY1 < 0)
 K0pUtgXavY1 = -K0pUtgXavY1;
 local uatcYtFmz95RXgPDGo = o3LcvREW9xWY.get_vector(5);
 o3LcvREW9xWY.set_vector(5, uatcYtFmz95RXgPDGo - K0pUtgXavY1);
 }
 }
 if(yQFM7VwaXSjpJL1WPlH.sq_timer_.isOnEvent(g6G5e5h162N) == true)
 yQFM7VwaXSjpJL1WPlH.resetHitObjectList();
 if(xnMzK26h_t9 >= yyfLCOJQu0CdjeuRjA)
 { 
 yQFM7VwaXSjpJL1WPlH.stopSound(7575);
 yQFM7VwaXSjpJL1WPlH.sq_IntVectClear();
 yQFM7VwaXSjpJL1WPlH.sq_IntVectPush(3);
 yQFM7VwaXSjpJL1WPlH.sq_addSetStatePacket(64, STATE_PRIORITY_USER, true);
 }
 local CoLOxjUsSyvQzg4 = o3LcvREW9xWY.get_timer_vector(0);
 if(CoLOxjUsSyvQzg4.isOnEvent(g6G5e5h162N) == true)
 {
 local gHIjwPBoYUVU = o3LcvREW9xWY.GetparticleCreaterMap("FastMove", "Character/Priest/Effect/Particle/Fastmove.ptl", yQFM7VwaXSjpJL1WPlH);
 gHIjwPBoYUVU.Restart(0); 
 local JpIBuxUUh9CVKBAK = sq_GetDistancePos(lf_nObE4qBrajOP0B3Ab2iQ, yQFM7VwaXSjpJL1WPlH.getDirection(), -20);
 gHIjwPBoYUVU.SetPos(JpIBuxUUh9CVKBAK, DxNP40NUoJ5lv9spYZUg9i, tMtZKRDL5FqHtQZ_qMb2WRux + 28);
 sq_AddParticleObject(yQFM7VwaXSjpJL1WPlH, gHIjwPBoYUVU);
 }
 }
 }
 else if(A2KuBJadEjGOyJXdp == 3)
 {
 local yyfLCOJQu0CdjeuRjA = 40;
 local DuU6nkRPAHOVp34bGoTP1SD1 = 400;
 local xnMzK26h_t9 = sq_GetAccel(0, yyfLCOJQu0CdjeuRjA, g6G5e5h162N, DuU6nkRPAHOVp34bGoTP1SD1, false);
 local cQoQFZIA9rP_P8up = o3LcvREW9xWY.get_vector(1); 
 local JpIBuxUUh9CVKBAK = sq_GetDistancePos(cQoQFZIA9rP_P8up, yQFM7VwaXSjpJL1WPlH.getDirection(), xnMzK26h_t9);
 if(yQFM7VwaXSjpJL1WPlH.isMovablePos(JpIBuxUUh9CVKBAK, DxNP40NUoJ5lv9spYZUg9i))
 {
 yQFM7VwaXSjpJL1WPlH.setCurrentPos(JpIBuxUUh9CVKBAK, DxNP40NUoJ5lv9spYZUg9i, tMtZKRDL5FqHtQZ_qMb2WRux);
 }
 }
 }
 else 
 {
 if(A2KuBJadEjGOyJXdp == 1)
 {
 local SjZ9ErIlxLAK772vM0Usa7 = yQFM7VwaXSjpJL1WPlH.getCurrentAnimation(); 
 local g6G5e5h162N = sq_GetCurrentTime(SjZ9ErIlxLAK772vM0Usa7); 
 local pv9s_y2mU4q = SjZ9ErIlxLAK772vM0Usa7.getDelaySum(false); 
 local cQoQFZIA9rP_P8up = yQFM7VwaXSjpJL1WPlH.getVar("move").get_vector(0); 
 local xokcu035vutbLrwKLLpmVjF = yQFM7VwaXSjpJL1WPlH.getVar("move").get_vector(1); 
 local JpIBuxUUh9CVKBAK = sq_GetDistancePos(cQoQFZIA9rP_P8up, yQFM7VwaXSjpJL1WPlH.getDirection(), sq_GetAccel(0, xokcu035vutbLrwKLLpmVjF, g6G5e5h162N, pv9s_y2mU4q, true)); 
 if(yQFM7VwaXSjpJL1WPlH.isMovablePos(JpIBuxUUh9CVKBAK, yQFM7VwaXSjpJL1WPlH.getYPos()))
 sq_setCurrentAxisPos(yQFM7VwaXSjpJL1WPlH, 0, JpIBuxUUh9CVKBAK); 
 else
 {
 local K0pUtgXavY1 = sq_Abs(JpIBuxUUh9CVKBAK - yQFM7VwaXSjpJL1WPlH.getXPos());
 if(K0pUtgXavY1 != 0)
 yQFM7VwaXSjpJL1WPlH.getVar("move").set_vector(1, (xokcu035vutbLrwKLLpmVjF > 0) ? xokcu035vutbLrwKLLpmVjF - K0pUtgXavY1 : xokcu035vutbLrwKLLpmVjF + K0pUtgXavY1);
 }
 }
 else if(A2KuBJadEjGOyJXdp == 0)
 {
 if(yQFM7VwaXSjpJL1WPlH.getVar("move").size_vector() > 0) 
 {
 local SjZ9ErIlxLAK772vM0Usa7 = yQFM7VwaXSjpJL1WPlH.getCurrentAnimation(); 
 local g6G5e5h162N = sq_GetCurrentTime(SjZ9ErIlxLAK772vM0Usa7); 
 local pv9s_y2mU4q = SjZ9ErIlxLAK772vM0Usa7.getDelaySum(false); 
 local OWznfBePipA8hwOkxKe = sq_GetAccel(yQFM7VwaXSjpJL1WPlH.getVar("move").get_vector(0), 0, g6G5e5h162N, pv9s_y2mU4q, true);
 sq_setCurrentAxisPos(yQFM7VwaXSjpJL1WPlH, 2, OWznfBePipA8hwOkxKe); 
 }
 }
 }
} ;

 
function onProcCon_Fastmove(Rp4fTINM_dUrJs)
{
 if(!Rp4fTINM_dUrJs) return;
 local p1929fs6tMmaYOJpajN32 = Rp4fTINM_dUrJs.sq_getCurrentAni();
 local CPYbtiLos9IprrIQwVt = Rp4fTINM_dUrJs.sq_ani_IsEnd(p1929fs6tMmaYOJpajN32);
 local Lg5dpu92sGZoP = Rp4fTINM_dUrJs.sq_ani_GetCurrentFrameIndex(p1929fs6tMmaYOJpajN32);
 local ukgE83tBThTscRRSt = Rp4fTINM_dUrJs.getSkillSubState();
 if(Rp4fTINM_dUrJs.getVar("info").get_vector(0) == 2) 
 {
 if(ukgE83tBThTscRRSt == 0)
 {
 }
 else if(ukgE83tBThTscRRSt == 1)
 {
 }
 else if(ukgE83tBThTscRRSt == 2)
 {
 }
 else if(ukgE83tBThTscRRSt == 3)
 {
 }
 if(CPYbtiLos9IprrIQwVt)
 {
 if(ukgE83tBThTscRRSt == 0)
 {
 Rp4fTINM_dUrJs.sq_IntVectClear();
 Rp4fTINM_dUrJs.sq_IntVectPush(1);
 Rp4fTINM_dUrJs.sq_addSetStatePacket(64, STATE_PRIORITY_USER, true);
 
 }
 else if(ukgE83tBThTscRRSt == 1)
 {
 }
 else if(ukgE83tBThTscRRSt == 2)
 {
 
 }
 else if(ukgE83tBThTscRRSt == 3)
 {
 Rp4fTINM_dUrJs.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 }
 }
 }
 else 
 {
 }
} ;

 
function onEndState_Fastmove(bHPQGR6RSG, LhBcNguyvcvsZ9RYev)
{
 if(!bHPQGR6RSG) return;
 if(bHPQGR6RSG.getVar("info").get_vector(0) == 2) 
 {
 if(LhBcNguyvcvsZ9RYev != 64)
 {
 bHPQGR6RSG.stopSound(7575);
 }
 }
} ;


function onTimeEvent_Fastmove(i08GFG7WYW3JA9x, jOkTjrVlkfQEhb48DF8X, _6JT0Cj4aRLA8Q_P0NV4)
{
 if(!i08GFG7WYW3JA9x) return false;
 if(jOkTjrVlkfQEhb48DF8X == 0)
 i08GFG7WYW3JA9x.resetHitObjectList(); 
 return false;
} ;

function onEndCurrentAni_Fastmove(Len1DM9QngnJ3sxjt8TDs)
{
 if(!Len1DM9QngnJ3sxjt8TDs) return;
 if(!Len1DM9QngnJ3sxjt8TDs.sq_isMyControlObject()) return;
 if(Len1DM9QngnJ3sxjt8TDs.getVar("info").get_vector(0) == 1) 
 {
 local W0A8x2olimwfHqRAw65qPLq = Len1DM9QngnJ3sxjt8TDs.getSkillSubState();
 if(W0A8x2olimwfHqRAw65qPLq == 0)
 {
 Len1DM9QngnJ3sxjt8TDs.sq_IntVectClear();
 Len1DM9QngnJ3sxjt8TDs.sq_IntVectPush(1); 
 Len1DM9QngnJ3sxjt8TDs.sq_addSetStatePacket(64, STATE_PRIORITY_IGNORE_FORCE, true);
 }
 else
 Len1DM9QngnJ3sxjt8TDs.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 }
} ;


