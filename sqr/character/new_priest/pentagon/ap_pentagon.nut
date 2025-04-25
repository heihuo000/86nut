
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_priest_pentagon") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_priest_pentagon") 
}


 
function proc_appendage_priest_pentagon(QwhqCWv7VNMHGSWZGmH)
{
 if(!QwhqCWv7VNMHGSWZGmH) return;
 local tQnwXPcsMurkX019irHVbMIe = QwhqCWv7VNMHGSWZGmH.getParent(); 
 local wJPRMFcrqvVRtuw6q9YAb = QwhqCWv7VNMHGSWZGmH.getSource(); 
 if(!tQnwXPcsMurkX019irHVbMIe || !wJPRMFcrqvVRtuw6q9YAb || wJPRMFcrqvVRtuw6q9YAb.getVar("end").getBool(0) == true)
 {
 QwhqCWv7VNMHGSWZGmH.setValid(false);
 return;
 }
 if(wJPRMFcrqvVRtuw6q9YAb.getVar("state").get_vector(0) < 12 || QwhqCWv7VNMHGSWZGmH.getVar("isMove").getBool(0) == true)
 {
 if(QwhqCWv7VNMHGSWZGmH.getVar().size_vector() <= 0)
 {
 
 QwhqCWv7VNMHGSWZGmH.getVar().clear_vector(); 
 QwhqCWv7VNMHGSWZGmH.getVar().push_vector(sq_GetXPos(tQnwXPcsMurkX019irHVbMIe)); 
 QwhqCWv7VNMHGSWZGmH.getVar().push_vector(sq_GetYPos(tQnwXPcsMurkX019irHVbMIe)); 
 return;
 }
 else
 {
 sq_setCurrentAxisPos(tQnwXPcsMurkX019irHVbMIe, 0, QwhqCWv7VNMHGSWZGmH.getVar().get_vector(0)); 
 sq_setCurrentAxisPos(tQnwXPcsMurkX019irHVbMIe, 1, QwhqCWv7VNMHGSWZGmH.getVar().get_vector(1)); 
 }
 }
} ;

 
function onEnd_appendage_priest_pentagon(xI3g4nTDIjLlgsp)
{
 if(!xI3g4nTDIjLlgsp) return;
 local oU1srSGH4FHXG4SGKyhA = xI3g4nTDIjLlgsp.getParent(); 
 
 if(!oU1srSGH4FHXG4SGKyhA)
 {
 xI3g4nTDIjLlgsp.setValid(false);
 return;
 }
 sq_SimpleMoveToNearMovablePos(oU1srSGH4FHXG4SGKyhA, 200); 
} ;


