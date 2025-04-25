
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("proc", "proc_appendage_atfighter_chainbrake")
    appendage.sq_AddFunctionName("onStart", "onStart_appendage_atfighter_chainbrake")
    appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_atfighter_chainbrake")
}


function proc_appendage_atfighter_chainbrake(b5auQt29ZJBGNtERo)
{
 if(!b5auQt29ZJBGNtERo) return;
 local WCDjwRh3IWyTM_NtayN5VXM = b5auQt29ZJBGNtERo.getParent();
 local dl7PghGm37E8P1XOK = b5auQt29ZJBGNtERo.sq_GetSourceChrTarget();
 if(!dl7PghGm37E8P1XOK || !WCDjwRh3IWyTM_NtayN5VXM || dl7PghGm37E8P1XOK.getState() != 230)
 {
 b5auQt29ZJBGNtERo.setValid(false);
 return;
 }
 local EkXyLNJAXdUeNRCuw = dl7PghGm37E8P1XOK.getSkillSubState(); 
 if(EkXyLNJAXdUeNRCuw >= 5)
 {
 local QIUiGIQKfHcpduyhdnE_Q = b5auQt29ZJBGNtERo.getVar().get_ct_vector(0); 
 if(QIUiGIQKfHcpduyhdnE_Q)
 {
 local CTckXL9_tzJq = QIUiGIQKfHcpduyhdnE_Q.Get(); 
 local pKuTrY1W0yW0 = 250; 
 local NmidYw9dG1FdFPIg = b5auQt29ZJBGNtERo.getVar().get_vector(0); 
 local wze44n5CgammZhCjxZ = b5auQt29ZJBGNtERo.getVar().get_vector(1); 
 local SLGT0JfJxijBaehr8G = sq_GetUniformVelocity(NmidYw9dG1FdFPIg, wze44n5CgammZhCjxZ, CTckXL9_tzJq, pKuTrY1W0yW0); 
 sq_SetCurrentPos(WCDjwRh3IWyTM_NtayN5VXM, SLGT0JfJxijBaehr8G, sq_GetYPos(dl7PghGm37E8P1XOK), 0); 
 }
 else
 {
 b5auQt29ZJBGNtERo.getVar().clear_ct_vector(); 
 b5auQt29ZJBGNtERo.getVar().push_ct_vector(); 
 QIUiGIQKfHcpduyhdnE_Q = b5auQt29ZJBGNtERo.getVar().get_ct_vector(0); 
 QIUiGIQKfHcpduyhdnE_Q.Reset(); 
 QIUiGIQKfHcpduyhdnE_Q.Start(10000, 0); 
 local C0wluLQFCRLVpH6 = sq_GetXPos(WCDjwRh3IWyTM_NtayN5VXM); 
 b5auQt29ZJBGNtERo.getVar().clear_vector(); 
 b5auQt29ZJBGNtERo.getVar().push_vector(C0wluLQFCRLVpH6); 
 b5auQt29ZJBGNtERo.getVar().push_vector(sq_GetDistancePos(C0wluLQFCRLVpH6, sq_GetDirection(dl7PghGm37E8P1XOK), 30)); 
 }
 return; 
 }
 local DtHwtIPETMgydzwFE80Q = sq_GetDirection(dl7PghGm37E8P1XOK); 
 local vbFk2zeEs68rbU_pT7 = sq_GetDistancePos(sq_GetXPos(dl7PghGm37E8P1XOK), DtHwtIPETMgydzwFE80Q, 70); 
 sq_SetCurrentPos(WCDjwRh3IWyTM_NtayN5VXM, vbFk2zeEs68rbU_pT7, sq_GetYPos(dl7PghGm37E8P1XOK), 0); 
 sq_SetCurrentDirection(WCDjwRh3IWyTM_NtayN5VXM, sq_GetOppositeDirection(DtHwtIPETMgydzwFE80Q)); 
} ;

function onStart_appendage_atfighter_chainbrake(dBdxYiENrl)
{
 if(!dBdxYiENrl) return;
 dBdxYiENrl.getVar().clear_ct_vector(); 
 dBdxYiENrl.getVar().clear_vector(); 
} ;

function onEnd_appendage_atfighter_chainbrake(dBdxYiENrl)
{
 if(!dBdxYiENrl) return;
 local yj7NgkqP9pdEtRzGQ6M = dBdxYiENrl.getParent();
 if(!yj7NgkqP9pdEtRzGQ6M)
 {
 dBdxYiENrl.setValid(false);
 return;
 }
 sq_SimpleMoveToNearMovablePos(yj7NgkqP9pdEtRzGQ6M, 200); 
} ;


