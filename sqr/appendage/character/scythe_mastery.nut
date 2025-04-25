
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_priest_scythe_mastery")
 appendage.sq_AddFunctionName("isDrawAppend", "isDrawAppend_appendage_priest_scythe_mastery")
}


function sq_AddEffect(appendage)
{
 appendage.sq_AddEffectFront("Character/Priest/Effect/Animation/ScytheMastery/1_aura_normal.ani")
}


function proc_appendage_priest_scythe_mastery(n3njwnPcS7ttSI)
{
} ;

function isDrawAppend_appendage_priest_scythe_mastery(n3njwnPcS7ttSI)
{
 if(!n3njwnPcS7ttSI) {
 return false;
 }
 
 local BBOExBviDDEhX7uF5V3gfpA = n3njwnPcS7ttSI.getParent(); 
 
 
 if(BBOExBviDDEhX7uF5V3gfpA) {
 
 switch(BBOExBviDDEhX7uF5V3gfpA.getState())
 { 
 case 64 : 
 case 67 :
 case 68 :
 case 69 :
 case 74 :
 return false;
 }
 
 if(isAvengerAwakenning(BBOExBviDDEhX7uF5V3gfpA))
 return false;
 
 if(sq_GetGrowAvatarViewControl(BBOExBviDDEhX7uF5V3gfpA))
 return false;
 }
 return true;
} ;