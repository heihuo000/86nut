
function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc" , "proc_appendage_wavemark")
}
function proc_appendage_wavemark(appendage)
{
 if (!appendage)
 return; 
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 = appendage.getParent();
 local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 = sq_GetCNRDObjectToSQRCharacter(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1);
 
 if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 || Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.getState() == STATE_DIE || Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.isDead()) 
{
 appendage.setValid(false);
 return;
 
}
 
 if(appendage.getTimer().Get() < 10000) return;
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.sq_IsEnterSkill(47) != -1)
 if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.sq_IsUseSkill(47))
 
{
 appendage.setValid(false);
 return;
 
}
}
