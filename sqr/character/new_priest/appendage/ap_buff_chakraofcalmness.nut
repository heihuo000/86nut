
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_priest_buff_chakraofcalmness")
    appendage.sq_AddFunctionName("onVaildTimeEnd", "onVaildTimeEnd_appendage_priest_buff_chakraofcalmness")
}

function onStart_appendage_priest_buff_chakraofcalmness(nA3stPQKq6spCz8GtprKsg)
{
 if (!nA3stPQKq6spCz8GtprKsg) return;
 local _hey4w9B0d3GWZ64z = nA3stPQKq6spCz8GtprKsg.getParent(); 
 if(!_hey4w9B0d3GWZ64z) {
 nA3stPQKq6spCz8GtprKsg.setValid(false);
 return;
 }
 
 _hey4w9B0d3GWZ64z = sq_GetCNRDObjectToSQRCharacter(_hey4w9B0d3GWZ64z);
 if(_hey4w9B0d3GWZ64z)
 _hey4w9B0d3GWZ64z.setSkillCommandEnable(241,ture);
} ;


function onVaildTimeEnd_appendage_priest_buff_chakraofcalmness(RjUsaE7IEV)
{
 if(!RjUsaE7IEV) return;
 local U2qcJl9rNBTo1sKlT8 = RjUsaE7IEV.getParent(); 
 if(!U2qcJl9rNBTo1sKlT8) {
 RjUsaE7IEV.setValid(false);
 return;
 }
 
 U2qcJl9rNBTo1sKlT8 = sq_GetCNRDObjectToSQRCharacter(U2qcJl9rNBTo1sKlT8);
 if(U2qcJl9rNBTo1sKlT8)
 U2qcJl9rNBTo1sKlT8.setSkillCommandEnable(241,false);
} ;