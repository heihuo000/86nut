
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("getImmuneTypeDamageRate", "getImmuneTypeDamageRate_appendage_swordman_lightninggod")
 appendage.sq_AddFunctionName("proc", "proc_appendage_swordman_lightninggod")
}



 
function getImmuneTypeDamageRate_appendage_swordman_lightninggod(Kils27ipgRrtVz7, Nt0ecmor5gogEvHanHgBy7, vtcTN4R5RzkpxjCZ)
{
 if(!Kils27ipgRrtVz7) return Nt0ecmor5gogEvHanHgBy7;
 local _tyYJZIZGZU64 = Kils27ipgRrtVz7.getParent(); 
 local YHDWM_Va8zoT = Kils27ipgRrtVz7.getSource(); 
 local peaCTV8N0ZGQsGS9eBMmoKx = sq_GetCNRDObjectToCollisionObject(vtcTN4R5RzkpxjCZ); 
 if(!YHDWM_Va8zoT || !_tyYJZIZGZU64 || !peaCTV8N0ZGQsGS9eBMmoKx)
 {
 Kils27ipgRrtVz7.setValid(false); 
 return Nt0ecmor5gogEvHanHgBy7;
 }
 local LVCaY6FdwNvIzM2wBrWV = Nt0ecmor5gogEvHanHgBy7;
 
 if(sq_IsValidActiveStatus(_tyYJZIZGZU64, ACTIVESTATUS_LIGHTNING)
 && peaCTV8N0ZGQsGS9eBMmoKx.isObjectType(OBJECTTYPE_PASSIVE)
 && peaCTV8N0ZGQsGS9eBMmoKx.getVar("skill").get_vector(0) == 244)
 {
 LVCaY6FdwNvIzM2wBrWV += Kils27ipgRrtVz7.getVar().get_vector(0); 
 }
 return LVCaY6FdwNvIzM2wBrWV;
} ;


 
function proc_appendage_swordman_lightninggod(WzLm1opoohOtuU7mLYeaj)
{
 if(!WzLm1opoohOtuU7mLYeaj) return;
 local XFg9eHcj1DBh5e = WzLm1opoohOtuU7mLYeaj.getParent(); 
 local ZbOUYlgq4sem = WzLm1opoohOtuU7mLYeaj.getSource(); 
 if(!ZbOUYlgq4sem || !XFg9eHcj1DBh5e) {
 WzLm1opoohOtuU7mLYeaj.setValid(false); 
 return;
 }
} ;