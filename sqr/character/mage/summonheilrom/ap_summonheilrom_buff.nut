
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_mage_summonheilrom_buff") 
}



function proc_appendage_mage_summonheilrom_buff(vIJx6BPwOwIVCHdhK3Doj)
{
 if(!vIJx6BPwOwIVCHdhK3Doj) return;
 local MuAeaLp8eZGg = vIJx6BPwOwIVCHdhK3Doj.getParent();
 local Xvm0X_PJ_M7MKhS8 = vIJx6BPwOwIVCHdhK3Doj.getSource(); 
 if(!Xvm0X_PJ_M7MKhS8 || !MuAeaLp8eZGg)
 {
 vIJx6BPwOwIVCHdhK3Doj.setValid(false);
 return;
 }
 local HQduPQSXELLmMG7 = vIJx6BPwOwIVCHdhK3Doj.getVar().get_timer_vector(0);
 if(HQduPQSXELLmMG7)
 if(HQduPQSXELLmMG7.isOnEvent(vIJx6BPwOwIVCHdhK3Doj.getTimer().Get()) == true)
 {
 local czZo2ZoOaMiRtzzmM = MuAeaLp8eZGg.getXPos(); local yt29qVG7i8Ku0w_zlVZKsZ = MuAeaLp8eZGg.getYPos();
 local OVAp8Y8gpQqIXl = Xvm0X_PJ_M7MKhS8.getXPos(); local jNxVE9K3N5RD1 = Xvm0X_PJ_M7MKhS8.getYPos();
 if(sqrt((czZo2ZoOaMiRtzzmM - OVAp8Y8gpQqIXl) * (czZo2ZoOaMiRtzzmM - OVAp8Y8gpQqIXl) + (yt29qVG7i8Ku0w_zlVZKsZ - jNxVE9K3N5RD1) * (yt29qVG7i8Ku0w_zlVZKsZ - jNxVE9K3N5RD1)).tointeger() > vIJx6BPwOwIVCHdhK3Doj.getVar().get_vector(0))
 {
 vIJx6BPwOwIVCHdhK3Doj.setValid(false);
 return;
 }
 }
} ;

