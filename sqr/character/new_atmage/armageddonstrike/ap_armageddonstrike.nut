
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_atmage_armageddonstrike")
}


function proc_appendage_atmage_armageddonstrike(dVYcNc9a7RzvMZcLIwj)
{
 if(!dVYcNc9a7RzvMZcLIwj) return;
 local WNNmJKXZ8yU4RY8wDvMPK27 = dVYcNc9a7RzvMZcLIwj.getParent();
 local dxP2lKSlfA8iM6Y6EieLNhXa = sq_GetCNRDObjectToSQRCharacter(dVYcNc9a7RzvMZcLIwj.getSource()); 
 if(!WNNmJKXZ8yU4RY8wDvMPK27 || !dxP2lKSlfA8iM6Y6EieLNhXa || dxP2lKSlfA8iM6Y6EieLNhXa.getState() != 245 || dxP2lKSlfA8iM6Y6EieLNhXa.getSkillSubState() == 2)
 {
 dVYcNc9a7RzvMZcLIwj.setValid(false);
 return;
 }
} ;



