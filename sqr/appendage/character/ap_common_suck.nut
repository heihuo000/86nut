
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_common_suck")
 appendage.sq_AddFunctionName("prepareDraw", "prepareDraw_appendage_common_suck")
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_common_suck")
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_common_suck")
 appendage.sq_AddFunctionName("isEnd", "isEnd_appendage_common_suck")
}


function sq_AddEffect(appendage)
{
}

function proc_appendage_common_suck(TbCe1WWK_YsEq6e8WQ)
{
 if(!TbCe1WWK_YsEq6e8WQ) {
 return;
 }
 
} ;


function onStart_appendage_common_suck(M16M8p7ObO3VMEm)
{
 if(!M16M8p7ObO3VMEm) {
 return;
 }
 
 local C_r7xLiWykfcf0wA = M16M8p7ObO3VMEm.getParent(); 
 
 
} ;


function prepareDraw_appendage_common_suck(Peve7x9IjcnVoGmqGkjyh)
{
 if(!Peve7x9IjcnVoGmqGkjyh) {
 return;
 }
 
 local ZqbeiCuChwSTdliOeb = Peve7x9IjcnVoGmqGkjyh.getParent(); 
} ;




function onEnd_appendage_common_suck(zgBj6YwUai2)
{
 if(!zgBj6YwUai2) {
 return;
 }
 
 local I0nXPLEfsilAJNes9HEE9t2 = zgBj6YwUai2.getParent();
} ;


 
function isEnd_appendage_common_suck(GL8eefObLaAtjcVe1ujd0GIe)
{
 if(!GL8eefObLaAtjcVe1ujd0GIe) return false;
 
 local ZxxtdmTbzI7h0Gscj = GL8eefObLaAtjcVe1ujd0GIe.getTimer().Get();
 
 return false;
} ;