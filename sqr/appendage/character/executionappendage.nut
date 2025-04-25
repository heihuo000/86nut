
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
EXC_VAR_MOVE_ACTIVE  <- 0
EXC_VAR_POS_X   <- 1
EXC_VAR_POS_Y   <- 2
EXC_VAR_POS_Z   <- 3
EXC_VAR_CURRENT_STATE <- 4
EXC_VAR_START_ANGLE  <- 5


function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onStart", "onStart_execution");
 appendage.sq_AddFunctionName("onEnd", "onEnd_execution");
 appendage.sq_AddFunctionName("proc", "proc_execution");
 appendage.sq_AddFunctionName("onChangeState", "onChangeState_execution");
 appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_execution"); 
 appendage.sq_AddFunctionName("onDestroyObject", "onDestroyObject_execution");
}


 
function isGrabableParent(n3njwnPcS7ttSI)
{
 if(!n3njwnPcS7ttSI) return false;
 local BBOExBviDDEhX7uF5V3gfpA = n3njwnPcS7ttSI.getParent();
 local UBQIcLmyVc4m9s7fBDFYQ8H = n3njwnPcS7ttSI.getSource(); 
 if(sq_IsGrabable(UBQIcLmyVc4m9s7fBDFYQ8H,BBOExBviDDEhX7uF5V3gfpA) && sq_IsHoldable(UBQIcLmyVc4m9s7fBDFYQ8H,BBOExBviDDEhX7uF5V3gfpA)) 
 return true;
 return false;
} ;

 
function onStart_execution(RPqjikiseNknZhiNq)
{
 RPqjikiseNknZhiNq.sq_var.setInt(4,0); 
 
 
 local UEnS7HOuEz5OBnOZA3 = RPqjikiseNknZhiNq.getParent();
 
 RPqjikiseNknZhiNq.sq_var.setFloat(5,0.0);
 
 if(UEnS7HOuEz5OBnOZA3 && UEnS7HOuEz5OBnOZA3.isApplyCustomRotate())
 RPqjikiseNknZhiNq.sq_var.setFloat(5, UEnS7HOuEz5OBnOZA3.getCustomRotateAngle());
 else
 RPqjikiseNknZhiNq.sq_var.setFloat(5, 0.0);
 
} ;

function onDestroyObject_execution(OgFhfaJwRGTK06R_gfRO,_BKTCH12970x)
{
 return true;
} ;

function onChangeState_execution(OgFhfaJwRGTK06R_gfRO, _BKTCH12970x, tAmf6rq3OezYr_IiveNb, OlBDlcG8zIRfo1Xj0i)
{ 
 if(!OgFhfaJwRGTK06R_gfRO) return;
 
 OgFhfaJwRGTK06R_gfRO.sq_var.setBool(0,true);
 OgFhfaJwRGTK06R_gfRO.sq_var.setInt(4,tAmf6rq3OezYr_IiveNb); 
 
 if(tAmf6rq3OezYr_IiveNb >= 7 && !isGrabableParent(OgFhfaJwRGTK06R_gfRO))
 {
 OgFhfaJwRGTK06R_gfRO.setValid(false);
 return;
 }
 
 setNewState_execution(OgFhfaJwRGTK06R_gfRO, _BKTCH12970x ,tAmf6rq3OezYr_IiveNb, false);
} ;

function setNewState_execution(wSELsYZ8jfRKYcEk, f0M0h7_tjTLHN ,XoZzyfKuF3da3TnP7C, BlxBjTTRRC11alJAmD2f3fMt)
{ 
 local I43sUObBH25hszHEArdD22K = wSELsYZ8jfRKYcEk.getParent();
 local VMB5nVmxu1Dmm = wSELsYZ8jfRKYcEk.getSource();
 if(!I43sUObBH25hszHEArdD22K || !VMB5nVmxu1Dmm) {
 wSELsYZ8jfRKYcEk.setValid(false);
 return;
 }
 
 local Nex5cjSstprDa9 = 195; 
 local nZWrJjIDlgZzW8aIu1k = I43sUObBH25hszHEArdD22K.getObjectHeight()/2;
 
 
 if(XoZzyfKuF3da3TnP7C == 1) { 
 setPosFromObject(wSELsYZ8jfRKYcEk,99,-1,90 - nZWrJjIDlgZzW8aIu1k); 
 }
 else if(XoZzyfKuF3da3TnP7C == 2) { 
 setPosFromObject(wSELsYZ8jfRKYcEk,240,-1,90 - nZWrJjIDlgZzW8aIu1k);
 }
 else if(XoZzyfKuF3da3TnP7C == 3) {
 setPosFromObject(wSELsYZ8jfRKYcEk,240,-1,90 - nZWrJjIDlgZzW8aIu1k);
 }
 else if(XoZzyfKuF3da3TnP7C == 4) {
 local oiNnlxmSTLFEh = sq_GetDistancePos(240, I43sUObBH25hszHEArdD22K.getDirection(), 2);
 setPosFromObject(wSELsYZ8jfRKYcEk,oiNnlxmSTLFEh,-1,90 - nZWrJjIDlgZzW8aIu1k);
 }
 else if(XoZzyfKuF3da3TnP7C == 5) { 
 setPosFromObject(wSELsYZ8jfRKYcEk,240,-1,90 - nZWrJjIDlgZzW8aIu1k);
 }
 else if(XoZzyfKuF3da3TnP7C == 6) {
 local oiNnlxmSTLFEh = sq_GetDistancePos(240, I43sUObBH25hszHEArdD22K.getDirection(), 1);
 setPosFromObject(wSELsYZ8jfRKYcEk,oiNnlxmSTLFEh,-1,90 - nZWrJjIDlgZzW8aIu1k); 
 }
 else if(XoZzyfKuF3da3TnP7C == 7) {
 local oiNnlxmSTLFEh = sq_GetDistancePos(240, I43sUObBH25hszHEArdD22K.getDirection(), 2);
 setPosFromObject(wSELsYZ8jfRKYcEk,oiNnlxmSTLFEh,-1,90 - nZWrJjIDlgZzW8aIu1k); 
 }
 else if(XoZzyfKuF3da3TnP7C == 8) { 
 setPosFromObject(wSELsYZ8jfRKYcEk,193,-1,193 - nZWrJjIDlgZzW8aIu1k);
 }
 else if(XoZzyfKuF3da3TnP7C == 9) {
 setPosFromObject(wSELsYZ8jfRKYcEk,0 - nZWrJjIDlgZzW8aIu1k,1,286); 
 local zK2V2AvgEr7Qh0a = 105 * 0.017453; 
 I43sUObBH25hszHEArdD22K.setCustomRotate(true,zK2V2AvgEr7Qh0a);
 }
 else if(XoZzyfKuF3da3TnP7C == 10) {
 setPosFromObject(wSELsYZ8jfRKYcEk,-45 - nZWrJjIDlgZzW8aIu1k,1,275);
 local zK2V2AvgEr7Qh0a = 90 * 0.017453; 
 I43sUObBH25hszHEArdD22K.setCustomRotate(true,zK2V2AvgEr7Qh0a);
 }
 else if(XoZzyfKuF3da3TnP7C == 11) {
 setPosFromObject(wSELsYZ8jfRKYcEk,-Nex5cjSstprDa9 - nZWrJjIDlgZzW8aIu1k,1,25);
 }
 else if(XoZzyfKuF3da3TnP7C == 12) {
 setPosFromObject(wSELsYZ8jfRKYcEk,-Nex5cjSstprDa9 - nZWrJjIDlgZzW8aIu1k,1,25);
 }
 else if(XoZzyfKuF3da3TnP7C == 13) {
 setPosFromObject(wSELsYZ8jfRKYcEk,-Nex5cjSstprDa9 - nZWrJjIDlgZzW8aIu1k,1,25);
 }
 else if(XoZzyfKuF3da3TnP7C == 14) {
 setPosFromObject(wSELsYZ8jfRKYcEk,-Nex5cjSstprDa9 - nZWrJjIDlgZzW8aIu1k,1,25);
 }
 else if(XoZzyfKuF3da3TnP7C == 15) {
 setPosFromObject(wSELsYZ8jfRKYcEk,-Nex5cjSstprDa9 - nZWrJjIDlgZzW8aIu1k,1,25);
 }
 else if(XoZzyfKuF3da3TnP7C == 16) {
 setPosFromObject(wSELsYZ8jfRKYcEk,-Nex5cjSstprDa9 - nZWrJjIDlgZzW8aIu1k,1,25);
 }
 else if(XoZzyfKuF3da3TnP7C == 17) {
 setPosFromObject(wSELsYZ8jfRKYcEk,-Nex5cjSstprDa9 - nZWrJjIDlgZzW8aIu1k,1,25);
 } 
 else if(XoZzyfKuF3da3TnP7C == 18) {
 setPosFromObject(wSELsYZ8jfRKYcEk,-Nex5cjSstprDa9 + 10 - nZWrJjIDlgZzW8aIu1k,-1,5);
 } 
 else if(XoZzyfKuF3da3TnP7C == 19) { 
 setPosFromObject(wSELsYZ8jfRKYcEk,-Nex5cjSstprDa9 + 10 - nZWrJjIDlgZzW8aIu1k,-1,2); 
 } 
 else if(XoZzyfKuF3da3TnP7C == 20) {
 setPosFromObject(wSELsYZ8jfRKYcEk,-Nex5cjSstprDa9 + 10 - nZWrJjIDlgZzW8aIu1k,-1,0);
 }
 else if(XoZzyfKuF3da3TnP7C == 21) {
 setPosFromObject(wSELsYZ8jfRKYcEk,-Nex5cjSstprDa9 + 10 - nZWrJjIDlgZzW8aIu1k,-1,2); 
 }
 else if(XoZzyfKuF3da3TnP7C == 22) {
 setPosFromObject(wSELsYZ8jfRKYcEk,-Nex5cjSstprDa9 + 10 - nZWrJjIDlgZzW8aIu1k,-1,0); 
 }
 else if(XoZzyfKuF3da3TnP7C == 23) {
 setPosFromObject(wSELsYZ8jfRKYcEk,-Nex5cjSstprDa9 + 10 - nZWrJjIDlgZzW8aIu1k,-1,2); 
 }
 else if(XoZzyfKuF3da3TnP7C == 24) { 
 setPosFromObject(wSELsYZ8jfRKYcEk,-Nex5cjSstprDa9 + 10 - nZWrJjIDlgZzW8aIu1k,-1,0);
 }
 else if(XoZzyfKuF3da3TnP7C == 25) {
 setPosFromObject(wSELsYZ8jfRKYcEk,-Nex5cjSstprDa9 + 10 - nZWrJjIDlgZzW8aIu1k,-1,5);
 }
 else if(XoZzyfKuF3da3TnP7C == 26) {
 setPosFromObject(wSELsYZ8jfRKYcEk,111 - nZWrJjIDlgZzW8aIu1k,-1,25); 
 }
 else if(XoZzyfKuF3da3TnP7C == 28) {
 }
 else if(XoZzyfKuF3da3TnP7C == 29) { 
 wSELsYZ8jfRKYcEk.sq_var.setBool(0,false); 
 } 
 else if(XoZzyfKuF3da3TnP7C >= 31) {
 setPosFromObject(wSELsYZ8jfRKYcEk,240,-1,90 - nZWrJjIDlgZzW8aIu1k);
 }
 else 
 {
 if(BlxBjTTRRC11alJAmD2f3fMt)
 return;
 else
 setNewState_execution(wSELsYZ8jfRKYcEk, f0M0h7_tjTLHN, f0M0h7_tjTLHN, true); 
 }
} ;

 
function onEnd_execution(TKrP_ljAztesMXzQ)
{
 if(!TKrP_ljAztesMXzQ) return;
 
 local AHkn87mXUN259Ps6J_I0 = TKrP_ljAztesMXzQ.getParent(); 
 
 if(!AHkn87mXUN259Ps6J_I0) {
 TKrP_ljAztesMXzQ.setValid(false);
 return;
 }
 
 
 if(isGrabableParent(TKrP_ljAztesMXzQ)) {
 AHkn87mXUN259Ps6J_I0.setCustomRotate(false,0.0); 
 local vpALRmhOEWqyne = sq_GetDistancePos(AHkn87mXUN259Ps6J_I0.getXPos(), AHkn87mXUN259Ps6J_I0.getDirection(), -200);
 sq_SetCurrentPos(AHkn87mXUN259Ps6J_I0,vpALRmhOEWqyne,AHkn87mXUN259Ps6J_I0.getYPos(),AHkn87mXUN259Ps6J_I0.getZPos()); 
 
 if(AHkn87mXUN259Ps6J_I0.isMyControlObject())
 sq_SimpleMoveToNearMovablePos(AHkn87mXUN259Ps6J_I0,300);
 }
 
 local cLlPTHpcfT = TKrP_ljAztesMXzQ.sq_var.getFloat(5);
 if(cLlPTHpcfT != AHkn87mXUN259Ps6J_I0.getCustomRotateAngle())
 AHkn87mXUN259Ps6J_I0.setCustomRotate(true,cLlPTHpcfT);
} ;


function proc_execution(rZYq2U1bOTgTSM)
{
 if(!rZYq2U1bOTgTSM)
 return;
 
 
 local rPhrG0D7AjJ_lJhaUIHPZV = rZYq2U1bOTgTSM.sq_var.getBool(0);
 local aUyCSDZ8WSx = rZYq2U1bOTgTSM.sq_var.getInt(4);
 if((rPhrG0D7AjJ_lJhaUIHPZV && aUyCSDZ8WSx >= 1))
 {
 if (isGrabableParent(rZYq2U1bOTgTSM) || (aUyCSDZ8WSx < 7 && !isGrabableParent(rZYq2U1bOTgTSM)) ) 
 { 
 local N_Z1aoSVArIQOoaONC = rZYq2U1bOTgTSM.getParent();
 local B8Yrnm51dKoyyB = rZYq2U1bOTgTSM.getSource();
 
 if(!sq_IsFixture(N_Z1aoSVArIQOoaONC)) 
 {
 local naGYcj70aMMUr = rZYq2U1bOTgTSM.sq_var.getInt(1);
 local bwqYxnkoFsztih4l = rZYq2U1bOTgTSM.sq_var.getInt(2);
 local bEkJ0CojKH7atmXLmXU7QDhH = rZYq2U1bOTgTSM.sq_var.getInt(3); 
 
 naGYcj70aMMUr = sq_GetDistancePos(B8Yrnm51dKoyyB.getXPos(), B8Yrnm51dKoyyB.getDirection(), naGYcj70aMMUr);
 bwqYxnkoFsztih4l = B8Yrnm51dKoyyB.getYPos() + bwqYxnkoFsztih4l;
 
 if(isGrabableParent(rZYq2U1bOTgTSM))
 bEkJ0CojKH7atmXLmXU7QDhH = B8Yrnm51dKoyyB.getZPos() + bEkJ0CojKH7atmXLmXU7QDhH;
 else
 bEkJ0CojKH7atmXLmXU7QDhH = N_Z1aoSVArIQOoaONC.getZPos(); 
 
 
 sq_SetCurrentPos(N_Z1aoSVArIQOoaONC,naGYcj70aMMUr,bwqYxnkoFsztih4l,bEkJ0CojKH7atmXLmXU7QDhH);
 }
 }
 }
} ;

function setPosFromObject(lZv9adU2_q_Q85XqgCtqHcE, dGR8PAH41oSCp__457iGFS, LFfLQJT5Lu, VvAnpusCmJsMKgCq4Ir) 
{
 if(!lZv9adU2_q_Q85XqgCtqHcE) return;
 lZv9adU2_q_Q85XqgCtqHcE.sq_var.setInt(1,dGR8PAH41oSCp__457iGFS);
 lZv9adU2_q_Q85XqgCtqHcE.sq_var.setInt(2,LFfLQJT5Lu);
 lZv9adU2_q_Q85XqgCtqHcE.sq_var.setInt(3,VvAnpusCmJsMKgCq4Ir);
} ;


