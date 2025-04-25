
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_mage_electricrabbit")
    appendage.sq_AddFunctionName("getImmuneTypeDamageRate", "getImmuneTypeDamageRate_appendage_mage_electricrabbit")
}


function proc_appendage_mage_electricrabbit(R6ogHnfBxZjID)
{
 if(!R6ogHnfBxZjID)return;
 local NTdbFwfIOu = R6ogHnfBxZjID.getParent();
 if(!NTdbFwfIOu || NTdbFwfIOu.getState() != 131) 
 {
 R6ogHnfBxZjID.setValid(false);
 return;
 }
} ;

function getImmuneTypeDamageRate_appendage_mage_electricrabbit(R6ogHnfBxZjID, NTdbFwfIOu, KVv1HzKIqmXxRwia0)
{
 if(!R6ogHnfBxZjID) return NTdbFwfIOu;
 local baOFVk3e8tAJZg1L0ELVT = R6ogHnfBxZjID.getVar("hpRate").get_vector(0); 
 if(baOFVk3e8tAJZg1L0ELVT)
 NTdbFwfIOu = NTdbFwfIOu * (baOFVk3e8tAJZg1L0ELVT / 100.0);
 return NTdbFwfIOu.tointeger();
} ;

