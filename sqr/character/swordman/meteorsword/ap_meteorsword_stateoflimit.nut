
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

 

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_swordman_meteorsword_stateoflimit")
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_swordman_meteorsword_stateoflimit")
}


function onStart_appendage_swordman_meteorsword_stateoflimit(Kils27ipgRrtVz7)
{
 if(!Kils27ipgRrtVz7) return;
 local Nt0ecmor5gogEvHanHgBy7 = sq_GetCNRDObjectToSQRCharacter(Kils27ipgRrtVz7.getParent());
 if(!Nt0ecmor5gogEvHanHgBy7)
 {
 Kils27ipgRrtVz7.setValid(false);
 return;
 }
 local vtcTN4R5RzkpxjCZ = sq_GetSkillLevel(Nt0ecmor5gogEvHanHgBy7, 248); 
 local _tyYJZIZGZU64 = sq_GetSkillLevel(Nt0ecmor5gogEvHanHgBy7, 235); 
 local YHDWM_Va8zoT = Nt0ecmor5gogEvHanHgBy7.sq_GetLevelData(248, 8, vtcTN4R5RzkpxjCZ); 
 local peaCTV8N0ZGQsGS9eBMmoKx = Nt0ecmor5gogEvHanHgBy7.sq_GetLevelData(235, 6, _tyYJZIZGZU64)*
 Nt0ecmor5gogEvHanHgBy7.sq_GetLevelData(235, 7, _tyYJZIZGZU64)/ YHDWM_Va8zoT; 
 
 
 Kils27ipgRrtVz7.getVar().clear_timer_vector();
 Kils27ipgRrtVz7.getVar().push_timer_vector();
 local LVCaY6FdwNvIzM2wBrWV = Kils27ipgRrtVz7.getVar().get_timer_vector(0);
 LVCaY6FdwNvIzM2wBrWV.setParameter(peaCTV8N0ZGQsGS9eBMmoKx, YHDWM_Va8zoT); 
 LVCaY6FdwNvIzM2wBrWV.resetInstant(0); 
} ;

 
function proc_appendage_swordman_meteorsword_stateoflimit(WzLm1opoohOtuU7mLYeaj)
{
 if(!WzLm1opoohOtuU7mLYeaj) return;
 local XFg9eHcj1DBh5e = sq_GetCNRDObjectToSQRCharacter(WzLm1opoohOtuU7mLYeaj.getParent());
 
 if(!XFg9eHcj1DBh5e || XFg9eHcj1DBh5e.getState() != 235 || !XFg9eHcj1DBh5e.isExistTimeEvent(0))
 {
 WzLm1opoohOtuU7mLYeaj.setValid(false); 
 return;
 }
 sq_SetKeyxEnable(XFg9eHcj1DBh5e, E_ATTACK_COMMAND, true); 
 if(sq_IsEnterCommand(XFg9eHcj1DBh5e, E_ATTACK_COMMAND)) 
 {
 local ZbOUYlgq4sem = WzLm1opoohOtuU7mLYeaj.getVar().get_timer_vector(0);
 if(ZbOUYlgq4sem)
 {
 local W7I7ayW5wZ5cFL = WzLm1opoohOtuU7mLYeaj.getTimer().Get() + ZbOUYlgq4sem.getEventTerm(); 
 if(ZbOUYlgq4sem.isOnEvent(W7I7ayW5wZ5cFL) == true)
 {
 local BiKQCj07cYSHxEp = XFg9eHcj1DBh5e.getVar("state").get_vector(1); 
 local qtrXC5J4JE3UYEwLQ0tFcE = XFg9eHcj1DBh5e.getVar("state").get_vector(2); 
 local Xb_wlQk6zL45uQ_lKkDA = XFg9eHcj1DBh5e.sq_GetInputDirection(0); 
 if(Xb_wlQk6zL45uQ_lKkDA != ENUM_DIRECTION_NEUTRAL) 
 BiKQCj07cYSHxEp = sq_GetDistancePos(BiKQCj07cYSHxEp, Xb_wlQk6zL45uQ_lKkDA, 120); 
 local lazZzXyzgbpgma = sq_GetSkillLevel(XFg9eHcj1DBh5e, 248); 
 
 XFg9eHcj1DBh5e.sq_StartWrite();
 XFg9eHcj1DBh5e.sq_WriteDword(248); 
 XFg9eHcj1DBh5e.sq_WriteDword(6); 
 
 local BXfchvWHWvVoQmf = XFg9eHcj1DBh5e.sq_GetBonusRateWithPassive(248, 235, 7, 1.0);
 local DLfbeboMUwR5aSI = XFg9eHcj1DBh5e.getWeaponSubType(); 
 XFg9eHcj1DBh5e.sq_WriteDword(DLfbeboMUwR5aSI); 
 XFg9eHcj1DBh5e.sq_WriteDword([1,3,4,2,-1,5][DLfbeboMUwR5aSI]); 
 
 
 
 
 
 
 switch(DLfbeboMUwR5aSI)
 {
 case 0: 
 XFg9eHcj1DBh5e.sq_WriteDword(XFg9eHcj1DBh5e.sq_GetLevelData(248, 11, lazZzXyzgbpgma)); 
 XFg9eHcj1DBh5e.sq_WriteDword(XFg9eHcj1DBh5e.sq_GetLevelData(248, 12, lazZzXyzgbpgma)); 
 break;
 case 1: 
 XFg9eHcj1DBh5e.sq_WriteDword(XFg9eHcj1DBh5e.sq_GetLevelData(248, 16, lazZzXyzgbpgma)); 
 XFg9eHcj1DBh5e.sq_WriteDword(XFg9eHcj1DBh5e.sq_GetLevelData(248, 17, lazZzXyzgbpgma)); 
 XFg9eHcj1DBh5e.sq_WriteDword(XFg9eHcj1DBh5e.sq_GetLevelData(248, 18, lazZzXyzgbpgma)); 
 break;
 case 2: 
 XFg9eHcj1DBh5e.sq_WriteDword(XFg9eHcj1DBh5e.sq_GetLevelData(248, 13, lazZzXyzgbpgma)); 
 XFg9eHcj1DBh5e.sq_WriteDword(XFg9eHcj1DBh5e.sq_GetLevelData(248, 14, lazZzXyzgbpgma)); 
 XFg9eHcj1DBh5e.sq_WriteDword(XFg9eHcj1DBh5e.sq_GetBonusRateWithPassive(248, 235, 15, 1.0)); 
 break;
 case 3: 
 BXfchvWHWvVoQmf += XFg9eHcj1DBh5e.sq_GetBonusRateWithPassive(248, 235, 10, 1.0); 
 break;
 case 5: 
 XFg9eHcj1DBh5e.sq_WriteDword(XFg9eHcj1DBh5e.sq_GetLevelData(248, 16, lazZzXyzgbpgma)); 
 XFg9eHcj1DBh5e.sq_WriteDword(XFg9eHcj1DBh5e.sq_GetLevelData(248, 17, lazZzXyzgbpgma)); 
 XFg9eHcj1DBh5e.sq_WriteDword(XFg9eHcj1DBh5e.sq_GetLevelData(248, 18, lazZzXyzgbpgma)); 
 XFg9eHcj1DBh5e.sq_WriteDword(XFg9eHcj1DBh5e.sq_GetBonusRateWithPassive(248, 235, 22, 1.0)); 
 break;
 }
 XFg9eHcj1DBh5e.sq_WriteDword(BXfchvWHWvVoQmf); 
 XFg9eHcj1DBh5e.sq_WriteDword(XFg9eHcj1DBh5e.sq_GetLevelData(248, 9, lazZzXyzgbpgma)); 
 sq_SendCreatePassiveObjectPacketPos(XFg9eHcj1DBh5e, 24370, 0, BiKQCj07cYSHxEp, qtrXC5J4JE3UYEwLQ0tFcE, 1000);
 }
 }
 }
} ;

