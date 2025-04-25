
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_fighter_torbellino(uzUv3RcsDJYLPuGw)
{
 if(!uzUv3RcsDJYLPuGw) return false; 
 local iepwlJ7Kry6Blz = uzUv3RcsDJYLPuGw.sq_IsUseSkill(238); 
 if(iepwlJ7Kry6Blz) 
 {
 uzUv3RcsDJYLPuGw.sq_IntVectClear();
 uzUv3RcsDJYLPuGw.sq_IntVectPush(0); 
 uzUv3RcsDJYLPuGw.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_fighter_torbellino(uzUv3RcsDJYLPuGw)
{
 if(!uzUv3RcsDJYLPuGw) return false; 
 local iepwlJ7Kry6Blz = uzUv3RcsDJYLPuGw.sq_GetState(); 
 if(iepwlJ7Kry6Blz == STATE_STAND) 
 return true; 
 if(iepwlJ7Kry6Blz == STATE_ATTACK) 
 {
 return uzUv3RcsDJYLPuGw.sq_IsCommandEnable(238); 
 }
 return true; 
} ;

 
function onSetState_fighter_torbellino(uzUv3RcsDJYLPuGw, iepwlJ7Kry6Blz, FkWppKcAADFNZ, jyaaqjvcyY)
{
 if(!uzUv3RcsDJYLPuGw) return; 
 uzUv3RcsDJYLPuGw.sq_StopMove(); 
 uzUv3RcsDJYLPuGw.sq_ZStop(); 
 local RYKfhgadj7iUxLlRzQh = uzUv3RcsDJYLPuGw.sq_GetVectorData(FkWppKcAADFNZ, 0); 
 uzUv3RcsDJYLPuGw.setSkillSubState(RYKfhgadj7iUxLlRzQh); 
 switch(RYKfhgadj7iUxLlRzQh)
 {
 case 0:
 uzUv3RcsDJYLPuGw.sq_SetCurrentAnimation(150); 
 uzUv3RcsDJYLPuGw.sq_SetCurrentAttackInfo(86); 
 uzUv3RcsDJYLPuGw.getVar().clear_obj_vector(); 
 uzUv3RcsDJYLPuGw.getVar().clear_vector(); 
 uzUv3RcsDJYLPuGw.getVar().push_vector(uzUv3RcsDJYLPuGw.getXPos()); 
 uzUv3RcsDJYLPuGw.getVar().push_vector(170); 
 break;
 case 1:
 uzUv3RcsDJYLPuGw.sq_SetCurrentAnimation(151); 
 sq_AddDrawOnlyAniFromParent(uzUv3RcsDJYLPuGw, "character/fighter/effect/animation/torbellino/torbellino_dashend_smoke.ani", 0, 0, 0); 
 uzUv3RcsDJYLPuGw.getVar().clear_vector(); 
 uzUv3RcsDJYLPuGw.getVar().push_vector(uzUv3RcsDJYLPuGw.getXPos()); 
 uzUv3RcsDJYLPuGw.getVar().push_vector(70); 
 break;
 case 2:
 uzUv3RcsDJYLPuGw.sq_SetCurrentAnimation(152); 
 sq_AddDrawOnlyAniFromParent(uzUv3RcsDJYLPuGw, "character/fighter/effect/animation/torbellino/torbellino_jump_smoke.ani", 0, -1, 0); 
 local XrHX0FEi3OywVUSwTdsf = sq_GetCNRDObjectToActiveObject(uzUv3RcsDJYLPuGw.getVar().get_obj_vector(0)); 
 if(XrHX0FEi3OywVUSwTdsf && !XrHX0FEi3OywVUSwTdsf.isDead())
 {
 local UxC1QKlPF3VK_SsJ = XrHX0FEi3OywVUSwTdsf.getXPos(); 
 local zED3oOL6AG7uM6t2riACZjB9 = XrHX0FEi3OywVUSwTdsf.getYPos(); 
 local gYasVChsI_PWhpD3VH = uzUv3RcsDJYLPuGw.getObjectManager(); 
 local llGNIGFxEC = gYasVChsI_PWhpD3VH.getCollisionObjectNumber(); 
 for(local BURc13nSHXI = 0; BURc13nSHXI < llGNIGFxEC; BURc13nSHXI++)
 {
 local h6ckGNMLBWXH6zORb8kGhE3 = gYasVChsI_PWhpD3VH.getCollisionObject(BURc13nSHXI); 
 if(!h6ckGNMLBWXH6zORb8kGhE3
 || !uzUv3RcsDJYLPuGw.isEnemy(h6ckGNMLBWXH6zORb8kGhE3)
 || !h6ckGNMLBWXH6zORb8kGhE3.isObjectType(OBJECTTYPE_ACTIVE)
 || CNSquirrelAppendage.sq_IsAppendAppendage(h6ckGNMLBWXH6zORb8kGhE3, "character/fighter/torbellino/ap_torbellino.nut")) continue;
 local MCoPvq19Tv = sq_GetCNRDObjectToActiveObject(h6ckGNMLBWXH6zORb8kGhE3); 
 if(MCoPvq19Tv && !MCoPvq19Tv.isDead())
 {
 if(!sq_IsFixture(MCoPvq19Tv)
 && sq_IsGrabable(uzUv3RcsDJYLPuGw, MCoPvq19Tv)
 && sq_IsHoldable(uzUv3RcsDJYLPuGw, MCoPvq19Tv))
 {
 if(sq_GetDistance(UxC1QKlPF3VK_SsJ, zED3oOL6AG7uM6t2riACZjB9, MCoPvq19Tv.getXPos(), MCoPvq19Tv.getYPos(), true) <= 70
 && MCoPvq19Tv.getZPos() <= 80)
 {
 local LedMvR48sDGgmdCrU = CNSquirrelAppendage.sq_AppendAppendage(MCoPvq19Tv, uzUv3RcsDJYLPuGw, 238, false, "character/fighter/torbellino/ap_torbellino.nut", true); 
 sq_HoldAndDelayDie(MCoPvq19Tv, uzUv3RcsDJYLPuGw, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, LedMvR48sDGgmdCrU); 
 sq_MoveToAppendage(MCoPvq19Tv, uzUv3RcsDJYLPuGw, XrHX0FEi3OywVUSwTdsf, 0, 0, XrHX0FEi3OywVUSwTdsf.getZPos()/-1, 100, true, LedMvR48sDGgmdCrU); 
 }
 }
 }
 }
 }
 break;
 case 3:
 uzUv3RcsDJYLPuGw.sq_SetCurrentAnimation(153); 
 uzUv3RcsDJYLPuGw.getVar().clear_vector(); 
 uzUv3RcsDJYLPuGw.getVar().push_vector(uzUv3RcsDJYLPuGw.getXPos()); 
 uzUv3RcsDJYLPuGw.getVar().push_vector(-190); 
 local XrHX0FEi3OywVUSwTdsf = sq_GetCNRDObjectToActiveObject(uzUv3RcsDJYLPuGw.getVar().get_obj_vector(0)); 
 if(XrHX0FEi3OywVUSwTdsf && !XrHX0FEi3OywVUSwTdsf.isDead())
 {
 local vwqCqaxOiqvPdWNsIA0LFP = sq_CreateDrawOnlyObject(uzUv3RcsDJYLPuGw, "character/fighter/effect/animation/torbellino/torbellino_spin_start.ani", ENUM_DRAWLAYER_NORMAL, true);
 vwqCqaxOiqvPdWNsIA0LFP.setCurrentPos(XrHX0FEi3OywVUSwTdsf.getXPos(), XrHX0FEi3OywVUSwTdsf.getYPos(), XrHX0FEi3OywVUSwTdsf.getZPos()); 
 }
 break;
 case 4:
 uzUv3RcsDJYLPuGw.setDirection(sq_GetOppositeDirection(uzUv3RcsDJYLPuGw.getDirection())); 
 uzUv3RcsDJYLPuGw.sq_SetCurrentAnimation(154); 
 local XrHX0FEi3OywVUSwTdsf = sq_GetCNRDObjectToActiveObject(uzUv3RcsDJYLPuGw.getVar().get_obj_vector(0)); 
 if(XrHX0FEi3OywVUSwTdsf && !XrHX0FEi3OywVUSwTdsf.isDead())
 {
 uzUv3RcsDJYLPuGw.setCurrentPos(XrHX0FEi3OywVUSwTdsf.getXPos(), XrHX0FEi3OywVUSwTdsf.getYPos(), 0); 
 local GHy4km54Io54FE8BynP6L6C = sq_AddDrawOnlyAniFromParent(uzUv3RcsDJYLPuGw, "character/fighter/effect/animation/torbellino/torbellino_spin_smoke_01.ani", 0, -2, 0); 
 local u0JUkmWIXxNbbBwtnkGSkx = sq_AddDrawOnlyAniFromParent(uzUv3RcsDJYLPuGw, "character/fighter/effect/animation/torbellino/torbellino_spin_smoke_00.ani", 0, 0, 0); 
 uzUv3RcsDJYLPuGw.getVar("aniobj").clear_obj_vector(); 
 uzUv3RcsDJYLPuGw.getVar("aniobj").push_obj_vector(GHy4km54Io54FE8BynP6L6C); 
 uzUv3RcsDJYLPuGw.getVar("aniobj").push_obj_vector(u0JUkmWIXxNbbBwtnkGSkx); 
 }
 local T2hVSYK1TXjBkAhR8IgqoTWh= uzUv3RcsDJYLPuGw.sq_GetLevelData(238, 0, sq_GetSkillLevel(uzUv3RcsDJYLPuGw, 238))/100.0;
 uzUv3RcsDJYLPuGw.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, T2hVSYK1TXjBkAhR8IgqoTWh, T2hVSYK1TXjBkAhR8IgqoTWh);
 break;
 }
} ;

function onEndState_fighter_torbellino(JKdBoRrGLCyFSSLPGvWVJ, QfyUOREWhcZ50LcuxI)
{
 if(!JKdBoRrGLCyFSSLPGvWVJ) return;
 RemoveAllAni(JKdBoRrGLCyFSSLPGvWVJ); 
 if(QfyUOREWhcZ50LcuxI != 238)
 sq_SimpleMoveToNearMovablePos(JKdBoRrGLCyFSSLPGvWVJ, 200); 
} ;

function onAttack_fighter_torbellino(JKdBoRrGLCyFSSLPGvWVJ, QfyUOREWhcZ50LcuxI, hVLMnulKKcu_bZrsM, UVQwivACUS0tn2XlmTTg)
{
 if(!JKdBoRrGLCyFSSLPGvWVJ) return;
 if(!QfyUOREWhcZ50LcuxI.isObjectType(OBJECTTYPE_ACTIVE) || !sq_IsHoldable(JKdBoRrGLCyFSSLPGvWVJ, QfyUOREWhcZ50LcuxI))return;
 if(JKdBoRrGLCyFSSLPGvWVJ.getVar().get_obj_vector_size() > 0)return;
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(QfyUOREWhcZ50LcuxI, "character/fighter/torbellino/ap_torbellino.nut"))
 {
 local cyFD58vdeFvvmLDZ6Yst = JKdBoRrGLCyFSSLPGvWVJ.getSkillSubState(); 
 if(cyFD58vdeFvvmLDZ6Yst == 0)
 {
 JKdBoRrGLCyFSSLPGvWVJ.getVar().push_obj_vector(QfyUOREWhcZ50LcuxI); 
 JKdBoRrGLCyFSSLPGvWVJ.getVar().clear_vector(); 
 JKdBoRrGLCyFSSLPGvWVJ.getVar().push_vector(JKdBoRrGLCyFSSLPGvWVJ.getXPos()); 
 JKdBoRrGLCyFSSLPGvWVJ.getVar().push_vector(JKdBoRrGLCyFSSLPGvWVJ.getYPos()); 
 JKdBoRrGLCyFSSLPGvWVJ.getVar().push_vector(JKdBoRrGLCyFSSLPGvWVJ.getZPos()); 
 local YOKRNt54amOW0rIGjef = CNSquirrelAppendage.sq_AppendAppendage(QfyUOREWhcZ50LcuxI, JKdBoRrGLCyFSSLPGvWVJ, 238, false, "character/fighter/torbellino/ap_torbellino.nut", true); 
 sq_HoldAndDelayDie(QfyUOREWhcZ50LcuxI, JKdBoRrGLCyFSSLPGvWVJ, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, YOKRNt54amOW0rIGjef); 
 sq_MoveToAppendage(QfyUOREWhcZ50LcuxI, JKdBoRrGLCyFSSLPGvWVJ, QfyUOREWhcZ50LcuxI, 0, 0, QfyUOREWhcZ50LcuxI.getZPos()/-1, 100, true, YOKRNt54amOW0rIGjef); 
 if(JKdBoRrGLCyFSSLPGvWVJ.sq_IsMyControlObject())
 {
 JKdBoRrGLCyFSSLPGvWVJ.sq_IntVectClear();
 JKdBoRrGLCyFSSLPGvWVJ.sq_IntVectPush(2); 
 JKdBoRrGLCyFSSLPGvWVJ.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, true); 
 }
 }
 }
} ;

function onKeyFrameFlag_fighter_torbellino(CvMBgvDToSl6ZltS1dE2lHa, paCeQ2mNYCdbRm5x)
{
 if(!CvMBgvDToSl6ZltS1dE2lHa) return false;
 local wkei6SxBlxF = CvMBgvDToSl6ZltS1dE2lHa.getSkillSubState(); 
 switch(wkei6SxBlxF)
 {
 case 3:
 if(paCeQ2mNYCdbRm5x == 2)
 sq_AddDrawOnlyAniFromParent(CvMBgvDToSl6ZltS1dE2lHa, "character/fighter/effect/animation/torbellino/torbellino_end_smoke.ani", 0, -1, 0); 
 break;
 case 2:
 if(paCeQ2mNYCdbRm5x == 1)
 {
 local Fx4wmS3EQ3uwxk = sq_GetCNRDObjectToActiveObject(CvMBgvDToSl6ZltS1dE2lHa.getVar().get_obj_vector(0)); 
 if(Fx4wmS3EQ3uwxk && !Fx4wmS3EQ3uwxk.isDead())
 {
 local yI8li6Nkf885Qjy8mDYVkid3 = sq_CreateDrawOnlyObject(CvMBgvDToSl6ZltS1dE2lHa, "character/fighter/effect/animation/torbellino/torbellino_spin_start.ani", ENUM_DRAWLAYER_NORMAL, true);
 yI8li6Nkf885Qjy8mDYVkid3.setCurrentPos(Fx4wmS3EQ3uwxk.getXPos(), Fx4wmS3EQ3uwxk.getYPos(), Fx4wmS3EQ3uwxk.getZPos()); 
 }
 }
 break;
 }
 return true;
} ;

function onProc_fighter_torbellino(YIgqfIGEenB6eT)
{
 if(!YIgqfIGEenB6eT) return;
 local mBFGqfbCMz5HE = YIgqfIGEenB6eT.getSkillSubState(); 
 switch(mBFGqfbCMz5HE)
 {
 case 0: 
 local NFh3c2FbpqFbwyTf = YIgqfIGEenB6eT.sq_GetStateTimer(); 
 local q33pIjmBC4DjIiLw9y = 300; 
 if(YIgqfIGEenB6eT.getVar().size_vector() > 0)
 {
 local E2OEjBTR1TeiiEV5Dm9yd = sq_GetDistancePos(YIgqfIGEenB6eT.getVar().get_vector(0),
 YIgqfIGEenB6eT.getDirection(),
 sq_GetUniformVelocity(0, YIgqfIGEenB6eT.getVar().get_vector(1), NFh3c2FbpqFbwyTf, q33pIjmBC4DjIiLw9y)); 
 if(YIgqfIGEenB6eT.isMovablePos(E2OEjBTR1TeiiEV5Dm9yd, YIgqfIGEenB6eT.getYPos()))
 sq_setCurrentAxisPos(YIgqfIGEenB6eT, 0, E2OEjBTR1TeiiEV5Dm9yd); 
 else
 YIgqfIGEenB6eT.getVar().clear_vector(); 
 }
 if(YIgqfIGEenB6eT.sq_IsMyControlObject())
 if(NFh3c2FbpqFbwyTf >= q33pIjmBC4DjIiLw9y) 
 {
 YIgqfIGEenB6eT.sq_IntVectClear();
 YIgqfIGEenB6eT.sq_IntVectPush(mBFGqfbCMz5HE + 1); 
 YIgqfIGEenB6eT.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, true); 
 }
 break;
 case 1: 
 case 3: 
 if(YIgqfIGEenB6eT.getVar().size_vector() > 0)
 {
 local uQM07EZCs1_ZJcokRd3Gno = YIgqfIGEenB6eT.getCurrentAnimation(); 
 local NFh3c2FbpqFbwyTf = sq_GetCurrentTime(uQM07EZCs1_ZJcokRd3Gno); 
 local q33pIjmBC4DjIiLw9y = uQM07EZCs1_ZJcokRd3Gno.getDelaySum(false); 
 local E2OEjBTR1TeiiEV5Dm9yd = sq_GetDistancePos(YIgqfIGEenB6eT.getVar().get_vector(0),
 YIgqfIGEenB6eT.getDirection(),
 sq_GetAccel(0, YIgqfIGEenB6eT.getVar().get_vector(1), NFh3c2FbpqFbwyTf, q33pIjmBC4DjIiLw9y,true)); 
 if(YIgqfIGEenB6eT.isMovablePos(E2OEjBTR1TeiiEV5Dm9yd, YIgqfIGEenB6eT.getYPos()))
 sq_setCurrentAxisPos(YIgqfIGEenB6eT, 0, E2OEjBTR1TeiiEV5Dm9yd); 
 else
 YIgqfIGEenB6eT.getVar().clear_vector(); 
 }
 break;
 case 2: 
 local khSOeGJh6y = YIgqfIGEenB6eT.getVar().get_obj_vector(0); 
 if(!khSOeGJh6y)return;
 local uQM07EZCs1_ZJcokRd3Gno = YIgqfIGEenB6eT.getCurrentAnimation(); 
 local NFh3c2FbpqFbwyTf = sq_GetCurrentTime(uQM07EZCs1_ZJcokRd3Gno); 
 local q33pIjmBC4DjIiLw9y = uQM07EZCs1_ZJcokRd3Gno.getDelaySum(0, 4); 
 local E2OEjBTR1TeiiEV5Dm9yd = sq_GetUniformVelocity(YIgqfIGEenB6eT.getVar().get_vector(0), khSOeGJh6y.getXPos(), NFh3c2FbpqFbwyTf, q33pIjmBC4DjIiLw9y);
 sq_setCurrentAxisPos(YIgqfIGEenB6eT, 0, E2OEjBTR1TeiiEV5Dm9yd); 
 local jvOfBkuL2xJ1Cn = sq_GetUniformVelocity(YIgqfIGEenB6eT.getVar().get_vector(1), khSOeGJh6y.getYPos(), NFh3c2FbpqFbwyTf, q33pIjmBC4DjIiLw9y);
 sq_setCurrentAxisPos(YIgqfIGEenB6eT, 1, jvOfBkuL2xJ1Cn); 
 local pr0WLPeeVX48Lz = sq_GetUniformVelocity(YIgqfIGEenB6eT.getVar().get_vector(2), khSOeGJh6y.getZPos()+ sq_GetObjectHeight(khSOeGJh6y)/2, NFh3c2FbpqFbwyTf, q33pIjmBC4DjIiLw9y); 
 sq_setCurrentAxisPos(YIgqfIGEenB6eT, 2, pr0WLPeeVX48Lz); 
 break;
 }
} ;

 
function onEndCurrentAni_fighter_torbellino(H2R9nzXo3rsPl3VngzGh)
{
 if(!H2R9nzXo3rsPl3VngzGh) return;
 if(!H2R9nzXo3rsPl3VngzGh.sq_IsMyControlObject()) return;
 local qQ3sgyAhJ7aE9A9FVd = H2R9nzXo3rsPl3VngzGh.getSkillSubState(); 
 switch(qQ3sgyAhJ7aE9A9FVd)
 {
 case 2:
 H2R9nzXo3rsPl3VngzGh.sq_IntVectClear();
 H2R9nzXo3rsPl3VngzGh.sq_IntVectPush(4); 
 H2R9nzXo3rsPl3VngzGh.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, true); 
 break;
 case 4:
 H2R9nzXo3rsPl3VngzGh.sq_IntVectClear();
 H2R9nzXo3rsPl3VngzGh.sq_IntVectPush(3); 
 H2R9nzXo3rsPl3VngzGh.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, true); 
 break;
 default:
 if(qQ3sgyAhJ7aE9A9FVd == 3)
 {
 local FTuaMTM6yvRxed5 = sq_GetCNRDObjectToActiveObject(H2R9nzXo3rsPl3VngzGh.getVar().get_obj_vector(0)); 
 if(FTuaMTM6yvRxed5 && !FTuaMTM6yvRxed5.isDead())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(238); 
 sq_BinaryWriteDword(1); 
 sq_BinaryWriteDword(sq_GetGroup(FTuaMTM6yvRxed5)); 
 sq_BinaryWriteDword(sq_GetUniqueId(FTuaMTM6yvRxed5)); 
 sq_BinaryWriteDword(H2R9nzXo3rsPl3VngzGh.sq_GetBonusRateWithPassive(238, 238, 1, 1.0)); 
 sq_BinaryWriteDword(H2R9nzXo3rsPl3VngzGh.sq_GetBonusRateWithPassive(238, 238, 3, 1.0)); 
 sq_BinaryWriteDword(H2R9nzXo3rsPl3VngzGh.sq_GetLevelData(238, 2, sq_GetSkillLevel(H2R9nzXo3rsPl3VngzGh, 238))); 
 sq_SendCreatePassiveObjectPacketPos(H2R9nzXo3rsPl3VngzGh, 24373, 0, FTuaMTM6yvRxed5.getXPos(), FTuaMTM6yvRxed5.getYPos()+1, FTuaMTM6yvRxed5.getZPos() + sq_GetObjectHeight(FTuaMTM6yvRxed5) / 2);
 }
 }
 H2R9nzXo3rsPl3VngzGh.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

