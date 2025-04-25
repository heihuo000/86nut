
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("proc", "proc_appendage_atfighter_finalextremestrike")
    appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_atfighter_finalextremestrike")
}



function proc_appendage_atfighter_finalextremestrike(f3hFfpSdcAhXvEq1VaCMpAEM)
{
 if(!f3hFfpSdcAhXvEq1VaCMpAEM) return;
 local X9q7k8InQEHndnLtN_BSoM = f3hFfpSdcAhXvEq1VaCMpAEM.getParent();
 local TWuHQTYbljNx9Wy3EPd = f3hFfpSdcAhXvEq1VaCMpAEM.getSource(); 
 if(!TWuHQTYbljNx9Wy3EPd || !X9q7k8InQEHndnLtN_BSoM || TWuHQTYbljNx9Wy3EPd.getState() != 231)
 {
 f3hFfpSdcAhXvEq1VaCMpAEM.setValid(false);
 return;
 }
} ;

function onEnd_appendage_atfighter_finalextremestrike(PnWmx1ir1F7rp7batAPM_i)
{
 if(!PnWmx1ir1F7rp7batAPM_i) return;
 local nzDlpeM4PCHutDV4fhbILB = PnWmx1ir1F7rp7batAPM_i.getParent();
 if(!nzDlpeM4PCHutDV4fhbILB)
 {
 PnWmx1ir1F7rp7batAPM_i.setValid(false);
 return;
 }
 sq_SimpleMoveToNearMovablePos(nzDlpeM4PCHutDV4fhbILB, 200); 
 nzDlpeM4PCHutDV4fhbILB.setCustomRotate(false, 0.0); 
} ;
