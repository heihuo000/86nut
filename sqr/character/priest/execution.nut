
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
EXECUTION_SUB_STATE_GRAB  <- 0
EXECUTION_SUB_STATE_GRAB_EX  <- 1
EXECUTION_SUB_STATE_TURNOVER <- 2
EXECUTION_SUB_STATE_RUN   <- 3
EXECUTION_SUB_STATE_LAST  <- 4
EXECUTION_SUB_STATE_FAILED  <- 5

TEST_MODE_EXCUTION <- DEBUG;

EXC_READY_FOR_THROW <- 0;

function sendSubState_Execution(TpZHYPReZCT0FXicgZ3G,wdZVu4vmhNZMNkw38)
{
 if(!TpZHYPReZCT0FXicgZ3G) return;
 TpZHYPReZCT0FXicgZ3G.sq_IntVectClear();
 TpZHYPReZCT0FXicgZ3G.sq_IntVectPush(wdZVu4vmhNZMNkw38); 
 TpZHYPReZCT0FXicgZ3G.sq_addSetStatePacket(68, STATE_PRIORITY_USER, true);
} ;
 


 
function IsEnableExecution(MUPuE3U9UxR0kpu)
{
 if(!MUPuE3U9UxR0kpu) return false; 
 
 
 
 
 
 if(!isInDevilStrikeSkill(MUPuE3U9UxR0kpu)) return false;
 
 
 local sAl4dkn1cFXdsrgSF8JILEZT = MUPuE3U9UxR0kpu.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); 
 
 if(!sAl4dkn1cFXdsrgSF8JILEZT) return false;
 print("appendage.sq_var.size_vector():" + sAl4dkn1cFXdsrgSF8JILEZT.sq_var.size_vector());
 if(sAl4dkn1cFXdsrgSF8JILEZT.sq_var.size_vector() > 1) {
 
 local xzP86fM6uJDQn2b8ISJ9aG = sq_GetSkillLevel(MUPuE3U9UxR0kpu, 120);
 local yZtpzQ5EKFyMNJXhg = sq_GetLevelData(MUPuE3U9UxR0kpu, 120, 7, xzP86fM6uJDQn2b8ISJ9aG);
 
 
 
 
 
 local f4fRwt6omqL3ccm0EuL4cbq = sAl4dkn1cFXdsrgSF8JILEZT.sq_var.get_vector(1); 
 
 if(f4fRwt6omqL3ccm0EuL4cbq >= yZtpzQ5EKFyMNJXhg)
 {
 consumeDevilGauge(MUPuE3U9UxR0kpu, yZtpzQ5EKFyMNJXhg); 
 return true;
 }
 else {
 MUPuE3U9UxR0kpu.startCantUseSkillWarning();
 if (MUPuE3U9UxR0kpu.isMessage()) {
 sq_AddMessage(29002); 
 }
 return false;
 }
 
 }
 
 
 return false;
} ;


function onEndState_Execution(o0ByGJFHnq1RIO_0Yjlpm, a6g5pxu6PUsFv27t5y3LxhP)
{
 if(a6g5pxu6PUsFv27t5y3LxhP != 68)
 removeAllExcutionAppendage(o0ByGJFHnq1RIO_0Yjlpm);
} ;



 
function checkExecutableSkill_Execution(ZefzF0HGkBvR) 
{
 if(!ZefzF0HGkBvR) return false;
 local CMAQKTkcEF = ZefzF0HGkBvR.sq_IsUseSkill(120);
 if(CMAQKTkcEF) {
 if(IsEnableExecution(ZefzF0HGkBvR)) { 
 sendSubState_Execution(ZefzF0HGkBvR,0);
 return true;
 }
 } 
 
 return false;
} ;

 
function checkCommandEnable_Execution(fUmyXPsYM0tBHhs2Zuljw918)
{ 
 
 
 return false;
} ;

 

 
function onIsCheckHitCollision_Execution(NL_zZXdTZFPB9Wa,JIYn6KROEckz7l6QvenM9)
{ 
 local Ha6SGw7w5RvCNN = NL_zZXdTZFPB9Wa.getSkillSubState(); 
 if(Ha6SGw7w5RvCNN == 0) 
 return true;
 
 
 return true;
} ;

function isForceHitCheck_Execution(O2hIK4gEDQrBzGacP7KU)
{
 local RriCydZ0dp = O2hIK4gEDQrBzGacP7KU.getSkillSubState(); 
 if(RriCydZ0dp == 0) { 
 return true;
 } 
 return false;
} ;



 
function onSetState_Execution(ebWzNFCzpRVuioIG1, OUO5lAn9T15Xu2o1Z, gWf8PxpbjAQTEvVv5QH, tKCH8XghdZNuh2bk9vBrFVaH)
{ 
 if(!ebWzNFCzpRVuioIG1) return;
 
 local _hmNSNOeBQjUm_J6Xq = ebWzNFCzpRVuioIG1.getVar(); 
 local GpyQ_cdQREq9b5y9xH = ebWzNFCzpRVuioIG1.sq_getVectorData(gWf8PxpbjAQTEvVv5QH, 0);
 ebWzNFCzpRVuioIG1.setSkillSubState(GpyQ_cdQREq9b5y9xH); 
 
 
 local UVu4lz6SQb77ZSF3 = ebWzNFCzpRVuioIG1.getXPos();
 local FJmlhf4QDjXWa = ebWzNFCzpRVuioIG1.getYPos();
 local lilmEvyF6XSD2vcohA2MgR = ebWzNFCzpRVuioIG1.getZPos();
 
 _hmNSNOeBQjUm_J6Xq.clear_vector(); 
 _hmNSNOeBQjUm_J6Xq.push_vector(0); 
 _hmNSNOeBQjUm_J6Xq.push_vector(0); 
 _hmNSNOeBQjUm_J6Xq.push_vector(0); 
 _hmNSNOeBQjUm_J6Xq.push_vector(0); 
 _hmNSNOeBQjUm_J6Xq.push_vector(0); 
 _hmNSNOeBQjUm_J6Xq.push_vector(0); 
 
 local _rnwxU2rquIDJ = null; 
 
 if(GpyQ_cdQREq9b5y9xH == 0)
 { 
 ebWzNFCzpRVuioIG1.sq_stopMove();
 
 _rnwxU2rquIDJ = ebWzNFCzpRVuioIG1.getVar().GetAnimationMap("EXC_GRAB", "Character/Priest/Animation/execution/grab.ani"); 
 ebWzNFCzpRVuioIG1.setCurrentAnimation(_rnwxU2rquIDJ);
 
 ebWzNFCzpRVuioIG1.sq_setCurrentAttackInfo(74); 
 ebWzNFCzpRVuioIG1.sq_PlaySound("PR_EXECUTION_READY"); 
 _hmNSNOeBQjUm_J6Xq.setBool(0,false);
 }
 else if(GpyQ_cdQREq9b5y9xH == 1)
 { 
 ebWzNFCzpRVuioIG1.sq_stopMove();
 
 _rnwxU2rquIDJ = ebWzNFCzpRVuioIG1.getVar().GetAnimationMap("EXC_GRAB_EX", "Character/Priest/Animation/execution/grabEx.ani"); 
 ebWzNFCzpRVuioIG1.setCurrentAnimation(_rnwxU2rquIDJ);
 
 ebWzNFCzpRVuioIG1.sq_setCurrentAttackInfo(75); 
 
 ebWzNFCzpRVuioIG1.sq_setAttackPowerWithPassive(120,OUO5lAn9T15Xu2o1Z, 0,-1,1.0); 
 } 
 else if(GpyQ_cdQREq9b5y9xH == 2)
 {
 
 _rnwxU2rquIDJ = ebWzNFCzpRVuioIG1.getVar().GetAnimationMap("EXC_TURNOVER", "Character/Priest/Animation/execution/turnOver.ani"); 
 ebWzNFCzpRVuioIG1.setCurrentAnimation(_rnwxU2rquIDJ);
 
 local aqn1NPUORsm5x19n = ebWzNFCzpRVuioIG1.sq_getLevelData(3);
 local bP1zd4sD74UQvdA = aqn1NPUORsm5x19n.tofloat()/100.0;
 
 
 local XeQxNkCQiQeEhe13ECt = ebWzNFCzpRVuioIG1.sq_getCurrentAni(); 
 XeQxNkCQiQeEhe13ECt.applyBoundingBoxRate(bP1zd4sD74UQvdA,0,0); 
 ebWzNFCzpRVuioIG1.sq_setCurrentAttackInfo(76); 
 
 local _hmNSNOeBQjUm_J6Xq = ebWzNFCzpRVuioIG1.getVar();
 local _HkEHQ3g0Hk=0; 
 local GZPdC2RNW7OH = _hmNSNOeBQjUm_J6Xq.get_obj_vector_size();
 for(;_HkEHQ3g0Hk<GZPdC2RNW7OH;++_HkEHQ3g0Hk)
 {
 local lxiOWyQ9lrGNQexnbrtfD4r = sq_GetCNRDObjectToCollisionObject(_hmNSNOeBQjUm_J6Xq.get_obj_vector(_HkEHQ3g0Hk));
 if(lxiOWyQ9lrGNQexnbrtfD4r) 
 ebWzNFCzpRVuioIG1.addHitObject(lxiOWyQ9lrGNQexnbrtfD4r);
 } 
 
 
 local _rnwxU2rquIDJ = sq_CreateAnimation("","Character/Priest/Effect/Animation/execution/turnOver/finger.ani")
 local jYChsK8j4Z = sq_CreatePooledObject(_rnwxU2rquIDJ,true);
 jYChsK8j4Z.setCurrentPos(ebWzNFCzpRVuioIG1.getXPos(),ebWzNFCzpRVuioIG1.getYPos()+2,ebWzNFCzpRVuioIG1.getZPos());
 jYChsK8j4Z.setCurrentDirection(ebWzNFCzpRVuioIG1.getDirection());
 sq_AddObject(ebWzNFCzpRVuioIG1,jYChsK8j4Z,2,false); 
 
 
 ebWzNFCzpRVuioIG1.sq_setAttackPowerWithPassive(120, OUO5lAn9T15Xu2o1Z, 1,-1,1.0); 
 }
 else if(GpyQ_cdQREq9b5y9xH == 3)
 { 
 ebWzNFCzpRVuioIG1.sq_PlaySound("PR_EXECUTION_DRAWN"); 
 ebWzNFCzpRVuioIG1.sq_setCurrentAttackInfo(77); 
 
 local n9iuFHYRe_VsIfZAg = ebWzNFCzpRVuioIG1.sq_getIntData(120,0); 
 local LGYvPSmQcWDyAzNR8nwJM = ebWzNFCzpRVuioIG1.sq_getIntData(120,1); 
 local GBY2fpr1l6STt6HNkvOra4J = ebWzNFCzpRVuioIG1.sq_getIntData(120,2); 
 
 
 
 local fzg4ysnmFM2PKUfydz8Ux6yK = 0;
 if(LGYvPSmQcWDyAzNR8nwJM != 0)
 fzg4ysnmFM2PKUfydz8Ux6yK = n9iuFHYRe_VsIfZAg* 1000 / LGYvPSmQcWDyAzNR8nwJM;
 
 ebWzNFCzpRVuioIG1.sq_timer_.setParameter(fzg4ysnmFM2PKUfydz8Ux6yK, 1);
 ebWzNFCzpRVuioIG1.sq_timer_.setEventOnStart(false);
 ebWzNFCzpRVuioIG1.sq_timer_.resetInstant(0);
 
 ebWzNFCzpRVuioIG1.sq_setStaticMoveInfo(0,LGYvPSmQcWDyAzNR8nwJM,LGYvPSmQcWDyAzNR8nwJM,false);
 ebWzNFCzpRVuioIG1.sq_setStaticMoveInfo(1,GBY2fpr1l6STt6HNkvOra4J,GBY2fpr1l6STt6HNkvOra4J,true);
 ebWzNFCzpRVuioIG1.sq_setMoveDirection(ebWzNFCzpRVuioIG1.getDirection(), ENUM_DIRECTION_NEUTRAL);
 
 _rnwxU2rquIDJ = ebWzNFCzpRVuioIG1.getVar().GetAnimationMap("EXC_RUN", "Character/Priest/Animation/execution/run.ani"); 
 ebWzNFCzpRVuioIG1.setCurrentAnimation(_rnwxU2rquIDJ);
 
 ebWzNFCzpRVuioIG1.playSound("EXECUTION_DRAWN_LOOP",3711,0,0,0);
 
 
 }
 else if(GpyQ_cdQREq9b5y9xH == 4)
 {
 ebWzNFCzpRVuioIG1.stopSound(3711);
 ebWzNFCzpRVuioIG1.sq_setCurrentAttackInfo(78); 
 
 local LGYvPSmQcWDyAzNR8nwJM = ebWzNFCzpRVuioIG1.sq_getIntData(120,1); 
 local ilLKVwz9tby4rLj0jsT8L = ebWzNFCzpRVuioIG1.sq_getIntData(120,3); 
 
 ebWzNFCzpRVuioIG1.sq_setStaticMoveInfo(0,LGYvPSmQcWDyAzNR8nwJM,LGYvPSmQcWDyAzNR8nwJM,false,ilLKVwz9tby4rLj0jsT8L,true);
 ebWzNFCzpRVuioIG1.sq_setStaticMoveInfo(1,0,0,false);
 ebWzNFCzpRVuioIG1.sq_setMoveDirection(ebWzNFCzpRVuioIG1.getDirection(), ENUM_DIRECTION_NEUTRAL);
 
 _rnwxU2rquIDJ = ebWzNFCzpRVuioIG1.getVar().GetAnimationMap("EXC_LAST", "Character/Priest/Animation/execution/last.ani"); 
 ebWzNFCzpRVuioIG1.setCurrentAnimation(_rnwxU2rquIDJ);
 
 ebWzNFCzpRVuioIG1.sq_setAttackPowerWithPassive(120,OUO5lAn9T15Xu2o1Z, 5,-1,1.0);
 }
 else if(GpyQ_cdQREq9b5y9xH == 5)
 {
 
 _rnwxU2rquIDJ = ebWzNFCzpRVuioIG1.getVar().GetAnimationMap("EXC_FAILED", "Character/Priest/Animation/execution/grabFailed.ani"); 
 ebWzNFCzpRVuioIG1.setCurrentAnimation(_rnwxU2rquIDJ);
 
 }
} ;

function onProc_Execution(GJ3_YM4KxIw3I_Zqk73RRq)
{ 
 if(!GJ3_YM4KxIw3I_Zqk73RRq) return;
 
 
 local r2pC1Myui5 = GJ3_YM4KxIw3I_Zqk73RRq.getSkillSubState();
 
 local LnAngodemUSSIKoBqY = GJ3_YM4KxIw3I_Zqk73RRq.sq_getCurrentAni();
 local XqWF_Ns43LykCN99sjXPA = GJ3_YM4KxIw3I_Zqk73RRq.sq_ani_GetCurrentFrameIndex(LnAngodemUSSIKoBqY);
 local vEfaiR4A25Qbrf = GJ3_YM4KxIw3I_Zqk73RRq.getXPos();
 local FSW3tpapyKGnI = GJ3_YM4KxIw3I_Zqk73RRq.getYPos();
 local WuB0WAMjUUP_pJ9KfADXWUoY = GJ3_YM4KxIw3I_Zqk73RRq.getZPos();
 local M6o7zx4dFcHTbRTua = sq_GetDirection(GJ3_YM4KxIw3I_Zqk73RRq);
 
 local Vat_cqhz4DF = GJ3_YM4KxIw3I_Zqk73RRq.getVar();
 if(r2pC1Myui5 == 3) {
 
 
 
 
 
 
 
 
 
 
 if(XqWF_Ns43LykCN99sjXPA >= 0 && !Vat_cqhz4DF.get_vector(0)) {
 sqr_CreatePooledObject(GJ3_YM4KxIw3I_Zqk73RRq, "Effect/Animation/execution/run/26_dust_a_normal.ani", vEfaiR4A25Qbrf, FSW3tpapyKGnI + 50, WuB0WAMjUUP_pJ9KfADXWUoY, M6o7zx4dFcHTbRTua);
 Vat_cqhz4DF.set_vector(0, 1);
 }
 
 if(XqWF_Ns43LykCN99sjXPA >= 1 && !Vat_cqhz4DF.get_vector(1)) {
 sqr_CreatePooledObject(GJ3_YM4KxIw3I_Zqk73RRq, "Effect/Animation/execution/run/1_dust_a_normal.ani", vEfaiR4A25Qbrf, FSW3tpapyKGnI - 1, WuB0WAMjUUP_pJ9KfADXWUoY, M6o7zx4dFcHTbRTua);
 Vat_cqhz4DF.set_vector(1, 1);
 }
 if(XqWF_Ns43LykCN99sjXPA >= 2 && !Vat_cqhz4DF.get_vector(2)) {
 sqr_CreatePooledObject(GJ3_YM4KxIw3I_Zqk73RRq, "Effect/Animation/execution/run/26_dust_a_normal.ani", vEfaiR4A25Qbrf, FSW3tpapyKGnI + 50, WuB0WAMjUUP_pJ9KfADXWUoY, M6o7zx4dFcHTbRTua);
 Vat_cqhz4DF.set_vector(2, 1);
 }
 if(XqWF_Ns43LykCN99sjXPA >= 3 && !Vat_cqhz4DF.get_vector(3)) {
 sqr_CreatePooledObject(GJ3_YM4KxIw3I_Zqk73RRq, "Effect/Animation/execution/run/1_dust_a_normal.ani", vEfaiR4A25Qbrf, FSW3tpapyKGnI - 1, WuB0WAMjUUP_pJ9KfADXWUoY, M6o7zx4dFcHTbRTua);
 Vat_cqhz4DF.set_vector(3, 1);
 }
 if(XqWF_Ns43LykCN99sjXPA >= 4 && !Vat_cqhz4DF.get_vector(4)) {
 sqr_CreatePooledObject(GJ3_YM4KxIw3I_Zqk73RRq, "Effect/Animation/execution/run/26_dust_a_normal.ani", vEfaiR4A25Qbrf, FSW3tpapyKGnI + 50, WuB0WAMjUUP_pJ9KfADXWUoY, M6o7zx4dFcHTbRTua);
 Vat_cqhz4DF.set_vector(4, 1);
 }
 if(XqWF_Ns43LykCN99sjXPA >= 5 && !Vat_cqhz4DF.get_vector(5)) {
 sqr_CreatePooledObject(GJ3_YM4KxIw3I_Zqk73RRq, "Effect/Animation/execution/run/1_dust_a_normal.ani", vEfaiR4A25Qbrf, FSW3tpapyKGnI - 1, WuB0WAMjUUP_pJ9KfADXWUoY, M6o7zx4dFcHTbRTua);
 Vat_cqhz4DF.set_vector(5, 1);
 }
 
 
 }
 else if(r2pC1Myui5 == 4) {
 
 
 
 
 
 
 
 
 
 if(XqWF_Ns43LykCN99sjXPA >= 0 && !Vat_cqhz4DF.get_vector(0)) {
 local ZNixRRIoeeTTbaa = sq_GetDistancePos(vEfaiR4A25Qbrf, GJ3_YM4KxIw3I_Zqk73RRq.getDirection(), 30);
 sqr_CreatePooledObject(GJ3_YM4KxIw3I_Zqk73RRq, "Effect/Animation/execution/run/1_dust_a_normal.ani", ZNixRRIoeeTTbaa, FSW3tpapyKGnI - 1, WuB0WAMjUUP_pJ9KfADXWUoY, GJ3_YM4KxIw3I_Zqk73RRq.getDirection());
 Vat_cqhz4DF.set_vector(0, 1);
 }
 if(XqWF_Ns43LykCN99sjXPA >= 0 && !Vat_cqhz4DF.get_vector(4)) {
 local ZNixRRIoeeTTbaa = sq_GetDistancePos(vEfaiR4A25Qbrf, GJ3_YM4KxIw3I_Zqk73RRq.getDirection(), 90);
 sqr_CreatePooledObject(GJ3_YM4KxIw3I_Zqk73RRq, "Effect/Animation/execution/last/drawOnly/drawOnlyBase.ani", ZNixRRIoeeTTbaa, FSW3tpapyKGnI + 1, WuB0WAMjUUP_pJ9KfADXWUoY, GJ3_YM4KxIw3I_Zqk73RRq.getDirection());
 Vat_cqhz4DF.set_vector(4, 1);
 }
 
 if(XqWF_Ns43LykCN99sjXPA >= 1 && !Vat_cqhz4DF.get_vector(1)) {
 local ZNixRRIoeeTTbaa = sq_GetDistancePos(vEfaiR4A25Qbrf, GJ3_YM4KxIw3I_Zqk73RRq.getDirection(), 30);
 sqr_CreatePooledObject(GJ3_YM4KxIw3I_Zqk73RRq, "Effect/Animation/execution/run/26_dust_a_normal.ani", ZNixRRIoeeTTbaa, FSW3tpapyKGnI + 50, WuB0WAMjUUP_pJ9KfADXWUoY, GJ3_YM4KxIw3I_Zqk73RRq.getDirection());
 Vat_cqhz4DF.set_vector(1, 1);
 }
 
 if(XqWF_Ns43LykCN99sjXPA >= 2 && !Vat_cqhz4DF.get_vector(2)) {
 local ZNixRRIoeeTTbaa = sq_GetDistancePos(vEfaiR4A25Qbrf, GJ3_YM4KxIw3I_Zqk73RRq.getDirection(), 60);
 sqr_CreatePooledObject(GJ3_YM4KxIw3I_Zqk73RRq, "Effect/Animation/execution/run/1_dust_a_normal.ani", ZNixRRIoeeTTbaa, FSW3tpapyKGnI - 1, WuB0WAMjUUP_pJ9KfADXWUoY, GJ3_YM4KxIw3I_Zqk73RRq.getDirection());
 Vat_cqhz4DF.set_vector(2, 1);
 }
 
 if(XqWF_Ns43LykCN99sjXPA >= 3 && !Vat_cqhz4DF.get_vector(3)) {
 local ZNixRRIoeeTTbaa = sq_GetDistancePos(vEfaiR4A25Qbrf, GJ3_YM4KxIw3I_Zqk73RRq.getDirection(), 60);
 sqr_CreatePooledObject(GJ3_YM4KxIw3I_Zqk73RRq, "Effect/Animation/execution/run/26_dust_a_normal.ani", ZNixRRIoeeTTbaa, FSW3tpapyKGnI + 50, WuB0WAMjUUP_pJ9KfADXWUoY, GJ3_YM4KxIw3I_Zqk73RRq.getDirection());
 Vat_cqhz4DF.set_vector(3, 1);
 }
 }
 
 
 if(r2pC1Myui5 == 3)
 { 
 local LnAngodemUSSIKoBqY = GJ3_YM4KxIw3I_Zqk73RRq.sq_getCurrentAni(); 
 local lcsdFKb6LnXyb7Et2 = LnAngodemUSSIKoBqY.getCurrentTime();
 
 
 if (GJ3_YM4KxIw3I_Zqk73RRq.sq_timer_.isOnEvent(lcsdFKb6LnXyb7Et2) == true)
 {
 sendSubState_Execution(GJ3_YM4KxIw3I_Zqk73RRq,4);
 }
 GJ3_YM4KxIw3I_Zqk73RRq.setSkillCommandEnable(120,true);
 
 local lOUDoeg_S81D1Sd9qVNqW = GJ3_YM4KxIw3I_Zqk73RRq.sq_IsEnterSkill(120); 
 if(lOUDoeg_S81D1Sd9qVNqW != -1)
 sendSubState_Execution(GJ3_YM4KxIw3I_Zqk73RRq,4);
 }
} ;


function onTimeEvent_Execution(q645oBRjksuv, TP2G_3e6ERr0a9E, kYqp43yiPR6z)
{
 local PEWdJXT3_2Qn3hzK5MG0o6 = q645oBRjksuv.getSkillSubState();
 if(PEWdJXT3_2Qn3hzK5MG0o6 == 3)
 { 
 local truvxD5dBPyV1EYxyM5s = q645oBRjksuv.sq_getPowerWithPassive(120, 68, 4,-1,1.0); 
 sq_createAttackObjectWithPath(q645oBRjksuv, "Character/Priest/Effect/Animation/execution/run/runDamage.ani","PassiveObject/Character/Priest/AttackInfo/excutionBox.atk",false,truvxD5dBPyV1EYxyM5s,100,0,0,0); 
 }
 return false; 
} ; 

function isExcutionGrabable(yDI5gJwuLwlKzi5)
{ 
 local wJ3aOKlyBMs = yDI5gJwuLwlKzi5.getVar();
 local yFHT5XhCh1tZ=0; 
 local YwNXXaCAYNm = wJ3aOKlyBMs.get_obj_vector_size();
 
 for(;yFHT5XhCh1tZ<YwNXXaCAYNm;++yFHT5XhCh1tZ)
 {
 local GTupk8jx_95dHSmZqU_W9t6 = wJ3aOKlyBMs.get_obj_vector(yFHT5XhCh1tZ);
 if(GTupk8jx_95dHSmZqU_W9t6) {
 if(sq_IsGrabable(yDI5gJwuLwlKzi5,GTupk8jx_95dHSmZqU_W9t6) && sq_IsHoldable(yDI5gJwuLwlKzi5,GTupk8jx_95dHSmZqU_W9t6)) 
 return true;
 }
 } 
 
 return false;
} ;

function removeAllExcutionAppendage(ako4xPP6o0Y9WMl6yY)
{
 local bp5ooZRmS4 = ako4xPP6o0Y9WMl6yY.getVar(); 
 local _6LPAWbsJOOsU=0; 
 local akGBJuV6eNt790 = bp5ooZRmS4.get_obj_vector_size();
 if(akGBJuV6eNt790 <= 0)
 return;
 
 for(;_6LPAWbsJOOsU<akGBJuV6eNt790;++_6LPAWbsJOOsU)
 {
 local ZqM141niLtKm = bp5ooZRmS4.get_obj_vector(_6LPAWbsJOOsU);
 if(ZqM141niLtKm)
 CNSquirrelAppendage.sq_RemoveAppendage(ZqM141niLtKm, "Appendage/Character/executionAppendage.nut");
 } 
 
 bp5ooZRmS4.clear_obj_vector();
} ;


function onEndCurrentAni_Execution(YG8bk3F36WT9y)
{
 local vn5blIqczjz8gQJ = YG8bk3F36WT9y.getSkillSubState();
 local vMUX86sH0u = YG8bk3F36WT9y.getVar(); 
 if(vn5blIqczjz8gQJ == 0)
 { 
 local Opqfap44MddPf66sO3 = vMUX86sH0u.get_obj_vector_size();
 if(Opqfap44MddPf66sO3 > 0)
 { 
 
 if(isExcutionGrabable(YG8bk3F36WT9y)) {
 sendSubState_Execution(YG8bk3F36WT9y,2);
 }
 else {
 sendSubState_Execution(YG8bk3F36WT9y,1);
 }
 }
 else
 { 
 sendSubState_Execution(YG8bk3F36WT9y,5); 
 }
 }
 else if(vn5blIqczjz8gQJ == 2)
 {
 sendSubState_Execution(YG8bk3F36WT9y,3);
 
 local Per3wUxsyarubw = YG8bk3F36WT9y.sq_getIntData(120,4);
 YG8bk3F36WT9y.setTimeEvent(0,Per3wUxsyarubw,0,true);
 }
 else if(vn5blIqczjz8gQJ == 3)
 {
 sendSubState_Execution(YG8bk3F36WT9y,4);
 }
 else if(vn5blIqczjz8gQJ == 4 || vn5blIqczjz8gQJ == 1 || vn5blIqczjz8gQJ == 5) 
 { 
 YG8bk3F36WT9y.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 
 removeAllExcutionAppendage(YG8bk3F36WT9y); 
 } 
} ;

 
function onAttack_Execution(XHMvPPkmg6y5RzvTA3z3Mr, Ei50iAfCf0fq8PAGYkKJeiMS, lFiBU_LUKktE)
{
 local oH1eZ5upfV_yGR7fSupa = XHMvPPkmg6y5RzvTA3z3Mr.getVar(); 
 local VN6NO0cxiivwBu2H0hXvKM = XHMvPPkmg6y5RzvTA3z3Mr.getSkillSubState();
 
 if(VN6NO0cxiivwBu2H0hXvKM == 0)
 { 
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(Ei50iAfCf0fq8PAGYkKJeiMS,"Appendage/Character/executionAppendage.nut")) 
 {
 local gOZfAo6wVoLyLCtw4SH5Yx = CNSquirrelAppendage.sq_AppendAppendage(Ei50iAfCf0fq8PAGYkKJeiMS, XHMvPPkmg6y5RzvTA3z3Mr, 120, false, "Appendage/Character/executionAppendage.nut", true);
 
 if(gOZfAo6wVoLyLCtw4SH5Yx) {
 sq_HoldAndDelayDie(Ei50iAfCf0fq8PAGYkKJeiMS, XHMvPPkmg6y5RzvTA3z3Mr, true, true, true, 300, 300, ENUM_DIRECTION_NEUTRAL , gOZfAo6wVoLyLCtw4SH5Yx);
 Ei50iAfCf0fq8PAGYkKJeiMS.setCurrentDirection(sq_GetOppositeDirection(XHMvPPkmg6y5RzvTA3z3Mr.getDirection()));
 
 oH1eZ5upfV_yGR7fSupa.push_obj_vector(Ei50iAfCf0fq8PAGYkKJeiMS);
 }
 }
 }
 
 
 local Zd5mALjH0C = oH1eZ5upfV_yGR7fSupa.getBool(0);
 if(Zd5mALjH0C && Ei50iAfCf0fq8PAGYkKJeiMS)
 CNSquirrelAppendage.sq_RemoveAppendage(Ei50iAfCf0fq8PAGYkKJeiMS, "Appendage/Character/executionAppendage.nut");
} ;


  
  
  
function onKeyFrameFlag_Execution(r2KwS74sbpC,DDKKPe3ndmmi51B)
{ 
 local zbP8_NQQniY = r2KwS74sbpC.getVar(); 
 local x3FKKK0ZGNZdDG=0; 
 local Qxm5AqMM_QFhDwuplbAqp = zbP8_NQQniY.get_obj_vector_size();
 
 
 
 for(;x3FKKK0ZGNZdDG<Qxm5AqMM_QFhDwuplbAqp;++x3FKKK0ZGNZdDG)
 {
 local Sky05ohYdfwe56_wV9h5D = zbP8_NQQniY.get_obj_vector(x3FKKK0ZGNZdDG);
 local rktIbYjJ1TlPD7 = sq_GetCNRDObjectToActiveObject(Sky05ohYdfwe56_wV9h5D); 
 if(rktIbYjJ1TlPD7) {
 local D5Imatjtm6qpuWWDt_kfGD = rktIbYjJ1TlPD7.GetSquirrelAppendage("Appendage/Character/executionAppendage.nut"); 
 if(D5Imatjtm6qpuWWDt_kfGD)
 D5Imatjtm6qpuWWDt_kfGD.setState(DDKKPe3ndmmi51B,sq_GetGlobalIntVector());
 }
 }
 
 if(DDKKPe3ndmmi51B == 18) 
 {
 
 }
 else if(DDKKPe3ndmmi51B == 30) 
 {
 local GStvsnSfaLae4Pv = sq_flashScreen(r2KwS74sbpC,80,0,0,150, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 sq_addFlashScreen(GStvsnSfaLae4Pv,0,240,320,250, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 sq_SetShake(r2KwS74sbpC,6,400);
 
 sq_setFullScreenEffect(r2KwS74sbpC,"Character/Priest/Effect/Animation/execution/grabEx/finish.ani"); 
 }
 else if(DDKKPe3ndmmi51B == 11) 
 { 
 sq_SetMyShake(r2KwS74sbpC,7,400); 
 sq_CreateParticle("Character/Priest/Effect/Particle/ExcutionStonsSmall.ptl", r2KwS74sbpC, -200, 0, 0, true, 30, 0,2); 
 } 
 else if(DDKKPe3ndmmi51B == 12) 
 {
 local zbP8_NQQniY = r2KwS74sbpC.getVar();
 local x3FKKK0ZGNZdDG=0; 
 local Qxm5AqMM_QFhDwuplbAqp = zbP8_NQQniY.get_obj_vector_size();
 
 local zaQvKLbXtKCGvwB1zJXv = r2KwS74sbpC.sq_GetSTATE();
 r2KwS74sbpC.sq_setAttackPowerWithPassive(120, zaQvKLbXtKCGvwB1zJXv, 1,-1,1.0);
 for(;x3FKKK0ZGNZdDG<Qxm5AqMM_QFhDwuplbAqp;++x3FKKK0ZGNZdDG)
 { 
 local Sky05ohYdfwe56_wV9h5D = sq_GetCNRDObjectToCollisionObject(zbP8_NQQniY.get_obj_vector(x3FKKK0ZGNZdDG));
 if(Sky05ohYdfwe56_wV9h5D && sq_IsHoldable(r2KwS74sbpC,Sky05ohYdfwe56_wV9h5D) && sq_IsGrabable(r2KwS74sbpC,Sky05ohYdfwe56_wV9h5D)) 
 sq_SendHitObjectPacket(r2KwS74sbpC,Sky05ohYdfwe56_wV9h5D,0,0,0);
 } 
 r2KwS74sbpC.sq_setAttackPowerWithPassive(120, zaQvKLbXtKCGvwB1zJXv, 2,-1,1.0);
 
 }
 else if(DDKKPe3ndmmi51B == 19)
 sq_SetMyShake(r2KwS74sbpC,4,80);
 else if(DDKKPe3ndmmi51B == 21)
 sq_SetMyShake(r2KwS74sbpC,4,80);
 else if(DDKKPe3ndmmi51B == 23)
 sq_SetMyShake(r2KwS74sbpC,4,80);
 else if(DDKKPe3ndmmi51B == 26)
 sq_SetMyShake(r2KwS74sbpC,5,200);
 else if(DDKKPe3ndmmi51B == 32) 
 {
 local GStvsnSfaLae4Pv = sq_flashScreen(r2KwS74sbpC,80,0,0,150, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 sq_addFlashScreen(GStvsnSfaLae4Pv,0,240,320,250, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 sq_SetShake(r2KwS74sbpC,6,400);
 
 sq_setFullScreenEffect(r2KwS74sbpC,"Character/Priest/Effect/Animation/execution/grabEx/finish.ani"); 
 }
 else if(DDKKPe3ndmmi51B == 27)
 {
 local KkxipdXjcnF = r2KwS74sbpC.getCurrentAnimation();
 local RQODnb1ZZgmNTXqMq9oW = KkxipdXjcnF.getDelayBySpeedRate(1);
 local GStvsnSfaLae4Pv = sq_flashScreen(r2KwS74sbpC,0,RQODnb1ZZgmNTXqMq9oW*7,0, 200, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 sq_addFlashScreen(GStvsnSfaLae4Pv,0,0,RQODnb1ZZgmNTXqMq9oW*2,100, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 r2KwS74sbpC.sq_setCurrentAttackInfo(79);
 local zaQvKLbXtKCGvwB1zJXv = r2KwS74sbpC.sq_GetSTATE();
 r2KwS74sbpC.sq_setAttackPowerWithPassive(120, zaQvKLbXtKCGvwB1zJXv, 6,-1,1.0);
 r2KwS74sbpC.stopTimeEvent(0); 
 }
 else if(DDKKPe3ndmmi51B == 28)
 sq_SetMyShake(r2KwS74sbpC,6,160); 
 else if(DDKKPe3ndmmi51B == 30) {
 
 sq_SetMyShake(r2KwS74sbpC,6,400); 
 local KkxipdXjcnF = r2KwS74sbpC.getCurrentAnimation();
 local RQODnb1ZZgmNTXqMq9oW = KkxipdXjcnF.getDelayBySpeedRate(1);
 local GStvsnSfaLae4Pv = sq_flashScreen(r2KwS74sbpC, RQODnb1ZZgmNTXqMq9oW*2, RQODnb1ZZgmNTXqMq9oW*5, RQODnb1ZZgmNTXqMq9oW*3, 200, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 
 sq_CreateParticle("Character/Priest/Effect/Particle/ExcutionStonsLarge.ptl", r2KwS74sbpC, 180, 5, 250, true, 30, 0, 2);
 
 zbP8_NQQniY.setBool(0,true);
 }
 else if(DDKKPe3ndmmi51B == 31) {
 removeAllExcutionAppendage(r2KwS74sbpC);
 }
 
 return true; 
} ;
