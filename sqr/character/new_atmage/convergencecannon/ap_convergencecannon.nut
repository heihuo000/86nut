
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_atmage_convergencecannon")
}


function proc_appendage_atmage_convergencecannon(dVYcNc9a7RzvMZcLIwj)
{
 if(!dVYcNc9a7RzvMZcLIwj) return;
 local WNNmJKXZ8yU4RY8wDvMPK27 = dVYcNc9a7RzvMZcLIwj.getParent();
 local dxP2lKSlfA8iM6Y6EieLNhXa = dVYcNc9a7RzvMZcLIwj.getSource(); 
 if(!WNNmJKXZ8yU4RY8wDvMPK27||!dxP2lKSlfA8iM6Y6EieLNhXa || dxP2lKSlfA8iM6Y6EieLNhXa.getState() == 12)
 {
 dVYcNc9a7RzvMZcLIwj.setValid(false);
 return;
 }
 local j6weO3xJ_ad7KjocrIXvK = dxP2lKSlfA8iM6Y6EieLNhXa.getXPos();
 local OKL6mKu0JWgo8 = dxP2lKSlfA8iM6Y6EieLNhXa.getYPos()+1;
 if(WNNmJKXZ8yU4RY8wDvMPK27.isMovablePos(j6weO3xJ_ad7KjocrIXvK, OKL6mKu0JWgo8)) 
 WNNmJKXZ8yU4RY8wDvMPK27.setCurrentPos(j6weO3xJ_ad7KjocrIXvK, OKL6mKu0JWgo8, dxP2lKSlfA8iM6Y6EieLNhXa.getZPos()); 
} ;



