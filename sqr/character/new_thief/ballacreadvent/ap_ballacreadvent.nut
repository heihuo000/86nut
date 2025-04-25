
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_thief_ballacreadvent")
}





function proc_appendage_thief_ballacreadvent(P17_Ie67RvIkHnpfoMfPp0)
{
 if(!P17_Ie67RvIkHnpfoMfPp0) return;
 local XfsYmB3qtYof_mmblqAAafN = P17_Ie67RvIkHnpfoMfPp0.getParent();
 local PNzQS9_bU5yEsnnqmdlFbqaG = P17_Ie67RvIkHnpfoMfPp0.getSource(); 
 if(!XfsYmB3qtYof_mmblqAAafN || !PNzQS9_bU5yEsnnqmdlFbqaG || sq_GetAnimationFrameIndex(PNzQS9_bU5yEsnnqmdlFbqaG.getCurrentAnimation())>=56)
 {
 P17_Ie67RvIkHnpfoMfPp0.setValid(false);
 return;
 }
} 
