
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("proc", "proc_appendage_atgunner_bloodnchain")
    appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_atgunner_bloodnchain")
}


function proc_appendage_atgunner_bloodnchain(NfDEvwlcEC_mxO)
{
 if(!NfDEvwlcEC_mxO) return;
 local vplKviQdJmi = NfDEvwlcEC_mxO.getParent();
 local ExhprNt6s8aDvIWa = NfDEvwlcEC_mxO.getSource(); 
 if(!vplKviQdJmi || !ExhprNt6s8aDvIWa|| ExhprNt6s8aDvIWa.getState()!= 239)
 {
 NfDEvwlcEC_mxO.setValid(false);
 return;
 }
} ;


