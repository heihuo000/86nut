
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_avenger_awakening")
 appendage.sq_AddFunctionName("prepareDraw", "prepareDraw_appendage_avenger_awakening")
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_avenger_awakening")
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_avenger_awakening")
 appendage.sq_AddFunctionName("isEnd", "isEnd_appendage_avenger_awakening")
 appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_avenger_awakening")
}


function sq_AddEffect(appendage)
{
  
}




function proc_appendage_avenger_awakening(TbCe1WWK_YsEq6e8WQ)
{
 if(!TbCe1WWK_YsEq6e8WQ) {
 return;
 }
 
 
 local uGa28Wn4doztPMH0 = TbCe1WWK_YsEq6e8WQ.getParent();
 if(!uGa28Wn4doztPMH0) {
 TbCe1WWK_YsEq6e8WQ.setValid(false);
 return;
 }
 sq_SetCustomDamageType(uGa28Wn4doztPMH0, true, 1); 
} ;

function onSetHp_appendage_avenger_awakening(Peve7x9IjcnVoGmqGkjyh, ZqbeiCuChwSTdliOeb, AdPxQvsoEg_SOs6sdYCetkc)
{
 local zqTl7Z6tZdO = Peve7x9IjcnVoGmqGkjyh.getParent();
 
 if(Peve7x9IjcnVoGmqGkjyh.sq_var.size_vector() != (2 + 1)) {
 return -1;
 }
 if(AdPxQvsoEg_SOs6sdYCetkc && zqTl7Z6tZdO && zqTl7Z6tZdO.isEnemy(AdPxQvsoEg_SOs6sdYCetkc))
 { 
 local iINIBRTbjj2py = ZqbeiCuChwSTdliOeb;
 
 if (iINIBRTbjj2py <= 0) {
 iINIBRTbjj2py = 1;
 Peve7x9IjcnVoGmqGkjyh.sq_var.set_vector(1, 0);
 }
 
 return iINIBRTbjj2py;
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 return -1;
} ;




function onStart_appendage_avenger_awakening(n3njwnPcS7ttSI)
{
 if(!n3njwnPcS7ttSI) {
 return;
 }
 
 local BBOExBviDDEhX7uF5V3gfpA = n3njwnPcS7ttSI.getParent(); 
 
 
 BBOExBviDDEhX7uF5V3gfpA.setObjectHeight(-1);
 
 
 
 
} ;


function prepareDraw_appendage_avenger_awakening(ZbSeouudoqBb)
{
 if(!ZbSeouudoqBb) {
 return;
 }
 
 local aity6jxR2vyjcI2eGP = ZbSeouudoqBb.getParent(); 
} ;




function onEnd_appendage_avenger_awakening(fCQTuWpa5SVneWuU5MHAzl)
{
 if(!fCQTuWpa5SVneWuU5MHAzl) {
 return;
 }
 
 local x_1vZNEqM6zjpsGQO0z0 = fCQTuWpa5SVneWuU5MHAzl.getParent();
 if(!x_1vZNEqM6zjpsGQO0z0) {
 fCQTuWpa5SVneWuU5MHAzl.setValid(false);
 return;
 }
 sq_SetCustomDamageType(x_1vZNEqM6zjpsGQO0z0, false, 1); 
 x_1vZNEqM6zjpsGQO0z0.setObjectHeight(-1);
 
 
 local fmMvObSpCbgFee = fCQTuWpa5SVneWuU5MHAzl.sqC_getHpMaxUp("HpMaxUp");
 
 if(fmMvObSpCbgFee) {
 if(fmMvObSpCbgFee.isValid()) {
 fmMvObSpCbgFee.setValid(false);
 }
 }
} ;


 
function isEnd_appendage_avenger_awakening(lQeRdxL9vQ)
{
 local ZaoROpHHK4I = lQeRdxL9vQ.getTimer().Get();
 
 if(lQeRdxL9vQ.sq_var.size_vector() != (2 + 1)) {
 return true;
 }
 
 local vVUAlV3alZoD_z7wx = lQeRdxL9vQ.sq_var.get_vector(0);
 local svRm6znG8PJtAMT2FOU = lQeRdxL9vQ.sq_var.get_vector(1); 
 
 if(ZaoROpHHK4I >= vVUAlV3alZoD_z7wx || svRm6znG8PJtAMT2FOU <= 0) { 
 
 return true;
 }
 
 return false;
} ;