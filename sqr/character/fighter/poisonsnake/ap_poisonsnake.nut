
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_fighter_poisonsnake")
}

function onStart_appendage_fighter_poisonsnake(nCALmF6gxkNM)
{
 if(!nCALmF6gxkNM) return;
 nCALmF6gxkNM.sq_DeleteEffectFront(); 
 nCALmF6gxkNM.sq_AddEffectFront("character/fighter/effect/animation/poisonsnake/poisonbody_loop.ani"); 
} ;