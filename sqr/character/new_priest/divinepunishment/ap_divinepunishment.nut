
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_priest_divinepunishment") 
}



function proc_appendage_priest_divinepunishment(i7AFzPiaueVt)
{
 if(!i7AFzPiaueVt || !i7AFzPiaueVt.isValid()) {
 return; 
 }
 local MesPOEl0b8yGYOEKoZixOr83 = i7AFzPiaueVt.getParent(); 
 if(!MesPOEl0b8yGYOEKoZixOr83 || MesPOEl0b8yGYOEKoZixOr83.getState() == STATE_DIE || MesPOEl0b8yGYOEKoZixOr83.isDead()) { 
 i7AFzPiaueVt.setValid(false); 
 return;
 }
} ;

