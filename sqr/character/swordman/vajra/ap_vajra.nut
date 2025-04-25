
//ï¿?ï¿?ï¿??ª¯ï¿?ï¿??nutï¿??¬°ï¿??ï¿?ï¿??ï¿??ï¿?ï¿?ï¿??ï¿?ï¿?ï¿?ï¿?ï¿??ï¿??ï¿??ï¿?ï¿??ï¿??
//ï¿?ï¿??ï¿?ï¿?60 QQ506807329   ï¿??ï¿?NUTï¿?ï¿?ï¿?ï¿??? ï¿??ï¿??Ð¾ï¿?500ï¿?ï¿??Cï¿?ï¿?1000ï¿??ï¿???ï¿??jï¿??ï¿?ï¿?ï¿???? ï¿??ï¿?ï¿??ï¿??ï¿?ï¿?ï¿?? ï¿??ï¿?? ï¿??? ï¿?¥ï? ï¿??ï¿?? NPC NPK ï¿?ªï? ï¿?ï¿?? act obj  UIï¿??ï¿??ï¿??ï¿??ï¿?ï¿??ï¿?ï¿?ï¿?ï¿??ï¿?ï¿?

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("getImmuneTypeDamageRate", "getImmuneTypeDamageRate_appendage_swordman_vajra")
 appendage.sq_AddFunctionName("proc", "proc_appendage_swordman_vajra")
}



 
function getImmuneTypeDamageRate_appendage_swordman_vajra(Kils27ipgRrtVz7, Nt0ecmor5gogEvHanHgBy7, vtcTN4R5RzkpxjCZ)
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
 && peaCTV8N0ZGQsGS9eBMmoKx.getVar("skill").get_vector(0) == 243)
 {
 LVCaY6FdwNvIzM2wBrWV = Nt0ecmor5gogEvHanHgBy7*1.5; 
 }
 return LVCaY6FdwNvIzM2wBrWV;
} ;


 
function proc_appendage_swordman_vajra(WzLm1opoohOtuU7mLYeaj)
{
 if(!WzLm1opoohOtuU7mLYeaj) return;
 local XFg9eHcj1DBh5e = WzLm1opoohOtuU7mLYeaj.getParent(); 
 local ZbOUYlgq4sem = WzLm1opoohOtuU7mLYeaj.getSource(); 
 if(!ZbOUYlgq4sem || !XFg9eHcj1DBh5e) {
 WzLm1opoohOtuU7mLYeaj.setValid(false); 
 return;
 }
} ;